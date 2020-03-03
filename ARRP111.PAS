unit ARRP111;

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
  TQArRp_111 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRep: TQuickRep;
    QRShape2: TQRShape;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QCondpay: TFDQuery;
    QArinv1: TFDQuery;
    QRShape1: TQRShape;
    QRBand1: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRSysData4: TQRSysData;
    QRDBCalc3: TQRDBCalc;
    QRDBCalc2: TQRDBCalc;
    QRLabel1: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    Query1: TFDQuery;
    QRLabel16: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
   TNet,TSpay,TKang : Double ;
  public
    { Public declarations }
  end;

var
  QArRp_111: TQArRp_111;
  SumVat,SumNet :Double;

implementation

uses ArRp110;

{$R *.DFM}

procedure TQArRp_111.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;


procedure TQArRp_111.FormCreate(Sender: TObject);
Var Xorder,XOption,XCheck:String;
begin
  Qcondpay.OPEN;
  QRLabel4.caption   := QCondpay.FieldByName('COMP_NM').Asstring;
  QRLabel4.Left      := 4;
  QRLabel4.Width     := 880;
  QRLabel4.Alignment := taCenter;

  QRLabel5.Left      := 4;
  QRLabel5.Width     := 880;
  QRLabel5.Alignment := taCenter;

  QRLabel6.caption   := 'ระหว่าง วันที่ '+ArRp_110.Edit2.Text+'  ถึงวันที่ '+ArRp_110.Edit4.Text;
  QRLabel6.Left      := 4;
  QRLabel6.Width     := 880;
  QRLabel6.Alignment := taCenter;

  QRLabel2.Caption   := ArRp_110.SortText;

  Case  ArRp_110.FSortRadio.ItemIndex Of
    0:Xorder := ' ORDER BY CUSCODE,INVDATE,INVNO';
    1:Xorder := ' ORDER BY TAXNO';
    2:Xorder := ' ORDER BY INVDUE';
  end;

  Case  ArRp_110.RadioGroup1.ItemIndex Of
    0:XOption := ' AND (A.JOBNO IS NULL OR A.JOBNO='''')  ';
    1:XOption := ' AND NOT(A.JOBNO IS NULL OR A.JOBNO='''') ';
    2:XOption := ' ';
  end;
  Case  ArRp_110.RadioGroup2.ItemIndex Of
    0: XCheck := ' AND (A.TAXNO<>'''' OR NOT(A.TAXNO IS NULL)) ';
    1: XCheck := ' AND (A.TAXNO='''' OR A.TAXNO IS NULL) ';
    2: XCheck := ' ';
  end;

  Case ArRp_110.Option.ItemIndex Of
    0:QRlabel16.Caption :='รายงานเฉพาะยอดค้างชำระ';
    1:QRlabel16.Caption :='รายงานทั้งยอดค้างชำระและที่ชำระแล้ว';
    2:QRlabel16.Caption :='รายงานเฉพาะใบลดหนี้';
  End;

  With QArinv1 DO
  begin
    Close;
    Sql.Clear;
    Case ArRp_110.Option.ItemIndex Of
      0 : Sql.Add('SELECT A.LOCAT,A.CUSCODE,A.INVNO,A.INVDATE,A.TAXNO,A.INVDUE,(A.NETTOTAL-A.RTNAMT) AS NETTOTAL, '+
            '(A.SMPAY+A.SMCHQ) AS PAYAMT,A.KANG,A.RTNAMT,B.NAME1,B.NAME2,(A.NETTOTAL-A.VATAMT) AS BALANCE,A.VATAMT  FROM ARINVOI A,ARMAST B  '+
            'WHERE A.CUSCODE=B.CUSCOD AND (A.FLAG=''2'' OR A.FLAG=''D'') AND A.CUSCODE LIKE :XCUS AND A.LOCAT LIKE :XLOCAT '+
            'AND A.INVDATE >= :XFRMDATE AND A.INVDATE <= :XTODATE AND  '+
            'A.KANG>0 '+XCHECK+XOption+Xorder);

      1 : Sql.Add('SELECT A.LOCAT,A.CUSCODE,A.INVNO,A.INVDATE,A.INVDUE,A.TAXNO,(A.NETTOTAL-A.RTNAMT) AS NETTOTAL, '+
            '(A.SMPAY+A.SMCHQ) AS PAYAMT,A.KANG,A.RTNAMT,B.NAME1,B.NAME2,(A.NETTOTAL-A.VATAMT) AS BALANCE,A.VATAMT  FROM ARINVOI A,ARMAST B  '+
            'WHERE A.CUSCODE=B.CUSCOD AND (A.FLAG=''2'' OR A.FLAG=''D'') AND A.CUSCODE LIKE :XCUS '+
            ' AND A.LOCAT LIKE :XLOCAT AND A.INVDATE >= :XFRMDATE AND A.INVDATE <= :XTODATE  '+XCHECK+XOption+Xorder);

      2 : Sql.Add('SELECT A.LOCAT,A.CUSCODE,A.INVNO,A.INVDATE,A.INVDUE,A.TAXNO,A.NETTOTAL, '+
            '(A.SMPAY+A.SMCHQ) AS PAYAMT,A.KANG,A.RTNAMT,B.NAME1,B.NAME2,(A.NETTOTAL-A.VATAMT) AS BALANCE,A.VATAMT  FROM ARINVOI A,ARMAST B  '+
            'WHERE (A.CUSCODE=B.CUSCOD) AND (A.FLAG=''7'') AND A.CUSCODE LIKE :XCUS AND A.LOCAT LIKE :XLOCAT AND '+
            ' A.INVDATE >= :XFRMDATE AND A.INVDATE <= :XTODATE AND CANCELID IS NULL'+XCHECK+XOption+Xorder);
    End;

    Params[0].AsString    := ArRp_110.Edit3.Text+'%';
    Params[1].AsString    := ArRp_110.Edit1.Text+'%';
    Params[2].AsDate      := StrToDate(ArRp_110.Edit2.Text);
    Params[3].AsDate      := StrToDate(ArRp_110.Edit4.Text);
    OPEN;
    If Bof and Eof Then
    SFMain.RaiseException('ไม่พบข้อมูล');
   end;
end;


procedure TQArRp_111.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabel7.caption   := QArinv1.Fieldbyname('NAME1').Asstring+' '+QArinv1.Fieldbyname('NAME2').Asstring;
   QRLabel20.Enabled  := QArinv1.Fieldbyname('RTNAMT').Asfloat>0;
end;

procedure TQArRp_111.DetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SumVat := SumVat+QArinv1.Fieldbyname('VATAMT').Asfloat;
  SumNet := SumNet+QArinv1.Fieldbyname('NETTOTAL').Asfloat;
end;

procedure TQArRp_111.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var SumBal:Double;
begin
  SumBal := Sumnet-Sumvat;
  QRlabel25.Caption := Floattostrf(Sumnet,ffNumber,15,2);
  QRlabel24.Caption := Floattostrf(SumVat,ffNumber,15,2);
  QRlabel18.Caption := Floattostrf(SumBal,ffNumber,15,2);
end;

procedure TQArRp_111.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  SumVat :=0;
  SumNet :=0;

end;

end.
