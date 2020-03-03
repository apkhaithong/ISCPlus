unit unSetDepart;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, ActnList, ComCtrls, ToolWin,
  AdvGlowButton, AdvToolBar, AdvPanel, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, RzDbkbd, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar, cxGroupBox;

type
  TFSetDepart = class(TForm)
    DataSource1: TDataSource;
    qrDepart: TFDQuery;
    qrDepartDIVICOD: TStringField;
    qrDepartDIVINAM: TStringField;
    DBkbd1: TRzDBkbd;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrDepartAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qrDepartDIVICODValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetDepart: TFSetDepart;

implementation

uses
  USoftFirm, Dmsec, uFindData;

{$R *.DFM}

procedure TFSetDepart.InsBtnClick(Sender: TObject);
begin
  with qrDepart do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM DIVISION WHERE DIVICOD =:0 ');
    Params[0].Asstring := '';
    open;
    Insert;
  end;
end;

procedure TFSetDepart.CancBtnClick(Sender: TObject);
begin
  qrDepart.cancel;
end;

procedure TFSetDepart.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag in [0, 1]) then
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
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 1) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := $00DDDDFF;
      end;
    end;
  end;

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    cxDBTextEdit1.Properties.ReadOnly := True;
end;

procedure TFSetDepart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FSetDepart := Nil;
end;

procedure TFSetDepart.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetDepart.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetDepmast = mrok then
  begin
    with qrDepart do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM DIVISION WHERE DIVICOD=:0');
      Params[0].Asstring := fFindData.KeyNo;
      Open;
    end;
  end;
end;

procedure TFSetDepart.SaveBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัส');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_4', 'INSERT', qrDepartDIVICOD.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_4', 'EDIT', qrDepartDIVICOD.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  qrDepart.Post;
end;

procedure TFSetDepart.FormShow(Sender: TObject);
begin
  with qrDepart do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM DIVISION WHERE DIVICOD=:0 ');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TFSetDepart.qrDepartAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrDepart.Active then
      if (qrDepart.ApplyUpdates = 0) then
        qrDepart.CommitUpdates
      else
        raise Exception.Create(qrDepart.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrDepart.Edit;
    raise;
  end;
end;

procedure TFSetDepart.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET01_4');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFSetDepart.qrDepartDIVICODValidate(Sender: TField);
begin
  sfmain.Fieldexist('DIVISION', 'DIVICOD', qrDepartDIVICOD.AsString);
end;

end.

