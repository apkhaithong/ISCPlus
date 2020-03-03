unit SvRp10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, AdvGlowButton, AdvGroupBox, AdvOfficeButtons,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, QExport4DBF, QExport4PDF,
  QExport4RTF, QExport4Docx, QExport4XLS, Vcl.Menus, AdvMenus, bsSkinShellCtrls,
  QExport4, QExport4Xlsx, BusinessSkinForm, frxClass, frxExportXLSX, frxRich,
  frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TSvRp_10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    SortRadio: TAdvOfficeRadioGroup;
    EDIT_LOCAT: TcxButtonEdit;
    edOffice: TcxButtonEdit;
    edModel: TcxButtonEdit;
    edType: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    RadioGp2: TcxComboBox;
    Label7: TLabel;
    rdGroup: TAdvOfficeRadioGroup;
    AdvGlowButton1: TAdvGlowButton;
    Query1: TFDQuery;
    Query2: TFDQuery;
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
    Query2JOBNO: TStringField;
    Query2LOCAT: TStringField;
    Query2RECVDATE: TDateField;
    Query2RECVTIME: TStringField;
    Query2FINSDATE: TDateField;
    Query2FINSTIME: TStringField;
    Query2MDLCOD: TStringField;
    Query2RECVCOD: TStringField;
    Query2STATUS: TStringField;
    Query2REPTYPE: TStringField;
    Query2STRNO: TStringField;
    Query2REGNO: TStringField;
    Query2TYPE: TStringField;
    Query2SNAM: TStringField;
    Query2NAME1: TStringField;
    Query2NAME2: TStringField;
    Query2LASTKILO: TFloatField;
    Query2RLKILOMT: TFloatField;
    Query2TSV_TOT: TFloatField;
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
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EDIT_LOCATChange(Sender: TObject);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edOfficePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure rdGroupClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
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
  SvRp_10: TSvRp_10;

implementation

uses
  Dmsvset, Srchdlg1, USoftFirm, usrcdlg1, unfrPreview, uFindData, Dmsec, Dm1;

{$R *.DFM}
procedure TSvRp_10.Do_Export_Data;
var
  XStatus, XSort: string;
begin
  case SortRadio.ItemIndex of
    0:
      XSort := 'J.STATUS,J.RECVDATE,J.JOBNO';
    1:
      XSort := 'J.STATUS,J.RECVDATE,J.REPTYPE';
    2:
      XSort := 'J.STATUS,J.RECVDATE,J.MDLCOD';
  end;

  case RadioGp2.ItemIndex of
    0:
      XStatus := 'AND J.STATUS = ''W'' ';
    1:
      XStatus := 'AND J.STATUS = ''F'' ';
    2:
      XStatus := 'AND J.STATUS = ''R'' ';
    3:
      XStatus := 'AND J.STATUS = ''C'' ';
    4:
      XStatus := 'AND J.STATUS LIKE ''%'' ';
  end;

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT J.JOBNO,J.LOCAT,J.RECVDATE,J.RECVTIME,J.FINSDATE,J.FINSTIME,J.MDLCOD,J.RECVCOD,J.STATUS,S.EXPKILO,S.EXPWARNT,' +
      'J.REPTYPE,J.REPBAY,J.STRNO,S.REGNO,S.TYPE,B.SNAM,B.NAME1,B.NAME2,S.LASTKILO,J.RLKILOMT,J.CUPONGNO,J.CANCELID,J.CANDAT,J.TSV_TOT ' +
      'FROM JOBORDER J,SVMAST S,CUSTMAST B ' +
      'WHERE (J.STRNO = S.STRNO) ' +
      'AND (J.CUSCOD=B.CUSCOD) ' +
      'AND (J.LOCAT LIKE :PLOCAT) ' +
      'AND (J.RECVDATE >= :PFDATE) ' +
      'AND (J.RECVDATE <= :PTDATE) ' +
      'AND (J.MDLCOD LIKE :PMDLCOD) ' +
      'AND (J.RECVCOD LIKE :PRECCOD) ' +
      'AND S.TYPE LIKE :PTYPE  ' + XStatus +
      'ORDER BY ' + XSort + ' ');
    params[0].AsString := Edit_Locat.Text + '%';
    params[1].AsDate := Edit_dateFrom.Date;
    params[2].AsDate := Edit_DateTo.Date;
    params[3].AsString := EdModel.Text + '%';
    params[4].AsString := edOffice.Text + '%';
    params[5].AsString := EdType.Text + '%';
    open;
  end;
end;

procedure TSvRp_10.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSvRp_10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  SvRp_10 := nil;
end;

procedure TSvRp_10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TSvRp_10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_1');
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  SortRadio.ItemIndex := 0;
end;

procedure TSvRp_10.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort, XStatus: string;
begin
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PMODEL' then
    Value := EdModel.Text + '%';
  if UpperCase(VarName) = 'PTYPE' then
    Value := EdType.Text + '%';
  if UpperCase(VarName) = 'PREVCOD' then
    Value := edOffice.Text + '%';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
  end;

  case RadioGp2.ItemIndex of
    0:
      XStatus := '0';
    1:
      XStatus := '1';
    2:
      XStatus := '2';
    3:
      XStatus := '3';
    4:
      XStatus := '4';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;
  if UpperCase(VarName) = 'PSTATUS' then
    Value := XStatus;
end;

procedure TSvRp_10.EditBtnClick(Sender: TObject);
begin
  if rdGroup.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Rp_JobAll.fr3', '2')


 {1 = Preview Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Rp_JobAllSum.fr3', '2');
end;

procedure TSvRp_10.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

procedure TSvRp_10.EDIT_LOCATChange(Sender: TObject);
begin
  // edShowLocat.Text := SFMain.FindShowDesc('LOCATMST','LOCATNAM','LOCATCOD',edit_Locat.Text);
end;

procedure TSvRp_10.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_10.edOfficePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalOffic = Mrok then
    edOffice.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_10.edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalModel = Mrok then
    EdModel.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_10.edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalType = Mrok then
    EdType.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_10.CloseBtnClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TSvRp_10.PrevBtnClick(Sender: TObject);
begin
  if rdGroup.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Rp_JobAll.fr3', '1')


 {1 = Preview Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Rp_JobAllSum.fr3', '1');
end;

procedure TSvRp_10.rdGroupClick(Sender: TObject);
var
  N: Word;
begin
  for N := 0 to ComponentCount - 1 do
  begin
    if (Components[N] is TcxButtonEdit) and (TcxButtonEdit(Components[N]).Tag = 1) then
    begin
      TcxButtonEdit(Components[N]).Enabled := rdGroup.ItemIndex = 0;
    end;

    if (Components[N] is TcxDateEdit) and (TcxDateEdit(Components[N]).Tag = 1) then
    begin
      TcxDateEdit(Components[N]).Enabled := rdGroup.ItemIndex = 0;
    end;
  end;

  AdvGlowButton1.Visible := rdGroup.ItemIndex = 1;
  RadioGp2.Enabled := rdGroup.ItemIndex = 0;
end;

procedure TSvRp_10.AdvGlowButton1Click(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TSvRp_10.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TSvRp_10.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TSvRp_10.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TSvRp_10.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TSvRp_10.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TSvRp_10.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

