unit Hlpjob;
                                         
interface                                            

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, RzSpnEdt, RzDBGrid, Menus,
  cxLookAndFeelPainters, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxImageComboBox, ComCtrls, cxGridLevel,
  cxGridCardView, cxGridDBCardView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, AdvShapeButton, cxContainer, cxTextEdit, cxButtons,
  AdvGlowButton, cxGridCustomPopupMenu, cxGridPopupMenu, cxLookAndFeels,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator,
  dxDateRanges, dxBarBuiltInMenu, cxGridCustomLayoutView;

type
  THelpJob = class(TForm)
    QHlp: TFDQuery;
    SoHlp: TDataSource;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    BitBtn1: TAdvGlowButton;
    OkBtn: TcxButton;
    BitBtn3: TcxButton;
    Edit1: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    RadioGp1: TcxComboBox;
    RadioGp2: TcxComboBox;
    DBGrid_Sv: TcxGrid;
    DBGrid_SvDBTableView1: TcxGridDBTableView;
    DBGrid_SvDBTableView1STATUS: TcxGridDBColumn;
    DBGrid_SvDBTableView1JOBNO: TcxGridDBColumn;
    DBGrid_SvDBTableView1LOCAT: TcxGridDBColumn;
    DBGrid_SvDBTableView1RECVDATE: TcxGridDBColumn;
    DBGrid_SvDBTableView1REGNO: TcxGridDBColumn;
    DBGrid_SvDBTableView1REFDOCNO: TcxGridDBColumn;
    DBGrid_SvDBTableView1STRNO: TcxGridDBColumn;
    DBGrid_SvDBTableView1NAME1: TcxGridDBColumn;
    DBGrid_SvDBTableView1NAME2: TcxGridDBColumn;
    DBGrid_SvDBCardView1: TcxGridDBCardView;
    cxGridLevel1: TcxGridLevel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SoHlpStateChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_SvDBTableView1DblClick(Sender: TObject);
    procedure DBGrid_SvDBTableView1KeyPress(Sender: TObject;
      var Key: Char);
    procedure DBGrid_SvDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure DBGrid_SvDBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Wait : Boolean;
    State : Word;
  end;

var
  HelpJob: THelpJob;

implementation

uses DmSv, USoftFirm;

{$R *.DFM}

procedure THelpJob.BitBtn1Click(Sender: TObject);
begin
 WITH Qhlp DO
  begin
   Close;
   Sql.clear;
   If RadioGp1.ItemIndex = 0 Then
      Sql.Add('SELECT JOBNO,LOCAT,RECVDATE,STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_JOBORD WHERE JOBNO LIKE :EDIT1 AND STATUS LIKE :EDIT2 ORDER BY JOBNO');
   If RadioGp1.ItemIndex = 1 Then
      Sql.Add('SELECT JOBNO,LOCAT,RECVDATE,STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_JOBORD WHERE STRNO LIKE :EDIT1 AND STATUS LIKE :EDIT2 ');
   If RadioGp1.ItemIndex = 2 Then
      Sql.Add('SELECT JOBNO,LOCAT,RECVDATE,STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_JOBORD WHERE ENGNO LIKE :EDIT1 AND STATUS LIKE :EDIT2 ');
   If RadioGp1.ItemIndex = 3 Then
      Sql.Add('SELECT JOBNO,LOCAT,RECVDATE,STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_JOBORD WHERE REGNO LIKE :EDIT1 AND STATUS LIKE :EDIT2 ');
   If RadioGp1.ItemIndex = 4 Then
      Sql.Add('SELECT JOBNO,LOCAT,RECVDATE,STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_JOBORD WHERE NAME1 LIKE :EDIT1 AND STATUS LIKE :EDIT2 ');
   If RadioGp1.ItemIndex = 5 Then
      Sql.Add('SELECT JOBNO,LOCAT,RECVDATE,STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_JOBORD WHERE NAME2 LIKE :EDIT1 AND STATUS LIKE :EDIT2 ');
   Params[0].Asstring := UpperCase('%'+EDIT1.TEXT+'%') ;
   If RadioGp2.ItemIndex = 0 Then
   Params[1].Asstring := 'W';
   If RadioGp2.ItemIndex = 1 Then
   Params[1].Asstring := 'F';
   If RadioGp2.ItemIndex = 2 Then
   Params[1].Asstring := 'R';
   If RadioGp2.ItemIndex = 3 Then
   Params[1].Asstring := '%';
   If Not Qhlp.Prepared Then Qhlp.Prepare;
   Open;
   SFMain.Do_Show_DisplayFormat_Floating(QHlp);
  end;
end;

procedure THelpJob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure THelpJob.FormShow(Sender: TObject);
begin
  RadioGp1.itemindex := 0;
  RadioGp2.itemindex := State;
  SoHlpStateChange(Sender);
  Edit1.SetFocus;
end;

procedure THelpJob.SoHlpStateChange(Sender: TObject);
begin
  OkBtn.Enabled := QHLp.Active;
end;

procedure THelpJob.Edit1Change(Sender: TObject);
begin
  If sfMain.Xsrch='Y' Then
  BitBtn1Click(Sender);
end;

procedure THelpJob.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
      BitBtn1Click(Sender);
      DbGrid_Sv.SetFocus;
   End;
end;

procedure THelpJob.DBGrid_SvDBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure THelpJob.DBGrid_SvDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
      OKBtn.Click;
   End;
end;

procedure THelpJob.DBGrid_SvDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[0] = 'C' then
  begin
    ACanvas.Font.Color := clRed;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure THelpJob.DBGrid_SvDBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AStyle: TcxStyle;
  IndNo : String;
begin
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;
  ATextRect := AViewInfo.ContentBounds;
  AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
  InflateRect(ATextRect, -2, -1);
  if AIndicatorViewInfo.GridRecord.Selected then
    AStyle := sfmain.styleSelected
  else
    AStyle := sfmain.styleNormal;

  if AIndicatorViewInfo.GridRecord.Index + 1 = 0 then
  IndNo := '' else
  IndNo := IntToStr(AIndicatorViewInfo.GridRecord.Index + 1);

  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
    False, False, IndNo,
    AStyle.Font, AStyle.TextColor, AStyle.Color);
  ADone := True;
end;

end.
