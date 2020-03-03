unit SvRpA80;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, AdvGlowButton, AdvToolBar, AdvGroupBox,
  AdvOfficeButtons, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSvRpA80 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label5: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    edOfficer: TcxButtonEdit;
    SortRadio: TAdvOfficeRadioGroup;
    raSelRep: TAdvOfficeRadioGroup;
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
    procedure PrevBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edOfficerPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpA80: TFmSvRpA80;

implementation

uses
  Dmsvset, usrcdlg, uSoftfirm, UFindData, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmSvRpA80.PrevBtnClick(Sender: TObject);
begin
  if raSelRep.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SvEfficiencyB.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SvEfficiencyC.fr3', '1');
end;

procedure TFmSvRpA80.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_3');
end;

procedure TFmSvRpA80.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FmSvRpA80 := nil;
end;

procedure TFmSvRpA80.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSvRpA80.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_dateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PSVCODE' then
    Value := edOfficer.Text + '%';

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
end;

procedure TFmSvRpA80.EditBtnClick(Sender: TObject);
begin
  if raSelRep.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SvEfficiencyB.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SvEfficiencyC.fr3', '2');
end;

procedure TFmSvRpA80.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSvRpA80.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    EDIT_Locat.TEXT := fSrcDlg.KeyNo;
end;

procedure TFmSvRpA80.edOfficerPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
//  fSrcDlg.XDepart := '3%';
  if fFindData.ShowModalEngineer = Mrok then
    edOfficer.Text := fFindData.KeyNo;
end;

procedure TFmSvRpA80.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

end.

