unit RpArA60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, Mask, AdvGlowButton, RzSpnEdt, cxGraphics, cxDropDownEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, AdvToolBar, AdvPanel, cxLookAndFeels, cxLookAndFeelPainters,
  dxCore, cxDateUtils, BusinessSkinForm, frxExportXLSX, frxRich, frxTableObject,
  frxClass, frxDCtrl, frxFDComponents, frxGradient, frxExportImage,
  frxExportPDF, frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross,
  frxChBox, frxChart, frxBarcode;

type
  TFRparA60 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label15: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    wwDBDateF: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    ComboBox1: TcxComboBox;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
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
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DesignBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public


    { Public declarations }
  end;

var
  FRparA60: TFRparA60;
  XREP: integer;

implementation

uses
  Srchset1, Srchsal1, USoftfirm, unfrPreview, Dm1, DMSEC;
{$R *.DFM}

procedure TFRparA60.FormShow(Sender: TObject);
begin
  wwDBDateF.date := Date;
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFRparA60.SpeedButton4Click(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetConttyp = Mrok then
    edit5.text := Searchset.KeyNo
end;

procedure TFRparA60.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFRparA60.SpeedButton6Click(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalType = Mrok then
    edit5.text := Searchset.KeyNo
end;

procedure TFRparA60.SpeedButton8Click(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetOfficer = Mrok then
    edit5.text := Searchset.KeyNo;
end;

procedure TFRparA60.SpeedButton7Click(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalModel = Mrok then
    edit5.text := Searchset.KeyNo
end;

procedure TFRparA60.SpeedButton9Click(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetregfg = Mrok then
    edit5.text := Searchset.KeyNo
end;

procedure TFRparA60.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_4_6');
end;

procedure TFRparA60.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRparA60 := nil;
end;

procedure TFRparA60.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_KangArothr.fr3','2'); {2 = Design Report}
end;

procedure TFRparA60.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XSale, XSort: string;
begin
  if UpperCase(VarName) = 'VLOCAT' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'VCONTNO' then
    Value := Edit3.Text + '%';
  if UpperCase(VarName) = 'VCUSCOD' then
    Value := Edit5.Text + '%';
  if UpperCase(VarName) = 'VFDATE' then
    Value := wwDBDateF.Date;

  case ComboBox1.ItemIndex of
    0:
      XSale := 'C';
    1:
      XSale := 'F';
    2:
      XSale := '%';
  end;
  if UpperCase(VarName) = 'VSALE' then
    Value := XSale + '%';
end;

procedure TFRparA60.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFRparA60.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_KangArothr.fr3','1'); {1 = Preview Report}
end;

procedure TFRparA60.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetLocat = Mrok then
    edit1.text := Searchset.KeyNo;
end;

procedure TFRparA60.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalCusmast = Mrok then
    edit5.text := Searchset.KeyNo;
end;

procedure TFRparA60.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

