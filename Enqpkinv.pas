unit Enqpkinv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ImgList, ComCtrls, ToolWin, Mask,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDropDownEdit, cxCalendar,
  AdvGlowButton, ActnList, cxLookAndFeels, cxLookAndFeelPainters, dxDateRanges,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxCore, cxDateUtils, cxNavigator, frxBarcode, frxFDComponents, frxTableObject,
  frxChBox, frxGradient, frxRich, frxExportXLSX, frxExportImage, frxCross,
  frxExportCSV, frxClass, frxExportBaseDialog, frxExportPDF, frxBDEComponents,
  frxDCtrl, frxChart, frxDBSet;

type
  TFenqpkinv = class(TForm)
    qrPkNoTax: TFDQuery;
    DataSource1: TDataSource;
    Query2: TFDQuery;
    Panel1: TPanel;
    Label3: TLabel;
    Label7: TLabel;
    qrPkNoTaxPKNO: TStringField;
    qrPkNoTaxPKLOCAT: TStringField;
    qrPkNoTaxPKDATE: TDateField;
    qrPkNoTaxCUSCOD: TStringField;
    qrPkNoTaxJOBNO: TStringField;
    qrPkNoTaxNETTOTAL: TFloatField;
    qrPkNoTaxBALANCE: TFloatField;
    qrPkNoTaxVATAMT: TFloatField;
    qrPkNoTaxFLAG: TStringField;
    qrPkNoTaxNAME1: TStringField;
    qrPkNoTaxNAME2: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1PKLOCAT: TcxGridDBColumn;
    cxGrid1DBTableView1PKNO: TcxGridDBColumn;
    cxGrid1DBTableView1PKDATE: TcxGridDBColumn;
    cxGrid1DBTableView1CUSCOD: TcxGridDBColumn;
    cxGrid1DBTableView1NAME1: TcxGridDBColumn;
    cxGrid1DBTableView1NAME2: TcxGridDBColumn;
    cxGrid1DBTableView1JOBNO: TcxGridDBColumn;
    cxGrid1DBTableView1NETTOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1VATAMT: TcxGridDBColumn;
    cxGrid1DBTableView1BALANCE: TcxGridDBColumn;
    cxGrid1DBTableView1FLAG: TcxGridDBColumn;
    Label12: TLabel;
    EnqBtn: TAdvGlowButton;
    PrintBtn: TAdvGlowButton;
    ExitBtn: TAdvGlowButton;
    ActionList1: TActionList;
    AcEdit: TAction;
    Edit_Locat: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure cxGrid1DBTableView1FLAGGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AcEditExecute(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure Showpkno;
  public
    { Public declarations }
  end;

var
  Fenqpkinv: TFenqpkinv;

implementation

uses
  Dmic01, uSrcDlg, uSoftfirm, unfrPreview, Dmsec;
{$R *.DFM}

procedure TFenqpkinv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  Fenqpkinv := Nil;
end;

procedure TFenqpkinv.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSTK', 'HDSTK02_C_6');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_DateFrom.Date := Date - 365;
  Edit_DateTo.date := Date;
end;

procedure TFenqpkinv.Showpkno;
begin
  with qrPkNoTax do
  begin
    Close;
    Sql.Clear;

    Sql.Add('SELECT A.PKNO,A.PKLOCAT,A.PKDATE,A.CUSCOD,A.JOBNO,A.BALANCE,A.VATAMT,A.NETTOTAL,A.FLAG,' +
      'A.RTNPK,B.NAME1,B.NAME2  FROM PK_INVOI A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD AND ' +
      '(A.STAT=''A'') AND A.PKLOCAT LIKE :EDIT1 AND  ' +
      'A.PKDATE>=:EDIT2 AND A.PKDATE<=:EDIT3 AND A.FLAG<>''R'' AND A.FLAG<>''S'' Order by A.PKDATE');
    Params[0].Asstring := Edit_Locat.Text + '%';
    Params[1].Asdate := Edit_DateFrom.Date;
    Params[2].Asdate := Edit_DateTo.Date;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่มีใบเบิกค้างออกใบกำกับภาษี');
  end;
end;

procedure TFenqpkinv.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TFenqpkinv.EnqBtnClick(Sender: TObject);
begin
  Showpkno;
end;

procedure TFenqpkinv.PrintBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Rp_PkNoOutTax.fr3','1');
end;

procedure TFenqpkinv.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PFDATE' then
    Value := edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := edit_DateTo.Date;
end;

procedure TFenqpkinv.cxGrid1DBTableView1FLAGGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  if ARecord.Values[10] = '1' then
    AText := 'เบิกขายหน้าร้าน'
  else if ARecord.Values[10] = '3' then
    AText := 'เบิกเข้า job'
end;

procedure TFenqpkinv.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TFenqpkinv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFenqpkinv.AcEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Rp_PkNoOutTax.fr3','2');
end;

procedure TFenqpkinv.ExitBtnClick(Sender: TObject);
begin
  close;
end;

end.

