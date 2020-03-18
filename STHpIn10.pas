unit Sthpin10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Grids, DBGrids, Buttons, RzDBGrid, Menus, cxLookAndFeelPainters,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxContainer, cxTextEdit, cxButtons, AdvGlowButton, ExtCtrls,
  cxLookAndFeels, cxNavigator, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxDateRanges;

type
  TFmSTHpIn10 = class(TForm)
    Query1: TFDQuery;
    DataSource1: TDataSource;
    Bevel1: TBevel;
    BitBtn3: TAdvGlowButton;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    Edit1: TcxTextEdit;
    ComboBox1: TcxComboBox;
    DBGrid1: TcxGrid;
    cxDBGridTran: TcxGridDBTableView;
    DBGrid1Level1: TcxGridLevel;
    cxDBGridTranADJNO: TcxGridDBColumn;
    cxDBGridTranADJLOC: TcxGridDBColumn;
    cxDBGridTranADJDATE: TcxGridDBColumn;
    cxDBGridTranOFFICCOD: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure cxDBGridTranDblClick(Sender: TObject);
    procedure cxDBGridTranKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBGridTranCustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1PropertiesChange(Sender: TObject);
  private
    procedure SQLHelp1;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTHpIn10: TFmSTHpIn10;

implementation

uses
  USoftFirm, DMSEC;

{$R *.DFM}

procedure TFmSTHpIn10.FormShow(Sender: TObject);
begin
  ComboBox1.ItemIndex := 0;
  edit1.SetFocus;
  Query1.close;
end;

procedure TFmSTHpIn10.SQLHelp1;
var
  ed1: string;
begin
  if ComboBox1.ItemIndex = 0 then
  begin
    with Query1 do
    begin
      close;
      sql.clear;
      sql.add('select * from TMPAJIV ' +
        'WHERE (Adjno LIKE :XEDIT1) and (Flag = :XFlag) ' +
        'ORDER BY Adjno ');
      if Edit1.Text <> '' then
        ed1 := EDIT1.TEXT + '%'
      else
        ed1 := '%';

      Params[0].AsString := ed1;
      Params[1].AsString := 'B';
      OPEN;
    end;
  end;

  if ComboBox1.ItemIndex = 1 then
  begin
    with Query1 do
    begin
      close;
      sql.clear;
      sql.add('select * from TMPAJIV ' +
        'WHERE (Adjno LIKE :XEDIT1) and (Flag = :XFlag) ' +
        'ORDER BY Adjloc ');
      if Edit1.Text <> '' then
        ed1 := EDIT1.TEXT + '%'
      else
        ed1 := '%';

      Params[0].AsString := ed1;
      Params[1].AsString := 'B';
      OPEN;
    end;
  end;
end;

procedure TFmSTHpIn10.BitBtn3Click(Sender: TObject);
begin
  SQLHelp1;
end;

procedure TFmSTHpIn10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFmSTHpIn10.ComboBox1Change(Sender: TObject);
begin
  SQLHelp1;
end;

procedure TFmSTHpIn10.cxDBGridTranDblClick(Sender: TObject);
begin
  {if ComboBox1.ItemIndex = 0 then
  Begin
    edit1.text := Query1.FieldByname('adjno').Asstring;
    ModalResult := mrOk;
  End Else  if ComboBox1.ItemIndex = 1 then
  Begin
    edit1.text := Query1.FieldByname('Adjdate').Asstring;
    ModalResult := mrOk;
  End;}
  ModalResult := mrOK;
end;

procedure TFmSTHpIn10.cxDBGridTranKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    BitBtn1.Click;
  end;
end;

procedure TFmSTHpIn10.cxDBGridTranCustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AStyle: TcxStyle;
  IndNo: string;
begin
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;
  ATextRect := AViewInfo.ContentBounds;
  AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
  InflateRect(ATextRect, -2, -1);
  if AIndicatorViewInfo.GridRecord.Selected then
    AStyle := SFMain.styleSelected
  else
    AStyle := SFMain.styleNormal;

  if AIndicatorViewInfo.GridRecord.Index + 1 = 0 then
    IndNo := ''
  else
    IndNo := IntToStr(AIndicatorViewInfo.GridRecord.Index + 1);

  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
    False, False, IndNo,
    AStyle.Font, AStyle.TextColor, AStyle.Color);
  ADone := True;
end;

procedure TFmSTHpIn10.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    BitBtn3Click(Sender);
    DBGrid1.SetFocus;
  end;
end;

procedure TFmSTHpIn10.Edit1PropertiesChange(Sender: TObject);
begin
  if SFMain.Xsrch = 'Y' then
    BitBtn3Click(Sender);
end;

end.

