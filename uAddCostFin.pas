unit uAddCostFin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Dbkbd, RzDBGrid, RzStatus, RzDbkbd, AdvGlowButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxButtonEdit, cxContainer,
  cxTextEdit, cxDBEdit, AdvToolBar, AdvPanel, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, dxDateRanges, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm;

type
  TfrAddOptFin = class(TForm)
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
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    QFinSale: TFDQuery;
    QFinSaleCONTNO: TStringField;
    QFinSaleLOCAT: TStringField;
    QFinSaleRESVNO: TStringField;
    QFinSaleCUSCOD: TStringField;
    QFinSaleSTRNO: TStringField;
    QFinSaleINCLVAT: TStringField;
    QFinSaleVATRT: TFloatField;
    QFinSaleSTDPRC: TFloatField;
    QFinSaleDSCPRC: TFloatField;
    QFinSaleSDATE: TDateField;
    QFinSaleNPRICE: TFloatField;
    QFinSaleVATPRC: TFloatField;
    QFinSaleTOTPRC: TFloatField;
    QFinSaleNPAYRES: TFloatField;
    QFinSaleVATPRES: TFloatField;
    QFinSaleNDAWN: TFloatField;
    QFinSaleKEYINDWN: TFloatField;
    QFinSaleVATDWN: TFloatField;
    QFinSaleNKANG: TFloatField;
    QFinSaleVKANG: TFloatField;
    QFinSaleNFINAN: TFloatField;
    QFinSaleVATFIN: TFloatField;
    QFinSalePAYDWN: TFloatField;
    QFinSalePAYFIN: TFloatField;
    QFinSaleSMPAY: TFloatField;
    QFinSaleSMCHQ: TFloatField;
    QFinSaleTAXNO: TStringField;
    QFinSaleTAXDT: TDateField;
    QFinSaleTAXCRD: TStringField;
    QFinSaleNCARCST: TFloatField;
    QFinSaleVCARCST: TFloatField;
    QFinSaleOPTCST: TFloatField;
    QFinSaleOPTCVT: TFloatField;
    QFinSaleOPTCTOT: TFloatField;
    QFinSaleOPTPRC: TFloatField;
    QFinSaleOPTPVT: TFloatField;
    QFinSaleOPTPTOT: TFloatField;
    QFinSaleFINCOM: TFloatField;
    QFinSaleFINCOD: TStringField;
    QFinSaleSALCOD: TStringField;
    QFinSaleCOMITN: TFloatField;
    QFinSaleLPAYD: TDateField;
    QFinSaleLPAYA: TFloatField;
    QFinSaleISSUNO: TStringField;
    QFinSaleISSUDT: TDateField;
    QFinSaleTSALE: TStringField;
    QFinSaleMEMO1: TMemoField;
    QFinSaleUSERID: TStringField;
    QFinSaleINPDT: TDateTimeField;
    QFinSaleDELID: TStringField;
    QFinSaleDELDT: TDateTimeField;
    QFinSalePOSTDT: TDateTimeField;
    QFinSaleUpdateStatus: TStringField;
    QFinSaleTOTPRES: TFloatField;
    QFinSaleTOTDWN: TFloatField;
    QFinSaleTKANG: TFloatField;
    QFinSaleTOTFIN: TFloatField;
    QFinSaleTCARCST: TFloatField;
    QFinSaleCONFIR: TStringField;
    QFinSaleCONFIRID: TStringField;
    QFinSaleCONFIRDT: TDateField;
    QFinSaleNKEYIN: TFloatField;
    QFinSaleVKEYIN: TFloatField;
    QFinSaleTKEYIN: TFloatField;
    QFinSaleCRDTXNO: TStringField;
    QFinSaleCRDAMT: TFloatField;
    QFinSaleKEYIN: TFloatField;
    QFinSaleFLCANCL: TStringField;
    QFinSaleAPPVNO: TStringField;
    QFinSaleADDRNO: TStringField;
    QFinSaleCOMEXT: TFloatField;
    QFinSaleCOMOPT: TFloatField;
    QFinSaleCOMOTH: TFloatField;
    QFinSaleRECOMCOD: TStringField;
    QFinSaleACTICOD: TStringField;
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
    procedure QFinSaleAfterPost(DataSet: TDataSet);
    procedure QHirOptOPTCODEChange(Sender: TField);
    procedure cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QFinSaleBeforePost(DataSet: TDataSet);
    procedure QHirOptQTYChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAddOptFin: TfrAddOptFin;

implementation

uses
  USoftFirm, Dmsec, Dm1, Functn01, Srchsal1;

