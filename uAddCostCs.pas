unit uAddCostCS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Dbkbd, AdvGlowButton, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, RzStatus, cxButtonEdit, cxContainer, cxTextEdit,
  cxDBEdit, AdvToolBar, AdvPanel, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator,
  dxDateRanges, BusinessSkinForm;

type
  TfrAddOptCs = class(TForm)
    AdvPanel1: TAdvPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1OPTCODE: TcxGridDBColumn;
    cxGrid1DBTableView1OPTNAME: TcxGridDBColumn;
    cxGrid1DBTableView1UPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1NPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTVAT: TcxGridDBColumn;
    cxGrid1DBTableView1TOTPRC: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    SoHirsal: TDataSource;
    QHirOpt: TFDQuery;
    QHirOptTSALE: TStringField;
    QHirOptCONTNO: TStringField;
    QHirOptLOCAT: TStringField;
    QHirOptOPTCODE: TStringField;
    QHirOptUPRICE: TFloatField;
    QHirOptUCOST: TFloatField;
    QHirOptQTY: TFloatField;
    QHirOptTOTPRC: TFloatField;
    QHirOptTOTVAT: TFloatField;
    QHirOptNPRICE: TFloatField;
    QHirOptOPTCST: TFloatField;
    QHirOptOPTCVT: TFloatField;
    QHirOptOPTCTOT: TFloatField;
    QHirOptCONFIR: TStringField;
    QHirOptUSERID: TStringField;
    QHirOptINPDT: TDateField;
    QHirOptPOSTDT: TDateField;
    QHirOptSDATE: TDateField;
    QHirOptRTNFLAG: TStringField;
    QHirOptOPTNAME: TStringField;
    SoHirOpt: TDataSource;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    QCshSale: TFDQuery;
    QCshSaleCONTNO: TStringField;
    QCshSaleLOCAT: TStringField;
    QCshSaleRESVNO: TStringField;
    QCshSaleCUSCOD: TStringField;
    QCshSaleSTRNO: TStringField;
    QCshSaleINCLVAT: TStringField;
    QCshSaleSDATE: TDateField;
    QCshSaleVATRT: TFloatField;
    QCshSaleSTDPRC: TFloatField;
    QCshSaleDSCPRC: TFloatField;
    QCshSaleNPRICE: TFloatField;
    QCshSaleVATPRC: TFloatField;
    QCshSaleTOTPRC: TFloatField;
    QCshSaleNPAYRES: TFloatField;
    QCshSaleVATPRES: TFloatField;
    QCshSaleSMPAY: TFloatField;
    QCshSaleSMCHQ: TFloatField;
    QCshSaleNCARCST: TFloatField;
    QCshSaleVCARCST: TFloatField;
    QCshSaleTAXNO: TStringField;
    QCshSaleTAXDT: TDateField;
    QCshSaleOPTCST: TFloatField;
    QCshSaleOPTCVT: TFloatField;
    QCshSaleOPTCTOT: TFloatField;
    QCshSaleOPTPRC: TFloatField;
    QCshSaleOPTPVT: TFloatField;
    QCshSaleOPTPTOT: TFloatField;
    QCshSaleCREDTM: TFloatField;
    QCshSaleDUEDT: TDateField;
    QCshSaleSALCOD: TStringField;
    QCshSaleCOMITN: TFloatField;
    QCshSaleISSUNO: TStringField;
    QCshSaleISSUDT: TDateField;
    QCshSaleLPAYDT: TDateField;
    QCshSaleTSALE: TStringField;
    QCshSaleMEMO1: TMemoField;
    QCshSaleUSERID: TStringField;
    QCshSaleINPDT: TDateTimeField;
    QCshSaleDELID: TStringField;
    QCshSaleDELDT: TDateTimeField;
    QCshSalePOSTDT: TDateTimeField;
    QCshSaleUpdateStatus: TStringField;
    QCshSaleTOTPRES: TFloatField;
    QCshSaleTCARCST: TFloatField;
    QCshSaleNKANG: TFloatField;
    QCshSaleVKANG: TFloatField;
    QCshSaleTKANG: TFloatField;
    QCshSaleNKEYIN: TFloatField;
    QCshSaleVKEYIN: TFloatField;
    QCshSaleTKEYIN: TFloatField;
    QCshSaleCRDTXNO: TStringField;
    QCshSaleCRDAMT: TFloatField;
    QCshSaleKEYIN: TFloatField;
    QCshSaleFLCANCL: TStringField;
    QCshSaleAPPVNO: TStringField;
    QCshSalePAYTYP: TStringField;
    QCshSaleADDRNO: TStringField;
    QCshSaleCOMEXT: TFloatField;
    QCshSaleCOMOPT: TFloatField;
    QCshSaleCOMOTH: TFloatField;
    QCshSaleRECOMCOD: TStringField;
    QCshSaleACTICOD: TStringField;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure QHirOptNewRecord(DataSet: TDataSet);
    procedure QHirOptAfterDelete(DataSet: TDataSet);
    procedure QHirOptAfterPost(DataSet: TDataSet);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SoHirsalStateChange(Sender: TObject);
    procedure QCshSaleAfterPost(DataSet: TDataSet);
    procedure QCshSaleBeforePost(DataSet: TDataSet);
    procedure QHirOptOPTCODEChange(Sender: TField);
    procedure cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAddOptCs: TfrAddOptCs;

