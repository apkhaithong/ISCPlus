unit unInvClaim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, DB, ExtCtrls, ComCtrls,
  Dbkbd, ImgList, ToolWin, RzButton, RzDBGrid, RzSpnEdt, RzDbkbd, RzPanel, Math,
  RzLabel, RzDBLbl, RzBorder, cxTextEdit, cxDBEdit, cxButtonEdit, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvGlowButton,
  AdvToolBar, AdvPanel, cxLookAndFeelPainters, Menus, cxButtons, cxGroupBox,
  cxRadioGroup, cxMemo, ActnList, cxGraphics, cxLookAndFeels, cxNavigator,
  dxDateRanges, System.Actions, FireDAC.Phys.Intf, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, dxStatusBar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrInvClaim = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    RzDBLabel2: TcxDBTextEdit;
    RzDBLabel1: TcxDBTextEdit;
    RzDBLabel4: TcxDBTextEdit;
    RzDBLabel5: TcxDBTextEdit;
    DBRadioGroup3: TcxDBRadioGroup;
    cxGroupBox2: TcxGroupBox;
    Label12: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzDBLabel13: TRzDBLabel;
    RzDBLabel12: TRzDBLabel;
    RzDBLabel11: TRzDBLabel;
    AddBtn2: TAdvGlowButton;
    AddBtn1: TAdvGlowButton;
    AddBtn4: TAdvGlowButton;
    AddBtn5: TAdvGlowButton;
    BillDate: TcxDBDateEdit;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    QOthinvoi1: TFDQuery;
    QOthinvoi1Updatestatus: TStringField;
    QOthinvoi1REPNO: TStringField;
    QOthinvoi1REPDT: TDateField;
    QOthinvoi1LOCAT: TStringField;
    QOthinvoi1JOBNO: TStringField;
    QOthinvoi1JOBDATE: TDateField;
    QOthinvoi1STRNO: TStringField;
    QOthinvoi1KILOMT: TFloatField;
    QOthinvoi1CUSCOD: TStringField;
    QOthinvoi1PTTOT: TFloatField;
    QOthinvoi1PTVAT: TFloatField;
    QOthinvoi1PTNET: TFloatField;
    QOthinvoi1SVTOT: TFloatField;
    QOthinvoi1SVVAT: TFloatField;
    QOthinvoi1SVNET: TFloatField;
    QOthinvoi1OUTTOT: TFloatField;
    QOthinvoi1OUTTVAT: TFloatField;
    QOthinvoi1OUTTNET: TFloatField;
    QOthinvoi1COLTOT: TFloatField;
    QOthinvoi1COLVAT: TFloatField;
    QOthinvoi1COLNET: TFloatField;
    QOthinvoi1OTHTOT: TFloatField;
    QOthinvoi1OTHVAT: TFloatField;
    QOthinvoi1OTHNET: TFloatField;
    QOthinvoi1VATRT: TFloatField;
    QOthinvoi1TOTPRC: TFloatField;
    QOthinvoi1TOTVAT: TFloatField;
    QOthinvoi1TOTNET: TFloatField;
    QOthinvoi1TAXNO: TStringField;
    QOthinvoi1TAXDT: TDateField;
    QOthinvoi1FLAGCLAIM: TStringField;
    K: TMemoField;
    QOthinvoi1USERID: TStringField;
    QOthinvoi1INPDATE: TDateTimeField;
    QOthinvoi1VATTYPE: TStringField;
    QOthinvoi1CLAIMTYP: TStringField;
    QOthinvoi1REGNO: TStringField;
    QOthinvoi1USERREP: TStringField;
    QOthtran1: TFDQuery;
    SoOthtran1: TDataSource;
    Query2: TFDQuery;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranDESC1: TcxGridDBColumn;
    cxGridTranQTY: TcxGridDBColumn;
    cxGridTranUPRICE: TcxGridDBColumn;
    cxGridTranTOTPRIC: TcxGridDBColumn;
    cxGridTranREDU: TcxGridDBColumn;
    cxGridTranNETCOST: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxGridTranCLAIM: TcxGridDBColumn;
    QOthtran1PARTNO: TStringField;
    Bevel2: TBevel;
    Label16: TLabel;
    Label20: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label21: TLabel;
    RzDBLabel7: TcxDBTextEdit;
    RzDBLabel6: TcxDBTextEdit;
    RzDBLabel8: TcxDBTextEdit;
    RzDBLabel9: TcxDBTextEdit;
    RzDBLabel10: TcxDBTextEdit;
    QOthtran1REPNO: TStringField;
    QOthtran1REPDT: TDateField;
    QOthtran1LOCAT: TStringField;
    QOthtran1JOBNO: TStringField;
    QOthtran1DESCIPTION: TStringField;
    QOthtran1UCOST: TFloatField;
    QOthtran1UPRICE: TFloatField;
    QOthtran1QTY: TFloatField;
    QOthtran1TOTPRIC: TFloatField;
    QOthtran1REDU: TFloatField;
    QOthtran1NETPRIC: TFloatField;
    QOthtran1TOTCOST: TFloatField;
    QOthtran1CLAIM: TStringField;
    QOthtran1FLAG: TStringField;
    QOthtran1USERID: TStringField;
    QOthtran1INPDATE: TDateTimeField;
    QOthtran1TAXNO: TStringField;
    QOthtran1TAXDT: TDateField;
    DBEdit1: TcxDBButtonEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit12: TcxDBButtonEdit;
    DBEdit3: TcxDBTextEdit;
    RzDBLabel3: TcxDBTextEdit;
    DBEdit4: TcxDBButtonEdit;
    DBMemo1: TcxDBMemo;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure AddBtn1Click(Sender: TObject);
    procedure AddBtn2Click(Sender: TObject);
    procedure AddBtn4Click(Sender: TObject);
    procedure AddBtn5Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FldCombo1Change(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure QOthinvoi1CalcFields(DataSet: TDataSet);
    procedure QOthinvoi1REPDTValidate(Sender: TField);
    procedure QOthinvoi1NewRecord(DataSet: TDataSet);
    procedure QOthtran1NewRecord(DataSet: TDataSet);
    procedure QOthtran1AfterPost(DataSet: TDataSet);
    procedure QOthinvoi1BeforePost(DataSet: TDataSet);
    procedure QOthinvoi1JOBNOValidate(Sender: TField);
    procedure QOthinvoi1AfterPost(DataSet: TDataSet);
    procedure DBEdit3Change(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure QOthinvoi1BeforeDelete(DataSet: TDataSet);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actEditPrnExecute(Sender: TObject);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QOthtran1PARTNOValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure QOthtran1QTYValidate(Sender: TField);
    procedure QOthtran1UPRICEValidate(Sender: TField);
    procedure QOthtran1TOTPRICValidate(Sender: TField);
    procedure QOthtran1REDUValidate(Sender: TField);
    procedure QOthinvoi1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frInvClaim: TfrInvClaim;
  XCusno: string;

implementation

uses
  DmSv, HlpJob, fUNCTN01, uSrcDlg1, USoftFirm, Dmsec, unDlgPrnClaim, unfrPreview;

{$R *.DFM}

procedure TfrInvClaim.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSV', 'HDSV11_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TfrInvClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QOthinvoi1.Close;
  QOthtran1.Close;
  Action := Cafree;
  frInvClaim := nil;
end;

procedure TfrInvClaim.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  DBKbd1.AllowEditing := QOthinvoi1.Fieldbyname('FLAGCLAIM').AsString = 'N';
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  AddBtn1.Enabled := SavBtn.Visible;
  AddBtn2.Enabled := SavBtn.Visible;
  AddBtn4.Enabled := SavBtn.Visible;
  AddBtn5.Enabled := SavBtn.Visible;

  DBRadioGroup3.Properties.Readonly := not (DataSource1.Dataset.State = Dsinsert);
  cxGridTran.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := False;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).Readonly := True;
        TRzDBGrid(Components[N]).Color := clBtnFace;
      end;

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := True;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).Readonly := False;
        TRzDBGrid(Components[N]).Color := clWhite;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  if not (DM_SEC.QDBConfig.Active) then
    DM_SEC.QDBConfig.Open;
  DBEdit2.Properties.Readonly := DM_SEC.QDBConfig.Fieldbyname('R_REP').asstring = 'Y';
