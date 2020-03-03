unit SvRp11;

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
  TQRpSv11 = class(TForm)
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    QJobord: TFDQuery;
    Query1: TFDQuery;
    DataSource1: TDataSource;
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
  QRpSv11: TQRpSv11;

implementation
uses SvRp10;

{$R *.DFM}

procedure TQRpSv11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TQRpSv11.FormCreate(Sender: TObject);
Var Ed1,Ed2,Xorder :  String;
begin
   condpay.open;
   QRLabel4.caption   := CondpayCOMP_NM.Asstring;
   QRLabel4.Left      := 1;
   QRLabel4.Width     := 1100;
   QRLabel4.Alignment := taCenter;
    //
   QRLabel17.Caption   :='สาขา '+SvRp_10.EDIT_LOCAT.text+'   Job ระหว่างวันที่ '+
                         SvRp_10.Edit_dateFrom.text+'  ถึงวันที่  '+
                         SvRp_10.Edit_DateTo.text;
   QRLabel17.Left      := 1;
   QRLabel17.Width     := 1100;
   QRLabel17.Alignment := taCenter;
   //
   QRLabel5.Left      := 1;
   QRLabel5.Width     := 1100;
   QRLabel5.Alignment := taCenter;

   case  SvRp_10.SortRadio.ItemIndex of
     0:Xorder :=' ORDER BY JOBNO';
     1:Xorder :=' ORDER BY REPTYPE';
     2:Xorder :=' ORDER BY MDLCOD';
   end;

 {Create SQL DataBase}
  Query1.Close;
  With QJobord Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT J.JOBNO,J.LOCAT,J.RECVDATE,J.RECVTIME,J.FINSDATE,J.FINSTIME,J.MDLCOD,J.RECVCOD, '+
           'J.REPTYPE,J.REPBAY,J.STRNO,S.REGNO,S.TYPE,B.SNAM,B.NAME1,B.NAME2 FROM JOBORDER J,SVMAST S,ARMAST B '+
           'WHERE (REPTYPE LIKE :XREPTYPE) AND (J.LOCAT LIKE :XLOCAT) AND '+
           '(J.RECVDATE >= :FROMDATE) AND (J.RECVDATE <= :ToDate) AND '+
           '(J.MDLCOD LIKE :XMDLCOD)  AND (J.RECVCOD LIKE :XRECCOD) AND S.TYPE LIKE :XTYPE '+
           'AND (J.STRNO = S.STRNO) AND J.CUSCOD=B.CUSCOD AND (J.STATUS<>''C'') ');
   {Condition Variable}
   IF SvRp_10.Edit_Type.Text = '' THEN
     Ed1 := '%'
   ELSE
      Ed1 := SvRp_10.Edit_Type.Text+'%';
   If SvRp_10.Edit_LOCAT.Text = '' Then
      Ed2 := '%'
   else
      Ed2 := SvRp_10.Edit_LOCAT.Text+'%';

   params[0].asString  := Ed1;
   params[1].asString  := Ed2;
   params[2].asdate    := SvRp_10.FROMDATE;
   params[3].asdate    := SvRp_10.ToDate;
   params[4].asString  := SvRp_10.Edit1.text+'%';
   params[5].asString  := SvRp_10.Edit2.text+'%';
   params[6].asString  := SvRp_10.Edit3.text+'%';

   {Open SQL Table}
   OPEN;
  end;
  Query1.Open;;
end;


procedure TQRpSv11.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QrLabel19.Caption := QJobord.Fieldbyname('Snam').Asstring+' '+
                     QJobord.Fieldbyname('Name1').Asstring+' '+
                     QJobord.Fieldbyname('Name2').Asstring;
end;

end.
