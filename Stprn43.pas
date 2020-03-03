unit Stprn43;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, quickrpt, Qrctrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmStprn43 = class(TForm)
    QRcinv: TFDQuery;
    Condpay: TFDQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn43: TFmStprn43;
  SumQty,Sum1,Sum : double;
  WordAmt : String;

implementation
uses Stprn40,functn01;
{$R *.DFM}

procedure TFmStprn43.FormCreate(Sender: TObject);
begin
   Condpay.Open;
   QRLabel27.Caption  := Condpay.FieldByName('Comp_nm').asstring;
   QRLabel27.left     := 1;
   QRLabel27.width    := 700;
   QRLabel27.alignment:= tacenter;

  QRLabel16.left     := 1;
  QRLabel16.width    := 700;
  QRLabel16.alignment:= tacenter;
  //
  //
  Sum := 0;
  With QRcinv Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT * FROM RC_INVOI WHERE Recvno =:XRecvno');
    Params[0].AsString := FmStprn40.Label6.caption;
    Open;
  End;
  MainChg(WordAmt,QRcinv.FieldByname('TOTCOST').Asfloat);
  Qrlabel24.Caption := WordAmt;

end;
























end.
