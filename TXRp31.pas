unit TXRp31;

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
  TFmTXRp31 = class(TForm)
    Rep: TQuickRep;
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
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
    QRSysData3: TQRSysData;
    QRLabel20: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel1: TQRLabel;
    Query3: TFDQuery;
    SoQuery3: TDataSource;
    Query4: TFDQuery;
    Condpay: TFDQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    Query1: TFDQuery;
    Query1AMT: TFloatField;
    Query1VAT: TFloatField;
    Query1TOT: TFloatField;
    Query3JOBNO: TStringField;
    Query3TAXNO: TStringField;
    Query3TAXDATE: TDateField;
    Query3CUSCOD: TStringField;
    Query3BALANCE: TFloatField;
    Query3VAT: TFloatField;
    Query3TOTTAX: TFloatField;
    Query3DESC1: TStringField;
    Query3FLAG: TStringField;
    Query3CANCEL: TStringField;
    Query3CANCELID: TStringField;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    Query3SNAM: TStringField;
    Query3NAME1: TStringField;
    Query3NAME2: TStringField;
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
  FmTXRp31: TFmTXRp31;
  SNetAmt7,SVatAmt7,STotAmt7 : Double;
  SNetAmt10,SVatAmt10,STotAmt10 : Double;

implementation
uses TXRp30;

{$R *.DFM}

procedure TFmTXRp31.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Condpay.Close;
   Action := caFree;
end;

procedure TFmTXRp31.FormCreate(Sender: TObject);
var Hd,Xorder,Saltyp:string;
    Xamt,Xvat,XTot:Double;
