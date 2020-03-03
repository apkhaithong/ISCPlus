unit DmTX;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmTXDm = class(TDataModule)
    Condpay: TFDQuery;
    Query1: TFDQuery;
    SoQuery1: TDataSource;
    SoQuery2: TDataSource;
    Query5: TFDQuery;
    Query2: TFDQuery;
    Query2RECVNO: TStringField;
    Query2RECVLOC: TStringField;
    Query2VATRT: TFloatField;
    Query2NETAMT: TFloatField;
    Query2VATAMT: TFloatField;
    Query2TOTCOST: TFloatField;
    Query2TAXDATE: TDateField;
    Query2TAXNO: TStringField;
    Query2TAXREFNO: TStringField;
    Query2APCODE: TStringField;
    Query6: TFDQuery;
    SoQuery6: TDataSource;
    Query7: TFDQuery;
    SoQuery7: TDataSource;
    Menutrn: TFDQuery;
    procedure FmTXDmRpCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XSchema:String;
  end;

var
  FmTXDm: TFmTXDm;

implementation

{$R *.DFM}

procedure TFmTXDm.FmTXDmRpCreate(Sender: TObject);
begin
  Condpay.Open;
end;

end.
