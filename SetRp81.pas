unit SetRp81;

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
  TFmSetRp81 = class(TForm)
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    Query80: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp81: TFmSetRp81;

implementation
uses SetRp80;

{$R *.DFM}

procedure TFmSetRp81.FormCreate(Sender: TObject);
Var ed2 : string; x : Integer;
begin
   WITH Query80 Do
   Begin
     Close;
     SQL.Clear;
     Sql.add('SELECT BKCODE,BKNAME,MEMO1 '+
             'FROM BKMAST WHERE BKCODE Like:EDIT1 '+
             'Order by BKCODE ');
     If FmSetRp80.Edit2.text = '' then
        Ed2 := '%'
     Else
        Ed2 := FmSetRp80.Edit2.text+'%';

     Params[0].AsString :=  Ed2;
     OPEN;
   End;
end;

procedure TFmSetRp81.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSetRp81.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 550;
   QRLabel4.alignment := tacenter;
   QRLabel8.caption   := '√À— ∏π“§“√  '+FmSetRp80.Edit2.text;
   QRLabel8.left := 1;
   QRLabel8.width := 550;
   QRLabel8.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 550;
   QRLabel5.alignment := tacenter;
end;

procedure TFmSetRp81.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if Query80.FieldByName('MEMO1').AsString = '' then
      QRMemo1.Lines.add(Query80.FieldByName('MEMO1').AsString);
end;

end.
