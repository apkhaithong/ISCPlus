unit SvSt90;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Dbkbd, ImgList, ComCtrls, ToolWin,
  RzSpnEdt, RzPanel, AdvOfficeButtons, DBAdvOfficeButtons, cxMaskEdit,
  cxButtonEdit, cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  AdvGlowButton, AdvToolBar, AdvPanel, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxImageComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, cxLookAndFeelPainters, cxGroupBox,
  cxLookAndFeels, cxNavigator, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxDateRanges, BusinessSkinForm, dxStatusBar;

type
  TFmSvSt90 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    Label36: TLabel;
    DBEdit3: TcxDBTextEdit;
    DBCheckBox1: TDBAdvOfficeCheckBox;
    DBEdit1: TcxDBButtonEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3SVCODE: TcxGridDBColumn;
    cxGridDBTableView3DESCRP: TcxGridDBColumn;
    cxGridDBTableView3PRC_EST: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SVCODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESC1: TcxGridDBColumn;
    cxGrid1DBTableView1HOUR: TcxGridDBColumn;
    cxGrid1DBTableView1MINUTE: TcxGridDBColumn;
    cxGrid1DBTableView1FRT: TcxGridDBColumn;
    cxGrid1DBTableView1PRC_EST: TcxGridDBColumn;
    cxGrid3DBTableView2: TcxGridDBTableView;
    cxGrid3DBTableView2PARTNO: TcxGridDBColumn;
    cxGrid3DBTableView2DESC1: TcxGridDBColumn;
    cxGrid3DBTableView2PRC_QTY: TcxGridDBColumn;
    cxGrid3DBTableView2QTY: TcxGridDBColumn;
    cxGrid3DBTableView2PRC_EST: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit5: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxTextEdit1: TcxTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    Grpmst: TFDQuery;
    GrpmstGCODE: TStringField;
    GrpmstMDLCOD: TStringField;
    GrpmstGDESC: TStringField;
    GrpmstFRT: TFloatField;
    GrpmstPRC_EST: TFloatField;
    GrpmstKILOMT: TFloatField;
    GrpmstALLMODEL: TStringField;
    GrpmstUSERID: TStringField;
    GrpmstTIME1: TDateTimeField;
    GrpmstPRC_EST_ORD: TFloatField;
    GrpmstPRC_EST_SV: TFloatField;
    GrpmstPRC_EST_PT: TFloatField;
    Query1: TFDQuery;
    DataSource2: TDataSource;
    qGrpServ: TFDQuery;
    qGrpServGCODE: TStringField;
    qGrpServMDLCOD: TStringField;
    qGrpServSVCODE: TStringField;
    qGrpServDESC1: TStringField;
    qGrpServMARK: TStringField;
    qGrpServUSERID: TStringField;
    qGrpServTIME1: TDateTimeField;
    qGrpServHOUR: TIntegerField;
    qGrpServMINUTE: TIntegerField;
    qGrpServFRT: TFloatField;
    qGrpServPRC_EST: TFloatField;
    DataSource3: TDataSource;
    qGrpOrd: TFDQuery;
    qGrpOrdGCODE: TStringField;
    qGrpOrdMDLCOD: TStringField;
    qGrpOrdSVCODE: TStringField;
    qGrpOrdKILOMT: TFloatField;
    qGrpOrdDESCRP: TStringField;
    qGrpOrdMARK: TStringField;
    qGrpOrdUSERID: TStringField;
    qGrpOrdTIME1: TDateTimeField;
    qGrpOrdPRC_EST: TFloatField;
    DataSource4: TDataSource;
    qGrpPart: TFDQuery;
    qGrpPartGCODE: TStringField;
    qGrpPartMDLCOD: TStringField;
    qGrpPartPARTNO: TStringField;
    qGrpPartDESC1: TStringField;
    qGrpPartQTY: TFloatField;
    qGrpPartMARK: TStringField;
    qGrpPartUSERID: TStringField;
    qGrpPartTIME1: TDateTimeField;
    qGrpPartPRC_EST: TFloatField;
    qGrpPartPRC_QTY: TFloatField;
    Query2: TFDQuery;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    ConvertBtn: TAdvGlowButton;
    qrConvert: TFDQuery;
    AdvGlowButton1: TAdvGlowButton;
    qrConvertGCODE: TStringField;
    qrConvertMDLCOD: TStringField;
    qrConvertGDESC: TStringField;
    qrConvertKILOMT: TFloatField;
    qrConvertFRT: TFloatField;
    qrConvertPRC_EST: TFloatField;
    qrConvertALLMODEL: TStringField;
    qrConvertUSERID: TStringField;
    qrConvertTIME1: TDateTimeField;
    qrConvertPRC_EST_ORD: TFloatField;
    qrConvertPRC_EST_SV: TFloatField;
    qrConvertPRC_EST_PT: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure GrpmstAfterPost(DataSet: TDataSet);
    procedure GrpmstNewRecord(DataSet: TDataSet);
    procedure GrpmstBeforeDelete(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2PARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qGrpPartPARTNOChange(Sender: TField);
    procedure qGrpPartNewRecord(DataSet: TDataSet);
    procedure GrpmstAfterCancel(DataSet: TDataSet);
    procedure qGrpPartQTYValidate(Sender: TField);
    procedure qGrpServHOURValidate(Sender: TField);
    procedure qGrpServMINUTEValidate(Sender: TField);
    procedure qGrpOrdAfterPost(DataSet: TDataSet);
    procedure GrpmstPRC_EST_ORDValidate(Sender: TField);
    procedure qGrpServAfterPost(DataSet: TDataSet);
    procedure qGrpPartAfterPost(DataSet: TDataSet);
    procedure qGrpPartPRC_QTYValidate(Sender: TField);
    procedure GrpmstPRC_EST_SVValidate(Sender: TField);
    procedure GrpmstPRC_EST_PTValidate(Sender: TField);
    procedure ConvertBtnClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RecDouble: Integer;
    H, M, PH: Integer;
    TotH, TotM, TPH, FRT: Real;
  end;

var
  FmSvSt90: TFmSvSt90;

implementation

uses
  DmSvSet, Srchdlg1, usrcdlg, usrcdlg1, USoftFirm, Dmsec, functn01;

{$R *.DFM}

procedure TFmSvSt90.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  fmsvst90 := Nil;
end;

procedure TFmSvSt90.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSvSt90.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = DsBrowse) and (DBkbd1.AllowInsert);
  enqBtn.Visible := (DataSource1.State = Dsbrowse);
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  DBCheckBox1.ReadOnly := not SavBtn.Visible;

  //
  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnface;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Insert.Enabled := False;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Append.Enabled := False;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Delete.Enabled := False;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Insert.Enabled := True;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Append.Enabled := True;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Delete.Enabled := True;
      end;
    end;
  end;
  DBEdit3.Properties.ReadOnly := (GrpMst.State = DsEdit);
