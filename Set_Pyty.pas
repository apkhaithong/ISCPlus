unit Set_Pyty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DB, ExtCtrls, Mask, DBCtrls, Buttons, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, AdvGlowButton, AdvToolBar, AdvPanel, RzDbkbd,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TFPaytyp = class(TForm)
    AdvPanel1: TAdvPanel;
    Label7: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    QPaytyp: TFDQuery;
    QPaytypPAYCODE: TStringField;
    QPaytypPAYDESC: TStringField;
    QPaytypRLBILL: TStringField;
    QPaytypSNCSET: TStringField;
    QPaytypMEMO1: TMemoField;
    QPaytypACC_CODE: TStringField;
    DBkbd1: TRzDBkbd;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure InsBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure ClosBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QPaytypAfterDelete(DataSet: TDataSet);
    procedure QPaytypAfterPost(DataSet: TDataSet);
    procedure QPaytypBeforeDelete(DataSet: TDataSet);
    procedure QPaytypBeforePost(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure QPaytypPAYCODEValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPaytyp: TFPaytyp;

implementation

uses
  USoftFirm, Dmsec, uFindData;

{$R *.DFM}

procedure TFPaytyp.InsBtnClick(Sender: TObject);
begin
  with QPaytyp do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM PAYTYP WHERE PAYCODE ='''' ');
    open;
    Insert;
  end;
end;

procedure TFPaytyp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FPaytyp := nil;
end;

procedure TFPaytyp.SaveBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสชำระก่อนบันทึก!');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET04_2', 'INSERT', QPaytypPAYCODE.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET04_2', 'EDIT', QPaytypPAYCODE.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QPaytyp.Post;
end;

procedure TFPaytyp.CancBtnClick(Sender: TObject);
begin
  QPaytyp.Cancel;
end;

procedure TFPaytyp.DataSource1StateChange(Sender: TObject);
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

procedure TFPaytyp.ClosBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFPaytyp.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalPAYTYP = Mrok then
  begin
    with QPaytyp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PAYTYP WHERE PAYCODE=:PAYCODE');
      Params[0].Asstring := fFindData.KeyNo;
      Open;
    end;
    if QPaytyp.EOF and QPaytyp.BOF then
      SFMain.RaiseException('ไม่มีข้อมูล');
  end;
end;

procedure TFPaytyp.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET04_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFPaytyp.QPaytypAfterDelete(DataSet: TDataSet);
begin
  if QPaytyp.Active then
    Dm_Sec.HI_DBMS.ApplyUpdates([QPaytyp]);
end;

procedure TFPaytyp.QPaytypAfterPost(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QPaytyp.Active then
      if (QPaytyp.ApplyUpdates = 0) then
        QPaytyp.CommitUpdates
      else
        raise Exception.Create(QPaytyp.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.Rollback;
    QPaytyp.Edit;
    raise;
  end;
end;

procedure TFPaytyp.QPaytypBeforeDelete(DataSet: TDataSet);
begin
  if Copy(QPAYTYP.FieldByName('PAYCODE').Asstring, 1, 1) = '0' then
    SFMain.RaiseException('รหัสขึ้นต้นด้วย 0 สำหรับมาตรฐานเท่านั้น');
end;

procedure TFPaytyp.QPaytypBeforePost(DataSet: TDataSet);
begin
  if Copy(QPAYTYP.FieldByName('PAYCODE').Asstring, 1, 1) = '0' then
    SFMain.RaiseException('รหัสขึ้นต้นด้วย 0 สำหรับมาตรฐานเท่านั้น');
end;

procedure TFPaytyp.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFPaytyp.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFPaytyp.FormShow(Sender: TObject);
begin
  with QPaytyp do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM PAYTYP WHERE PAYCODE ='''' ');
    open;
  end;
end;

procedure TFPaytyp.QPaytypPAYCODEValidate(Sender: TField);
begin
  sfmain.Fieldexist('PAYTYP', 'PAYCODE', QPaytypPAYCODE.AsString);
end;

end.

