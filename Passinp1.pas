unit Passinp1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Db, ComCtrls, ImgList, ToolWin,
  RzButton, RzRadChk, RzDBChk, RzPanel, RzSpnEdt, Menus, cxLookAndFeelPainters,
  cxGroupBox, cxRadioGroup, cxDBEdit, cxMaskEdit, cxButtonEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, AdvGlowButton, AdvToolBar, AdvPanel, RzDbkbd,
  cxGraphics, cxLookAndFeels, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar, cxButtons;

type
  TFpassinp1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    CopyBtn: TAdvGlowButton;
    DBRadioGroup1: TcxDBRadioGroup;
    Chk1: TRzDBCheckBox;
    Chk2: TRzDBCheckBox;
    Chk3: TRzDBCheckBox;
    Chk4: TRzDBCheckBox;
    Chk6: TRzDBCheckBox;
    Chk7: TRzDBCheckBox;
    Chk8: TRzDBCheckBox;
    Chk9: TRzDBCheckBox;
    Chk5: TRzDBCheckBox;
    EdtPswID: TcxDBTextEdit;
    DBEdit3: TDBEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit2: TcxDBButtonEdit;
    Chk10: TRzDBCheckBox;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    QPasswd: TFDQuery;
    QPasswdUSERID: TStringField;
    QPasswdPASSWD: TStringField;
    QPasswdCUSCOD: TStringField;
    QPasswdUSERNAME: TStringField;
    QPasswdLOCAT: TStringField;
    QPasswdDEPRT: TStringField;
    QPasswdLEVEL_1: TStringField;
    QPasswdEDITDISC: TStringField;
    QPasswdSRHACTV: TStringField;
    QPasswdEDITPRIC: TStringField;
    QPasswdEDITJOB: TStringField;
    QPasswdLASTUPDATE: TDateTimeField;
    QPasswdINPDATE: TDateTimeField;
    QPasswdCHGDATE: TStringField;
    QPasswdENDCODE: TStringField;
    QPasswdDESIGN: TStringField;
    QPasswdCHGLOC: TStringField;
    QPasswdCHKCOST: TStringField;
    QPasswdSTATUS: TStringField;
    QPasswdCHGGRADE: TStringField;
    QPasswdREPRINT: TStringField;
    QPasswdSHOWPRN: TStringField;
    QPasswdMAXDISTINT: TFloatField;
    QPasswdLOGIN: TStringField;
    QPasswdMAXDISC: TFloatField;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    Query2: TFDQuery;
    PopupMenu1: TPopupMenu;
    SeePass: TMenuItem;
    DBkbd1: TRzDBkbd;
    Query3: TFDQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    dxStatusBar1: TdxStatusBar;
    GroupBox1: TcxGroupBox;
    Label5: TLabel;
    Edit3: TcxButtonEdit;
    ProgressBar1: TProgressBar;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    procedure InsBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FldCombo2BtnClick(Sender: TObject);
    procedure FldCombo1BtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure QPasswdAfterPost(DataSet: TDataSet);
    procedure QPasswdAfterCancel(DataSet: TDataSet);
    procedure FldCombo1Change(Sender: TObject);
    procedure FldCombo2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QPasswdNewRecord(DataSet: TDataSet);
    procedure QPasswdBeforeDelete(DataSet: TDataSet);
    procedure QPasswdBeforePost(DataSet: TDataSet);
    procedure QPasswdUSERIDValidate(Sender: TField);
    procedure CopyBtnClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SeePassClick(Sender: TObject);
    procedure EdtPswIDPropertiesChange(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit2PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpassinp1: TFpassinp1;

implementation

uses
  Dmsec, USoftFirm, uFindData;
{$R *.DFM}

procedure TFpassinp1.InsBtnClick(Sender: TObject);
begin
  with Qpasswd do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SECRET WHERE USERID=:Edit ');
    Params[0].Asstring := '';
    Open;
    Insert;
  end;
end;

procedure TFpassinp1.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QPasswdUSERID.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((QPasswd.Fieldbyname('USERID').asstring <> '') and (QPasswd.FieldByName('CUSCOD').AsString <> ''));
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  CancBtn.Visible := SaveBtn.Visible;
  DBRadioGroup1.Properties.ReadOnly := (DataSource1.State = Dsbrowse);
  Chk1.ReadOnly := (DataSource1.State = Dsbrowse);
  Chk2.ReadOnly := (DataSource1.State = Dsbrowse);
  Chk3.ReadOnly := (DataSource1.State = Dsbrowse);
  Chk4.ReadOnly := (DataSource1.State = Dsbrowse);
  Chk5.ReadOnly := (DataSource1.State = Dsbrowse);
  Chk6.ReadOnly := (DataSource1.State = Dsbrowse);
  Chk7.ReadOnly := (DataSource1.State = Dsbrowse);
  Chk8.ReadOnly := (DataSource1.State = Dsbrowse);
  Chk9.ReadOnly := (DataSource1.State = Dsbrowse);
  Chk10.ReadOnly := (DataSource1.State = Dsbrowse);
  CopyBtn.Enabled := (DataSource1.State = Dsbrowse) and (QPasswd.Fieldbyname('USERID').asstring <> '');
  DBEdit3.ReadOnly := (not SaveBtn.Visible) and (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
        TcxDBButtonEdit(Components[n]).Style.Color := clBtnface;
      end;

      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnface;
      end;

      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag in [0, 1]) then
        TcxTextEdit(Components[n]).Style.Color := clBtnface;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
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
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
        TcxTextEdit(Components[n]).Style.Color := clWhite;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 1) then
        TcxTextEdit(Components[n]).Style.Color := $00DDDDFF;
    end;
  end;
  if (DataSource1.Dataset.State = DsEdit) then
  begin
    DBEdit3.ReadOnly := True;
    DM_SEC.Decode := QPasswd.Fieldbyname('ENDCODE').Asstring;
    DM_SEC.EndCode(DM_SEC.Decode, EdtPswID.Text, '1');
    Qpasswdpasswd.asstring := DM_SEC.Xtprd;
  end;
