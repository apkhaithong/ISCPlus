unit TypeClaim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Dbkbd, ImgList, ComCtrls, ToolWin,
  RzPanel, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, AdvGlowButton,
  AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxMaskEdit, cxButtonEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TSetTypeClaim = class(TForm)
    AdvPanel1: TAdvPanel;
    Label7: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    QSetgroup: TFDQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    dxStatusBar1: TdxStatusBar;
    QSetgroupCLAIMCODE: TStringField;
    QSetgroupCLAIMDESC: TStringField;
    QSetgroupFLAG: TStringField;
    DBEdit1: TcxDBButtonEdit;
    Label1: TLabel;
    QSetgroupLOCAT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure QSetgroupAfterDelete(DataSet: TDataSet);
    procedure QSetgroupAfterPost(DataSet: TDataSet);
    procedure QSetgroupBeforeDelete(DataSet: TDataSet);
    procedure QSetgroupGCODEValidate(Sender: TField);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetTypeClaim: TSetTypeClaim;

implementation

uses
  DmSvSet, usrcdlg1, USoftFirm, Dmsec, uSrcDLG;

{$R *.DFM}

procedure TSetTypeClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  SetTypeClaim := Nil;
end;

procedure TSetTypeClaim.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDBMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end;
end;

procedure TSetTypeClaim.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QSetgroupCLAIMCODE.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag in [0, 1]) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag in [0, 1]) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
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
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 1) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := $00DDDDFF;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 1) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := $00DDDDFF;
      end;
    end;
  end;

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    cxDBTextEdit1.Properties.ReadOnly := True;
end;

procedure TSetTypeClaim.InsBtnClick(Sender: TObject);
begin
  with QSetgroup do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TYPECLAIM WHERE CLAIMCODE ='''' ');
    Open;
    Insert;
  end;
end;

procedure TSetTypeClaim.SaveBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้ใส่รหัสคลัง');
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้ใส่รหัสสาขา');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_C', 'INSERT', QSetgroupCLAIMCODE.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_C', 'EDIT', QSetgroupCLAIMCODE.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QSetgroup.Post;
end;

procedure TSetTypeClaim.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalTypeClaim = Mrok then
  begin
    with QSetgroup do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TYPECLAIM WHERE CLAIMCODE =:EDIT1');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
  end;
end;

procedure TSetTypeClaim.CancBtnClick(Sender: TObject);
begin
  QSetgroup.Cancel;
end;

procedure TSetTypeClaim.DelBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET01_C', 'DELETE', QSetgroupCLAIMCODE.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QSetgroup.Delete;
      end;
  end;
end;

procedure TSetTypeClaim.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET01_C');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSetTypeClaim.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSetTypeClaim.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TSetTypeClaim.FormShow(Sender: TObject);
begin
  with QSetgroup do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TYPECLAIM WHERE CLAIMCODE ='''' ');
    Open;
  end;
end;

procedure TSetTypeClaim.QSetgroupAfterDelete(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSetgroup.Active then
      if (QSetgroup.ApplyUpdates = 0) then
        QSetgroup.CommitUpdates
      else
        raise Exception.Create(QSetgroup.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TSetTypeClaim.QSetgroupAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSetgroup.Active then
      if (QSetgroup.ApplyUpdates = 0) then
        QSetgroup.CommitUpdates
      else
        raise Exception.Create(QSetgroup.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TSetTypeClaim.QSetgroupBeforeDelete(DataSet: TDataSet);
begin
  //SFMain.Findexist('SVMAST','GCODE',QSetgroupGCODE.AsString);
end;

procedure TSetTypeClaim.QSetgroupGCODEValidate(Sender: TField);
begin
//  sfmain.Fieldexist('TYPECLAIM','CLAIMCODE',QSetgroupCLAIMCODE.AsString);
end;

procedure TSetTypeClaim.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TFSrcDlg, FSrcDlg);
  if FSrcDlg.ShowModalLocat = Mrok then
    QSetgroupLOCAT.Asstring := fSrcDlg.Keyno;
end;

end.

