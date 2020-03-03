unit uRpPartProf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, cxButtonEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvGlowButton, AdvToolBar,
  AdvGroupBox, AdvOfficeButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, AdvPanel,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxDCtrl, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRpPartProf = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label9: TLabel;
    FDate: TcxDateEdit;
    ToDate: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label1: TLabel;
    cxButtonEdit1: TcxButtonEdit;
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
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRpPartProf: TFRpPartProf;

implementation

uses
  DmSet1, uSrcDlg, uSoftfirm, unfrPreview, Dmsec, uFindData;

{$R *.DFM}

procedure TFRpPartProf.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpPartProf.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_1_4');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  FDate.Date := Date;
  ToDate.Date := Date;
end;

procedure TFRpPartProf.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepPartProf.fr3', '1');
end;

procedure TFRpPartProf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRpPartProf := nil;
end;

procedure TFRpPartProf.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRpPartProf.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TFRpPartProf.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PREFDOCNO' then
    Value := cxButtonEdit1.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := FDate.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := ToDate.Date;
  if UpperCase(VarName) = 'PPARTFM' then
    Value := Edit3.Text + '%';

  if UpperCase(VarName) = 'PSEECOST' then
    Value := SFMain.Xseecost;
end;

procedure TFRpPartProf.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepPartProf.fr3', '2');
end;

procedure TFRpPartProf.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFRpPartProf.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.Keyno;
end;

procedure TFRpPartProf.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindData, fFindData);
  if fFindData.ShowModalTaxSal = Mrok then
    cxButtonEdit1.Text := fFindData.Keyno;
end;

end.

