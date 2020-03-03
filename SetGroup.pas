unit SetGroup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, DB, Dbkbd, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, AdvGlowButton, AdvToolBar, AdvPanel, RzLabel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  BusinessSkinForm, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxMaskEdit,
  cxButtonEdit, cxGroupBox, cxRadioGroup, dxStatusBar;

type
  TFSGroup = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    QGroup: TFDQuery;
    QGroupGROUPCOD: TStringField;
    QGroupGROUPNAM: TStringField;
    QGroupACCTNO: TStringField;
    QGroupMAXDISC: TFloatField;
    QGroupPURDISC: TFloatField;
    QGroupACCTB: TStringField;
    QGroupACCTS: TStringField;
    QGroupACCTL: TStringField;
    QGroupACCTR: TStringField;
    QGroupACCTC: TStringField;
    QGroupDEPT: TStringField;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    DBRadioGroup1: TcxDBRadioGroup;
    DBEdit5: TcxDBButtonEdit;
    Label5: TLabel;
    QGroupTYPGROUP: TStringField;
    QGroupMAINGROUP: TStringField;
    procedure InsBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QGroupAfterDelete(DataSet: TDataSet);
    procedure QGroupAfterPost(DataSet: TDataSet);
    procedure QGroupNewRecord(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure QGroupBeforeDelete(DataSet: TDataSet);
    procedure QGroupGROUPCODValidate(Sender: TField);
    procedure DBRadioGroup1PropertiesChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSGroup: TFSGroup;

implementation

uses
  USoftFirm, Dmsec, Dmset1, uFindData, uSrcDLG;

{$R *.DFM}

procedure TFSGroup.InsBtnClick(Sender: TObject);
begin
  with QGroup do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD ='''' ');
    Open;
    Insert;
  end;
  cxDBTextEdit1.SetFocus;
end;

procedure TFSGroup.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalGroup = Mrok then
  begin
    with QGroup do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD =:GROUPCOD');
      Params[0].Asstring := fFindData.KeyNo;
      Open;
    end;
  end;
end;

procedure TFSGroup.SaveBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสกลุ่มสินค้าก่อนบันทึก!');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_1', 'INSERT', QGroupGROUPCOD.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_1', 'EDIT', QGroupGROUPCOD.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QGroup.Post;
end;

procedure TFSGroup.DelBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  if (QGroup.FieldByName('GROUPCOD').AsString = 'OL') or
    (QGroup.FieldByName('GROUPCOD').AsString = 'CO') then
    SFMain.RaiseException('เป็นรหัสกลุ่มบังคับ..ลบไม่ได้');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(sfmain.Xuser_ID, 'HDSET02_1', 'DELETE', QGroupGROUPCOD.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QGroup.Delete;
      end;
  end;
end;

procedure TFSGroup.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end;
end;

procedure TFSGroup.CancBtnClick(Sender: TObject);
begin
  QGroup.Cancel;
end;

procedure TFSGroup.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QGroupGROUPCOD.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  DBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 1) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := $00DDDDFF;
      end;
    end;
  end;

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    cxDBTextEdit1.Properties.ReadOnly := True;
end;

procedure TFSGroup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FSGroup := Nil;
  Action := caFree;
end;

procedure TFSGroup.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET02_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFSGroup.QGroupAfterDelete(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QGroup.Active then
      if (QGroup.ApplyUpdates = 0) then
        QGroup.CommitUpdates
      else
        raise Exception.Create(QGroup.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TFSGroup.QGroupAfterPost(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QGroup.Active then
      if (QGroup.ApplyUpdates = 0) then
        QGroup.CommitUpdates
      else
        raise Exception.Create(QGroup.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    QGroup.Edit;
    raise;
  end;
end;

procedure TFSGroup.QGroupNewRecord(DataSet: TDataSet);
begin
  QGroup.Fieldbyname('MaxDisc').AsFloat := 0;
end;

procedure TFSGroup.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFSGroup.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SaveBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFSGroup.FormShow(Sender: TObject);
begin
  with QGroup do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD ='''' ');
    Open;
  end;
end;

procedure TFSGroup.QGroupBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('INVMAST', 'GROUP1', QGroup.fieldbyname('GROUPCOD').AsString);
end;

procedure TFSGroup.QGroupGROUPCODValidate(Sender: TField);
begin
  sfmain.Fieldexist('GROUPMST', 'GROUPCOD', QGroupGROUPCOD.AsString);
end;

procedure TFSGroup.DBRadioGroup1PropertiesChange(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 1 then
  begin
    Label5.Visible := True;
    DBEdit5.Visible := True;
  end
  else
  begin
    Label5.Visible := False;
    DBEdit5.Visible := False;
  end;
end;

procedure TFSGroup.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  DBRadioGroup1PropertiesChange(Sender);
end;

procedure TFSGroup.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDLG, fSrcDLG);
  fSrcDLG.xgrouptyp := '';
  if fSrcDLG.ShowModalGroup = Mrok then
  begin
    with Dm_Set1.QGroup do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD =:GROUPCOD');
      Params[0].Asstring := fSrcDLG.KeyNo;
      Open;
    end;
    if Dm_Set1.QGroup.EOF and Dm_Set1.QGroup.BOF then
      SFMain.RaiseException('ไม่มีกลุ่มสินค้าในแฟ้มข้อมูล');
    if Dm_Set1.QGroup.FieldByName('TYPGROUP').AsString <> '1' then
      SFMain.RaiseException('รหัสนี้ไม่ใช่กลุ่มสินค้าหลัก');
    QGroup.FieldByName('MAINGROUP').AsString := Dm_Set1.QGroup.FieldByName('GROUPCOD').AsString;
  end;
end;

end.

