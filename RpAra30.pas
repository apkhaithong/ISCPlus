unit RpArA30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, Mask, AdvGlowButton, RzSpnEdt, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGroupBox,
  AdvOfficeButtons, AdvToolBar, cxGraphics, AdvPanel, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRparA30 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    RadioGp2: TAdvOfficeRadioGroup;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    Edit8: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    wwTDate: TcxDateEdit;
    st: TcxComboBox;
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
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRparA30: TFRparA30;
  XREP: integer;

implementation

uses
  Srchset1, Srchsal1, USoftFirm, unfrPreview, Dm1, DMSEC;
{$R *.DFM}

procedure TFRparA30.FormShow(Sender: TObject);
begin
  wwTDate.Date := Date;
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  RadioGp2.ItemIndex := 0;
  st.ItemIndex := 5;
end;

procedure TFRparA30.SpeedButton4Click(Sender: TObject);
begin
 {Application.Createform(TSearchset,Searchset);
  If Searchset.ShowModalSetregfg=Mrok Then
      edit4.text :=  Searchset.KeyNo; }
end;

procedure TFRparA30.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFRparA30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRparA30 := nil;
end;

procedure TFRparA30.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFRparA30.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_4_3');
end;

procedure TFRparA30.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_KangFinc.fr3','2'); {2 = Design Report}
end;

procedure TFRparA30.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  Xtype, Xsort: string;
begin
  if UpperCase(VarName) = 'VLOCAT' then
    Value := edit1.Text + '%';
  if UpperCase(VarName) = 'VCONTNO' then
    Value := edit3.Text + '%';
  if UpperCase(VarName) = 'VFINCOD' then
    Value := edit7.Text + '%';
  if UpperCase(VarName) = 'VTYPE' then
    Value := edit6.Text + '%';
  if UpperCase(VarName) = 'VMODEL' then
    Value := edit8.Text + '%';
  if UpperCase(VarName) = 'VGCODE' then
    Value := edit5.Text + '%';
  if UpperCase(VarName) = 'VFDATE' then
    Value := wwTDate.Date;

  case st.ItemIndex of
    0:
      Xtype := 'N%';
    1:
      Xtype := 'O%';
    2:
      Xtype := 'D%';
    3:
      Xtype := 'P%';
    4:
      Xtype := 'U%';
    5:
      Xtype := '%';
  end;
  if UpperCase(VarName) = 'VSTAT' then
    Value := Xtype + '%';

  case RadioGp2.ItemIndex of
    0:
      Xsort := '0';
    1:
      Xsort := '1';
    2:
      Xsort := '2';
  end;
  if UpperCase(VarName) = 'VSORT' then
    Value := Xsort;
end;

procedure TFRparA30.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_KangFinc.fr3','1'); {1 = Preview Report}
end;

procedure TFRparA30.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetLocat = Mrok then
    edit1.text := Searchset.KeyNo;
end;

procedure TFRparA30.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalArFINC = Mrok then
    edit3.text := Searchsale.KeyNo;
end;

procedure TFRparA30.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetFinmst = Mrok then
    edit7.text := Searchset.KeyNo;
end;

procedure TFRparA30.Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalType = Mrok then
    edit6.text := Searchset.KeyNo;
end;

procedure TFRparA30.Edit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalModel = Mrok then
    edit8.text := Searchset.KeyNo;
end;

procedure TFRparA30.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetgrp = Mrok then
    edit5.text := Searchset.KeyNo;
end;

procedure TFRparA30.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

