unit RpOpt10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, QuickRpt, QRPrntr, printers, ImgList, ComCtrls,
  ToolWin, Mask, AdvGlowButton, RzSpnEdt, cxButtonEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvToolBar,
  AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore,
  cxDateUtils, BusinessSkinForm, frxExportXLSX, frxRich, frxTableObject,
  frxClass, frxDCtrl, frxFDComponents, frxGradient, frxExportImage,
  frxExportPDF, frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross,
  frxChBox, frxChart, frxBarcode;

type
  TQRFormopt10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    xTDate: TcxDateEdit;
    xFdate: TcxDateEdit;
    edLocat: TcxButtonEdit;
    edApcode: TcxButtonEdit;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    frPath: string;
  public
    { Public declarations }
    Fromdate, Todate: Tdatetime;
  end;

var
  QRFormopt10: TQRFormopt10;

implementation

uses
  SrchSet1, USoftFirm, Dm1, DMSEC;
{$R *.DFM}

procedure TQRFormopt10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TQRFormopt10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_1_3');
end;

procedure TQRFormopt10.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if (UPperCase(VarName) = 'VFDATE') then
    Value := XFDate.Date;
  if (UPperCase(VarName) = 'VTDATE') then
    Value := XTDate.date;
  if (UPperCase(VarName) = 'VLOCAT') then
    Value := edlocat.Text + '%';
  if (UPperCase(VarName) = 'VAPCODE') then
    Value := edApcode.Text + '%';
end;

procedure TQRFormopt10.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RecOpt.fr3','2') {2 = Design Report}
end;

procedure TQRFormopt10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  QRformopt10 := nil;
end;

procedure TQRFormopt10.edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    edLocat.Text := Searchset.Keyno;
end;

procedure TQRFormopt10.edApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetAP = Mrok then
    edApcode.Text := Searchset.Keyno;
end;

procedure TQRFormopt10.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TQRFormopt10.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RecOpt.fr3','1') {1 = Preview Report}
end;

procedure TQRFormopt10.FormShow(Sender: TObject);
begin
  XFDate.Date := Date;
  XTDate.Date := Date;
  DesigNBtn.Visible := SFMain.XDesign = 'Y';
  edLocat.Text := SFMain.XLocat;
  edLocat.Enabled := SFMain.XChgloc = 'Y';
end;

end.

