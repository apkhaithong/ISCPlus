unit Strpc30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, Csv_txt, RzButton, RzPanel, RzRadGrp, ToolWin, RzSpnEdt, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGroupBox,
  AdvOfficeButtons, cxSpinEdit, cxSpinButton, AdvGlowButton, AdvToolBar,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, bsSkinShellCtrls, QExport4DBF,
  QExport4PDF, QExport4RTF, QExport4Docx, QExport4XLS, QExport4, QExport4Xlsx,
  Vcl.Menus, AdvMenus, BusinessSkinForm, AdvPanel, frxClass, frxExportXLSX,
  frxRich, frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTRpc30 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    UpDown1: TcxSpinButton;
    Edit8: TcxTextEdit;
    SortRadio: TAdvOfficeRadioGroup;
    Condition: TAdvOfficeRadioGroup;
    qrExportStk: TFDQuery;
    qrExportStkLOCAT: TStringField;
    qrExportStkPARTNO: TStringField;
    qrExportStkDESC1: TStringField;
    qrExportStkGROUP1: TStringField;
    qrExportStkPRICE1: TFloatField;
    qrExportStkCOST: TFloatField;
    qrExportStkONHN: TFloatField;
    qrExportStkTOTCOST: TFloatField;
    qrExportStkMOVDATE: TDateField;
    AdvPanel3: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    tbExport: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    SaveDialog1: TbsSkinSaveDialog;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure Edit3ButtonClick(Sender: TObject);
    procedure Edit4ButtonClick(Sender: TObject);
    procedure Edit2ButtonClick(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditbtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure tbExportClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  FmSTRpc30: TFmSTRpc30;
  XTypecod, ed8, x: string;
  XDay: Word;

implementation

uses
  uSrcdlg, DmSet1, uSoftfirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmSTRpc30.Do_Export_Data;
var
  XSort, XCondi: string;
  PDate: TDateTime;
  PYear, PMonth, PDay: Word;
begin
  case SortRadio.ItemIndex of
    0:
      XSort := ' Order by A.Partno';
    1:
      XSort := ' Order by A.Partno';
    2:
      XSort := ' Order by A.Partno';
  end;

  case Condition.ItemIndex of
    0:
      XCondi := ' AND B.Allo_12 >0 ';
    1:
      XCondi := ' AND B.Allo_12 =0 ';
    2:
      XCondi := ' AND B.Allo_12 <0 ';
    3:
      XCondi := '';
  end;

  PDate := Now - (Strtoint(Edit8.text) * 30);
  DecodeDate(Now, PYear, PMonth, PDay);
  with qrExportStk do
  begin
    close;
    sql.Clear;
    sql.Add('Select A.Locat,A.Partno,A.Desc1,A.Model,A.Group1,' +
      'A.Price1,B.Cost_12 As Cost,(B.Allo_12) as Onhn,' +
      '(B.Cost_12*B.Allo_12) as TotCost,A.Movdate ' +
      'From Inventor A,Invanls B ' +
      'Where (A.Partno = B.Partno) ' +
      'And (A.Locat = B.Locat) ' +
      'And (A.Locat like :0) ' +
      'And (A.Group1 Like :1) ' +
      'And (A.Partno Between :2 and :3) ' + XCondi +
      'And (A.Movdate < :4 Or A.Movdate Is Null) ' +
      'And (B.Year1=:5) ' + XSort);
    Params[0].AsString := Edit_Locat.Text + '%';
    Params[1].AsString := Edit2.Text + '%';
    Params[2].AsString := Edit3.Text + '%';
    Params[3].AsString := Edit4.Text + '%';
    Params[4].AsDate := PDate;
    Params[5].AsInteger := PYear;
    Open;
  end;
end;

procedure TFmSTRpc30.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRpc30.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_6');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
end;

procedure TFmSTRpc30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRpc30 := NIL;
end;

procedure TFmSTRpc30.RzBitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TFmSTRpc30.Edit3ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpc30.Edit4ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit4.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpc30.Edit2ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit2.Text := fSrcDlg.Keyno;
end;

procedure TFmSTRpc30.Edit1ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.Keyno;
end;

procedure TFmSTRpc30.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TFmSTRpc30.EditbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepDeadStock.fr3', '2');
end;

procedure TFmSTRpc30.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XSort, XCondi: string;
begin
  if Edit4.Text = '' then
    Edit4.Text := 'тттт';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PMOVE' then
    Value := Edit8.Text;
  if UpperCase(VarName) = 'PPARTFM' then
    Value := Edit3.Text;
  if UpperCase(VarName) = 'PPARTTO' then
    Value := Edit4.Text;
  if UpperCase(VarName) = 'PGROUP' then
    Value := Edit2.Text + '%';

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  case Condition.ItemIndex of
    0:
      XCondi := '0';
    1:
      XCondi := '1';
    2:
      XCondi := '2';
    3:
      XCondi := '3';
  end;
  if UpperCase(VarName) = 'PCONDI' then
    Value := XCondi;
end;

procedure TFmSTRpc30.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepDeadStock.fr3', '1');
end;

procedure TFmSTRpc30.tbExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFmSTRpc30.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFmSTRpc30.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.Keyno;
end;

procedure TFmSTRpc30.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit2.Text := fSrcDlg.Keyno;
end;

procedure TFmSTRpc30.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpc30.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit4.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpc30.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFmSTRpc30.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFmSTRpc30.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFmSTRpc30.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFmSTRpc30.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFmSTRpc30.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

