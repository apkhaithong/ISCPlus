unit Set_camp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, DB, Grids, DBGrids, Dbkbd,
  cxLookAndFeelPainters, Menus, RzDbkbd, RzPanel, RzDBGrid, cxButtons, cxPC,
  cxGroupBox, cxRadioGroup, cxDBEdit, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton,
  AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels, dxBarBuiltInMenu,
  dxDateRanges, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, BusinessSkinForm, dxStatusBar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TFCamp = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBRadioGroup1: TcxDBRadioGroup;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    DataSource1: TDataSource;
    Qpart: TFDQuery;
    QpartCAMPNO: TStringField;
    QpartPARTNO: TStringField;
    QpartDESC1: TStringField;
    QpartQTY: TFloatField;
    QpartPRICE: TFloatField;
    QpartDISCT: TFloatField;
    QpartDISAMT: TFloatField;
    QpartNETAMT: TFloatField;
    QpartTOTAMT: TFloatField;
    QpartGROUP1: TStringField;
    Sopart: TDataSource;
    QServ: TFDQuery;
    QServCAMPNO: TStringField;
    QServCODE: TStringField;
    QServDESC1: TStringField;
    QServFRT: TFloatField;
    QServPRICE: TFloatField;
    QServDISCT: TFloatField;
    QServDISAMT: TFloatField;
    QServNETAMT: TFloatField;
    QServTOTAMT: TFloatField;
    SoServ: TDataSource;
    QCamp: TFDQuery;
    Query1: TFDQuery;
    Condpay: TFDTable;
    DBkbd1: TRzDBkbd;
    dxStatusBar1: TdxStatusBar;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    qaDate: TcxDBDateEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    DBEdit3: TcxDBButtonEdit;
    DBEdit4: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    Enqbtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranDESC1: TcxGridDBColumn;
    cxGridTranQTY: TcxGridDBColumn;
    cxGridTranPRICE: TcxGridDBColumn;
    cxGridTranDISCT: TcxGridDBColumn;
    cxGridTranDISAMT: TcxGridDBColumn;
    cxGridTranNETAMT: TcxGridDBColumn;
    cxGridTranTOTAMT: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCODE: TcxGridDBColumn;
    cxGridDBDESC1: TcxGridDBColumn;
    cxGridDBFRT: TcxGridDBColumn;
    cxGridDBPRICE: TcxGridDBColumn;
    cxGridDBDISCT: TcxGridDBColumn;
    cxGridDBDISAMT: TcxGridDBColumn;
    cxGridDBNETAMT: TcxGridDBColumn;
    cxGridDBTOTAMT: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure InsBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure FldCombo4BtnClick(Sender: TObject);
    procedure FldCombo5BtnClick(Sender: TObject);
    procedure QCampBeforeDelete(DataSet: TDataSet);
    procedure QCampAfterCancel(DataSet: TDataSet);
    procedure QCampAfterDelete(DataSet: TDataSet);
    procedure QCampAfterPost(DataSet: TDataSet);
    procedure QCampBeforePost(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QpartPARTNOValidate(Sender: TField);
    procedure QpartPARTNOChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure QpartDISCTValidate(Sender: TField);
    procedure QpartDISAMTValidate(Sender: TField);
    procedure cxGridDBCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QServCODEValidate(Sender: TField);
    procedure QServCODEChange(Sender: TField);
    procedure QServDISCTValidate(Sender: TField);
    procedure QServDISAMTValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCamp: TFCamp;
  XMDLCOD: string;

implementation

uses
  uSrcDlg1, Functn01, USoftFirm, Dmsec, uFindData, usrcdlg;

{$R *.DFM}

procedure TFCamp.InsBtnClick(Sender: TObject);
begin
  DBedit1.SetFocus;

  with QCamp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := '';
    Open;
    Insert;
  end;

  with QPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := '';
    Open;
  end;

  with QServ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPSERV WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TFCamp.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCampn = MrOK then
  begin
    with QCamp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO');
      Params[0].Asstring := fFindData.KeyNo;
      Open;
    end;
    //
    with QPart do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO =:CAMPNO');
      Params[0].Asstring := QCamp.Fieldbyname('CAMPNO').Asstring;
      Open;
    end;

    with QServ do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CAMPSERV WHERE CAMPNO =:CAMPNO');
      Params[0].Asstring := QCamp.Fieldbyname('CAMPNO').Asstring;
      Open;
    end;
  end;
end;

procedure TFCamp.SavBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    sfmain.RaiseException('ยังไม่กำหนดรหัสแคมเปญ..!');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_7', 'INSERT', QpartCAMPNO.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_7', 'EDIT', QpartCAMPNO.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QCamp.Post;
end;

procedure TFCamp.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET01_7', 'DELETE', QCamp.fieldbyname('CAMPNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QCamp.Delete;
      end;
  end;
end;

procedure TFCamp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end;
end;

procedure TFCamp.CancBtnClick(Sender: TObject);
begin
  if QCamp.Active then
    QCamp.Cancel;
end;

procedure TFCamp.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QServCAMPNO.AsString <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  DBRadioGroup1.Properties.ReadOnly := not SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := ClBtnFace;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := ClBtnFace;
      end;
      if (Components[n] is TRzDBGrid) and (TRzDBGrid(Components[n]).Tag = 0) then
      begin
        TRzDBGrid(Components[n]).Readonly := True;
        TRzDBGrid(Components[n]).Color := clBtnface;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TRzDBGrid) and (TRzDBGrid(Components[n]).Tag = 0) then
      begin
        TRzDBGrid(Components[n]).Readonly := False;
        TRzDBGrid(Components[n]).Color := clWhite;
      end;
    end;
  end;
    //
  DBRadioGroup1Click(Sender);

  DBEdit1.Properties.Readonly := not (DataSource1.State = DsInsert);
