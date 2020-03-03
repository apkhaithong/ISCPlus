unit RpTXD10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, Mask, RzSpnEdt, AdvGlowButton, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGroupBox, AdvOfficeButtons,
  cxDropDownEdit, cxCalendar, AdvToolBar, cxGraphics, AdvPanel, cxLookAndFeels,
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
  TFRpTXD10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    RadioGroup2: TAdvOfficeRadioGroup;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    rdStat: TcxComboBox;
    XFDate: TcxDateEdit;
    Query1: TFDQuery;
    Query1RECVDT: TDateField;
    Query1RECVNO: TStringField;
    Query1MODELDES: TStringField;
    Query1STRNO: TStringField;
    Query1COLORDES: TStringField;
    Query1CRLOCAT: TStringField;
    Query1NETCOST: TFloatField;
    Query1CRVAT: TFloatField;
    Query1TOTCOST: TFloatField;
    DataSource1: TDataSource;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
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
    procedure BitBtn3Click(Sender: TObject);
    procedure RadioGp1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
    procedure Do_Export_Data;
    { Public declarations }
  end;

var
  FRpTXD10: TFRpTXD10;
  XREP: integer;

implementation

uses
  Srchset1, Srchsal1, unfrPreview, USoftFirm, Dm1, DMSEC;        // RpTxD11
{$R *.DFM}

procedure TFRpTXD10.Do_Export_Data;
var
  XStat, XRadio: string;
begin
  case rdStat.ItemIndex of
    0:
      XStat := 'N%';
    1:
      XStat := 'O%';
    2:
      XStat := 'D%';
    3:
      XStat := 'P%';
    4:
      XStat := 'U%';
    5:
      XStat := 'S%';
    6:
      XStat := 'H%';
    7:
      XStat := '%';
  end;
  case RadioGroup2.ItemIndex of
    0:
      XRadio := 'V.RECVDT';
    1:
      XRadio := 'T.TAXDT';
  end;

  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select  t.recvno,t.recvdt,t.vatrt,resvno,crlocat,t.type,t.model,s.modeldes,t.baab,t.color,c.colordes,t.cc,t.stat,t.strno,t.netcost,t.crvat,t.totcost,t.Naddcost ' +
      'FROM INVINVO V,INVTRAN T,SETMODEL S,SETCOLOR C ' +
      'WHERE (V.RECVNO=T.RECVNO) AND (T.MODEL=S.MODELCOD) AND (T.COLOR=C.COLORCOD) AND (T.SDATE>:VFDATE OR T.SDATE IS NULL) AND (T.TYPE LIKE:VTYPE) ' +
      'AND (T.MODEL LIKE :VMODEL) AND (T.RVLOCAT LIKE :VLOCAT)  AND (T.STAT LIKE :VSTAT) AND ' +
      '(T.GCODE LIKE :VGCODE OR T.GCODE IS NULL)  AND (' + XRadio + '<= :VFDATE) and (:VFDATE  < (select  min(b.movedt) ' +
      'from (select strno,movedt,moveto from invmovt ) as b ' +
      'where t.strno = b.strno and b.movedt >= ' + XRadio + ') OR ' +
      't.strno  not  in (select strno  from (select strno,movedt,moveto from invmovt) as c ' +
      'where c.strno = t.strno and c.movedt >= ' + XRadio + ')) ' +
      'UNION ' +
      'select  t.recvno,t.recvdt,t.vatrt,resvno,crlocat,t.type,t.model,s.modeldes,t.baab,t.color,c.colordes,t.cc,t.stat,t.strno,t.netcost,t.crvat, ' +
      't.totcost,t.Naddcost ' +
      'FROM INVINVO V,INVTRAN T,SETMODEL S,SETCOLOR C,(select strno,movedt,moveto from invmovt ) as E ' +
      'WHERE (V.RECVNO=T.RECVNO) AND (T.STRNO = E.STRNO) AND (T.MODEL=S.MODELCOD) AND (T.COLOR=C.COLORCOD) ' +
      'AND (T.SDATE>:VFDATE OR T.SDATE IS NULL) AND (T.TYPE LIKE:VTYPE) ' +
      'AND (T.MODEL LIKE:VMODEL) AND (E.MOVETO LIKE:VLOCAT) AND (T.STAT LIKE:VSTAT) AND ' +
      '(T.GCODE LIKE :VGCODE OR T.GCODE IS NULL)  AND (E.MOVEDT<=:VFDATE) and (' + XRadio + '<=e.movedt) ' +
      'and (:VFDATE  < (select  min(c.movedt)  from (select strno,movedt,moveto from invmovt) as c ' +
      'where c.strno = e.strno and c.movedt > e.movedt) OR ' +
      'e.strno  not  in (select strno  from (select strno,movedt,moveto from invmovt) as c ' +
      'where c.strno = e.strno and c.movedt > e.movedt))');
    params[0].AsDate := XFDate.Date;
    params[1].AsString := Edit5.Text + '%';
    params[2].AsString := Edit4.Text + '%';
    params[3].AsString := Edit1.Text + '%';
    params[4].AsString := XStat;
    params[5].AsString := Edit3.Text + '%';
    params[6].AsDate := XFDate.Date;
    params[7].AsDate := XFDate.Date;
    open;
  end;
  SaveDialog1.Execute;
  QExportXLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExportXLS1.Execute;