end;

procedure TfrInvClaim.DBEdit3Exit(Sender: TObject);
begin
  with Dm_Sv.QJoborder do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO= :XNO AND LOCAT = :XLOCAT ORDER BY JOBNO ');
    Params[0].Asstring := QOthinvoi1.FieldByName('JOBNO').Asstring;
    Params[1].Asstring := QOthinvoi1.FieldByName('LOCAT').Asstring;
    Open;
  end;
  if Dm_Sv.QJoborder.Bof and Dm_Sv.QJoborder.eof then
    SFMain.RaiseException('ไม่มีหมายเลขJOBนี้ในแฟ้มข้อมูล');
  QOthinvoi1.FieldByName('JOBDATE').AsDateTime := Dm_Sv.QJoborder.FieldByName('RECVDATE').AsDateTime;
  QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.QJoborder.FieldByName('CUSCOD').Asstring;
  QOthinvoi1.FieldByName('STRNO').Asstring := Dm_Sv.QJoborder.FieldByName('STRNO').Asstring;
end;

procedure TfrInvClaim.SavBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    SFMain.RaiseException('กรุณาบันทึกเลขที่รายงาน...!');
  if DBEdit4.Text = '' then
    SFMain.RaiseException('ไม่พบรหัสผู้รายงาน...!');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV11_1', 'INSERT', QOthinvoi1REPNO.asstring)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV11_1', 'EDIT', QOthinvoi1REPNO.asstring);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  QOthinvoi1.Post;
end;

procedure TfrInvClaim.CancBtnClick(Sender: TObject);
begin
  if QOthinvoi1.Active then
    QOthinvoi1.Cancel;
  with QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CLAIMINVOI WHERE REPNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
  with QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CLAIMTRAN WHERE REPNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TfrInvClaim.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if SFMain.XChgLoc = 'Y' then
    fSrcDlg1.XSrLocat := ''
  else
    fSrcDlg1.XSrLocat := SFmain.Xlocat;
  FSrcDlg1.XClaim := ' AND C.CLAIMTYP=''C'' ';
  if fSrcDlg1.ShowModalClaimiv = Mrok then
  begin
    with QOthinvoi1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CLAIMINVOI WHERE REPNO = :XNO ');
      Params[0].Asstring := fSrcDlg1.Keyno;
      Open;
      if QOthinvoi1.Bof and QOthinvoi1.eof then
        SFMain.RaiseException('ไม่มีข้อมูล ');
    end;
    with QOthtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CLAIMTRAN WHERE REPNO = :XNO ');
      Params[0].Asstring := QOthinvoi1.FieldByName('REPNO').Asstring;
      Open;
    end;

    with query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT SDATE,BODYNO FROM SVMAST WHERE STRNO=:0');
      Params[0].AsString := QOthinvoi1.FieldByName('STRNO').Asstring;
      Open;
    end;
  end;
