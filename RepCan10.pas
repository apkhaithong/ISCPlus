unit RepCan10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, QRPrntr, printers, ComCtrls, ImgList,
  ToolWin, Mask, AdvGlowButton, RzSpnEdt, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvToolBar,
  AdvGroupBox, AdvOfficeButtons, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRepCan10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label10: TLabel;
    RGp1: TAdvOfficeRadioGroup;
    wwFDate: TcxDateEdit;
    wwTDate: TcxDateEdit;
    edLocat: TcxButtonEdit;
    edUser: TcxButtonEdit;
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
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxGradientObject1: TfrxGradientObject;
    frxFDComponents1: TfrxFDComponents;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure PrevBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DesignbtnClick(Sender: TObject);
    procedure edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edUserPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    aReport: TQuickRep;
    procedure PickReport;

    { Public declarations }
  end;

var
  FRepCan10: TFRepCan10;

implementation

uses
  Srchset1, USoftFirm, unfrPreview, Dm1, DMSec;
{$R *.DFM}

procedure TFRepCan10.PickReport;
begin
end;

procedure TFRepCan10.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_CanCelBill.fr3','1'); {1 = Preview Report}
end;

procedure TFRepCan10.FormShow(Sender: TObject);
begin
  wwFDate.Date := Date;
  wwTDate.Date := Date;
  edLocat.Text := SFMain.XLocat;
  edLocat.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TFRepCan10.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFRepCan10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_3_3');
end;

procedure TFRepCan10.DesignbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_CanCelBill.fr3','2'); {2 = Design Report}
end;

procedure TFRepCan10.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := edLocat.Text + '%';
  if UpperCase(VarName) = 'PUSER' then
    Value := edUser.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := wwFdate.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := wwTDate.Date;
end;

procedure TFRepCan10.edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetLocat = Mrok then
    edLocat.text := Searchset.KeyNo;
end;

procedure TFRepCan10.edUserPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalPasswd = MrOk then
    edUser.Text := SearchSet.Keyno;
end;

procedure TFRepCan10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  FRepCan10 := nil;
end;

end.

