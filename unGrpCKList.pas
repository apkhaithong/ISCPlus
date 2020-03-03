unit unGrpCkList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, Dbkbd, ImgList, ComCtrls,
  ToolWin, RzPanel, AdvGlowButton, AdvToolBar, AdvPanel, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrGrpCKList = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    qGrpCKList: TFDQuery;
    Query1: TFDQuery;
    qGrpCKListGCODE: TStringField;
    qGrpCKListDESCP: TStringField;
    qGrpCKListUSERID: TStringField;
    qGrpCKListINPDATE: TDateTimeField;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    procedure InsBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qGrpCKListNewRecord(DataSet: TDataSet);
    procedure qGrpCKListAfterPost(DataSet: TDataSet);
    procedure qGrpCKListBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGrpCKList: TfrGrpCKList;

implementation

uses
  DmSvSet, Srchdlg1, usrCdlg1, USoftFirm, Dmsec;

{$R *.DFM}

procedure TfrGrpCKList.InsBtnClick(Sender: TObject);
begin
  with qGrpCKList do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPCKLIST WHERE GCODE ='''' ');
    Open;
    Insert;
  end;
end;

procedure TfrGrpCKList.SaveBtnClick(Sender: TObject);
begin
  qGrpCKList.Post;
end;

procedure TfrGrpCKList.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrGrpCKList.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (qGrpCKListGCODE.AsString <> '');

  Enqbtn.Enabled := InsBtn.Enabled;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  //
  if Datasource1.DataSet.State = dsBrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnface;
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
end;

procedure TfrGrpCKList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  frGrpCKList := Nil;
end;

procedure TfrGrpCKList.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalGRPCKLIST = Mrok then
  begin
    with qGrpCKList do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPCKLIST WHERE GCODE =:0');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
      Edit;
    end;
    if qGrpCKList.Bof and qGrpCKList.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
  end;
end;

procedure TfrGrpCKList.CancBtnClick(Sender: TObject);
begin
  if qGrpCKList.Active then
    qGrpCKList.Cancel;
end;

procedure TfrGrpCKList.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('คุณต้องการลบข้อมูล ?', mtconfirmation, [mbOk, mbcancel], 0) = mrok then
    qGrpCKList.delete;
end;

procedure TfrGrpCKList.DBEdit3Exit(Sender: TObject);
begin
  if qGrpCKList.State = DsInsert then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPCKLIST WHERE GCODE = :XCODE ');
      Params[0].Asstring := qGrpCKList.FieldByname('GCODE').Asstring;
      Open;
    end;
    if not (Query1.EOF and Query1.BOF) then
      SFMain.RaiseException('มีรหัสประเภทการซ่อมทำนี้ในแฟ้มข้อมูลแล้ว');
  end;
end;

procedure TfrGrpCKList.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('', 'FILE06_6');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TfrGrpCKList.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrGrpCKList.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_ESCAPE:
      CancBtnClick(Sender);
    Vk_F8:
      if DelBtn.Enabled then
        DelBtnClick(Sender);
    Vk_F2:
      if SavBtn.Enabled then
        SaveBtnClick(Sender);
    Vk_F5:
      if InsBtn.Enabled then
        InsBtnClick(Sender);
  end;
end;

procedure TfrGrpCKList.FormShow(Sender: TObject);
begin
  with qGrpCKList do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPCKLIST WHERE GCODE = '''' ');
    Open;
  end;
end;

procedure TfrGrpCKList.qGrpCKListNewRecord(DataSet: TDataSet);
begin
  qGrpCKList.Fieldbyname('USERID').Asstring := SFMain.Xuser_ID;
  qGrpCKList.FieldByName('INPDATE').AsDateTime := Now;
end;

procedure TfrGrpCKList.qGrpCKListAfterPost(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if qGrpCKList.Active then
      if (qGrpCKList.ApplyUpdates = 0) then
        qGrpCKList.CommitUpdates
      else
        raise Exception.Create(qGrpCKList.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    qGrpCKList.EDIT;
    raise;
  end;
end;

procedure TfrGrpCKList.qGrpCKListBeforePost(DataSet: TDataSet);
begin
  if qGrpCKList.Fieldbyname('GCODE').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัส');
end;

end.

