unit SetRp21;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, StdCtrls, ExtCtrls, Qrctrls, Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmSetRp21 = class(TForm)
    Query20: TFDQuery;
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
  FmSetRp21: TFmSetRp21;

implementation
uses SetRp20;

{$R *.DFM}

procedure TFmSetRp21.FormCreate(Sender: TObject);
var ed2 : string;
begin
   WITH Query20 Do
   Begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT * FROM GROUPMST WHERE (GROUPCOD like :Xcod) '+
             'Order by GroupCOD ');
     If FmSetRp20.Edit2.text = '' then
        Ed2 := '%'
     Else
        Ed2 := FmSetRp20.Edit2.text+'%';
     Params[0].AsString :=  Ed2;
     OPEN
   End;

   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 550;
   QRLabel4.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 550;
   QRLabel5.alignment := tacenter;
   If FmSetRp20.Edit2.text = '' then
      QRLabel8.caption   := ' ทุกกลุ่มสินค้า  '
   else
      QRLabel8.caption   := 'รหัสกลุ่มสินค้า  '+FmSetRp20.Edit2.text;
   QRLabel8.left := 1;
   QRLabel8.width := 550;
   QRLabel8.alignment := tacenter;
end;

procedure TFmSetRp21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;




end.
