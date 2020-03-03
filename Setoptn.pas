unit SetOptn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, DB, DBGrids, StdCtrls, Mask, Buttons, Dbkbd, ComCtrls,
  ToolWin, Grids, AdvOfficeStatusBar, AdvGlowButton, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit,
  cxDBEdit, AdvToolBar, AdvPanel, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  dxStatusBar;

type
  TSOptForm1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QOptmas: TFDQuery;
    QOptmasOPTCODE: TStringField;
    QOptmasOPTNAME: TStringField;
    QOptmasUNITPRC: TFloatField;
    QOptmasUNITCST: TFloatField;
    qrOptTran: TFDQuery;
    qrOptTranOPTCODE: TStringField;
    qrOptTranLOCAT: TStringField;
    qrOptTranOPTNAME: TStringField;
    qrOptTranUNITPRC: TFloatField;
    qrOptTranUNITCST: TFloatField;
    qrOptTranONHAND: TFloatField;
    DataSource2: TDataSource;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure CancBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure QOptmasAfterCancel(DataSet: TDataSet);
    procedure QOptmasAfterPost(DataSet: TDataSet);
    procedure QOptmasNewRecord(DataSet: TDataSet);
    procedure QOptmasBeforeDelete(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declaraUSoftFirmtions }
  public
    { Public declarations }
  end;

var
  SOptForm1: TSOptForm1;

implementation

uses
  Srchset1, USoftFirm, Dm1, Functn01, Dmsec;

{$R *.DFM}

procedure TSOptForm1.CancBtnClick(Sender: TObject);
begin
  QOptMas.Cancel;
end;

procedure TSOptForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  SOptForm1 := nil;
end;

procedure TSOptForm1.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit1.Text <> '');
  enqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clSilver;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
    end;
  end;
  if not (DataSource1.Dataset.State = Dsinsert) then
  begin
    DBEdit1.Properties.Readonly := True;
    DBEdit1.Style.Color := clSilver;
  end;
end;

procedure TSOptForm1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET02_7');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSOptForm1.InsBtnClick(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actInsert, QOptMas, 'SELECT * FROM HOPTMAST WHERE OPTCODE=:0', ['']);
end;

procedure TSOptForm1.SavBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสอุปกรณ์');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_7', 'INSERT', QOptmasOPTCODE.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_7', 'EDIT', QOptmasOPTCODE.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QOptMas.Post;
end;

procedure TSOptForm1.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalOptmas = Mrok then
  begin
    DM_SEC.Do_With_Query(actOpen, QOptMas, 'SELECT * FROM OPTMAST WHERE OPTCODE=:XOPTCODE', [SearchSet.Keyno]);
    with qrOptTran do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM OPTMAST WHERE OPTCODE =:OPTCODE');
      open;
    end;
  end;
end;

procedure TSOptForm1.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET02_7', 'DELETE', QOptmasOPTCODE.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QOptMas.Delete;
      end;
  end;
end;

procedure TSOptForm1.QOptmasAfterCancel(DataSet: TDataSet);
begin
  if QOptmas.Active then
    QOptmas.CancelUpdates;
end;

procedure TSOptForm1.QOptmasAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QOptmas.Active then
      if (QOptmas.ApplyUpdates = 0) then
        QOptmas.CommitUpdates
      else
        raise Exception.Create(QOptmas.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QOptmas.Edit;
    raise;
  end;
end;

procedure TSOptForm1.QOptmasNewRecord(DataSet: TDataSet);
begin
  ClearAsfloat(QOptMas);
end;

procedure TSOptForm1.QOptmasBeforeDelete(DataSet: TDataSet);
begin
  DM01.Findexist('ARINOPT', 'OPTCODE', QOptmas.fieldbyname('OPTCODE').AsString);
end;

procedure TSOptForm1.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSOptForm1.FormShow(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, QOptMas, 'SELECT * FROM HOPTMAST WHERE OPTCODE=:0', ['']);
end;

end.

