unit PurchasekitDlg;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons,
  ExtCtrls, Db, Grids, DBGrids, DBCtrls, Dbkbd, RzDBGrid, RzButton, RzPanel,
  RzSpnEdt, RzDbkbd, RzStatus, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  cxDBEdit, AdvSmoothTabPager, cxLookAndFeels, cxLookAndFeelPainters,
  cxNavigator, dxDateRanges, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, BusinessSkinForm, cxButtons, AdvPanel;

type
  TfrPurchaseKitDlg = class(TForm)
    AdvPanel1: TAdvPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1MODEL: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1RVQTY: TcxGridDBColumn;
    cxGrid1DBTableView1KANGRV: TcxGridDBColumn;
    cxGrid1DBTableView1MARK: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    QTrpurchase: TFDQuery;
    QTrpurchasePURCHASENO: TStringField;
    QTrpurchasePURCHASEDT: TDateField;
    QTrpurchaseGCODE: TStringField;
    QTrpurchaseTYPE: TStringField;
    QTrpurchaseMODEL: TStringField;
    QTrpurchaseBAAB: TStringField;
    QTrpurchaseCOLOR: TStringField;
    QTrpurchaseCC: TFloatField;
    QTrpurchaseRVLOCAT: TStringField;
    QTrpurchaseCRLOCAT: TStringField;
    QTrpurchaseCOST: TFloatField;
    QTrpurchaseQTY: TFloatField;
    QTrpurchaseTCOST: TFloatField;
    QTrpurchaseDISCT: TFloatField;
    QTrpurchaseNCOST: TFloatField;
    QTrpurchaseVATRT: TFloatField;
    QTrpurchaseNETCOST: TFloatField;
    QTrpurchaseVAT: TFloatField;
    QTrpurchaseTNETCOST: TFloatField;
    QTrpurchaseBONUS: TFloatField;
    QTrpurchaseFLAG: TStringField;
    QTrpurchaseMEMO1: TMemoField;
    QTrpurchaseTRFCOST: TFloatField;
    QTrpurchaseRVQTY: TFloatField;
    QTrpurchaseMARK: TStringField;
    QTrpurchaseKANGRV: TFloatField;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    DataSource2: TDataSource;
    QBK_Invtran: TFDQuery;
    QBK_InvtranRECVNO: TStringField;
    QBK_InvtranRECVDT: TDateField;
    QBK_InvtranGCODE: TStringField;
    QBK_InvtranTYPE: TStringField;
    QBK_InvtranMODEL: TStringField;
    QBK_InvtranBAAB: TStringField;
    QBK_InvtranCOLOR: TStringField;
    QBK_InvtranCC: TFloatField;
    QBK_InvtranSTAT: TStringField;
    QBK_InvtranSTRNO: TStringField;
    QBK_InvtranENGNO: TStringField;
    QBK_InvtranREGNO: TStringField;
    QBK_InvtranKEYNO: TStringField;
    QBK_InvtranREFNO: TStringField;
    QBK_InvtranMILERT: TFloatField;
    QBK_InvtranCRLOCAT: TStringField;
    QBK_InvtranMOVENO: TStringField;
    QBK_InvtranMOVEDT: TDateField;
    QBK_InvtranRVCODE: TStringField;
    QBK_InvtranRVLOCAT: TStringField;
    QBK_InvtranSTDCOST: TFloatField;
    QBK_InvtranCRCOST: TFloatField;
    QBK_InvtranDISCT: TFloatField;
    QBK_InvtranNETCOST: TFloatField;
    QBK_InvtranCRVAT: TFloatField;
    QBK_InvtranTOTCOST: TFloatField;
    QBK_InvtranVATRT: TFloatField;
    QBK_InvtranNADDCOST: TFloatField;
    QBK_InvtranVADDCOST: TFloatField;
    QBK_InvtranTADDCOST: TFloatField;
    QBK_InvtranSTDPRC: TFloatField;
    QBK_InvtranSDATE: TDateField;
    QBK_InvtranPRICE: TFloatField;
    QBK_InvtranBONUS: TFloatField;
    QBK_InvtranTSALE: TStringField;
    QBK_InvtranCONTNO: TStringField;
    QBK_InvtranCURSTAT: TStringField;
    QBK_InvtranCRDTXNO: TStringField;
    QBK_InvtranCRDAMT: TFloatField;
    QBK_InvtranRESVNO: TStringField;
    QBK_InvtranRESVDT: TDateField;
    QBK_InvtranFLAG: TStringField;
    QBK_InvtranMEMO1: TMemoField;
    QBK_InvtranPOSTDT: TDateField;
    QBK_InvtranINPDT: TDateTimeField;
    QBK_InvtranUSERID: TStringField;
    QBK_InvtranDORECV: TStringField;
    QBK_InvtranMANUYR: TStringField;
    QBK_InvtranAPCODE: TStringField;
    QBK_InvtranTAXIN: TStringField;
    Query1: TFDQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query2: TFDQuery;
    Label1: TLabel;
    Label3: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    RzBitBtn1: TcxButton;
    CancelBtn: TcxButton;
    AdvPanel3: TAdvPanel;
    RFBtnLoad: TcxButton;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1RVLOCAT: TcxGridDBColumn;
    cxGrid2DBTableView1MODEL: TcxGridDBColumn;
    cxGrid2DBTableView1COLOR: TcxGridDBColumn;
    cxGrid2DBTableView1STRNO: TcxGridDBColumn;
    cxGrid2DBTableView1ENGNO: TcxGridDBColumn;
    cxGrid2DBTableView1STDPRC: TcxGridDBColumn;
    cxGrid2DBTableView1APCODE: TcxGridDBColumn;
    cxGrid2DBTableView1RVCODE: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Label2: TLabel;
    cxRvcode: TcxButtonEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButtonEdit1Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RFBtnLoadClick(Sender: TObject);
    procedure QTrpurchaseRVQTYValidate(Sender: TField);
    procedure cxRvcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure Querykittrn;
  public
    { Public declarations }
  end;

