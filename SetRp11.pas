unit SetRp11;

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
  TFmSetRp11 = class(TForm)
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    Query10: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp11: TFmSetRp11;

implementation
uses SetRp10;

{$R *.DFM}

procedure TFmSetRp11.FormCreate(Sender: TObject);
Var ed2 : string;
begin
   WITH Query10 Do
   Begin
     Close;
     SQL.Clear;
     SQL.ADD('select * from LOCATMST WHERE LOCATCOD LIKE :XCOD '+
             'Order by LOCATCOD ');
     If FmSetRp10.Edit2.text = '' then
        Ed2 := '%'
     Else
        Ed2 := FmSetRp10.Edit2.text+'%';
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
   If FmSetRp10.Edit2.text <> '' then
      QRLabel8.caption   := 'รหัสสาขา  '+FmSetRp10.Edit2.text
   else
      QRLabel8.caption   := '  ทุกสาขาสาขา  ';
   QRLabel8.left := 1;
   QRLabel8.width := 550;
   QRLabel8.alignment := tacenter;
end;

procedure TFmSetRp11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

end.
