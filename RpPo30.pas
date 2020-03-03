unit RpPo30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, cxButtonEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvGroupBox,
  AdvOfficeButtons, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents,
  frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRpPo30 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Edit_Apcode: TcxButtonEdit;
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
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxGradientObject1: TfrxGradientObject;
    frxFDComponents1: TfrxFDComponents;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PrevbtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditbtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit_ApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
   { Private declarations }
  public
    { Public declarations }
  end;

var
  FRpPo30: TFRpPo30;

implementation

uses
  Dmpo, uFindPO, uSoftFirm, unfrPreview, Dm1, DMSEC;

{$R *.DFM}

procedure TFRpPo30.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFRpPo30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FRpPo30 := nil;
end;

procedure TFRpPo30.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_2_3');
end;

procedure TFRpPo30.PrevbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Fr_RepPurchase.fr3','1');
end;

procedure TFRpPo30.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRpPo30.frxReport1GetValue(const VarName: string;
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
    3:
      XSort := '3';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PPUR' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PAPCODE' then
    Value := Edit_Apcode.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
end;

procedure TFRpPo30.EditbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Fr_RepPurchase.fr3','2');
end;

procedure TFRpPo30.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpPo30.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalOffic = Mrok then
    Edit1.Text := fFindPO.Keyno;
end;

procedure TFRpPo30.Edit_ApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindpo, fFindpo);
  if fFindpo.ShowModalLocat = Mrok then
    Edit_APcode.Text := ffindPo.keyno;
end;

procedure TFRpPo30.FormShow(Sender: TObject);
begin
  SortRadio.ItemIndex := 0;
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

end.

