unit unSetOfficer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, ImgList, ComCtrls, ToolWin,
  ActnList, cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxDBEdit, cxDropDownEdit, cxCalendar, AdvGlowButton, AdvToolBar,
  AdvPanel, AdvOfficeButtons, DBAdvOfficeButtons, RzDbkbd, cxCurrencyEdit,
  cxLookAndFeelPainters, cxGroupBox, cxRadioGroup, cxLookAndFeels,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Dbkbd,
  BusinessSkinForm, dxStatusBar;

type
  TFSetOfficer = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    DBAdvOfficeCheckBox1: TDBAdvOfficeCheckBox;
    DBEdit1: TcxDBTextEdit;
    DBEdit25: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    DBEdit7: TcxDBButtonEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit8: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    qrOfficer: TFDQuery;
    qrOfficerCODE: TStringField;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    DBkbd1: TDBkbd;
    qrOfficerNAME: TStringField;
    qrOfficerADDR: TStringField;
    qrOfficerTELP: TStringField;
    qrOfficerLOCAT: TStringField;
    qrOfficerDEPCODE: TStringField;
    qrOfficerPOSITION: TStringField;
    qrOfficerBEGINDATE: TDateField;
    qrOfficerENDDATE: TDateField;
    qrOfficerSTATUS: TStringField;
    qrOfficerEMAIL: TStringField;
    qrOfficerNAMEENG: TStringField;
    qrOfficerMEMO1: TMemoField;
    qrOfficerFLAGOFF: TStringField;
    qrOfficerDIVISION: TStringField;
    qrOfficerSTRAID: TStringField;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrOfficerAfterPost(DataSet: TDataSet);
    procedure qrOfficerBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qrOfficerCODEValidate(Sender: TField);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesChange(Sender: TObject);
    procedure qrOfficerAfterDelete(DataSet: TDataSet);
    procedure qrOfficerNewRecord(DataSet: TDataSet);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure qrOfficerBeforePost(DataSet: TDataSet);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetOfficer: TFSetOfficer;

implementation

uses
  USoftFirm, Dmsec, uFindData, unfrPreview;

{$R *.DFM}

procedure TFSetOfficer.InsBtnClick(Sender: TObject);
begin
  with qrOfficer do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM OFFICER WHERE CODE =:0 ');
    Params[0].Asstring := '';
    open;
    Insert;
  end;
  DBEdit1.SetFocus;
end;

procedure TFSetOfficer.CancBtnClick(Sender: TObject);
begin
  qrOfficer.cancel;
end;

procedure TFSetOfficer.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  DBAdvOfficeCheckBox1.ReadOnly := not SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBCurrencyEdit) and (TcxDBCurrencyEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBCurrencyEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBCurrencyEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
        TcxDBButtonEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBDateEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clBtnface;
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
      if (Components[n] is TcxDBCurrencyEdit) and (TcxDBCurrencyEdit(Components[n]).Tag = 0) then
      begin
        TcxDBCurrencyEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBCurrencyEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBCurrencyEdit) and (TcxDBCurrencyEdit(Components[n]).Tag = 1) then
      begin
        TcxDBCurrencyEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBCurrencyEdit(Components[n]).Style.Color := $00DDDDFF;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
        TcxDBButtonEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 1) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
        TcxDBButtonEdit(Components[n]).Style.Color := $00DDDDFF;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 1) then
      begin
        TcxDBDateEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBDateEdit(Components[n]).Style.Color := $00DDDDFF;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 1) then
      begin
        TcxTextEdit(Components[n]).Style.Color := $00DDDDFF;
      end;
    end;
  end;

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    DBEdit1.Properties.ReadOnly := True;
end;

procedure TFSetOfficer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FSetOfficer := Nil;
end;

procedure TFSetOfficer.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetOfficer.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalsetOfficer = Mrok then
  begin
    with qrOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OFFICER WHERE CODE=:0');
      Params[0].Asstring := fFindData.KeyNo;
      Open;
    end;
  end;
