unit URepSale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, Db, QuickRpt, printers, qrprntr, ImgList,
  ComCtrls, ToolWin, Mask, AdvGlowButton, RzSpnEdt, cxGraphics, cxDropDownEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, AdvGroupBox, AdvOfficeButtons, AdvToolBar, AdvPanel,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, bsSkinShellCtrls, QExport4DBF,
  QExport4PDF, QExport4RTF, QExport4Docx, QExport4XLS, QExport4, QExport4Xlsx,
  Vcl.Menus, AdvMenus, BusinessSkinForm, frxClass, frxExportXLSX, frxRich,
  frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRepSale = class(TForm)
    AdvPanel1: TAdvPanel;
    Label20: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioGroup2: TAdvOfficeRadioGroup;
    wwDBDateF: TcxDateEdit;
    wwDBDateT: TcxDateEdit;
    edLocat: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    ComboBox1: TcxComboBox;
    Edit8: TcxButtonEdit;
    ComboBox2: TcxComboBox;
    Edit5: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvGlowButton1: TAdvGlowButton;
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
    Query2: TFDQuery;
    Query2LOCAT: TStringField;
    Query2TSALE: TStringField;
    Query2CONTNO: TStringField;
    Query2SDATE: TDateField;
    Query2SALCOD: TStringField;
    Query2STRNO: TStringField;
    Query2ENGNO: TStringField;
    Query2REGNO: TStringField;
    Query2GCODE: TStringField;
    Query2TYPE: TStringField;
    Query2MODEL: TStringField;
    Query2BAAB: TStringField;
    Query2COLOR: TStringField;
    Query2CUSCOD: TStringField;
    Query2TOTPRC: TFloatField;
    Query2CUSTNAME: TStringField;
    Query2TCARCST: TFloatField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
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
    TS, TK, TC, TC1: string;
    procedure Do_Export_Data;
  end;

var
  FRepSale: TFRepSale;

implementation

uses
  USoftFirm, Srchset1, unfrPreview, Dm1, DMSEC;

{$R *.DFM}
procedure TFRepSale.Do_Export_Data;
var
  TS: string;
begin
  case Combobox1.ItemIndex of
    0:
      TS := 'C%';
    1:
      TS := 'F%';
    2:
      TS := 'A%';
    3:
      TS := '%';
  end;

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM VIEW_SALHPCS WHERE LOCAT LIKE :PLOCAT AND SALCOD LIKE :PSALCOD AND TSALE LIKE :PTSALE ' +
      'AND (SDATE>=:SFDATE AND SDATE<=:STDATE) AND TYPE LIKE :PTYPE AND MODEL LIKE :PMODEL ' +
      'AND COLOR LIKE :PCOLOR AND GCODE LIKE :PGCODE ' +
      'ORDER BY SDATE');
    params[0].AsString := EdLocat.Text + '%';
    params[1].AsString := Edit2.Text + '%';
    params[2].AsString := TS;
    params[3].AsDate := wwDBDateF.Date;
    params[4].AsDate := wwDBDateT.Date;
    params[5].AsString := Edit6.Text + '%';
    params[6].AsString := Edit7.Text + '%';
    params[7].AsString := Edit8.Text + '%';
    params[8].AsString := Edit5.Text + '%';
    open;
  end;
end;

procedure TFRepSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
//   frReport1.Free;
  FRepSale := nil;
end;

procedure TFRepSale.FormShow(Sender: TObject);
begin
  edit2.SetFocus;
  wwDBDateT.Date := Date;
  wwDBDateF.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  edLocat.Text := SFMain.XLocat;
  edLocat.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TFRepSale.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_2_1');
end;

procedure TFRepSale.DesignBtnClick(Sender: TObject);
begin
   if Radiogroup1.ItemIndex = 0 then
      DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SaleAllMDLG.fr3','2'); {2 = Design Report}
   if Radiogroup1.ItemIndex = 1 then
      DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SaleAllG.fr3','2'); {2 = Design Report}
   if Radiogroup1.ItemIndex = 2 then
      DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SumSaleAll.fr3','2'); {2 = Design Report}
end;

procedure TFRepSale.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  TK, Xorder: string;
begin
  if Uppercase(VarName) = 'SFDATE' then
    Value := wwDBDateF.Date;
  if Uppercase(VarName) = 'STDATE' then
    Value := wwDBDateT.Date;
  if Uppercase(VarName) = 'PLOCAT' then
    Value := EdLocat.Text + '%';
  if Uppercase(VarName) = 'PTYPE' then
    Value := Edit6.Text + '%';
  if Uppercase(VarName) = 'PMODEL' then
    Value := Edit7.Text + '%';
  if Uppercase(VarName) = 'PCOLOR' then
    Value := Edit8.Text + '%';
  if Uppercase(VarName) = 'PGCODE' then
    Value := Edit5.Text + '%';
  if Uppercase(VarName) = 'PSALCOD' then
    Value := Edit2.Text + '%';
  case Combobox1.ItemIndex of
    0:
      TS := 'C%';
    1:
      TS := 'F%';
    2:
      TS := 'A%';
    3:
      TS := '%';
  end;
  if Uppercase(VarName) = 'PTSALE' then
    Value := TS;

  case Combobox2.ItemIndex of
    0:
      TK := 'N%';
    1:
      TK := 'O%';
    2:
      TK := 'D%';
    3:
      TK := 'P%';
    4:
      TK := 'U%';
    5:
      TK := '%';
  end;
  if Uppercase(VarName) = 'PSTAT' then
    Value := TK;

  case RadioGroup2.ItemIndex of
    0:
      Xorder := '0';
    1:
      Xorder := '1';
    2:
      Xorder := '2';
    3:
      Xorder := '3';
    4:
      Xorder := '4';
    5:
      Xorder := '5';
  end;
  if Uppercase(VarName) = 'VORDERBY' then
    Value := Xorder;
end;

procedure TFRepSale.edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    edlocat.text := SearchSet.Keyno;
end;

procedure TFRepSale.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetOfficer = MrOk then
    Edit2.text := SearchSet.Keyno;
end;

procedure TFRepSale.Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalType = MrOk then
    Edit6.text := SearchSet.Keyno;
end;

procedure TFRepSale.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalModel = MrOk then
    Edit7.text := SearchSet.Keyno;
end;

procedure TFRepSale.Edit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalColor = MrOk then
    Edit8.text := SearchSet.Keyno;
end;

procedure TFRepSale.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetgrp = MrOk then
    Edit5.text := SearchSet.Keyno;
end;

procedure TFRepSale.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFRepSale.PrevBtnClick(Sender: TObject);
begin
  if Radiogroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SaleAllMDLG.fr3','1') else {1 = Preview Report}
  if Radiogroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SaleAllG.fr3','1') else {1 = Preview Report}
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SumSaleAll.fr3','1');{1 = Preview Report}
end;

procedure TFRepSale.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRepSale.RadioGroup1Click(Sender: TObject);
begin
  AdvGlowButton1.Visible := RadioGroup1.ItemIndex = 1;
end;

procedure TFRepSale.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFRepSale.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFRepSale.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFRepSale.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFRepSale.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFRepSale.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TFRepSale.AdvGlowButton1Click(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

end.

