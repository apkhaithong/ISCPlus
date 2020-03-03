unit TXRp21;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, quickrpt, Qrctrls, Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmTXRp21 = class(TForm)
    Rep: TQuickRep;
    Title: TQRBand;
    PageHeader: TQRBand;
    PageFooter: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel20: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel1: TQRLabel;
    QTaxRp20: TFDQuery;
    QTaxRp20TAXNO: TStringField;
    QTaxRp20TAXDATE: TDateField;
    QTaxRp20DESC1: TStringField;
    QTaxRp20CUSCOD: TStringField;
    QTaxRp20BALANCE: TFloatField;
    QTaxRp20VAT: TFloatField;
    QTaxRp20TOTTAX: TFloatField;
    QTaxRp20FLAG: TStringField;
    QTaxRp20CANCEL: TStringField;
    Condpay: TFDQuery;
    Detail: TQRBand;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    Query1: TFDQuery;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    Query4: TFDQuery;
    SoQuery3: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmTXRp21: TFmTXRp21;
  SNetAmt7,SVatAmt7,STotAmt7 : Double;
  SNetAmt10,SVatAmt10,STotAmt10 : Double;


implementation
uses TXRp20;
{$R *.DFM}

procedure TFmTXRp21.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   condpay.Close;
   Action := caFree;
end;

procedure TFmTXRp21.FormCreate(Sender: TObject);
var ed3,Xorder,Xflag,XOPT : String;
    Xamt,Xvat,XTot:Double;
