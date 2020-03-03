unit Strpa91;

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
  TFmSTRpA91 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    Condpay: TFDQuery;
    CondpayCURYEAR: TStringField;
    CondpayCURMONTH: TStringField;
    CondpayLICEN_NO: TStringField;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    CondpayTAXID: TStringField;
    CondpayVATRT: TFloatField;
    CondpayTAXNAME: TStringField;
    CondpayTAXADDR: TStringField;
    CondpaySVRATE: TFloatField;
    CondpayNEXTKILO: TFloatField;
    CondpayNEXTDAY: TFloatField;
    CondpaySVFLAG: TStringField;
    CondpayCAMTYP: TStringField;
    CondpayCAMPART: TFloatField;
    CondpayCAMSERV: TFloatField;
    CondpayCAMDAT1: TDateField;
    CondpayCAMDAT2: TDateField;
    QRBand5: TQRBand;
    QRLabel17: TQRLabel;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    QueryA10: TFDQuery;
    QueryA11: TFDQuery;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    Query1: TFDQuery;
    QRLabel19: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText7: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRExpr4: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel1: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    Query2: TFDQuery;
    QRLabel24: TQRLabel;
    DataSource1: TDataSource;
    QRDBText13: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape1: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRpA91: TFmSTRpA91;
  XLocat,Xpartno,VATTYP : String;
  VAT,SUMVAT,SUMPR,SUMPR1,ALLVAT,ALLPR,ALLPR1 : Double;
  Detail : integer;

implementation
uses STRpA90,icmenu, Dmic01;

{$R *.DFM}

procedure TFmSTRpA91.FormCreate(Sender: TObject);
Var ed1,Ed2,Ed3,Ed4,XSort: String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 1160;
   QRLabel4.alignment := tacenter;
   QRLabel8.caption   := 'จากวันที่  '+FmSTRpA90.Edit5.text+
                         '  ถึงวันที่  '+FmSTRpA90.Edit6.text+'  รหัสสินค้า  '+
                         FmSTRpA90.Edit3.text+'  ถึงรหัส  '+FmSTRpA90.Edit4.text;
   QRLabel8.left := 1;
   QRLabel8.width := 1160;
   QRLabel8.alignment := tacenter;
   QRLabel5.left  := 1;
   QRLabel5.width := 1160;
   QRLabel5.alignment := tacenter;
   //

