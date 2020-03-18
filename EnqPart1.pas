unit Enqpart1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, Mask, DBCtrls, ComCtrls,
  ImgList, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, RzButton, cxLookAndFeelPainters, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxButtonEdit, cxTextEdit, cxContainer, cxGroupBox, AdvGlowButton,
  ActnList, cxCheckBox, cxLookAndFeels, dxDateRanges, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxCore, cxDateUtils,
  cxNavigator, bsSkinShellCtrls, QExport4, QExport4Xlsx, frxBarcode,
  frxFDComponents, frxTableObject, frxChBox, frxGradient, frxRich,
  frxExportXLSX, frxExportImage, frxCross, frxExportCSV, frxClass,
  frxExportBaseDialog, frxExportPDF, frxBDEComponents, frxDCtrl, frxChart,
  frxDBSet;

type
  TFmEnqpart1 = class(TForm)
    DataSource1: TDataSource;
    Panel2: TPanel;
    Query1: TFDQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qrEnqPart: TFDQuery;
    qrEnqPartLOC: TStringField;
    qrEnqPartPARTNO: TStringField;
    qrEnqPartSTKDATE: TDateField;
    qrEnqPartQTYIN: TFloatField;
    qrEnqPartQTYOUT: TFloatField;
    qrEnqPartPKNO: TStringField;
    qrEnqPartTAXNO: TStringField;
    qrEnqPartTAXDATE: TDateField;
    qrEnqPartNETCOST: TFloatField;
    qrEnqPartAVGCOST: TFloatField;
    qrEnqPartOFFICCOD: TStringField;
    qrEnqPartCUSCOD: TStringField;
    qrEnqPartJOBNO: TStringField;
    qrEnqPartNETPRC: TFloatField;
    qrEnqPartYEAR1: TStringField;
    qrEnqPartFLAG: TStringField;
    qrEnqPartUSERID: TStringField;
    qrEnqPartTIME1: TDateTimeField;
    cxGrid1DBTableView1STKDATE: TcxGridDBColumn;
    cxGrid1DBTableView1QTYIN: TcxGridDBColumn;
    cxGrid1DBTableView1QTYOUT: TcxGridDBColumn;
    cxGrid1DBTableView1PKNO: TcxGridDBColumn;
    cxGrid1DBTableView1TAXNO: TcxGridDBColumn;
    cxGrid1DBTableView1TAXDATE: TcxGridDBColumn;
    cxGrid1DBTableView1NETCOST: TcxGridDBColumn;
    cxGrid1DBTableView1AVGCOST: TcxGridDBColumn;
    cxGrid1DBTableView1NETPRC: TcxGridDBColumn;
    cxGrid1DBTableView1USERID: TcxGridDBColumn;
    cxGrid1DBTableView1TIME1: TcxGridDBColumn;
    EnqBtn: TAdvGlowButton;
    PrintBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    Label6: TLabel;
    ActionList1: TActionList;
    AcEdit: TAction;
    Edit_Locat: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    edFDate: TcxDateEdit;
    edDateTo: TcxDateEdit;
    cxGrid1DBTableView1PARTNO: TcxGridDBColumn;
    cxCheckBox1: TcxCheckBox;
    AdvGlowButton1: TAdvGlowButton;
    QExportXLS1: TQExport4Xlsx;
    SaveDialog1: TbsSkinSaveDialog;
    Query1STKDATE: TDateField;
    Query1PKNO: TStringField;
    Query1QTYIN: TFloatField;
    Query1QTYOUT: TFloatField;
    Query1TAXNO: TStringField;
    Query1TAXDATE: TDateField;
    Query1NETCOST: TFloatField;
    Query1AVGCOST: TFloatField;
    Query1NETPRC: TFloatField;
    Query1FLAG: TStringField;
    Query2: TFDQuery;
    frxChartObject1: TfrxChartObject;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxCrossObject1: TfrxCrossObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxReportTableObject1: TfrxReportTableObject;
    frxFDComponents1: TfrxFDComponents;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDBDataset1: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure cxGrid1DBTableView1FLAGGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure RzBitBtn1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EnqBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit_LocatPropertiesChange(Sender: TObject);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcEditExecute(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEnqpart1: TFmEnqpart1;
  XDate, FrmDate, ToDate: TDateTime;
  XDay, XYear, XMonth: Word;

implementation

uses
  DmSet1, Dmic01, uSrcDlg, USoftFirm, unfrPreview, Dm1, dmsec;

{$R *.DFM}

procedure TFmEnqpart1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FmEnqpart1 := Nil;
end;

procedure TFmEnqpart1.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := sfMain.Xlocat;
  edDateTo.Date := Date;
  XDate := Date;
  DecodeDate(XDate, XYear, XMonth, XDay);
  edFDate.Text := '01/' + inttostr(Xmonth) + '/' + inttostr(xyear);
end;

procedure TFmEnqpart1.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmEnqpart1.cxGrid1DBTableView1FLAGGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  if ARecord.Values[12] = '1' then
    AText := 'ขายสด'
  else if ARecord.Values[12] = '2' then
    AText := 'ขายเชื่อ'
  else if ARecord.Values[12] = '3' then
    AText := 'เบิกเข้า job'
  else if ARecord.Values[12] = '4' then
    AText := 'ซื้อสด'
  else if ARecord.Values[12] = '5' then
    AText := 'ซื้อเชื่อ'
  else if ARecord.Values[12] = '6' then
    AText := 'ส่งคืน'
  else if ARecord.Values[12] = '7' then
    AText := 'รับคืน'
  else if ARecord.Values[12] = '9' then
    AText := 'ปรับยอด'
  else if ARecord.Values[12] = 'T' then
    AText := 'โอนออก'
  else if ARecord.Values[12] = 'R' then
    AText := 'รับโอน';
end;

procedure TFmEnqpart1.RzBitBtn1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F4 then
  begin
//     frReport1.LoadFromFile(sfmain.frpath+'Reports\Rp_PartMove.fr3');
//     frReport1.DesignReport;
  end;
end;

procedure TFmEnqpart1.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PFDATE' then
    Value := edFDate.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := edDateTo.Date;
  if UpperCase(VarName) = 'PPARTNO' then
    Value := edit4.Text;
  if UpperCase(VarName) = 'PARTDESC' then
    Value := cxTextEdit2.Text;
end;

procedure TFmEnqpart1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmEnqpart1.EnqBtnClick(Sender: TObject);
var
  M, P, M2, M3, M4: Longint;
  Ed2, Ed3, Ed4, ALLO, D1: string;
  XYear, XMonth, XDay: Word;
begin
  cxCheckBox1.Checked := False;

  {with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('UPDATE STKCARD SET GROUP1=(SELECT GROUP1 FROM INVMAST WHERE PARTNO=STKCARD.PARTNO) '+
            'WHERE GROUP1 IS NULL');
    execSql;
  end; }
   //If Edit_Locat.Text ='' Then SFMain.RaiseException('ยังไม่บันทึกรหัสสาขา');
  // If Edit4.Text ='' Then SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้า');

  XDate := edFDate.Date;
  DecodeDate(XDate, XYear, XMonth, XDay);

  with qrEnqPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM STKCARD WHERE LOC=:EDIT1 AND ' +
      'PARTNO LIKE :EDIT2 AND (STKDATE>=:EDIT3 AND STKDATE<=:EDIT4)  ORDER BY PARTNO,STKDATE');
    Params[0].AsString := Edit_Locat.text;
    Params[1].AsString := Edit4.text + '%';
    Params[2].Asdate := edFDate.Date;
    Params[3].Asdate := edDateTo.Date;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่มีข้อมูลของเดือนนี้');
  end;

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT (SUM(QTYIN)-SUM(QTYOUT)) AS SUBTRACT  FROM STKCARD WHERE (PARTNO=:0) AND (STKDATE BETWEEN :1 AND :2) AND LOC=:3');
    Params[0].AsString := Edit4.Text;
    Params[1].AsDate := edFDate.Date;
    Params[2].AsDate := edDateTo.Date;
    Params[3].AsString := Edit_Locat.Text;
    open;
  end;

  cxCheckBox1.Checked := True;
