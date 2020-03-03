unit ArRp51;

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
  TQRpAr_51 = class(TForm)
    QArpaytr: TFDQuery;
    QCondpay: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    TNet,TPay,TDamt,TKDamt        : Double;
  public
    { Public declarations }
  end;

var
  QRpAr_51: TQRpAr_51;
  Sum1,Sum2,Sum3,Sum4 : Double;
  XSC,XSC1 : String;

implementation

uses ArRp50;

{$R *.DFM}

procedure TQRpAr_51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TQRpAr_51.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Sum1 := 0;
  Sum2 := 0;
  Sum3 := 0;
  Sum4 := 0;
end;

end.
