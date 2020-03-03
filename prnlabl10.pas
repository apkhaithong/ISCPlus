unit PrnLabl10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Buttons, Spin, ToolWin, ImgList, DB, Mask,
  AdvGlowButton, RzSpnEdt, cxGraphics, cxTextEdit, cxDropDownEdit, cxButtonEdit,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxCalendar, AdvGroupBox,
  AdvOfficeButtons, AdvPanel, AdvToolBar, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxCore, cxDateUtils,
  QExport4DBF, QExport4PDF, QExport4RTF, QExport4Docx, QExport4XLS, QExport4,
  QExport4Xlsx, Vcl.Menus, AdvMenus, bsSkinShellCtrls, BusinessSkinForm,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents,
  frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFPrnLabl10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label27: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioGroup2: TAdvOfficeRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    ExportBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxTextEdit;
    Edit5: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    edTypela: TcxButtonEdit;
    edModella: TcxButtonEdit;
    edColorla: TcxButtonEdit;
    ComboBox1: TcxComboBox;
    ComboBox2: TcxComboBox;
    edLocat: TcxButtonEdit;
    wwDBDateF: TcxDateEdit;
    wwDBDateT: TcxDateEdit;
    cbMonth: TcxComboBox;
    edFday: TcxTextEdit;
    cbEndDay: TcxComboBox;
    Query2: TFDQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    Query2CUSCOD: TStringField;
    Query2ADDRES: TStringField;
    Query2CELLPHON: TStringField;
    Query2WORKPHON: TStringField;
    Query1: TFDQuery;
    Query1TYPE: TStringField;
    Query1MODEL: TStringField;
    Query1BAAB: TStringField;
    Query1COLOR: TStringField;
    Query1SNAM: TStringField;
    Query1NAME1: TStringField;
    Query1NAME2: TStringField;
    Query1ADDR1: TStringField;
    Query1ADDR2: TStringField;
    Query1TUMB: TStringField;
    Query1AUMPDES: TStringField;
    Query1PROVDES: TStringField;
    Query1ZIP: TStringField;
    Query1TELP: TStringField;
    Query2MODEL: TStringField;
    Query2BAAB: TStringField;
    Query2COLOR: TStringField;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    AdvPanel3: TAdvPanel;
    Label4: TLabel;
    AdvPanel4: TAdvPanel;
    Label7: TLabel;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DesignBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cbMonthPropertiesChange(Sender: TObject);
    procedure edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTypelaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edModellaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edColorlaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ExportBtnClick(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure WordDocument1Click(Sender: TObject);
    procedure WordDocument2Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure DBF1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    frPath, TS, ST: string;
    procedure Do_Export_Data;
  end;

var
  FPrnLabl10: TFPrnLabl10;
  year, month, day: word;
  day1, month1, year1, Lday1: string;

implementation

uses
  Srchset1, Functn01, USoftFirm, Dm1, DMSEC;

{$R *.DFM}

procedure TFPrnLabl10.Do_Export_Data;
//var  TS,ST:String;
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

  case Combobox2.ItemIndex of
    0:
      ST := 'N%';
    1:
      ST := 'O%';
    2:
      ST := 'D%';
    3:
      ST := 'P%';
    4:
      ST := 'U%';
    5:
      ST := '%';
  end;

  if RadioGroup2.ItemIndex = 1 then
  begin
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM VIEW_LABELSALE  WHERE (CUSCOD LIKE :0) ' +
        'AND (GROUP1 LIKE :1 OR GROUP1 IS NULL) AND (GRADE LIKE :2 OR GRADE IS NULL) ' +
        'AND (TUMB LIKE :3) AND (AUMPCOD LIKE :4) AND (PROVCOD LIKE :5) ' +
        'AND (TYPE LIKE :6) AND (MODEL LIKE :7) AND (COLOR LIKE :8) ' +
        'AND (STAT LIKE :13) AND (SDATE BETWEEN :14 AND :15)');
      params[0].AsString := Edit1.Text + '%';
      params[1].AsString := Edit2.Text + '%';
      params[2].AsString := Edit3.Text + '%';
      params[3].AsString := Edit4.Text + '%';
      params[4].AsString := Edit5.Text + '%';
      params[5].AsString := Edit6.Text + '%';
      params[6].AsString := edTypela.Text + '%';
      params[7].AsString := edModella.Text + '%';
      params[8].AsString := edColorla.Text + '%';
      params[9].AsString := ST;
      params[10].AsDateTime := wwDBDateF.Date;
      params[11].AsDateTime := wwDBDateT.Date;
      open;
    end;
  end
  else
  begin
    with Query2 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT A.CUSCOD,A.SNAM,A.NAME1,A.NAME2,A.ADDRES,A.TUMB,A.AUMPDES,A.PROVDES,A.ZIP,A.TELP,A.CELLPHON,A.WORKPHON,' +
        'B.MODEL,B.BAAB,B.COLOR ' +
        'FROM VIEW_CUSTMAIL A LEFT JOIN VIEW_LABELSALE B ON (A.CUSCOD=B.CUSCOD) ');
      open;
    end;
  end;
