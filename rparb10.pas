unit RpArB10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, RzSpnEdt, AdvGlowButton, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvToolBar, AdvGroupBox, AdvOfficeButtons, AdvPanel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, BusinessSkinForm,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents,
  frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRparB10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label12: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    RGp1: TAdvOfficeRadioGroup;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    Edit8: TcxButtonEdit;
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
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxGradientObject1: TfrxGradientObject;
    frxFDComponents1: TfrxFDComponents;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure BitBtn3Click(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRparB10: TFRparB10;
  XREP: integer;

implementation

uses
  Srchset1, Srchsal1, USoftFirm, unfrPreview, Dm1, DMSEC;
{$R *.DFM}

procedure TFRparB10.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFRparB10.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_ArKangDawnFinc.fr3','2'); {2 = Design Report}
end;

procedure TFRparB10.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFRparB10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_4_1');
end;

procedure TFRparB10.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  Xtyp: string;
begin
  if Uppercase(VarName) = 'VLOCAT' then
    Value := Edit1.Text + '%';
  if Uppercase(VarName) = 'VCONTNO' then
    Value := Edit3.Text + '%';
  if Uppercase(VarName) = 'VGCODE' then
    Value := Edit5.Text + '%';
  if Uppercase(VarName) = 'VSALCOD' then
    Value := Edit8.Text + '%';

  case RGp1.ItemIndex of
    0:
      Xtyp := '0';
    1:
      Xtyp := '1';
    2:
      Xtyp := '2';
  end;

  if Uppercase(VarName) = 'VRADIO' then
    Value := Xtyp;
end;

procedure TFRparB10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRparB10 := nil;
end;

procedure TFRparB10.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetLocat = Mrok then
    edit1.text := Searchset.KeyNo;
end;

procedure TFRparB10.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalArFinc = Mrok then
    edit3.text := Searchsale.KeyNo;
end;

procedure TFRparB10.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetgrp = Mrok then
    edit5.text := Searchset.KeyNo;
end;

procedure TFRparB10.Edit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetOfficer = Mrok then
    edit8.text := Searchset.KeyNo;
end;

procedure TFRparB10.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_ArKangDawnFinc.fr3','1'); {1 = Preview Report}
end;

procedure TFRparB10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRparB10.FormShow(Sender: TObject);
begin
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
  RGp1.ItemIndex := 0;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

end.

