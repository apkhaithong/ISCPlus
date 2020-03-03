unit RpSv01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Mask, StdCtrls, ToolWin, Buttons, ExtCtrls, Dbkbd,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents,
  frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRpSv01 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    edOfficer: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    DBkbd1: TDBkbd;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure edOfficerPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRpSv01: TFRpSv01;

implementation

uses
  USoftFirm, Srchdlg1, uSrcDlg, Dmsec;
{$R *.dfm}

procedure TFRpSv01.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PREPCOD' then
    Value := edOfficer.Text;
  if UpperCase(VarName) = 'PFRECVDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTRECVDATE' then
    Value := Edit_DateTo.Date;
end;

procedure TFRpSv01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FRpSv01 := nil;
end;

procedure TFRpSv01.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP02_4_4');
end;

procedure TFRpSv01.editBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_TimeService.fr3', '2');
end;

procedure TFRpSv01.edOfficerPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    edOfficer.Text := fSrcDlg.Keyno;
end;

procedure TFRpSv01.PrevBtnClick(Sender: TObject);
begin
  if edOfficer.Text = '' then
    sfmain.RaiseException('กรุณาระบุรหัสพนักงานหัวหน้าช่าง');
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_TimeService.fr3', '1');
end;

procedure TFRpSv01.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFRpSv01.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpSv01.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

end.

