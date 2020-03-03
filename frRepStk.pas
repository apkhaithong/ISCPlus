unit frRepStk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, QuickRpt, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, DB, Mask, AdvGlowButton, RzSpnEdt, cxGraphics, AdvGroupBox,
  AdvOfficeButtons, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvToolBar, AdvPanel, cxLookAndFeels,
  cxLookAndFeelPainters, QExport4DBF, QExport4PDF, QExport4RTF, QExport4Docx,
  QExport4XLS, QExport4, QExport4Xlsx, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, Vcl.Menus, AdvMenus,
  bsSkinShellCtrls, BusinessSkinForm, frxExportXLSX, frxRich, frxTableObject,
  frxClass, frxDCtrl, frxFDComponents, frxGradient, frxExportImage,
  frxExportPDF, frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross,
  frxChBox, frxChart, frxBarcode;

type
  TfrRepStkRc = class(TForm)
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    Query1: TFDQuery;
    Query1RVLOCAT: TStringField;
    Query1RECVNO: TStringField;
    Query1RECVDT: TDateField;
    Query1INVNO: TStringField;
    Query1INVDT: TDateField;
    Query1TYPE: TStringField;
    Query1MODEL: TStringField;
    Query1COLOR: TStringField;
    Query1APCODE: TStringField;
    Query1STRNO: TStringField;
    Query1ENGNO: TStringField;
    Query1GCODE: TStringField;
    Query1STAT: TStringField;
    Query1RVCODE: TStringField;
    DataSource1: TDataSource;
    Query2: TFDQuery;
    Query2LOCAT: TStringField;
    Query2TYPE: TStringField;
    Query2MODEL: TStringField;
    Query2BAAB: TStringField;
    Query2COLOR: TStringField;
    Query2CC: TFloatField;
    Query2QTY: TIntegerField;
    Query2GCODE: TStringField;
    DataSource2: TDataSource;
    Label11: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    rdGroup: TAdvOfficeRadioGroup;
    XFdate: TcxDateEdit;
    XTDate: TcxDateEdit;
    Xtype: TcxButtonEdit;
    XModel: TcxButtonEdit;
    XColor: TcxButtonEdit;
    XGcode: TcxButtonEdit;
    XRVLocat: TcxButtonEdit;
    XApcode: TcxButtonEdit;
    XStat: TcxComboBox;
    Query3: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DateField1: TDateField;
    StringField3: TStringField;
    DateField2: TDateField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    DataSource3: TDataSource;
    Query4: TFDQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    StringField18: TStringField;
    DataSource4: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    QExportXLS1: TQExport4Xlsx;
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
    QExport4Xlsx2: TQExport4Xlsx;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CloseBtnClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure XtypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure XModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure XColorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure XRVLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure XApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure XGcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrevBtnClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
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
  frRepStkRc: TfrRepStkRc;

implementation

uses
  SrchSet1, SrchStk, USoftfirm, Dm1, DMSEC;
{$R *.DFM}

procedure TfrRepStkRc.Do_Export_Data;
var
  XST: string;