implementation

uses
  USoftFirm, Dm1, Functn01, Srchsal1, Dmsec;

{$R *.dfm}

procedure TfrAddOptCs.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrAddOptCs.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalArcred = Mrok then
  begin
    with QCshSale do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARCRED WHERE CONTNO=:V0 AND LOCAT=:V1');
      Params[0].Asstring := SearchSale.KeyNo;
      Params[1].Asstring := SearchSale.HQuery1.Fieldbyname('LoCat').Asstring;
      Open;
    end;
    with QHirOpt do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARINOPT WHERE CONTNO=:CONT ' +
        'AND LOCAT=:XLOCAT ');
      Params[0].Asstring := QCshSale.FieldByName('Contno').Asstring;
      Params[1].Asstring := QCshSale.FieldByName('Locat').Asstring;
      Open;
    end;
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT SNAM,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD=:XCUS');
      params[0].AsString := QCshSale.fieldbyname('CUSCOD').AsString;
      open;
      Edit1.Text := Fieldbyname('SNAM').asstring + Fieldbyname('NAME1').asstring + ' ' + Fieldbyname('NAME2').asstring;
    end;
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD=:XLOC');
      params[0].AsString := QCshSale.fieldbyname('LOCAT').AsString;
      open;
      Edit2.Text := Fieldbyname('LOCATNM').asstring;
    end;
  end;
end;

procedure TfrAddOptCs.QHirOptNewRecord(DataSet: TDataSet);
begin
  QHirOPT.Fieldbyname('Tsale').Asstring := QCshSaleTsale.Asstring;
  QHirOPT.Fieldbyname('Locat').Asstring := QCshSaleLocat.Asstring;
  QHirOPT.Fieldbyname('Contno').Asstring := QCshSaleContno.Asstring;
  QHirOPT.Fieldbyname('Qty').Asfloat := 1;
  QHirOpt.Fieldbyname('UserId').Asstring := SFMain.Xuser_Id;
  QHirOpt.Fieldbyname('InpDt').AsDatetime := Now;
  QHirOpt.Fieldbyname('SDATE').AsDatetime := QCshSaleSDATE.AsDateTime;
end;

procedure TfrAddOptCs.QHirOptAfterDelete(DataSet: TDataSet);
var
  XNetcst, XNetvat, XTotcst, XNprice, Xtotvat, Xtotprc: double;
  bk: Tbookmark;
