unit SvRp40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, Csv_txt, ToolWin, ImgList, RzEdit, RzSpnEdt, AdvGroupBox,
  AdvOfficeButtons, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils,
  BusinessSkinForm, frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TSvRp_40 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EDIT_LOCAT: TcxButtonEdit;
    Edit_Type: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    SortRadio: TAdvOfficeRadioGroup;
    RadioGroup3: TAdvOfficeRadioGroup;
    raSelTypeRep: TAdvOfficeRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit_TypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
   { Private declarations }
  public
    { Public declarations }
    SortText, Company: string;
    FromDate, ToDate: TdateTime;
  end;

var
  SvRp_40: TSvRp_40;

implementation

uses
  Dmsvset, usrcdlg1, uSoftfirm, unfrPreview, uFindData, Dmsec;

{$R *.DFM}

procedure TSvRp_40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  SvRp_40 := nil;
end;

procedure TSvRp_40.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TSvRp_40.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_5');
end;

procedure TSvRp_40.EditBtnClick(Sender: TObject);
begin
  if raSelTypeRep.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepSumJobDaily.fr3', '2')
  else if raSelTypeRep.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepProfitCostSV.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FR_REPSUMPROFITCOSTSV.FR3', '2');
end;

procedure TSvRp_40.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XSelDt: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PSVTYPE' then
    Value := Edit_Type.Text + '%';
  if UpperCase(VarName) = 'PSVCODE' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PCUSCOD' then
    Value := Edit3.Text + '%';

  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;

  case RadioGroup3.ItemIndex of
    0:
      XSelDt := '0';
    1:
      XSelDt := '1';
    2:
      XSelDt := '2';
  end;
  if UpperCase(VarName) = 'PSELDT' then
    Value := XSelDt;
end;

procedure TSvRp_40.PrevBtnClick(Sender: TObject);
begin
  if raSelTypeRep.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepSumJobDaily.fr3', '1')
  else if raSelTypeRep.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepProfitCostSV.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FR_REPSUMPROFITCOSTSV.FR3', '1');
end;

procedure TSvRp_40.CloseBtnClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TSvRp_40.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
    EDIT_LOCAT.TEXT := fSrcDlg1.KeyNo;
end;

procedure TSvRp_40.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalEngineer = Mrok then
    Edit1.Text := fFindData.KeyNo;
end;

procedure TSvRp_40.Edit_TypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvtype = Mrok then
    Edit_Type.Text := fSrcDlg1.KeyNo;
end;

procedure TSvRp_40.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSetgroup = Mrok then
    Edit2.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_40.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalAR = Mrok then
    Edit3.Text := fSrcDlg1.KeyNo;
end;

procedure TSvRp_40.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  SortRadio.ItemIndex := 0;
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

end.

