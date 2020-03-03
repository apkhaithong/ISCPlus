unit URepSalePDI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, Db, QuickRpt, printers, qrprntr, ImgList,
  ComCtrls, ToolWin, Mask, AdvGlowButton, RzSpnEdt, cxGraphics, cxDropDownEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, AdvGroupBox, AdvOfficeButtons, AdvToolBar, AdvPanel,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, QExport4PDF, QExport4RTF,
  QExport4Docx, QExport4DBF, QExport4XLS, Vcl.Menus, AdvMenus, bsSkinShellCtrls,
  QExport4, QExport4Xlsx, BusinessSkinForm, frxClass, frxExportXLSX, frxRich,
  frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRepSalePDI = class(TForm)
    AdvPanel1: TAdvPanel;
    Label20: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    wwDBDateF: TcxDateEdit;
    wwDBDateT: TcxDateEdit;
    ComboBox1: TcxComboBox;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Query2: TFDQuery;
    Query1: TFDQuery;
    DataSource1: TDataSource;
    Export: TAdvGlowButton;
    Query2IDNO: TIntegerField;
    Query2SDATE: TDateField;
    Query2MODEL: TStringField;
    Query2CUSCOD: TStringField;
    Query2STRNO: TStringField;
    Query2ENGNO: TStringField;
    Query2CUSTOMER: TStringField;
    Query2ADDR: TStringField;
    Query2RODE: TStringField;
    Query2TUMB: TStringField;
    Query2AUMPDES: TStringField;
    Query2PROVDES: TStringField;
    Query2ZIP: TStringField;
    Query2TELP: TStringField;
    QExport4Xlsx1: TQExport4Xlsx;
    SaveDialog1: TbsSkinSaveDialog;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    WordDocument1: TMenuItem;
    WordDocument2: TMenuItem;
    PDF1: TMenuItem;
    QExport4XLS1: TQExport4XLS;
    QExport4DBF1: TQExport4DBF;
    QExport4Docx1: TQExport4Docx;
    QExport4RTF1: TQExport4RTF;
    QExport4PDF1: TQExport4PDF;
    DBF1: TMenuItem;
    AdvGlowButton1: TAdvGlowButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
  public
    { Public declarations }
    TS, TK, TC, TC1: string;
    procedure Do_Export_Data;
  end;

var
  FRepSalePDI: TFRepSalePDI;

implementation

uses
  USoftFirm, Srchset1, unfrPreview, Dm1, DMSEC;

{$R *.DFM}
procedure TFRepSalePDI.Do_Export_Data;
begin
  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT IDNO, SDATE, MODEL, CUSCOD, STRNO, ENGNO, CUSTOMER, ADDR, RODE, TUMB, AUMPDES, PROVDES, ZIP, TELP ' +
      'FROM VIEW_EXP2EXL ' +
      'WHERE (SDATE BETWEEN :SFDATE AND :STDATE) ' +
      'ORDER BY IDNO,SDATE');
    params[0].AsDate := wwDBDateF.Date;
    params[1].AsDate := wwDBDateT.Date;
    open;
  end;
end;

procedure TFRepSalePDI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
//  frReport1.Free;
  FRepSalePDI := nil;
end;

procedure TFRepSalePDI.FormShow(Sender: TObject);
begin
  wwDBDateT.Date := Date;
  wwDBDateF.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFRepSalePDI.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_2_7');
end;

procedure TFRepSalePDI.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SaleAllPDI.fr3', '2'); {2 = Design Report}
end;

procedure TFRepSalePDI.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  TK: string;
begin
  if Uppercase(VarName) = 'SFDATE' then
    Value := wwDBDateF.Date;
  if Uppercase(VarName) = 'STDATE' then
    Value := wwDBDateT.Date;
  case Combobox1.ItemIndex of
    0:
      TS := 'C%';
    1:
      TS := 'F%';
    2:
      TS := '%';
  end;
  if Uppercase(VarName) = 'PTSALE' then
    Value := TS;
end;

procedure TFRepSalePDI.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFRepSalePDI.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SaleAllPDI.fr3', '1'); {1 = Preview Report}
end;

procedure TFRepSalePDI.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRepSalePDI.ExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFRepSalePDI.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFRepSalePDI.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFRepSalePDI.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFRepSalePDI.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFRepSalePDI.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFRepSalePDI.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

