unit RptxSl10;

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
  QExport4, QExport4Xlsx, BusinessSkinForm, frxExportXLSX, frxRich,
  frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRptxSl10 = class(TForm)
    DataSource1: TDataSource;
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    RadioGroup2: TAdvOfficeRadioGroup;
    RadioGroup1: TAdvOfficeRadioGroup;
    Query1: TFDQuery;
    Query2: TFDQuery;
    Query2TAXDT: TDateField;
    Query2TAXNO: TStringField;
    Query2SNAM: TStringField;
    Query2NAME1: TStringField;
    Query2NAME2: TStringField;
    Query2DESCP: TStringField;
    Query2NETAMT: TFloatField;
    Query2VATAMT: TFloatField;
    Query2TOTAMT: TFloatField;
    Query2FLAG: TStringField;
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
    Label17: TLabel;
    Query2STRNO: TStringField;
    Query2FINCOD: TStringField;
    wwFDate: TcxDateEdit;
    wwTDate: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
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
    Query2CUSTOMER: TStringField;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  FRptxSl10: TFRptxSl10;

implementation

uses
  Srchset1, USoftFirm, unfrPreview, Dm1, DMSEC;

{$R *.DFM}

procedure TFRptxSl10.Do_Export_Data;
var
  XTyp, Xsort: string;
begin
  case RadioGroup2.ItemIndex of
    0:
      XTyp := 'TAXTYP=''S'' ';
    1:
      XTyp := '(TAXTYP=''R'' OR TAXTYP=''O'') ';
    2:
      XTyp := '(TAXTYP=''1'' OR TAXTYP=''2'' OR TAXTYP=''3'' OR TAXTYP=''4'' OR ' +
        'TAXTYP=''5''  OR TAXTYP=''6'' OR TAXTYP=''7'' OR TAXTYP=''8'' OR TAXTYP=''9'') ';
    3:
      XTyp := '(TAXTYP=''S'' OR TAXTYP=''R'' OR TAXTYP=''O'' OR TAXTYP=''1'' OR TAXTYP=''2'' OR ' +
        'TAXTYP=''3'' OR TAXTYP=''4'' OR TAXTYP=''5'' OR TAXTYP=''6'' OR TAXTYP=''7'' OR ' +
        'TAXTYP=''8'' OR TAXTYP=''9'') ';
  end;

  case RadioGroup1.ItemIndex of
    0:
      Xsort := 'TAXDT ';
    1:
      Xsort := 'CONTNO ';
    2:
      Xsort := 'TAXNO ';
    3:
      Xsort := 'INPDT';
  end;

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT LOCAT,TAXNO,TAXDT,TSALE,CONTNO,CUSCOD,RTRIM(SNAM)||RTRIM(NAME1)||''   ''||RTRIM(NAME2) CUSTOMER,' +
      'SNAM,NAME1,NAME2, ' +
      'STRNO,NETAMT,VATAMT,TOTAMT,CANDT,TAXTYP,TAXFLG,VATRT,FLAG,FPAY,LPAY,DESCP,FINCOD  ' +
      'FROM TAXTRAN ' +
      'WHERE (LOCAT LIKE :VLOCAT) AND (TAXDT BETWEEN :VFDATE AND :VTDATE) AND (FLAG <> ''C'' OR FLAG IS NULL) ' +
      'AND  (TSALE LIKE :VTSALE) AND (FINCOD LIKE :VFINCOD OR FINCOD IS NULL) AND ' + XTyp + '  ORDER BY ' + Xsort);
    params[0].AsString := Edit1.Text + '%';
    params[1].AsDate := wwFDate.Date;
    params[2].AsDate := wwTDate.Date;
    params[3].AsString := Edit4.Text + '%';
    params[4].AsString := cxButtonEdit1.Text + '%';
    open;
  end;
end;

procedure TFRptxSl10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP04_1');
end;

procedure TFRptxSl10.FormShow(Sender: TObject);
begin
  edit1.Text := SFMain.Xlocat;
  wwFDate.Date := Date;
  wwTDate.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';

  RadioGroup1.ItemIndex := 1;
  RadioGroup2.ItemIndex := 0;
end;

procedure TFRptxSl10.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  Xtyp, Xsort: string;
begin
  if UpperCase(VarName) = 'VLOCAT' then
    Value := edit1.Text + '%';
  if UpperCase(VarName) = 'VTSALE' then
    Value := edit4.Text + '%';
  if UpperCase(VarName) = 'VFDATE' then
    Value := wwFDate.Date;
  if UpperCase(VarName) = 'VTDATE' then
    Value := wwTDate.Date;
  if UpperCase(VarName) = 'VFINCOD' then
    Value := cxButtonEdit1.Text + '%';

  case RadioGroup2.ItemIndex of
    0:
      Xtyp := '0';
    1:
      Xtyp := '1';
    2:
      Xtyp := '2';
    3:
      Xtyp := '3';
  end;
  if UpperCase(VarName) = 'VSORT' then
    Value := Xtyp;

  case RadioGroup1.ItemIndex of
    0:
      Xsort := '0';
    1:
      Xsort := '1';
    2:
      Xsort := '2';
    3:
      Xsort := '3';
  end;
  if UpperCase(VarName) = 'VRADIO' then
    Value := Xsort;
end;

procedure TFRptxSl10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  FRptxSl10 := nil;
end;

procedure TFRptxSl10.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepTaxSale.fr3', '1'); {1 = Preview Report}
end;

procedure TFRptxSl10.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepTaxSale.fr3', '2'); {2 = Design Report}
end;

procedure TFRptxSl10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRptxSl10.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit1.text := SearchSet.Keyno;
end;

procedure TFRptxSl10.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalTypSale = MrOk then
    Edit4.text := SearchSet.Keyno;
end;

procedure TFRptxSl10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRptxSl10.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetFinmst = Mrok then
    cxButtonEdit1.Text := SearchSet.Keyno;
end;

procedure TFRptxSl10.ExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFRptxSl10.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFRptxSl10.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFRptxSl10.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFRptxSl10.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFRptxSl10.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFRptxSl10.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

