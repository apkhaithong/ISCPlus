unit Strpa40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, Csv_txt, ImgList, ToolWin, cxButtonEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvToolBar,
  AdvGlowButton, AdvGroupBox, AdvOfficeButtons, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, QExport4DBF, QExport4PDF,
  QExport4RTF, QExport4Docx, QExport4XLS, QExport4, QExport4Xlsx, Vcl.Menus,
  AdvMenus, BusinessSkinForm, frxClass, frxExportXLSX, frxRich, frxDCtrl,
  frxTableObject, frxExportPDF, frxExportImage, frxGradient, frxFDComponents,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFmSTRpa40 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label20: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    RadioGp2: TAdvOfficeRadioGroup;
    RadioGp1: TAdvOfficeRadioGroup;
    Edit_dateFrom: TcxDateEdit;
    Edit_dateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    SaveDialog1: TSaveDialog;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    ExportBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    EditBtn: TAdvGlowButton;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    WordDocument1: TMenuItem;
    WordDocument2: TMenuItem;
    PDF1: TMenuItem;
    DBF1: TMenuItem;
    QExport4Xlsx1: TQExport4Xlsx;
    QExport4XLS1: TQExport4XLS;
    QExport4Docx1: TQExport4Docx;
    QExport4RTF1: TQExport4RTF;
    QExport4PDF1: TQExport4PDF;
    QExport4DBF1: TQExport4DBF;
    qrSalePart: TFDQuery;
    qrSalePartPKLOCAT: TStringField;
    qrSalePartPKDATE: TDateField;
    qrSalePartPKNO: TStringField;
    qrSalePartGROUP1: TStringField;
    qrSalePartPARTNO: TStringField;
    qrSalePartTOTPRC: TFloatField;
    qrSalePartCOST: TFloatField;
    qrSalePartTYPE: TStringField;
    qrSalePartMODEL: TStringField;
    qrSalePartJOBNO: TStringField;
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
    procedure PrnBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExportBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EditBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    aReport: TQuickRep;
    procedure PickReport;
  public
    SortText, XTypecod: string;
    XYear, XMonth: Word;
    FrmDate, ToDate: TDateTime;
    { Public declarations }
  end;

var
  FmSTRpa40: TFmSTRpa40;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  STRpA41, DmSet1, uSrCDlg, uSoftfirm, Dmsec;

{$R *.DFM}

procedure TFmSTRpa40.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRpa40.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_C');
  FormatSettings.ShortDateFormat := ('dd/mm/yyyy');
  RadioGp1.ItemIndex := 0;
  RadioGp2.ItemIndex := 0;
  XDate := Date;
  DecodeDate(XDate, XYear, XMonth, XDay);
end;

procedure TFmSTRpa40.PickReport;
begin
  case RadioGp2.ItemIndex of
    0:
      SortText := 'เรียงตามเลขที่ใบส่งคืน';
    1:
      SortText := 'เรียงตามวันที่ส่งคืน';
  end;
  if RadioGp1.ItemIndex = 0 then
  begin
    Application.CreateForm(TFmSTRpa41, FmSTRpa41);
    aReport := FmSTRpa41.Qrep;
  end;
end;

procedure TFmSTRpa40.PrnBtnClick(Sender: TObject);
begin
  PickReport;
  aReport.Print;
end;

procedure TFmSTRpa40.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'RP_APINVRT.FR3','1');
end;

procedure TFmSTRpa40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRpA40 := nil;
end;

procedure TFmSTRpa40.ExportBtnClick(Sender: TObject);
begin
  ExportBtn.Enabled := False;
  PickReport;
  if (SaveDialog1.Execute) then
  begin
    if RadioGp1.ItemIndex = 0 then
      ExportCSV(FmSTRpa41.Query50, SaveDialog1.FileName);
  end;
  ExportBtn.Enabled := True;
end;

procedure TFmSTRpa40.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTRpa40.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
 //  EditBtn.Visible     := SFMain.XDesign = 'Y';
end;

procedure TFmSTRpa40.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpa40.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
    edit1.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpa40.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpa40.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit4.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpa40.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit7.Text := fSrcDlg.Keyno;
end;

procedure TFmSTRpa40.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'RP_APINVRT.FR3','2');
end;

procedure TFmSTRpa40.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XORD, PF, PT: string;
begin
  if RadioGp2.ItemIndex = 0 then
    XORD := '1'
  else
    XORD := '2';

  if Edit3.Text = '' then
    PF := ''
  else
    PF := Edit3.Text;

  if Edit4.Text = '' then
    PT := 'โโโ'
  else
    PT := Edit4.Text;

  if UpperCase(VarName) = 'PFPART' then
    Value := PF;
  if UpperCase(VarName) = 'PTPART' then
    Value := PT;
  if UpperCase(VarName) = 'PORDER' then
    Value := XORD;
  if UpperCase(VarName) = 'PAPCODE' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PLOC' then
    Value := Edit_Locat.Text;
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_dateFrom.date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_dateTo.date;
  if UpperCase(VarName) = 'PGROUP1' then
    Value := Edit7.Text + '%';
end;

end.

