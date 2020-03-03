unit SvSt40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Dbkbd, ImgList, ComCtrls, ToolWin,
  RzPanel, RzSpnEdt, cxMemo, cxDBEdit, cxMaskEdit, cxButtonEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, AdvGlowButton, AdvToolBar, AdvPanel, ActnList,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  dxStatusBar;

type
  TSvSt_40 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit6: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    QModelmst: TFDQuery;
    QModelmstMODELCOD: TStringField;
    QModelmstMODELDES: TStringField;
    QModelmstROUNDKILO: TFloatField;
    QModelmstROUNDDAY: TIntegerField;
    QModelmstTEXT: TMemoField;
    QModelmstUSERID: TStringField;
    QModelmstINPDATE: TDateTimeField;
    QModelmstSUBMODEL: TStringField;
    QModelmstTYPECOD: TStringField;
    QModelmstMODELSV: TStringField;
    ActionList1: TActionList;
    actEditPrn: TAction;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QModelmstAfterPost(DataSet: TDataSet);
    procedure QModelmstAfterCancel(DataSet: TDataSet);
    procedure QModelmstBeforePost(DataSet: TDataSet);
    procedure QModelmstBeforeDelete(DataSet: TDataSet);
    procedure QModelmstNewRecord(DataSet: TDataSet);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QModelmstMODELCODValidate(Sender: TField);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvSt_40: TSvSt_40;

implementation

uses
  DmSvSet, usrcdlg, USoftFirm, Dmsec, ufinddata, unfrPreview;

{$R *.DFM}

procedure TSvSt_40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  svst_40 := Nil;
end;

procedure TSvSt_40.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDBMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end;
end;

procedure TSvSt_40.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QModelmstMODELCOD.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
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
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    DBEdit3.Properties.ReadOnly := True;
end;

procedure TSvSt_40.InsBtnClick(Sender: TObject);
begin
  with QModelmst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD ='''' ');
    Open;
    Insert;
  end;
  dbedit3.SetFocus;
end;

procedure TSvSt_40.SaveBtnClick(Sender: TObject);
begin
  if DBEdit3.Text = '' then
    SFMain.RaiseException('ยังไม่ได้ใส่รหัส');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_4', 'INSERT', QModelmstMODELCOD.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_4', 'EDIT', QModelmstMODELCOD.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QModelmst.Post;
end;

procedure TSvSt_40.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalModel = Mrok then
  begin
    with QModelmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD =:EDIT1');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if QModelmst.Bof and QModelmst.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
  end;
  DBEdit3.Properties.ReadOnly := True;
end;

procedure TSvSt_40.CancBtnClick(Sender: TObject);
begin
  if QModelmst.Active then
    QModelmst.Cancel;
end;

procedure TSvSt_40.DelBtnClick(Sender: TObject);
begin
  if DBEdit3.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT MDLCOD FROM SVMAST WHERE MDLCOD=:EDIT');
    Params[0].asstring := DBEdit3.Text;
    Open;
    if not (Bof and Eof) then
      SFMain.RaiseException('มีรหัสรุ่นในแฟ้มปรัวัติ ให้ใช้ปุ่มเปลี่ยนรหัสรุ่น');
  end;

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET02_4', 'DELETE', QModelmstMODELCOD.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QModelmst.Delete;
      end;
  end;
end;

procedure TSvSt_40.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET02_4');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSvSt_40.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvSt_40.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SaveBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TSvSt_40.QModelmstAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QModelmst.Active then
      if (QModelmst.ApplyUpdates = 0) then
        QModelmst.CommitUpdates
      else
        raise Exception.Create(QModelmst.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TSvSt_40.QModelmstAfterCancel(DataSet: TDataSet);
begin
  if QModelmst.Active then
    QModelmst.CancelUpdates;
  with QModelmst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD = :XCODE');
    PARAMS[0].ASSTRING := '';
    Open;
  end;
end;

procedure TSvSt_40.QModelmstBeforePost(DataSet: TDataSet);
begin
  if QModelmst.Fieldbyname('MODELCOD').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกประเภทการซ่อมทำ');
end;

procedure TSvSt_40.QModelmstBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('INVMAST', 'MODEL', QModelmstMODELCOD.AsString);
  SFMain.Findexist('SVMAST', 'MDLCOD', QModelmstMODELCOD.AsString);
end;

procedure TSvSt_40.QModelmstNewRecord(DataSet: TDataSet);
begin
  QModelMstUSERID.AsString := SFMain.Xuser_ID;
  QModelMstInpDate.AsDateTime := Now;
end;

procedure TSvSt_40.cxDBMemo1Click(Sender: TObject);
begin
  SvSt_40.KeyPreview := False;
end;

procedure TSvSt_40.cxDBMemo1Exit(Sender: TObject);
begin
  SvSt_40.KeyPreview := True;
end;

procedure TSvSt_40.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(Tffinddata, ffinddata);
  if ffinddata.ShowModalSetTYPE = Mrok then
    QModelMstTYPECOD.AsString := ffinddata.KeyNo;
end;

procedure TSvSt_40.QModelmstMODELCODValidate(Sender: TField);
begin
  sfmain.Fieldexist('SETMODEL', 'MODELCOD', QModelmstMODELCOD.AsString);
end;

procedure TSvSt_40.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PCODE' then
    ParValue := DBEdit3.Text + '%';
end;

procedure TSvSt_40.FormShow(Sender: TObject);
begin
  with QModelmst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD = '''' ');
    Open;
  end;
end;

end.

