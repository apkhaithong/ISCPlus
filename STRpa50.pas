unit StrpA50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, AdvGlowButton, AdvToolBar, AdvGroupBox,
  AdvOfficeButtons, cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, AdvPanel,
  frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmRpa50 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label9: TLabel;
    SortRadio: TAdvOfficeRadioGroup;
    Edit_dateFrom: TcxDateEdit;
    Edit_dateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    RecLocat: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure RecLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRpa50: TFmRpa50;

implementation

uses
  DmSet1, uSrcDlg, uSoftfirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmRpa50.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmRpa50.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_D');
end;

procedure TFmRpa50.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepTransfer.fr3', '1');
end;

procedure TFmRpa50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmRpA50 := nil;
end;

procedure TFmRpa50.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmRpa50.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort: string;
begin

  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PRCLOCAT' then
    Value := RecLocat.Text + '%';
  if UpperCase(VarName) = 'PGROUP' then
    Value := Edit7.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;
end;

procedure TFmRpa50.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepTransfer.fr3', '2');
end;

procedure TFmRpa50.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFmRpa50.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit7.Text := fSrcDlg.Keyno;
end;

procedure TFmRpa50.RecLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    RecLocat.text := fSrcDlg.KeyNo;
end;

procedure TFmRpa50.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  SortRadio.ItemIndex := 0;
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

end.

