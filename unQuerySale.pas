unit unQuerySale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ImgList, ComCtrls, ToolWin, Mask,
  RzEdit, RzSpnEdt, RzDBGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxDateRanges, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxCore, cxDateUtils,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  Vcl.ActnList, cxGridLevel, cxGridChartView, cxGridDBChartView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxButtonEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, AdvGlowButton, frxClass, frxExportXLSX, frxRich, frxDCtrl,
  frxTableObject, frxExportPDF, frxExportImage, frxGradient, frxFDComponents,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFQuerySale = class(TForm)
    qrPkNoTax: TFDQuery;
    DataSource1: TDataSource;
    Query2: TFDQuery;
    Panel1: TPanel;
    EnqBtn: TAdvGlowButton;
    PrintBtn: TAdvGlowButton;
    ExitBtn: TAdvGlowButton;
    ActionList1: TActionList;
    AcEdit: TAction;
    Label11: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    qrPkNoTaxINVLOC: TStringField;
    qrPkNoTaxPARTNO: TStringField;
    qrPkNoTaxINVNO: TStringField;
    qrPkNoTaxINVDATE: TDateField;
    qrPkNoTaxCUSCOD: TStringField;
    qrPkNoTaxCUSTNAME: TStringField;
    qrPkNoTaxTAXNO: TStringField;
    qrPkNoTaxTAXDATE: TDateField;
    qrPkNoTaxPKNO: TStringField;
    qrPkNoTaxQTYOUT: TFloatField;
    qrPkNoTaxUPRICE: TFloatField;
    qrPkNoTaxREDU1: TFloatField;
    qrPkNoTaxTOTPRC: TFloatField;
    qrPkNoTaxGROUP1: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1INVLOC: TcxGridDBColumn;
    cxGrid1DBTableView1INVNO: TcxGridDBColumn;
    cxGrid1DBTableView1INVDATE: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTNAME: TcxGridDBColumn;
    cxGrid1DBTableView1GROUP1: TcxGridDBColumn;
    cxGrid1DBTableView1PARTNO: TcxGridDBColumn;
    cxGrid1DBTableView1PKNO: TcxGridDBColumn;
    cxGrid1DBTableView1QTYOUT: TcxGridDBColumn;
    cxGrid1DBTableView1UPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1REDU1: TcxGridDBColumn;
    cxGrid1DBTableView1TOTPRC: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxComboBox1: TcxComboBox;
    Label2: TLabel;
    qrTopsale1: TFDQuery;
    StringField2: TStringField;
    FloatField3: TFloatField;
    FloatField6: TFloatField;
    DataSource2: TDataSource;
    qrTopsale1DESC1: TStringField;
    cxGrid1DBTableView2PARTNO: TcxGridDBColumn;
    cxGrid1DBTableView2QTYOUT: TcxGridDBColumn;
    cxGrid1DBTableView2TOTPRC: TcxGridDBColumn;
    cxGrid1DBTableView2DESC1: TcxGridDBColumn;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1ChartView1: TcxGridChartView;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AcEditExecute(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1FocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView, AFocusedView: TcxCustomGridView);
    procedure cxButton1Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesInitPopup(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure Showpkno;
  public
    { Public declarations }
  end;

var
  FQuerySale: TFQuerySale;

implementation

uses
  Dmic01, uSrcDlg, uSoftfirm, unfrPreview, Dmsec;
{$R *.DFM}

procedure TFQuerySale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  qrProduct.Close;
  Action := Cafree;
  FQuerySale := Nil;
end;

procedure TFQuerySale.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSP', 'HDSP04');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_DateFrom.Date := Date;
  Edit_DateTo.date := Date;
end;

procedure TFQuerySale.Showpkno;
begin
  with qrPkNoTax do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM VIEW_PARTTOPSALE ' +
      'WHERE INVLOC LIKE :v1 AND (PARTNO LIKE :v2 ) ' +
      'AND INVDATE>=:v3  AND INVDATE<=:v4 AND CUSCOD LIKE :v5  AND GROUP1 LIKE :v6 ' +
      'ORDER BY INVLOC,INVDATE,PARTNO,CUSCOD');
    Params[0].Asstring := Edit_Locat.Text + '%';
    Params[1].Asstring := Edit3.Text + '%';
    Params[2].Asdate := Edit_DateFrom.Date;
    Params[3].Asdate := Edit_DateTo.Date;
    Params[4].Asstring := Edit1.Text + '%';
    Params[5].Asstring := Edit7.Text + '%';
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรายละเอียดการขาย..!');
  end;

  with qrTopsale1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT PARTNO,DESC1,SUM(QTYOUT) QTYOUT,SUM(TOTPRC) TOTPRC ' +
      'FROM VIEW_PARTTOPSALE ' +
      'WHERE INVLOC LIKE :v1 AND (PARTNO LIKE :v2 ) ' +
      'AND INVDATE>=:v3  AND INVDATE<=:v4 AND CUSCOD LIKE :v5  AND GROUP1 LIKE :v6  ' +
      'GROUP BY PARTNO,DESC1 ' +
      'ORDER BY QTYOUT desc ' +
      'fetch first ' + cxComboBox1.Text + ' rows only');
    Params[0].Asstring := Edit_Locat.Text + '%';
    Params[1].Asstring := Edit3.Text + '%';
    Params[2].Asdate := Edit_DateFrom.Date;
    Params[3].Asdate := Edit_DateTo.Date;
    Params[4].Asstring := Edit1.Text + '%';
    Params[5].Asstring := Edit7.Text + '%';
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรายละเอียดการขาย..!');
  end;
