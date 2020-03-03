unit Stprn21;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, quickrpt, Qrctrls;

type
  TFmStprn21 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
  FmStprn21: TFmStprn21;
  SumQty,Sum1,Sum : double;

implementation
uses Dmic01,Stin08,Stprn20;
{$R *.DFM}

procedure TFmStprn21.FormCreate(Sender: TObject);
begin
   Sum := 0;
   QRLabel9.caption := ' รหัสสาขา  '+FmSTIn08.DBEdit1.text;
   QRLabel8.caption := ' รหัสพนักงาน '+FmSTIn08.DBEdit11.text+'  '+FmSTIn08.Edit2.text;
end;

procedure TFmStprn21.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  With FmDmic01.Query1 Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1,LOCAT,SHELF FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
    PARAMS[0].ASSTRING := FmDmic01.AdjTranPartno.AsString;
    PARAMS[1].ASSTRING := FmDmic01.AdjTranAdjloc.AsString;
    Open;
    QRLabel15.Caption := FmDmic01.Query1.Fieldbyname('DESC1').Asstring;
    QRLabel16.Caption := FmDmic01.Query1.Fieldbyname('Shelf').Asstring;
  End;
end;

procedure TFmStprn21.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If FmDmic01.Adjinv.Fieldbyname('Memo1').Asstring<>'' Then
  Begin
    QrMemo1.Lines.Clear;
    QrMemo1.Enabled := True;
    QrMemo1.Lines.Add(FmDmic01.Adjinv.Fieldbyname('Memo1').Value);
  end
  Else
    QrMemo1.Enabled := False;
end;




procedure TFmStprn21.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel20.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

end.
