unit SetRp71;

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
  TFmSetRp71 = class(TForm)
    Query70: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp71: TFmSetRp71;

implementation
uses SetRp70;

{$R *.DFM}

procedure TFmSetRp71.FormCreate(Sender: TObject);
Var ed2 : string;
begin
   WITH Query70 Do
   Begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT * FROM PAYTYP WHERE PAYCODE Like:EDIT1 '+
             'Order by PAYCODE ');
     If FmSetRp70.Edit2.text = '' then
        Ed2 := '%'
     Else
        Ed2 := FmSetRp70.Edit2.text+'%';

     Params[0].AsString :=  Ed2;
     OPEN
   End;

   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 600;
   QRLabel4.alignment := tacenter;
   QRLabel8.caption   := 'รหัสประเภทการรับชำระ  '+FmSetRp70.Edit2.text;
   QRLabel8.left := 1;
   QRLabel8.width := 600;
   QRLabel8.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 600;
   QRLabel5.alignment := tacenter;
end;

procedure TFmSetRp71.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;



end.
