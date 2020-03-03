unit STRpA11_1;

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
  TFmSTRpA11_1 = class(TForm)
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
    QRLabel13: TQRLabel;
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
    QRDBText13: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText7: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr4: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRDBText15: TQRDBText;
    QRLabel23: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    Query2: TFDQuery;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    DataSource1: TDataSource;
    QRLabel29: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRpA11_1: TFmSTRpA11_1;
  XLocat,Xpartno : String;

implementation
uses STRpA10, Dmic01, USoftFirm;

{$R *.DFM}

procedure TFmSTRpA11_1.FormCreate(Sender: TObject);
Var ed1,Ed2,Ed3,Ed4: String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 1160;
   QRLabel4.alignment := tacenter;
   QRLabel8.caption   := 'จากวันที่  '+FmSTRpA10.FDate.text+
                         '  ถึงวันที่  '+FmSTRpA10.ToDate.text+'  รหัสสินค้า  '+
                         FmSTRpA10.Edit3.text+'  ถึงรหัส  '+FmSTRpA10.Edit4.text;
   QRLabel8.left := 1;
   QRLabel8.width := 1160;
   QRLabel8.alignment := tacenter;
   QRLabel5.left  := 1;
   QRLabel5.width := 1160;
   QRLabel5.alignment := tacenter;
   //
   If sfMain.XSeecost<>'Y' Then
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
   end;

   Case FmSTRpA10.RadioGroup1.Itemindex of
     0 : QRLabel11.Caption := 'รายงานเฉพาะหน้าร้าน';
     1 : QRLabel11.Caption := 'รายงานเฉพาะศูนย์บริการ';
     2 : QRLabel11.Caption := 'รายงานเฉพาะศูนย์สี';
     3 : QRLabel11.Caption := 'รายงานทั้งหมด';
   End;

    Query2.close;

    With QueryA11 Do
    begin
      Close;
      SQL.Clear;
      If FmSTRpA10.RadioGroup1.Itemindex=0 Then
      SQL.ADD('SELECT A.INVLOC,A.PARTNO,A.INVNO,A.INVDATE,A.CUSCOD, '+
      '(rtrim(C.SNAM)||'' ''||rtrim(C.NAME1)||'' ''||rtrim(C.NAME2)) AS FULLNAME,''               '' AS JOBNO,B.PKNO,A.QTYOUT, '+
      'A.UPRICE,(A.QTYOUT*A.UPRICE-A.TOTPRC) AS REDU1,A.TOTPRC'+
      ' FROM IC_TRANS A,IC_INVOI B,ARMAST C   '+
      'WHERE (B.CUSCOD=C.CUSCOD) AND (A.INVNO=B.INVNO) AND (A.INVLOC LIKE :LOC) AND (A.PARTNO>=:PART1 AND A.PARTNO<=:PART2) AND B.CANCELID IS NULL AND '+
      'A.INVDATE>=:EDIT3 AND A.INVDATE<=:EDIT4 AND A.CUSCOD LIKE :EDIT5 AND A.GROUP1 LIKE :EDIT6 '+
      'AND (B.FLAG<>''T'') ORDER BY INVLOC,PARTNO');

      If FmSTRpA10.RadioGroup1.Itemindex=1 Then
      SQL.ADD('SELECT A.LOCAT AS INVLOC,A.PARTNO,A.TAXNO AS INVNO,A.TAXDATE AS INVDATE,B.CUSCOD,'+
      '(rtrim(C.SNAM)||'' ''||rtrim(C.NAME1)||'' ''||rtrim(C.NAME2)) AS FULLNAME,A.JOBNO,A.PKNO,A.QTY AS QTYOUT,A.UPRICE,   '+
      '(A.QTY*A.UPRICE-A.TOTPRC) AS REDU1,A.TOTPRC '+
      ' FROM PARTTRAN A,JOBORDER B,ARMAST C WHERE (B.CUSCOD=C.CUSCOD) AND (A.SVCOLOR<>''Y'') AND  '+
      '(A.JOBNO=B.JOBNO) AND (A.LOCAT LIKE :LOC) AND (A.PARTNO>=:PART1 AND A.PARTNO<=:PART2) AND '+
      '(A.PKDATE>=:EDIT3 AND A.PKDATE<=:EDIT4) AND B.CUSCOD LIKE :EDIT5 AND A.GROUP1 LIKE :EDIT6  '+
      'ORDER BY INVLOC,PARTNO ');

      If FmSTRpA10.RadioGroup1.Itemindex=2 Then
      SQL.ADD('SELECT A.LOCAT AS INVLOC,A.PARTNO,A.TAXNO AS INVNO,A.TAXDATE AS INVDATE,B.CUSCOD,'+
      '(rtrim(C.SNAM)||'' ''||rtrim(C.NAME1)||'' ''||rtrim(C.NAME2)) AS FULLNAME,A.JOBNO,A.PKNO,A.QTY AS QTYOUT,A.UPRICE,   '+
      '(A.QTY*A.UPRICE-A.TOTPRC) AS REDU1,A.TOTPRC '+
      ' FROM PARTTRAN A,JOBORDER B,ARMAST C WHERE (B.CUSCOD=C.CUSCOD) AND (A.SVCOLOR=''Y'') AND  '+
      '(A.JOBNO=B.JOBNO) AND (A.LOCAT LIKE :LOC) AND (A.PARTNO>=:PART1 AND A.PARTNO<=:PART2) AND   '+
      '(A.PKDATE>=:EDIT3 AND A.PKDATE<=:EDIT4) AND B.CUSCOD LIKE :EDIT5 AND A.GROUP1 LIKE :EDIT6 '+
      'ORDER BY INVLOC,PARTNO');


      If FmSTRpA10.RadioGroup1.Itemindex=3 Then
      SQL.ADD('SELECT A.INVLOC,A.PARTNO,A.INVNO,A.INVDATE,A.CUSCOD, '+
      '(rtrim(C.SNAM)||'' ''||rtrim(C.NAME1)||'' ''||rtrim(C.NAME2)) AS FULLNAME,''               '' AS JOBNO,B.PKNO,A.QTYOUT,                   '+
      'A.UPRICE,(A.QTYOUT*A.UPRICE-A.TOTPRC) AS REDU1,A.TOTPRC '+
      ' FROM IC_TRANS A,IC_INVOI B,ARMAST C   '+
      'WHERE (B.CUSCOD=C.CUSCOD) AND (A.INVNO=B.INVNO) AND A.INVLOC LIKE :LOC AND (A.PARTNO>=:PART1 AND A.PARTNO<=:PART2) AND B.CANCELID IS NULL AND '+
      'A.INVDATE>=:EDIT3 AND A.INVDATE<=:EDIT4 AND A.CUSCOD LIKE :EDIT5 AND A.GROUP1 LIKE :EDIT6  AND B.FLAG<>''T'' '+
      'UNION ALL '+
      'SELECT A.LOCAT AS INVLOC,A.PARTNO,A.TAXNO AS INVNO,A.TAXDATE AS INVDATE,B.CUSCOD,'+
      '(rtrim(C.SNAM)||'' ''||rtrim(C.NAME1)||'' ''||rtrim(C.NAME2)) AS FULLNAME,A.JOBNO,A.PKNO,A.QTY AS QTYOUT,A.UPRICE,   '+
      '(A.QTY*A.UPRICE-A.TOTPRC) AS REDU1,A.TOTPRC '+
      ' FROM PARTTRAN A,JOBORDER B,ARMAST C WHERE  (B.CUSCOD=C.CUSCOD) AND          '+
      '(A.JOBNO=B.JOBNO) AND (A.LOCAT LIKE :LOC) AND (A.PARTNO>=:PART1 AND A.PARTNO<=:PART2) AND   '+
      '(A.PKDATE>=:EDIT3 AND A.PKDATE<=:EDIT4) AND B.CUSCOD LIKE :EDIT5 AND A.GROUP1 LIKE :EDIT6  ORDER BY INVLOC,PARTNO');

      If FmSTRpA10.Edit4.Text = '' Then
         Ed4 := 'ZZZZZZZZZZZZ'
      else Ed4 := FmSTRpA10.Edit4.text;

      Params[0].AsString := FmSTRpA10.Edit_Locat.Text+'%';
      Params[1].AsString := FmSTRpA10.Edit3.Text;
      Params[2].AsString := Ed4;
      Params[3].AsDate   := FmSTRpA10.FDate.Date;
      Params[4].AsDate   := FmSTRpA10.ToDate.Date;
      Params[5].Asstring := FmSTRpA10.Edit1.Text+'%';
      Params[6].Asstring := FmSTRpA10.Edit7.Text+'%';
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่พบข้อมูล');
    end;
    Query2.Open;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := FmSTRpA10.Edit_Locat.Text;
    Open;
    If Bof and Eof Then
      QRLabel29.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel29.Caption := 'สาขา : ['+FmSTRpA10.Edit_Locat.Text+'] '+Fieldbyname('Locatnam').Asstring;
  end;

end;

procedure TFmSTRpA11_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSTRpA11_1.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
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
end;

procedure TFmSTRpA11_1.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDBText15.Enabled := QueryA11.Fieldbyname('CLAIM').Asstring<>'N';
  QRLabel28.caption  := QueryA11.fieldByName('FULLNAME').AsString;
end;


procedure TFmSTRpA11_1.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
IF  FmDmic01.XISO <> '' then
 begin
 QRLabel25.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

end.

