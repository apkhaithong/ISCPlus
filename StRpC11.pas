unit StRpC11;

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
  TQStRp_C11 = class(TForm)
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
    QRLabel19: TQRLabel;
    QRShape3: TQRShape;
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
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRSysData2: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    Queryc11: TFDQuery;
    SoQueryc11: TDataSource;
    QRLabel1: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText14: TQRDBText;
    Query1: TFDQuery;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    Query2: TFDQuery;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText15: TQRDBText;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel35: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel36: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QStRp_C11: TQStRp_C11;

implementation

uses    Dmic01, USoftFirm;

{$R *.DFM}

procedure TQStRp_C11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree ;
end;

procedure TQStRp_C11.FormCreate(Sender: TObject);
Var Xorder,XOpt,chkbox,Xdate,Xdt2 :string;
    Xdt1 :Tdatetime;
begin
  Condpay.Open;
  QRLabel4.Caption  := CondpayComp_nm.asstring;
  QRLabel4.left  := 1;
  QRLabel4.width := 1133;
  QRLabel4.alignment := tacenter;
  QRLabel5.left  := 1;
  QRLabel5.width := 1133;
  QRLabel5.alignment := tacenter;

  QRLabel9.left  := 1;
  QRLabel9.width := 1133;
  QRLabel9.alignment := tacenter;
  QRLabel9.Caption  := 'ระหว่างวันที  '+StRp_C10.Edit_dateFrom.Text+
                       ' - '+ StRp_C10.Edit_dateTo.Text;


  QRLabel29.Caption := StRp_C10.SortText+' '+StRp_C10.OptnText ;

  QRLabel33.Caption :='รายงาน';

  Case StRp_C10.SortRadio.ItemIndex Of
    0: Xorder := ' ORDER BY JOBNO';
    1: Xorder := ' ORDER BY JOBNO,PKDATE';
    2: Xorder := ' ORDER BY JOBNO,PARTNO';
    3: Xorder := ' ORDER BY JOBNO,TAXNO';
  end;

  Case StRp_C10.OptRadio.ItemIndex Of
    0:begin
        Xopt := ' AND A.CLAIM<>''Y'' ';
        QRLabel33.Caption :=QRLabel33.Caption +' หมวดอะไหล่ปกติ';
      end;
    1:begin
        Xopt := ' AND A.CLAIM=''Y'' ';
        QRLabel33.Caption :=QRLabel33.Caption +' หมวดอะไหล่เคลม';
      end;

    2:begin
        Xopt := '';
        QRLabel33.Caption :=QRLabel33.Caption +' หมวดอะไหล่ปกติ+เคลม';
      end;
  end;

  Case StRp_C10.RadioGroup1.ItemIndex Of
    0: XDate := ' (A.PKDATE BETWEEN :0 AND :1) AND ';
    1: XDate := ' (A.JOBDATE BETWEEN :0 AND :1) AND ';
    2: XDate := ' (A.TAXDATE BETWEEN :0 AND :1) AND ';
  end;

  Case StRp_C10.RadioGroup2.ItemIndex Of
    0:Xopt := Xopt+'  AND A.SVCOLOR<>''Y'' ';
    1:Xopt := Xopt+'  AND A.SVCOLOR=''Y'' ';
    2:Xopt := Xopt+'';
  end;

  if StRp_C10.CheckBox_Jb.Checked Then
  begin
    Chkbox :=' AND A.JOBNO IN (SELECT JOBNO FROM JOBORDER WHERE (STATUS<>''R'' AND STATUS<>''C'') ) ';
    QRLabel33.Caption :=QRLabel33.Caption+'เฉพาะ Job ที่ยังไม่ส่งมอบ ';
  end
  Else
     ChkBox := '';

  Xdt1 := Strtodate(StRp_C10.Edit_dateTo.Text);
  ShortDateFormat :='yyyy-MM-DD';
  Xdt2 := datetostr(xdt1);
  ShortDateFormat :='dd/mm/yyyy';

  if StRp_C10.CheckBox1.Checked Then
  begin
    Chkbox :=Chkbox+' AND (A.TAXNO IS NULL OR A.TAXNO='''' OR A.TAXDATE>'+''''+XDT2+''''+') ';
    QRLabel33.Caption :=QRLabel33.Caption+' ยังไม่ออกใบกำกับในช่วงเดือนที่ระบุ ';
  end;

  if StRp_C10.CheckBox2.Checked Then
  begin
    Chkbox :=Chkbox+' AND A.NETPRC<A.AVGCOST ';
    QRLabel33.Caption :=QRLabel33.Caption+' ขายต่ำกว่าต้นทุน ';
  end;

  if StRp_C10.CheckBox3.Checked Then
  begin
    Chkbox :=Chkbox+' AND A.FREE=''N'' ';
    QRLabel33.Caption :=QRLabel33.Caption+' ไม่รวมรายการ Free ';
  end;


  Query1.Close;
  with QueryC11 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT A.JOBNO,A.LOCAT,A.JOBDATE,A.PKDATE,A.PKNO,A.PARTNO,A.GROUP1,A.CLAIM,C.STRNO,C.CUSCOD,C.KILOMT,'+
           'A.QTY,A.UPRICE,(A.QTY*A.UPRICE) AS TOT,A.AVGCOST,(A.AVGCOST*A.QTY) AS TOTCOST,C.STATUS, '+
           '(A.QTY*A.UPRICE)-TOTPRC AS DISAMT,A.TOTPRC,A.TAXNO,A.TAXDATE '+
           'FROM PARTTRAN A,JOBORDER C WHERE (A.JOBNO=C.JOBNO) AND '+
           Xdate+' (A.LOCAT LIKE :2) AND A.GROUP1 LIKE :3 '+
           ''+Xopt+' '+Chkbox+' '+Xorder+' ');
   Params[0].AsDate   := StRp_C10.Edit_DateFrom.Date ;
   Params[1].AsDate   := StRp_C10.Edit_DateTo.Date ;
   Params[2].AsString := StRp_C10.Edit_Locat.Text+'%' ;
   Params[3].AsString := StRp_C10.Edit7.Text+'%' ;
   Open;
   if Bof And Eof then
      SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');
  end;

  with Query1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT DESC1 FROM INVENTOR WHERE PARTNO=:PARTNO AND LOCAT=:LOCAT');
   Open;
  End;
  QRDBText15.Enabled := sfMain.XSeecost='Y';
  QRExpr7.Enabled    := sfMain.XSeecost='Y';
  QRExpr8.Enabled    := sfMain.XSeecost='Y';
  //
  With Query2 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := StRp_C10.EDIT_LOCAT.Text;
    Open;
    If Bof and Eof Then
      QRLabel35.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel35.Caption := 'สาขา : ['+StRp_C10.EDIT_LOCAT.Text+'] '+Fieldbyname('Locatnm').Asstring;
  end;

end;


procedure TQStRp_C11.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with Query2 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT A.STRNO,A.REGNO,A.ENGNO,B.SNAM,B.NAME1,B.NAME2 '+
   'FROM SVMAST A,CUSTMAST B WHERE (A.CUSCOD=B.CUSCOD) AND A.STRNO=:EDIT1');
   Params[0].asstring := QueryC11.Fieldbyname('STRNO').Asstring;
   Open;
   QRLabel24.Caption := Query2.Fieldbyname('Snam').Asstring+
                        Query2.Fieldbyname('Name1').Asstring+
                        Query2.Fieldbyname('Name2').Asstring;
   QRLabel32.Caption := Query2.Fieldbyname('Strno').Asstring;                     
   QRLabel25.Caption := Query2.Fieldbyname('Engno').Asstring;
   QRLabel26.Caption := Query2.Fieldbyname('Regno').Asstring;                    
  End;
end;

end.
