unit SetRpA11;

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
  TFmSetRpA11 = class(TForm)
    QueryA10: TFDQuery;
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
  FmSetRpA11: TFmSetRpA11;

implementation
uses SetRpA10;

{$R *.DFM}

procedure TFmSetRpA11.FormCreate(Sender: TObject);
Var ed2 : string;
begin
   WITH QueryA10 Do
   Begin
     Close;
     SQL.Clear;
     Sql.add('SELECT * FROM BOOK WHERE BKCODE Like:EDIT1 '+
             'Order by BKCODE ');
     If FmSetRpA10.Edit2.text = '' then
        Ed2 := '%'
     Else
        Ed2 := FmSetRpA10.Edit2.text+'%';

     Params[0].AsString :=  Ed2;
     OPEN
   End;

   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 550;
   QRLabel4.alignment := tacenter;
   IF FmSetRpA10.Edit2.text = '' THEN
      QRLabel8.caption := '  ·Ø¡ÃËÑÊºÑ­ªÕ¹Ó½Ò¡  '
   ELSE
      QRLabel8.caption := 'ÃËÑÊºÑ­ªÕ¹Ó½Ò¡  '+FmSetRpA10.Edit2.text;
   QRLabel8.left := 1;
   QRLabel8.width := 550;
   QRLabel8.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 550;
   QRLabel5.alignment := tacenter;
end;

procedure TFmSetRpA11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;




end.
