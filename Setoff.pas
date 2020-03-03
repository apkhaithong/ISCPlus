unit Setoff;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, DB, Dbkbd, ImgList,
  ComCtrls, ToolWin, RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFSetoff = class(TForm)
    ToolBar1: TToolBar;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    CloseBtn: TToolButton;
    RzStatusBar1: TRzStatusBar;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    DBkbd1: TDBkbd;
    QOfficer: TFDQuery;
    ToolButton1: TToolButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure InsBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure ClosBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QOfficerAfterDelete(DataSet: TDataSet);
    procedure QOfficerAfterPost(DataSet: TDataSet);
    procedure QOfficerBeforeDelete(DataSet: TDataSet);
    procedure QOfficerNewRecord(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetoff: TFSetoff;

implementation

uses
  USoftFirm, Dmsec, uFindData;

{$R *.DFM}

procedure TFSetoff.InsBtnClick(Sender: TObject);
begin
  with QOfficer do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD ='''' ');
    Open;
    Insert;
  end;
  DBEdit1.SetFocus;
end;

procedure TFSetoff.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end;
end;

procedure TFSetoff.DelBtnClick(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PASSWRD WHERE CUSCOD=:EDIT');
    params[0].asstring := QOfficer.Fieldbyname('Officcod').Asstring;
    Open;
    if not (Bof and Eof) then
      SFMain.RaiseException('รหัสพนักงานนี้ ยังมีในระบบรักษาความปลอดภัย Userid :' + Query1.Fieldbyname('Cuscod').Asstring + #13 +
        'กรุณาไปยกเลิกรหัส Password นี้ก่อน');
  end;

  if MessageDlg('แน่ใจหรือไม่ที่จะยกเลิก', mtconfirmation, [mbOk, mbcancel], 0) = mrok then
    QOfficer.delete;
end;

procedure TFSetoff.CancBtnClick(Sender: TObject);
begin
  QOfficer.Cancel;
end;

procedure TFSetoff.ClosBtnClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TFSetoff.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin

  InsBtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete);
  Enqbtn.Enabled := InsBtn.Enabled;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Enabled := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Enabled := SavBtn.Enabled;
  DBRadioGroup1.ReadOnly := not SavBtn.Enabled;
  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TDBEdit) and (TDBEdit(Components[n]).Tag = 0) then
      begin
        TDBEdit(Components[n]).Readonly := True;
        TDBEdit(Components[n]).Color := clSilver;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TDBEdit) and (TDBEdit(Components[n]).Tag = 0) then
      begin
        TDBEdit(Components[n]).Readonly := False;
        TDBEdit(Components[n]).Color := clWhite;
      end;
    end;
  end;
end;

procedure TFSetoff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FSetoff := Nil;
end;

procedure TFSetoff.FormCreate(Sender: TObject);
begin
//  SFMain.Check_right(HSET, 'FILE05_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFSetoff.QOfficerAfterDelete(DataSet: TDataSet);
begin
  if QOfficer.Active then
    Dm_sec.HI_DBMS.ApplyUpdates([QOfficer]);
end;

procedure TFSetoff.QOfficerAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QOfficer.Active then
      if (QOfficer.ApplyUpdates = 0) then
        QOfficer.CommitUpdates
      else
        raise Exception.Create(QOfficer.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    QOfficer.Edit;
    raise;
  end;
end;

procedure TFSetoff.QOfficerBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFMain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
end;

procedure TFSetoff.QOfficerNewRecord(DataSet: TDataSet);
begin
  QOfficer.Fieldbyname('DEPART').Asstring := '1';
  QOfficer.Fieldbyname('USERID').Asstring := SFMain.Xuser_ID;
  QOfficer.Fieldbyname('TIME1').AsDateTime := Now;
end;

procedure TFSetoff.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetoff.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalsetOfficer = Mrok then
  begin
    with QOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD=:OFFICCOD');
      Params[0].Asstring := fFindData.Keyno;
      Open;
    end;
    if QOfficer.EOF and QOfficer.BOF then
      SFMain.RaiseException('ไม่มีข้อมูล');
  end;
end;

procedure TFSetoff.SavBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสพนักงานก่อนบันทึก!');
  QOfficer.Post;
end;

procedure TFSetoff.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFSetoff.FormShow(Sender: TObject);
begin
  with QOfficer do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD ='''' ');
    Open;
  end;
end;

end.

