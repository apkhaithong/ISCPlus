unit U_RepCustmast;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, ToolWin, ExtCtrls, RzPanel, RzSpnEdt, DB,
  RzBorder, Mask, cxDropDownEdit, cxCalendar, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar,
  AdvGroupBox, AdvOfficeButtons, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, QExport4DBF, QExport4PDF, QExport4RTF, QExport4Docx,
  QExport4XLS, Vcl.Menus, AdvMenus, bsSkinShellCtrls, QExport4, QExport4Xlsx,
  BusinessSkinForm, frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TURepCustmast = class(TForm)
    AdvPanel1: TAdvPanel;
    Label18: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    edTumb: TcxTextEdit;
    cxButtonEdit3: TcxButtonEdit;
    edAump: TcxButtonEdit;
    edProv: TcxButtonEdit;
    Query1: TFDQuery;
    qrCustomer: TFDQuery;
    qrCustomerTYPE: TStringField;
    qrCustomerMDLCOD: TStringField;
    qrCustomerCOLOR: TStringField;
    qrCustomerCC: TStringField;
    qrCustomerSTRNO: TStringField;
    qrCustomerENGNO: TStringField;
    qrCustomerREGNO: TStringField;
    qrCustomerCUSCOD: TStringField;
    qrCustomerSNAM: TStringField;
    qrCustomerNAME1: TStringField;
    qrCustomerNAME2: TStringField;
    qrCustomerADDR1: TStringField;
    qrCustomerADDR2: TStringField;
    qrCustomerTUMB: TStringField;
    qrCustomerZIP: TStringField;
    qrCustomerTELP: TStringField;
    qrCustomerAUMPDES: TStringField;
    qrCustomerPROVDES: TStringField;
    qrExportStk: TFDQuery;
    qrExportStkGCODE: TStringField;
    qrExportStkDESCP: TStringField;
    qrExportStkCUSCOD: TStringField;
    qrExportStkSNAM: TStringField;
    qrExportStkNAME1: TStringField;
    qrExportStkNAME2: TStringField;
    qrExportStkGRPCUS: TStringField;
    qrExportStkADDRES: TStringField;
    qrExportStkTUMB: TStringField;
    qrExportStkAUMPCOD: TStringField;
    qrExportStkAUMPDES: TStringField;
    qrExportStkPROVCOD: TStringField;
    qrExportStkPROVDES: TStringField;
    qrExportStkZIP: TStringField;
    qrExportStkTELP: TStringField;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    ExportBtn: TAdvGlowButton;
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
    procedure EditBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edAumpPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edProvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure ExportBtnClick(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure WordDocument1Click(Sender: TObject);
    procedure WordDocument2Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure DBF1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Do_Export_Data;
  end;

var
  URepCustmast: TURepCustmast;
  frPath: string;

implementation

uses
  USoftFirm, uSrcDlg, usrcdlg1, uFindData, unfrPreview, Dmsec;
{$R *.dfm}

procedure TURepCustmast.Do_Export_Data;
var
  Ed1, Ed2, Ed3, Ed4, Ed5, Ed6: string;
begin
  with qrExportStk do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,B.GRPCUS,' +
      'B.ADDRES,B.TUMB,B.AUMPCOD,B.AUMPDES,B.PROVCOD,B.PROVDES,B.ZIP,B.TELP ' +
      'FROM VIEW_CUST B ' +
      'WHERE B.CUSCOD LIKE :PCUSCOD ' +
      'AND (B.GRPCUS LIKE :PGROUPAR OR B.GRPCUS IS NULL) ' +
      'AND B.TUMB LIKE :PTUMP ' +
      'AND B.AUMPCOD LIKE :PAUMP ' +
      'AND B.PROVCOD LIKE :PPROV ' +
      'ORDER BY B.CUSCOD');
    if cxButtonEdit1.Text <> '' then
      Ed1 := cxButtonEdit1.text + '%'
    else
      Ed1 := '%';

    if Edit6.Text <> '' then
      Ed2 := Edit6.text + '%'
    else
      Ed2 := '%';

    if edTumb.Text <> '' then
      Ed3 := edTumb.text + '%'
    else
      Ed3 := '%';

    if edAump.Text <> '' then
      Ed4 := edAump.text + '%'
    else
      Ed4 := '%';

    if edProv.Text <> '' then
      Ed5 := edProv.text + '%'
    else
      Ed5 := '%';

    Params[0].AsString := Ed1;
    Params[1].AsString := Ed2;
    Params[2].AsString := Ed3;
    Params[3].AsString := Ed4;
    Params[4].AsString := Ed5;
    Open;
  end;
end;

procedure TURepCustmast.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepCustmast.fr3', '2');
end;

procedure TURepCustmast.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PCUSCOD' then
    Value := cxButtonEdit1.Text + '%';
  if UpperCase(VarName) = 'PGROUPAR' then
    Value := Edit6.Text + '%';
  if UpperCase(VarName) = 'PTUMB' then
    Value := edTumb.Text + '%';
  if UpperCase(VarName) = 'PAUMP' then
    Value := edAump.Text + '%';
  if UpperCase(VarName) = 'PPROV' then
    Value := edProv.Text + '%';
  if UpperCase(VarName) = 'PGCODE' then
    Value := cxButtonEdit3.Text + '%';
end;

procedure TURepCustmast.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepCustmast.fr3', '1');
end;

procedure TURepCustmast.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TURepCustmast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  URepCustmast := nil;
end;

procedure TURepCustmast.Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFinddata, fFindData);
  if fFinddata.ShowModalArgroup = Mrok then
    Edit6.Text := fFindData.Keyno;
end;

procedure TURepCustmast.edAumpPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetAump = Mrok then
    edAump.Text := fFindData.Keyno;
end;

procedure TURepCustmast.edProvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetProv = Mrok then
    edProv.Text := fFindData.Keyno;
end;

procedure TURepCustmast.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP03_3');
end;

procedure TURepCustmast.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TURepCustmast.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCusmast = Mrok then
    cxButtonEdit1.Text := fFindData.Keyno;
end;

procedure TURepCustmast.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDLG1, fSrcDLG1);
  if fSrcDLG1.ShowModalGrpMst = Mrok then
    cxButtonEdit3.Text := fSrcDLG1.Keyno;
end;

procedure TURepCustmast.ExportBtnClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TURepCustmast.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TURepCustmast.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TURepCustmast.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TURepCustmast.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TURepCustmast.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TURepCustmast.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TURepCustmast.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

end.

