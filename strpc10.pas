unit StRpC10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, AdvGroupBox, AdvOfficeButtons, AdvGlowButton,
  AdvToolBar, cxCheckBox, cxButtonEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, Vcl.Menus, AdvMenus,
  bsSkinShellCtrls, QExport4DBF, QExport4PDF, QExport4RTF, QExport4Docx,
  QExport4XLS, QExport4, QExport4Xlsx, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TStRp_C10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Edit_dateFrom: TcxDateEdit;
    Edit_dateTo: TcxDateEdit;
    EDIT_LOCAT: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    QExport4Xlsx1: TQExport4Xlsx;
    QExport4XLS1: TQExport4XLS;
    QExport4Docx1: TQExport4Docx;
    QExport4RTF1: TQExport4RTF;
    QExport4PDF1: TQExport4PDF;
    QExport4DBF1: TQExport4DBF;
    qrExportStk: TFDQuery;
    SaveDialog1: TbsSkinSaveDialog;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    WordDocument1: TMenuItem;
    WordDocument2: TMenuItem;
    PDF1: TMenuItem;
    DBF1: TMenuItem;
    AdvGlowButton2: TAdvGlowButton;
    qrExportStkPKNO: TStringField;
    qrExportStkPKLOCAT: TStringField;
    qrExportStkPKDATE: TDateField;
    qrExportStkCUSCOD: TStringField;
    qrExportStkOFFICCOD: TStringField;
    qrExportStkJOBNO: TStringField;
    qrExportStkPARTNO: TStringField;
    qrExportStkGROUP1: TStringField;
    qrExportStkDESC1: TStringField;
    qrExportStkUPRICE: TFloatField;
    qrExportStkQTYOUT: TFloatField;
    qrExportStkNETPRC: TFloatField;
    qrExportStkTOTPRC: TFloatField;
    qrExportStkSNAM: TStringField;
    qrExportStkNAME1: TStringField;
    qrExportStkNAME2: TStringField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
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
    SortText, OptnText, JobText: string;
    procedure Do_Export_Data;
  end;

var
  StRp_C10: TStRp_C10;

implementation

uses
  DmSet1, USoftFirm, uSrcDlg, unfrPreview, Dmsec;        //StRpC11,

{$R *.DFM}

procedure TStRp_C10.Do_Export_Data;
begin
  with qrExportStk do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT A.PKNO,A.PKLOCAT,A.PKDATE,A.CUSCOD,A.OFFICCOD, ' +
      'A.JOBNO,T.PARTNO,M.GROUP1,M.DESC1,T.UPRICE,T.QTYOUT,T.NETPRC,T.TOTPRC,B.SNAM,B.NAME1,B.NAME2 ' +
      'FROM PK_INVOI A INNER JOIN PK_TRANS T ON (A.PKNO=T.PKNO) ' +
      'LEFT JOIN INVMAST M ON (T.PARTNO=M.PARTNO) ' +
      'LEFT JOIN VIEW_CUST B ON (A.CUSCOD = B.CUSCOD) ' +
      'LEFT JOIN OFFICER C ON (A.OFFICCOD = C.CODE) ' +
      'WHERE A.PKLOCAT LIKE :PLOCAT AND (A.PKDATE BETWEEN :PFDATE AND :PTDATE) ' +
      'AND M.GROUP1 LIKE :PGROUP1 ' +
      'ORDER BY A.PKDATE,A.PKNO ');
    params[0].AsString := EDIT_LOCAT.Text + '%';
    params[1].AsDateTime := Edit_dateFrom.Date;
    params[2].AsDateTime := edit_Dateto.Date;
    params[3].AsString := Edit7.Text + '%';
    open;
  end;
end;

procedure TStRp_C10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_F');
end;

procedure TStRp_C10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  StRp_C10 := nil;
end;

procedure TStRp_C10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TStRp_C10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TStRp_C10.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := FSrcDlg.Keyno;
end;

procedure TStRp_C10.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit7.Text := fSrcDlg.Keyno;
end;

procedure TStRp_C10.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepOutPart.fr3', '1');
end;

procedure TStRp_C10.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepOutPart.fr3', '2');
end;

procedure TStRp_C10.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XORD: string;
begin
  if UpperCase(VarName) = 'PORDER' then
    Value := XORD;
  if UpperCase(VarName) = 'PLOCAT' then
    Value := EDIT_LOCAT.Text + '%';
  if UpperCase(VarName) = 'PLOC' then
    Value := EDIT_LOCAT.Text;
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_dateFrom.date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_dateTo.date;
  if UpperCase(VarName) = 'PGROUP1' then
    Value := Edit7.Text + '%';
end;

procedure TStRp_C10.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TStRp_C10.AdvGlowButton2Click(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TStRp_C10.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TStRp_C10.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TStRp_C10.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TStRp_C10.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TStRp_C10.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TStRp_C10.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

