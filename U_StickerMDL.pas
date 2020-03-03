unit U_StickerMDL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, ToolWin, ExtCtrls, RzPanel, RzSpnEdt, DB,
  RzBorder, Mask, cxDropDownEdit, cxCalendar, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar,
  AdvGroupBox, AdvOfficeButtons, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF, frxExportImage,
  frxGradient, frxFDComponents, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TUStickerMDL = class(TForm)
    AdvPanel1: TAdvPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit3: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit5: TcxTextEdit;
    edTumb: TcxTextEdit;
    edAump: TcxButtonEdit;
    edProv: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_dateTo: TcxDateEdit;
    raSelRep: TAdvOfficeRadioGroup;
    Query1: TFDQuery;
    SaveDialog1: TSaveDialog;
    qrCustomer: TFDQuery;
    qrCustomerTYPE: TStringField;
    qrCustomerMDLCOD: TStringField;
    qrCustomerCOLOR: TStringField;
    qrCustomerCC: TStringField;
    qrCustomerSTRNO: TStringField;
    qrCustomerENGNO: TStringField;
    qrCustomerREGNO: TStringField;
    qrCustomerCUSCOD: TStringField;
    qrCustomerSNAM: TStringField;
    qrCustomerNAME1: TStringField;
    qrCustomerNAME2: TStringField;
    qrCustomerADDR1: TStringField;
    qrCustomerADDR2: TStringField;
    qrCustomerTUMB: TStringField;
    qrCustomerZIP: TStringField;
    qrCustomerTELP: TStringField;
    qrCustomerAUMPDES: TStringField;
    qrCustomerPROVDES: TStringField;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
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
    procedure EditBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edAumpPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edProvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UStickerMDL: TUStickerMDL;
  frPath: string;

implementation

uses
  USoftFirm, uSrcDlg, uFindData, unfrPreview, Dmsec;
{$R *.dfm}

procedure TUStickerMDL.EditBtnClick(Sender: TObject);
begin
  if raSelRep.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_StickerMD.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepHisCust.fr3', '2');
end;

procedure TUStickerMDL.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PMODEL' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PTYPE' then
    Value := Edit3.Text + '%';
  if UpperCase(VarName) = 'PYEAR' then
    Value := Edit5.Text + '%';
  if UpperCase(VarName) = 'PGROUPAR' then
    Value := Edit6.Text + '%';
  if UpperCase(VarName) = 'PTUMB' then
    Value := edTumb.Text + '%';
  if UpperCase(VarName) = 'PAUMP' then
    Value := edAump.Text + '%';
  if UpperCase(VarName) = 'PPROV' then
    Value := edProv.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
end;

procedure TUStickerMDL.PrevBtnClick(Sender: TObject);
begin
  if raSelRep.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_StickerMD.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepHisCust.fr3', '1');
end;

procedure TUStickerMDL.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TUStickerMDL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  UStickerMDL := nil;
end;

procedure TUStickerMDL.FormShow(Sender: TObject);
begin
  edit_DateFrom.Date := Date;
  eDit_DateTo.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TUStickerMDL.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalType = Mrok then
    Edit3.Text := fSrcDlg.KeyNo;
end;

procedure TUStickerMDL.Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFinddata, fFindData);
  if fFinddata.ShowModalArgroup = Mrok then
    Edit6.Text := fFindData.Keyno;
end;

procedure TUStickerMDL.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalModel = Mrok then
    Edit1.Text := fSrcDlg.KeyNo;
end;

procedure TUStickerMDL.edAumpPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetAump = Mrok then
    edAump.Text := fFindData.Keyno;
end;

procedure TUStickerMDL.edProvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetProv = Mrok then
    edProv.Text := fFindData.Keyno;
end;

procedure TUStickerMDL.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP03_1');
end;

procedure TUStickerMDL.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

