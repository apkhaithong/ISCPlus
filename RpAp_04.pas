unit RpAp_04;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, RzEdit, RzSpnEdt, cxButtonEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  AdvGlowButton, AdvToolBar, AdvGroupBox, AdvOfficeButtons, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm,
  AdvPanel, frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl,
  frxFDComponents, frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmRpAp_04 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label10: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    FDate: TcxDateEdit;
    ToDate: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    Radiogroup1: TAdvOfficeRadioGroup;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRpAp_04: TFmRpAp_04;

implementation

uses
  DmSet1, uSrcDlg, uSoftfirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmRpAp_04.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmRpAp_04.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_N');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  FDate.Date := Date;
  ToDate.Date := Date;
end;

procedure TFmRpAp_04.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Rp_Ap04.fr3', '1');
end;

procedure TFmRpAp_04.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmRpAp_04 := nil;
end;

procedure TFmRpAp_04.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmRpAp_04.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TFmRpAp_04.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XOpt, Ordtxt: string;
begin
  if RadioGroup1.ItemIndex = 0 then
    Ordtxt := '1';
  if RadioGroup1.ItemIndex = 1 then
    Ordtxt := '2';
  if RadioGroup1.ItemIndex = 2 then
    Ordtxt := '3';

  if UpperCase(VarName) = 'PORDER' then
    Value := Ordtxt;

  if Uppercase(VarName) = 'PFDATE' then
    Value := Fdate.Date;
  if Uppercase(VarName) = 'PTDATE' then
    Value := TOdate.Date;
  if Uppercase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if Radiogroup1.ItemIndex = 0 then
    XOpt := '0'
  else if Radiogroup1.ItemIndex = 0 then
    XOpt := '1'
  else if Radiogroup1.ItemIndex = 1 then
    XOpt := '2'
  else
    XOpt := '3';
  if Uppercase(VarName) = 'PCHKSTAT' then
    Value := XOpt;
end;

procedure TFmRpAp_04.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Rp_Ap04.fr3', '2');
end;

procedure TFmRpAp_04.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

end.

