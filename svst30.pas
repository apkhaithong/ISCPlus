unit SvSt30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, Dbkbd, ImgList, ComCtrls,
  ToolWin, RzPanel, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TSvSt_30 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
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
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QSvtype: TFDQuery;
    QSvtypeTYPCOD: TStringField;
    QSvtypeTYPNAME: TStringField;
    QSvtypeTYPFLG: TStringField;
    QSvtypeSNCSET: TStringField;
    QSvtypeACCSV: TStringField;
    QSvtypeACCCL: TStringField;
    QSvtypeACCTC: TStringField;
    QSvtypeDEPT: TStringField;
    Query1: TFDQuery;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    procedure QSvtypeNewRecord(DataSet: TDataSet);
    procedure QSvtypeAfterPost(DataSet: TDataSet);
    procedure QSvtypeBeforePost(DataSet: TDataSet);
    procedure QSvtypeTYPCODValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvSt_30: TSvSt_30;

implementation

uses
  DmSvSet, Srchdlg1, usrCdlg1, USoftFirm, Dmsec;

{$R *.DFM}

procedure TSvSt_30.InsBtnClick(Sender: TObject);
begin
  with QSvtype do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVTYPE WHERE TYPCOD ='''' ');
    Open;
    Insert;
  end;
  DBEdit3.Properties.ReadOnly := False;
end;

procedure TSvSt_30.SaveBtnClick(Sender: TObject);
begin
  if DBEdit3.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัส');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET06_1', 'INSERT', QSvtypeTYPCOD.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET06_1', 'EDIT', QSvtypeTYPCOD.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  QSvtype.Post;
end;

procedure TSvSt_30.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TSvSt_30.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QSvtypeTYPCOD.AsString <> '');
 { Delbtn.Enabled  := (DataSource1.State in DsEditmodes)and
                     ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert)); }
  Enqbtn.Enabled := InsBtn.Visible;
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
        TcxDBTextEdit(Components[N]).Style.Color := clSilver;
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

  if Datasource1.DataSet.State = dsEdit then
    DBEdit3.Properties.ReadOnly := True;
end;

procedure TSvSt_30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  SvSt_30 := Nil;
end;

procedure TSvSt_30.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSVTYPE = Mrok then
  begin
    with QSvtype do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SVTYPE WHERE TYPCOD =:0');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
  end;
end;

procedure TSvSt_30.CancBtnClick(Sender: TObject);
begin
  if QSvtype.Active then
    QSvtype.Cancel;
end;

procedure TSvSt_30.DelBtnClick(Sender: TObject);
begin
  if DBEdit3.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET06_1', 'DELETE', QSvtypeTYPCOD.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QSvtype.Delete;
      end;
  end;
end;

procedure TSvSt_30.DBEdit3Exit(Sender: TObject);
begin
  if QSvtype.State = DsInsert then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SVTYPE WHERE TYPCOD = :XCODE ');
      Params[0].Asstring := QSvtype.FieldByname('TYPCOD').Asstring;
      Open;
    end;
    if not (Query1.EOF and Query1.BOF) then
      SFMain.RaiseException('มีรหัสประเภทการซ่อมทำนี้ในแฟ้มข้อมูลแล้ว');
  end;
end;

procedure TSvSt_30.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET06_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSvSt_30.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvSt_30.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_ESCAPE:
      CancBtnClick(Sender);
    Vk_F8:
      if DelBtn.Visible then
        DelBtnClick(Sender);
    Vk_F2:
      if SavBtn.Visible then
        SaveBtnClick(Sender);
    Vk_F5:
      if InsBtn.Visible then
        InsBtnClick(Sender);
  end;
end;

procedure TSvSt_30.FormShow(Sender: TObject);
begin
  with QSvtype do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVTYPE WHERE TYPCOD = '''' ');
    Open;
  end;
end;

procedure TSvSt_30.QSvtypeNewRecord(DataSet: TDataSet);
begin
  QSvtype.Fieldbyname('TypFlg').Asstring := 'Y';
end;

procedure TSvSt_30.QSvtypeAfterPost(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QSvtype.Active then
      if (QSvtype.ApplyUpdates = 0) then
        QSvtype.CommitUpdates
      else
        raise Exception.Create(QSvtype.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    QSvtype.EDIT;
    raise;
  end;
end;

procedure TSvSt_30.QSvtypeBeforePost(DataSet: TDataSet);
begin
  if QSvtype.Fieldbyname('TYPCOD').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสประเภทการซ่อมทำ');
end;

procedure TSvSt_30.QSvtypeTYPCODValidate(Sender: TField);
begin
  SFMain.Fieldexist('SVTYPE', 'TYPCOD', QSvtypeTYPCOD.AsString);
end;

end.

