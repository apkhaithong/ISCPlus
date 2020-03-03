unit SetRpA21;

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
  TFmSetRpA21 = class(TForm)
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    QueryA20: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRpA21: TFmSetRpA21;

implementation
uses SetRpA20;

{$R *.DFM}
procedure TFmSetRpA21.FormCreate(Sender: TObject);
Var ed2 : String;
begin
   WITH QueryA20 Do
   Begin
     Close;
     SQL.Clear;
     Sql.add('SELECT * FROM OFFICER WHERE OFFICCOD Like:EDIT1 '+
             'Order by OFFICCOD ');
     If FmSetRpA20.Edit2.text = '' then
        Ed2 := '%'
     Else
        Ed2 := FmSetRpA20.Edit2.text+'%';
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

   QRLabel8.caption   := 'รหัสพนักงาน  '+FmSetRpA20.Edit2.text;
   QRLabel8.left := 1;
   QRLabel8.width := 550;
   QRLabel8.alignment := tacenter;
end;

procedure TFmSetRpA21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSetRpA21.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    If QueryA20.FieldByName('Depart').AsString = '1' Then
       QRLabel6.Caption := 'พนักงานหน้าร้าน';
    If QueryA20.FieldByName('Depart').AsString = '2' Then
       QRLabel6.Caption := 'พนักงานศูนย์บริการ';
end;


end.