end;

procedure TFCamp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QCamp.close;
  QPart.close;
  QServ.close;
  Action := caFree;
  FCamp := Nil;
end;

procedure TFCamp.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET01_7');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  if not (Condpay.Active) then
    Condpay.Open;
end;

procedure TFCamp.DBRadioGroup1Click(Sender: TObject);
begin
  DBEdit3.Enabled := DBRadioGroup1.Itemindex = 0;
  DBEdit4.Enabled := DBRadioGroup1.Itemindex = 1;

  if DBEdit3.Enabled then
    DBEdit3.Style.Color := clWhite
  else
    DBEdit3.Style.Color := clSilver;

  if DBEdit4.Enabled then
    DBEdit4.Style.Color := clWhite
  else
    DBedit4.Style.Color := clSilver;
end;

procedure TFCamp.FldCombo4BtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalGroup = Mrok then
    QCamp.Fieldbyname('Group1').Asstring := fFindData.KeyNo;
end;

procedure TFCamp.FldCombo5BtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalModel = Mrok then
    QCamp.Fieldbyname('MDLCOD').Asstring := fFindData.KeyNo;
end;

procedure TFCamp.QCampBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFMain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
  //
  Qpart.First;
  while not Qpart.Eof do
    Qpart.Delete;
  //
  QServ.First;
  while not QServ.Eof do
    QServ.Delete;
end;

procedure TFCamp.QCampAfterCancel(DataSet: TDataSet);
begin
  if QCamp.Active then
    QCamp.CancelUpdates;
  if QPart.Active then
    QPart.CancelUpdates;
  if QServ.Active then
    QServ.CancelUpdates;
end;

procedure TFCamp.QCampAfterDelete(DataSet: TDataSet);
var
  S: string;