{$R *.dfm}

procedure TfrAddOptFin.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrAddOptFin.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalArFinc = Mrok then
  begin
    with QFinSale do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARFINC WHERE CONTNO=:V0 AND LOCAT=:V1');
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
      Params[0].Asstring := QFinSale.FieldByName('Contno').Asstring;
      Params[1].Asstring := QFinSale.FieldByName('Locat').Asstring;
      Open;
    end;
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT SNAM,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD=:XCUS');
      params[0].AsString := QFinSale.fieldbyname('CUSCOD').AsString;
      open;
      Edit1.Text := Fieldbyname('SNAM').asstring + Fieldbyname('NAME1').asstring + ' ' + Fieldbyname('NAME2').asstring;
    end;
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD=:XLOC');
      params[0].AsString := QFinSale.fieldbyname('LOCAT').AsString;
      open;
      Edit2.Text := Fieldbyname('LOCATNM').asstring;
    end;
  end;
end;

procedure TfrAddOptFin.QHirOptNewRecord(DataSet: TDataSet);
begin
  QHirOPT.Fieldbyname('Tsale').Asstring := QFinSaleTsale.Asstring;
  QHirOPT.Fieldbyname('Locat').Asstring := QFinSaleLocat.Asstring;
  QHirOPT.Fieldbyname('Contno').Asstring := QFinSaleContno.Asstring;
  QHirOPT.Fieldbyname('Qty').Asfloat := 1;
  QHirOpt.Fieldbyname('UserId').Asstring := SFMain.Xuser_Id;
  QHirOpt.Fieldbyname('InpDt').AsDatetime := Now;
  QHirOpt.Fieldbyname('SDATE').AsDatetime := QFinSaleSDATE.AsDateTime;
end;

procedure TfrAddOptFin.QHirOptAfterDelete(DataSet: TDataSet);
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
  if QFinSale.state = Dsbrowse then
    QFinSale.edit;
  QFinSale.FieldByName('OPTPRC').AsFloat := XNprice;
  QFinSale.FieldByName('OPTPVT').AsFloat := Xtotvat;
  QFinSale.FieldByName('OPTPTOT').AsFloat := Xtotprc;
  QFinSale.FieldByName('OPTCST').AsFloat := XNetcst;
  QFinSale.FieldByName('OPTCVT').AsFloat := XNetvat;
  QFinSale.FieldByName('OPTCTOT').AsFloat := XTotcst;

  QHirOpt.EnableControls;
  QHirOpt.GotoBookMark(bk);
  QHirOpt.FreeBookmark(bk);
end;

procedure TfrAddOptFin.QHirOptAfterPost(DataSet: TDataSet);
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
  if QFinSale.state = Dsbrowse then
    QFinSale.edit;
  QFinSale.FieldByName('OPTPRC').AsFloat := XNprice;
  QFinSale.FieldByName('OPTPVT').AsFloat := Xtotvat;
  QFinSale.FieldByName('OPTPTOT').AsFloat := Xtotprc;
  QFinSale.FieldByName('OPTCST').AsFloat := XNetcst;
  QFinSale.FieldByName('OPTCVT').AsFloat := XNetvat;
  QFinSale.FieldByName('OPTCTOT').AsFloat := XTotcst;

  QHirOpt.EnableControls;
  QHirOpt.GotoBookMark(bk);
  QHirOpt.FreeBookmark(bk);
end;

procedure TfrAddOptFin.SavBtnClick(Sender: TObject);
begin
  QFinSale.Post;
end;

procedure TfrAddOptFin.CancBtnClick(Sender: TObject);
begin
  QHirOpt.first;
  QFinSale.Cancel;
end;

procedure TfrAddOptFin.SoHirsalStateChange(Sender: TObject);
var
  N: word;
