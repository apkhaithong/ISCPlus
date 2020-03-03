unit SvRpC11;

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
  TFmSvRpc11 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel26: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    QueryC10: TFDQuery;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBeforePrint(var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpc11: TFmSvRpc11;

implementation
uses SvRpC10;
{$R *.DFM}

procedure TFmSvRpc11.FormCreate(Sender: TObject);
Var Ed2,XAP : String;
begin
   Condpay.Open;
   QRLabel4.Caption   := CondpayComp_nm.asstring;
   QRLabel4.left      := 1;
   QRLabel4.width     := 1100;
   QRLabel4.alignment := tacenter;
   QRLabel5.left      := 1;
   QRLabel5.width     := 1100;
   QRLabel5.alignment := tacenter;
   QRLabel8.caption   := 'สาขา  '+FmSvRpc10.Edit2.text+'  จากวันที่  '+
                         FmSvRpc10.Edit5.text+
                         '  ถึงวันที่  '+FmSvRpc10.Edit6.text;
   QRLabel8.left := 1;
   QRLabel8.width := 1100;
   QRLabel8.alignment := tacenter;
   If FmSvRpc10.Edit2.Text <> '' Then
      Ed2 := FmSvRpc10.Edit2.text +'%'
   else Ed2 := '%';

   With QueryC10 do
   begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT * FROM JOBORDER WHERE (LOCAT like :XLocat) AND '+
             '(RECVDATE >=:FrmDate) and (RECVDATE <=:ToDate) '+
             'AND (STATUS=''C'') Order By LOCAT,JOBNO');
     Params[0].AsString := Ed2;
     Params[1].AsDate   := FmSvRpc10.Frmdate;
     Params[2].AsDate   := FmSvRpc10.Todate;
     OPEN;
   End;
   If QueryC10.Bof and QueryC10.Eof Then
      SFMain.RaiseException('ไม่มีข้อมูลตามเงื่อนไข');
end;

procedure TFmSvRpc11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSvRpc11.DetailBeforePrint(var PrintBand: Boolean);
begin
{   If QueryC10.FieldByname('Memo1').AsString <> '' then
      QRMemo1.Lines.Add(QueryC10.FieldByname('Memo1').AsString);}
end;



end.
