unit ArRp50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, QuickRpt, Printers, ImgList,
  ComCtrls, ToolWin, Mask, AdvGroupBox, AdvOfficeButtons, AdvGlowButton,
  AdvToolBar, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, Data.DB, QExport4DBF, QExport4PDF,
  QExport4RTF, QExport4Docx, QExport4XLS, QExport4, QExport4Xlsx, Vcl.Menus,
  AdvMenus, BusinessSkinForm, frxBarcode, frxFDComponents, frxTableObject,
  frxChBox, frxGradient, frxRich, frxExportXLSX, frxExportImage, frxCross,
  frxExportCSV, frxClass, frxExportBaseDialog, frxExportPDF, frxBDEComponents,
  frxDCtrl, frxChart;

type
  TArRp_50 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label20: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    RadioGroup1: TAdvOfficeRadioGroup;
    FSortRadio: TAdvOfficeRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    EditBtn: TAdvGlowButton;
    Export: TAdvGlowButton;
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
    SaveDialog1: TSaveDialog;
    QExport4DBF1: TQExport4DBF;
    Query2: TFDQuery;
    Query2BILLNO: TStringField;
    Query2LOCAT: TStringField;
    Query2CUSCODE: TStringField;
    Query2TOTAL: TFloatField;
    Query2DISAMT: TFloatField;
    Query2NETTOT: TFloatField;
    Query2BILLDT: TDateField;
    Query2VAT3AMT: TFloatField;
    Query2INVNO: TStringField;
    Query2CANDAT: TDateTimeField;
    Query2CANCELID: TStringField;
    Query2SYSTM: TStringField;
    frxChartObject1: TfrxChartObject;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxCrossObject1: TfrxCrossObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxReportTableObject1: TfrxReportTableObject;
    frxFDComponents1: TfrxFDComponents;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevbtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportClick(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure WordDocument1Click(Sender: TObject);
    procedure WordDocument2Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure DBF1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    aReport: TQuickRep;
    procedure PickReport;
  public
    SortText: string;
    { Public declarations }
    procedure Do_Export_Data;
  end;

var
  ArRp_50: TArRp_50;

implementation

uses
  ArRp51, DmAr, uSrcDlg, uSoftfirm, Dmsec;

{$R *.DFM}

procedure TArRp_50.Do_Export_Data;
begin
  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT BILLNO,LOCAT,CUSCODE,TOTAL,DISAMT,NETTOT,BILLDT,VAT3AMT, ' +
      'INVNO,PAYCONT,FLAG,CANDAT,CANCELID,SYSTM FROM ARPAYTRN ' +
      'WHERE (LOCAT LIKE :PLOCAT) AND (BILLDT BETWEEN :PFDATE AND :PTDATE) AND (PAYTYP LIKE :PPAYTYPE) ');
    params[0].AsString := Edit_Locat.Text + '%';
    params[1].AsDate := Edit_dateFrom.Date;
    params[2].AsDate := Edit_DateTo.Date;
    params[3].AsString := Edit4.Text + '%';
    open;
  end;
end;

procedure TArRp_50.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_5_5');
end;

procedure TArRp_50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  ArRp_50 := nil;
end;

procedure TArRp_50.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TArRp_50.PickReport;
begin
  case FSortRadio.ItemIndex of
    0:
      SortText := 'เรียงตามสาขา';
    1:
      SortText := 'เรียงตามรหัสลูกหนี้';
    2:
      SortText := 'เรียงตามใบวางบิล';
  end;
  Application.CreateForm(TQRpAr_51, QRpAr_51);
end;

procedure TArRp_50.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArRp_50.PrevbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'RP_ARPAYMENT.fr3','1');
end;

procedure TArRp_50.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModallOCAT = Mrok then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TArRp_50.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPAYTYP = Mrok then
    Edit4.Text := fSrcDlg.Keyno;
end;

procedure TArRp_50.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'RP_ARPAYMENT.fr3','2');
end;

procedure TArRp_50.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  FSortRadio.ItemIndex := 0;
end;

procedure TArRp_50.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  SortText, SLType, XFl: string;
begin
  case FSortRadio.ItemIndex of
    0:
      SortText := '0';
    1:
      SortText := '1';
    2:
      SortText := '2';
  end;

  if UpperCase(VarName) = 'PORDER' then
    Value := SortText;

  if RadioGroup1.ItemIndex = 0 then
    SLType := '0';
  if RadioGroup1.ItemIndex = 1 then
    SLType := '2';

  case RadioGroup1.Itemindex of
    0:
      SLType := '0';
    1:
      SLType := '2';
    2:
      SLType := '3';
    3:
      SLType := '4';
  end;
  if UpperCase(VarName) = 'PSLTYPE' then
    Value := SLType;

  case RadioGroup1.Itemindex of
    0:
      XFl := '0';
    1:
      XFl := '1';
    2:
      XFl := '2';
    3:
      XFl := '3';
    4:
      XFl := '4';
    5:
      XFl := '5';
  end;
  if UpperCase(VarName) = 'PXFL' then
    Value := XFl;

  if UpperCase(VarName) = 'PLOCAT' then
    Value := edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PPLOCAT' then
    Value := edit_Locat.Text;
  if UpperCase(VarName) = 'PPAYTYPE' then
    Value := edit4.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
end;

procedure TArRp_50.ExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TArRp_50.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TArRp_50.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TArRp_50.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TArRp_50.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TArRp_50.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TArRp_50.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

