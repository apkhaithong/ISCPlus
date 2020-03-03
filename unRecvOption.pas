unit unRecvOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, Grids, ComCtrls, ToolWin,
  DB, ActnList, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxButtonEdit, RzDbkbd, cxTextEdit, cxCheckBox,
  cxDBEdit, AdvGlowButton, AdvToolBar, cxDropDownEdit, cxCalendar, cxContainer,
  cxMaskEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  AdvOfficeStatusBar, AdvPanel, cxLookAndFeels, cxLookAndFeelPainters,
  cxNavigator, dxDateRanges, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TFrvopt = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1OPTCODE: TcxGridDBColumn;
    cxGrid1DBTableView1OPTNAME: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1UNITCST: TcxGridDBColumn;
    cxGrid1DBTableView1TOTCST: TcxGridDBColumn;
    cxGrid1DBTableView1DSCAMT: TcxGridDBColumn;
    cxGrid1DBTableView1NETCST: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DBLocat: TcxDBButtonEdit;
    dbApcode: TcxDBButtonEdit;
    FldEdit4: TcxDBTextEdit;
    FldEdit5: TcxDBTextEdit;
    DBEdit13: TcxDBButtonEdit;
    FldEdit2: TcxDBTextEdit;
    FldEdit3: TcxDBTextEdit;
    FldEdit1: TcxDBTextEdit;
    DBDateEdit2: TcxDBDateEdit;
    DBDateEdit1: TcxDBDateEdit;
    DBDateEdit3: TcxDBDateEdit;
    DBDateEdit4: TcxDBDateEdit;
    FldEdit6: TcxDBTextEdit;
    JEdit1: TcxTextEdit;
    JEdit2: TcxTextEdit;
    JEdit3: TcxTextEdit;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    ActionList1: TActionList;
    acAdd: TAction;
    acDel: TAction;
    acQuery: TAction;
    acSave: TAction;
    AcCan: TAction;
    acClose: TAction;
    AcPrn: TAction;
    acTab: TAction;
    acPay: TAction;
    acKang: TAction;
    DBkbd1: TRzDBkbd;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    dxStatusBar1: TdxStatusBar;
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLocatChange(Sender: TObject);
    procedure DBLocatExit(Sender: TObject);
    procedure dbApcodeChange(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dbApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frvopt: TFrvopt;

implementation

uses
  dm1, dmstock, functn01, Srchset1, USoftFirm, Srchstk, Dmsec;
{$R *.dfm}

procedure TFrvopt.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DMstk.QOptinvRECVNO.AsString <> '');
  ;
  enqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 2) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := True;
        TcxDBmemo(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := True;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 2) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := False;
        TcxDBmemo(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := False;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
      end;
    end;
  end;
  if (DataSource1.DataSet.State = DsEdit) and (DmStk.QOptinv.FieldByName('TAXNO').AsString <> '') then
  begin
    cxGrid1DBTableView1.OptionsData.Editing := False;
    cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := False;
    cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := False;
    cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := False;
  end;
  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  begin
    if (Dm01.QDBConfig.Fieldbyname('R_RecvOp').asstring = 'Y') then
      FldEdit1.Properties.Readonly := True
    else if (DataSource1.Dataset.State = DsInsert) then
      FldEdit1.Properties.Readonly := False
    else
      FldEdit1.Properties.Readonly := True;

    if FldEdit2.Properties.Readonly then
      FldEdit1.Style.Color := clBtnFace
    else
      FldEdit1.Style.Color := clWhite;
  end;
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBDateEdit2.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
end;

procedure TFrvopt.InsBtnClick(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actInsert, DMstk.QOptinv, 'SELECT *  FROM OPTINV WHERE RECVNO =:0', ['']);
  DM_SEC.Do_With_Query(actOpen, DMstk.QOpttran, 'SELECT * FROM OPTTRAN WHERE RECVNO=:0', ['']);
  DM_SEC.Do_With_Query(actOpen, query1, 'SELECT * FROM OPTTRAN WHERE RECVNO=:0', ['']);
  FldEdit3.Enabled := True;
  FldEdit3.Style.Color := clwindow;
end;

procedure TFrvopt.DelBtnClick(Sender: TObject);
begin
  if FldEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_3', 'DELETE', FldEdit1.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        DmStk.QOptinv.delete;
      end;
  end;
end;

procedure TFrvopt.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchStk, SearchStk);
  if SearchStk.ShowModalOptinv = Mrok then
  begin
    DM_SEC.Do_With_Query(actOpen, DMstk.QOptinv, 'SELECT *  FROM OPTINV WHERE RECVNO=:0', [SearchStk.Keyno]);
    DM_SEC.Do_With_Query(actOpen, DMstk.QOpttran, 'SELECT * FROM OPTTRAN WHERE RECVNO=:0', [SearchStk.Keyno]);
    DM_SEC.Do_With_Query(actOpen, DMstk.TAXBUY, 'SELECT * FROM TAXBUY WHERE TAXNO=:0', [DMstk.QOptinvTAXNO.Asstring]);
    DM_SEC.Do_With_Query(actOpen, query1, 'SELECT * FROM OPTTRAN WHERE RECVNO=:0', [SearchStk.Keyno]);
  end;
