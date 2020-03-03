unit unSetGrdCust;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, Dbkbd, ImgList, ComCtrls,
  ToolWin, ActnList, AdvGlowButton, AdvOfficeStatusBar, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, AdvToolBar, cxCheckBox, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TFSetGrdCust = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBCheckBox1: TcxDBCheckBox;
    DataSource1: TDataSource;
    qrGrdCust: TFDQuery;
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
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrGrdCustAfterPost(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure qrGrdCustBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetGrdCust: TFSetGrdCust;

implementation

uses
  Srchset1, Dm1, USoftFirm, Dmsec;

{$R *.DFM}

procedure TFSetGrdCust.InsBtnClick(Sender: TObject);
begin
  Dm_sec.Do_With_Query(actInsert, qrGrdCust, 'SELECT * FROM SETGRADE WHERE GRDCOD=:0', ['']);
  DBEdit1.SetFocus;
end;

procedure TFSetGrdCust.CancBtnClick(Sender: TObject);
begin
  qrGrdCust.cancel;
end;

procedure TFSetGrdCust.DataSource1StateChange(Sender: TObject);
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

procedure TFSetGrdCust.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FSetGrdCust := Nil;
end;

procedure TFSetGrdCust.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetGrdCust.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetGrade = Mrok then
  begin
    Dm_sec.Do_With_Query(actOpen, qrGrdCust, 'SELECT * FROM SETGRADE WHERE GRDCOD=:0', [SearchSet.Keyno]);
  end;
end;

procedure TFSetGrdCust.SavBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัส');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_2', 'INSERT', qrGrdCust.fieldbyname('GRDCOD').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_2', 'EDIT', qrGrdCust.fieldbyname('GRDCOD').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  qrGrdCust.Post;
end;

procedure TFSetGrdCust.FormShow(Sender: TObject);
begin
  Dm_sec.Do_With_Query(actOpen, qrGrdCust, 'SELECT * FROM SETGRADE WHERE GRDCOD=:0', ['']);
end;

procedure TFSetGrdCust.qrGrdCustAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrGrdCust.Active then
      if (qrGrdCust.ApplyUpdates = 0) then
        qrGrdCust.CommitUpdates
      else
        raise Exception.Create(qrGrdCust.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrGrdCust.Edit;
    raise;
  end;
end;

procedure TFSetGrdCust.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_2', 'DELETE', qrGrdCust.fieldbyname('GRDCOD').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        qrGrdCust.Delete;
      end;
  end;
end;

procedure TFSetGrdCust.qrGrdCustBeforeDelete(DataSet: TDataSet);
begin
  DM01.Findexist('CUSTMAST', 'GRADE', qrGrdCust.fieldbyname('GRDCOD').AsString);
end;

procedure TFSetGrdCust.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET03_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

end.

