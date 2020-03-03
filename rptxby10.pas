unit RpTxBy10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, qrprntr, QuickRpt, printers, ComCtrls, ToolWin,
  ImgList, Mask, AdvGlowButton, RzSpnEdt, DB, AdvGroupBox, AdvOfficeButtons,
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
  TFRpTxBy10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioGroup2: TAdvOfficeRadioGroup;
    Query1: TFDQuery;
    Query1LOCAT: TStringField;
    Query1TAXDATE: TDateField;
    Query1TAXNO: TStringField;
    Query1APNAME: TStringField;
    Query1DESC1: TStringField;
    Query1BALANCE: TFloatField;
    Query1VAT: TFloatField;
    Query1TOTTAX: TFloatField;
    Query1FLAG: TStringField;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    Export: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Query1CUSCOD: TStringField;
    Query1VATRT: TFloatField;
    Query1STRNO: TStringField;
    Query1NETCOST: TFloatField;
    Query1CRVAT: TFloatField;
    Query1TOTCOST: TFloatField;
    wwFDate: TcxDateEdit;
    wwTDate: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Edit4: TcxButtonEdit;
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
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxGradientObject1: TfrxGradientObject;
    frxFDComponents1: TfrxFDComponents;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormShow(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
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
  FRpTxBy10: TFRpTxBy10;

implementation

uses
  Srchset1, USoftFirm, unfrPreview, Dm1, DMSEC;

{$R *.DFM}
procedure TFRpTxBy10.Do_Export_Data;
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT T.LOCAT,T.TAXNO,T.TAXDATE,T.CUSCOD,T.DESC1, ' +
      'T.VATRT,T.BALANCE,T.VAT,T.TOTTAX,T.FLAG,A.APNAME,X.STRNO,X.NETCOST,X.CRVAT,X.TOTCOST ' +
      'FROM TAXBUY T LEFT JOIN TAXBUYTRN X ON (T.TAXNO=X.TAXNO),APMAST A WHERE T.CUSCOD=A.APCODE ' +
      'AND T.LOCAT LIKE :0  AND T.TAXDATE >=:1 AND T.TAXDATE <=:2 ');
    params[0].AsString := Edit1.Text + '%';
    params[1].AsDate := wwFDate.Date;
    params[2].AsDate := wwTDate.Date;
    open;
  end;
end;

procedure TFRpTxBy10.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 1;
  RadioGroup2.ItemIndex := 0;
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
  wwFDate.Date := Date;
  wwTDate.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFRpTxBy10.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepTaxBuy.fr3', '2'); {2 = Design Report}
end;

procedure TFRpTxBy10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FRpTxBy10 := nil;
end;

procedure TFRpTxBy10.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  TREP, SRT: string;
begin
  if UpperCase(VarName) = 'VLOCAT' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'VFDATE' then
    Value := wwFDate.Date;
  if UpperCase(VarName) = 'VTDATE' then
    Value := wwTDate.Date;

  case RadioGroup2.ItemIndex of
    0:
      TREP := '0';
    1:
      TREP := '1';
  end;
  if Uppercase(VarName) = 'VRADIO' then
    Value := TREP;

  case RadioGroup1.ItemIndex of
    0:
      SRT := '0';
    1:
      SRT := '1';
    2:
      SRT := '2';
  end;
  if Uppercase(VarName) = 'VSORT' then
    Value := SRT;
end;

procedure TFRpTxBy10.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepTaxBuy.fr3', '1'); {1 = Preview Report}
end;

procedure TFRpTxBy10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRpTxBy10.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit1.text := SearchSet.Keyno;
end;

procedure TFRpTxBy10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpTxBy10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP04_3');
end;

procedure TFRpTxBy10.ExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFRpTxBy10.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFRpTxBy10.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFRpTxBy10.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFRpTxBy10.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFRpTxBy10.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFRpTxBy10.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