end;

procedure TFSetOfficer.SaveBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัส');
  if DBEdit7.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัสสาขา');
  if DBEdit5.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัสแผนก');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_5', 'INSERT', qrOfficerCODE.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_5', 'EDIT', qrOfficerCODE.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  qrOfficer.Post;
end;

procedure TFSetOfficer.FormShow(Sender: TObject);
begin
  with qrOfficer do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM OFFICER WHERE CODE =:0 ');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TFSetOfficer.qrOfficerAfterPost(DataSet: TDataSet);
var
  nKey: string;
begin
  nKey := qrOfficer.fieldbyname('CODE').AsString;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrOfficer.Active then
      if (qrOfficer.ApplyUpdates = 0) then
        qrOfficer.CommitUpdates
      else
        raise Exception.Create(qrOfficer.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrOfficer.Edit;
    raise;
  end;
  Dm_sec.Do_With_Query(actOpen, qrOfficer, 'SELECT * FROM OFFICER WHERE CODE =:X1', [nKey]);
end;

procedure TFSetOfficer.qrOfficerBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('SECRET', 'CUSCOD', qrOfficer.fieldbyname('CODE').AsString);
  SFMain.Findexist('INVTRAN', 'RVCODE', qrOfficer.fieldbyname('CODE').AsString);
  SFMain.Findexist('ENGINEER', 'ENCODE', qrOfficer.fieldbyname('CODE').AsString);
end;

procedure TFSetOfficer.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET01_5');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFSetOfficer.qrOfficerCODEValidate(Sender: TField);
begin
  sfmain.Fieldexist('OFFICER', 'CODE', qrOfficerCODE.AsString);
end;

procedure TFSetOfficer.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSfloct = Mrok then
    qrOfficer.FieldByName('LOCAT').AsString := fFindData.Keyno;
end;

procedure TFSetOfficer.DBEdit7PropertiesChange(Sender: TObject);
begin
  Edit2.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DbEdit7.Text)
end;

procedure TFSetOfficer.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetDepmast = Mrok then
    qrOfficer.FieldByName('DIVISION').AsString := fFindData.Keyno;
end;

procedure TFSetOfficer.DBEdit5PropertiesChange(Sender: TObject);
begin
  Edit1.Text := SFMain.FindShowDesc('DIVISION', 'DIVINAM', 'DIVICOD', DbEdit5.Text)
end;

procedure TFSetOfficer.qrOfficerAfterDelete(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrOfficer.Active then
      if (qrOfficer.ApplyUpdates = 0) then
        qrOfficer.CommitUpdates
      else
        raise Exception.Create(qrOfficer.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrOfficer.Edit;
    raise;
  end;
end;

procedure TFSetOfficer.qrOfficerNewRecord(DataSet: TDataSet);
begin
  qrOfficerLOCAT.AsString := sfmain.Xlocat;
  qrOfficerSTATUS.AsString := 'T';
  qrOfficerFLAGOFF.AsString := 'N';
end;

procedure TFSetOfficer.PrnBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(SFMain.frPath+'\FR\fr_OFFICER.fr3');
//  frReport1.Preview := frCustPrev.frPreview1;
//  if frReport1.PrepareReport then
//  Begin
//    frReport1.ShowPreparedReport;
//    frCustPrev.ShowModal;
//  end;
end;

procedure TFSetOfficer.actEditPrnExecute(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath+'\FR\fr_OFFICER.fr3');
//  frREport1.DesignReport;
end;

procedure TFSetOfficer.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PCODE' then
    ParValue := DBEdit1.Text + '%';
end;

procedure TFSetOfficer.qrOfficerBeforePost(DataSet: TDataSet);
begin
  qrOfficerDEPCODE.AsString := qrOfficerDIVISION.AsString;
end;

procedure TFSetOfficer.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F2:
      SaveBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

end.