end;

procedure TFmEnqpart1.PrintBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Rp_PartMove.fr3','1');
end;

procedure TFmEnqpart1.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.KeyNo;
end;

procedure TFmEnqpart1.Edit_LocatPropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', Edit_Locat.Text);
end;

procedure TFmEnqpart1.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    edit4.text := fSrcDlg.Keyno;
end;

procedure TFmEnqpart1.Edit4PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := SFMain.FindShowDesc('INVENTOR', 'DESC1', 'PARTNO', Edit4.Text);
end;

procedure TFmEnqpart1.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSTK', 'HDSTK02_C_2');
end;

procedure TFmEnqpart1.AcEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Rp_PartMove.fr3','2');
end;

procedure TFmEnqpart1.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = True then
    cxGrid1DBTableView1.DataController.Groups.FullExpand
  else
    cxGrid1DBTableView1.DataController.Groups.FullCollapse;
end;

procedure TFmEnqpart1.AdvGlowButton1Click(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT STKDATE,PKNO,QTYIN,QTYOUT,TAXNO,TAXDATE,NETCOST,AVGCOST,NETPRC,FLAG FROM STKCARD ' +
      'WHERE STKDATE BETWEEN :DATE1 AND :DATE2 AND LOC LIKE :LOC AND PARTNO LIKE :PART2 ' +
      'ORDER BY PARTNO,STKDATE DESC ');
    params[0].AsDate := edFDate.Date;
    params[1].AsDate := edDateTo.Date;
    params[2].AsString := Edit_Locat.Text + '%';
    params[3].AsString := Edit4.Text + '%';
    open;
  end;
  SaveDialog1.Execute;
  QExportXLS1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExportXLS1.Execute;
end;

end.

