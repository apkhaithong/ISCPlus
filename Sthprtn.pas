unit Sthprtn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Buttons, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DB, RzDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSthelprtn = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QHelp: TFDQuery;
    DataSource1: TDataSource;
    DBGrid_PkT: TRzDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid_PkTDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sthelprtn: TSthelprtn;

implementation

{$R *.DFM}

procedure TSthelprtn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSthelprtn.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TSthelprtn.DBGrid_PkTDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

End.
