unit TXRp11;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, quickrpt, Qrctrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmTXRp11 = class(TForm)
    Rep: TQuickRep;
    Header: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QDetail: TFDQuery;
    Condpay: TFDQuery;
    Qmaster: TFDQuery;
    DataSource1: TDataSource;
    QRBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand3: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel26: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText13: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText16: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRDetailLink1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    Balanc :Double;
  public
    { Public declarations }
  end;

var
  FmTXRp11: TFmTXRp11;
  sum1,P : Double;

implementation
uses TXRp10, USoftFirm;
{$R *.DFM}

procedure TFmTXRp11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Close;
    Action := caFree;
end;

procedure TFmTXRp11.FormCreate(Sender: TObject);
Var ed1,Ed3,Ed4,Onlo,Onhn,Xopt: String;
    xmon,L1 :word;
begin
    sum1 := 0;

    QrLabel13.Caption := FmTXRp10.EdNDate.Text;
    QrLabel17.Caption := FmTXRp10.Edit_Locat.Text;

    Condpay.Open;
    QrLabel10.Caption := Condpay.Fieldbyname('Comp_nm').Asstring;
    QrLabel11.Caption := Trim(Condpay.Fieldbyname('Comp_Adr1').Asstring)+' '+
                         Trim(Condpay.Fieldbyname('Comp_Adr2').Asstring);
    QrLabel12.Caption := Condpay.Fieldbyname('Taxid').Asstring;

    With Condpay Do
    begin
      close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
      Params[0].asstring := FmTXRp10.Edit_LOcat.Text;
      Open;
    end;

    IF Not(Condpay.BOF and Condpay.Eof) Then
    Begin
      QrLabel10.Caption := Condpay.Fieldbyname('LOCATNM').Asstring;
      QrLabel11.Caption := Trim(Condpay.Fieldbyname('LOCADDR1').Asstring)+' '+Trim(Condpay.Fieldbyname('LOCADDR2').Asstring);
    end;

   //
   Xopt :='';
   If FmTXRp10.CheckBox2.Checked Then
   Xopt :=' AND B.SHELF <>'''' ';

   xmon :=FmTXRp10.Xmonth-1;
   if Xmon=0 Then   Xmon :=13;
   Onhn := 'Onhn_'+inttostr(XMon);

   Qdetail.Close;
   With QMaster  Do
   begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT A.partno,A.locat,A.'+Onhn+' as Onhn ,B.desc1 '+
             'From Invanls A,Inventor B '+
             'Where (A.Locat = :Xlocat) and (A.PartNo >=:Xpart1) and (A.PartNo <=:Xpart2) '+
             'and (A.Year1 =:XYear) and (A.partno = B.partno) and (A.Locat = B.Locat) '+Xopt+' Order By A.partno');
     If FmTXRp10.Edit3.Text='' Then FmTXRp10.Edit3.Text:='';
     If FmTXRp10.Edit4.Text='' Then FmTXRp10.Edit4.Text:='ZZZZZZZZZZZZZZ';
     Params[0].AsString   := FmTXRp10.Edit_Locat.Text;
     Params[1].asstring   := FmTXRp10.Edit3.Text;
     Params[2].asstring   := FmTXRp10.Edit4.Text;
     Params[3].Asstring := Inttostr(FmTXRp10.XYear);
     Open;
     If Bof and Eof Then
      SFMain.RaiseException('ไม่พบข้อมูลตามเงื่อนไข..!');

   End;

   With Qdetail Do
   begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT LOC,PARTNO,STKDATE,QTYIN,ABS(QTYOUT) AS QTYOUT,PKNO,TAXNO, '+
              'TAXDATE,JOBNO,FLAG From STKCARD '+
              'where (Partno =:Partno) and (Loc =:Locat) and '+
              '(Taxdate>=:edit1 and Taxdate<=:edit2) ORDER BY TaxDATE');

      Params[2].Asdate   := FmTXRp10.Fdate;
      Params[3].asdate   := FmTXRp10.Ldate;
      Open;
   end;

end;

procedure TFmTXRp11.QRDetailLink1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  sum1 := sum1+QDetail.FieldByName('Qtyin').AsFloat-
          Abs(QDetail.FieldByName('QtyOut').AsFloat);
  QRLabel1.Caption := FloattostrF(sum1,ffNumber,15,2);
  If QDetail.FieldByName('Qtyin').AsFloat=0 Then
    QRDBText2.Enabled := False
  Else
    QRDBText2.Enabled := True;

  If QDetail.FieldByName('Qtyout').AsFloat=0 Then
     QRDBText3.Enabled := False
  Else
     QRDBText3.Enabled := True;

end;

procedure TFmTXRp11.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption := FloattostrF(sum1,ffNumber,15,2);
end;

procedure TFmTXRp11.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  sum1 := QMaster.fieldbyname('Onhn').Asinteger;
  P:=P+1;
end;



procedure TFmTXRp11.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If (FmTXRp10.CheckBox1.Checked)and(P>0) Then
     Rep.Newpage;
end;


procedure TFmTXRp11.RepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Sum1:=0;
  P:=0;
end;

end.
