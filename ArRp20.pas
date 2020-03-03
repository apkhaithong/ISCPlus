unit ArRp20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, cxDropDownEdit, cxCalendar, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGroupBox, AdvOfficeButtons,
  AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxClass,
  frxDCtrl, frxBDEComponents, frxExportPDF, frxExportCSV, frxCross,
  frxExportImage, frxExportBaseDialog, frxExportXLSX, frxRich, frxGradient,
  frxChBox, frxTableObject, frxFDComponents, frxChart, frxBarcode;

type
  TArRp_20 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label20: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    RadioG1: TAdvOfficeRadioGroup;
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
    frxFDComponents1: TfrxFDComponents;
    frxReportTableObject1: TfrxReportTableObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevbtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ArRp_20: TArRp_20;

implementation

uses
  DmAr, uSrcDlg, uSoftFirm, Dmsec;

{$R *.DFM}

procedure TArRp_20.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TArRp_20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  ArRp_20 := nil;
end;

procedure TArRp_20.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArRp_20.PrevbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'rp_ArKang02.fr3','1');
end;

procedure TArRp_20.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'rp_ArKang02.fr3','2');
end;

procedure TArRp_20.FormShow(Sender: TObject);
begin
  Edit_DateFrom.Date := Date;
  Edit_DateTo.Date := Date;
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TArRp_20.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XORD: string;
begin
  if RadioG1.ItemIndex = 0 then
    XORD := '0'
  else
    XORD := '1';
  if UpperCase(VarName) = 'POPTION' then
    Value := XORD;
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PCUSCOD' then
    Value := Edit2.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
end;

procedure TArRp_20.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_5_2');
end;

procedure TArRp_20.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TArRp_20.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAR = Mrok then
    Edit2.Text := fSrcDlg.Keyno;
end;

end.