end;

procedure TFmSvSt90.InsBtnClick(Sender: TObject);
begin
  with Grpmst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPMST WHERE GCODE ='''' ');
    Open;
    Insert;
  end;

  with qGrpServ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPSERV WHERE GCODE ='''' ');
    Open;
  end;

  with qGrpOrd do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPORD WHERE GCODE ='''' ');
    Open;
  end;

  with qGrpPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPPART WHERE GCODE ='''' ');
    Open;
  end;
end;

procedure TFmSvSt90.CancBtnClick(Sender: TObject);
begin
  if Grpmst.Active then
    Grpmst.Cancel;
  if qGrpOrd.Active then
    qGrpOrd.Cancel;
  if qGrpPart.Active then
    qGrpPart.Cancel;
  if qGrpServ.Active then
    qGrpServ.Cancel;
end;

procedure TFmSvSt90.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalGrpMst = Mrok then
  begin
    with Grpmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPMST WHERE GCODE =:EDIT1');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;

    with qGrpOrd do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPORD WHERE GCODE =:EDIT1 ORDER BY SVCODE ');
      params[0].AsString := Grpmst.fieldbyname('GCODE').AsString;
      Open;
    end;

    with qGrpPart do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPPART WHERE GCODE =:EDIT1');
      params[0].AsString := Grpmst.fieldbyname('GCODE').AsString;
      Open;
    end;

    with qGrpServ do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPSERV WHERE GCODE =:EDIT1');
      params[0].AsString := Grpmst.fieldbyname('GCODE').AsString;
      Open;
    end;
  end;
end;

procedure TFmSvSt90.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET06_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmSvSt90.SavBtnClick(Sender: TObject);
begin
  if DBEdit3.Text = '' then
    sfmain.RaiseException('ยังไม่กำหนดรหัสกลุ่มงาน..!');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET06_3', 'INSERT', qGrpOrdGCODE.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET06_3', 'EDIT', qGrpOrdGCODE.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Grpmst.POST;
