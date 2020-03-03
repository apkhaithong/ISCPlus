unit SvSt70;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Dbkbd, ImgList, ComCtrls, ToolWin,
  RzPanel, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, AdvGlowButton,
  AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  dxStatusBar;

type
  TSvSt_70 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label7: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
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
    QSetgroupGCODE: TStringField;
    QSetgroupGDESC: TStringField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    dxStatusBar1: TdxStatusBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvSt_70: TSvSt_70;

implementation

uses
  DmSvSet, usrcdlg1, USoftFirm, Dmsec;

{$R *.DFM}

procedure TSvSt_70.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  svst_70 := Nil;
end;

procedure TSvSt_70.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDBMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end;
end;

procedure TSvSt_70.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QSetgroupGCODE.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
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
    end;
  end;

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    cxDBTextEdit1.Properties.ReadOnly := True;
end;

procedure TSvSt_70.InsBtnClick(Sender: TObject);
begin
  with QSetgroup do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SETGROUP WHERE GCODE ='''' ');
    Open;
    Insert;
  end;
end;

procedure TSvSt_70.SaveBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้ใส่รหัส');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_2', 'INSERT', QSetgroupGCODE.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_2', 'EDIT', QSetgroupGCODE.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QSetgroup.Post;
end;

procedure TSvSt_70.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSetgroup = Mrok then
  begin
    with QSetgroup do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SETGROUP WHERE GCODE =:EDIT1');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
  end;
end;

procedure TSvSt_70.CancBtnClick(Sender: TObject);
begin
  QSetgroup.Cancel;
end;

procedure TSvSt_70.DelBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET02_2', 'DELETE', QSetgroupGCODE.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QSetgroup.Delete;
      end;
  end;
end;

procedure TSvSt_70.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET02_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSvSt_70.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvSt_70.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TSvSt_70.FormShow(Sender: TObject);
begin
  with QSetgroup do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SETGROUP WHERE GCODE ='''' ');
    Open;
  end;
end;

procedure TSvSt_70.QSetgroupAfterDelete(DataSet: TDataSet);
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

procedure TSvSt_70.QSetgroupAfterPost(DataSet: TDataSet);
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

procedure TSvSt_70.QSetgroupBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('SVMAST', 'GCODE', QSetgroupGCODE.AsString);
end;

procedure TSvSt_70.QSetgroupGCODEValidate(Sender: TField);
begin
  sfmain.Fieldexist('SETGROUP', 'GCODE', QSetgroupGCODE.AsString);
end;

end.

