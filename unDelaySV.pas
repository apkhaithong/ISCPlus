unit unDelaySv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, RzEdit, RzSpnEdt, AdvGroupBox, AdvOfficeButtons,
  AdvGlowButton, AdvToolBar, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxButtonEdit, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, bsSkinShellCtrls, Vcl.Menus, AdvMenus, QExport4DBF,
  QExport4PDF, QExport4RTF, QExport4Docx, QExport4XLS, QExport4, QExport4Xlsx,
  BusinessSkinForm, frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrDelayService = class(TForm)
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    SortRadio: TAdvOfficeRadioGroup;
    EDIT_LOCAT: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    edFDay: TcxTextEdit;
    edTDay: TcxTextEdit;
    cxButtonEdit1: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvGlowButton1: TAdvGlowButton;
    Query2: TFDQuery;
    QExport4Xlsx1: TQExport4Xlsx;
    QExport4XLS1: TQExport4XLS;
    QExport4Docx1: TQExport4Docx;
    QExport4RTF1: TQExport4RTF;
    QExport4PDF1: TQExport4PDF;
    QExport4DBF1: TQExport4DBF;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    WordDocument1: TMenuItem;
    WordDocument2: TMenuItem;
    PDF1: TMenuItem;
    DBF1: TMenuItem;
    SaveDialog1: TbsSkinSaveDialog;
    Query2CUSCOD: TStringField;
    Query2SNAM: TStringField;
    Query2NAME1: TStringField;
    Query2LASTSERV: TDateField;
    Query2LASTKILO: TFloatField;
    Query2NAME2: TStringField;
    Query2ADDR1: TStringField;
    Query2ADDR2: TStringField;
    Query2TUMB: TStringField;
    Query2AUMPDES: TStringField;
    Query2PROVDES: TStringField;
    Query2ZIP: TStringField;
    Query2TELP: TStringField;
    Query2REGNO: TStringField;
    Query2GCODE: TStringField;
    Query2SUBMODEL: TStringField;
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
    procedure PrevBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  frDelayService: TfrDelayService;

implementation

uses
  Dmsvset, USoftFirm, usrcdlg1, unfrPreview, uFindData, uSrcDlg, Dmsec;

{$R *.DFM}

procedure TfrDelayService.Do_Export_Data;
var
  CHKSORT: string;
begin
  if SortRadio.ItemIndex = 0 then
    CHKSORT := 'B.Regno'
  else if SortRadio.ItemIndex = 1 then
    CHKSORT := 'B.Gcode'
  else
    CHKSORT := 'b.MDLCOD';

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('select A.CusCod,A.Snam,A.Name1,b.lastserv,b.lastkilo,b.MdlCod,M.submodel, ' +
      'A.Name2,A.Addr1,A.Addr2,A.Tumb,A.Aumpdes,A.Provdes,Provcod,A.Zip,A.Telp,B.REGNO,b.MdlCod,b.gcode ' +
      'from SVMAST B ' +
      'INNER JOIN View_Cust A ON (A.CusCod = B.CusCod) ' +
      'LEFT OUTER JOIN SETMODEL M ON M.MODELCOD=B.MDLCOD ' +
      'Where b.cuscod<>''10'' and (B.STRNO in (Select Strno from Joborder Where Locat like :Plocat)) and ' +
      '(JULIAN_DAY(CURRENT DATE)-JULIAN_DAY(b.LASTSERV)>=:PFDAY AND JULIAN_DAY(CURRENT DATE)-JULIAN_DAY(b.LASTSERV)<=:PTDAY) ' +
      'and B.Gcode like :PGcode ' +
      'order By ' + CHKSORT);
    params[0].AsString := EDIT_LOCAT.Text + '%';
    params[1].AsInteger := StrToint(EdFDay.Text);
    params[2].AsInteger := StrToint(EdTDay.Text);
    params[3].AsString := cxButtonEdit4.Text + '%';
    open;
  end;
end;

procedure TfrDelayService.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrDelayService.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frDelayService := nil;
end;

procedure TfrDelayService.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepDelaySv.fr3', '1');
end;

procedure TfrDelayService.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrDelayService.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_D');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  SortRadio.ItemIndex := 0;
end;

procedure TfrDelayService.CloseBtnClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrDelayService.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort, XSelDt: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PCUSCOD' then
    Value := cxButtonEdit1.Text + '%';
  if UpperCase(VarName) = 'PREGNO' then
    Value := cxButtonEdit2.Text + '%';
  if UpperCase(VarName) = 'PFDAY' then
    Value := StrToint(EdFDay.Text);
  if UpperCase(VarName) = 'PTDAY' then
    Value := StrToint(EdTDay.Text);
  if UpperCase(VarName) = 'PGRPCUS' then
    Value := cxButtonEdit3.Text + '%';
  if UpperCase(VarName) = 'PGCODE' then
    Value := cxButtonEdit4.Text + '%';
  if UpperCase(VarName) = 'NGRPCUS' then
    Value := cxButtonEdit3.Text;
  if UpperCase(VarName) = 'NGCODE' then
    Value := cxButtonEdit4.Text;

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
end;

procedure TfrDelayService.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepDelaySv.fr3', '2');
end;

procedure TfrDelayService.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TfrDelayService.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg1.Keyno;
end;

procedure TfrDelayService.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvCUST = Mrok then
    cxButtonEdit2.Text := fSrcDlg1.qrFindDat.fieldbyname('REGNO').AsString;
end;

procedure TfrDelayService.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCusmast = Mrok then
    cxButtonEdit1.Text := fFindData.Keyno;
end;

procedure TfrDelayService.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDLG1, fSrcDLG1);
  if fSrcDLG1.ShowModalGrpMst = Mrok then
    cxButtonEdit4.Text := fSrcDLG1.Keyno;
end;

procedure TfrDelayService.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDLG, fSrcDLG);
  if fSrcDLG.ShowModalArgroup = Mrok then
    cxButtonEdit3.Text := fSrcDLG.Keyno;
end;

procedure TfrDelayService.AdvGlowButton1Click(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TfrDelayService.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TfrDelayService.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TfrDelayService.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TfrDelayService.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TfrDelayService.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TfrDelayService.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

