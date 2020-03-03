unit Uhelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RzDBGrid, RzButton, DB, StdCtrls,
  RzLabel, Mask, RzEdit, RzCmboBx,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfHelp = class(TForm)
    DBGrid1: TRzDBGrid;
    OKBtn: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzComboBox1: TRzComboBox;
    RzEdit1: TRzEdit;
    RzLabel1: TRzLabel;
    qrHelp: TFDQuery;
    DataSource1: TDataSource;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fHelp: TfHelp;

implementation

{$R *.dfm}

procedure TfHelp.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure TfHelp.DBGrid1DblClick(Sender: TObject);
begin
        ModalResult := mrOK;
end;

end.