begin
  QHirOpt.DisableControls;
  bk := QHirOpt.GetBookmark;
  XNprice := 0;
  Xtotvat := 0;
  Xtotprc := 0;
  XNetcst := 0;
  XNetvat := 0;
  XTotcst := 0;
  QHirOpt.first;
  while not QHirOpt.Eof do
  begin
    XNprice := XNprice + QHirOptNPrice.Asfloat;
    Xtotvat := Xtotvat + QHirOptTotvat.Asfloat;
    Xtotprc := Xtotprc + QHirOptTotprc.Asfloat;
    XNetcst := XNetcst + QHirOptOptcst.Asfloat;
    XNetvat := XNetvat + QHirOptOptcvt.Asfloat;
    XTotcst := XTotcst + QHirOptOptctot.Asfloat;
    QHirOpt.Next;
  end;
  if QCshSale.state = Dsbrowse then
    QCshSale.edit;
  QCshSale.FieldByName('OPTPRC').AsFloat := XNprice;
  QCshSale.FieldByName('OPTPVT').AsFloat := Xtotvat;
  QCshSale.FieldByName('OPTPTOT').AsFloat := Xtotprc;
  QCshSale.FieldByName('OPTCST').AsFloat := XNetcst;
  QCshSale.FieldByName('OPTCVT').AsFloat := XNetvat;
  QCshSale.FieldByName('OPTCTOT').AsFloat := XTotcst;

  QHirOpt.EnableControls;
  QHirOpt.GotoBookMark(bk);
  QHirOpt.FreeBookmark(bk);
end;

procedure TfrAddOptCs.QHirOptAfterPost(DataSet: TDataSet);
var
  XNetcst, XNetvat, XTotcst, XNprice, Xtotvat, Xtotprc: double;
  bk: Tbookmark;
begin
  QHirOpt.DisableControls;
  bk := QHirOpt.GetBookmark;
  XNprice := 0;
  Xtotvat := 0;
  Xtotprc := 0;
  XNetcst := 0;
  XNetvat := 0;
  XTotcst := 0;
  QHirOpt.first;
  while not QHirOpt.Eof do
  begin
    XNprice := XNprice + QHirOptNPrice.Asfloat;
    Xtotvat := Xtotvat + QHirOptTotvat.Asfloat;
    Xtotprc := Xtotprc + QHirOptTotprc.Asfloat;
    XNetcst := XNetcst + QHirOptOptcst.Asfloat;
    XNetvat := XNetvat + QHirOptOptcvt.Asfloat;
    XTotcst := XTotcst + QHirOptOptctot.Asfloat;
    QHirOpt.Next;
  end;
  if QCshSale.state = Dsbrowse then
    QCshSale.edit;
  QCshSale.FieldByName('OPTPRC').AsFloat := XNprice;
  QCshSale.FieldByName('OPTPVT').AsFloat := Xtotvat;
  QCshSale.FieldByName('OPTPTOT').AsFloat := Xtotprc;
  QCshSale.FieldByName('OPTCST').AsFloat := XNetcst;
  QCshSale.FieldByName('OPTCVT').AsFloat := XNetvat;
  QCshSale.FieldByName('OPTCTOT').AsFloat := XTotcst;

  QHirOpt.EnableControls;
  QHirOpt.GotoBookMark(bk);
  QHirOpt.FreeBookmark(bk);
end;

