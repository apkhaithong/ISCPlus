unit uSumPrifitPart;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, RzEdit, RzSpnEdt, AdvGlowButton, AdvToolBar,
  cxTextEdit, cxButtonEdit, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, AdvGroupBox, AdvOfficeButtons, AdvPanel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils,
  BusinessSkinForm, frxExportXLSX, frxRich, frxTableObject, frxClass,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxDCtrl,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFrSumProfitPart = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    RaSelDt: TAdvOfficeRadioGroup;
    raSelSale: TAdvOfficeRadioGroup;
    Edit_dateFrom: TcxDateEdit;
    Edit_dateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    edGpart: TcxButtonEdit;
    edProfitF: TcxTextEdit;
    edProfitT: TcxTextEdit;
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
    frxDialogControls1: TfrxDialogControls;
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edGpartPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    SortText: string;
    XYear, XMonth: Word;
    FrmDate, ToDate: TDateTime;
    { Public declarations }
  end;

var
  FrSumProfitPart: TFrSumProfitPart;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  DmSet1, uSrcDlg, uSoftfirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFrSumProfitPart.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFrSumProfitPart.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_L');
end;

procedure TFrSumProfitPart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FrSumProfitPart := nil;
end;

procedure TFrSumProfitPart.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFrSumProfitPart.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSelDt, XSelSL: string;
begin
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PGPART' then
    Value := EdGPart.Text + '%';
  if UpperCase(VarName) = 'PPROF' then
    Value := StrToFloat(edProfitF.Text);
  if UpperCase(VarName) = 'PPROT' then
    Value := StrToFloat(edProfitT.Text);

  case RaSelDt.ItemIndex of
    0:
      XSelDt := '0';
    1:
      XSelDt := '1';
  end;
  if UpperCase(VarName) = 'PSELDT' then
    Value := XSelDt;

  case RaSelSale.ItemIndex of
    0:
      XSelSL := 'IC%';
    1:
      XSelSL := 'SV%';
    2:
      XSelSL := '%';
  end;
  if UpperCase(VarName) = 'PSELSL' then
    Value := XSelSL;
end;

procedure TFrSumProfitPart.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_SumProfitPer.fr3', '1');
end;

procedure TFrSumProfitPart.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_SumProfitPer.fr3', '2');
end;

procedure TFrSumProfitPart.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFrSumProfitPart.edGpartPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    edGpart.Text := fSrcDlg.Keyno;
end;

procedure TFrSumProfitPart.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  XDate := Date;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

end.

