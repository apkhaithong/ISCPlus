unit un_Reserv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, QuickRpt, printers, qrprntr, ComCtrls,
  ImgList, ToolWin, Mask, AdvGlowButton, RzSpnEdt, cxButtonEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  AdvGroupBox, AdvOfficeButtons, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm,
  frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRpres10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    wwDBDateF: TcxDateEdit;
    wwDBDateT: TcxDateEdit;
    edLocat: TcxButtonEdit;
    edSalecod: TcxButtonEdit;
    edType: TcxButtonEdit;
    edModel: TcxButtonEdit;
    edColor: TcxButtonEdit;
    edbaab: TcxButtonEdit;
    edgcode: TcxButtonEdit;
    Radiogroup1: TAdvOfficeRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DesignBtnClick(Sender: TObject);
    procedure edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edSalecodPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edgcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edbaabPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edColorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    frpath: string;
  public
    { Public declarations }
  end;

var
  FRpres10: TFRpres10;

implementation

uses
  Srchset1, Srchsal1, USoftFirm, Dm1, DMSEC;
{$R *.DFM}

procedure TFRpres10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpres10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_2_2');
end;

procedure TFRpres10.FormShow(Sender: TObject);
begin
  edLocat.Text := SFMain.XLocat;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  wwDBDateF.Date := Date;
  wwDBDateT.Date := Date;
end;

procedure TFRpres10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRpres10 := nil;
end;

procedure TFRpres10.DesignBtnClick(Sender: TObject);
begin
  if Radiogroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Reserve.fr3', '2'); {2 = Design Report}
  if Radiogroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_ReserveNoSale.fr3', '2'); {2 = Design Report}
  if Radiogroup1.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_ReserveSale.fr3', '2'); {2 = Design Report}
end;

procedure TFRpres10.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'PLOCAT' then
    Value := FRpres10.edLocat.Text + '%';
  if Uppercase(VarName) = 'PSALCOD' then
    Value := FRpres10.edSalecod.Text + '%';
  if Uppercase(VarName) = 'PFDATE' then
    Value := FRpres10.wwDBDateF.Date;
  if Uppercase(VarName) = 'PTDATE' then
    Value := FRpres10.wwDBDateT.Date;
  if Uppercase(VarName) = 'PGCODE' then
    Value := FRpres10.edgcode.Text + '%';
  if Uppercase(VarName) = 'PTYPE' then
    Value := FRpres10.edType.Text + '%';
  if Uppercase(VarName) = 'PMODEL' then
    Value := FRpres10.edModel.Text + '%';
  if Uppercase(VarName) = 'PBAAB' then
    Value := FRpres10.edBaab.Text + '%';
  if Uppercase(VarName) = 'PCOLOR' then
    Value := FRpres10.edColor.Text + '%';
end;

procedure TFRpres10.edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    edlocat.text := SearchSet.Keyno;
end;

procedure TFRpres10.edSalecodPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetOfficer = MrOk then
    edsalecod.text := SearchSet.Keyno;
end;

procedure TFRpres10.edgcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetgrp = MrOk then
    edgcode.text := SearchSet.Keyno;
end;

procedure TFRpres10.edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalType = MrOk then
    edtype.text := SearchSet.Keyno;
end;

procedure TFRpres10.edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalModel = MrOk then
    edmodel.text := SearchSet.Keyno;
end;

procedure TFRpres10.edbaabPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalBaab = MrOk then
    edbaab.text := SearchSet.Keyno;
end;

procedure TFRpres10.edColorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalColor = MrOk then
    edcolor.text := SearchSet.Keyno;
end;

procedure TFRpres10.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFRpres10.PrevBtnClick(Sender: TObject);
begin
  if Radiogroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Reserve.fr3', '1'); {1 = Preview Report}
  if Radiogroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_ReserveNoSale.fr3', '1'); {1 = Preview Report}
  if Radiogroup1.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_ReserveSale.fr3', '1'); {1 = Preview Report}
end;

end.

