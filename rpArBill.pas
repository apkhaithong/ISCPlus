unit rpArBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, RzPanel, RzRadGrp, RzLabel, RzButton, Dbkbd,
  Buttons, RzSpnEdt, ComCtrls, ToolWin, Mask, AdvGroupBox, AdvOfficeButtons,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents,
  frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFrpArBill = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label20: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    XOPTION: TAdvOfficeRadioGroup;
    XORDER: TAdvOfficeRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure Edit2ButtonClick(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrpArBill: TFrpArBill;
  XOPT1, XORD1: string;

implementation

uses
  uSoftFirm, uSrcDlg, Dmsec;
{$R *.dfm}

procedure TFrpArBill.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if ((XOPTION.ItemIndex = 0) and (XORDER.ItemIndex = 0)) then
    XOPT1 := 'NB'
  else if ((XOPTION.ItemIndex = 0) and (XORDER.ItemIndex = 1)) then
    XOPT1 := 'NC'
  else if ((XOPTION.ItemIndex = 1) and (XORDER.ItemIndex = 0)) then
    XOPT1 := 'YB'
  else if ((XOPTION.ItemIndex = 1) and (XORDER.ItemIndex = 1)) then
    XOPT1 := 'YC'
  else if ((XOPTION.ItemIndex = 2) and (XORDER.ItemIndex = 0)) then
    XOPT1 := 'AB'
  else
    XOPT1 := 'AC';

  if UpperCase(VarName) = 'POPTION' then
    Value := XOPT1;
  if UpperCase(VarName) = 'FDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'TDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PCUSCODE' then
    Value := Edit2.Text + '%';
  if UpperCase(VarName) = 'PLOC' then
    Value := Edit_Locat.Text;
end;

procedure TFrpArBill.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FrpArbill := Nil;
end;

procedure TFrpArBill.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_5_8');
end;

procedure TFrpArBill.Edit1ButtonClick(Sender: TObject);
begin
  Application.CreateForm(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = mrOK then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TFrpArBill.Edit2ButtonClick(Sender: TObject);
begin
  Application.CreateForm(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAR = mrOK then
    Edit2.Text := fSrcDlg.Keyno;
end;

procedure TFrpArBill.RzToolButton4Click(Sender: TObject);
begin
//  frReport1.LoadFromFile(SFMAIN.frpath + '\REPORT\rp_ArBill.fr3');
//  frReport1.DesignReport;
end;

procedure TFrpArBill.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_ArBill.fr3', '1');
end;

procedure TFrpArBill.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_ArBill.fr3', '2');
end;

procedure TFrpArBill.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFrpArBill.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = mrOK then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TFrpArBill.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAR = mrOK then
    Edit2.Text := fSrcDlg.Keyno;
end;

procedure TFrpArBill.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFrpArBill.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

end.

