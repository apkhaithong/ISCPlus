unit Settype;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, Dbkbd, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TFType = class(TForm)
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
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QTypemst: TFDQuery;
    QTypemstTYPECOD: TStringField;
    QTypemstTYPEDES: TStringField;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure InsBtnClick(Sender: TObject);
    procedure EditbtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure QTypemstAfterDelete(DataSet: TDataSet);
    procedure QTypemstAfterPost(DataSet: TDataSet);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure QTypemstTYPECODValidate(Sender: TField);
    procedure QTypemstBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FType: TFType;

implementation

uses
  USoftFirm, Dmsec, ufinddata;

{$R *.DFM}

procedure TFType.InsBtnClick(Sender: TObject);
begin
  with QTypemst do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM SETTYPE WHERE TYPECOD ='''' ');
    open;
    Insert;
  end;
  cxDBTextEdit1.SetFocus;
end;

procedure TFType.EditbtnClick(Sender: TObject);
begin
  Application.Createform(Tffinddata, ffinddata);
  if ffinddata.ShowModalSetTYPE = Mrok then
  begin
    with QTYPEMST do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SETTYPE WHERE TYPECOD=:TYPECOD');
      Params[0].Asstring := ffinddata.KeyNo;
      Open;
    end;
  end;
end;

procedure TFType.SaveBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสยี่ห้อก่อนบันทึก!');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_3', 'INSERT', QTypemstTYPECOD.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_3', 'EDIT', QTypemstTYPECOD.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QTypemst.Post;
end;

procedure TFType.DelBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET02_3', 'DELETE', QTypemstTYPECOD.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QTypemst.Delete;
      end;
  end;
end;

procedure TFType.CancBtnClick(Sender: TObject);
begin
  QTypemst.cancel;
end;

procedure TFType.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QTypemstTYPECOD.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
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
    end;
  end;

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    cxDBTextEdit1.Properties.ReadOnly := True;
end;

procedure TFType.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FType := Nil;
  Action := caFree;
end;

procedure TFType.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET02_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFType.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFType.QTypemstAfterDelete(DataSet: TDataSet);
begin
  Dm_SeC.HI_DBMS.StartTransaction;
  try
    if QTypemst.Active then
      if (QTypemst.ApplyUpdates = 0) then
        QTypemst.CommitUpdates
      else
        raise Exception.Create(QTypemst.RowError.Message);
    Dm_SeC.HI_DBMS.Commit;
  except
    Dm_SeC.HI_DBMS.RollBack;
    QTypemst.Edit;
    raise;
  end;
end;

procedure TFType.QTypemstAfterPost(DataSet: TDataSet);
begin
  Dm_SeC.HI_DBMS.StartTransaction;
  try
    if QTypemst.Active then
      if (QTypemst.ApplyUpdates = 0) then
        QTypemst.CommitUpdates
      else
        raise Exception.Create(QTypemst.RowError.Message);
    Dm_SeC.HI_DBMS.Commit;
  except
    Dm_SeC.HI_DBMS.RollBack;
    QTypemst.Edit;
    raise;
  end;
end;

procedure TFType.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFType.FormShow(Sender: TObject);
begin
  with QTypemst do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM SETTYPE WHERE TYPECOD ='''' ');
    open;
  end;
end;

procedure TFType.QTypemstTYPECODValidate(Sender: TField);
begin
  sfmain.Fieldexist('SETTYPE', 'TYPECOD', QTypemstTYPECOD.AsString);
end;

procedure TFType.QTypemstBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('INVMAST', 'TYPE', QTypemstTYPECOD.AsString);
  SFMain.Findexist('SVMAST', 'TYPE', QTypemstTYPECOD.AsString);
end;

end.

