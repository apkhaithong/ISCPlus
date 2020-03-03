unit SvRp61;

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
  TQRpSv61 = class(TForm)
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    Query6: TFDQuery;
    DataSource1: TDataSource;
    Query1: TFDQuery;
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
  QRpSv61: TQRpSv61;

implementation
uses SvRp60;

{$R *.DFM}

procedure TQRpSv61.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TQRpSv61.FormCreate(Sender: TObject);
Var Ed1,Ed2,XSort,XOpt,Xstatus :  String;
begin
   condpay.open;
   QRLabel4.caption   := CondpayCOMP_NM.Asstring;
   QRLabel4.Left      := 1;
   QRLabel4.Width     := 930;
   QRLabel4.Alignment := taCenter;
    //
   QRLabel17.Caption   :='สาขา '+SvRp_60.EDIT_LOCAT.text+'   Job ระหว่างวันที่ '+
                         SvRp_60.Edit_dateFrom.text+'  ถึงวันที่  '+
                         SvRp_60.Edit_DateTo.text;
   QRLabel17.Left      := 1;
   QRLabel17.Width     := 930;
   QRLabel17.Alignment := taCenter;
   //
   QRLabel5.Left      := 1;
   QRLabel5.Width     := 930;
   QRLabel5.Alignment := taCenter;

   Case SvRp_60.SortRadio.ItemIndex of
     0:XSort := 'ORDER BY JOBNO';
     1:XSort := 'ORDER BY RECVDATE,JOBNO';
     2:XSort := 'ORDER BY REPTYPE,JOBNO';
     3:XSort := 'ORDER BY RFINSHDT,JOBNO';
   end;
   QRLabel18.Caption :='';

   Case SvRp_60.RadioGroup1.ItemIndex of
     0:Begin
         XOpt :=' (J.RECVDATE >= :FROMDATE) AND (J.RECVDATE <= :ToDate) ' ;
         QRLabel18.Caption :='ยึดช่วงวันที่ตามวันเปิด JOB';
       end;
     1:Begin
         XOpt :=' (J.RFINSHDT >= :FROMDATE) AND (J.RFINSHDT <= :ToDate) ' ;
         QRLabel18.Caption :='ยึดช่วงวันที่ตามวันปิด JOB';
       end;
   end;
   If SvRp_60.CheckBox1.Checked Then
      XStatus :=' AND (J.STATUS =''F'' OR J.STATUS =''R'') '
   Else
      XStatus :=' AND J.STATUS =''F'' ';

  Query1.Close;
 With Query6 Do
  begin
   Close;
   Sql.clear;
   {Sort By Jobno}
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.REPCOD,J.RFINSHDT,J.REPBAY,S.TYPE,S.MDLCOD, '+
           'J.RFINSHTM,J.REPTYPE,J.INSPECT,J.STATUS,S.REGNO,B.SNAM,B.NAME1,B.NAME2 '+
           'FROM JOBORDER J,SVMAST S,ARMAST B '+
           'WHERE (REPTYPE LIKE :XREPTYPE) AND (J.LOCAT LIKE :XLOCAT) AND '+
           XOpt+' AND S.MDLCOD LIKE :XMDLCOD AND S.TYPE LIKE :XTYPE '+
           'AND (J.STRNO = S.STRNO)  AND S.CUSCOD=B.CUSCOD  '+Xstatus+
           XSort);

   {Condition Variable}
   IF SvRp_60.Edit_Type.Text = '' THEN
     Ed1 := '%'
   ELSE
      Ed1 := SvRp_60.Edit_Type.Text+'%';
   If SvRp_60.Edit_LOCAT.Text = '' Then
      Ed2 := '%'
   else
      Ed2 := SvRp_60.Edit_LOCAT.Text+'%';

   params[0].asString  := Ed1;
   params[1].asString  := Ed2;
   params[2].asdate    := SvRp_60.FROMDATE;
   params[3].asdate    := SvRp_60.ToDate;
   params[4].asString  := SvRp_60.EDIT1.TEXT+'%';
   params[5].asString  := SvRp_60.EDIT3.TEXT+'%';

   {Open SQL Table}
   OPEN;
  end;
  Query1.Open;

end;




procedure TQRpSv61.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QrLabel14.Caption := Query6.Fieldbyname('Snam').Asstring+' '+
                     Query6.Fieldbyname('Name1').Asstring+' '+
                     Query6.Fieldbyname('Name2').Asstring;

end;


end.