end;

procedure TFrvopt.SavBtnClick(Sender: TObject);
begin
  if (DMstk.QOptinv.FieldByName('TAXNO').AsString = '') and (DMstk.QOptinv.FieldByName('VATRT').AsFloat <> 0) then
    SFMain.RaiseException('ยังไม่มีเลขที่ใบกำกับ');
  if Dbedit13.Text = '' then
    SFMain.RaiseException('ยังไม่ใส่ผู้รับสินค้า');
  if (DMStk.SoOpttran.State = Dsinsert) and (DMstk.QOpttran.FieldByName('OPTCODE').asstring <> '') then
  begin
    query1.First;
    while not (query1.eof) do
    begin
      if query1.FieldByName('OPTCODE').asstring = DMstk.QOpttran.FieldByName('OPTCODE').asstring then
      begin
        MessageDlg('รหัสอุปกรณ์เสริมซ้ำไม่สามารถทำการบันทึกได้?', mtConfirmation, [mbYes], 0);
        abort;
      end;
      query1.Next;
    end;
    query1.Insert;
    query1.FieldByName('OPTCODE').asstring := DMstk.QOpttran.FieldByName('OPTCODE').asstring;
    query1.Post;
  end;
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_3', 'INSERT', FldEdit1.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_3', 'EDIT', FldEdit1.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  DmStk.QOptinv.Post;
end;

procedure TFrvopt.CancBtnClick(Sender: TObject);
begin
  DmStk.QOptinv.Cancel;
  JEDIT1.Text := '';
  JEDIT2.Text := '';
  JEDIT3.Text := '';
end;

procedure TFrvopt.CloseBtnClick(Sender: TObject);
begin
  SELF.Close;
end;

procedure TFrvopt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmStk.QOptinv.Close;
  DmStk.QOpttran.Close;
  Action := CaFree;
  Frvopt := Nil;
end;

procedure TFrvopt.DBLocatChange(Sender: TObject);
begin
  JEdit1.Text := DM01.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DMstk.QOptinv.fieldbyname('RVLOCAT').AsString);
end;

procedure TFrvopt.DBLocatExit(Sender: TObject);
begin
  if DMstk.QOptInvRVLOCAT.Asstring <> '' then
    with DMstk.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOCAT ');
      Params[0].Asstring := DBLocat.Text;
      Open;
      JEdit1.Text := DMstk.Query1.Fieldbyname('LOCATNM').asstring;
    end;
end;

procedure TFrvopt.dbApcodeChange(Sender: TObject);
begin
  JEdit2.Text := DM01.FindShowDesc('APMAST', 'APNAME', 'APCODE', DMstk.QOptinv.fieldbyname('APCODE').AsString);
end;

procedure TFrvopt.DBEdit13Change(Sender: TObject);
begin
  if DMstk.QOptInvrvcode.Asstring <> '' then
    with DMstk.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OFFICER WHERE CODE = :XCODE ');
      Params[0].Asstring := DBEdit13.Text;
      Open;
      JEdit3.Text := DMstk.Query1.Fieldbyname('name').asstring;
    end;
end;

procedure TFrvopt.cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (DataSource1.DataSet.State = DsInsert) then
  begin
    Application.Createform(TSearchStk, SearchStk);
    SearchStk.Xlocat := DBLocat.Text;
    if SearchStk.ShowModalOptmas = Mrok then
    begin
      with DmStk.QOpttran do
      begin
        if DMStk.SoOpttran.State = DsBrowse then
          DMStk.SoOpttran.Edit;
        fieldbyname('OPTCODE').value := SearchStk.HQuery1.fieldbyname('OPTCODE').asstring;
        fieldbyname('OPTNAME').value := SearchStk.HQuery1.fieldbyname('OPTNAME').asstring;
      end;
    end;
  end;
end;

procedure TFrvopt.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
  begin
    DMstk.QOptInv.fieldbyname('RVLOCAT').asstring := Searchset.Keyno;
    Jedit1.Text := Searchset.HQuery1.fieldbyname('locatnm').asstring;
  end;
end;

procedure TFrvopt.dbApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetAP = Mrok then
  begin
    DMstk.QOptInv.Fieldbyname('APCODE').asstring := Searchset.Keyno;
    JEdit2.Text := Searchset.HQuery1.Fieldbyname('Apname').asstring;
  end;
end;

procedure TFrvopt.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchstk, Searchstk);
  Searchstk.XFlag := 'Y';
  if Searchstk.ShowModalBuypart = MrOk then
    Dmstk.QOptinv.FieldByName('BUYNO').AsString := Searchstk.Keyno;
end;

procedure TFrvopt.DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = Mrok then
  begin
    DmStk.QOptinv.fieldbyname('RVCODE').Asstring := SearchSet.Keyno;
    Jedit3.Text := Searchset.HQuery1.fieldbyname('name').asstring;
  end;
end;

procedure TFrvopt.FormShow(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, DMstk.QOptinv, 'SELECT *  FROM OPTINV WHERE RECVNO =:0', ['']);
  DM_SEC.Do_With_Query(actOpen, DMstk.QOpttran, 'SELECT * FROM OPTTRAN WHERE RECVNO=:0', ['']);
end;

procedure TFrvopt.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK01_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

end.

