unit SetRp31;

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
  TFmSetRp31 = class(TForm)
    Query30: TFDQuery;
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
  FmSetRp31: TFmSetRp31;

implementation
uses SetRp30;

{$R *.DFM}

procedure TFmSetRp31.FormCreate(Sender: TObject);
var ed2 : string;
begin
   WITH Query30 Do
   Begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT * FROM TYPEMST WHERE (TYPECOD LIKE:EDIT1) '+
             'Order by TYPECOD ');
     If FmSetRp30.Edit2.text = '' then
        Ed2 := '%'
     Else
        Ed2 := FmSetRp30.Edit2.text+'%';
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
   If FmSetRp30.Edit2.text = '' then
      QRLabel8.caption := ' ทุกยี่ห้อสินค้า  '
   Else
      QRLabel8.caption := 'รหัสยี่ห้อสินค้า  '+FmSetRp30.Edit2.text;
   QRLabel8.left := 1;
   QRLabel8.width := 550;
   QRLabel8.alignment := tacenter;
end;

procedure TFmSetRp31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;




end.