begin
  S := QCamp.Fieldbyname('CAMPNO').Asstring;
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QCamp.Active then
      if (QCamp.ApplyUpdates = 0) then
        QCamp.CommitUpdates
      else
        raise Exception.Create(QCamp.RowError.Message);
    if QPart.Active then
      if (QPart.ApplyUpdates = 0) then
        QPart.CommitUpdates
      else
        raise Exception.Create(QPart.RowError.Message);
    if QServ.Active then
      if (QServ.ApplyUpdates = 0) then
        QServ.CommitUpdates
      else
        raise Exception.Create(QServ.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    QCamp.Edit;
    raise;
  end;
  //
  with QCamp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;

  with QPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;

  with QServ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPSERV WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TFCamp.QCampAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QCamp.Fieldbyname('CAMPNO').Asstring;
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QCamp.Active then
      if (QCamp.ApplyUpdates = 0) then
      begin
        QCamp.CommitUpdates;
      end
      else
        raise Exception.Create(QCamp.RowError.Message);
    Dm_sec.Do_With_Query(actOpen, Query1, 'SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO', [S]);

    QPart.First;
    while not (QPart.Eof) do
    begin
      QPart.Edit;
      QPart.FieldByName('CAMPNO').AsString := Query1.FieldByName('CAMPNO').AsString;
      QPart.Next;
    end;

    QServ.First;
    while not (QServ.Eof) do
    begin
      QServ.Edit;
      QServ.FieldByName('CAMPNO').AsString := Query1.FieldByName('CAMPNO').AsString;
      QServ.Next;
    end;
    if QPart.Active then
      if (QPart.ApplyUpdates = 0) then
        QPart.CommitUpdates
      else
        raise Exception.Create(QPart.RowError.Message);
    if QServ.Active then
      if (QServ.ApplyUpdates = 0) then
        QServ.CommitUpdates
      else
        raise Exception.Create(QServ.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    QCamp.Edit;
    raise;
  end;
  //
  with QCamp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;

  with QPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;

  with QServ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPSERV WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TFCamp.QCampBeforePost(DataSet: TDataSet);
begin
  Qpart.First;
  QServ.First;
  if (QCamp.Fieldbyname('Camtype').Asstring = '1') and
    (QCamp.Fieldbyname('Group1').Asstring = '') then
    SFMain.RaiseException('ยังไม่ระบุรหัสกลุ่มสินค้า');
  if (QCamp.Fieldbyname('Camtype').Asstring = '2') and
    (QCamp.Fieldbyname('Mdlcod').Asstring = '') then
    SFMain.RaiseException('ยังไม่ระบุรหัสรุ่นรถ');
end;

procedure TFCamp.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFCamp.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFCamp.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalGroup = Mrok then
    QCamp.Fieldbyname('Group1').Asstring := fFindData.KeyNo;
end;

procedure TFCamp.DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalModel = Mrok then
    QCamp.Fieldbyname('MDLCOD').Asstring := fFindData.KeyNo;
end;

procedure TFCamp.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalInvmast = Mrok then
    QPart.Fieldbyname('Partno').Asstring := fSrcDlg.KeyNo;
end;

procedure TFCamp.QpartPARTNOValidate(Sender: TField);
begin
  if QPart.Fieldbyname('Partno').asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้า');
end;

procedure TFCamp.QpartPARTNOChange(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
    PARAMS[0].ASSTRING := QPart.Fieldbyname('Partno').asstring;
    PARAMS[1].ASSTRING := SFMain.Xlocat;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสินค้า');
  end;

  if QPart.State = DsInsert then
  begin
    QPart.Fieldbyname('Desc1').asstring := Query1.Fieldbyname('Desc1').asstring;
    QPart.Fieldbyname('Group1').asstring := Query1.Fieldbyname('Group1').asstring;
    QPart.Fieldbyname('Price').asFloat := Query1.Fieldbyname('Price1').asFloat;
    QPart.Fieldbyname('Disct').asFloat := QCamp.Fieldbyname('PTR_RAT1').asFloat;
  end;
end;

procedure TFCamp.FormShow(Sender: TObject);
begin
  with QCamp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TFCamp.QpartDISCTValidate(Sender: TField);
var
  XDisamt: Double;
begin
  QPart.Fieldbyname('DISAMT').asFloat := FRound((QPart.Fieldbyname('Price').asFloat * QPart.Fieldbyname('Disct').asFloat / 100), 2);
  QPart.Fieldbyname('NETAMT').asFloat := QPart.Fieldbyname('Price').asFloat - QPart.Fieldbyname('DISAMT').asFloat;
  QPart.Fieldbyname('TOTAMT').asFloat := FRound(QPart.Fieldbyname('NETAMT').asFloat * QPart.Fieldbyname('QTY').asFloat, 2);
  XDisamt := QPart.Fieldbyname('DISAMT').asFloat;
end;

procedure TFCamp.QpartDISAMTValidate(Sender: TField);
var
  XDisamt: Double;
begin
  if XDisamt <> QPart.Fieldbyname('DISAMT').asFloat then
    QPart.Fieldbyname('DISCT').asFloat := QPart.Fieldbyname('DISAMT').asFloat / QPart.Fieldbyname('Price').asFloat * 100;

  QPart.Fieldbyname('NETAMT').asFloat := QPart.Fieldbyname('Price').asFloat - QPart.Fieldbyname('DISAMT').asFloat;
  QPart.Fieldbyname('TOTAMT').asFloat := FRound(QPart.Fieldbyname('NETAMT').asFloat * QPart.Fieldbyname('QTY').asFloat, 2);
end;

procedure TFCamp.cxGridDBCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if DBEdit4.Text = '' then
    SFMain.RaiseException('ยังไม่ได้ระบุรุ่นสินค้า');
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalTabsv = Mrok then
  begin
    QServ.Fieldbyname('CODE').Asstring := fSrcDlg1.KeyNo;
    XMDLCOD := fSrcDlg1.qrFindDat.Fieldbyname('MDLCOD').Asstring;
  end;
end;

procedure TFCamp.QServCODEValidate(Sender: TField);
begin
  if QServ.Fieldbyname('Code').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึก  รหัสค่าบริการ');
end;

procedure TFCamp.QServCODEChange(Sender: TField);
var
  XDisamt: Double;
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    if XMDLCOD <> '' then
    begin
      Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE= :XCODE AND MDLCOD=:XMD ');
      Params[0].Asstring := QServ.FieldByName('CODE').Asstring;
      Params[1].Asstring := XMDLCOD;
    end
    else
    begin
      Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE= :XCODE ');
      Params[0].Asstring := QServ.FieldByName('CODE').Asstring;
    end;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสค่าบริการในแฟ้ม Setup');
  end;
  if QServ.State = Dsinsert then
  begin
    QServ.Fieldbyname('DESCP').Asstring := Query1.Fieldbyname('DESCP').Asstring;
    QServ.Fieldbyname('FRT').AsFloat := Query1.Fieldbyname('FRT').AsFloat;
    QServ.Fieldbyname('Price').AsFloat := Condpay.Fieldbyname('Svrate').Asfloat;
    ;
    QServ.Fieldbyname('Disct').asFloat := QCamp.Fieldbyname('SVR_RAT1').asFloat;
  end;
end;

procedure TFCamp.QServDISCTValidate(Sender: TField);
var
  XDisamt: Double;
begin
  QServ.Fieldbyname('DISAMT').asFloat := FRound((QServ.Fieldbyname('Price').asFloat * QServ.Fieldbyname('Disct').asFloat / 100), 2);
  QServ.Fieldbyname('NETAMT').asFloat := QServ.Fieldbyname('Price').asFloat - QServ.Fieldbyname('DISAMT').asFloat;
  QServ.Fieldbyname('TOTAMT').asFloat := FRound(QServ.Fieldbyname('FRT').asFloat * QServ.Fieldbyname('NETAMT').asFloat, 2);
  XDisamt := QServ.Fieldbyname('DISAMT').asFloat;
end;

procedure TFCamp.QServDISAMTValidate(Sender: TField);
var
  XDisamt: Double;
begin
  if XDisamt <> QServ.Fieldbyname('DISAMT').asFloat then
    QServ.Fieldbyname('DISCT').asFloat := QServ.Fieldbyname('DISAMT').asFloat / QServ.Fieldbyname('Price').asFloat * 100;

  QServ.Fieldbyname('NETAMT').asFloat := QServ.Fieldbyname('Price').asFloat - QServ.Fieldbyname('DISAMT').asFloat;
  QServ.Fieldbyname('TOTAMT').asFloat := FRound(QServ.Fieldbyname('FRT').asFloat * QServ.Fieldbyname('NETAMT').asFloat, 2);
end;

end.