{   If Mainform.XSeecost<>'Y' Then
   Begin
     QRDBText3.Enabled := False;
     QRDBText5.Enabled := False;
     QRExpr6.Enabled   := False;
     QRExpr7.Enabled   := False;
     QRExpr8.Enabled   := False;
     QRExpr9.Enabled   := False;
   end
   Else
   Begin
     QRDBText3.Enabled := True;
     QRDBText5.Enabled := True;
     QRExpr6.Enabled   := True;
     QRExpr7.Enabled   := True;
     QRExpr8.Enabled   := True;
     QRExpr9.Enabled   := True;
   end;}

   Case FmSTRpA90.RadioGroup1.Itemindex of
     0 : QRLabel11.Caption := 'รายงานเฉพาะหน้าร้าน';
     1 : QRLabel11.Caption := 'รายงานเฉพาะศูนย์บริการ';
     2 : QRLabel11.Caption := 'รายงานเฉพาะศูนย์สี';
     3 : QRLabel11.Caption := 'รายงานทั้งหมด';
   End;

   Case FmSTRpA90.RadioGroup2.Itemindex of
     0:XSort:=' ORDER BY INVLOC,CUSCOD,PKNO ';
     1:XSort:=' ORDER BY INVLOC,CUSCOD,TAXNO ';
   End;

   With Query1 Do
   Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := FmSTRpA90.Edit2.Text;
    Open;
    If Bof and Eof Then
      QRLabel43.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel43.Caption := 'สาขา : ['+FmSTRpA90.Edit2.Text+'] '+Fieldbyname('Locatnam').Asstring;
   end;

   with Query1 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('select * from SYSSTAT.tables where tabname=''TMPSALE''');
     Open;
     If Not(Bof and Eof) Then
     Begin
       Close;
       Sql.Clear;
       Sql.Add('DROP TABLE TMPSALE');
       ExecSQL;
     End;
   end;

   Query2.Close;

    With QueryA11 Do
    begin
      Close;
      SQL.Clear;
      If FmSTRpA90.RadioGroup1.Itemindex=0 Then
      SQL.ADD('SELECT A.INVLOC,A.PARTNO,A.INVNO,A.INVDATE,A.CUSCOD, '+
      'B.TAXNO,B.TAXDATE,''               '' AS JOBNO,B.PKNO,A.QTYOUT, '+
      'A.UPRICE,(A.QTYOUT*A.UPRICE-A.TOTPRC) AS REDU1,A.TOTPRC,A.GROUP1,A.AVGCOST,''N'' AS CLAIM,'+
      '(A.TOTPRC-A.QTYOUT*A.AVGCOST) AS PROFIT,B.VATRT AS VAT,B.VATTYPE FROM IC_TRANS A,IC_INVOI B   '+
      'WHERE (A.INVNO=B.INVNO) AND (A.INVLOC LIKE :LOC) AND (A.PARTNO>=:PART1 AND A.PARTNO<=:PART2) AND '+
      'A.INVDATE>=:EDIT3 AND A.INVDATE<=:EDIT4 AND A.CUSCOD LIKE :EDIT5 AND A.GROUP1 LIKE :EDIT6 '+
      'AND (B.FLAG<>''T'') '+Xsort);

      If FmSTRpA90.RadioGroup1.Itemindex=1 Then
      SQL.ADD('SELECT A.LOCAT AS INVLOC,A.PARTNO,A.TAXNO AS INVNO,A.TAXDATE AS INVDATE,B.CUSCOD,'+
      'B.PTAXNO AS TAXNO,B.TAXDATE,A.JOBNO,A.PKNO,A.QTY AS QTYOUT,A.UPRICE,   '+
      '(A.QTY*A.UPRICE-A.TOTPRC) AS REDU1,A.TOTPRC,A.GROUP1,A.AVGCOST,A.CLAIM, '+
      '(A.TOTPRC-A.QTY*A.AVGCOST) AS PROFIT,B.VAT,B.VATTYPE FROM PARTTRAN A,JOBORDER B WHERE (A.SVCOLOR<>''Y'') AND  '+
      '(A.JOBNO=B.JOBNO) AND (A.LOCAT LIKE :LOC) AND (A.PARTNO>=:PART1 AND A.PARTNO<=:PART2) AND '+
      '(A.PKDATE>=:EDIT3 AND A.PKDATE<=:EDIT4) AND B.CUSCOD LIKE :EDIT5 AND A.GROUP1 LIKE :EDIT6  '+Xsort);

      If FmSTRpA90.RadioGroup1.Itemindex=2 Then
      SQL.ADD('SELECT A.LOCAT AS INVLOC,A.PARTNO,A.TAXNO AS INVNO,A.TAXDATE AS INVDATE,B.CUSCOD,'+
      'B.PTAXNO AS TAXNO,B.TAXDATE,A.JOBNO,A.PKNO,A.QTY AS QTYOUT,A.UPRICE,   '+
      '(A.QTY*A.UPRICE-A.TOTPRC) AS REDU1,A.TOTPRC,A.GROUP1,A.AVGCOST,A.CLAIM, '+
      '(A.TOTPRC-A.QTY*A.AVGCOST) AS PROFIT,B.VAT,B.VATTYPE FROM PARTTRAN A,JOBORDER B WHERE (A.SVCOLOR=''Y'') AND  '+
      '(A.JOBNO=B.JOBNO) AND (A.LOCAT LIKE :LOC) AND (A.PARTNO>=:PART1 AND A.PARTNO<=:PART2) AND   '+
      '(A.PKDATE>=:EDIT3 AND A.PKDATE<=:EDIT4) AND B.CUSCOD LIKE :EDIT5 AND A.GROUP1 LIKE :EDIT6 '+Xsort);


      If FmSTRpA90.RadioGroup1.Itemindex=3 Then
      SQL.ADD('SELECT A.INVLOC,A.PARTNO,A.INVNO,A.INVDATE,A.CUSCOD, '+
      'B.TAXNO,B.TAXDATE,''               '' AS JOBNO,B.PKNO,A.QTYOUT,                   '+
      'A.UPRICE,(A.QTYOUT*A.UPRICE-A.TOTPRC) AS REDU1,A.TOTPRC,A.GROUP1,A.AVGCOST,''N'' AS CLAIM, '+
      '(A.TOTPRC-A.QTYOUT*A.AVGCOST) AS PROFIT,B.VATRT AS VAT,B.VATTYPE FROM IC_TRANS A,IC_INVOI B   '+
      'WHERE (A.INVNO=B.INVNO) AND A.INVLOC LIKE :LOC AND (A.PARTNO>=:PART1 AND A.PARTNO<=:PART2) AND '+
      'A.INVDATE>=:EDIT3 AND A.INVDATE<=:EDIT4 AND A.CUSCOD LIKE :EDIT5 AND A.GROUP1 LIKE :EDIT6  AND B.FLAG<>''T'' '+
      'UNION ALL '+
      'SELECT A.LOCAT AS INVLOC,A.PARTNO,A.TAXNO AS INVNO,A.TAXDATE AS INVDATE,B.CUSCOD,'+
      'B.PTAXNO AS TAXNO,B.TAXDATE,A.JOBNO,A.PKNO,A.QTY AS QTYOUT,A.UPRICE,   '+
      '(A.QTY*A.UPRICE-A.TOTPRC) AS REDU1,A.TOTPRC,A.GROUP1,A.AVGCOST,A.CLAIM, '+
      '(A.TOTPRC-A.QTY*A.AVGCOST) AS PROFIT,B.VAT,B.VATTYPE FROM PARTTRAN A,JOBORDER B WHERE            '+
      '(A.JOBNO=B.JOBNO) AND (A.LOCAT LIKE :LOC) AND (A.PARTNO>=:PART1 AND A.PARTNO<=:PART2) AND   '+
      '(A.PKDATE>=:EDIT3 AND A.PKDATE<=:EDIT4) AND B.CUSCOD LIKE :EDIT5 AND A.GROUP1 LIKE :EDIT6  '+Xsort);

      If FmSTRpA90.Edit4.Text = '' Then
         Ed4 := 'ZZZZZZZZZZZZ'
      else Ed4 := FmSTRpA90.Edit4.text;

      Params[0].AsString := FmSTRpA90.Edit2.Text+'%';
      Params[1].AsString := FmSTRpA90.Edit3.Text;
      Params[2].AsString := Ed4;
      Params[3].AsDate   := FmSTRpA90.FrmDate;
      Params[4].AsDate   := FmSTRpA90.ToDate;
      Params[5].Asstring := FmSTRpA90.Edit1.Text+'%';
      Params[6].Asstring := FmSTRpA90.Edit7.Text+'%';
      Open;
   //   VAT := QueryA11.Fieldbyname('VAT').AsFloat;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่พบข้อมูล');
    end;
    Query2.Open;