procedure TfrAddOptCs.QCshSaleAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QHirOpt.Active then
      if (QHirOpt.ApplyUpdates = 0) then
        QHirOpt.CommitUpdates
      else
        raise Exception.Create(QHirOpt.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QCshSale.Edit;
    raise;
  end;
end;

procedure TfrAddOptCs.SavBtnClick(Sender: TObject);
begin
  QCshSale.Post;
end;

procedure TfrAddOptCs.CancBtnClick(Sender: TObject);
begin
  QHirOpt.first;
  QCshSale.Cancel;
end;

procedure TfrAddOptCs.SoHirsalStateChange(Sender: TObject);
var
  N: word;
begin
  CloseBtn.Enabled := (SoHirsal.State = Dsbrowse);
  SavBtn.Visible := (SoHirsal.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  if SoHirsal.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  DBedit1.Properties.ReadOnly := True;
  DBedit2.Properties.ReadOnly := True;
  DBedit1.Style.Color := clSilver;
  DBedit2.Style.Color := clSilver;
end;

procedure TfrAddOptCs.QCshSaleBeforePost(DataSet: TDataSet);
begin
  QHirOpt.first;
end;

procedure TfrAddOptCs.QHirOptOPTCODEChange(Sender: TField);
var
  V, F, VF, NF, Optc: Double;
begin
  if (SoHirsal.State = DsEdit) or (SoHirsal.State = DsInsert) then
  begin
    with Query1 do
    begin
      CLOSE;
      SQL.CLEAR;
      SQL.ADD('SELECT * FROM OPTMAST WHERE OPTCODE = :OPTCODE ' +
        'AND LOCAT = :LOCAT ');
      PARAMS[0].ASSTRING := QHirOpt.Fieldbyname('OPtcode').Asstring;
      PARAMS[1].ASSTRING := QHirOpt.Fieldbyname('LOCAT').Asstring;
      OPEN;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสอุปกรณ์นี้');
      QHirOPT.Fieldbyname('OPTNAME').AsString := Query1.Fieldbyname('OPTNAME').AsString;
      QHirOPT.Fieldbyname('UPRICE').Asfloat := Query1.Fieldbyname('UNITCST').asfloat;
      //
      if QHirOptQty.Asfloat = 0 then
        SFMain.RaiseException('จำนวนขายเป็น 0');
      F := (QHirOpt.FieldByname('Qty').AsFloat * QHirOpt.FieldByname('UPRICE').AsFloat);
      VF := (F * QCshSaleVatrt.Asfloat / 107);
      NF := F - VF;
      QHirOpt.FieldByname('NPRICE').AsFloat := NF;
      QHirOpt.FieldByname('TOTVAT').AsFloat := FRound((QHirOpt.FieldByname('NPRICE').AsFloat * QCshSale.FieldByname('Vatrt').AsFloat / 100), 2);
      QHirOpt.FieldByname('TOTPRC').AsFloat := FRound((QHirOpt.FieldByname('NPRICE').AsFloat + QHirOpt.FieldByname('TOTVAT').AsFloat), 2);
     //
      Optc := QHirOpt.FieldByname('Qty').AsFloat * Query1.Fieldbyname('Unitcst').asfloat;
      V := FRound(Optc * QCshSaleVatrt.Asfloat / 100, 2);
      QHirOPT.Fieldbyname('Optcst').Asfloat := Optc;
      QHirOPT.Fieldbyname('Optcvt').Asfloat := V;
      QHirOPT.Fieldbyname('Optctot').Asfloat := V + Optc;
    end;
  end;
end;

procedure TfrAddOptCs.cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (SoHirsal.State = DsEdit) or (SoHirsal.State = DsInsert) then
  begin
    Application.Createform(TSearchSale, SearchSale);
    SearchSale.XLocat := QCshSale.FieldByName('Locat').Asstring;
    if SearchSale.ShowModalOptmas = Mrok then
    begin
      QHiropt.Edit;
      QHiropt.FieldByname('Tsale').Asstring := QCshSale.Fieldbyname('Tsale').Asstring;
      QHiropt.FieldByname('Locat').Asstring := QCshSale.Fieldbyname('Locat').Asstring;
      QHiropt.FieldByname('Contno').Asstring := QCshSale.Fieldbyname('Contno').Asstring;
      QHiropt.FieldByname('Optcode').Asstring := SearchSale.HQuery1.fieldbyname('Optcode').Asstring;
      QHiropt.FieldByname('Uprice').AsFloat := SearchSale.HQuery1.fieldbyname('UNITPRC').AsFloat;
    end;
  end;
end;

procedure TfrAddOptCs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrAddOptCs := nil;
end;

procedure TfrAddOptCs.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP01_1');
end;

end.

