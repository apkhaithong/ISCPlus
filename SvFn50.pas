unit SvFn50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ToolWin, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGroupBox, AdvOfficeButtons,
  AdvGlowButton, AdvToolBar, cxCheckBox, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TSvFn_50 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SalRadio: TAdvOfficeRadioGroup;
    RadioGroup1: TAdvOfficeRadioGroup;
    Edit_Locat: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Edit1: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    cxButtonEdit3: TcxButtonEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    Label6: TLabel;
    Edit3: TcxButtonEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    OptnText, SalText: string;
  end;

var
  SvFn_50: TSvFn_50;

implementation

uses
  USoftFirm, uSrcDlg, unfrPreview, usrcdlg1, Dmsec, Srchset1, uFindData;

{$R *.DFM}

procedure TSvFn_50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  SvFn_50 := nil;
end;

procedure TSvFn_50.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_1_1');
end;

procedure TSvFn_50.EditBtnClick(Sender: TObject);
begin
  if AdvOfficeRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_SummaryBill.fr3', '2')
  else if AdvOfficeRadioGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_SummaryBillSum.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_SummaryBillGrpUser.fr3', '2');
end;

procedure TSvFn_50.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSvFn_50.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  Saltxt, Ordtxt: string;
begin
  if SalRadio.ItemIndex = 0 then
    Saltxt := 'IC%';
  if SalRadio.ItemIndex = 1 then
    Saltxt := 'SVRT%';
  if SalRadio.ItemIndex = 2 then
    Saltxt := '%';
  if SalRadio.ItemIndex = 3 then
    Saltxt := '3';

  if RadioGroup1.ItemIndex = 0 then
    Ordtxt := '1';
  if RadioGroup1.ItemIndex = 1 then
    Ordtxt := '3';

  if UpperCase(VarName) = 'PORDER' then
    Value := Ordtxt;

  if UPPERCASE(VarName) = 'PSALTXT' then
    Value := Saltxt;
  if UpperCase(VarName) = 'FDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'TDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PPAY' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PGCODE' then
    Value := cxButtonEdit3.Text + '%';
  if UpperCase(VarName) = 'PLOCAT1' then
  begin
    if Edit_Locat.Text = '' then
      Value := ''
    else
      Value := Edit_Locat.Text;
  end;
  if UpperCase(VarName) = 'PREFDOCNO' then
    Value := cxTextEdit1.Text + '%';
  if Uppercase(VarName) = 'PUSERID' then
    Value := Edit3.Text + '%';
end;

procedure TSvFn_50.FormShow(Sender: TObject);
begin
  Editbtn.Visible := sfmain.XDesign = 'Y';
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  RadioGroup1.ItemIndex := 0;
  SalRadio.ItemIndex := 2;
  Edit_DateFrom.Date := Date;
  Edit_DateTo.Date := Date;
end;

procedure TSvFn_50.PrevBtnClick(Sender: TObject);
begin
  if AdvOfficeRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_SummaryBill.fr3', '1')
  else if AdvOfficeRadioGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_SummaryBillSum.fr3', '1')
  else if AdvOfficeRadioGroup1.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_SummaryBillJob.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_SummaryBillGrpUser.fr3', '1');
end;

procedure TSvFn_50.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TSvFn_50.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.kEYNO;
end;

procedure TSvFn_50.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPAYTYP = Mrok then
    Edit1.Text := fSrcDlg.kEYNO;
end;

procedure TSvFn_50.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDLG1, fSrcDLG1);
  if fSrcDLG1.ShowModalGrpMst = Mrok then
    cxButtonEdit3.Text := fSrcDLG1.Keyno;
end;

procedure TSvFn_50.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindData, fFindData);
  if fFindData.ShowModalPasswd = MrOk then
    Edit3.Text := fFindData.Keyno;
end;

end.

