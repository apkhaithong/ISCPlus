unit Dlginvms;

interface
            
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, StdCtrls, RzDBGrid, RzButton, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFsvmast = class(TForm)
    Hquery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TRzDBGrid;
    Panel1: TPanel;
    OKBtn: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Enter(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsvmast: TFsvmast;

implementation
uses Dmic01;
{$R *.DFM}


procedure TFsvmast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;


procedure TFsvmast.DBGrid1DblClick(Sender: TObject);
begin
   ModalResult := mrOK;
end;

procedure TFsvmast.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure TFsvmast.DBGrid1Enter(Sender: TObject);
begin
   OKBtn.Click;
end;

procedure TFsvmast.RzBitBtn2Click(Sender: TObject);
begin
   Hquery1.Cancel;
   FSvmast.Close;
end;

end.
