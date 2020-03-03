unit RpArA10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, Mask, RzSpnEdt, AdvGlowButton, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGroupBox,
  AdvOfficeButtons, AdvToolBar, cxGraphics, AdvPanel, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRparA10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    RadioGp2: TAdvOfficeRadioGroup;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    st: TcxComboBox;
    Edit5: TcxButtonEdit;
    wwTDate: TcxDateEdit;
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
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRparA10: TFRparA10;
  XREP: integer;

implementation

uses
  Srchset1, Srchsal1, USoftFirm, unfrPreview, Dm1, DMSEC;
{$R *.DFM}

procedure TFRparA10.FormShow(Sender: TObject);
begin
  wwTDate.Date := Date;
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
  RadioGp2.ItemIndex := 0;
  st.ItemIndex := 2;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFRparA10.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFRparA10.SpeedButton7Click(Sender: TObject);
begin
 { Application.Createform(TSearchset,Searchset);
  If Searchset.ShowModalSetregfg=Mrok Then
      edit7.text :=  Searchset.KeyNo}
end;

procedure TFRparA10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRparA10 := nil;
end;

procedure TFRparA10.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFRparA10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_4_2');
end;

procedure TFRparA10.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  Xstat, Xtyp: string;
begin
  if UpperCase(VarName) = 'VLOCAT' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'VCONTNO' then
    Value := Edit3.Text + '%';
  if UpperCase(VarName) = 'VGCODE' then
    Value := Edit5.Text + '%';
  if UpperCase(VarName) = 'VTYPE' then
    Value := Edit6.Text + '%';
  if UpperCase(VarName) = 'VMODEL' then
    Value := Edit4.Text + '%';
  if UpperCase(VarName) = 'VFDATE' then
    Value := wwTDate.Date;

  case st.ItemIndex of
    0:
      Xstat := 'N%';
    1:
      Xstat := 'O%';
    2:
      Xstat := 'D%';
    3:
      Xstat := 'P%';
    4:
      Xstat := 'U%';
    5:
      Xstat := '%';
  end;
  if UpperCase(VarName) = 'VSTAT' then
    Value := Xstat;

  case RadioGp2.ItemIndex of
    0:
      Xtyp := '0';
    1:
      Xtyp := '1';
    2:
      Xtyp := '2';
  end;
  if UpperCase(VarName) = 'VRADIO' then
    Value := Xtyp;
end;

procedure TFRparA10.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_KangCash.fr3','2'); {2 = Design Report}
end;

procedure TFRparA10.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_KangCash.fr3','1'); {1 = Preview Report}
end;

procedure TFRparA10.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetLocat = Mrok then
    edit1.text := Searchset.KeyNo
end;

procedure TFRparA10.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalArCred = Mrok then
    edit3.text := Searchsale.KeyNo;
end;

procedure TFRparA10.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetgrp = Mrok then
    edit5.text := Searchset.KeyNo
end;

procedure TFRparA10.Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalType = Mrok then
    edit6.text := Searchset.KeyNo;
end;

procedure TFRparA10.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalModel = Mrok then
    edit4.text := Searchset.KeyNo;
end;

procedure TFRparA10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