begin
    QrLabel13.Caption := 'จาก วันที่ '+FmTXRp20.Edit_DateFrom.Text+' ถึง วันที่  '+FmTXRp20.Edit_DateTo.Text+' รหัสสาขา '+FmTXRp20.Edit_Locat.Text;

    Condpay.Open;
    QrLabel10.Caption := Condpay.Fieldbyname('Comp_nm').Asstring;
    QrLabel11.Caption := Trim(Condpay.Fieldbyname('Comp_Adr1').Asstring)+' '+
                         Trim(Condpay.Fieldbyname('Comp_Adr2').Asstring);
    QrLabel12.Caption := Condpay.Fieldbyname('Taxid').Asstring;

    If FmTXRp20.Sortgrp.Itemindex=0 Then
       Xorder := ' Order By TaxDate,Taxno'
    else
       Xorder := ' Order By Taxno';

    Case FmTXRp20.RadioGroup1.itemindex Of
      0: XOpt :='  from TaxBuy A Where ((a.Flag=''1'')) AND a.Recvdt>=:date_a and a.Recvdt<=:Date_b ';
      1: XOpt :='  from TaxBuy A Where ((a.Flag=''1'') OR (a.Flag=''3''))  AND a.taxdate>=:date_a and a.Taxdate<=:Date_b ';
    End;


    If FmTXRp20.Edit_Locat.Text<>'' Then
    begin
      With Condpay Do
      begin
        close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
        Params[0].asstring := FmTXRp20.Edit_Locat.Text;
        Open;
      end;
      IF Not(Condpay.BOF and Condpay.Eof) Then
      Begin
        QrLabel10.Caption := Condpay.Fieldbyname('locatnm').Asstring;
        QrLabel11.Caption := Trim(Condpay.Fieldbyname('LOCAddr1').Asstring)+' '+
                             Trim(Condpay.Fieldbyname('LOCAddr2').Asstring);

      end;
    end;
    With QTaxRp20 Do
    begin
      Close;
      SQL.Clear;
         Sql.Add('Select a.Taxno,a.Taxdate,a.cuscod,a.Balance,a.Vat,a.Tottax,a.Desc1,a.flag,a.Cancel,a.Cancelid '+
         XOpt+' and a.LOCAT like :edit3 '+
         'Union All '+
         'Select a.Taxno,a.Taxdate,a.cuscod,a.Balance,a.Vat,a.Tottax,a.Desc1,a.flag,a.Cancel,a.Cancelid '+
         'from TaxBuy A,NRc_invoi B Where (a.taxrefno=b.Recvno) and (a.Flag=''3'') AND b.Recvdt>=:date_a and b.Recvdt<=:Date_b '+
         'and a.LOCAT like :edit3 '+
         'Union All '+
         'Select Taxno,Taxdate,cuscod,-Balance AS Balance,-Vat as Vat,'+
         '-Tottax As Tottax,Desc1,flag,Cancel,Cancelid '+
         ' from TaxBuy Where Flag=''6''  AND (Recvdt >= :Date_a)  '+
         'and (Recvdt <= :Date_b) and LOCAT like :edit3 '+Xorder);
      Params[0].asdate   := FmTXRp20.edit_DateFrom.Date;
      Params[1].asdate   := FmTXRp20.edit_DateTo.Date;
      Params[2].asstring := FmTXRp20.edit_Locat.text+'%';
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่มีข้อมูล');
   end;

   Query4.MasterSource := SoQuery3;
   With Query4 Do
   begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT Apcode,Apname FROM ApMast '+
              'WHERE Apcode =:Cuscod ');
      Open;
   end;

   With Query1 Do
   begin
      Close;
      SQL.Clear;
       If FmTXRp20.RadioGroup1.itemindex=0 Then
       Begin
        SQL.ADD('SELECT SUM(A.BALANCE) AS AMT,SUM(A.VAT) AS VAT ,SUM(A.TOTTAX) AS TOT '+
        XOpt+ ' and A.Locat like :edit3 AND A.CANCELID IS NULL '+
        'Union All '+
        'Select SUM(A.BALANCE) AS AMT,SUM(A.VAT) AS VAT ,SUM(A.TOTTAX) AS TOT  '+
         'from TaxBuy A,NRc_invoi B Where (a.taxrefno=b.Recvno) and (a.Flag=''3'') AND b.Recvdt>=:date_a and b.Recvdt<=:Date_b '+
         'and a.LOCAT like :edit3 AND A.CANCELID IS NULL '+
        'Union All '+
        'SELECT SUM(BALANCE*-1) AS AMT,SUM(VAT*-1) AS VAT ,SUM(TOTTAX*-1) AS TOT '+
        'FROM TAXBUY WHERE Flag=''6'' AND CANCELID IS NULL AND (Recvdt >= :Date_a)  '+
        'and (Recvdt <= :Date_b) and Locat like :edit3 ');
       end
       Else
       Begin
        SQL.ADD('SELECT SUM(A.BALANCE) AS AMT,SUM(A.VAT) AS VAT ,SUM(A.TOTTAX) AS TOT '+
        XOpt+ ' and A.Locat like :edit3 AND A.CANCELID IS NULL '+
        'Union All '+
        'SELECT SUM(BALANCE*-1) AS AMT,SUM(VAT*-1) AS VAT ,SUM(TOTTAX*-1) AS TOT '+
        'FROM TAXBUY WHERE Flag=''6'' AND CANCELID IS NULL AND (TaxDate >= :Date_a)  '+
        'and (TaxDate <= :Date_b) and Locat like :edit3 ');
       end;

      Params[0].asdate := FmTXRp20.edit_DateFrom.Date;
      Params[1].asdate := FmTXRp20.edit_DateTo.Date;
      Params[2].asstring := FmTXRp20.edit_Locat.text+'%';
      Open;
   end;

   Xamt:=0;Xvat:=0;Xtot:=0;
   query1.First;
   While Not query1.EOF do
   begin
     Xamt := Xamt+Query1.fieldbyname('Amt').asfloat;
     XVat := Xvat+Query1.fieldbyname('Vat').asfloat;
     Xtot := Xtot+Query1.fieldbyname('Tot').asfloat;
     Query1.Next;
   end;
   QRLabel16.caption := FloattostrF(Xamt+0.0005,ffFixed,15,2);
   QRLabel17.caption := FloattostrF(Xvat+0.0005,ffFixed,15,2);
   QRLabel18.caption := FloattostrF(XTot+0.0005,ffFixed,15,2);

end;


procedure TFmTXRp21.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If QTaxRp20CANCEL.AsString ='C' Then
    QRLabel22.Enabled := True
  Else
    QRLabel22.Enabled := false;
end;
    
end.
