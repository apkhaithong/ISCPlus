unit Setpyfor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DB, ExtCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, Dbkbd,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, AdvGlowButton,
  AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  cxCheckBox, dxStatusBar;

type
  TFPayfor = class(TForm)
    AdvPanel1: TAdvPanel;
    Label7: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QPayfor: TFDQuery;
    QPayforFORCODE: TStringField;
    QPayforFORDESC: TStringField;
    QPayforSNCSET: TStringField;
    QPayforTAXFL: TStringField;
    QPayforREGFL: TStringField;
    QPayforACC_CODE: TStringField;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure InsBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure ClosBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QPayforFORCODEValidate(Sender: TField);
    procedure QPayforAfterPost(DataSet: TDataSet);
    procedure QPayforAfterDelete(DataSet: TDataSet);
    procedure QPayforBeforeDelete(DataSet: TDataSet);
    procedure QPayforBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPayfor: TFPayfor;

implementation

uses
  Dmar, SrchDlgAr, USoftFirm, Dmsec;

{$R *.DFM}

procedure TFPayfor.InsBtnClick(Sender: TObject);
begin
  with QPayfor do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM PAYFOR WHERE FORCODE ='''' ');
    open;
    Insert;
  end;
end;

procedure TFPayfor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end;
end;

procedure TFPayfor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FPayfor := Nil;
end;

procedure TFPayfor.SaveBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสชำระค่าก่อนบันทึก!');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET04_1', 'INSERT', QPayforFORCODE.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET04_1', 'EDIT', QPayforFORCODE.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QPayfor.Post;
end;

procedure TFPayfor.CancBtnClick(Sender: TObject);
begin
  QPayfor.Cancel;
end;

procedure TFPayfor.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
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

procedure TFPayfor.ClosBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFPayfor.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchDlgAr, SearchDlgAr);
  if SearchDlgAr.ShowModalPAYFOR = Mrok then
  begin
    with QPayfor do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PAYFOR WHERE FORCODE=:FORCODE');
      Params[0].Asstring := SearchDlgAr.KeyNo;
      Open;
    end;
    if QPayfor.EOF and QPayfor.BOF then
      SFMain.RaiseException('ไม่มีข้อมูล');
  end;
end;

procedure TFPayfor.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET04_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFPayfor.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFPayfor.FormShow(Sender: TObject);
begin
  with QPayfor do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM PAYFOR WHERE FORCODE ='''' ');
    open;
  end;
end;

procedure TFPayfor.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F2:
      SaveBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFPayfor.QPayforFORCODEValidate(Sender: TField);
begin
  sfmain.Fieldexist('PAYFOR', 'FORCODE', QPayforFORCODE.AsString);
end;

procedure TFPayfor.QPayforAfterPost(DataSet: TDataSet);
begin
  dm_sec.HI_DBMS.StartTransaction;
  try
    if QPayfor.Active then
      if (QPayfor.ApplyUpdates = 0) then
        QPayfor.CommitUpdates
      else
        raise Exception.Create(QPayfor.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TFPayfor.QPayforAfterDelete(DataSet: TDataSet);
begin
  dm_sec.HI_DBMS.StartTransaction;
  try
    if QPayfor.Active then
      if (QPayfor.ApplyUpdates = 0) then
        QPayfor.CommitUpdates
      else
        raise Exception.Create(QPayfor.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TFPayfor.QPayforBeforeDelete(DataSet: TDataSet);
begin
  if Copy(QPAYFOR.FieldByName('FORCODE').Asstring, 1, 1) = '0' then
    SFMain.RaiseException('รหัสขึ้นต้นด้วย 0 สำหรับมาตรฐานเท่านั้น');
end;

procedure TFPayfor.QPayforBeforePost(DataSet: TDataSet);
begin
  if Copy(QPAYFOR.FieldByName('FORCODE').Asstring, 1, 1) = '0' then
    SFMain.RaiseException('รหัสขึ้นต้นด้วย 0 สำหรับมาตรฐานเท่านั้น');
end;

end.