begin
  case XStat.ItemIndex of
    0:
      XST := 'N%';
    1:
      XST := 'O%';
    2:
      XST := 'D%';
    3:
      XST := 'P%';
    4:
      XST := 'U%';
    5:
      XST := 'S%';
    6:
      XST := 'H%';
    7:
      XST := '%';
  end;

  if rdGroup.ItemIndex = 0 then
  begin
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM VIEW_RECVSTK ' +
        'WHERE (RECVDT>=:XFDate AND RECVDT<=:XTDate) ' +
        'AND (RVLOCAT LIKE :XRvlocat) AND (APCODE LIKE :XApcode) ' +
        'AND (Model LIKE :XModel) AND (COLOR LIKE :XColor) AND (TYPE LIKE :XType) ' +
        'AND (STAT LIKE :XStat) AND (GCODE LIKE :XGcode) ORDER BY RECVNO ');
      params[0].AsDate := XFdate.Date;
      params[1].AsDate := XTDate.Date;
      params[2].AsString := XRVLocat.Text + '%';
      params[3].AsString := XApcode.Text + '%';
      params[4].AsString := XModel.Text + '%';
      params[5].AsString := XColor.Text + '%';
      params[6].AsString := Xtype.Text + '%';
      params[7].AsString := XST;
      params[8].AsString := XGcode.Text + '%';
      open;
    end;
    SaveDialog1.Execute;
    QExport4Xlsx1.FileName := SaveDialog1.FileName;
    if SaveDialog1.FileName <> '' then
      QExport4Xlsx1.Execute;
  end;

  if rdGroup.ItemIndex = 1 then
  begin
    with Query2 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT V.LOCAT,T.TYPE,T.MODEL,T.BAAB,T.COLOR,T.CC,T.GCODE, ' +
        'COUNT(*) AS QTY,SUM(T.NETCOST) AS NET,SUM(T.CRVAT) AS VAT, ' +
        'SUM(T.TOTCOST) AS TOT FROM INVINVO V,INVTRAN T ' +
        'WHERE (V.RECVNO=T.RECVNO) ' +
        'AND (V.RECVDT>=:XFDate AND V.RECVDT<=:XTDate) ' +
        'AND (T.RVLOCAT LIKE :XRvlocat) AND (V.APCODE LIKE :XApcode) ' +
        'AND (T.Model LIKE :XModel) AND (T.COLOR LIKE :XColor) AND (T.TYPE LIKE :XType) ' +
        'AND (T.STAT LIKE :XStat) AND (T.GCODE LIKE :XGcode) ' +
        'GROUP BY V.LOCAT,T.TYPE,T.MODEL,T.BAAB,T.COLOR,T.CC,T.GCODE');
      params[0].AsDate := XFdate.Date;
      params[1].AsDate := XTDate.Date;
      params[2].AsString := XRVLocat.Text + '%';
      params[3].AsString := XApcode.Text + '%';
      params[4].AsString := XModel.Text + '%';
      params[5].AsString := XColor.Text + '%';
      params[6].AsString := Xtype.Text + '%';
      params[7].AsString := XST;
      params[8].AsString := XGcode.Text + '%';
      open;
    end;
    SaveDialog2.Execute;
    QExportXLS1.FileName := SaveDialog2.FileName + '.xls';
    if SaveDialog2.FileName <> '' then
      QExportXLS1.Execute;
  end;
end;

procedure TfrRepStkRc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frRepStkRc := nil;
end;

procedure TfrRepStkRc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrRepStkRc.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrRepStkRc.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XSt: string;
begin
  if (UPperCase(VarName) = 'XFDATE') then
    Value := frRepStkRc.XFDate.Date;
  if (UPperCase(VarName) = 'XTDATE') then
    Value := frRepStkRc.XTDate.date;
  if (UPperCase(VarName) = 'XRVLOCAT') then
    Value := frRepStkRc.XRvlocat.Text + '%';
  if (UPperCase(VarName) = 'XAPCODE') then
    Value := frRepStkRc.XApcode.Text + '%';
  if (UPperCase(VarName) = 'XMODEL') then
    Value := frRepStkRc.XModel.Text + '%';
  if (UPperCase(VarName) = 'XCOLOR') then
    Value := frRepStkRc.XColor.Text + '%';
  if (UPperCase(VarName) = 'XTYPE') then
    Value := frRepStkRc.XType.Text + '%';
  if (UPperCase(VarName) = 'XSTAT') then
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
  if (UPperCase(VarName) = 'XGCODE') then
    Value := frRepStkRc.XGcode.Text + '%';
end;

procedure TfrRepStkRc.DesignBtnClick(Sender: TObject);
begin
  if rdGroup.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStk.fr3', '2')
 {2 = Design Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStkSum.fr3', '2'); {2 = Design Report}
end;

procedure TfrRepStkRc.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_1_1');
end;

procedure TfrRepStkRc.XtypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalType = Mrok then
    Xtype.Text := Searchset.Keyno;
end;

procedure TfrRepStkRc.XModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalmodel = Mrok then
    XModel.Text := Searchset.Keyno;
end;

procedure TfrRepStkRc.XColorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalcolor = Mrok then
    XColor.Text := Searchset.Keyno;
end;

procedure TfrRepStkRc.XRVLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    XRVLocat.Text := Searchset.Keyno;
end;

procedure TfrRepStkRc.XApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetAP = Mrok then
    XAPcode.Text := Searchset.Keyno;
end;

procedure TfrRepStkRc.XGcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if SearchSet.ShowModalSetgrp = Mrok then
    XGcode.Text := Searchset.Keyno;
end;

procedure TfrRepStkRc.PrevBtnClick(Sender: TObject);
begin
  if rdGroup.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStk.fr3', '1')
 {1 = Preview Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStkSum.fr3', '1');
end;

procedure TfrRepStkRc.AdvGlowButton1Click(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TfrRepStkRc.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TfrRepStkRc.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TfrRepStkRc.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TfrRepStkRc.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TfrRepStkRc.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TfrRepStkRc.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TfrRepStkRc.FormShow(Sender: TObject);
begin
  XFDate.Date := Date;
  XTDate.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  XRVLocat.Text := SFMain.XLocat;
  XRVLocat.Enabled := SFMain.XChgloc = 'Y';
end;

end.

