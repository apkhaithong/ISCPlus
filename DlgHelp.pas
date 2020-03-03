unit Dlghelp;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, Db, Grids, DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFDlgHelp = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Query1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Jobno :String;
  end;

var
  FDlgHelp: TFDlgHelp;

implementation
uses Dmsvset;
{$R *.DFM}

procedure TFDlgHelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFDlgHelp.FormShow(Sender: TObject);
begin
  Query1.Close;
  Query1.Params[0].Asstring := Jobno;
  Query1.Open;
end;

end.
