unit Setrp51_1;

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
  TFmSetRp51 = class(TForm)
    Query50: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
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
  FmSetRp51: TFmSetRp51;

implementation
uses SetRp50_1;

{$R *.DFM}

procedure TFmSetRp51.FormCreate(Sender: TObject);
Var ed2 : string;
begin
   WITH Query50 Do
   Begin
     Close;
     SQL.Clear;
     sql.add('SELECT * FROM APMAST '+
             'WHERE (APCODE LIKE:EDIT1) ORDER BY APCODE');
     If FmSetRp50.Edit2.text = '' then
        Ed2 := '%'
     Else
        Ed2 := FmSetRp50.Edit2.text+'%';
     Params[0].AsString :=  Ed2;
     OPEN
   End;

   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 930;
   QRLabel4.alignment := tacenter;
   QRLabel8.caption   := 'รหัสบริษัทเจ้าหนี้  '+FmSetRp50.Edit2.text;
   QRLabel8.left := 1;
   QRLabel8.width := 930;
   QRLabel8.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 930;
   QRLabel5.alignment := tacenter;
end;

procedure TFmSetRp51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSetRp51.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabel6.Caption := Query50.FieldByName('Addr1').AsString+
                       Query50.FieldByName('Addr2').AsString;
end;


end.