end;

procedure TFQuerySale.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
//  qrProduct.Open;
end;

procedure TFQuerySale.EnqBtnClick(Sender: TObject);
begin
//  cxComboBox2.EditValue := cxComboBox1.EditValue;
  Showpkno;
end;

procedure TFQuerySale.PrintBtnClick(Sender: TObject);
begin
  Showpkno;
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepSalesPartItem1.fr3', '1');
end;

procedure TFQuerySale.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort: string;
begin
  XSort := '0';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PCUSCOD' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PPARTFM' then
    Value := Edit3.Text;
  if UpperCase(VarName) = 'PGROUP' then
    Value := Edit7.Text + '%';

  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  if UpperCase(VarName) = 'PSEECOST' then
    Value := SFMain.Xseecost;
end;

procedure TFQuerySale.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TFQuerySale.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFQuerySale.AcEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepSalesPartItem1.fr3', '2');
end;

procedure TFQuerySale.ExitBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFQuerySale.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.Keyno;
end;

procedure TFQuerySale.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit7.Text := fSrcDlg.Keyno;
end;

procedure TFQuerySale.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAr = Mrok then
    Edit1.text := fSrcDlg.Keyno;
end;

procedure TFQuerySale.cxGrid1FocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
  cxComboBox1.Visible := not cxGrid1DBTableView1.Focused;
  Label2.Visible := not cxGrid1DBTableView1.Focused;
end;

procedure TFQuerySale.cxButton1Click(Sender: TObject);
var
  nType: string;
begin
//  if cxComboBox2.Text = '' then
//  sfmain.RaiseException('ยังไม่เลือกจำนวน Top sales..!');
//  if cxLookupComboBox1.Text = '' then
//  sfmain.RaiseException('ยังไม่เลือกประเภท..!');
//
//  case sfmain.AdvSmoothMessageDialog6.ExecuteDialog of
//    mrOk :
//    begin
//      nType := cxLookupComboBox1.EditValue;
//
//      with query1 do
//      begin
//        Sql.Add('UPDATE INVENTOR SET PRODUCTTYPCOD =:edit1 WHERE PARTNO IN '+
//                '(SELECT PARTNO FROM VIEW_PARTTOPSALE '+
//                'WHERE INVLOC LIKE :v1 AND (PARTNO LIKE :v2 ) '+
//                'AND INVDATE>=:v3  AND INVDATE<=:v4 AND CUSCOD LIKE :v5  AND GROUP1 LIKE :v6) ');
//        params[0].AsString := nType;
//        Params[1].Asstring := Edit_Locat.Text+'%';
//        Params[2].Asstring := Edit3.Text+'%';
//        Params[3].Asdate   := Edit_DateFrom.Date;
//        Params[4].Asdate   := Edit_DateTo.Date;
//        Params[5].Asstring := Edit1.Text+'%';
//        Params[6].Asstring := Edit7.Text+'%';
//        execSql;
//      end;
//
//      EnqBtnClick(Sender);
//    end;
//  end;
end;

procedure TFQuerySale.cxLookupComboBox1PropertiesInitPopup(Sender: TObject);
begin
//  qrProduct.Close;
//  qrProduct.Open;
end;

end.

