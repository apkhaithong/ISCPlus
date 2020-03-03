unit Svst60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, DB, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, Dbkbd,
  ComCtrls, ToolWin, ImgList, RzPanel, RzDBGrid, RzDbkbd, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSvSt_60 = class(TForm)
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    DBGrid1: TRzDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    QModelmst: TFDQuery;
    dsModelmst: TDataSource;
    QCheckList: TFDQuery;
    Bevel1: TBevel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure InsBtnClick(Sender: TObject);
    procedure SpArClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancBtnClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QCheckListNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvSt_60: TSvSt_60;

implementation

uses
  DmSvSet, Srchdlg1, Dmsec, usrcdlg1, USoftFirm;
{$R *.DFM}

procedure TSvSt_60.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SavBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TSvSt_60.InsBtnClick(Sender: TObject);
begin
  if Dbedit1.Text = '' then
    SpArClick(Sender);
  with QCheckList do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CHECKLIS WHERE GCODE='''' ');
    Open;
    Insert;
  end;
end;

procedure TSvSt_60.SpArClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalGRPCKLIST = Mrok then
  begin
    with QModelmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPCKLIST WHERE GCODE =:0');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if QModelmst.Bof and QModelmst.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
  end;
end;

procedure TSvSt_60.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ที่จะลบรายการนี้', Mtconfirmation, [mbok, mbcancel], 0) = Mrok then
    QChecklist.Delete;
end;

procedure TSvSt_60.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Enabled := (DataSource1.State = Dsbrowse) and
    (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and
    (DBkbd1.AllowDelete);
  Enqbtn.Enabled := InsBtn.Enabled;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  CancBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  if Datasource1.DataSet.State = DsBrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TDBEdit) and (TDBEdit(Components[N]).Tag = 0) then
      begin
        TDBEdit(Components[N]).ReadOnly := True;
        TDBEdit(Components[N]).Color := clBtnFace;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := True;
        TRzDBGrid(Components[N]).Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TDBEdit) and (TDBEdit(Components[N]).Tag = 0) then
      begin
        TDBEdit(Components[N]).ReadOnly := False;
        TDBEdit(Components[N]).Color := clWhite;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := False;
        TRzDBGrid(Components[N]).Color := clWhite;
      end;
    end;
  end;
end;

procedure TSvSt_60.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_svset.Closeall;
  Action := Cafree;
  svst_60 := Nil;
end;

procedure TSvSt_60.CancBtnClick(Sender: TObject);
begin
  qChecklist.Cancel;
end;

procedure TSvSt_60.DBGrid1ColExit(Sender: TObject);
begin
  if (DbGrid1.SelectedField.FieldName = 'SVCODE') then
    if qChecklist.Fieldbyname('SVCODE').AsString = '' then
      SFMain.RaiseException('ยังไม่บันทึก รหัสระยะตรวจเช็ค');
end;

procedure TSvSt_60.EditBtnClick(Sender: TObject);
begin
  SpArClick(Sender);
  with QChecklist do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CHECKLIS WHERE GCODE=:0 ORDER BY GCODE,SVCODE');
    Params[0].Asstring := DBedit1.text;
    Open;
  end;
end;

procedure TSvSt_60.SavBtnClick(Sender: TObject);
begin
  qChecklist.First;
  Dm_SeC.HI_DBMS.StartTransaction;
  try
    if QChecklist.Active then
      if (QChecklist.ApplyUpdates = 0) then
        QChecklist.CommitUpdates
      else
        raise Exception.Create(QChecklist.RowError.Message);
    Dm_SeC.HI_DBMS.Commit;
  except
    Dm_SeC.HI_DBMS.Rollback;
    QChecklist.Edit;
  end;
  with QChecklist do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CHECKLIS WHERE GCODE=:0 ORDER BY GCODE,SVCODE');
    Params[0].Asstring := DBedit1.text;
    Open;
  end;
end;

procedure TSvSt_60.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvSt_60.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('', 'FILE06_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSvSt_60.FormShow(Sender: TObject);
begin
  with QModelmst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPCKLIST WHERE GCODE ='''' ');
    Open;
  end;
end;

procedure TSvSt_60.QCheckListNewRecord(DataSet: TDataSet);
begin
  if qChecklist.State = DsInsert then
  begin
    qChecklist.Fieldbyname('GCODE').asstring := QModelmst.Fieldbyname('GCODE').asstring;
    qChecklist.Fieldbyname('USERID').asstring := SFMain.Xuser_ID;
    qChecklist.Fieldbyname('INPDATE').AsDateTime := Now;
  end;
end;

end.