begin
  CloseBtn.Enabled := (SoHirsal.State = Dsbrowse);
  EnqBtn.Visible := (SoHirsal.State = Dsbrowse);
  SavBtn.Visible := (SoHirsal.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;

  if SoHirsal.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clSilver;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
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
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
    end;
  end;
  DBedit1.Properties.ReadOnly := True;
  DBedit2.Properties.ReadOnly := True;
  DBedit1.Style.Color := clSilver;
  DBedit2.Style.Color := clSilver;
end;

procedure TfrAddOptFin.QFinSaleAfterPost(DataSet: TDataSet);
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
    QFinSale.Edit;
    raise;
  end;
end;

procedure TfrAddOptFin.QHirOptOPTCODEChange(Sender: TField);
var
  F, V, VF, NF, Optc: Double;
begin
  if (SoHirsal.State = DsEdit) or (SoHirsal.State = DsInsert) then                                   //or (SoHirsal.State = DsInsert)
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
      QHirOPT.FieldByName('OPTNAME').AsString := Query1.fieldbyname('OPTNAME').AsString;
      QHirOPT.Fieldbyname('UPRICE').Asfloat := Query1.Fieldbyname('UNITCST').asfloat;
    //
      if QHirOptQty.Asfloat = 0 then
        SFMain.RaiseException('จำนวนขายเป็น 0');
      F := (QHirOpt.FieldByname('Qty').AsFloat * QHirOpt.FieldByname('UPRICE').AsFloat);
      VF := (F * QFinSaleVatrt.Asfloat / 107);
      NF := F - VF;
      QHirOpt.FieldByname('NPRICE').AsFloat := NF;
      QHirOpt.FieldByname('TOTVAT').AsFloat := FRound((QHirOpt.FieldByname('NPRICE').AsFloat * QFinSale.FieldByname('Vatrt').AsFloat / 100), 2);
      QHirOpt.FieldByname('TOTPRC').AsFloat := FRound((QHirOpt.FieldByname('NPRICE').AsFloat + QHirOpt.FieldByname('TOTVAT').AsFloat), 2);
     //
      Optc := QHirOpt.FieldByname('Qty').AsFloat * Query1.Fieldbyname('Unitcst').asfloat;
      V := FRound(Optc * QFinSaleVatrt.Asfloat / 100, 2);
      QHirOPT.Fieldbyname('Optcst').Asfloat := Optc;
      QHirOPT.Fieldbyname('Optcvt').Asfloat := V;
      QHirOPT.Fieldbyname('Optctot').Asfloat := V + Optc;
    end;
  end;
end;

procedure TfrAddOptFin.cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (SoHirsal.State = DsEdit) or (SoHirsal.State = DsInsert) then
  begin
    Application.Createform(TSearchSale, SearchSale);
    SearchSale.XLocat := QFinSale.FieldByName('Locat').Asstring;
    if SearchSale.ShowModalOptmas = Mrok then
    begin
      QHiropt.Edit;
      QHiropt.FieldByname('Tsale').Asstring := QFinSale.Fieldbyname('Tsale').Asstring;
      QHiropt.FieldByname('Locat').Asstring := QFinSale.Fieldbyname('Locat').Asstring;
      QHiropt.FieldByname('Contno').Asstring := QFinSale.Fieldbyname('Contno').Asstring;
      QHiropt.FieldByname('Optcode').Asstring := SearchSale.HQuery1.fieldbyname('Optcode').Asstring;
      QHiropt.FieldByname('Uprice').AsFloat := SearchSale.HQuery1.fieldbyname('UNITCST').AsFloat;
    end;
  end;
end;

procedure TfrAddOptFin.QFinSaleBeforePost(DataSet: TDataSet);
begin
  QHirOpt.first;
end;

procedure TfrAddOptFin.QHirOptQTYChange(Sender: TField);
var
  F, V, VF, NF, Optc: Double;
begin
  if (SoHirsal.State = DsEdit) or (SoHirsal.State = DsInsert) then //or (SoHirsal.State = DsInsert)
  begin
    F := (QHirOpt.FieldByname('Qty').AsFloat * QHirOpt.FieldByname('UPRICE').AsFloat);
    VF := (F * QFinSaleVatrt.Asfloat / 107);
    NF := F - VF;
    QHirOpt.FieldByname('NPRICE').AsFloat := NF;
    QHirOpt.FieldByname('TOTVAT').AsFloat := FRound((QHirOpt.FieldByname('NPRICE').AsFloat * QFinSale.FieldByname('Vatrt').AsFloat / 100), 2);
    QHirOpt.FieldByname('TOTPRC').AsFloat := FRound((QHirOpt.FieldByname('NPRICE').AsFloat + QHirOpt.FieldByname('TOTVAT').AsFloat), 2);
     //
    Optc := QHirOpt.FieldByname('Qty').AsFloat * QHirOpt.Fieldbyname('UCOST').asfloat;
    V := FRound(Optc * QFinSaleVatrt.Asfloat / 100, 2);
    QHirOPT.Fieldbyname('Optcst').Asfloat := Optc;
    QHirOPT.Fieldbyname('Optcvt').Asfloat := V;
    QHirOPT.Fieldbyname('Optctot').Asfloat := V + Optc;
  end;
end;

procedure TfrAddOptFin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frAddOptFin := nil;
end;

procedure TfrAddOptFin.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP01_2');
end;

end.