end;

procedure TfrInvClaim.AddBtn1Click(Sender: TObject);
begin
  if DBEdit12.Text = '' then
    SFMain.RaiseException('ยังไม่ระบุเลขที่แจ้งซ่อม...!');

  with Dm_Sv.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:0 ');
    Params[0].asstring := QOthinvoi1JOBNO.AsString;
    Open;
    if not (Bof and Eof) then
    begin
      if Dm_Sv.Query1.FieldByName('Status').Asstring = 'W' then
        SFMain.RaiseException('ยังไม่ปิด Job');

      QOthinvoi1.FieldByName('JOBNO').Asstring := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
      QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
      QOthinvoi1.FieldByName('STRNO').Asstring := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;
      if XCusno <> '' then
        QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
      else if Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring <> QOthinvoi1.FieldByName('CUSCOD').Asstring then
      begin
        MessageBeep(0);
        if MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่', mtconfirmation, [Mbyes, mbno], 0) = MRyes then
          QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
      end;
    end
    else
      SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');
  end;
    //
  with Dm_Sv.QServtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO= :XDT1 AND CUSCOD LIKE :XCUS AND (CLAIM=''Y'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
    Params[0].Asstring := QOthinvoi1.FieldByName('JOBNO').Asstring;
    Params[1].Asstring := XCusno + '%';
    Open;
  end;

  if not (Dm_Sv.QServtran1.Bof and Dm_Sv.QServtran1.Eof) then
  begin
    QOthtran1.DisableControls;
    Dm_sv.QServtran1.First;
    while not Dm_Sv.QServtran1.Eof do
    begin
      if QOthtran1.State = Dsbrowse then
        QOthtran1.Append;
      QOthtran1.FieldByName('PARTNO').Asstring := Dm_Sv.QServtran1.Fieldbyname('CODE').Asstring;
      QOthtran1.FieldByName('DESCIPTION').Asstring := Dm_Sv.QServtran1.Fieldbyname('DESC1').Asstring;
      QOthtran1.FieldByName('QTY').AsFloat := Dm_Sv.QServtran1.Fieldbyname('FRT').Asfloat;
      QOthtran1.FieldByName('REDU').AsFloat := Dm_Sv.QServtran1.Fieldbyname('REDU').Asfloat;
      QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QServtran1.Fieldbyname('UPRICE').Asfloat;
      QOthtran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QServtran1.Fieldbyname('PRICE').Asfloat;
      QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QServtran1.Fieldbyname('NETPRIC').Asfloat;
      QOthtran1.FieldByName('FLAG').Asstring := 'B'; //ค่าบริการ
      QOthtran1.FieldByName('CLAIM').Asstring := 'B'; //ค่าบริการ
      QOthtran1.post;
      Dm_sv.QServtran1.Next;
    end;
    QOthtran1.EnableControls;
  end;
end;

procedure TfrInvClaim.AddBtn2Click(Sender: TObject);
begin
  if DBEdit12.Text = '' then
    SFMain.RaiseException('ยังไม่ระบุเลขที่แจ้งซ่อม...!');
  with Dm_Sv.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:EDIT1 ');
    Params[0].asstring := QOthinvoi1JOBNO.AsString;
    Open;
    if not (Bof and Eof) then
    begin
      if Dm_Sv.Query1.FieldByName('Status').Asstring = 'W' then
        SFMain.RaiseException('ยังไม่ปิด Job');

      QOthinvoi1.FieldByName('JOBNO').Asstring := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
      QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
      QOthinvoi1.FieldByName('STRNO').Asstring := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;
      if XCusno <> '' then
        QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
      else if Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring <> QOthinvoi1.FieldByName('CUSCOD').Asstring then
      begin
        MessageBeep(0);
        if MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่', mtconfirmation, [Mbyes, mbno], 0) = MRyes then
          QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
      end;
    end
    else
      SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');
    // ค่าอะไหล่
    with Dm_Sv.QParttran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PARTTRAN WHERE JOBNO= :XDT1 AND CUSCOD LIKE :XCUS AND (CLAIM=''Y'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := QOthinvoi1.FieldByName('JOBNO').Asstring;
      Params[1].Asstring := XCusno + '%';
      Open;
    end;
    if not (Dm_Sv.QParttran1.Bof and Dm_Sv.QParttran1.Eof) then
    begin
      QOthtran1.DisableControls;
      Dm_sv.QParttran1.First;
      while not Dm_Sv.QParttran1.Eof do
      begin
        if QOthtran1.State = Dsbrowse then
          QOthtran1.Append;
        QOthtran1.FieldByName('PARTNO').Asstring := Dm_Sv.QParttran1.Fieldbyname('PARTNO').Asstring;
        QOthtran1.FieldByName('DESCIPTION').Asstring := Dm_Sv.QPartdes.Fieldbyname('DESC1').Asstring;
        QOthtran1.FieldByName('QTY').AsFloat := Dm_Sv.QParttran1.Fieldbyname('QTY').Asfloat;
        QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QParttran1.Fieldbyname('UPrice').Asfloat;
        QOthtran1.FieldByName('TOTPRIC').AsFloat := (Dm_Sv.QParttran1.Fieldbyname('UPrice').Asfloat *
          Dm_Sv.QParttran1.Fieldbyname('QTY').Asfloat);
        QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QParttran1.Fieldbyname('TotPrc').Asfloat;
        QOthtran1.FieldByName('TOTCOST').AsFloat := Dm_Sv.QParttran1.FieldByName('AVGCOST').AsFloat *
          Dm_Sv.QParttran1.FieldByName('QTY').AsFloat;
        QOthtran1.FieldByName('Flag').Asstring := 'A';
        QOthtran1.FieldByName('CLAIM').Asstring := 'A';
        QOthtran1.post;
        Dm_Sv.QParttran1.Next;
      end;
      QOthtran1.EnableControls;
    end;
  end;
end;

procedure TfrInvClaim.AddBtn4Click(Sender: TObject);
begin
  if DBEdit12.Text = '' then
    SFMain.RaiseException('ยังไม่ระบุเลขที่แจ้งซ่อม...!');
  with Dm_Sv.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:EDIT1 ');
    Params[0].asstring := QOthinvoi1JOBNO.AsString;
    Open;
    if not (Bof and Eof) then
    begin
      if Dm_Sv.Query1.FieldByName('Status').Asstring = 'W' then
        SFMain.RaiseException('ยังไม่ปิด Job');

      QOthinvoi1.FieldByName('JOBNO').Asstring := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
      QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
      QOthinvoi1.FieldByName('STRNO').Asstring := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;
      if XCusno <> '' then
        QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
      else if Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring <> QOthinvoi1.FieldByName('CUSCOD').Asstring then
      begin
        MessageBeep(0);
        if MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่', mtconfirmation, [Mbyes, mbno], 0) = MRyes then
          QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
      end;
    end
    else
      SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');
  end;
    //
  with Dm_Sv.QColrtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO=:XJOB AND CUSCOD LIKE :XCUS AND (CLAIM=''Y'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
    Params[0].Asstring := QOthinvoi1.FieldByName('JOBNO').Asstring;
    Params[1].Asstring := XCusno + '%';
    Open;
  end;
  if not (Dm_Sv.QColrtran1.Bof and Dm_Sv.QColrtran1.Eof) then
  begin
    QOthtran1.DisableControls;
    Dm_sv.QColrtran1.First;
    while not Dm_Sv.QColrtran1.Eof do
    begin
      if QOthtran1.State = Dsbrowse then
        QOthtran1.Append;
      QOthtran1.FieldByName('PARTNO').Asstring := Dm_Sv.QColrtran1.Fieldbyname('CODE').Asstring;
      QOthtran1.FieldByName('DESCIPTION').Asstring := Dm_Sv.QColrtran1.Fieldbyname('DESC1').Asstring;
      QOthtran1.FieldByName('QTY').AsFloat := 1;
      QOthtran1.FieldByName('REDU').AsFloat := Dm_Sv.QColrtran1.Fieldbyname('REDU').Asfloat;
      QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QColrtran1.Fieldbyname('Price').Asfloat;
      QOthtran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QColrtran1.Fieldbyname('Price').Asfloat;
      QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QColrtran1.Fieldbyname('NetPric').Asfloat;
      QOthtran1.FieldByName('FLAG').Asstring := 'C'; //งานสี
      QOthtran1.post;
      Dm_Sv.QColrtran1.Next;
    end;
    QOthtran1.EnableControls;
  end;
end;

procedure TfrInvClaim.AddBtn5Click(Sender: TObject);
begin
  if DBEdit12.Text = '' then
    SFMain.RaiseException('ยังไม่ระบุเลขที่แจ้งซ่อม...!');
  with Dm_Sv.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:EDIT1 ');
    Params[0].asstring := QOthinvoi1JOBNO.AsString;
    Open;
    if not (Bof and Eof) then
    begin
      if Dm_Sv.Query1.FieldByName('Status').Asstring = 'W' then
        SFMain.RaiseException('ยังไม่ปิด Job');

      QOthinvoi1.FieldByName('JOBNO').Asstring := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
      QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
      QOthinvoi1.FieldByName('STRNO').Asstring := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;
      if XCusno <> '' then
        QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
      else if Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring <> QOthinvoi1.FieldByName('CUSCOD').Asstring then
      begin
        MessageBeep(0);
        if MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่', mtconfirmation, [Mbyes, mbno], 0) = MRyes then
          QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
      end;
    end
    else
      SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');
  end;
    //
  with Dm_sv.QOuttran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO=:XJOB AND CUSCOD LIKE :XCUS AND (CLAIM=''Y'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
    Params[0].Asstring := QOthinvoi1.FieldByName('JOBNO').Asstring;
    Params[1].Asstring := XCusno + '%';
    Open;
  end;
  if not (Dm_Sv.QOuttran1.Bof and Dm_Sv.QOuttran1.Eof) then
  begin
    QOthtran1.DisableControls;
    Dm_sv.QOuttran1.First;
    while not Dm_Sv.QOuttran1.Eof do
    begin
      if QOthtran1.State = Dsbrowse then
        QOthtran1.Append;
      QOthtran1.FieldByName('PARTNO').Asstring := Dm_Sv.QOuttran1.Fieldbyname('CODE').Asstring;
      QOthtran1.FieldByName('DESCIPTION').Asstring := Dm_Sv.QOuttran1.Fieldbyname('DESC1').Asstring;
      QOthtran1.FieldByName('QTY').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('Qty').Asfloat;
      QOthtran1.FieldByName('REDU').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('REDU').Asfloat;
      QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('UPrice').Asfloat;
      QOthtran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('TOTPRIC').Asfloat;
      QOthtran1.FieldByName('TOTCOST').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('TOTCOST').Asfloat;
      QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('NETPRIC').Asfloat;
      QOthtran1.FieldByName('FLAG').Asstring := 'D'; //งานนอก;
      QOthtran1.post;
      Dm_Sv.QOuttran1.Next;
    end;
    QOthtran1.EnableControls;
  end;
end;

procedure TfrInvClaim.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrInvClaim.FldCombo1Change(Sender: TObject);
begin
  with Query1 do
  begin
    sql.clear;
    close;
    Sql.add('SELECT * FROM LOCATMST WHERE LOCATCOD=:Xloc');
    params[0].Asstring := DBEdit1.text;
    open;
  end;
  Edit2.text := Query1.Fieldbyname('LOCATNAM').Asstring;
end;

procedure TfrInvClaim.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EnqBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SavBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TfrInvClaim.DBEdit1Change(Sender: TObject);
begin
  with Query1 do
  begin
    sql.clear;
    close;
    Sql.add('SELECT * FROM INVLOCAT WHERE LOCATCD=:Xloc');
    params[0].Asstring := DBEdit1.text;
    open;
  end;
  Edit2.text := Query1.Fieldbyname('LOCATNM').Asstring;
end;

procedure TfrInvClaim.DBMemo1Click(Sender: TObject);
begin
  frInvClaim.KeyPreview := False;
end;

procedure TfrInvClaim.DBMemo1Exit(Sender: TObject);
begin
  frInvClaim.KeyPreview := True;
end;

procedure TfrInvClaim.InsBtnClick(Sender: TObject);
begin
  with QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CLAIMINVOI WHERE REPNO ='''' ');
    Open;
    Insert;
  end;
  with QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CLAIMTRAN WHERE REPNO ='''' ');
    Open;
  end;
  DBEdit12.SetFocus;
end;

procedure TfrInvClaim.QOthinvoi1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QOthinvoi1.CachedUpdates then
    QOthinvoi1UpdateStatus.Value := UpdateStatusStr[QOthinvoi1.UpdateStatus];
end;

procedure TfrInvClaim.QOthinvoi1REPDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if QOthinvoi1UpdateStatus.Value = 'Inserted' then
  begin
    HF := 'H_REP';
    LF := 'L_REP';
    if QOthinvoi1REPDT.Asdatetime > Date then
      SFMain.RaiseException('วันที่เอกสารมากกว่าวันปัจจุบัน...!');
    if not (DM_SEC.QDBConfig.Active) then
      DM_SEC.QDBConfig.Open;
    if DM_SEC.QDBConfig.Fieldbyname('R_REP').asstring = 'Y' then
    begin
      LV := QOthinvoi1.Fieldbyname('LOCAT').asstring;
      DV := QOthinvoi1.Fieldbyname('REPDT').asDatetime;
      LV := QOthinvoi1.Fieldbyname('LOCAT').asstring;
      SQLTXT := 'SELECT MAX(REPNO) AS MAXNO FROM CLAIMINVOI WHERE LOCAT=:0 AND ' +
        'SUBSTR(REPNO,2,2)=:1 AND SUBSTR(REPNO,4,2)=:2';
      QOthinvoi1REPNO.Asstring := DM_SEC.MaxDocNo(HF, LF, LV, SQLTXT, DV);
    end;
  end;
end;

procedure TfrInvClaim.QOthinvoi1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  if (AException is EFDDBEngineException) then
    if (AException as EFDDBEngineException).Errors[0].Errorcode = eKeyViol then
    begin
      Duplicate := True;
    end;
end;

procedure TfrInvClaim.QOthinvoi1NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QOthinvoi1);
  qOthinvoi1LOCAT.AsString := SFMain.Xlocat;
  qOthinvoi1USERID.AsString := SFMain.Xuser_ID;
  QOthinvoi1INPDATE.Asdatetime := Now;
  QOthinvoi1REPDT.Asdatetime := Date;
  qOthinvoi1VATTYPE.AsString := '2';
  qOthinvoi1FLAGCLAIM.AsString := 'N';
  qOthinvoi1CLAIMTYP.AsString := 'C'; //เคลมสินค้า
end;

procedure TfrInvClaim.QOthtran1NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QOthtran1);
  QOthtran1.FieldByName('LOCAT').AsString := QOthinvoi1LOCAT.AsString;
  QOthtran1.FieldByName('REPNO').AsString := QOthinvoi1REPNO.AsString;
  QOthtran1.FieldByName('REPDT').AsDateTime := QOthinvoi1REPDT.AsDateTime;
  QOthtran1.FieldByName('JOBNO').AsString := QOthinvoi1JOBNO.AsString;
  QOthtran1.FieldByName('INPDATE').Asdatetime := QOthinvoi1INPDATE.Asdatetime;
end;

procedure TfrInvClaim.QOthtran1AfterPost(DataSet: TDataSet);
var
  Xtotprc, Xtotcos, XNetprc, Xvat, xPttot, xPtvat, xPtnet, xSvtot, xSvvat, xSvnet, xColtot, xColvat, xColnet, xOuttot, xOuttvat, xOuttnet, xOthtot, xOthvat, xOthnet: Double;
  TT: string;
  bk: Tbookmark;
begin
  Xtotprc := 0;
  Xtotcos := 0;
  XNetprc := 0;
  xPttot := 0;
  xPtvat := 0;
  xPtnet := 0;
  xSvtot := 0;
  xSvvat := 0;
  xSvnet := 0;
  xColtot := 0;
  xColvat := 0;
  xColnet := 0;
  xOuttot := 0;
  xOuttvat := 0;
  xOuttnet := 0;
  xOthtot := 0;
  xOthvat := 0;
  xOthnet := 0;
  QOthtran1.DisableControls;
  bk := QOthtran1.GetBookmark;
  QOthtran1.First;
  while not (QOthtran1.eof) do
  begin
    if QOthtran1.FieldByName('CLAIM').Asstring = 'A' then
    begin
      xPttot := xPttot + QOthtran1.FieldByName('TOTPRIC').AsFloat;
      xPtnet := xPtnet + QOthtran1.FieldByName('NETPRIC').AsFloat;
    end;
    if QOthtran1.FieldByName('CLAIM').Asstring = 'B' then
    begin
      xSvtot := xSvtot + QOthtran1.FieldByName('TOTPRIC').AsFloat;
      xSvnet := xSvnet + QOthtran1.FieldByName('NETPRIC').AsFloat;
    end;
    if QOthtran1.FieldByName('CLAIM').Asstring = 'C' then
    begin
      xColtot := xColtot + QOthtran1.FieldByName('TOTPRIC').AsFloat;
      xColnet := xColnet + QOthtran1.FieldByName('NETPRIC').AsFloat;
    end;
    if QOthtran1.FieldByName('CLAIM').Asstring = 'D' then
    begin
      xOuttot := xOuttot + QOthtran1.FieldByName('TOTPRIC').AsFloat;
      xOuttnet := xOuttnet + QOthtran1.FieldByName('NETPRIC').AsFloat;
    end;
    if QOthtran1.FieldByName('CLAIM').Asstring = 'O' then
    begin
      xOthtot := xOthtot + QOthtran1.FieldByName('TOTPRIC').AsFloat;
      xOthnet := xOthnet + QOthtran1.FieldByName('NETPRIC').AsFloat;
    end;
    Xtotprc := Xtotprc + QOthtran1.FieldByName('TOTPRIC').AsFloat;
    Xtotcos := Xtotcos + QOthtran1.FieldByName('TOTCOST').AsFloat;
    XNetprc := XNetprc + QOthtran1.FieldByName('NETPRIC').AsFloat;
    QOthtran1.Next;
  end;

  if QOthinvoi1.State = Dsbrowse then
    QOthinvoi1.Edit;
  Xvat := QOthinvoi1VATRT.ASfloat;

  if QOthinvoi1.FieldByName('Vattype').Asstring = '2' then
  begin
    // อะไหล่
    QOthinvoi1.FieldByName('PTNET').AsFloat := xPtnet;
    QOthinvoi1.FieldByName('PTVAT').AsFloat := Roundto(xPtnet * Xvat / 100, -2);
    QOthinvoi1.FieldByName('PTTOT').AsFloat := xPtnet + QOthinvoi1.FieldByName('PTVAT').AsFloat;
    // บริการ
    QOthinvoi1.FieldByName('SVNET').AsFloat := xSvnet;
    QOthinvoi1.FieldByName('SVVAT').AsFloat := Roundto(xSvnet * Xvat / 100, -2);
    QOthinvoi1.FieldByName('SVTOT').AsFloat := xSvnet + QOthinvoi1.FieldByName('SVVAT').AsFloat;
    // งานสี
    QOthinvoi1.FieldByName('COLNET').AsFloat := xColnet;
    QOthinvoi1.FieldByName('COLVAT').AsFloat := Roundto(xColnet * Xvat / 100, -2);
    QOthinvoi1.FieldByName('COLTOT').AsFloat := xColnet + QOthinvoi1.FieldByName('COLVAT').AsFloat;
    // งานนอก
    QOthinvoi1.FieldByName('OUTTNET').AsFloat := xOuttnet;
    QOthinvoi1.FieldByName('OUTTVAT').AsFloat := Roundto(xOuttnet * Xvat / 100, -2);
    QOthinvoi1.FieldByName('OUTTOT').AsFloat := xOuttnet + QOthinvoi1.FieldByName('OUTTVAT').AsFloat;
    // อื่น ๆ
    QOthinvoi1.FieldByName('OTHNET').AsFloat := xOthnet;
    QOthinvoi1.FieldByName('OTHVAT').AsFloat := Roundto(xOthnet * Xvat / 100, -2);
    QOthinvoi1.FieldByName('OTHTOT').AsFloat := xOthnet + QOthinvoi1.FieldByName('OTHVAT').AsFloat;
    //รวมทั้งหมด
    QOthinvoi1.FieldByName('TOTNET').AsFloat := XNetprc;
    QOthinvoi1.FieldByName('TOTVAT').AsFloat := Roundto(XNetprc * Xvat / 100, -2);
    QOthinvoi1.FieldByName('TOTPRC').AsFloat := XNetprc + QOthinvoi1.FieldByName('TOTVAT').AsFloat;
  end
  else
  begin
    // อะไหล่
    QOthinvoi1.FieldByName('PTVAT').AsFloat := Roundto(xPtnet * Xvat / 100, -2);
    QOthinvoi1.FieldByName('PTNET').AsFloat := xPtnet - QOthinvoi1.FieldByName('PTVAT').AsFloat;
    QOthinvoi1.FieldByName('PTTOT').AsFloat := xPtnet;
    // บริการ
    QOthinvoi1.FieldByName('SVVAT').AsFloat := Roundto(xSvnet * Xvat / 100, -2);
    QOthinvoi1.FieldByName('SVNET').AsFloat := xSvnet - QOthinvoi1.FieldByName('SVVAT').AsFloat;
    QOthinvoi1.FieldByName('SVTOT').AsFloat := xSvnet;
    // งานสี
    QOthinvoi1.FieldByName('COLVAT').AsFloat := Roundto(xColnet * Xvat / 100, -2);
    QOthinvoi1.FieldByName('COLNET').AsFloat := xColnet + QOthinvoi1.FieldByName('COLVAT').AsFloat;
    QOthinvoi1.FieldByName('COLTOT').AsFloat := xColnet;
    // งานนอก
    QOthinvoi1.FieldByName('OUTTVAT').AsFloat := Roundto(xOuttnet * Xvat / 100, -2);
    QOthinvoi1.FieldByName('OUTTNET').AsFloat := xOuttnet + QOthinvoi1.FieldByName('OUTTVAT').AsFloat;
    QOthinvoi1.FieldByName('OUTTOT').AsFloat := xOuttnet;
    // อื่น ๆ
    QOthinvoi1.FieldByName('OTHVAT').AsFloat := Roundto(xOthnet * Xvat / 100, -2);
    QOthinvoi1.FieldByName('OTHNET').AsFloat := xOthnet - QOthinvoi1.FieldByName('OTHVAT').AsFloat;
    QOthinvoi1.FieldByName('OTHTOT').AsFloat := xOthnet;
    //รวมทั้งหมด
    QOthinvoi1.FieldByName('TOTVAT').AsFloat := Roundto(XNetprc * Xvat / (100 + Xvat), -2);
    QOthinvoi1.FieldByName('TOTNET').AsFloat := XNetprc - QOthinvoi1.FieldByName('TOTVAT').AsFloat;
    QOthinvoi1.FieldByName('TOTPRC').AsFloat := XNetprc;
  end;
  QOthtran1.EnableControls;
  QOthtran1.GotoBookMark(bk);
  QOthtran1.FreeBookmark(bk);
end;

procedure TfrInvClaim.QOthinvoi1BeforePost(DataSet: TDataSet);
begin
  QOthtran1.First;
  if (QOthinvoi1UpdateStatus.Value = 'Inserted') then
  begin
    if Duplicate then
    begin
      QOthinvoi1REPDTValidate(QOthinvoi1REPDT);
      QOthtran1.DisableControls;
      QOthtran1.AfterPost := Nil;
      QOthtran1.First;
      while not (QOthtran1.eof) do
      begin
        QOthtran1.Edit;
        QOthtran1.FieldByName('REPNO').Asstring := QOthinvoi1.FieldByName('REPNO').Asstring;
        QOthtran1.Next;
      end;
      QOthtran1.AfterPost := QOthtran1AfterPost;
      QOthtran1.EnableControls;
    end;
  end;
end;

procedure TfrInvClaim.QOthinvoi1JOBNOValidate(Sender: TField);
begin
  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT J.LOCAT,J.JOBNO,J.RECVDATE,J.STRNO,S.REGNO,J.RFINSHDT,J.RLKILOMT,J.CUSCOD, ' +
      'J.VAT,J.VATTYPE,S.BODYNO,S.SDATE FROM JOBORDER J,SVMAST S WHERE J.STRNO=S.STRNO AND J.JOBNO=:0');
    Params[0].AsString := QOthinvoi1JOBNO.AsString;
    Open;
  end;
  if not (query2.Eof and query2.Bof) then
  begin
    QOthinvoi1.FieldByName('STRNO').Asstring := query2.FieldByName('STRNO').Asstring;
    QOthinvoi1.FieldByName('REGNO').Asstring := query2.FieldByName('REGNO').Asstring;
    QOthinvoi1.FieldByName('CUSCOD').Asstring := query2.FieldByName('CUSCOD').Asstring;
    QOthinvoi1.FieldByName('KILOMT').AsFloat := query2.FieldByName('RLKILOMT').AsFloat;
    QOthinvoi1.FieldByName('VATTYPE').Asstring := query2.FieldByName('VATTYPE').Asstring;
    QOthinvoi1.FieldByName('VATRT').AsFloat := query2.FieldByName('VAT').AsFloat;
    QOthinvoi1.FieldByName('JOBDATE').AsDateTime := query2.FieldByName('RECVDATE').AsDateTime;
  end;