end;

procedure TFmSvSt90.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSvSt90.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EnqBtnClick(Sender);
    Vk_F2:
      SavBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFmSvSt90.FormShow(Sender: TObject);
begin
  with Grpmst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPMST WHERE GCODE ='''' ');
    Open;
  end;

  with qGrpServ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPSERV WHERE GCODE ='''' ');
    Open;
  end;

  with qGrpOrd do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPORD WHERE GCODE ='''' ');
    Open;
  end;

  with qGrpPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPPART WHERE GCODE ='''' ');
    Open;
  end;

  if not dm_sec.Condpay.Active then
    dm_sec.Condpay.Open;

  cxTextEdit1.Text := FormatFloat('##,##0', dm_sec.Condpay.fieldbyname('SVRATE').AsFloat);
end;

procedure TFmSvSt90.GrpmstAfterPost(DataSet: TDataSet);
var
  nGCode: string;
begin
  nGCode := GrpmstGCODE.AsString;
  qGrpOrd.AfterPost := nil;
  qGrpServ.AfterPost := nil;
  qGrpPart.AfterPost := nil;

  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Grpmst.Active then
      if (Grpmst.ApplyUpdates = 0) then
        Grpmst.CommitUpdates
      else
        raise Exception.Create(Grpmst.RowError.Message);
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM GRPMST WHERE GCODE =:EDIT1');
      params[0].AsString := nGCode;
      open;
    end;

    qGrpOrd.First;
    while not (qGrpOrd.Eof) do
    begin
      qGrpOrd.Edit;
      qGrpOrd.FieldByName('GCODE').AsString := nGCode;
      qGrpOrd.FieldByName('MDLCOD').AsString := Query1.FieldByName('MDLCOD').AsString;
      qGrpOrd.FieldByName('KILOMT').AsString := Query1.FieldByName('KILOMT').AsString;
      qGrpOrd.FieldByName('USERID').AsString := SFMain.Xuser_ID;
      qGrpOrd.FieldByName('TIME1').AsDateTime := now;
      qGrpOrd.Next;
    end;

    qGrpServ.First;
    while not (qGrpServ.Eof) do
    begin
      qGrpServ.Edit;
      qGrpServ.FieldByName('GCODE').AsString := nGCode;
      qGrpServ.FieldByName('MDLCOD').AsString := Query1.FieldByName('MDLCOD').AsString;
      qGrpServ.FieldByName('USERID').AsString := SFMain.Xuser_ID;
      qGrpServ.FieldByName('TIME1').AsDateTime := now;
      qGrpServ.Next;
    end;

    qGrpPart.First;
    while not (qGrpPart.Eof) do
    begin
      qGrpPart.Edit;
      qGrpPart.FieldByName('GCODE').AsString := nGCode;
      qGrpPart.FieldByName('MDLCOD').AsString := Query1.FieldByName('MDLCOD').AsString;
      qGrpPart.FieldByName('USERID').AsString := SFMain.Xuser_ID;
      qGrpPart.FieldByName('TIME1').AsDateTime := now;
      qGrpPart.Next;
    end;
    if qGrpOrd.Active then
      if (qGrpOrd.ApplyUpdates = 0) then
        qGrpOrd.CommitUpdates
      else
        raise Exception.Create(qGrpOrd.RowError.Message);
    if qGrpServ.Active then
      if (qGrpServ.ApplyUpdates = 0) then
        qGrpServ.CommitUpdates
      else
        raise Exception.Create(qGrpServ.RowError.Message);
    if qGrpPart.Active then
      if (qGrpPart.ApplyUpdates = 0) then
        qGrpPart.CommitUpdates
      else
        raise Exception.Create(qGrpPart.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
  //
  with Grpmst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPMST WHERE GCODE =:EDIT1');
    Params[0].Asstring := nGCode;
    Open;
  end;

  with qGrpServ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPSERV WHERE GCODE =:EDIT1');
    params[0].AsString := nGCode;
    Open;
  end;

  with qGrpOrd do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPORD WHERE GCODE =:EDIT1');
    params[0].AsString := nGCode;
    Open;
  end;

  with qGrpPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPPART WHERE GCODE =:EDIT1');
    params[0].AsString := nGCode;
    Open;
  end;
end;

procedure TFmSvSt90.GrpmstNewRecord(DataSet: TDataSet);
begin
  GrpMst.fieldbyname('Userid').AsString := SFMain.Xuser_ID;
  GrpMst.fieldbyname('Time1').AsDateTime := Now;
end;

procedure TFmSvSt90.GrpmstBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('GRPORD', 'GCODE', GrpmstGCODE.AsString);
  SFMain.Findexist('GRPSERV', 'GCODE', GrpmstGCODE.AsString);
end;

procedure TFmSvSt90.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalmodel = Mrok then
  begin
    Grpmst.FieldByName('MDLCOD').AsString := fSrcDlg1.qrFindDat.fieldbyname('MODELSV').AsString;
  end;
end;

procedure TFmSvSt90.cxGrid3DBTableView2PARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalInvmast = Mrok then
  begin
    qGrpPart.Edit;
    qGrpPartPARTNO.AsString := fSrcDlg.Keyno;
  end;
end;

procedure TFmSvSt90.qGrpPartPARTNOChange(Sender: TField);
begin
  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  PARTNO,DESC1,PRICE1 FROM INVMAST WHERE PARTNO =:EDIT1');
    params[0].AsString := qGrpPartPARTNO.AsString;
    open;
    qGrpPartDESC1.AsString := Query2.fieldbyname('DESC1').AsString;
    qGrpPartPRC_QTY.AsFloat := Query2.fieldbyname('PRICE1').AsFloat;
  end;
end;

procedure TFmSvSt90.qGrpPartNewRecord(DataSet: TDataSet);
begin
//  qGrpPartQTY.AsFloat := 1;
end;

procedure TFmSvSt90.GrpmstAfterCancel(DataSet: TDataSet);
begin
  qGrpPart.CancelUpdates;
  qGrpServ.CancelUpdates;
  qGrpOrd.CancelUpdates;
  Grpmst.CancelUpdates;
end;

procedure TFmSvSt90.qGrpPartQTYValidate(Sender: TField);
begin
  if Datasource1.State in dsEditModes then
  begin
    qGrpPartPRC_EST.AsFloat := FROUND((qGrpPartPRC_QTY.AsFloat * qGrpPartQTY.AsFloat), 2);
  end;
end;

procedure TFmSvSt90.qGrpServHOURValidate(Sender: TField);
begin
  H := qGrpServ.FieldByname('HOUR').AsInteger;
  M := qGrpServ.FieldByname('MINUTE').AsInteger;
  PH := 0;
  TotH := H * PH;
  TotM := (M * PH) / 60;
  TPH := TotH + TotM;
  FRT := H + FRound((M / 60), 2);
  qGrpServ.FieldByname('FRT').asfloat := FRT;

  if Datasource1.State in DsEditModes then
  begin
    qGrpServPRC_EST.AsFloat := FROUND((qGrpServFRT.AsFloat * dm_sec.Condpay.fieldbyname('SVRATE').AsFloat), 2);
  end;
end;

procedure TFmSvSt90.qGrpServMINUTEValidate(Sender: TField);
begin
  H := qGrpServ.FieldByname('HOUR').AsInteger;
  M := qGrpServ.FieldByname('MINUTE').AsInteger;
  PH := 0;
  TotH := H * PH;
  TotM := (M * PH) / 60;
  TPH := TotH + TotM;
  FRT := H + FRound((M / 60), 2);
  qGrpServ.FieldByname('FRT').asfloat := FRT;

  if Datasource1.State in DsEditModes then
  begin
    qGrpServPRC_EST.AsFloat := FROUND((qGrpServFRT.AsFloat * dm_sec.Condpay.fieldbyname('SVRATE').AsFloat), 2);
  end;
end;

procedure TFmSvSt90.qGrpOrdAfterPost(DataSet: TDataSet);
var
  nPrc_Est_Ord: Double;
  bk: Tbookmark;
begin
  nPrc_Est_Ord := 0;
  qGrpOrd.Disablecontrols;
  bk := qGrpOrd.GetBookmark;
  qGrpOrd.First;
  while not qGrpOrd.eof do
  begin
    nPrc_Est_Ord := nPrc_Est_Ord + qGrpOrdPRC_EST.Asfloat;
    qGrpOrd.Next;
  end;
  qGrpOrd.Enablecontrols;
  qGrpOrd.GotoBookmark(bk);
  qGrpOrd.FreeBookmark(bk);
  if Grpmst.State = Dsbrowse then
    Grpmst.Edit;
  GrpmstPRC_EST_ORD.Asfloat := nPrc_Est_Ord;
end;

procedure TFmSvSt90.GrpmstPRC_EST_ORDValidate(Sender: TField);
begin
  if Datasource1.State in dsEditModes then
  begin
    GrpmstPRC_EST.AsFloat := FRound((GrpmstPRC_EST_ORD.AsFloat + GrpmstPRC_EST_SV.AsFloat + GrpmstPRC_EST_PT.AsFloat), 2);
  end;
end;

procedure TFmSvSt90.qGrpServAfterPost(DataSet: TDataSet);
var
  nPrc_Est_Sv: Double;
  bk: Tbookmark;
begin
  nPrc_Est_Sv := 0;
  qGrpServ.Disablecontrols;
  bk := qGrpServ.GetBookmark;
  qGrpServ.First;
  while not qGrpServ.eof do
  begin
    nPrc_Est_Sv := nPrc_Est_Sv + qGrpServPRC_EST.Asfloat;
    qGrpServ.Next;
  end;
  qGrpServ.Enablecontrols;
  qGrpServ.GotoBookmark(bk);
  qGrpServ.FreeBookmark(bk);
  if Grpmst.State = Dsbrowse then
    Grpmst.Edit;
  GrpmstPRC_EST_SV.Asfloat := nPrc_Est_Sv;
end;

procedure TFmSvSt90.qGrpPartAfterPost(DataSet: TDataSet);
var
  nPrc_Est_Pt: Double;
  bk: Tbookmark;
begin
  nPrc_Est_Pt := 0;
  qGrpPart.Disablecontrols;
  bk := qGrpPart.GetBookmark;
  qGrpPart.First;
  while not qGrpPart.eof do
  begin
    nPrc_Est_Pt := nPrc_Est_Pt + qGrpPartPRC_EST.Asfloat;
    qGrpPart.Next;
  end;
  qGrpPart.Enablecontrols;
  qGrpPart.GotoBookmark(bk);
  qGrpPart.FreeBookmark(bk);
  if Grpmst.State = Dsbrowse then
    Grpmst.Edit;
  GrpmstPRC_EST_PT.Asfloat := nPrc_Est_Pt;
end;

procedure TFmSvSt90.qGrpPartPRC_QTYValidate(Sender: TField);
begin
  if Datasource1.State in dsEditModes then
  begin
    qGrpPartPRC_EST.AsFloat := FROUND((qGrpPartPRC_QTY.AsFloat * qGrpPartQTY.AsFloat), 2);
  end;
end;

procedure TFmSvSt90.GrpmstPRC_EST_SVValidate(Sender: TField);
begin
  if Datasource1.State in dsEditModes then
  begin
    GrpmstPRC_EST.AsFloat := FRound((GrpmstPRC_EST_ORD.AsFloat + GrpmstPRC_EST_SV.AsFloat + GrpmstPRC_EST_PT.AsFloat), 2);
  end;
end;

procedure TFmSvSt90.GrpmstPRC_EST_PTValidate(Sender: TField);
begin
  if Datasource1.State in dsEditModes then
  begin
    GrpmstPRC_EST.AsFloat := FRound((GrpmstPRC_EST_ORD.AsFloat + GrpmstPRC_EST_SV.AsFloat + GrpmstPRC_EST_PT.AsFloat), 2);
  end;
end;

procedure TFmSvSt90.ConvertBtnClick(Sender: TObject);
begin
  with qrConvert do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * ' +
      'FROM GRPMST ');
    open;
  end;

  qrConvert.First;
  while not qrConvert.Eof do
  begin
    with query2 do
    begin
      close;
      sql.Clear;
      sql.Add('update GRPSERV set gcode =:0 where MDLCOD=:1');
      params[0].AsString := qrConvert.fieldbyname('GCODE').AsString;
      params[1].AsString := qrConvert.fieldbyname('MDLCOD').AsString;
      execSql;
    end;
    qrConvert.Next;
  end;
  showmessage('Success..');
end;

procedure TFmSvSt90.AdvGlowButton1Click(Sender: TObject);
begin
  with qrConvert do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * ' +
      'FROM GRPMST ');
    open;
  end;

  qrConvert.First;
  while not qrConvert.Eof do
  begin
    with query2 do
    begin
      close;
      sql.Clear;
      sql.Add('update GRPORD set gcode =:0 where MDLCOD=:1');
      params[0].AsString := qrConvert.fieldbyname('GCODE').AsString;
      params[1].AsString := qrConvert.fieldbyname('MDLCOD').AsString;
      execSql;
    end;
    qrConvert.Next;
  end;
  showmessage('Success..');
end;

end.

