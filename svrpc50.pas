unit Svrpc50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, AdvGroupBox, AdvOfficeButtons, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF, frxExportImage,
  frxGradient, frxFDComponents, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFSvrpc50 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    raSelRep: TAdvOfficeRadioGroup;
    raOrder: TAdvOfficeRadioGroup;
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
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReportTableObject1: TfrxReportTableObject;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxReport1: TfrxReport;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    SortText: string;
    { Public declarations }
  end;

var
  FSvrpc50: TFSvrpc50;

implementation

uses
  Srchdlg, usrcdlg, uSoftFirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFSvrpc50.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFSvrpc50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FSvrpc50 := nil;
end;

procedure TFSvrpc50.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  xOrder: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  case raOrder.ItemIndex of
    0:
      xOrder := '1';
    1:
      xOrder := '2';
    2:
      xOrder := '3';
  end;
  if UpperCase(VarName) = 'PORDER' then
    Value := xOrder;
end;

procedure TFSvrpc50.PrevBtnClick(Sender: TObject);
begin
  if raSelRep.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_ClaimSum.fr3', '1')
  else if raSelRep.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_ClaimRepPt.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_ClaimRepSv.fr3', '1');
end;

procedure TFSvrpc50.EditBtnClick(Sender: TObject);
begin
  if raSelRep.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_ClaimSum.fr3', '2')
  else if raSelRep.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_ClaimRepPt.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_ClaimRepSv.fr3', '2');
end;

procedure TFSvrpc50.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

procedure TFSvrpc50.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.Keyno;
end;

procedure TFSvrpc50.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFSvrpc50.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_7');
end;

end.