end;

procedure TfrInvClaim.QOthinvoi1AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QOthinvoi1.fieldbyname('REPNO').AsString;
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if QOthinvoi1.Active then
      if (QOthinvoi1.ApplyUpdates = 0) then
        QOthinvoi1.CommitUpdates
      else
        raise Exception.Create(QOthinvoi1.RowError.Message);
    if QOthtran1.Active then
      if (QOthtran1.ApplyUpdates = 0) then
        QOthtran1.CommitUpdates
      else
        raise Exception.Create(QOthtran1.RowError.Message);
    if Dm_SEC.LastNo.Active then
      if (Dm_SEC.LastNo.ApplyUpdates = 0) then
        Dm_SEC.LastNo.CommitUpdates
      else
        raise Exception.Create(Dm_SEC.LastNo.RowError.Message);
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.RollBack;
    QOthinvoi1.Edit;
    raise;
  end;
  //
  with QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CLAIMINVOI WHERE REPNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CLAIMTRAN WHERE REPNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TfrInvClaim.DBEdit3Change(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT Cuscod,Snam,Name1,Name2,Credit FROM CUSTMAST WHERE CUSCOD= :XCUSCOD');
    Params[0].Asstring := DBEdit3.Text;
    Open;
    Edit1.Text := Query1.Fieldbyname('SNam').Asstring + ' ' + Query1.Fieldbyname('Name1').Asstring + ' ' + Query1.Fieldbyname('Name2').Asstring;
  end;
end;

procedure TfrInvClaim.DelBtnClick(Sender: TObject);
begin
  if (QOthinvoi1.Fieldbyname('FLAGCLAIM').AsString = 'Y') then
    SFMain.RaiseException('ออกใบกำับแล้วกรุณาไปยกเลิกใบกำกับก่อน..!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSV11_1', 'DELETE', DBEdit2.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QOthinvoi1.Delete;
      end;
  end;
end;

procedure TfrInvClaim.QOthinvoi1BeforeDelete(DataSet: TDataSet);
begin
  QOthtran1.First;
  while not (QOthtran1.Eof and QOthtran1.Bof) do
    QOthtran1.Delete;
end;

procedure TfrInvClaim.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_InvClaim.fr3', '1');
end;

procedure TfrInvClaim.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if not (QOthinvoi1.State in Dseditmodes) then
    Exit;

  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
  begin
    QOthinvoi1.FieldByName('LOCAT').Asstring := fSrcDlg1.KeyNo;
    Edit2.text := fSrcDlg1.qrFindDat.Fieldbyname('LOCATNM').Asstring;
  end;
end;

procedure TfrInvClaim.DBEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(THelpjob, Helpjob);
  HelpJob.State := 1;
  if HelpJob.ShowModal = MrOk then
  begin
    QOthinvoi1JOBNO.AsString := Helpjob.QHlp.FieldByName('JOBNO').Asstring;
  end;
end;

procedure TfrInvClaim.DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalOffic = Mrok then
  begin
    QOthinvoi1USERREP.AsString := fSrcDlg1.Keyno;
  end;
end;

procedure TfrInvClaim.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_InvClaim.fr3', '2');
end;

procedure TfrInvClaim.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PREPNO' then
    Value := DBEdit2.Text;
end;

procedure TfrInvClaim.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvpart = Mrok then
    QOthtran1.FieldByName('PARTNO').Asstring := fSrcDlg1.qrFindDat.FieldByName('CODE').Asstring;
end;

procedure TfrInvClaim.QOthtran1PARTNOValidate(Sender: TField);
var
  DisTot: Double;
begin
  with Dm_Sv.QSvstock do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVSTOCK WHERE CODE= :XCODE ');
    Params[0].Asstring := QOthtran1.FieldByName('PARTNO').Asstring;
    Open;
  end;
  if not (Dm_Sv.QSvStock.Bof and Dm_Sv.QSVStock.eof) then
  begin
    QOthtran1.Edit;
    QOthtran1.FieldByName('PARTNO').Asstring := Dm_Sv.QSvstock.FieldByName('CODE').Asstring;
    QOthtran1.FieldByName('DESCIPTION').Asstring := Dm_Sv.QSvstock.FieldByName('DESC1').Asstring;
    QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QSvstock.FieldByName('UPRICE').AsFloat;
    QOthtran1.FieldByName('UCOST').AsFloat := Dm_Sv.QSvstock.FieldByName('UCOST').AsFloat;
    QOthtran1.FieldByName('REDU').AsFloat := 0;
  end;
  if QOthtran1.State = Dsbrowse then
    QOthtran1.Edit;
  QOthtran1.FieldByName('TOTPRIC').AsFloat := QOthtran1.FieldByName('UPRICE').AsFloat * QOthtran1.FieldByName('QTY').AsFloat;
  DisTot := FRound(QOthtran1.FieldByName('REDU').AsFloat * QOthtran1.FieldByName('TOTPRIC').AsFloat / 100, 2);
  QOthtran1.FieldByName('TOTCOST').AsFloat := QOthtran1.FieldByName('UCOST').AsFloat * QOthtran1.FieldByName('QTY').AsFloat;
  QOthtran1.FieldByName('NETPRIC').AsFloat := QOthtran1.FieldByName('TOTPRIC').AsFloat - QOthtran1.FieldByName('REDU').AsFloat; // DisTot;
end;

procedure TfrInvClaim.FormShow(Sender: TObject);
begin
  with QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CLAIMINVOI WHERE REPNO ='''' ');
    Open;
  end;
  with QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CLAIMTRAN WHERE REPNO ='''' ');
    Open;
  end;
end;

procedure TfrInvClaim.QOthtran1QTYValidate(Sender: TField);
begin
  QOthtran1TOTPRIC.AsFloat := QOthtran1UPRICE.AsFloat * QOthtran1QTY.AsFloat;
  QOthtran1NETPRIC.AsFloat := QOthtran1TOTPRIC.AsFloat - QOthtran1REDU.AsFloat;
end;

procedure TfrInvClaim.QOthtran1UPRICEValidate(Sender: TField);
begin
  QOthtran1TOTPRIC.AsFloat := QOthtran1UPRICE.AsFloat * QOthtran1QTY.AsFloat;
  QOthtran1NETPRIC.AsFloat := QOthtran1TOTPRIC.AsFloat - QOthtran1REDU.AsFloat;
end;

procedure TfrInvClaim.QOthtran1TOTPRICValidate(Sender: TField);
begin
  QOthtran1NETPRIC.AsFloat := QOthtran1TOTPRIC.AsFloat - QOthtran1REDU.AsFloat;
end;

procedure TfrInvClaim.QOthtran1REDUValidate(Sender: TField);
begin
  QOthtran1NETPRIC.AsFloat := QOthtran1TOTPRIC.AsFloat - QOthtran1REDU.AsFloat;
end;

end.

