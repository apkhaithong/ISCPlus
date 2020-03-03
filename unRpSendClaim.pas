unit unRpSendClaim;

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
  TFRpSendClaim = class(TForm)
    DataSource1: TDataSource;
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label15: TLabel;
    Label1: TLabel;
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
    Edit4: TcxButtonEdit;
    Query2CONTNO: TStringField;
    Query2CUSCOD: TStringField;
    Query2SNAM: TStringField;
    Query2NAME1: TStringField;
    Query2NAME2: TStringField;
    Query2STRNO: TStringField;
    Query2TSALE: TStringField;
    Query2REPNO: TStringField;
    Query2REPDATE: TDateField;
    Query2LOCAT: TStringField;
    Query2TYPECLAIM: TStringField;
    Query2CLAIMAMT: TFloatField;
    Query2CLAIMDESC: TStringField;
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
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  FRpSendClaim: TFRpSendClaim;

implementation

uses
  Srchset1, usrcdlg1, USoftFirm, unfrPreview, Dm1, DMSEC;

{$R *.DFM}

procedure TFRpSendClaim.Do_Export_Data;
var
  Xsort: string;
begin
  case RadioGroup1.ItemIndex of
    0:
      Xsort := 'ORDER BY A.REPDATE ';
    1:
      Xsort := 'ORDER BY A.STRNO ';
    2:
      Xsort := 'ORDER BY A.CUSCOD ';
  end;

  with Query2 do
  begin
    close;
    sql.Clear;
    if cxCheckBox1.Checked = False then
    begin
      sql.Add('SELECT A.CONTNO,A.CUSCOD,B.SNAM,B.NAME1,B.NAME2,A.STRNO,A.TSALE,A.REPNO,A.REPDATE,A.LOCAT,' +
        'A.TYPECLAIM,A.CLAIMAMT,C.CLAIMDESC,A.FLAG ' +
        'FROM SENDCLAIM A,CUSTMAST B,TYPECLAIM C ' +
        'WHERE A.CUSCOD=B.CUSCOD ' +
        'AND A.TYPECLAIM=C.CLAIMCODE ' +
        'AND A.LOCAT LIKE :PLOCAT ' +
        'AND A.TYPECLAIM LIKE :PTYPCLM ' +
        'AND (A.REPDATE>=:PFDATE AND A.REPDATE<=:PTDATE) ' + Xsort);
      params[0].AsString := Edit1.Text + '%';
      params[1].AsString := Edit4.Text + '%';
      params[2].AsDate := wwFDate.Date;
      params[3].AsDate := wwTDate.Date;
    end
    else
    begin
      sql.Add('SELECT A.CONTNO,A.CUSCOD,B.SNAM,B.NAME1,B.NAME2,A.STRNO,A.TSALE,A.REPNO,A.REPDATE,A.LOCAT,' +
        'A.TYPECLAIM,A.CLAIMAMT,C.CLAIMDESC,A.FLAG ' +
        'FROM SENDCLAIM A,CUSTMAST B,TYPECLAIM C ' +
        'WHERE A.CUSCOD=B.CUSCOD ' +
        'AND A.TYPECLAIM=C.CLAIMCODE ' +
        'AND A.LOCAT LIKE :PLOCAT ' + Xsort);
      params[0].AsString := Edit1.Text + '%';
    end;
    open;
  end;
end;

procedure TFRpSendClaim.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_5_1');
end;

procedure TFRpSendClaim.FormShow(Sender: TObject);
begin
  edit1.Text := SFMain.Xlocat;
  wwFDate.Date := Date;
  wwTDate.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFRpSendClaim.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XPck, Xsort: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := edit1.Text + '%';
  if UpperCase(VarName) = 'PTYPCLM' then
    Value := edit4.Text + '%';
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

procedure TFRpSendClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  FRpSendClaim := nil;
end;

procedure TFRpSendClaim.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RpRequestClaim.fr3', '1'); {1 = Preview Report}
end;

procedure TFRpSendClaim.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RpRequestClaim.fr3', '2'); {2 = Design Report}
end;

procedure TFRpSendClaim.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRpSendClaim.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit1.text := SearchSet.Keyno;
end;

procedure TFRpSendClaim.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalTypeClaim = Mrok then
    Edit4.text := fSrcDlg1.Keyno;
end;

procedure TFRpSendClaim.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpSendClaim.ExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFRpSendClaim.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFRpSendClaim.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFRpSendClaim.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFRpSendClaim.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFRpSendClaim.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFRpSendClaim.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

