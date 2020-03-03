unit URpSaleAgenAc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, Db, QuickRpt, printers, qrprntr, ImgList,
  ComCtrls, ToolWin, Mask, RzSpnEdt, AdvGlowButton, cxGraphics, cxDropDownEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, AdvGroupBox, AdvOfficeButtons, AdvToolBar, AdvPanel,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxExportPDF, frxExportImage,
  frxGradient, frxFDComponents, frxDCtrl, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfRpSaleAgenAc = class(TForm)
    AdvPanel1: TAdvPanel;
    Label20: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    wwDBDateT: TcxDateEdit;
    wwDBDateF: TcxDateEdit;
    Edit8: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    RadioGroup1: TAdvOfficeRadioGroup;
    ComboBox2: TcxComboBox;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
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
    frxDialogControls1: TfrxDialogControls;
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private

    { Private declarations }
  public
    { Public declarations }
    TK: string;
  end;

var
  fRpSaleAgenAc: TfRpSaleAgenAc;

implementation

uses
  USoftfirm, Srchset1, Dm1, DMSEC;

{$R *.DFM}
procedure TfRpSaleAgenAc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  fRpSaleAgenAc := nil;
end;

procedure TfRpSaleAgenAc.FormShow(Sender: TObject);
begin
  Edit2.SetFocus;
  wwDBDateT.Date := Date;
  wwDBDateF.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  Combobox2.ItemIndex := 5;
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TfRpSaleAgenAc.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_2_6');
end;

procedure TfRpSaleAgenAc.DesignBtnClick(Sender: TObject);
begin
  if Radiogroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RpSaleAgenAc.fr3', '2')
 {2 = Design Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RpSaleAgenSumAc.fr3', '2');
end;

procedure TfRpSaleAgenAc.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'FSDATE' then
    Value := wwDBDateF.Date;
  if Uppercase(VarName) = 'TSDATE' then
    Value := wwDBDateT.Date;
  if Uppercase(VarName) = 'PLOCAT' then
    Value := Edit1.Text + '%';
  if Uppercase(VarName) = 'PTYPE' then
    Value := Edit6.Text + '%';
  if Uppercase(VarName) = 'PMODEL' then
    Value := Edit7.Text + '%';
  if Uppercase(VarName) = 'PCOLOR' then
    Value := Edit8.Text + '%';
  case Combobox2.ItemIndex of
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
  if Uppercase(VarName) = 'PSTAT' then
    Value := TK;
  if Uppercase(VarName) = 'PSALECODE' then
    Value := Edit2.Text + '%';
end;

procedure TfRpSaleAgenAc.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit1.text := SearchSet.Keyno;
end;

procedure TfRpSaleAgenAc.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetOfficer = MrOk then
    Edit2.text := SearchSet.Keyno;
end;

procedure TfRpSaleAgenAc.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetgrp = MrOk then
    Edit5.text := SearchSet.Keyno;
end;

procedure TfRpSaleAgenAc.Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalType = MrOk then
    Edit6.text := SearchSet.Keyno;
end;

procedure TfRpSaleAgenAc.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalModel = MrOk then
    Edit7.text := SearchSet.Keyno;
end;

procedure TfRpSaleAgenAc.Edit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalColor = MrOk then
    Edit8.text := SearchSet.Keyno;
end;

procedure TfRpSaleAgenAc.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfRpSaleAgenAc.PrevBtnClick(Sender: TObject);
begin
  if Radiogroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RpSaleAgenAc.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FRr_RpSaleAgenSumAc.fr3', '1');
end;

procedure TfRpSaleAgenAc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

