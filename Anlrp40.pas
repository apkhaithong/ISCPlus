unit Anlrp40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DB, printers, ComCtrls, Mask, Grids, DBGrids,
  ImgList, ToolWin, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxCheckBox, AdvGroupBox,
  AdvOfficeButtons, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, bsSkinShellCtrls, Vcl.Menus,
  AdvMenus, QExport4DBF, QExport4PDF, QExport4RTF, QExport4Docx, QExport4XLS,
  QExport4, QExport4Xlsx, BusinessSkinForm, frxBDEComponents, frxExportPDF,
  frxExportCSV, frxCross, frxExportImage, frxClass, frxExportBaseDialog,
  frxExportXLSX, frxRich, frxGradient, frxChBox, frxTableObject,
  frxFDComponents, frxChart, frxDCtrl, frxBarcode;

type
  TFAnlrp40 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_dateTo: TcxDateEdit;
    CheckBox1: TcxCheckBox;
    RadioGroup2: TAdvOfficeRadioGroup;
    RadioGroup1: TAdvOfficeRadioGroup;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    QExport4Xlsx1: TQExport4Xlsx;
    QExport4XLS1: TQExport4XLS;
    QExport4Docx1: TQExport4Docx;
    QExport4RTF1: TQExport4RTF;
    QExport4PDF1: TQExport4PDF;
    QExport4DBF1: TQExport4DBF;
    Query2: TFDQuery;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    WordDocument1: TMenuItem;
    WordDocument2: TMenuItem;
    PDF1: TMenuItem;
    DBF1: TMenuItem;
    Export: TAdvGlowButton;
    SaveDialog1: TbsSkinSaveDialog;
    Query2LOCAT: TStringField;
    Query2TAXNO: TStringField;
    Query2CUSCOD: TStringField;
    Query2JOBNO: TStringField;
    Query2TAXDATE: TDateField;
    Query2BALANCE: TFloatField;
    Query2VAT: TFloatField;
    Query2TOTTAX: TFloatField;
    Query2PAYTYP: TStringField;
    Query2CANCELID: TStringField;
    Query2FLAG: TStringField;
    Query2CREDIT: TFloatField;
    Query2CASH: TFloatField;
    Query2DATAFRM: TStringField;
    Query2PARTTOT: TFloatField;
    Query2SERVTOT: TFloatField;
    Query2OTHTOT: TFloatField;
    Query2PART_ONLY: TFloatField;
    Query2SNAM: TStringField;
    Query2NAME1: TStringField;
    Query2NAME2: TStringField;
    Query2CUSTOMER: TStringField;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxChartObject1: TfrxChartObject;
    frxFDComponents1: TfrxFDComponents;
    frxReportTableObject1: TfrxReportTableObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    frxBDEComponents1: TfrxBDEComponents;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevbtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure ExportClick(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure WordDocument1Click(Sender: TObject);
    procedure WordDocument2Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure DBF1Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    SortText: string;
    XYear, XMonth: Word;
    FrmDate, ToDate: TDateTime;
    { Public declarations }
    procedure Do_Export_Data;
  end;

var
  FAnlrp40: TFAnlrp40;

implementation

uses
  USoftFirm, uSrcDlg, unfrPreview, Dm1, DMSEC;

{$R *.DFM}

procedure TFAnlrp40.Do_Export_Data;
var
  Xsort: string;
begin
  case RadioGroup2.ItemIndex of
    0:
      Xsort := 'A.TAXNO ';
    1:
      Xsort := 'A.CUSCOD ';
  end;

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT A.LOCAT,A.TAXNO,A.CUSCOD,RTRIM(SNAM)||RTRIM(NAME1)||''   ''||RTRIM(NAME2) CUSTOMER,A.JOBNO,A.TAXDATE,A.BALANCE,' +
      'A.VAT,A.TOTTAX,A.PAYTYP,A.CANCELID,A.FLAG,A.CREDIT,A.CASH, ' +
      'A.DATAFRM,A.PARTTOT,A.SERVTOT,A.OTHTOT,A.PART_ONLY,B.SNAM,B.NAME1,B.NAME2 ' +
      ' FROM VIEW_ACCOUNT A,CUSTMAST B ' +
      ' WHERE (A.TAXDATE>=:PFDATE AND A.TAXDATE<=:PTDATE) AND A.LOCAT LIKE :PLOCAT AND ' +
      ' A.CUSCOD=B.CUSCOD AND A.BALANCE>0 AND A.CANCELID IS NULL ORDER BY ' + Xsort);
    params[0].AsDate := Edit_dateFrom.Date;
    params[1].AsDate := Edit_dateTo.Date;
    params[2].AsString := Edit_Locat.Text + '%';
    open;
  end;
end;

procedure TFAnlrp40.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFAnlrp40.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_1_2');
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TFAnlrp40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FAnlrp40 := nil;
end;

procedure TFAnlrp40.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFAnlrp40.PrevbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'rp_RpTaxAcc.fr3','1');
end;

procedure TFAnlrp40.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'rp_RpTaxAcc.fr3','2');
end;

procedure TFAnlrp40.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

procedure TFAnlrp40.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  OPTION, XORD: string;
begin
        //เงื่อนไขของ Option
  if RadioGroup1.ItemIndex = 0 then
  begin
    Label2.Caption := 'IC';
    OPTION := Label2.Caption;
  end;
  if RadioGroup1.ItemIndex = 1 then
  begin
    Label2.Caption := 'CI';
    OPTION := Label2.Caption;
  end;
  if RadioGroup1.ItemIndex = 2 then
  begin
    Label2.Caption := '%';
    OPTION := Label2.Caption;
  end;


        //เงื่อนไขของ Order by
  case FAnlrp40.RadioGroup2.itemindex of
    0:
      XORD := '1';
    1:
      XORD := '3';
  end;

        //Parameter ของ Fast Report
  if UpperCase(VarName) = 'PORD' then
    Value := XORD;

  if UpperCase(VarName) = 'POPTION' then
    Value := OPTION;

  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';

  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;

  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
end;

procedure TFAnlrp40.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.Keyno;
end;

procedure TFAnlrp40.ExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFAnlrp40.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFAnlrp40.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFAnlrp40.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFAnlrp40.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFAnlrp40.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TFAnlrp40.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

end.

