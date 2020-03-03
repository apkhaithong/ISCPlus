unit ArRp10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, AdvGlowButton, AdvToolBar, AdvGroupBox,
  AdvOfficeButtons, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, QExport4DBF, QExport4PDF,
  QExport4RTF, QExport4Docx, QExport4XLS, QExport4, QExport4Xlsx, Vcl.Menus,
  AdvMenus, BusinessSkinForm, frxBarcode, frxChart, frxFDComponents,
  frxTableObject, frxChBox, frxGradient, frxRich, frxExportXLSX, frxExportImage,
  frxCross, frxExportCSV, frxClass, frxExportBaseDialog, frxExportPDF,
  frxBDEComponents, frxDCtrl;

type
  TArRp_10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label7: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Option: TAdvOfficeRadioGroup;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioGroup2: TAdvOfficeRadioGroup;
    FSortRadio: TAdvOfficeRadioGroup;
    SaveDialog1: TSaveDialog;
    qrArBalance: TFDQuery;
    qrArBalanceLOCAT: TStringField;
    qrArBalanceCUSCODE: TStringField;
    qrArBalanceINVNO: TStringField;
    qrArBalanceINVDATE: TDateField;
    qrArBalanceINVDUE: TDateField;
    qrArBalanceTAXNO: TStringField;
    qrArBalanceNETTOTAL: TFloatField;
    qrArBalancePAYAMT: TFloatField;
    qrArBalanceKANG: TFloatField;
    qrArBalanceRTNAMT: TFloatField;
    qrArBalanceNAME1: TStringField;
    qrArBalanceNAME2: TStringField;
    qrArBalanceBALANCE: TFloatField;
    qrArBalanceVATAMT: TFloatField;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    QExport4DBF1: TQExport4DBF;
    Query2: TFDQuery;
    Query2LOCAT: TStringField;
    Query2CUSCODE: TStringField;
    Query2INVNO: TStringField;
    Query2INVDATE: TDateField;
    Query2INVDUE: TDateField;
    Query2TAXNO: TStringField;
    Query2NETTOTAL: TFloatField;
    Query2JOBNO: TStringField;
    Query2PAYAMT: TFloatField;
    Query2KANG: TFloatField;
    Query2RTNAMT: TFloatField;
    Query2SNAM: TStringField;
    Query2NAME1: TStringField;
    Query2NAME2: TStringField;
    Query2BALANCE: TFloatField;
    Query2VATAMT: TFloatField;
    Query2FLAG: TStringField;
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
    frxChartObject1: TfrxChartObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure FormCreate(Sender: TObject);
    procedure PrevbtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

  public
    SortText: string;
    { Public declarations }
    procedure Do_Export_Data;
  end;

var
  ArRp_10: TArRp_10;

implementation

uses
  DmAr, Srchdlgar, uSrcDlgAr, USoftFirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TArRp_10.Do_Export_Data;
var
  XKANG, XTypDebt, XTypTax, XSort: string;
begin
  case Option.ItemIndex of
    0:
      XKANG := ' AND (A.FLAG=''2'' OR A.FLAG=''X'' OR A.FLAG=''D'') AND (A.KANG >0)';
    1:
      XKANG := ' AND (A.FLAG=''2'' OR A.FLAG=''X'' OR A.FLAG=''D'') ';
    2:
      XKANG := ' AND (A.FLAG=''7'') ';
  end;

  case RadioGroup1.ItemIndex of
    0:
      XTypDebt := ' AND (A.REFINV=''IC'')  AND SUBSTR(TAXNO,2,2)<>''FE'' ';
    1:
      XTypDebt := ' AND (A.REFINV<>''IC'')  AND SUBSTR(TAXNO,2,2)<>''FE'' ';
    2:
      XTypDebt := ' AND SUBSTR(TAXNO,2,2)<>''FE'' ';
  end;

  case RadioGroup2.ItemIndex of
    0:
      XTypTax := ' AND (A.TAXDATE IS NOT NULL) ';
    1:
      XTypTax := ' AND (A.TAXDATE IS NULL) ';
    2:
      XTypTax := '';
  end;

  case FSortRadio.ItemIndex of
    0:
      XSort := ' ORDER BY CUSCODE,INVDATE,INVNO';
    1:
      XSort := ' ORDER BY TAXNO';
    2:
      XSort := ' ORDER BY INVDUE';
  end;

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT A.LOCAT,A.CUSCODE,A.INVNO,A.INVDATE,A.INVDUE,A.TAXNO,(A.NETTOTAL-A.RTNAMT) AS NETTOTAL,A.JOBNO, ' +
      '(A.SMPAY+A.SMCHQ) AS PAYAMT,A.KANG,A.RTNAMT,B.SNAM,B.NAME1,B.NAME2,(A.NETTOTAL-A.VATAMT) AS BALANCE,A.VATAMT,A.FLAG ' +
      'FROM ARINVOI A,CUSTMAST B ' +
      'WHERE A.CUSCODE=B.CUSCOD ' + XKANG +
      'AND A.CUSCODE LIKE :PCUST AND A.LOCAT LIKE :PLOCAT AND A.INVNO LIKE :PINVNO ' +
      'AND (A.INVDATE >= :PFDATE AND A.INVDATE <= :PTDATE) ' + XTypTax + XTypDebt + XSort);
    params[0].AsString := Edit3.Text + '%';
    params[1].AsString := Edit_Locat.Text + '%';
    params[2].AsString := Edit4.Text + '%';
    params[3].AsDate := Edit_dateFrom.Date;
    params[4].AsDate := Edit_DateTo.Date;
    open;
  end;
end;

procedure TArRp_10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_5_1');
end;

procedure TArRp_10.PrevbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RepArKang.fr3','1');
end;

procedure TArRp_10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TArRp_10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  ArRp_10 := nil;
end;

procedure TArRp_10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArRp_10.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RepArKang.fr3','2');
end;

procedure TArRp_10.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XSort, XTypDebt, XTypTax, XKang: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PINVNO' then
    Value := Edit4.Text + '%';
  if UpperCase(VarName) = 'PCUST' then
    Value := Edit3.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;

  case Option.ItemIndex of
    0:
      XKang := '0';
    1:
      XKang := '1';
    2:
      XKang := '2';
  end;
  if UpperCase(VarName) = 'PKANG' then
    Value := XKang;

  case RadioGroup1.ItemIndex of
    0:
      XTypDebt := '0';
    1:
      XTypDebt := '1';
    2:
      XTypDebt := '2';
  end;
  if UpperCase(VarName) = 'PTYPEDEBT' then
    Value := XTypDebt;

  case RadioGroup2.ItemIndex of
    0:
      XTypTax := '0';
    1:
      XTypTax := '1';
    2:
      XTypTax := '2';
  end;
  if UpperCase(VarName) = 'PTYPETAX' then
    Value := XTypTax;

  case FSortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;
end;

procedure TArRp_10.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModallOCAT = Mrok then
    Edit_Locat.Text := fSrcDlgAR.Keyno;
end;

procedure TArRp_10.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalAR = Mrok then
    Edit3.Text := fSrcDlgAR.Keyno;
end;

procedure TArRp_10.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalArinv = Mrok then
    edit4.text := fSrcDlgAR.Keyno;
end;

procedure TArRp_10.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateFrom.Date := Date;
  Edit_DateTo.Date := Date;
end;

procedure TArRp_10.ExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TArRp_10.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TArRp_10.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TArRp_10.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TArRp_10.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TArRp_10.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TArRp_10.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

