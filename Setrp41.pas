unit SetRp41;

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
  TFmSetRp41 = class(TForm)
    Query40: TFDQuery;
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
  FmSetRp41: TFmSetRp41;

implementation
uses SetRp40;

{$R *.DFM}

procedure TFmSetRp41.FormCreate(Sender: TObject);
Var ed1,ed2,ed3 : string;
begin
   WITH Query40 Do
   Begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT * From Inventor Where (Locat like:Xlocat) '+
             'and (PartNo >=:XPart1) and (PartNo <=:XPart2)  '+
             'ORDER BY PARTNO ');
      If FmSetRp40.Edit3.Text = '' Then
         Ed3 := '%'
      else Ed3 := FmSetRp40.Edit3.text+'%';

      If FmSetRp40.Edit1.Text = '' Then
         Ed1 := ''
      else Ed1 := FmSetRp40.Edit1.text;

      If FmSetRp40.Edit2.Text = '' Then
         Ed2 := 'ZZZZZZZZZZZZZZZZZZZZ'
      Else Ed2 := FmSetRp40.Edit2.text;

     Params[0].AsString :=  Ed3;
     Params[1].AsString :=  Ed1;
     Params[2].AsString :=  Ed2;
     OPEN
   End;

   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 950;
   QRLabel4.alignment := tacenter;
   QRLabel8.caption   := 'รหัสสาขา  '+FmSetRp40.Edit3.text+'  '+
                         'จากรหัสสินค้า  '+FmSetRp40.Edit1.text+'  '+
                         'ถึงรหัสสินค้า  '+FmSetRp40.Edit2.text;
   QRLabel8.left := 1;
   QRLabel8.width := 950;
   QRLabel8.alignment := tacenter;

   QRLabel5.left := 1;
   QRLabel5.width := 950;
   QRLabel5.alignment := tacenter;
end;

procedure TFmSetRp41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;



end.
