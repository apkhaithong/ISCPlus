unit STRp70;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DB, printers, ComCtrls, Mask, Grids, DBGrids,
  ImgList, ToolWin, Dbkbd, AdvGlowButton, AdvToolBar, cxDropDownEdit, cxCalendar,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  AdvGroupBox, AdvOfficeButtons, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTRp70 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label20: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Edit_Locat: TcxButtonEdit;
    edGroup: TcxButtonEdit;
    edType: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    SortRadio: TAdvOfficeRadioGroup;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edGroupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }

  public
    SortText: string;
    XYear, XMonth: Word;
    FrmDate, ToDate: TDateTime;
    { Public declarations }
  end;

var
  FmSTRp70: TFmSTRp70;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  DmSet1, uSrcDlg, uSoftFirm, Dmsec;

{$R *.DFM}

procedure TFmSTRp70.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRp70.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_B');
end;

procedure TFmSTRp70.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRp70 := nil;
end;

procedure TFmSTRp70.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTRp70.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XSort: string;
begin
  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  if UpperCase(VarName) = 'PLOCAT' then
    Value := EDIT_Locat.Text + '%';
  if UpperCase(VarName) = 'PGROUP' then
    Value := edGroup.Text + '%';
  if UpperCase(VarName) = 'PTYPE' then
    Value := edType.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
end;

procedure TFmSTRp70.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PrnAdjust.fr3', '1');
end;

procedure TFmSTRp70.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PrnAdjust.fr3', '2');
end;

procedure TFmSTRp70.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
  SortRadio.ItemIndex := 0;
end;

procedure TFmSTRp70.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRp70.edGroupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    EdGroup.Text := fSrcDlg.Keyno;
end;

procedure TFmSTRp70.edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalType = Mrok then
    edType.Text := fSrcDlg.Keyno;
end;

end.

