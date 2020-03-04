unit RecvHistory;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ExtCtrls, ComCtrls, RzDBGrid,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxCheckBox,
  Menus, cxLookAndFeelPainters, cxButtons, cxTextEdit, cxDBEdit, cxContainer,
  cxLookAndFeels, dxDateRanges, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, BusinessSkinForm,
  Vcl.ActnList, cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents,
  frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRecvHistory = class(TForm)
    AdvPanel1: TAdvPanel;
    cxGrid1: TcxGrid;
    cxDBGridTran: TcxGridDBTableView;
    cxDBGridTranPARTNO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    StatusBar1: TStatusBar;
    QPotran: TFDQuery;
    DataSource1: TDataSource;
    QPotranPARTNO: TStringField;
    QPotranDESC1: TStringField;
    QPotranRECVLOC: TStringField;
    QPotranRECVNO: TStringField;
    QPotranRECVDATE: TDateField;
    QPotranAPCODE: TStringField;
    QPotranAPNAME: TStringField;
    QPotranUCOST: TFloatField;
    QPotranQTYRECV: TFloatField;
    QPotranNETCOST: TFloatField;
    QPotranNETTOT: TFloatField;
    QPotranAVGCOST: TFloatField;
    QPotranTOTAVGCOST: TFloatField;
    cxDBGridTranDESC1: TcxGridDBColumn;
    cxDBGridTranRECVLOC: TcxGridDBColumn;
    cxDBGridTranRECVNO: TcxGridDBColumn;
    cxDBGridTranRECVDATE: TcxGridDBColumn;
    cxDBGridTranAPCODE: TcxGridDBColumn;
    cxDBGridTranAPNAME: TcxGridDBColumn;
    cxDBGridTranQTYRECV: TcxGridDBColumn;
    cxDBGridTranNETCOST: TcxGridDBColumn;
    cxDBGridTranNETTOT: TcxGridDBColumn;
    cxDBGridTranAVGCOST: TcxGridDBColumn;
    cxDBGridTranTOTAVGCOST: TcxGridDBColumn;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    cxButtonEdit1: TcxButtonEdit;
    PrnBtn: TAdvGlowButton;
    ActionList1: TActionList;
    actEditPrn: TAction;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    procedure FormShow(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    XPono :String;
  end;

var
  FRecvHistory: TFRecvHistory;

implementation

uses Dmic01,uSrcDlg, USoftFirm, Dmsec;

{$R *.DFM}

procedure TFRecvHistory.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FRecvHistory := nil;
  Action := Cafree;
end;

procedure TFRecvHistory.FormShow(Sender: TObject);
begin
  With QPotran Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT A.PARTNO,B.DESC1,A.RECVLOC,A.RECVNO,A.RECVDATE,A.APCODE,C.APNAME,A.UCOST,A.QTYRECV,A.NETCOST,A.NETTOT,'+
            'A.AVGCOST, CAST(A.AVGCOST * A.QTYRECV AS DECIMAL(12, 2)) TOTAVGCOST '+
            'FROM RC_TRANS A INNER JOIN INVMAST B ON (A.PARTNO=B.PARTNO) '+
                'INNER JOIN APMAST C ON (A.APCODE=C.APCODE) '+
            'WHERE A.PARTNO =:XPARTNO AND A.FLAG = ''5'' '+
            'ORDER BY A.RECVDATE DESC,A.PARTNO,A.APCODE');
    Params[0].Asstring := cxButtonEdit1.Text;
    Open;
  End;
end;

procedure TFRecvHistory.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFRecvHistory.EditBtnClick(Sender: TObject);
begin
  With QPotran Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT A.PARTNO,B.DESC1,A.RECVLOC,A.RECVNO,A.RECVDATE,A.APCODE,C.APNAME,A.UCOST,A.QTYRECV,A.NETCOST,A.NETTOT,'+
            'A.AVGCOST, CAST(A.AVGCOST * A.QTYRECV AS DECIMAL(12, 2)) TOTAVGCOST '+
            'FROM RC_TRANS A INNER JOIN INVMAST B ON (A.PARTNO=B.PARTNO) '+
                'INNER JOIN APMAST C ON (A.APCODE=C.APCODE) '+
            'WHERE A.PARTNO =:XPARTNO AND A.FLAG = ''5'' '+
            'ORDER BY A.RECVDATE DESC,A.PARTNO,A.APCODE');
    Params[0].Asstring := cxButtonEdit1.Text;
    Open;
  End;
end;

procedure TFRecvHistory.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalInvmast=Mrok Then
  cxButtonEdit1.Text := fSrcDlg.Keyno;
end;

procedure TFRecvHistory.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  If UpperCase(VarName)='VPARTNO' THEN
  Value:=cxButtonEdit1.Text;
end;

procedure TFRecvHistory.PrnBtnClick(Sender: TObject);
begin
  if cxButtonEdit1.Text = '' Then
     sfmain.RaiseException('กรุณาเลือกรหัสสินค้าก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'FR_REPPARTHIS.fr3','1');
end;

procedure TFRecvHistory.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'FR_REPPARTHIS.fr3','2');
end;

procedure TFRecvHistory.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSTK','HDSTK02_C_7');
end;

end.
