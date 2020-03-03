unit frRpDltStk0;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, QuickRpt, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, Mask, DB, AdvGlowButton, RzSpnEdt, cxGraphics, cxDropDownEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  AdvGroupBox, AdvOfficeButtons, AdvToolBar, AdvPanel, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, QExport4DBF, QExport4PDF, QExport4RTF, QExport4Docx,
  QExport4XLS, Vcl.Menus, AdvMenus, bsSkinShellCtrls, QExport4, QExport4Xlsx,
  BusinessSkinForm, frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl,
  frxFDComponents, frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrRpDlgStk0 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    rdGroup1: TAdvOfficeRadioGroup;
    edCrlocat: TcxButtonEdit;
    edGcode: TcxButtonEdit;
    edType: TcxButtonEdit;
    edModel: TcxButtonEdit;
    edColor: TcxButtonEdit;
    XStat: TcxComboBox;
    Query1: TFDQuery;
    Query1RECVDT: TDateField;
    Query1TYPE: TStringField;
    Query1MODEL: TStringField;
    Query1COLOR: TStringField;
    Query1STRNO: TStringField;
    Query1RVLOCAT: TStringField;
    Query1CRLOCAT: TStringField;
    Query1STAT: TStringField;
    DataSource1: TDataSource;
    Query2: TFDQuery;
    Query2RECVDT: TDateField;
    Query2TYPE: TStringField;
    Query2MODEL: TStringField;
    Query2COLOR: TStringField;
    Query2STRNO: TStringField;
    Query2REGNO: TStringField;
    Query2RVLOCAT: TStringField;
    Query2CRLOCAT: TStringField;
    Query2STAT: TStringField;
    DataSource2: TDataSource;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    QExport4Xlsx1: TQExport4Xlsx;
    SaveDialog1: TbsSkinSaveDialog;
    SaveDialog2: TbsSkinSaveDialog;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    WordDocument1: TMenuItem;
    WordDocument2: TMenuItem;
    PDF1: TMenuItem;
    DBF1: TMenuItem;
    QExport4XLS1: TQExport4XLS;
    QExport4Docx1: TQExport4Docx;
    QExport4RTF1: TQExport4RTF;
    QExport4PDF1: TQExport4PDF;
    QExport4DBF1: TQExport4DBF;
    Query1CRCOST: TFloatField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DesignBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCrlocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edGcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edColorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure WordDocument1Click(Sender: TObject);
    procedure WordDocument2Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure DBF1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdGroup1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    frPath: string;
  public

    { Public declarations }
    procedure Do_Export_Data;
  end;

var
  frRpDlgStk0: TfrRpDlgStk0;

implementation

uses
  SrchSet1, SrchStk, USoftFirm, unfrPreview, Dm1, DMSEC;
{$R *.DFM}

procedure TfrRpDlgStk0.Do_Export_Data;
var
  XSt: string;
begin
  case XStat.ItemIndex of
    0:
      XSt := 'N%';
    1:
      XSt := 'O%';
    2:
      XSt := 'D%';
    3:
      XSt := 'P%';
    4:
      XSt := 'U%';
    5:
      XSt := 'S%';
    6:
      XSt := 'H%';
    7:
      XSt := '%';
  end;

  if ((rdGroup1.ItemIndex = 0) or (rdGroup1.ItemIndex = 3)) then
  begin
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT RVLOCAT,CRLOCAT,RECVNO,RECVDT,TYPE,MODEL,COLOR,STRNO,ENGNO,REGNO,STAT,CRCOST ' +
        'FROM INVTRAN ' +
        'WHERE CRLOCAT LIKE :PCRLOCAT AND GCODE LIKE :PGCODE AND STAT LIKE :PSTAT ' +
        'AND TYPE LIKE :PTYPE AND MODEL LIKE :PMODEL AND COLOR LIKE :PCOLOR AND ' +
        'FLAG=''D'' AND (CONTNO IS NULL OR CONTNO='''') AND (SDATE IS NULL) ' +
        'ORDER BY MODEL,COLOR,RECVDT');
      params[0].AsString := edCrlocat.Text + '%';
      params[1].AsString := edGcode.Text + '%';
      params[2].AsString := XSt;
      params[3].AsString := edType.Text + '%';
      params[4].AsString := edModel.Text + '%';
      params[5].AsString := edColor.Text + '%';
      open;
    end;
  end;
   //
  if rdGroup1.ItemIndex = 1 then
  begin
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT RVLOCAT,CRLOCAT,RECVNO,RECVDT,TYPE,MODEL,COLOR,STRNO,ENGNO,REGNO,STAT,CRCOST ' +
        'FROM INVTRAN ' +
        'WHERE CRLOCAT LIKE :PCRLOCAT AND GCODE LIKE :PGCODE AND STAT LIKE :PSTAT ' +
        'AND TYPE LIKE :PTYPE AND MODEL LIKE :PMODEL AND COLOR LIKE :PCOLOR AND FLAG=''D'' ' +
        'AND (CONTNO IS NULL OR CONTNO='''') AND (SDATE IS NULL) ' +
        'AND (CURSTAT<>''R'' OR CURSTAT IS NULL) ' +
        'ORDER BY RECVNO');
      params[0].AsString := edCrlocat.Text + '%';
      params[1].AsString := edGcode.Text + '%';
      params[2].AsString := XSt;
      params[3].AsString := edType.Text + '%';
      params[4].AsString := edModel.Text + '%';
      params[5].AsString := edColor.Text + '%';
      open;
    end;
  end;
