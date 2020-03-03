unit unSetBaab;

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
  TFSetBaab = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DataSource1: TDataSource;
    qrBaabMast: TFDQuery;
    qrBaabMastBAABCOD: TStringField;
    qrBaabMastBAABDES: TStringField;
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
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrBaabMastAfterPost(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure qrBaabMastBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetBaab: TFSetBaab;

implementation

uses
  Srchset1, Dm1, USoftfirm, Dmsec;

{$R *.DFM}

procedure TFSetBaab.InsBtnClick(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actInsert, qrBaabMast, 'SELECT * FROM SETBAAB WHERE BAABCOD =:0', ['']);
  DBEdit1.SetFocus;
end;

procedure TFSetBaab.CancBtnClick(Sender: TObject);
begin
  qrBaabmast.cancel;
end;

procedure TFSetBaab.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit1.Text <> '');
  enqBtn.Visible := InsBtn.Visible;
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
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := True;
        TcxDBmemo(Components[n]).Style.Color := clSilver;
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
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := False;
        TcxDBmemo(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;
  if not (DataSource1.Dataset.State = Dsinsert) then
  begin
    DBEdit1.Properties.Readonly := True;
    DBEdit1.Style.Color := clSilver;
  end;
end;

procedure TFSetBaab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FSetBaab := Nil;
end;

procedure TFSetBaab.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetBaab.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalBaab = Mrok then
  begin
    DM_SEC.Do_With_Query(actOpen, qrBaabMast, 'SELECT * FROM SETBAAB WHERE BAABCOD =:0', [Searchset.KeyNo]);
  end;
end;

procedure TFSetBaab.SavBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัสแบบสินค้า');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_5', 'INSERT', qrBaabMastBAABCOD.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_5', 'EDIT', qrBaabMastBAABCOD.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  qrBaabMast.Post;
end;

procedure TFSetBaab.FormShow(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, qrBaabMast, 'SELECT * FROM SETBAAB WHERE BAABCOD =:0', ['']);
end;

procedure TFSetBaab.qrBaabMastAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if qrBaabMast.Active then
      if (qrBaabMast.ApplyUpdates = 0) then
        qrBaabMast.CommitUpdates
      else
        raise Exception.Create(qrBaabMast.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    qrBaaBMast.Edit;
    raise;
  end;
end;

procedure TFSetBaab.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(sfmain.Xuser_ID, 'HDSET02_5', 'DELETE', qrBaabMastBAABCOD.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        qrBaabMast.Delete;
      end;
  end;
end;

procedure TFSetBaab.qrBaabMastBeforeDelete(DataSet: TDataSet);
begin
  DM01.Findexist('INVMAST', 'BAAB', qrBaabMast.fieldbyname('BAABCOD').AsString);
  DM01.Findexist('INVTRAN', 'BAAB', qrBaabMast.fieldbyname('BAABCOD').AsString);
  DM01.Findexist('SVMAST', 'BAAB', qrBaabMast.fieldbyname('BAABCOD').AsString);
end;

procedure TFSetBaab.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET02_5');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

end.

