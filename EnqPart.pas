unit Enqpart;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, Mask, DBCtrls, Spin, ComCtrls,
  ToolWin, ImgList, RzEdit, RzDBGrid, RzSpnEdt, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, AdvGlowButton, cxSpinEdit, ActnList, cxCheckBox, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, dxDateRanges, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, cxPC,
  frxBarcode, frxFDComponents, frxTableObject, frxChBox, frxGradient, frxRich,
  frxExportXLSX, frxExportImage, frxCross, frxExportCSV, frxClass,
  frxExportBaseDialog, frxExportPDF, frxBDEComponents, frxDCtrl, frxChart;

type
  TFmEnqpart = class(TForm)
    QHlpbinv: TFDQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    QHlpbinvPARTNO: TStringField;
    QHlpbinvLOCAT: TStringField;
    QHlpbinvYEAR1: TStringField;
    QHlpbinvDESC1: TStringField;
    QHlpbinvPRICE1: TFloatField;
    QHlpbinvPRICE2: TFloatField;
    QHlpbinvPRICE3: TFloatField;
    QHlpbinvPRICE4: TFloatField;
    QHlpbinvSHELF: TStringField;
    QHlpbinvCODE_T: TStringField;
    QHlpbinvALO: TFloatField;
    QHlpbinvONH: TFloatField;
    QHlpbinvTYPE: TStringField;
    QHlpbinvMODEL: TStringField;
    QHlpbinvNETPRC: TStringField;
    Edit_Locat: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    SpinEdit1: TcxSpinEdit;
    Label8: TLabel;
    EnqBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrintBtn: TAdvGlowButton;
    Query1: TFDQuery;
    ActionList1: TActionList;
    AcEdit: TAction;
    cxCheckBox1: TcxCheckBox;
    Label1: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    QHlpbinvGROUP1: TStringField;
    Q_Warehouse: TFDQuery;
    Q_WarehousePARTNO: TStringField;
    Q_WarehouseWAREHOUSECOD: TStringField;
    Q_WarehouseONHN_1: TFloatField;
    Q_WarehouseRESERV: TFloatField;
    DataSource2: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView1PARTNO: TcxGridDBColumn;
    cxGridDBTableView1WAREHOUSECOD: TcxGridDBColumn;
    cxGridDBTableView1ONHN_1: TcxGridDBColumn;
    cxGridDBTableView1RESERV: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1LOCAT: TcxGridDBColumn;
    cxGrid1DBTableView1GROUP1: TcxGridDBColumn;
    cxGrid1DBTableView1TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1PARTNO: TcxGridDBColumn;
    cxGrid1DBTableView1DESC1: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE1: TcxGridDBColumn;
    cxGrid1DBTableView1SHELF: TcxGridDBColumn;
    cxGrid1DBTableView1ALO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure AcEditExecute(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxPageControl1Change(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEnqpart: TFmEnqpart;
  Year, Month, Day: Word;

implementation

uses
  DmSet1, uSrcDlg, uSoftfirm, unfrPreview, uFindData, Dmsec;

{$R *.DFM}

procedure TFmEnqpart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QHlpbinv.Close;
  Action := caFree;
  FmEnqpart := Nil;
end;

procedure TFmEnqpart.FormShow(Sender: TObject);
begin
  DecodeDate(Now, Year, Month, Day);
  SpinEdit1.value := Month;
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TFmEnqpart.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmEnqpart.EnqBtnClick(Sender: TObject);
var
  S1, S2: string;
begin
  if cxPageControl1.ActivePage = cxTabSheet1 then
  begin
    cxCheckBox1.Checked := False;
    with Qhlpbinv do
    begin
      S1 := 'B.ONHN_' + Inttostr(SpinEdit1.value);
      S2 := 'B.ALLO_' + Inttostr(SpinEdit1.value);

      close;
      sql.clear;

      Sql.Add('SELECT  A.LOCAT,A.PARTNO,A.YEAR1,A.DESC1,A.GROUP1,A.PRICE1,A.PRICE2,A.PRICE3,A.PRICE4,A.SHELF,A.CODE_T,' + S2 + ' AS ALO,' + S1 + ' As ONH ,' +
        'B.LOCAT,A.TYPE,A.GROUP1,A.MODEL,A.NETPRC  FROM INVENTOR A,INVANLS B ' +
        'WHERE A.LOCAT LIKE :EDIT1 AND A.PARTNO LIKE :EDIT2 AND A.TYPE LIKE :EDIT3 ' +
        'AND (A.PARTNO=B.PARTNO) AND (A.LOCAT=B.LOCAT) AND (A.YEAR1 = B.YEAR1) ORDER BY A.TYPE,A.LOCAT,A.PARTNO');

      Params[0].asstring := Edit_Locat.TEXT + '%';
      Params[1].asstring := EDIT2.TEXT + '%';
      Params[2].asstring := cxButtonEdit1.TEXT + '%';
      open;
    end;
    cxCheckBox1.Checked := True;
  end
  else
  begin
    with Q_Warehouse do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ANLSWAREHOUSE WHERE PARTNO LIKE:0 ');
      Params[0].AsString := Edit2.Text + '%';
      Open;
    end;
  end;
end;

procedure TFmEnqpart.RzRapidFireButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFmEnqpart.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.TEXT := fSrcDlg.Keyno;
end;

procedure TFmEnqpart.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    EDIT2.TEXT := fSrcDlg.Keyno;
end;

procedure TFmEnqpart.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmEnqpart.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSTK', 'HDSTK02_C_1');
end;

procedure TFmEnqpart.PrintBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Rp_PartMove1.fr3','1');
end;

procedure TFmEnqpart.AcEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Rp_PartMove1.fr3','2');
end;

procedure TFmEnqpart.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = True then
    cxGrid1DBTableView1.DataController.Groups.FullExpand
  else
    cxGrid1DBTableView1.DataController.Groups.FullCollapse;
end;

procedure TFmEnqpart.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  xMonth: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text;
  if UpperCase(VarName) = 'PPARTNO' then
    Value := Edit2.Text;
  if UpperCase(VarName) = 'PTYPE' then
    Value := cxButtonEdit1.Text;

  if SpinEdit1.Text = '1' then
    xMonth := 'มกราคม'
  else if SpinEdit1.Text = '2' then
    xMonth := 'กุมภาพันธ์'
  else if SpinEdit1.Text = '3' then
    xMonth := 'มีนาคม'
  else if SpinEdit1.Text = '4' then
    xMonth := 'เมษายน'
  else if SpinEdit1.Text = '5' then
    xMonth := 'พฤษภาคม'
  else if SpinEdit1.Text = '6' then
    xMonth := 'มิถุนายน'
  else if SpinEdit1.Text = '7' then
    xMonth := 'กรกฎาคม'
  else if SpinEdit1.Text = '8' then
    xMonth := 'สิงหาคม'
  else if SpinEdit1.Text = '9' then
    xMonth := 'กันยายน'
  else if SpinEdit1.Text = '10' then
    xMonth := 'ตุลาคม'
  else if SpinEdit1.Text = '11' then
    xMonth := 'พฤศจิกายน'
  else if SpinEdit1.Text = '12' then
    xMonth := 'ธันวาคม';

  if UpperCase(VarName) = 'PMONTH' then
    Value := xMonth;
end;

procedure TFmEnqpart.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetTYPE = Mrok then
    cxButtonEdit1.Text := FFindData.Keyno;
end;

procedure TFmEnqpart.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabSheet1 then
  begin
    Label1.Visible := True;
    Label2.Visible := True;
    Label8.Visible := True;
    Edit_Locat.Visible := True;
    SpinEdit1.Visible := True;
    cxButtonEdit1.Visible := True;
  end
  else
  begin
    Label1.Visible := False;
    Label2.Visible := False;
    Label8.Visible := False;
    Edit_Locat.Visible := False;
    SpinEdit1.Visible := False;
    cxButtonEdit1.Visible := False;
  end;
end;

end.

