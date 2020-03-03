unit unRpInvoiClaim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, qrprntr, QuickRpt, printers, ComCtrls, ToolWin,
  ImgList, Mask, DB, AdvGlowButton, RzSpnEdt, AdvGroupBox, AdvOfficeButtons,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, QExport4DBF, QExport4PDF,
  QExport4RTF, QExport4Docx, QExport4XLS, Vcl.Menus, AdvMenus, bsSkinShellCtrls,
  QExport4, QExport4Xlsx, BusinessSkinForm, cxCheckBox, frxClass, frxExportXLSX,
  frxRich, frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRpInvoiClaim = class(TForm)
    DataSource1: TDataSource;
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    RadioGroup1: TAdvOfficeRadioGroup;
    Query1: TFDQuery;
    Query2: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    Export: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    QExportXLS1: TQExport4Xlsx;
    SaveDialog1: TbsSkinSaveDialog;
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
    cxCheckBox1: TcxCheckBox;
    wwFDate: TcxDateEdit;
    wwTDate: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Query2INVNO: TStringField;
    Query2INVDATE: TDateField;
    Query2CUSCOD: TStringField;
    Query2SNAM: TStringField;
    Query2NAME1: TStringField;
    Query2NAME2: TStringField;
    Query2CLAIMAMT: TFloatField;
    Query2PAYAMT: TFloatField;
    Query2DIFAMT: TFloatField;
    Query2SMPAY: TFloatField;
    Query2CLAIMNO: TStringField;
    Query2LOCAT: TStringField;
    Query2BILLNO: TStringField;
    Query2BILLDATE: TDateField;
    Query2VAT3: TFloatField;
    Query2VAT3AMT: TFloatField;
    Query2PAYMENT: TFloatField;
    Query2FLAG: TStringField;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
    procedure Do_Export_Data;
  end;

var
  FRpInvoiClaim: TFRpInvoiClaim;

implementation

uses
  Srchset1, usrcdlg1, USoftFirm, unfrPreview, Dm1, DMSEC;

{$R *.DFM}

procedure TFRpInvoiClaim.Do_Export_Data;
var
  Xsort: string;
begin
  case RadioGroup1.ItemIndex of
    0:
      Xsort := 'ORDER BY A.INVDATE ';
    1:
      Xsort := 'ORDER BY A.INVNO ';
    2:
      Xsort := 'ORDER BY A.CLAIMNO ';
  end;

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT A.INVNO,A.INVDATE,A.CUSCOD,B.SNAM,B.NAME1,B.NAME2,A.CLAIMAMT,A.PAYAMT,A.DIFAMT,A.SMPAY,A.CLAIMNO, ' +
      'A.LOCAT,C.BILLNO,C.BILLDATE,C.VAT3,C.VAT3AMT,C.PAYMENT,A.FLAG ' +
      'FROM INVOICLAIM A ' +
      'INNER JOIN  CUSTMAST B ' +
      'ON  A.CUSCOD=B.CUSCOD ' +
      'LEFT OUTER  JOIN PAYMENTCLAIM C ' +
      'ON A.INVNO=C.INVNO AND C.FLAG<>''C'' ' +
      'WHERE (A.INVDATE>=:PFDATE AND A.INVDATE<=:PTDATE) ' +
      'AND A.LOCAT LIKE :PLOCAT ' + Xsort);
    params[0].AsDate := wwFDate.Date;
    params[1].AsDate := wwTDate.Date;
    params[2].AsString := Edit1.Text + '%';
    open;
  end;
end;

procedure TFRpInvoiClaim.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_5_2');
end;

procedure TFRpInvoiClaim.FormShow(Sender: TObject);
begin
  edit1.Text := SFMain.Xlocat;
  wwFDate.Date := Date;
  wwTDate.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFRpInvoiClaim.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XPck, Xsort: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := edit1.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := wwFDate.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := wwTDate.Date;

  if cxCheckBox1.Checked = True then
    XPck := '1'
  else
    XPck := '2';

  if UpperCase(VarName) = 'PCK' then
    Value := XPck;

  case RadioGroup1.ItemIndex of
    0:
      Xsort := '0';
    1:
      Xsort := '1';
    2:
      Xsort := '2';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := Xsort;
end;

procedure TFRpInvoiClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  FRpInvoiClaim := nil;
end;

procedure TFRpInvoiClaim.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RpInvoiClaim.fr3', '1'); {1 = Preview Report}
end;

procedure TFRpInvoiClaim.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RpInvoiClaim.fr3', '2'); {2 = Design Report}
end;

procedure TFRpInvoiClaim.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRpInvoiClaim.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit1.text := SearchSet.Keyno;
end;

procedure TFRpInvoiClaim.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpInvoiClaim.ExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFRpInvoiClaim.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFRpInvoiClaim.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFRpInvoiClaim.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFRpInvoiClaim.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFRpInvoiClaim.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFRpInvoiClaim.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

