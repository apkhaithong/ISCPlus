unit ArRp30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, QuickRpt, Printers, ImgList,
  ComCtrls, ToolWin, Dbkbd, Mask, AdvGroupBox, AdvOfficeButtons, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, frxClass,
  frxDCtrl, frxBDEComponents, frxExportPDF, frxExportCSV, frxCross,
  frxExportImage, frxExportBaseDialog, frxExportXLSX, frxRich, frxGradient,
  frxChBox, frxTableObject, frxFDComponents, frxChart, frxBarcode;

type
  TArRp_30 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label20: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Ckdt: TAdvOfficeRadioGroup;
    FSortRadio: TAdvOfficeRadioGroup;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevbtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }

  public
    SortText: string;
    { Public declarations }
  end;

var
  ArRp_30: TArRp_30;

implementation

uses
  DmAr, uSrcDlg, uSoftFirm, Dmsec;

{$R *.DFM}

procedure TArRp_30.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_5_3');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
end;

procedure TArRp_30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  ArRp_30 := nil;
end;

procedure TArRp_30.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TArRp_30.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArRp_30.PrevbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Rp_ArDue.fr3','1');
end;

procedure TArRp_30.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Rp_ArDue.fr3','2');
end;

procedure TArRp_30.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

procedure TArRp_30.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XOP: string;
begin
        //เงื่อนไขเรียงลำดับ
  if FSortRadio.ItemIndex = 0 then
    SortText := '0';
  if FSortRadio.ItemIndex = 1 then
    SortText := '1';
  if FSortRadio.ItemIndex = 2 then
    SortText := '2';
        //เงื่อนไขวันที่ที่จะแสดง
  if ckdt.ItemIndex = 0 then
    XOP := '0'
  else
    XOP := '1';

  if UpperCase(VarName) = 'POPTIONDT' then
    Value := XOP;
  if UpperCase(VarName) = 'PORDER' then
    Value := SortText;
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PCUSCOD' then
    Value := Edit4.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
end;

procedure TArRp_30.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModallOCAT = Mrok then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TArRp_30.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAR = Mrok then
    Edit4.Text := fSrcDlg.Keyno;
end;

end.