begin
    HD := 'จาก วันที่ '+FmTXRp30.Edit_DateFrom.Text+' ถึง วันที่  '+FmTXRp30.Edit_DateTo.Text;
    If FmTXRp30.Edit_Locat.Text<>'' Then Hd := Hd+' รหัสสาขา '+FmTXRp30.Edit_Locat.Text;
    QrLabel13.Caption := HD;

    Condpay.Open;
    QrLabel10.Caption := Condpay.Fieldbyname('Comp_nm').Asstring;
    QrLabel11.Caption := Trim(Condpay.Fieldbyname('Comp_Adr1').Asstring)+' '+
                      Trim(Condpay.Fieldbyname('Comp_Adr2').Asstring);
    QrLabel12.Caption := Condpay.Fieldbyname('Taxid').Asstring;

    Case FmTXRp30.RadioGroup2.itemindex Of
      0: Saltyp:=' AND T.FRSV=''F'' ';
      1: Saltyp:=' AND T.FRSV=''S'' ';
      2: Saltyp:=' AND T.FRSV=''N'' ';
      3: begin
           If FmTXRp30.CheckBox1.Checked Then
              Saltyp:=' AND (T.FRSV=''F'' OR T.FRSV=''S'') '
           Else
              Saltyp:=' ';
         End;
    End;

    If FmTXRp30.Edit_Locat.Text<>'' Then
    begin
      With Condpay Do
      begin
        close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
        Params[0].asstring := FmTXRp30.Edit_Locat.Text;
        Open;
      end;
      IF Not(Condpay.BOF and Condpay.Eof) Then
      Begin
        QrLabel10.Caption := Condpay.Fieldbyname('locatnm').Asstring;
        QrLabel11.Caption := Trim(Condpay.Fieldbyname('LOCAddr1').Asstring)+''+
                             Trim(Condpay.Fieldbyname('LOCAddr2').Asstring);
      end;
    end;

    If FmTXRp30.Sortgrp.Itemindex=0 Then
       Xorder := ' Order By Taxno '
    else
       Xorder := ' Order By TaxDate,TAXNO ';

   With Query3 Do
   begin
      Close;
      SQL.Clear;
      Case FmTXRp30.RadioGroup1.itemindex Of
        0:Begin
         Sql.Add('Select T.Jobno,T.Taxno,T.Taxdate,T.cuscod,T.Balance,T.Vat,T.Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, '+
         'C.Snam,C.Name1,C.Name2 from TaxSal T,custmast C Where T.cuscod=C.Cuscod and T.PAYTYP=''S'' AND T.Flag=''1'' AND (T.TaxDate >= :Date_a)  '+
         'and (T.TaxDate <= :Date_b) and T.LOCAT like :edit3 and SUBSTR(T.TAXNO,2,2) LIKE :Edit4 '+Saltyp+
         'Union All Select T.Jobno,T.Taxno,T.Taxdate,T.cuscod,-T.Balance AS Balance,-T.Vat as Vat,-T.Tottax As Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, '+
         'C.Snam,C.Name1,C.Name2 from TaxSal T,CUSTMAST C Where T.cuscod=C.Cuscod and T.PAYTYP=''S'' AND (t.Flag=''2'' Or T.Flag=''7'')  AND (T.TaxDate >= :Date_a)  '+
         'and (T.TaxDate <= :Date_b) and T.LOCAT like :edit3 and SUBSTR(T.TAXNO,2,2) LIKE :Edit4 '+Saltyp+Xorder)
          End;
        1:Begin
         Sql.Add('Select T.Jobno,T.Taxno,T.Taxdate,T.cuscod,T.Balance,T.Vat,T.Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, '+
         'C.Snam,C.Name1,C.Name2 from TaxSal T,custmast C Where T.cuscod=C.Cuscod and T.PAYTYP=''C'' AND T.Flag=''1''  AND (T.TaxDate >= :Date_a)  '+
         'and (T.TaxDate <= :Date_b) and T.LOCAT like :edit3 and SUBSTR(T.TAXNO,2,2) LIKE :Edit4 '+Saltyp+
         'Union All Select T.Jobno,T.Taxno,T.Taxdate,T.cuscod,-T.Balance AS Balance,-T.Vat as Vat,-T.Tottax As Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, '+
         'C.Snam,C.Name1,C.Name2 from TaxSal T,CUSTMAST C Where T.cuscod=C.Cuscod and T.PAYTYP=''C'' AND (t.Flag=''2'' Or T.Flag=''7'')  AND (T.TaxDate >= :Date_a)  '+
         'and (T.TaxDate <= :Date_b) and T.LOCAT like :edit3 and SUBSTR(T.TAXNO,2,2) LIKE :Edit4 '+Saltyp+Xorder)
         End;
        2:Begin
         Sql.Add('Select T.Jobno,T.Taxno,T.Taxdate,T.cuscod,T.Balance,T.Vat,T.Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, '+
         'C.Snam,C.Name1,C.Name2 from TaxSal T,custmast C Where T.cuscod=C.Cuscod and T.Flag=''1''  AND (T.TaxDate >= :Date_a)  '+
         'and (T.TaxDate <= :Date_b) and T.LOCAT like :edit3 and SUBSTR(T.TAXNO,2,2) LIKE :Edit4 '+Saltyp+
         'Union All Select T.Jobno,T.Taxno,T.Taxdate,T.cuscod,-T.Balance AS Balance,-T.Vat as Vat,-T.Tottax As Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, '+
         'C.Snam,C.Name1,C.Name2 from TaxSal T,CUSTMAST C Where T.cuscod=C.Cuscod AND (t.Flag=''2'' Or T.Flag=''7'')  AND (T.TaxDate >= :Date_a)  '+
         'and (T.TaxDate <= :Date_b) and T.LOCAT like :edit3 and SUBSTR(T.TAXNO,2,2) LIKE :Edit4 '+Saltyp+Xorder)
         End;
      End;
      Params[0].asdate   := FmTXRp30.edit_DateFrom.Date;
      Params[1].asdate   := FmTXRp30.edit_DateTo.Date;
      Params[2].asstring := FmTXRp30.edit_Locat.text+'%';
      Params[3].asstring := FmTXRp30.edit4.text+'%';
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่มีข้อมูล');
   end;

   Query4.MasterSource := SoQuery3;
   With Query4 Do
   begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT Cuscod,Snam,Name1,Name2 FROM custmast '+
              'WHERE Cuscod =:Cuscod ');
      Open;
   end;

   With Query1 Do
   begin
      Close;
      SQL.Clear;
      Case FmTXRp30.RadioGroup1.itemindex Of
        0:Begin
        SQL.ADD('SELECT SUM(BALANCE) AS AMT,SUM(VAT) AS VAT ,SUM(TOTTAX) AS TOT '+
        'FROM TAXSAL T WHERE Flag=''1'' And PAYTYP=''S'' AND CANCELID IS NULL AND (TaxDate >= :Date_a)  '+
        'and (TaxDate <= :Date_b) and Locat like :edit3 and SUBSTR(TAXNO,2,2) LIKE :Edit4 '+Saltyp+
        'Union All  SELECT SUM(BALANCE*-1) AS AMT,SUM(VAT*-1) AS VAT ,SUM(TOTTAX*-1) AS TOT '+
        'FROM TAXSAL T WHERE (Flag=''2'' Or Flag=''7'') And PAYTYP=''S'' AND CANCELID IS NULL AND (TaxDate >= :Date_a)  '+
        'and (TaxDate <= :Date_b) and Locat like :edit3 and SUBSTR(TAXNO,2,2) LIKE :Edit4 '+Saltyp)
          End;
        1:Begin
        SQL.ADD('SELECT SUM(BALANCE) AS AMT,SUM(VAT) AS VAT ,SUM(TOTTAX) AS TOT '+
        'FROM TAXSAL T WHERE Flag=''1'' And PAYTYP=''C'' AND CANCELID IS NULL AND (TaxDate >= :Date_a)  '+
        'and (TaxDate <= :Date_b) and Locat like :edit3 and SUBSTR(TAXNO,2,2) LIKE :Edit4 '+Saltyp+
        'Union All  SELECT SUM(BALANCE*-1) AS AMT,SUM(VAT*-1) AS VAT ,SUM(TOTTAX*-1) AS TOT '+
        'FROM TAXSAL T WHERE (Flag=''2'' Or Flag=''7'') And PAYTYP=''C'' AND CANCELID IS NULL AND (TaxDate >= :Date_a)  '+
        'and (TaxDate <= :Date_b) and Locat like :edit3 and SUBSTR(TAXNO,2,2) LIKE :Edit4 '+Saltyp)
          End;
        2:Begin
        SQL.ADD('SELECT SUM(BALANCE) AS AMT,SUM(VAT) AS VAT ,SUM(TOTTAX) AS TOT '+
        'FROM TAXSAL T WHERE Flag=''1'' AND CANCELID IS NULL AND (TaxDate >= :Date_a)  '+
        'and (TaxDate <= :Date_b) and Locat like :edit3 and SUBSTR(TAXNO,2,2) LIKE :Edit4 '+Saltyp+
        'Union All SELECT SUM(BALANCE*-1) AS AMT,SUM(VAT*-1) AS VAT ,SUM(TOTTAX*-1) AS TOT '+
        'FROM TAXSAL T WHERE (Flag=''2'' Or Flag=''7'') AND CANCELID IS NULL AND (TaxDate >= :Date_a)  '+
        'and (TaxDate <= :Date_b) and Locat like :edit3 and SUBSTR(TAXNO,2,2) LIKE :Edit4 '+Saltyp);
        End;
      End;

      Params[0].asdate := FmTXRp30.edit_DateFrom.Date;
      Params[1].asdate := FmTXRp30.edit_DateTo.Date;
      Params[2].asstring := FmTXRp30.edit_Locat.text+'%';
      Params[3].asstring := FmTXRp30.edit4.text+'%';
      Open;
   end;
   //
   Xamt:=0;Xvat:=0;Xtot:=0;
   query1.First;
   While Not query1.EOF do
   begin
     Xamt := Xamt+Query1.fieldbyname('Amt').asfloat;
     XVat := Xvat+Query1.fieldbyname('Vat').asfloat;
     Xtot := Xtot+Query1.fieldbyname('Tot').asfloat;
     Query1.Next;
   end;
   Xtot :=Xamt+XVat;
   QRLabel16.caption := FloattostrF(Xamt+0.0005,ffFixed,15,2);
   QRLabel17.caption := FloattostrF(Xvat+0.0005,ffFixed,15,2);
   QRLabel18.caption := FloattostrF(XTot+0.0005,ffFixed,15,2);
end;

procedure TFmTXRp31.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabel14.Caption := Query4.FieldByName('Snam').Asstring+' '+
                       Query4.FieldByName('name1').Asstring+' '+
                       Query4.FieldByName('name2').Asstring;

  If Query3.Fieldbyname('CANCELID').AsString <>'' Then
    QRLabel22.Enabled := True
  Else
    QRLabel22.Enabled := false;
end;

end.
