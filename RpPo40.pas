unit Rppo40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, RzSpnEdt, RzPanel, RzEdit, AdvGroupBox,
  AdvOfficeButtons, AdvGlowButton, AdvToolBar, cxCheckBox, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxCore, cxDateUtils, BusinessSkinForm, frxExportXLSX, frxRich, frxTableObject,
  frxClass, frxDCtrl, frxFDComponents, frxGradient, frxExportImage, frxExportPDF,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFRpPo40 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label14: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit_DateTo: TcxDateEdit;
    Edit1: TcxButtonEdit;
    edSupplier: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    CheckBox1: TcxCheckBox;
    SortRadio: TAdvOfficeRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edSupplierPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    XYear, XMonth, XDay: Word;
    { Public declarations }
  end;

var
  FRpPo40: TFRpPo40;

implementation

uses
  DmPo, uFindPO, uSoftfirm, unfrPreview, Dm1, DMSEC;

{$R *.DFM}

procedure TFRpPo40.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpPo40.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_2_5');
end;

procedure TFRpPo40.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepMaxMinPurchase.fr3', '1');
end;

procedure TFRpPo40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRpPo40 := nil;
end;

procedure TFRpPo40.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRpPo40.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepMaxMinPurchase.fr3', '2');
end;

procedure TFRpPo40.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort, XChk1: string;
begin
  if Edit4.Text = '' then
    Edit4.Text := 'тттт';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PSUPP' then
    Value := edSupplier.Text + '%';
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PPARTFM' then
    Value := Edit3.Text;
  if UpperCase(VarName) = 'PPARTTO' then
    Value := Edit4.Text;
  if UpperCase(VarName) = 'PGROUP' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PSEECOST' then
    Value := SFMain.Xseecost;

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

  if Checkbox1.Checked = True then
    XChk1 := 'Y'
  else
    XChk1 := 'N';
  if UpperCase(VarName) = 'PCHK1' then
    Value := XChk1;
end;

procedure TFRpPo40.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalLocat = Mrok then
    EDIT_Locat.TEXT := fFindPO.Keyno;
end;

procedure TFRpPo40.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalParts = Mrok then
    EDIT3.TEXT := fFindPO.Keyno;
end;

procedure TFRpPo40.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalParts = Mrok then
    EDIT4.TEXT := fFindPO.Keyno;
end;

procedure TFRpPo40.edSupplierPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalAP = Mrok then
    edSupplier.Text := fFindPO.Keyno;
end;

procedure TFRpPo40.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalGroup = Mrok then
    Edit1.Text := fFindPO.Keyno;
end;

procedure TFRpPo40.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  SortRadio.ItemIndex := 0;
  Edit_DateTo.Date := Date;
  DecodeDate(Edit_DateTo.Date, XYear, XMonth, XDay);
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

end.

