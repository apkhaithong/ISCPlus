unit Rppo50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, RzSpnEdt, RzPanel, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGroupBox, AdvOfficeButtons,
  AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, BusinessSkinForm, frxExportXLSX, frxRich,
  frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRpPo50 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label10: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    CKORD: TAdvOfficeRadioGroup;
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
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRpPo50: TFRpPo50;

implementation

uses
  DmPo, uFindPO, uSoftFirm, unfrPreview, Dm1, DMSEC;

{$R *.DFM}

procedure TFRpPo50.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepPrcPurchase.fr3', '1');
end;

procedure TFRpPo50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRpPo50 := nil;
end;

procedure TFRpPo50.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRpPo50.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_2_4');
end;

procedure TFRpPo50.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort: string;
begin
  case ckord.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;
  if Edit3.Text = '' then
    Edit3.Text := 'ттттттт';

  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PAPCODE' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PPARTFM' then
    Value := Edit2.Text + '%';
  if UpperCase(VarName) = 'PPARTTO' then
    Value := Edit3.Text + '%';
end;

procedure TFRpPo50.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepPrcPurchase.fr3', '2');
end;

procedure TFRpPo50.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalLocat = Mrok then
    Edit_Locat.TEXT := fFindPO.Keyno;
end;

procedure TFRpPo50.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalAP = Mrok then
    EDIT1.TEXT := fFindPO.Keyno;
end;

procedure TFRpPo50.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalParts = Mrok then
    Edit2.TEXT := fFindPO.Keyno;
end;

procedure TFRpPo50.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalParts = Mrok then
    EDIT3.TEXT := fFindPO.Keyno;
end;

procedure TFRpPo50.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpPo50.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

end.

