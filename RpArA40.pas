unit RpArA40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, Mask, RzSpnEdt, AdvGlowButton, AdvToolBar, cxButtonEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  AdvGroupBox, AdvOfficeButtons, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRparA40 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label15: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label10: TLabel;
    RadioGp2: TAdvOfficeRadioGroup;
    wwTDate: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrevBtnClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRparA40: TFRparA40;
  XREP: integer;

implementation

uses
  Srchset1, Srchsal1, USoftfirm, Dm1, Dmsec;
{$R *.DFM}

procedure TFRparA40.FormShow(Sender: TObject);
begin
  wwTDate.Date := Date;
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TFRparA40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRparA40 := nil;
end;

procedure TFRparA40.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFRparA40.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_4_4');
end;

procedure TFRparA40.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetLocat = Mrok then
    edit1.text := Searchset.KeyNo;
end;

procedure TFRparA40.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalArAgen = Mrok then
    edit3.text := Searchsale.KeyNo;
end;

procedure TFRparA40.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalCusmast = Mrok then
    edit5.text := Searchset.KeyNo;
end;

procedure TFRparA40.PrevBtnClick(Sender: TObject);
begin
  Dm_Sec.Do_Prev_Edit_FastReport(frxReport1,'fr_ArKangAr_invoi.fr3','1');
end;

procedure TFRparA40.DesignBtnClick(Sender: TObject);
begin
  Dm_Sec.Do_Prev_Edit_FastReport(frxReport1,'fr_ArKangAr_invoi.fr3','2');
end;

procedure TFRparA40.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  Xsort: string;
begin
  if UpperCase(VarName) = 'VLOCAT' then
    Value := edit1.Text + '%';
  if UpperCase(VarName) = 'VCONTNO' then
    Value := edit3.Text + '%';
  if UpperCase(VarName) = 'VCUSCOD' then
    Value := edit5.Text + '%';
  if UpperCase(VarName) = 'VFDATE' then
    Value := wwTDate.Date;

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

end.

