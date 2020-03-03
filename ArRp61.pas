unit ArRp61;

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
  TQRpAr_61 = class(TForm)
    QArinv3: TFDQuery;
    QCondpay: TFDQuery;
    Query1: TFDQuery;
    QArinv3LOCAT: TStringField;
    QArinv3CUSCODE: TStringField;
    QArinv3NAME1: TStringField;
    QArinv3NAME2: TStringField;
    QArinv3ONDUE: TFloatField;
    QArinv3ON30: TFloatField;
    QArinv3ON60: TFloatField;
    QArinv3ON90: TFloatField;
    QArinv3OVER90: TFloatField;
    QArinv3OVER365: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TBDue,TBpay1,TBpay2,TBpay3,TBpay4  : double;
  public
    { Public declarations }
  end;

var
  QRpAr_61: TQRpAr_61;

implementation

uses ArRp60, DmAr, Dmsec;

{$R *.DFM}


procedure TQRpAr_61.FormCreate(Sender: TObject);
Var ed1 : String;
begin

end;

procedure TQRpAr_61.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
