unit unPartNoStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, DB, Dbkbd,
  ComCtrls, RzPanel, ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrPartNoStock = class(TForm)
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    Bevel1: TBevel;
    QNonInv: TFDQuery;
    Query1: TFDQuery;
    Label5: TLabel;
    Label6: TLabel;
    ToolBar1: TToolBar;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    ToolButton1: TToolButton;
    CloseBtn: TToolButton;
    RzStatusBar1: TRzStatusBar;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    procedure InsBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QNonInvAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPartNoStock: TfrPartNoStock;

implementation

uses
  DmPo, uFindPO, Dmsec, USoftFirm;

{$R *.DFM}

procedure TfrPartNoStock.InsBtnClick(Sender: TObject);
begin
  with QNonInv do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM NINVMAST WHERE PARTNO =:0 ');
    Params[0].Asstring := '';
    open;
    Insert;
  end;
end;

procedure TfrPartNoStock.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalNParts = Mrok then
    with QNonInv do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM NINVMAST WHERE PARTNO =:0');
      Params[0].Asstring := fFindPO.KeyNo;
      Open;
    end;
end;

procedure TfrPartNoStock.SaveBtnClick(Sender: TObject);
begin
  QNonInv.Post;
end;

procedure TfrPartNoStock.DelBtnClick(Sender: TObject);
begin

  if MessageDlg('แน่ใจหรือไม่ที่จะยกเลิก', MtConfirMation, [MbOk, MbCancel], 0) = MrOk then
  begin

    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('select PARTNO From NPO_TRANS WHERE PARTNO =:0');
      Params[0].asstring := QNonInv.fieldbyname('PARTNO').asstring;
      open;
    end;

    if Query1.fieldbyname('PARTNO').asstring <> '' then
      SFMain.RaiseException('รหัสที่ระบุได้มีการอ้างอิงถึงจากแฟ้มอื่นไม่สามารถลบได้');

    QNonInv.Delete;
    if QNonInv.Active then
      if (QNonInv.ApplyUpdates = 0) then
        QNonInv.CommitUpdates
      else
        raise Exception.Create(QNonInv.RowError.Message);
  end;
end;

procedure TfrPartNoStock.CancBtnClick(Sender: TObject);
begin
  if QNonInv.Active then
    QNonInv.cancel;
end;

procedure TfrPartNoStock.DataSource1StateChange(Sender: TObject);
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
        TDBedit(Components[n]).Color := clBtnface;
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
        TDBedit(Components[n]).Color := clWhite;
      end;
    end;
  end;
  DBEdit2.Readonly := not (DataSource1.Dataset.State = Dsinsert);
  DBEdit4.Readonly := True;
  DBEdit4.Color := clBtnface;
end;

procedure TfrPartNoStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrPartNoStock.FormCreate(Sender: TObject);
begin
  with QNonInv do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM NINVMAST WHERE PARTNO =:EDIT1 ');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TfrPartNoStock.QNonInvAfterPost(DataSet: TDataSet);
var
  ARC: string;
begin
  ARC := QNonInv.fieldbyname('PARTNO').asstring;

  if DM_SEC.HI_DBMS.InTransaction then
    DM_SEC.HI_DBMS.Commit;

  try
    DM_SEC.HI_DBMS.StartTransaction;
  except
    DM_SEC.HI_DBMS.Connected := TRUE;
    DM_SEC.HI_DBMS.Open;
  end;

  try
    if QNonInv.Active then
      if (QNonInv.ApplyUpdates = 0) then
        QNonInv.CommitUpdates
      else
        raise Exception.Create(QNonInv.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QNonInv.Edit;
  end;
  with QNonInv do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM NINVMAST WHERE PARTNO =:EDIT1 ');
    Params[0].Asstring := ARC;
    open;
  end;
end;

procedure TfrPartNoStock.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) and (Enqbtn.Enabled) then
    EnqBtn.Click;
end;

procedure TfrPartNoStock.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

end.