end;

procedure TFpassinp1.DelBtnClick(Sender: TObject);
begin
  if EdtPswID.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(sfmain.Xuser_ID, 'HDSET01_8', 'DELETE', QPasswdUSERID.AsString);
        QPasswd.Delete;
      end;
  end;
end;

procedure TFpassinp1.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalPasswd = Mrok then
  begin
    with Qpasswd do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SECRET WHERE USERID=:EDIT ');
      Params[0].Asstring := fFindData.keyno;
      Open;
    end;
  end;
end;

procedure TFpassinp1.FldCombo2BtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSfloct = Mrok then
  begin
    QPasswd.Fieldbyname('Locat').asstring := fFindData.Keyno;
  end;
end;

procedure TFpassinp1.FldCombo1BtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalsetOfficer = Mrok then
  begin
    QPasswd.Fieldbyname('Cuscod').asstring := fFindData.Keyno;
  end;
end;

procedure TFpassinp1.SaveBtnClick(Sender: TObject);
begin
  DBEdit2.SetFocus;
  if DBEdit3.Text = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสผ่าน');
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสพนักงาน');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_8', 'INSERT', QPasswdUSERID.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_8', 'EDIT', QPasswdUSERID.AsString);
  QPasswd.Post;
end;

procedure TFpassinp1.CancBtnClick(Sender: TObject);
begin
  DBEdit3.PasswordChar := 'l';
  DBEdit3.Font.Charset := 2;
  QPasswd.Cancel;
end;

