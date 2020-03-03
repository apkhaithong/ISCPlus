unit FrSumCostSale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ToolWin, ImgList, RzEdit, RzSpnEdt, AdvGlowButton, AdvToolBar,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxButtonEdit, cxControls,
  cxContainer, cxEdit, cxCheckBox, AdvGroupBox, AdvOfficeButtons, AdvPanel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils,
  BusinessSkinForm, frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl,
  frxFDComponents, frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFSumCostSale = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    SortRadio: TAdvOfficeRadioGroup;
    raStatus: TAdvOfficeRadioGroup;
    ChkRecv: TcxCheckBox;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    EDIT_LOCAT: TcxButtonEdit;
    edGroup: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
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
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edGroupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
   { Private declarations }
  public
    { Public declarations }
  end;

var
  FSumCostSale: TFSumCostSale;

implementation

uses
  Dmsvset, uSrcDlg, usrcdlg1, uSoftfirm, Dm1, DMSEC;

{$R *.DFM}

procedure TFSumCostSale.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSumCostSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FSumcostSale := nil;
end;

procedure TFSumCostSale.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFSumCostSale.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_K');
end;

procedure TFSumCostSale.ToolButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TFSumCostSale.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XStatus, XSort, XOpt: string;
begin
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PGROUP' then
    Value := EdGroup.Text + '%';

  case RaStatus.ItemIndex of
    0:
      XStatus := '0';
    1:
      XStatus := '1';
    2:
      XStatus := '2';
  end;
  if UpperCase(VarName) = 'PSTATUS' then
    Value := XStatus;

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  if ChkRecv.Checked then
    XOpt := 'Y'
  else
    XOpt := 'N';
  if UpperCase(VarName) = 'POPT' then
    Value := XOpt;
end;

procedure TFSumCostSale.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Rp_SumCostSale.fr3', '2'); {1 = Preview Report}
end;

procedure TFSumCostSale.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.Keyno;
end;

procedure TFSumCostSale.edGroupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    edGroup.Text := fSrcDlg.Keyno;
end;

procedure TFSumCostSale.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Rp_SumCostSale.fr3', '1'); {1 = Preview Report}
end;

procedure TFSumCostSale.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFSumCostSale.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
  raStatus.ItemIndex := 0;
  SortRadio.ItemIndex := 0;
end;

end.

