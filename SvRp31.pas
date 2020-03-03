unit SvRp31;

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
  TQRpSv31 = class(TForm)
    QRep: TQuickRep;
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    Query2: TFDQuery;
    QRBand5: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel14: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    QSum: TFDQuery;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
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
  QRpSv31: TQRpSv31;

implementation
uses SvRp30;

{$R *.DFM}

procedure TQRpSv31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TQRpSv31.FormCreate(Sender: TObject);
Var Ed1,Ed2,Xorder,Xstatus :  String;
begin
   condpay.open;
   QRLabel4.caption   := CondpayCOMP_NM.Asstring;
   QRLabel4.Left      := 1;
   QRLabel4.Width     := 990;
   QRLabel4.Alignment := taCenter;
    //
   QRLabel17.Caption   :='สาขา '+SvRp_30.EDIT_LOCAT.text+'   Job ระหว่างวันที่ '+
                         SvRp_30.Edit_dateFrom.text+'  ถึงวันที่  '+
                         SvRp_30.Edit_DateTo.text;
   QRLabel17.Left      := 1;
   QRLabel17.Width     := 990;
   QRLabel17.Alignment := taCenter;
   //
   QRLabel5.Left      := 1;
   QRLabel5.Width     := 990;
   QRLabel5.Alignment := taCenter;

   case SvRp_30.RadioGroup1.ItemIndex of
    0:QRLabel5.Caption :='รายงานรถค้างรับ (ปิด Jobแล้ว)';
    1:QRLabel5.Caption :='รายงานรถอยู่ระหว่างซ่อม';
    2:QRLabel5.Caption :='รายงานรถปิด Job แล้ว และอยู่ระหว่างซ่อม';
   end;

   case SvRp_30.RadioGroup1.ItemIndex of
     0:Begin
         QRLabel19.Caption :='รายงานเฉพาะสถานะ ปิด Job แล้ว';
         XStatus := ' (J.STATUS =''F'') AND J.STATUS<>''C'' ';
       End;
     1:Begin
         QRLabel19.Caption :='รายงานเฉพาะสถานะ อยู่ระหว่างการซ่อม';
         XStatus := ' (J.STATUS =''W'') AND J.STATUS<>''C'' ';
       End;
     2:Begin
         QRLabel19.Caption :='สถานะ ปิดJOB และกำลังซ่อม';
         XStatus := ' (J.STATUS <>''R'' AND J.STATUS<>''C'' ) ';
       End;
   End;

   case SvRp_30.SortRadio.ItemIndex of
     0:Xorder :=' ORDER BY JOBNO ';
     1:Xorder :=' ORDER BY REPTYPE';
   End;

  Query1.Close;
  QSUM.Close;
  With Query2 Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.REPCOD,J.RFINSHDT,J.REPBAY, '+
           'J.RFINSHTM,J.REPTYPE,J.INSPECT,J.STATUS,S.REGNO,S.MDLCOD,S.TYPE,'+
           'B.SNAM,B.NAME1,B.NAME2  '+
           'FROM JOBORDER J,SVMAST S,ARMAST B  '+
           'WHERE (REPTYPE LIKE :XREPTYPE) AND (J.LOCAT LIKE :XLOCAT) AND '+
           '(J.RECVDATE >= :FROMDATE) AND (J.RECVDATE <= :ToDate) '+
           'AND S.MDLCOD LIKE :XMODEL AND S.TYPE LIKE :XTYPE '+
           'AND (J.STRNO = S.STRNO) AND '+Xstatus+ ' AND (S.CUSCOD=B.CUSCOD) '+XOrder);
   {Condition Variable}
   IF SvRp_30.Edit_Type.Text = '' THEN
     Ed1 := '%'
   ELSE
      Ed1 := SvRp_30.Edit_Type.Text+'%';
   If SvRp_30.Edit_LOCAT.Text = '' Then
      Ed2 := '%'
   else
      Ed2 := SvRp_30.Edit_LOCAT.Text+'%';

   params[0].asString  := Ed1;
   params[1].asString  := Ed2;
   params[2].asdate    := SvRp_30.FROMDATE;
   params[3].asdate    := SvRp_30.ToDate;
   params[4].asString  := SvRp_30.EDIT1.TEXT+'%';
   params[5].asString  := SvRp_30.EDIT3.TEXT+'%';
   OPEN;
   If Bof and Eof Then
   SFMain.RaiseException('ไม่มีข้อมูลตามเงื่อนไข');
  end;
  Query1.Open;
  QSUM.Open;
end;



procedure TQRpSv31.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QrLabel14.Caption := Query2.Fieldbyname('Snam').Asstring+' '+
                     Query2.Fieldbyname('Name1').Asstring+' '+
                     Query2.Fieldbyname('Name2').Asstring;

end;





end.
