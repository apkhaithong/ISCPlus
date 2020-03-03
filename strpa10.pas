unit STRpA10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, cxButtonEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvGlowButton, AdvToolBar,
  AdvGroupBox, AdvOfficeButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, AdvPanel,
  frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTRpA10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label20: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    raSelReport: TAdvOfficeRadioGroup;
    SortRadio: TAdvOfficeRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label16: TLabel;
    FDate: TcxDateEdit;
    ToDate: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    Edit2: TcxButtonEdit;
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
    procedure FormShow(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRpA10: TFmSTRpA10;

implementation

uses
  DmSet1, uSrcDlg, uSoftfirm, unfrPreview, Dmsec, Srchset1;

{$R *.DFM}

procedure TFmSTRpA10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRpA10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_H');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  FDate.Date := Date;
  ToDate.Date := Date;
end;

procedure TFmSTRpA10.PrevBtnClick(Sender: TObject);
begin
  if raSelReport.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RepSalesPartItem.fr3','1') else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RepSalesPartSum.fr3','1');
end;

procedure TFmSTRpA10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRpA10 := nil;
end;

procedure TFmSTRpA10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTRpA10.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TFmSTRpA10.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XSort: string;
begin
  if Edit4.Text = '' then
    Edit4.Text := 'тттт';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PCUSCOD' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := FDate.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := ToDate.Date;
  if UpperCase(VarName) = 'PPARTFM' then
    Value := Edit3.Text;
  if UpperCase(VarName) = 'PPARTTO' then
    Value := Edit4.Text;
  if UpperCase(VarName) = 'PGROUP' then
    Value := Edit7.Text + '%';
  if Uppercase(VarName) = 'PSALCOD' then
    Value := Edit2.Text + '%';

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
    3:
      XSort := '3';
  end;

  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  if UpperCase(VarName) = 'PSEECOST' then
    Value := SFMain.Xseecost;
end;

procedure TFmSTRpA10.EditBtnClick(Sender: TObject);
begin
  if raSelReport.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RepSalesPartItem.fr3','2') else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RepSalesPartSum.fr3','2');
end;

procedure TFmSTRpA10.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpA10.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAr = Mrok then
    Edit1.text := fSrcDlg.Keyno;
end;

procedure TFmSTRpA10.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.Keyno;
end;

procedure TFmSTRpA10.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit4.text := fSrcDlg.Keyno;
end;

procedure TFmSTRpA10.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit7.Text := fSrcDlg.Keyno;
end;

procedure TFmSTRpA10.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetOfficer = MrOk then
    Edit2.text := SearchSet.Keyno;
end;

end.

