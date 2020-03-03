unit RpOpt20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, QuickRpt, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, Mask, AdvGlowButton, RzSpnEdt, cxButtonEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvGroupBox,
  AdvOfficeButtons, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TQRFormopt20 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    wwCurDate: TcxDateEdit;
    edLocat: TcxButtonEdit;
    edOptcode: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
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
    procedure FormCreate(Sender: TObject);
    procedure Formkeypress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edOptcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    frPath: string;
  public
    { Public declarations }
  end;

var
  QRFormopt20: TQRFormopt20;

implementation

uses
  Srchset1, Srchstk, USoftFirm, Dm1, DMSEC;
{$R *.DFM}

procedure TQRFormopt20.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_1_4');
end;

procedure TQRFormopt20.Formkeypress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TQRFormopt20.FormShow(Sender: TObject);
begin
  wwCurDate.Date := Date;
  DesigNBtn.Visible := SFMain.XDesign = 'Y';
  edLocat.Text := SFMain.XLocat;
  edLocat.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TQRFormopt20.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStkOpt.fr3', '2'); {2 = Design Report}
end;

procedure TQRFormopt20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  QRFormopt20 := nil;
end;

procedure TQRFormopt20.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if (UPperCase(VarName) = 'VCURDT') then
    Value := wwCurDate.date;
  if (UPperCase(VarName) = 'VLOCAT') then
    Value := edlocat.Text + '%';
  if (UPperCase(VarName) = 'VOPTCODE') then
    Value := edOptcode.Text + '%';
end;

procedure TQRFormopt20.edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    edlocat.Text := Searchset.Keyno;
end;

procedure TQRFormopt20.edOptcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchStk, SearchStk);
  if SearchStk.ShowModalOptmas = Mrok then
    edOptcode.Text := SearchStk.Keyno;
end;

procedure TQRFormopt20.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TQRFormopt20.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStkOpt.fr3', '1')
 {1 = Preview Report}
end;

end.

