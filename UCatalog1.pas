unit UCatalog1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Buttons, DB, RzButton, RzLabel, Dbkbd,
  RzSpnEdt, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, AdvGlowButton, AdvToolBar, ExtCtrls, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFCatalog1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cxButtonEdit1: TcxButtonEdit;
    Label16: TLabel;
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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditBtnClick(Sender: TObject);
    procedure PrevbtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCatalog1: TFCatalog1;
  XUSE: string;

implementation

uses
  USoftFirm, uFindDLG, unfrPreview, Dmsec, uSrcDLG;
{$R *.dfm}

procedure TFCatalog1.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TFCatalog1.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'XFPARTNO' then
    Value := Edit1.text;
  if UpperCase(VarName) = 'XTPARTNO' then
    Value := Edit2.Text;
  if UpperCase(VarName) = 'XLOCAT' then
    Value := Edit_Locat.Text;
  if uppercase(VarName) = 'XUSERID' then
    Value := XUSE;
  if UpperCase(VarName) = 'PGROUP' then
    Value := cxButtonEdit1.Text + '%';
end;

procedure TFCatalog1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FCatalog1 := nil;
end;

procedure TFCatalog1.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PrnCatalog.fr3', '2');
end;

procedure TFCatalog1.PrevbtnClick(Sender: TObject);
begin
  if (Edit1.Text = '') and (Edit2.Text = '') then
    Edit2.Text := 'Î';
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PrnCatalog.fr3', '1');
end;

procedure TFCatalog1.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFCatalog1.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.KeyNo;
end;

procedure TFCatalog1.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit1.Text := fSrcDlg.KeyNo;
end;

procedure TFCatalog1.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindDLG, fFindDlg);
  if fFindDLG.ShowModalINVENTOR = mrOK then
    Edit2.Text := fFindDLG.Keyno;
end;

procedure TFCatalog1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFCatalog1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_4');
end;

procedure TFCatalog1.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    cxButtonEdit1.text := fSrcDlg.KeyNo;
end;

end.