end;

procedure TfrRpDlgStk0.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frRpDlgStk0 := nil;
end;

procedure TfrRpDlgStk0.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrRpDlgStk0.DesignBtnClick(Sender: TObject);
begin
 IF rdGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Chkstock.fr3','2'); {2 = Design Report}
 IF rdGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_StkSale.fr3','2'); {2 = Design Report}
 IF rdGroup1.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SumStk.fr3','2'); {2 = Design Report}
 IF rdGroup1.ItemIndex = 3 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_GrpStk.fr3','2'); {2 = Design Report}
end;

procedure TfrRpDlgStk0.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XSt: string;
begin
  if (UPperCase(VarName) = 'VCRLOCAT') then
    Value := frRpDlgStk0.edCRLOCAT.Text + '%';
  if (UPperCase(VarName) = 'VMODEL') then
    Value := frRpDlgStk0.edModel.Text + '%';
  if (UPperCase(VarName) = 'VCOLOR') then
    Value := frRpDlgStk0.edColor.Text + '%';
  if (UPperCase(VarName) = 'VTYPE') then
    Value := frRpDlgStk0.edType.Text + '%';
  if (UPperCase(VarName) = 'VSTAT') then
  begin
    case XStat.ItemIndex of
      0:
        XSt := 'N%';
      1:
        XSt := 'O%';
      2:
        XSt := 'D%';
      3:
        XSt := 'P%';
      4:
        XSt := 'U%';
      5:
        XSt := 'S%';
      6:
        XSt := 'H%';
      7:
        XSt := '%';
    end;
    Value := XSt;
  end;
  if (UPperCase(VarName) = 'VGCODE') then
    Value := frRpDlgStk0.edGcode.Text + '%';
end;

procedure TfrRpDlgStk0.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_1_2');
end;

procedure TfrRpDlgStk0.edCrlocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    edCrlocat.Text := Searchset.Keyno;
end;

procedure TfrRpDlgStk0.edGcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if SearchSet.ShowModalSetgrp = Mrok then
    edGcode.Text := Searchset.Keyno;
end;

procedure TfrRpDlgStk0.edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalType = Mrok then
    edType.Text := Searchset.Keyno;
end;

procedure TfrRpDlgStk0.edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalmodel = Mrok then
    edModel.Text := Searchset.Keyno;
end;

procedure TfrRpDlgStk0.edColorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalcolor = Mrok then
    edColor.Text := Searchset.Keyno;
end;

procedure TfrRpDlgStk0.PrevBtnClick(Sender: TObject);
begin
 IF rdGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Chkstock.fr3','1'); {1 = Preview Report}
 IF rdGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_StkSale.fr3','1'); {1 = Preview Report}
 IF rdGroup1.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SumStk.fr3','1'); {1 = Preview Report}
 IF rdGroup1.ItemIndex = 3 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_GrpStk.fr3','1'); {1 = Preview Report}
end;

procedure TfrRpDlgStk0.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrRpDlgStk0.AdvGlowButton1Click(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TfrRpDlgStk0.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TfrRpDlgStk0.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TfrRpDlgStk0.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TfrRpDlgStk0.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TfrRpDlgStk0.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TfrRpDlgStk0.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TfrRpDlgStk0.FormShow(Sender: TObject);
begin
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  edcrLocat.Text := SFMain.XLocat;
  edcrLocat.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TfrRpDlgStk0.rdGroup1Click(Sender: TObject);
begin
  AdvGlowButton1.Visible := rdGroup1.ItemIndex <> 2;
end;

end.

