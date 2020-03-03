unit DlgTabsv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFDlgTabsv = class(TForm)
    Hquery1: TFDQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    OKBtn: TButton;
    CancelBtn: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDlgTabsv: TFDlgTabsv;

implementation
uses Dmsvset;
{$R *.DFM}


procedure TFDlgTabsv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;


end.
