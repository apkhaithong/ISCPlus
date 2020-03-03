unit RpPo10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, BusinessSkinForm, AdvGlowButton,
  AdvToolBar, AdvGroupBox, AdvOfficeButtons, cxButtonEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, AdvPanel, frxExportXLSX, frxRich, frxTableObject, frxClass,
  frxDCtrl, frxFDComponents, frxGradient, frxExportImage, frxExportPDF,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFRpPo10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    EDIT_LOCAT: TcxLookupComboBox;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    edTypePo: TcxButtonEdit;
    Edit_Apcode: TcxButtonEdit;
    SortRadio: TAdvOfficeRadioGroup;
    qrLocatMaster: TFDQuery;
    qrLocatMasterLOCATCD: TStringField;
    qrLocatMasterLOCATNM: TStringField;
    DataSource2: TDataSource;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    cxButtonEdit1: TcxButtonEdit;
    Label3: TLabel;
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
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevbtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit_ApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTypePoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure AdvOfficeRadioGroup1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
   { Private declarations }
  public
    { Public declarations }
//     Company :String;
    FromDate, ToDate: TdateTime;
  end;

var
  FRpPo10: TFRpPo10;

implementation

uses
  Dmpo, uFindPO, uSoftFirm, unfrPreview, Dm1, uSrcDLG, DMSEC;

{$R *.DFM}

procedure TFRpPo10.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFRpPo10.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TfFindPO, fFindPO);
  if fFindPO.ShowModalAP = Mrok then
    Edit_APcode.Text := fFindPO.Keyno;
end;

procedure TFRpPo10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  qrLocatMaster.Close;
  FRpPo10 := nil;
end;

procedure TFRpPo10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpPo10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_2_1');
  SortRadio.ItemIndex := 0;
end;

procedure TFRpPo10.PrevbtnClick(Sender: TObject);
begin
  if AdvOfficeRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PoApMastGRPAP.fr3', '1')
  else if AdvOfficeRadioGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PoApMastGRPPONO.fr3', '1')
  else if AdvOfficeRadioGroup1.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PoApMastGRPPODT.fr3', '1')
  else if AdvOfficeRadioGroup1.ItemIndex = 3 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PoApMastGRPPART.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PoApMast.fr3', '1');
end;

procedure TFRpPo10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRpPo10.frxReport1GetValue(const VarName: string; var Value: Variant);
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

  if Uppercase(VarName) = 'PLOCAT' then
  begin
    if Edit_Locat.Text = '' then
      Value := '%'
    else
      Value := Edit_Locat.EditValue + '%';
  end;

  if UpperCase(VarName) = 'PAPCODE' then
    Value := Edit_Apcode.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PPOTYPE' then
    Value := edTypePo.Text + '%';
  if UpperCase(VarName) = 'PPONO' then
    Value := cxButtonEdit1.Text + '%';

  if UpperCase(VarName) = 'PHEADER' then
    Value := AdvOfficeRadioGroup1.Items.Text + '%';
end;

procedure TFRpPo10.EditBtnClick(Sender: TObject);
begin
  if AdvOfficeRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PoApMastGRPAP.fr3', '2')
  else if AdvOfficeRadioGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PoApMastGRPPONO.fr3', '2')
  else if AdvOfficeRadioGroup1.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PoApMastGRPPODT.fr3', '2')
  else if AdvOfficeRadioGroup1.ItemIndex = 3 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PoApMastGRPPART.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_PoApMast.fr3', '2');
end;

procedure TFRpPo10.FormShow(Sender: TObject);
begin
  Edit_Locat.EditValue := SFMain.Xlocat;
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
  qrLocatMaster.Open;
end;

procedure TFRpPo10.Edit_ApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindPO, fFindPO);
  if FFindPO.ShowModalAP = Mrok then
    Edit_APcode.Text := fFindPO.Keyno;
end;

procedure TFRpPo10.edTypePoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalPOTYPE = Mrok then
    edTypePo.Text := fFindPO.Keyno;
end;

procedure TFRpPo10.AdvOfficeRadioGroup1Click(Sender: TObject);
begin
  SortRadio.Enabled := AdvOfficeRadioGroup1.ItemIndex = 4;
end;

procedure TFRpPo10.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPO = Mrok then
    cxButtonEdit1.Text := fSrcDlg.KeyNo;
end;

end.

