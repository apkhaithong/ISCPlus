unit unSubject;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, Dbkbd, ImgList, ComCtrls,
  ToolWin, ActnList, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrSubject = class(TForm)
    ToolBar1: TToolBar;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    CloseBtn: TToolButton;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DataSource1: TDataSource;
    qrMstSet: TFDQuery;
    StatusBar1: TStatusBar;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    acAdd: TAction;
    acDel: TAction;
    acQuery: TAction;
    acSave: TAction;
    AcCan: TAction;
    acClose: TAction;
    AcPrn: TAction;
    ToolButton1: TToolButton;
    dbChkSale: TDBCheckBox;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrMstSetAfterPost(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure qrMstSetBeforeDelete(DataSet: TDataSet);
    procedure qrMstSetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSubject: TfrSubject;

implementation

uses
  uSrcDLG, uSoftfirm, DmSec;

{$R *.DFM}

procedure TfrSubject.InsBtnClick(Sender: TObject);
begin
  with qrMstSet do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TSUBJECT WHERE SUBCODE =:0 ');
    Params[0].Asstring := '';
    open;
    Insert;
  end;
  DBEdit1.SetFocus;
end;

procedure TfrSubject.CancBtnClick(Sender: TObject);
begin
  qrMstSet.cancel;
end;

procedure TfrSubject.DataSource1StateChange(Sender: TObject);
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

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TDBedit) and (TDBedit(Components[n]).Tag = 0) then
      begin
        TDBedit(Components[n]).Readonly := True;
        TDBedit(Components[n]).Color := clSilver;
      end;
      if (Components[n] is TDBmemo) and (TDBmemo(Components[n]).Tag = 0) then
      begin
        TDBmemo(Components[n]).Readonly := True;
        TDBmemo(Components[n]).Color := clSilver;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TDBedit) and (TDBedit(Components[n]).Tag = 0) then
      begin
        TDBedit(Components[n]).Readonly := False;
        TdBedit(Components[n]).Color := clWhite;
      end;
      if (Components[n] is TDBmemo) and (TDBmemo(Components[n]).Tag = 0) then
      begin
        TDBmemo(Components[n]).Readonly := False;
        TDBmemo(Components[n]).Color := clWhite;
      end;
    end;
  end;
  if not (DataSource1.Dataset.State = Dsinsert) then
  begin
    DBEdit1.Readonly := True;
    DBEdit1.Color := clSilver;
  end;
end;

procedure TfrSubject.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frSubject := Nil;
end;

procedure TfrSubject.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrSubject.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalSubject = Mrok then
  begin
    with qrMstSet do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TSUBJECT WHERE SUBCODE =:0 ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
  end;
end;

procedure TfrSubject.SavBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัส');
  qrMstSet.Post;
end;

procedure TfrSubject.FormShow(Sender: TObject);
begin
  with qrMstSet do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TSUBJECT WHERE SUBCODE =:0 ');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TfrSubject.qrMstSetAfterPost(DataSet: TDataSet);
begin
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if qrMstSet.Active then
      if (qrMstSet.ApplyUpdates = 0) then
        qrMstSet.CommitUpdates
      else
        raise Exception.Create(qrMstSet.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    qrMstSet.Edit;
    raise;
  end;
end;

procedure TfrSubject.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ที่จะลบ !', mtconfirmation, [mbOk, mbcancel], 0) = mrok then
    qrMstSet.Delete;
end;

procedure TfrSubject.qrMstSetBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('TFIRSTSV', 'SUBJECT', qrMstSet.fieldbyname('SUBCODE').AsString);
end;

procedure TfrSubject.qrMstSetNewRecord(DataSet: TDataSet);
begin
  qrMstSet.fieldbyname('FLUSE').AsString := 'Y';
end;

end.

