unit unSetTypReson;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, Dbkbd, ImgList, ComCtrls,
  ToolWin, ActnList, AdvGlowButton, AdvOfficeStatusBar, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TFSetReson = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    DataSource1: TDataSource;
    qrTypReson: TFDQuery;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    acAdd: TAction;
    acDel: TAction;
    acQuery: TAction;
    acSave: TAction;
    AcCan: TAction;
    acClose: TAction;
    AcPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    qrTypResonRESONCD: TStringField;
    qrTypResonRESNDES: TStringField;
    DBEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrTypResonAfterPost(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetReson: TFSetReson;

implementation

uses
  Srchset1, USoftFirm, Dmsec;

{$R *.DFM}

procedure TFSetReson.InsBtnClick(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actInsert, qrTypReson, 'SELECT * FROM SETRESON WHERE RESONCD =:0', ['']);
  DBEdit1.SetFocus;
end;

procedure TFSetReson.CancBtnClick(Sender: TObject);
begin
  qrTypReson.cancel;
end;

procedure TFSetReson.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit1.Text <> '');
  enqBtn.Visible := (DataSource1.State = Dsbrowse);
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clSilver;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;
  if not (DataSource1.Dataset.State = Dsinsert) then
  begin
    DBEdit1.Properties.Readonly := True;
    DBEdit1.Style.Color := clSilver;
  end;
end;

procedure TFSetReson.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FSetReson := Nil;
end;

procedure TFSetReson.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetReson.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetreson = Mrok then
  begin
    DM_SEC.Do_With_Query(actOpen, qrTypReson, 'SELECT * FROM SETRESON WHERE RESONCD=:0', [SearchSet.Keyno]);
  end;
end;

procedure TFSetReson.SavBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัส');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_3', 'INSERT', qrTypReson.fieldbyname('RESONCD').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_3', 'EDIT', qrTypReson.fieldbyname('RESONCD').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  qrTypReson.Post;
end;

procedure TFSetReson.FormShow(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, qrTypReson, 'SELECT * FROM SETRESON WHERE RESONCD=:0', ['']);
end;

procedure TFSetReson.qrTypResonAfterPost(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if qrTypReson.Active then
      if (qrTypReson.ApplyUpdates = 0) then
        qrTypReson.CommitUpdates
      else
        raise Exception.Create(qrTypReson.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    qrTypReson.Edit;
    raise;
  end;
end;

procedure TFSetReson.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_3', 'DELETE', qrTypReson.fieldbyname('RESONCD').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        qrTypReson.Delete;
      end;
  end;
end;

procedure TFSetReson.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET03_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

end.

