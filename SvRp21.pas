unit SvRp21;

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
  TQRpSv21 = class(TForm)
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
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape3: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    Query1: TFDQuery;
    QRBand5: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    DataSource1: TDataSource;
    Query2: TFDQuery;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
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
  QRpSv21: TQRpSv21;

implementation
uses SvRp20;

{$R *.DFM}

procedure TQRpSv21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TQRpSv21.FormCreate(Sender: TObject);
Var Ed1,Ed2,Xopt,XSort,Xdate :  String;
begin
   condpay.open;
   QRLabel4.caption   := CondpayCOMP_NM.Asstring;
   QRLabel4.Left      := 1;
   QRLabel4.Width     := 916;
   QRLabel4.Alignment := taCenter;
    //
   QRLabel17.Caption   :='สาขา '+SvRp_20.EDIT_LOCAT.text+'   Job ระหว่างวันที่ '+
                         SvRp_20.Edit_dateFrom.text+'  ถึงวันที่  '+
                         SvRp_20.Edit_DateTo.text;
   QRLabel17.Left      := 1;
   QRLabel17.Width     := 916;
   QRLabel17.Alignment := taCenter;
   //
   QRLabel5.Left      := 1;
   QRLabel5.Width     := 916;
   QRLabel5.Alignment := taCenter;

   Case SvRp_20.SortRadio.ItemIndex of
     0:XSort := 'ORDER BY JOBNO';
     1:XSort := 'ORDER BY RECVDATE,JOBNO';
     2:XSort := 'ORDER BY REPTYPE,JOBNO';
     3:XSort := 'ORDER BY PAYDATE,JOBNO';
   end;

   Case  SvRp_20.RadioGroup2.Itemindex Of
     0:Begin
         Xdate:=' (J.RECVDATE >= :FROMDATE) AND (J.RECVDATE <= :ToDate) ';
         QRLabel14.Caption :='ยึดช่วงวันที่ตามวันเปิด JOB';
       End;
     1:Begin
         Xdate:=' (J.TAXDATE >= :FROMDATE) AND (J.TAXDATE <= :ToDate) ';
         QRLabel14.Caption :='ยึดช่วงวันที่ตามวันจ่ายรถ';
       End;
   End;

  Query2.Close;
  With Query1 Do
  begin
   Close;
   Sql.clear;
   {Sort By Jobno}
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.REPCOD,J.PAYDATE,J.PAYCOD,J.TAXDATE,S.MDLCOD,S.TYPE, '+
           'J.REPTYPE,J.PAYCOD,J.STATUS,S.REGNO,B.SNAM,B.NAME1,B.NAME2 '+
           'FROM JOBORDER J,SVMAST S,ARMAST B '+
           'WHERE (REPTYPE LIKE :XREPTYPE) AND (J.LOCAT LIKE :XLOCAT) AND '+
           Xdate+'AND (J.STRNO = S.STRNO) AND (S.Cuscod=B.Cuscod) AND (J.STATUS =:XSTATUS)  '+
           'AND S.MDLCOD LIKE :XMODEL AND S.TYPE LIKE :XTYPE '+ XSort);
   {Condition Variable}
   IF SvRp_20.Edit_Type.Text = '' THEN
     Ed1 := '%'
   ELSE
      Ed1 := SvRp_20.Edit_Type.Text+'%';
   If SvRp_20.Edit_LOCAT.Text = '' Then
      Ed2 := '%'
   else
      Ed2 := SvRp_20.Edit_LOCAT.Text+'%';

   params[0].asString  := Ed1;
   params[1].asString  := Ed2;
   params[2].asdate    := SvRp_20.FROMDATE;
   params[3].asdate    := SvRp_20.ToDate;
   params[4].asString  := 'R';
   params[5].asString  := SvRp_20.EDIT1.TEXT+'%';
   params[6].asString  := SvRp_20.EDIT3.TEXT+'%';
   OPEN;
   If Bof and Eof Then
   SFMain.RaiseException('ไม่มีข้อมูลตามเงื่อนไข');
  end;
  Query2.Open;
end;




procedure TQRpSv21.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QrLabel13.Caption := Query1.Fieldbyname('Snam').Asstring+' '+
                     Query1.Fieldbyname('Name1').Asstring+' '+
                     Query1.Fieldbyname('Name2').Asstring;

end;


end.
