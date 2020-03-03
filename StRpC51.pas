unit Strpc51;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, quickrpt, Qrctrls, Db, Grids, DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TQStRp_C51 = class(TForm)
    QRep: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    PageHeader: TQRBand;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape3: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
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
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    Queryc11: TFDQuery;
    QRExpr1: TQRExpr;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText8: TQRDBText;
    QRExpr2: TQRExpr;
    QRLabel7: TQRLabel;
    QRDBText12: TQRDBText;
    QRExpr3: TQRExpr;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel8: TQRLabel;
    Query1: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRepBeforePrint(Sender: TQuickRep; var PrintReport: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRepEndPage(Sender: TQuickRep);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QStRp_C51: TQStRp_C51;
  Xtaxno:String;
  
implementation

uses  StRpC50, Dmic01;

{$R *.DFM}

procedure TQStRp_C51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree ;
end;

procedure TQStRp_C51.FormCreate(Sender: TObject);
Var Xorder,XOpt,XSql :string;
begin
  Condpay.Open;
  QRLabel4.Caption  := CondpayComp_nm.asstring;
  QRLabel9.Caption  := 'ออกใบกำกับระหว่างวันที่  '+StRp_C50.Edit_dateFrom.Text+
                       ' - '+ StRp_C50.Edit_dateTo.Text;


  QRLabel29.Caption := StRp_C50.SortText+' '+StRp_C50.OptnText ;
  Case StRp_C50.RadioGroup1.Itemindex Of
    0:Xorder:=' ORDER BY INVNO';
    1:Xorder:=' ORDER BY INVDATE,INVNO';
    2:Xorder:=' ORDER BY JOBNO';
    3:Xorder:=' ORDER BY PARTNO,INVDATE';
  End;

  If StRp_C50.CheckBox1.Checked Then
    XOpt := ' AND A.FREE=''Y'' '
  Else
    XOpt := '';

  If StRp_C50.RadioGroup2.ItemIndex=0 Then
  Begin
    Case StRp_C50.OptRadio.ItemIndex Of
      0: XSql :='SELECT A.INVNO,A.INVDATE,A.JOBNO,A.PARTNO,A.QTYOUT,A.UPRICE,A.QTYOUT*A.UPRICE AS TOTPRC,'+
                'A.AVGCOST,A.QTYOUT*A.AVGCOST AS TOTCOS,((A.QTYOUT*A.UPRICE)-A.TOTPRC) AS REDU,B.DESC1,C.PKNO FROM '+
                'IC_TRANS A,INVENTOR B,IC_INVOI C WHERE (A.INVNO=C.INVNO) AND (A.FLAG<>''T'') AND (A.PARTNO=B.PARTNO AND A.INVLOC=B.LOCAT) AND (A.CANCELID IS NULL) AND '+
                '(A.INVDATE BETWEEN :0 AND :1) AND (A.INVLOC LIKE :2) AND A.GROUP1 LIKE :3 '+XOPT+XORDER;
      1: XSql :='SELECT A.TAXNO AS INVNO,A.TAXDATE AS INVDATE,A.JOBNO,A.PARTNO,A.QTY AS QTYOUT,A.UPRICE,A.QTY*A.UPRICE AS TOTPRC,A.QTY*A.UPRICE AS TOTPRC,'+
                'A.AVGCOST,A.QTY*A.AVGCOST AS TOTCOS,((A.QTY*A.UPRICE)-A.TOTPRC) AS REDU,B.DESC1,A.PKNO FROM '+
                'PARTTRAN A,INVENTOR B WHERE (A.PARTNO=B.PARTNO AND A.LOCAT=B.LOCAT) AND '+
                '(A.TAXDATE BETWEEN :0 AND :1) AND (A.LOCAT LIKE :2) AND SVCOLOR<>''Y'' AND A.GROUP1 LIKE :3 AND A.JOBNO LIKE :4 '+XOPT+XORDER;
      2: XSql :='SELECT A.TAXNO AS INVNO,A.TAXDATE AS INVDATE,A.JOBNO,A.PARTNO,A.QTY AS QTYOUT,A.UPRICE,A.QTY*A.UPRICE AS TOTPRC,'+
                'A.AVGCOST,A.QTY*A.AVGCOST AS TOTCOS,((A.QTY*A.UPRICE)-A.TOTPRC) AS REDU,B.DESC1,A.PKNO FROM '+
                'PARTTRAN A,INVENTOR B WHERE (A.PARTNO=B.PARTNO AND A.LOCAT=B.LOCAT) AND '+
                '(A.TAXDATE BETWEEN :0 AND :1) AND (A.LOCAT LIKE :2) AND SVCOLOR=''Y'' AND A.GROUP1 LIKE :3 AND A.JOBNO LIKE :4 '+XOPT+XORDER;
      3: XSql :='SELECT A.RTNNO AS INVNO,A.RTNDT AS INVDATE,A.JOBNO,A.PARTNO,A.QTYRTN AS QTYOUT,A.UPRICE,A.QTYRTN*A.UPRICE AS TOTPRC,'+
                'A.AVGCOST,A.QTYRTN*A.AVGCOST AS TOTCOS,0 AS REDU,B.DESC1,A.TAXREFNO AS PKNO FROM '+
                'RT_TRAN A,INVENTOR B WHERE FLAG=''7'' AND  (A.PARTNO=B.PARTNO AND A.RTNLOC=B.LOCAT) AND CANCELID IS NULL AND '+
                '(A.RTNDT BETWEEN :0 AND :1) AND (A.RTNLOC LIKE :2) '+XORDER;
      4: XSql :='SELECT A.ADJNO AS INVNO,A.ADJDATE AS INVDATE,''               '' AS JOBNO,A.PARTNO,A.QTYOUT,B.PRICE1 AS UPRICE,A.QTYOUT*B.PRICE1 AS TOTPRC,'+
                'A.AVGCOST,A.QTYOUT*A.AVGCOST AS TOTCOS,0 AS REDU,B.DESC1,A.ADJNO AS PKNO FROM '+
                'ADJ_TRANS A,INVENTOR B WHERE (A.PARTNO=B.PARTNO AND A.ADJLOC=B.LOCAT) AND '+
                '(A.ADJDATE BETWEEN :0 AND :1) AND (A.ADJLOC LIKE :2) '+XORDER;
  end;
 End;
  //
  If StRp_C50.RadioGroup2.ItemIndex=1 Then
  Begin
    QRLabel14.Caption :='เลขเอกสาร';
    QRLabel13.Caption :='วันที่เอกสาร';
    QRLabel1.Caption  :='เลขใบกำกับ';
    QRLabel9.Caption  :='ใบเบิกระหว่างวันที่  '+StRp_C50.Edit_dateFrom.Text+' - '+ StRp_C50.Edit_dateTo.Text;

    Case StRp_C50.OptRadio.ItemIndex Of
      0: XSql :='SELECT A.PKNO AS INVNO,A.PKDATE AS INVDATE,A.JOBNO,A.PARTNO,A.QTYOUT,A.UPRICE,A.QTYOUT*A.UPRICE AS TOTPRC, '+
                'A.AVGCOST,A.QTYOUT*A.AVGCOST AS TOTCOS,((A.QTYOUT*A.UPRICE)-A.TOTPRC) AS REDU,B.DESC1,C.REFNO AS PKNO FROM '+
                'PK_TRANS A,INVENTOR B,PK_INVOI C WHERE (A.PARTNO=B.PARTNO) AND (A.PKLOCAT=B.LOCAT) AND (A.PKNO=C.PKNO) '+
                'AND (A.CANCELID IS NULL) AND (A.FLAG=''1'' OR A.FLAG=''2'') AND '+
                '(A.PKDATE BETWEEN :0 AND :1) AND (A.PKLOCAT LIKE :2) AND A.GROUP1 LIKE :3 '+XOPT+XORDER;
      1: XSql :='SELECT A.PKNO AS INVNO,A.PKDATE AS INVDATE,A.JOBNO,A.PARTNO,A.QTY AS QTYOUT,A.UPRICE,A.QTY*A.UPRICE AS TOTPRC,'+
                'A.AVGCOST,A.QTY*A.AVGCOST AS TOTCOS,((A.QTY*A.UPRICE)-A.TOTPRC) AS REDU,B.DESC1,A.TAXNO AS PKNO FROM '+
                'PARTTRAN A,INVENTOR B WHERE (A.PARTNO=B.PARTNO AND A.LOCAT=B.LOCAT) AND '+
                '(A.PKDATE BETWEEN :0 AND :1) AND (A.LOCAT LIKE :2) AND SVCOLOR<>''Y'' AND A.GROUP1 LIKE :3 AND A.JOBNO LIKE :4 '+XOPT+XORDER;
      2: XSql :='SELECT A.PKNO AS INVNO,A.PKDATE AS INVDATE,A.JOBNO,A.PARTNO,A.QTY AS QTYOUT,A.UPRICE,A.QTY*A.UPRICE AS TOTPRC,'+
                'A.AVGCOST,A.QTY*A.AVGCOST AS TOTCOS,((A.QTY*A.UPRICE)-A.TOTPRC) AS REDU,B.DESC1,A.TAXNO AS PKNO FROM '+
                'PARTTRAN A,INVENTOR B WHERE (A.PARTNO=B.PARTNO AND A.LOCAT=B.LOCAT) AND '+
                '(A.PKDATE BETWEEN :0 AND :1) AND (A.LOCAT LIKE :2) AND SVCOLOR=''Y'' AND A.GROUP1 LIKE :3 AND A.JOBNO LIKE :4 '+XOPT+XORDER;
      3: XSql :='SELECT A.RTNNO AS INVNO,A.RTNDT AS INVDATE,A.JOBNO,A.PARTNO,A.QTYRTN AS QTYOUT,A.UPRICE,A.QTYRTN*A.UPRICE AS TOTPRC,'+
                'A.AVGCOST,A.QTYRTN*A.AVGCOST AS TOTCOS,0 AS REDU,B.DESC1,A.TAXREFNO AS PKNO FROM '+
                'RT_TRAN A,INVENTOR B WHERE FLAG=''7'' AND  (A.PARTNO=B.PARTNO AND A.RTNLOC=B.LOCAT) AND CANCELID IS NULL AND '+
                '(A.RTNDT BETWEEN :0 AND :1) AND (A.RTNLOC LIKE :2) '+XORDER;
      4: XSql :='SELECT A.ADJNO AS INVNO,A.ADJDATE AS INVDATE,''               '' AS JOBNO,A.PARTNO,A.QTYOUT,B.PRICE1 AS UPRICE,A.QTYOUT*B.PRICE1 AS TOTPRC,'+
                'A.AVGCOST,A.QTYOUT*A.AVGCOST AS TOTCOS,0 AS REDU,B.DESC1,A.ADJNO AS PKNO FROM '+
                'ADJ_TRANS A,INVENTOR B WHERE (A.PARTNO=B.PARTNO AND A.ADJLOC=B.LOCAT) AND '+
                '(A.ADJDATE BETWEEN :0 AND :1) AND (A.ADJLOC LIKE :2) '+XORDER;
    end;
  End;

  with QueryC11 do
  begin
   Close;
   Sql.Clear;
   Sql.Add(XSQL);
   Params[0].AsDate   := StRp_C50.Edit_DateFrom.Date;
   Params[1].AsDate   := StRp_C50.Edit_DateTo.Date ;
   Params[2].AsString := StRp_C50.Edit_LOCAT.Text+'%' ;
   If StRp_C50.OptRadio.ItemIndex in [0,1,2] Then
     Params[3].AsString := StRp_C50.Edit1.Text+'%' ;
   If StRp_C50.OptRadio.ItemIndex in [1,2] Then
     Params[4].AsString := StRp_C50.Edit2.Text+'%' ;
   Open;
   if Bof And Eof then
      SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');
  end;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := StRp_C50.EDIT_LOCAT.Text;
    Open;
    If Bof and Eof Then
      QRLabel8.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel8.Caption := 'สาขา : ['+StRp_C50.EDIT_LOCAT.Text+'] '+Fieldbyname('Locatnm').Asstring;
  end;

end;



procedure TQStRp_C51.QRepBeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
   Xtaxno:='';
end;

procedure TQStRp_C51.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   Xtaxno:=Queryc11.Fieldbyname('Invno').Asstring;
end;

procedure TQStRp_C51.QRepEndPage(Sender: TQuickRep);
begin
   XTaxno:='';
end;

procedure TQStRp_C51.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IF  FmDmic01.XISO <> '' then
  begin
     QRLabel25.Caption :=FmDmic01.XISO;
     FmDmic01.XISO := '';
  end;
end;

end.
