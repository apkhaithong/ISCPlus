unit unRpPaymentClaim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, qrprntr, QuickRpt, printers, ComCtrls, ToolWin,
  ImgList, Mask, DB, AdvGlowButton, RzSpnEdt, AdvGroupBox, AdvOfficeButtons,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRpPaymentClaim = class(TForm)
    DataSource1: TDataSource;
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    RadioGroup1: TAdvOfficeRadioGroup;
    Query1: TFDQuery;
    Query2: TFDQuery;
    Query2TAXDT: TDateField;
    Query2TAXNO: TStringField;
    Query2SNAM: TStringField;
    Query2NAME1: TStringField;
    Query2NAME2: TStringField;
    Query2DESCP: TStringField;
    Query2NETAMT: TFloatField;
    Query2VATAMT: TFloatField;
    Query2TOTAMT: TFloatField;
    Query2FLAG: TStringField;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Query2STRNO: TStringField;
    Query2FINCOD: TStringField;
    Query2CUSTOMER: TStringField;
    wwFDate: TcxDateEdit;
    wwTDate: TcxDateEdit;
    Edit1: TcxButtonEdit;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRpPaymentClaim: TFRpPaymentClaim;

implementation

uses
  Srchset1, usrcdlg1, USoftFirm, unfrPreview, Dm1, DMSEC;

{$R *.DFM}

procedure TFRpPaymentClaim.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_5_3');
end;

procedure TFRpPaymentClaim.FormShow(Sender: TObject);
begin
  edit1.Text := SFMain.Xlocat;
  wwFDate.Date := Date;
  wwTDate.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFRpPaymentClaim.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XPck, Xsort: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := edit1.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := wwFDate.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := wwTDate.Date;

  case RadioGroup1.ItemIndex of
    0:
      Xsort := '0';
    1:
      Xsort := '1';
    2:
      Xsort := '2';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := Xsort;
end;

procedure TFRpPaymentClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  FRpPaymentClaim := nil;
end;

procedure TFRpPaymentClaim.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RpReceivClaim.fr3', '1'); {1 = Preview Report}
end;

procedure TFRpPaymentClaim.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RpReceivClaim.fr3', '2'); {2 = Design Report}
end;

procedure TFRpPaymentClaim.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRpPaymentClaim.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit1.text := SearchSet.Keyno;
end;

procedure TFRpPaymentClaim.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

