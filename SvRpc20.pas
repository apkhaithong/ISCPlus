unit Svrpc20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, AdvGroupBox, AdvOfficeButtons, cxButtonEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSvRpc20 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    raSelRep: TAdvOfficeRadioGroup;
    raReptype: TAdvOfficeRadioGroup;
    raOrder: TAdvOfficeRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    SortText: string;
    XYear, XMonth: Word;
    { Public declarations }
  end;

var
  FmSvRpc20: TFmSvRpc20;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  Srchdlg, uSrcDlg, uSoftFirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmSvRpc20.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSvRpc20.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_9');
end;

procedure TFmSvRpc20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFmSvRpc20.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  xOrder, XRepType: string;
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
  case raRepType.ItemIndex of
    0:
      XRepType := 'Y';
    1:
      XRepType := 'N';
  end;
  if UpperCase(VarName) = 'PREPTYPE' then
    Value := XRepType;
end;

procedure TFmSvRpc20.PrevBtnClick(Sender: TObject);
begin
  if raSelRep.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_OthInvoi.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_CanOthinvoi.fr3', '1');
end;

procedure TFmSvRpc20.EditBtnClick(Sender: TObject);
begin
  if raSelRep.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_OthInvoi.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_CanOthinvoi.fr3', '2');
end;

procedure TFmSvRpc20.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.TEXT := fSrcDlg.KeyNo;
end;

procedure TFmSvRpc20.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSvRpc20.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

end.

