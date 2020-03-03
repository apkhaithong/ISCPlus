unit SetRp91;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, quickrpt, Qrctrls, Db, WinTypes,
  WinProcs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmSetRp91 = class(TForm)
    Query90: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SummaryBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp91: TFmSetRp91;

implementation
uses SetRp90;

{$R *.DFM}

procedure TFmSetRp91.FormCreate(Sender: TObject);
Var ed2 : string;
begin
   WITH Query90 Do
   Begin
     Close;
     SQL.Clear;
     Sql.add('SELECT * FROM RTCHQ WHERE RTCODE Like:EDIT1 '+
             'Order by RTCODE ');
     If FmSetRp90.Edit2.text = '' then
        Ed2 := '%'
     Else
        Ed2 := FmSetRp90.Edit2.text+'%';

     Params[0].AsString :=  Ed2;
     OPEN
   End;

   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 550;
   QRLabel4.alignment := tacenter;
   if FmSetRp90.Edit2.text = '' then
      QRLabel8.caption   := '  ทุกรหัสการคืนเช็ค  '
   Else
      QRLabel8.caption   := 'รหัสการคืนเช็ค  '+FmSetRp90.Edit2.text;
   QRLabel8.left := 1;
   QRLabel8.width := 550;
   QRLabel8.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 550;
   QRLabel5.alignment := tacenter;
end;

procedure TFmSetRp91.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


procedure TFmSetRp91.SummaryBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
showmessage('รหัสการคืนเช็ค  ');
end;


end.
