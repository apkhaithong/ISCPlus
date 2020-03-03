unit StickDT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ToolWin, StdCtrls, Mask, ExtCtrls, Buttons,
  RzSpnEdt, cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxButtonEdit, AdvGlowButton, AdvToolBar, cxGraphics, cxDropDownEdit, AdvPanel,
  cxLookAndFeels, cxLookAndFeelPainters, BusinessSkinForm, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TUStickDT = class(TForm)
    AdvPanel1: TAdvPanel;
    Label9: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    edCuscod: TcxButtonEdit;
    edGroup: TcxButtonEdit;
    edGrade: TcxTextEdit;
    edTumb: TcxTextEdit;
    edAump: TcxButtonEdit;
    edProv: TcxButtonEdit;
    cbMonth: TcxComboBox;
    edFday: TcxComboBox;
    cbEndDay: TcxComboBox;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxGradientObject1: TfrxGradientObject;
    frxFDComponents1: TfrxFDComponents;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure EditBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbMonthChange(Sender: TObject);
    procedure edAumpPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edProvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edCuscodPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edGroupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UStickDT: TUStickDT;

implementation

uses
  USoftFirm, uSrcDLG, uFindData, unfrPreview, Dmsec;
{$R *.dfm}

procedure TUStickDT.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_StickerBD.fr3', '2');
end;

procedure TUStickDT.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'PCUSCOD' then
    Value := edCuscod.Text + '%';
  if Uppercase(VarName) = 'PGROUP' then
    Value := edGroup.Text + '%';
  if Uppercase(VarName) = 'PGRADE' then
    Value := edGrade.Text + '%';
  if Uppercase(VarName) = 'PTUMB' then
    Value := edTumb.Text + '%';
  if Uppercase(VarName) = 'PAUMP' then
    Value := edAump.Text + '%';
  if Uppercase(VarName) = 'PPROV' then
    Value := edProv.Text + '%';
  if Uppercase(VarName) = 'PMONTH' then
    Value := cbmonth.Text;
  if Uppercase(VarName) = 'PFDAY' then
    Value := edFDay.Text;
  if Uppercase(VarName) = 'PLDAY' then
    Value := cbEndDay.Text;
end;

procedure TUStickDT.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_StickerBD.fr3', '1');
end;

procedure TUStickDT.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TUStickDT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  UStickDT := nil;
end;

procedure TUStickDT.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP03_2');
end;

procedure TUStickDT.cbMonthChange(Sender: TObject);
begin
  case cbMonth.ItemIndex of
    0:
      cbEndDay.text := '31';
    1:
      cbEndDay.text := '28';
    2:
      cbEndDay.text := '31';
    3:
      cbEndDay.text := '30';
    4:
      cbEndDay.text := '31';
    5:
      cbEndDay.text := '30';
    6:
      cbEndDay.text := '31';
    7:
      cbEndDay.text := '31';
    8:
      cbEndDay.text := '30';
    9:
      cbEndDay.text := '31';
    10:
      cbEndDay.text := '30';
    11:
      cbEndDay.text := '31';
  end;
end;

procedure TUStickDT.edAumpPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetAump = Mrok then
    edAump.Text := fFindData.Keyno;
end;

procedure TUStickDT.edProvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetProv = Mrok then
    edProv.Text := fFindData.Keyno;
end;

procedure TUStickDT.edCuscodPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(Tfsrcdlg, fSrcDlg);
  if fsrcdlg.ShowModalAR = Mrok then
    edCuscod.Text := fsrcdlg.Keyno;
end;

procedure TUStickDT.edGroupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFinddata, fFindData);
  if fFinddata.ShowModalArgroup = Mrok then
    edGroup.Text := fFindData.Keyno;
end;

procedure TUStickDT.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TUStickDT.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

end.

