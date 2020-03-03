unit SvRpA40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, AdvGroupBox, AdvOfficeButtons, cxDropDownEdit,
  cxCalendar, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm,
  frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSvRpA40 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    edLocat: TcxButtonEdit;
    edRepType: TcxButtonEdit;
    edType: TcxButtonEdit;
    ckTax: TcxCheckBox;
    edDateFm: TcxDateEdit;
    edDateTo: TcxDateEdit;
    raSelRep: TAdvOfficeRadioGroup;
    raSelClaim: TAdvOfficeRadioGroup;
    raSelDt: TAdvOfficeRadioGroup;
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
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReportTableObject1: TfrxReportTableObject;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxReport1: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edRepTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpA40: TFmSvRpA40;

implementation

uses
  uSrcDlg1, uSoftfirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmSvRpA40.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_6');
end;

procedure TFmSvRpA40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FmSvRpA40 := nil;
end;

procedure TFmSvRpA40.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_MarkClaim.fr3', '1');
end;

procedure TFmSvRpA40.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_MarkClaim.fr3', '2');
end;

procedure TFmSvRpA40.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  VSelRep, VSelDt, VSelCl, VCkTax: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := edLocat.Text + '%';
  if UpperCase(VarName) = 'PTYPE' then
    Value := edType.Text + '%';
  if UpperCase(VarName) = 'PREPTYPE' then
    Value := edRepType.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := edDateFm.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := edDateTo.Date;

  case raSelRep.ItemIndex of
    0:
      VSelRep := '0';
    1:
      VSelRep := '1';
    2:
      VSelRep := '2';
  end;
  if UpperCase(VarName) = 'PSELREP' then
    Value := VSelRep;

  case raSelDt.ItemIndex of
    0:
      VSelDt := '0';
    1:
      VSelDt := '1';
  end;
  if UpperCase(VarName) = 'PSELDT' then
    Value := VSelDt;

  case raSelClaim.ItemIndex of
    0:
      VSelCl := '0';
    1:
      VSelCl := '1';
    2:
      VSelCl := '2';
    3:
      VSelCl := '3';
    4:
      VSelCl := '4';
  end;
  if UpperCase(VarName) = 'PSELCL' then
    Value := VSelCl;

  if CkTax.Checked = True then
    VCkTax := '0'
  else
    VCkTax := '1';
  if UpperCase(VarName) = 'PCKTAX' then
    Value := VCkTax;
end;

procedure TFmSvRpA40.edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
    edLocat.TEXT := fSrcDlg1.Keyno;
end;

procedure TFmSvRpA40.edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalType = Mrok then
    edType.TEXT := fSrcDlg1.Keyno;
end;

procedure TFmSvRpA40.edRepTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvtype = Mrok then
    edRepType.Text := fSrcDlg1.Keyno;
end;

procedure TFmSvRpA40.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSvRpA40.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSvRpA40.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  edLocat.Text := SFMain.Xlocat;
  edLocat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  EditBtn.Visible := SFMain.XDesign = 'Y';
  edDateFm.Date := Date;
  edDateTo.Date := Date;
end;

end.

