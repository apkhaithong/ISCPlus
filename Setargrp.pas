unit Setargrp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DB, ExtCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, Dbkbd, ImgList,
  ComCtrls, ToolWin, RzPanel, AdvOfficeButtons, DBAdvOfficeButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TFArgroup = class(TForm)
    AdvPanel1: TAdvPanel;
    Label7: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBCheckBox1: TDBAdvOfficeCheckBox;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QArgroup: TFDQuery;
    QArgroupARGCOD: TStringField;
    QArgroupARGDES: TStringField;
    QArgroupARDISC: TFloatField;
    QArgroupARFLAG: TStringField;
    dxStatusBar1: TdxStatusBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure InsBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure ClosBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QArgroupAfterPost(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure QArgroupBeforeDelete(DataSet: TDataSet);
    procedure QArgroupARGCODValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FArgroup: TFArgroup;

implementation

uses
  USoftFirm, Dmsec, uFindData;

{$R *.DFM}

procedure TFArgroup.InsBtnClick(Sender: TObject);
begin
  with QArgroup do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM ARGROUP WHERE ARGCOD ='''' ');
    open;
    Insert;
  end;
  DBEdit1.SetFocus;
end;

procedure TFArgroup.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end;
end;

procedure TFArgroup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FArgroup := Nil;
  Action := caFree;
end;

procedure TFArgroup.SaveBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสกลุ่มก่อนบันทึก!');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_1', 'INSERT', QArgroupARGCOD.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_1', 'EDIT', QArgroupARGCOD.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QArgroup.Post;
end;

procedure TFArgroup.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET03_1', 'DELETE', QArgroupARGCOD.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QArgroup.Delete;
      end;
  end;
end;

procedure TFArgroup.CancBtnClick(Sender: TObject);
begin
  if QArgroup.Active then
    QArgroup.Cancel;
end;

procedure TFArgroup.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QArgroupARGCOD.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  DBCheckBox1.ReadOnly := not Savebtn.Visible;

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
    DBEdit1.Properties.ReadOnly := True;
end;

procedure TFArgroup.ClosBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFArgroup.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalArgroup = Mrok then
  begin
    with QArgroup do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARGROUP WHERE ARGCOD=:0');
      Params[0].Asstring := fFindData.KeyNo;
      Open;
    end;
  end;
end;

procedure TFArgroup.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET03_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFArgroup.QArgroupAfterPost(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QArgroup.Active then
      if (QArgroup.ApplyUpdates = 0) then
        QArgroup.CommitUpdates
      else
        raise Exception.Create(QArgroup.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    QArgroup.Edit;
    raise;
  end;
end;

procedure TFArgroup.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFArgroup.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFArgroup.FormShow(Sender: TObject);
begin
  with QArgroup do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM ARGROUP WHERE ARGCOD ='''' ');
    open;
  end;
end;

procedure TFArgroup.QArgroupBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('CUSTMAST', 'GRPCUS', QArgroup.fieldbyname('ARGCOD').AsString);
end;

procedure TFArgroup.QArgroupARGCODValidate(Sender: TField);
begin
  sfmain.Fieldexist('ARGROUP', 'ARGCOD', QArgroupARGCOD.AsString);
end;

end.

