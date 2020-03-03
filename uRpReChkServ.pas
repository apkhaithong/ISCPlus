unit uRpReChkServ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, AdvGlowButton, AdvGroupBox, AdvOfficeButtons,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, Vcl.Menus, AdvMenus,
  bsSkinShellCtrls, QExport4DBF, QExport4PDF, QExport4RTF, QExport4Docx,
  QExport4XLS, QExport4, QExport4Xlsx, BusinessSkinForm, cxCheckBox,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxDCtrl, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TSvRechk = class(TForm)
    AdvPanel1: TAdvPanel;
    Label4: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    SortRadio: TAdvOfficeRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvGlowButton1: TAdvGlowButton;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    Query2: TFDQuery;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    EDIT_LOCAT: TcxButtonEdit;
    edModel: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    QExport4Xlsx1: TQExport4Xlsx;
    QExport4XLS1: TQExport4XLS;
    QExport4Docx1: TQExport4Docx;
    QExport4RTF1: TQExport4RTF;
    QExport4PDF1: TQExport4PDF;
    QExport4DBF1: TQExport4DBF;
    SaveDialog1: TbsSkinSaveDialog;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    WordDocument1: TMenuItem;
    WordDocument2: TMenuItem;
    PDF1: TMenuItem;
    DBF1: TMenuItem;
    Query2JOBNO: TStringField;
    Query2CUSCOD: TStringField;
    Query2CUSTNAME: TStringField;
    Query2TELP: TStringField;
    Query2RECVDATE: TDateField;
    Query2RLKILOMT: TFloatField;
    Query2STRNO: TStringField;
    Query2REPTYPE: TStringField;
    Query2APP_DATE: TDateField;
    Query2APP_MILE: TFloatField;
    Query2MDLCOD: TStringField;
    Query2REGNO: TStringField;
    Query2DESC1: TStringField;
    Query2RFINSHDT: TDateField;
    JobDtOption: TAdvOfficeRadioGroup;
    Query2PAYDATE: TDateField;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxDialogControls1: TfrxDialogControls;
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EDIT_LOCATChange(Sender: TObject);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure WordDocument1Click(Sender: TObject);
    procedure WordDocument2Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure DBF1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Do_Export_Data;
  end;

var
  SvRechk: TSvRechk;

implementation

uses
  Dmsvset, Srchdlg1, USoftFirm, usrcdlg1, unfrPreview, uFindData, Dmsec, Dm1;

{$R *.DFM}
procedure TSvRechk.Do_Export_Data;
var
  XOrderBy, XJobDtOption: string;
begin
  if SortRadio.ItemIndex = 0 then
    XOrderBy := ' Order by J.RecvDate,J.Locat'
  else if SortRadio.ItemIndex = 1 then
    XOrderBy := ' Order by J.Jobno,J.Locat'
  else if SortRadio.ItemIndex = 2 then
    XOrderBy := ' Order by J.Reptype,J.Locat'
  else
    XOrderBy := ' Order by J.Mdlcod,J.Locat';

  if JobDtOption.ItemIndex = 0 then
    XJobDtOption := 'J.RECVDATE'
  else if JobDtOption.ItemIndex = 1 then
    XJobDtOption := 'J.RFINSHDT'
  else
    XJobDtOption := 'J.PAYDATE';

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('Select J.JOBNO,J.Cuscod,c.custname,c.TELP,J.Recvdate,J.RFINSHDT,J.PAYDATE,J.RLKILOMT,' +
      'J.Strno,J.Reptype,J.App_Date,J.App_Mile,J.Mdlcod,B.REGNO, ' +
      '(select desc1 from SERVTRAN where jobno=j.jobno fetch first 1 rows only) ' +
      'From Joborder J left join svmast b on (j.strno=b.strno) ' +
      'LEFT JOIN VIEW_CUST c ON (j.CUSCOD=c.CUSCOD) ' +
      'Where (J.Locat like :PLOCAT) And (J.Mdlcod Like :PMODEL) ' +
      'AND (' + XJobDtOption + ' Between :PFDATE And :PTDATE) ' + XOrderBy);
    params[0].AsString := Edit_Locat.Text + '%';
    params[1].AsString := EdModel.Text + '%';
    params[2].AsDate := Edit_DateFrom.Date;
    params[3].AsDate := Edit_DateTo.Date;
    open;
  end;
end;

procedure TSvRechk.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSvRechk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  SvRechk := nil;
end;

procedure TSvRechk.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TSvRechk.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_1');
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  SortRadio.ItemIndex := 0;
end;

procedure TSvRechk.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort, XStatus, XJobDtOption: string;
begin
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PMODEL' then
    Value := EdModel.Text + '%';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
    3:
      XSort := '3';
  end;

  case JobDtOption.ItemIndex of
    0:
      XJobDtOption := '0';
    1:
      XJobDtOption := '1';
    2:
      XJobDtOption := '2';
  end;

  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  if UpperCase(VarName) = 'PJOBDT' then
    Value := XJobDtOption;
end;

procedure TSvRechk.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FR_RECHKSERVICE.fr3', '2');
end;

procedure TSvRechk.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

procedure TSvRechk.EDIT_LOCATChange(Sender: TObject);
begin
  // edShowLocat.Text := SFMain.FindShowDesc('LOCATMST','LOCATNAM','LOCATCOD',edit_Locat.Text);
end;

procedure TSvRechk.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg1.Keyno;
end;

procedure TSvRechk.edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalModel = Mrok then
    EdModel.Text := fSrcDlg1.Keyno;
end;

procedure TSvRechk.CloseBtnClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TSvRechk.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FR_RECHKSERVICE.fr3', '1'); {1 = Preview Report}
end;

procedure TSvRechk.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TSvRechk.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TSvRechk.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TSvRechk.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TSvRechk.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TSvRechk.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TSvRechk.AdvGlowButton1Click(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

end.

