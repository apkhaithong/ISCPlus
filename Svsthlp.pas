unit SvStHlp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, Menus, cxLookAndFeelPainters,
  cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxGraphics,
  cxLookAndFeels, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSvSt_Hlp = class(TForm)
    QHlp: TFDQuery;
    SoHlp: TDataSource;
    Grid_tab: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    OKBtn: TcxButton;
    BitBtn3: TcxButton;
    Edit1: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Grid_tabDblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Grid_tabKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvSt_Hlp: TSvSt_Hlp;

implementation
uses SvSt91;

{$R *.DFM}

procedure TSvSt_Hlp.FormCreate(Sender: TObject);
var  N :word ;
begin
  for N :=0 TO ComponentCount - 1 DO
  BEGIN
    IF ComponentS[N] IS TDBGRID THEN
       TDbgrid(Components[N]).visible := false;
  END;
end;

procedure TSvSt_Hlp.BitBtn1Click(Sender: TObject);
begin
   With Qhlp Do
   begin
     if Grid_tab.Visible then
     Begin
        if FmSvSt91.XAllModel = 'Y' then
        Begin
           Close;
           Sql.clear;
           Sql.Add('SELECT * FROM TBLABOR  WHERE MDLCOD LIKE :0 ORDER BY SVCODE,MDLCOD');
           Params[0].Asstring := Uppercase(edit1.Text)+'%' ;
        End Else
        Begin
           Close;
           Sql.clear;
           Sql.Add('SELECT * FROM TBLABOR  WHERE MDLCOD =:0 ORDER BY SVCODE,MDLCOD');
           Params[0].Asstring := Uppercase(edit1.Text);
        End;
        Open;
     End;
   end;
end;

procedure TSvSt_Hlp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree ;
end;

procedure TSvSt_Hlp.Edit1Change(Sender: TObject);
begin
  BitBtn1Click(Sender);
end;

procedure TSvSt_Hlp.Grid_tabDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSvSt_Hlp.Edit1KeyPress(Sender: TObject; var Key: Char);
var  N :word ;
begin
   if Key = #13 then
   Begin
      BitBtn1Click(Sender);
      for N :=0 TO ComponentCount - 1 DO
      Begin
        IF ComponentS[N] IS TDbgrid THEN
        Begin
           if TDbgrid(Components[N]).visible = True then
              TDbgrid(Components[N]).SetFocus;
        End;
      end;
   End;
end;

procedure TSvSt_Hlp.Grid_tabKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;

end;

end.