var
  frPurchaseKitDlg: TfrPurchaseKitDlg;

implementation

uses
  uSoftFirm, Urecv, Srchset1, Ucshsal, FinSal10, Srchstk, unPurchase, Dmstock,
  Dm1, DmSec;
{$R *.DFM}

procedure TfrPurchaseKitDlg.Querykittrn;
begin

end;

procedure TfrPurchaseKitDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrPurchaseKitDlg.NxButtonEdit1Exit(Sender: TObject);
begin
  Querykittrn;
end;

procedure TfrPurchaseKitDlg.Edit1Exit(Sender: TObject);
begin
  Querykittrn;
end;

procedure TfrPurchaseKitDlg.FormShow(Sender: TObject);
begin
  with QTrpurchase do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TRPURCHASE WHERE  PURCHASENO=:edit1');
    Params[0].asstring := Frecv.DBEdit30.Text;
    Open;
    Edit;
    QTrpurchaseRVQTY.AsFloat := 0;
  end;

  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT A.APCODE,B.APNAME FROM HDPURCHASE A,APMAST B  ' +
      'WHERE A.APCODE=B.APCODE AND A.PURCHASENO =:XPURCHASE');
    params[0].AsString := QTrpurchase.fieldbyname('PURCHASENO').AsString;
    open;
    cxTextEdit1.Text := fieldbyname('APNAME').AsString;
  end;
end;

procedure TfrPurchaseKitDlg.RFBtnLoadClick(Sender: TObject);
var
  i: integer;
  ChkQty: Double;
  Chkmd: string;
begin
  if cxRvcode.text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสผู้รับรถ...!');
  if QTrpurchase.FieldByName('MARK').AsString = 'Y' then
  begin
    with QBK_Invtran do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM INVTRAN WHERE RECVNO='''' ');
      open;
    end;
    QTrpurchase.First;
    while not (QTrpurchase.Eof) do
    begin
      ChkQty := QTrpurchaseRVQTY.AsFloat;
      i := 1;
      while i <= ChkQty do
      begin
        QBK_Invtran.Append;
        QBK_Invtran.FieldByName('RVLOCAT').AsString := Frecv.DBLocat.Text;
        QBK_Invtran.FieldByName('TYPE').AsString := QTrpurchase.fieldbyname('TYPE').AsString;
        QBK_Invtran.FieldByName('BAAB').AsString := QTrpurchase.fieldbyname('BAAB').AsString;
        QBK_Invtran.FieldByName('CC').AsString := QTrpurchase.fieldbyname('CC').AsString;
        QBK_Invtran.FieldByName('GCODE').AsString := QTrpurchase.fieldbyname('GCODE').AsString;
        QBK_Invtran.FieldByName('MODEL').AsString := QTrpurchase.fieldbyname('MODEL').AsString;
        QBK_Invtran.FieldByName('COLOR').AsString := QTrpurchase.Fieldbyname('COLOR').AsString;
        QBK_Invtran.FieldByName('RVCODE').AsString := cxRvcode.Text;
        QBK_Invtran.FieldByName('STRNO').AsString := '';
        QBK_Invtran.FieldByName('ENGNO').AsString := '';
        QBK_Invtran.FieldByName('STDPRC').AsFloat := 0.00;
        i := i + 1;
        QBK_Invtran.next;
      end;
      QTrpurchase.Next;
    end;
    cxGrid1DBTableView1.OptionsData.Editing := False;
  end;
end;

procedure TfrPurchaseKitDlg.QTrpurchaseRVQTYValidate(Sender: TField);
begin
  if QTrpurchaseRVQTY.AsFloat > QTrpurchaseKANGRV.AsFloat then
    SFMain.RaiseException('ยอดรับมากกว่ายอดคงค้าง...!');
  QTrpurchaseKANGRV.AsFloat := (QTrpurchaseKANGRV.AsFloat - QTrpurchaseRVQTY.AsFloat);
end;

procedure TfrPurchaseKitDlg.cxRvcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = Mrok then
    cxRvcode.Text := Searchset.Keyno;
end;

procedure TfrPurchaseKitDlg.RzBitBtn1Click(Sender: TObject);
var
  T: string;
begin
  T := QTrpurchasePURCHASENO.AsString;
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QTrpurchase.Active then
      if (QTrpurchase.ApplyUpdates = 0) then
        QTrpurchase.CommitUpdates
      else
        raise Exception.Create(QTrpurchase.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    QTrpurchase.Edit;
    raise;
  end;
  //
  with QTrpurchase do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TRPURCHASE WHERE PURCHASENO = :PURCHASENO');
    Params[0].Asstring := T;
    Open;
  end;
end;

procedure TfrPurchaseKitDlg.CancelBtnClick(Sender: TObject);
begin
  Close;
end;

end.

