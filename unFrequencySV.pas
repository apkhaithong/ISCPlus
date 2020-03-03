unit unFrequencySV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, RzEdit, RzSpnEdt, AdvGlowButton, AdvToolBar,
  AdvGroupBox, AdvOfficeButtons, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvPanel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils,
  BusinessSkinForm, frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrFrequencySv = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SortRadio: TAdvOfficeRadioGroup;
    EDIT_LOCAT: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    edGcode: TcxButtonEdit;
    edModel: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_dateTo: TcxDateEdit;
    cxButtonEdit1: TcxButtonEdit;
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
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edGcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
   { Private declarations }
  public
    { Public declarations }

  end;

var
  frFrequencySv: TfrFrequencySv;

implementation

uses
  Dmsvset, USoftFirm, uFindData, usrcdlg1, unfrPreview, Dmsec;

{$R *.DFM}

procedure TfrFrequencySv.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrFrequencySv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frFrequencySv := nil;
end;

procedure TfrFrequencySv.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_FrequencySv.fr3', '1');
end;

procedure TfrFrequencySv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrFrequencySv.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_E');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  SortRadio.ItemIndex := 0;
end;

procedure TfrFrequencySv.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort, XSelDt: string;
begin
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PGCODE' then
    Value := edGcode.Text + '%';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PMODEL' then
    Value := EdModel.Text + '%';
  if UpperCase(VarName) = 'PCUSCOD' then
    Value := cxButtonEdit1.Text + '%';
  if UpperCase(VarName) = 'PREGNO' then
    Value := cxButtonEdit2.Text + '%';
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

procedure TfrFrequencySv.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_FrequencySv.fr3', '2');
end;

procedure TfrFrequencySv.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

procedure TfrFrequencySv.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrFrequencySv.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg1.Keyno;
end;

procedure TfrFrequencySv.edGcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSetgroup = Mrok then
    edGcode.Text := fSrcDlg1.Keyno;
end;

procedure TfrFrequencySv.edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalModel = Mrok then
    EdModel.Text := fSrcDlg1.Keyno;
end;

procedure TfrFrequencySv.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCusmast = Mrok then
    cxButtonEdit1.Text := fFindData.Keyno;
end;

procedure TfrFrequencySv.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvCUST = Mrok then
    cxButtonEdit2.Text := fSrcDlg1.qrFindDat.fieldbyname('REGNO').AsString;
end;

end.