end;

procedure TFPrnLabl10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP03_4');
end;

procedure TFPrnLabl10.FormShow(Sender: TObject);
begin
  wwDBDateF.Date := Date;
  wwDBDateT.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  edLocat.Text := SFMain.XLocat;
  edLocat.Enabled := SFMain.XChgloc = 'Y';
  decodedate(now, year, month, day);
  chqdatetos(day1, month1, year1, 2, now);
  Lday(LDay1, Now);
  cbMonth.Text := IntTostr(month);
  cbEndDay.Text := LDay1;
  ComboBox1.ItemIndex := 3;
end;

procedure TFPrnLabl10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FPrnLabl10 := nil;
end;

procedure TFPrnLabl10.DesignBtnClick(Sender: TObject);
begin
   if (RadioGroup1.ItemIndex = 0) and (RadioGroup2.ItemIndex = 0) then
   DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RepCust.fr3','2'); {2 = Design Report}
   if (RadioGroup1.ItemIndex = 1) and (RadioGroup2.ItemIndex = 0) then
   DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnLabel.fr3','2'); {2 = Design Report}
   if (RadioGroup1.ItemIndex = 1) and (RadioGroup2.ItemIndex = 1) then
   DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnLabelSale.fr3','2'); {2 = Design Report}
   if (RadioGroup1.ItemIndex = 0) and (RadioGroup2.ItemIndex = 1) then
   DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RepCustSale.fr3','2'); {2 = Design Report}
   if (RadioGroup1.ItemIndex = 2) and (RadioGroup2.ItemIndex = 1) then
   DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_CardBirthdaySale.fr3','2'); {2 = Design Report}
   if (RadioGroup1.ItemIndex = 2) and (RadioGroup2.ItemIndex = 0) then
   DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_CardBirthday.fr3','2'); {2 = Design Report}
end;

procedure TFPrnLabl10.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'PCUSCOD' then
    Value := Edit1.Text + '%';
  if Uppercase(VarName) = 'PGROUP' then
    Value := Edit2.Text + '%';
  if Uppercase(VarName) = 'PGRADE' then
    Value := Edit3.Text + '%';
  if Uppercase(VarName) = 'PTUMB' then
    Value := Edit4.Text + '%';
  if Uppercase(VarName) = 'PAUMP' then
    Value := Edit5.Text + '%';
  if Uppercase(VarName) = 'PPROV' then
    Value := Edit6.Text + '%';
  if Uppercase(VarName) = 'PTYPE' then
    Value := edTypela.Text + '%';
  if Uppercase(VarName) = 'PMODEL' then
    Value := edModella.Text + '%';
  if Uppercase(VarName) = 'PCOLOR' then
    Value := edColorla.Text + '%';
  if Uppercase(VarName) = 'PLOCAT' then
    Value := edLocat.Text + '%';
  if Uppercase(VarName) = 'FSDATE' then
    Value := wwDBDateF.Date;
  if Uppercase(VarName) = 'TSDATE' then
    Value := wwDBDateT.Date;
  if Uppercase(VarName) = 'PMONTH' then
    Value := cbmonth.Text;
  if Uppercase(VarName) = 'PFDAY' then
    Value := edFDay.Text;
  if Uppercase(VarName) = 'PLDAY' then
    Value := cbEndDay.Text;
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
      ST := 'N%';
    1:
      ST := 'O%';
    2:
      ST := 'D%';
    3:
      ST := 'P%';
    4:
      ST := 'U%';
    5:
      ST := '%';
  end;
  if Uppercase(VarName) = 'PSTAT' then
    Value := ST;