end;

procedure TFRpTXD10.FormShow(Sender: TObject);
begin
  XFDate.Date := Date;
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TFRpTXD10.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFRpTXD10.RadioGp1Click(Sender: TObject);
begin
 {If RadioGp1.Itemindex=1 Then
  begin
    label10.Visible := false;
  end
  Else
  Begin
    label10.Visible := true;
  End;  }
end;

procedure TFRpTXD10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRpTXD10 := nil;
end;

procedure TFRpTXD10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_1_8');
end;

procedure TFRpTXD10.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XStat, XRadio: string;
begin
  if UpperCase(VarName) = 'VLOCAT' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'VGCODE' then
    Value := Edit3.Text + '%';
  if UpperCase(VarName) = 'VTYPE' then
    Value := Edit5.Text + '%';
  if UpperCase(VarName) = 'VMODEL' then
    Value := Edit4.Text + '%';
  if UpperCase(VarName) = 'VFDATE' then
    Value := XFDate.Date;
  case rdStat.ItemIndex of
    0:
      XStat := 'N%';
    1:
      XStat := 'O%';
    2:
      XStat := 'D%';
    3:
      XStat := 'P%';
    4:
      XStat := 'U%';
    5:
      XStat := 'S%';
    6:
      XStat := 'H%';
    7:
      XStat := '%';
  end;
  if UpperCase(VarName) = 'VSTAT' then
    Value := XStat + '%';

  case RadioGroup2.ItemIndex of
    0:
      XRadio := '0';
    1:
      XRadio := '1';
  end;
  if Uppercase(VarName) = 'VSORT' then
    Value := XRadio;
end;

procedure TFRpTXD10.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetLocat = Mrok then
    edit1.text := Searchset.KeyNo;
end;

procedure TFRpTXD10.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetgrp = Mrok then
    edit3.text := Searchset.KeyNo;
end;

procedure TFRpTXD10.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if SearchSet.ShowModalType = Mrok then
    edit5.text := Searchset.KeyNo;
end;

procedure TFRpTXD10.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalModel = Mrok then
    edit4.text := Searchset.KeyNo;
end;

procedure TFRpTXD10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFRpTXD10.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStkKangCurrent.fr3', '2'); {2 = Design Report}
end;

procedure TFRpTXD10.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStkKangCurrent.fr3', '1'); {1 = Preview Report}
end;

procedure TFRpTXD10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpTXD10.AdvGlowButton1Click(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFRpTXD10.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFRpTXD10.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFRpTXD10.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFRpTXD10.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFRpTXD10.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFRpTXD10.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