procedure TFpassinp1.QPasswdAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QPasswd.Fieldbyname('Userid').asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QPasswd.Active then
      if (QPasswd.ApplyUpdates = 0) then
        QPasswd.CommitUpdates
      else
        raise Exception.Create(QPasswd.RowError.Message);
    if Dm_sec.qrRecent.Active then
      if (Dm_sec.qrRecent.ApplyUpdates = 0) then
        Dm_sec.qrRecent.CommitUpdates
      else
        raise Exception.Create(Dm_sec.qrRecent.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    QPasswd.Edit;
    raise;
  end;
  //
  with Qpasswd do
  begin
    Close;
    SQL.CLEAR;
    Sql.Add('SELECT * FROM SECRET WHERE USERID=:EDIT ');
    Params[0].Asstring := S;
    Open;
  end;
  //
  with Dm_sec.Query1 do
  begin
    Close;
    SQL.CLEAR;
    Sql.Add('SELECT USERID FROM MENUTRNDMS WHERE USERID=:EDIT ');
    Params[0].Asstring := S;
    Open;
  end;

  if Dm_sec.Query1.Bof and Dm_sec.Query1.Eof then
  begin
    with Dm_sec.Query1 do
    begin
      Close;
      SQL.CLEAR;
      if Qpasswd.FieldByName('LEVEL_1').AsString = '1' then
      begin
        Sql.Add('INSERT INTO MENUTRNDMS(USERID,SYSTEMCOD,MENUCODE,MENUDESC,PARENT,' +
          'M_ACCESS,M_EDIT,M_DELETE,M_INSERT)  ' +
          'SELECT A.USERID,B.SYSTEMCOD,B.MENUCODE,B.MENUDESC,B.PARENT,''T'', ' +
          ' ''T'',''T'',''T'' FROM SECRET A,MENUMSTDMS B WHERE A.USERID=:Edit');
      end
      else
      begin
        Sql.Add('INSERT INTO MENUTRNDMS(USERID,SYSTEMCOD,MENUCODE,MENUDESC,PARENT,' +
          'M_ACCESS,M_EDIT,M_DELETE,M_INSERT)  ' +
          'SELECT A.USERID,B.SYSTEMCOD,B.MENUCODE,B.MENUDESC,B.PARENT,''T'', ' +
          ' ''T'',''T'',''T'' FROM SECRET A,MENUMSTDMS B WHERE A.USERID=:Edit');
      end;
      Params[0].Asstring := S;
      ExecSql;
    end;
  end;
end;

procedure TFpassinp1.QPasswdAfterCancel(DataSet: TDataSet);
begin
  if QPasswd.Active then
    QPasswd.CancelUpdates;
end;

procedure TFpassinp1.FldCombo1Change(Sender: TObject);
begin
  with Dm_sec.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT ');
    Params[0].Asstring := QPasswd.Fieldbyname('CUSCOD').Asstring;
    Open;
    Edit1.Text := Dm_sec.Query1.Fieldbyname('NAME').asstring
  end;
end;

procedure TFpassinp1.FldCombo2Change(Sender: TObject);
begin
  with Dm_sec.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT ');
    Params[0].Asstring := QPasswd.Fieldbyname('Locat').Asstring;
    Open;
    Edit2.Text := Dm_sec.Query1.Fieldbyname('LOCATNM').asstring
  end;
end;

procedure TFpassinp1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET01_8');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  DBEdit3.PasswordChar := 'l';
  DBEdit3.Font.Charset := 2;
end;

procedure TFpassinp1.QPasswdNewRecord(DataSet: TDataSet);
begin
  QPasswd.Fieldbyname('LEVEL_1').asstring := '2';
  QPasswdCHKCOST.Asstring := 'N';
  QPasswdSRHACTV.Asstring := 'N';
  QPasswdEDITPRIC.Asstring := 'N';
  QPasswdEDITDISC.Asstring := 'N';
  QPasswdEDITJOB.Asstring := 'N';
  QPasswdDESIGN.AsString := 'N';
  QPasswdSTATUS.AsString := 'Y';
  QPasswdSHOWPRN.AsString := 'G';
  QPasswdINPDATE.AsDateTime := Now;
end;

procedure TFpassinp1.QPasswdBeforeDelete(DataSet: TDataSet);
begin
  with Dm_sec.Query1 do
  begin
    Close;
    SQL.CLEAR;
    Sql.Add('DELETE FROM MENUTRNDMS WHERE USERID=:EDIT ');
    Params[0].Asstring := QPasswd.Fieldbyname('USERID').asstring;
    ExecSql;
  end;
end;

procedure TFpassinp1.QPasswdBeforePost(DataSet: TDataSet);
begin
  if (QPasswd.State = Dsinsert) or (QPasswd.State = DsEdit) then
  begin
    QPasswd.Fieldbyname('USERNAME').Asstring := Edit1.Text;
    QPasswd.Fieldbyname('LASTUPDATE').AsDateTime := Now;
    DM_SEC.Decode := Qpasswdpasswd.asstring;
    DM_SEC.EndCode(DM_SEC.Decode, EdtPswID.Text, '0');
    QpasswdENDCODE.asstring := DM_SEC.Xtprd;
    Qpasswdpasswd.asstring := '@@@@@@@@';
  end;
end;

procedure TFpassinp1.QPasswdUSERIDValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT USERID FROM SECRET WHERE USERID=:EDIT1');
    Params[0].asstring := QPasswdUSERID.Asstring;
    Open;
    if not (bof and eof) then
      SFMain.RaiseException('User ID นี้มีแล้วในแฟ้มข้อมูล');
  end;
end;

procedure TFpassinp1.CopyBtnClick(Sender: TObject);
begin
  GroupBox1.Visible := True;
  Edit3.Setfocus;
//  Animate1.Visible := False;
end;

procedure TFpassinp1.BitBtn2Click(Sender: TObject);
begin
  GroupBox1.Visible := False;
end;

procedure TFpassinp1.BitBtn1Click(Sender: TObject);
var
  P: Integer;
begin
  if Edit3.Text = EdtPswID.Text then
    SFMain.RaiseException('Copy User ตัวเองไม่ได้');
  if Edit3.Text = '' then
    SFMain.RaiseException('คุณยังไม่เลือก User อื่น');
  ///
    //Animate1.Visible := True;
    //Animate1.Active := True;
  with Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM MENUTRNDMS WHERE USERID=:1');
    Params[0].asstring := Edit3.Text;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่มี User นี้');
  end;
  ProgressBar1.Max := Query2.RecordCount;
  P := 0;

  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('DELETE FROM MENUTRNDMS WHERE USERID=:1');
    Params[0].asstring := EdtPswID.Text;
    ExecSql;
  end;

  Query2.First;
  while not Query2.Eof do
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('INSERT INTO MENUTRNDMS(USERID,SYSTEMCOD,MENUCODE,MENUDESC,M_ACCESS,M_EDIT,M_DELETE,M_INSERT,PARENT) ' +
        'VALUES(:1,:2,:3,:4,:5,:6,:7,:8,:9)');
      Params[0].asstring := EdtPswID.Text;
      Params[1].asstring := Query2.Fieldbyname('SYSTEMCOD').Asstring;
      Params[2].asstring := Query2.Fieldbyname('MENUCODE').Asstring;
      Params[3].asstring := Query2.Fieldbyname('MENUDESC').Asstring;
      Params[4].asstring := Query2.Fieldbyname('M_ACCESS').Asstring;
      Params[5].asstring := Query2.Fieldbyname('M_EDIT').Asstring;
      Params[6].asstring := Query2.Fieldbyname('M_DELETE').Asstring;
      Params[7].asstring := Query2.Fieldbyname('M_INSERT').Asstring;
      Params[8].asstring := Query2.Fieldbyname('PARENT').Asstring;
      ExecSql;
    end;
    P := P + 1;
    ProgressBar1.Position := P;
    Query2.Next;
  end;
  ProgressBar1.Position := 0;
  GroupBox1.Visible := False;
end;

procedure TFpassinp1.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFpassinp1.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFpassinp1.SeePassClick(Sender: TObject);
begin
  if Datasource1.State = dsEdit then
  begin
    if DBEdit3.PasswordChar = 'l' then
    begin
      PopupMenu1.Items[0].Caption := 'Close...';
      DBEdit3.Font.Charset := 1;
      DBEdit3.PasswordChar := #0;
    end
    else
    begin
      PopupMenu1.Items[0].Caption := 'Secret code...';
      DBEdit3.Font.Charset := 2;
      DBEdit3.PasswordChar := 'l';
    end;
  end;
end;

procedure TFpassinp1.EdtPswIDPropertiesChange(Sender: TObject);
begin
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and (EdtPswID.text <> '');
end;

procedure TFpassinp1.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalsetOfficer = Mrok then
    QPasswd.Fieldbyname('Cuscod').asstring := fFindData.Keyno;
end;

procedure TFpassinp1.DBEdit1PropertiesChange(Sender: TObject);
begin
  with Dm_sec.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT ');
    Params[0].Asstring := QPasswd.Fieldbyname('CUSCOD').Asstring;
    Open;
    Edit1.Text := Dm_sec.Query1.Fieldbyname('NAME').asstring
  end;
end;

procedure TFpassinp1.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSfloct = Mrok then
    QPasswd.Fieldbyname('Locat').asstring := fFindData.Keyno;
end;

procedure TFpassinp1.DBEdit2PropertiesChange(Sender: TObject);
begin
  with Dm_sec.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT ');
    Params[0].Asstring := QPasswd.Fieldbyname('Locat').Asstring;
    Open;
    Edit2.Text := Dm_sec.Query1.Fieldbyname('LOCATNM').asstring
  end;
end;

procedure TFpassinp1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Fpassinp1 := nil;
end;

procedure TFpassinp1.FormShow(Sender: TObject);
begin
  with Qpasswd do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SECRET WHERE USERID=:Edit ');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TFpassinp1.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalPasswd = Mrok then
    Edit3.Text := fFindData.Keyno;
end;

end.

