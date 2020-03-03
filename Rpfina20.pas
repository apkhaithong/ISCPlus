unit Rpfina20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, printers, qrprntr, ImgList, ComCtrls,
  ToolWin, Mask, AdvGlowButton, RzSpnEdt, cxButtonEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvGroupBox,
  AdvOfficeButtons, AdvToolBar, cxGraphics, AdvPanel, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRfin_ac = class(TForm)
    AdvPanel1: TAdvPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    RadioGroup2: TAdvOfficeRadioGroup;
    XFDate: TcxDateEdit;
    XTDate: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    Edit9: TcxButtonEdit;
    Edit8: TcxButtonEdit;
    Edit10: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    RadioGroup1: TcxComboBox;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DesignBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    FromDate, ToDate: TdateTime;
  end;

var
  FRfin_ac: TFRfin_ac;

implementation

uses
  Srchset1, USoftfirm, unfrPreview, Dm1, DMSEC;

{$R *.DFM}
procedure TFRFin_ac.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_2_5');
end;

procedure TFRFin_ac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRfin_ac := nil;
end;

procedure TFRfin_ac.FormShow(Sender: TObject);
begin
  edit2.SetFocus;
  RadioGroup1.ItemIndex := 5;
  RadioGroup2.ItemIndex := 3;
  XFDate.Date := Date;
  XTDate.Date := Date;
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFRfin_ac.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  TK, XRadio: string;
begin
  if UpperCase(VarName) = 'VLOCAT' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'VSALCOD' then
    Value := Edit2.Text + '%';
  if UpperCase(VarName) = 'VFINCOD' then
    Value := Edit10.Text + '%';
  if UpperCase(VarName) = 'VGCODE' then
    Value := Edit5.Text + '%';
  if UpperCase(VarName) = 'VTYPE' then
    Value := Edit6.Text + '%';
  if UpperCase(VarName) = 'VMODEL' then
    Value := Edit7.Text + '%';
  if UpperCase(VarName) = 'VCOLOR' then
    Value := Edit8.Text + '%';
  if UpperCase(VarName) = 'VBAAB' then
    Value := Edit9.Text + '%';
  if UpperCase(VarName) = 'VFDATE' then
    Value := XFDate.Date;
  if UpperCase(VarName) = 'VTDATE' then
    Value := XTDate.Date;

  case RadioGroup1.ItemIndex of
    0:
      TK := 'N%';
    1:
      TK := 'O%';
    2:
      TK := 'D%';
    3:
      TK := 'P%';
    4:
      TK := 'U%';
    5:
      TK := '%';
  end;
  if UpperCase(VarName) = 'VSTAT' then
    Value := TK + '%';

  case RadioGroup2.ItemIndex of
    0:
      XRadio := '0';
    1:
      XRadio := '1';
    2:
      XRadio := '2';
    3:
      XRadio := '3';
  end;
  if UpperCase(VarName) = 'VSORT' then
    Value := XRadio;
end;

procedure TFRfin_ac.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit1.text := SearchSet.Keyno;
end;

procedure TFRfin_ac.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetOfficer = MrOk then
    Edit2.text := SearchSet.Keyno;
end;

procedure TFRfin_ac.Edit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetFinmst = MrOk then
    Edit10.text := SearchSet.Keyno;
end;

procedure TFRfin_ac.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetgrp = MrOk then
    Edit5.text := SearchSet.Keyno;
end;

procedure TFRfin_ac.Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalType = MrOk then
    Edit6.text := SearchSet.Keyno;
end;

procedure TFRfin_ac.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalModel = MrOk then
    Edit7.text := SearchSet.Keyno;
end;

procedure TFRfin_ac.Edit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalBaab = MrOk then
    Edit9.text := SearchSet.Keyno;
end;

procedure TFRfin_ac.Edit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalColor = MrOk then
    Edit8.text := SearchSet.Keyno;
end;

procedure TFRfin_ac.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SaleArFincForAc.fr3','2'); {2 = Design Report}
end;

procedure TFRfin_ac.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SaleArFincForAc.fr3','1');
end;

procedure TFRfin_ac.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFRfin_ac.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

