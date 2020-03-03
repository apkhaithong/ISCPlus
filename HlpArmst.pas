unit Hlparmst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, RzDBGrid,
  RzSpnEdt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  THelpArmst = class(TForm)
    QHlp: TFDQuery;
    SoHlp: TDataSource;
    Panel3: TPanel;
    DBGrid1: TRzDBGrid;
    Edit1: TEdit;
    RadioGp1: TComboBox;
    BitBtn3: TBitBtn;
    OkBtn: TBitBtn;
    BitBtn1: TRzRapidFireButton;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SoHlpStateChange(Sender: TObject);
    procedure DBGrid_SvKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_SvDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Wait : Boolean;
  end;

var
  HelpArmst: THelpArmst;

implementation

uses DmSv;

{$R *.DFM}

procedure THelpArmst.BitBtn1Click(Sender: TObject);
begin
  WITH Qhlp DO
  begin
   Close;
   Sql.clear;
   If RadioGp1.ItemIndex = 0 Then
      Sql.Add('SELECT * FROM ARMAST WHERE CUSCOD LIKE :EDIT1 ORDER  By CUSCOD');
   If RadioGp1.ItemIndex = 1 Then
      Sql.Add('SELECT * FROM ARMAST WHERE NAME1 LIKE :EDIT1 ORDER  By NAME1');
   If RadioGp1.ItemIndex = 2 Then
      Sql.Add('SELECT * FROM ARMAST WHERE NAME2 LIKE :EDIT1 ORDER  By NAME2');
   If RadioGp1.ItemIndex = 3 Then
      Sql.Add('SELECT * FROM ARMAST WHERE AUMP LIKE :EDIT1 ORDER  By AUMP');
   If RadioGp1.ItemIndex = 4 Then
      Sql.Add('SELECT * FROM ARMAST WHERE PROV LIKE :EDIT1 ORDER  By PROV');
   Params[0].Asstring := EDIT1.TEXT+'%' ;
   open;
  end;
end;

procedure THelpArmst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure THelpArmst.FormShow(Sender: TObject);
begin
  RadioGp1.itemindex := 0;
  SoHlpStateChange(Sender);
end;

procedure THelpArmst.SoHlpStateChange(Sender: TObject);
begin
  OkBtn.Enabled := QHLp.Active;
end;

procedure THelpArmst.DBGrid_SvKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure THelpArmst.DBGrid_SvDblClick(Sender: TObject);
begin
        ModalResult := MrOK;
end;

end.