end;

procedure TFmSTRpA91.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSTRpA91.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     //QRDBText15.Enabled := QueryA11.Fieldbyname('CLAIM').Asstring<>'N';
  QRLabel28.caption  := Query2.Fieldbyname('Snam').Asstring+' '+
                        Query2.Fieldbyname('Name1').Asstring+' '+
                        Query2.Fieldbyname('Name2').Asstring;
  QRLabel23.caption  := Query2.Fieldbyname('ARDESC').Asstring;
  SUMVAT :=0;
  SUMPR := 0;
  SUMPR1 := 0;
  Detail := 0;
end;

procedure TFmSTRpA91.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var tempVat,totPR,totPR1 : Double;
begin
   Detail := Detail+1;
   QRlabel40.Caption := IntToStr(Detail);
   With Query1 Do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT DESC1 FROM INVENTOR WHERE LOCAT=:LOC AND PARTNO=:NO');
     Params[0].Asstring := QueryA11.Fieldbyname('INVLOC').Asstring;
     Params[1].Asstring := QueryA11.Fieldbyname('PARTNO').Asstring;
     Open;
     QRLabel20.caption   := Query1.Fieldbyname('Desc1').Asstring;
   end;
   IF QueryA11.Fieldbyname('VATTYPE').AsString='1' then
   begin
      tempVat := QueryA11.Fieldbyname('TOTPRC').AsFloat*QueryA11.Fieldbyname('VAT').AsFloat/
                 (100+QueryA11.Fieldbyname('VAT').AsFloat);
      totPR1 :=  QueryA11.Fieldbyname('TOTPRC').AsFloat-tempVat;
   end else
   begin
      tempVat := (QueryA11.Fieldbyname('VAT').AsFloat/100)*QueryA11.Fieldbyname('TOTPRC').AsFloat;
      totPR1 :=  QueryA11.Fieldbyname('TOTPRC').AsFloat;
   end;
   QRLabel30.Caption := FloatToStrF(tempVat,ffNumber,15,2);
   SUMVAT := SUMVAT+tempVat;
   totpr := totpr1+tempvat;
   QRLabel31.Caption := FloatToStrF(totPR,ffNumber,15,2);
   QRLabel13.Caption := FloatToStrF(totPR1,ffNumber,15,2);
   SUMPR1 := SUMPR1+totPR1;
   SUMPR := SUMPR+totPR;
end;


procedure TFmSTRpA91.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
IF  FmDmic01.XISO <> '' then
 begin
 QRLabel25.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

procedure TFmSTRpA91.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   SUMVAT :=0;
   SUMPR := 0;
   ALLVAT :=0;
   ALLPR :=0;
   ALLPR1 :=0;
   SUMPR1 := 0;
end;

procedure TFmSTRpA91.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel38.Caption := FloatToStrF(ALLVAT,ffNumber,15,2);
  QRLabel39.Caption := FloatToStrF(ALLPR,ffNumber,15,2);
  QRLabel45.Caption := FloatToStrF(ALLPR1,ffNumber,15,2);
end;

procedure TFmSTRpA91.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel42.Caption := IntToStr(Detail);
  QRLabel36.Caption := FloatToStrF(SUMVAT,ffNumber,15,2);
  ALLVAT := ALLVAT+SUMVAT;
  QRLabel37.Caption := FloatToStrF(SUMPR,ffNumber,15,2);
  ALLPR := ALLPR+SUMPR;
  QRLabel44.Caption := FloatToStrF(SUMPR1,ffNumber,15,2);
  ALLPR1 := ALLPR1+SUMPR1;
end;

end.