end;

procedure TFPrnLabl10.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalCusmast = Mrok then
    Edit1.Text := SearchSet.KeyNo;
end;

procedure TFPrnLabl10.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetArgrp = MrOk then
    Edit2.text := SearchSet.KeyNo;
end;

procedure TFPrnLabl10.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetGrade = MrOk then
    Edit3.text := SearchSet.KeyNo;
end;

procedure TFPrnLabl10.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetAump = MrOk then
    Edit5.text := SearchSet.KeyNo;
end;

procedure TFPrnLabl10.Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetProv = MrOk then
    Edit6.text := SearchSet.KeyNo;
end;

procedure TFPrnLabl10.cbMonthPropertiesChange(Sender: TObject);
begin
  case cbMonth.ItemIndex of
    0:
      cbEndDay.text := '31';
    1:
      cbEndDay.text := '28';
    2:
      cbEndDay.text := '31';
    3:
      cbEndDay.text := '30';
    4:
      cbEndDay.text := '31';
    5:
      cbEndDay.text := '30';
    6:
      cbEndDay.text := '31';
    7:
      cbEndDay.text := '31';
    8:
      cbEndDay.text := '30';
    9:
      cbEndDay.text := '31';
    10:
      cbEndDay.text := '30';
    11:
      cbEndDay.text := '31';
  end;
end;

procedure TFPrnLabl10.edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    edLocat.text := SearchSet.Keyno;
end;

procedure TFPrnLabl10.edTypelaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalType = MrOk then
    edTypela.text := SearchSet.Keyno;
end;

procedure TFPrnLabl10.edModellaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalModel = MrOk then
    edModella.text := SearchSet.Keyno;
end;

procedure TFPrnLabl10.edColorlaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalColor = MrOk then
    edColorla.text := SearchSet.Keyno;
end;

procedure TFPrnLabl10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFPrnLabl10.PrevBtnClick(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 0) and (RadioGroup2.ItemIndex = 0) then
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RepCust.fr3','1'); {1 = Preview Report}
  if (RadioGroup1.ItemIndex = 1) and (RadioGroup2.ItemIndex = 0) then
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnLabel.fr3','1'); {1 = Preview Report}
  if (RadioGroup1.ItemIndex = 1) and (RadioGroup2.ItemIndex = 1) then
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnLabelSale.fr3','1'); {1 = Preview Report}
  if (RadioGroup1.ItemIndex = 0) and (RadioGroup2.ItemIndex = 1) then
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RepCustSale.fr3','1'); {1 = Preview Report}
  if (RadioGroup1.ItemIndex = 2) and (RadioGroup2.ItemIndex = 1) then
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_CardBirthdaySale.fr3','1');{1 = Preview Report}
  if (RadioGroup1.ItemIndex = 2) and (RadioGroup2.ItemIndex = 0) then
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_CardBirthday.fr3','1'); {1 = Preview Report}
end;

procedure TFPrnLabl10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFPrnLabl10.ExportBtnClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFPrnLabl10.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFPrnLabl10.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFPrnLabl10.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFPrnLabl10.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFPrnLabl10.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;

  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFPrnLabl10.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TFPrnLabl10.RadioGroup1Click(Sender: TObject);
begin
  ExportBtn.Visible := (RadioGroup1.ItemIndex = 0);
  AdvPanel4.Visible := RadioGroup1.ItemIndex <> 2;
end;

procedure TFPrnLabl10.RadioGroup2Click(Sender: TObject);
begin
  ExportBtn.Visible := (RadioGroup1.ItemIndex = 0);
  if RadioGroup2.ItemIndex = 0 then
  begin
    QExport4Xlsx1.DataSet := Query2;
    QExport4XLS1.DataSet := Query2;
    QExport4Docx1.DataSet := Query2;
    QExport4RTF1.DataSet := Query2;
    QExport4PDF1.DataSet := Query2;
    QExport4DBF1.DataSet := Query2;
    AdvPanel3.Visible := True;
  end
  else
  begin
    QExport4Xlsx1.DataSet := Query1;
    QExport4XLS1.DataSet := Query1;
    QExport4Docx1.DataSet := Query1;
    QExport4RTF1.DataSet := Query1;
    QExport4PDF1.DataSet := Query1;
    QExport4DBF1.DataSet := Query1;
    AdvPanel3.Visible := False;
  end;
end;

end.

