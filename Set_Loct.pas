unit Set_Loct;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, AdvOfficeButtons,
  DBAdvOfficeButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  AdvGlowButton, AdvToolBar, AdvPanel, RzDbkbd, cxMaskEdit, cxButtonEdit,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, cxMemo,
  dxStatusBar, cxCheckBox;

type
  TSetLocat = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DBCheckBox1: TcxDBCheckBox;
    QLocat: TFDQuery;
    QLocatLOCATCD: TStringField;
    QLocatLOCATNM: TStringField;
    QLocatSHORTL: TStringField;
    QLocatLOCADDR1: TStringField;
    QLocatLOCADDR2: TStringField;
    QLocatTELP: TStringField;
    QLocatTAXID: TStringField;
    QLocatFLSALE: TStringField;
    QLocatCLOSEDT: TDateField;
    QLocatHOFFICE: TStringField;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    DBChkBranch: TcxDBCheckBox;
    Label5: TLabel;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label3: TLabel;
    QLocatFAX: TStringField;
    DBkbd1: TRzDBkbd;
    Label6: TLabel;
    QLocatLOCATNME: TStringField;
    Label8: TLabel;
    DBEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    DBMemo1: TcxDBMemo;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    QLocatMEMO1: TMemoField;
    procedure InsBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QLocatAfterDelete(DataSet: TDataSet);
    procedure QLocatAfterPost(DataSet: TDataSet);
    procedure QLocatBeforeDelete(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure QLocatLOCATCDValidate(Sender: TField);
    procedure QLocatSHORTLValidate(Sender: TField);
    procedure DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetLocat: TSetLocat;

implementation

uses
  USoftFirm, Dmsec, uFindData;

{$R *.DFM}

procedure TSetLocat.InsBtnClick(Sender: TObject);
begin
  with QLocat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD ='''' ');
    Open;
    Insert;
  end;
  DBEdit1.SetFocus;
end;

procedure TSetLocat.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  DBCheckBox1.Properties.ReadOnly := not SaveBtn.Enabled;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
        TcxDBButtonEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := True;
        TcxDBmemo(Components[n]).Style.Color := clBtnFace;
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
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := False;
        TcxDBmemo(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 1) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := False;
        TcxDBmemo(Components[n]).Style.Color := $00DDDDFF;
      end;
    end;
  end;

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    DBEdit1.Properties.ReadOnly := True;
end;

procedure TSetLocat.SaveBtnClick(Sender: TObject);
begin
  if QLocatSHORTL.AsString = '' then
    sfmain.RaiseException('ยังไม่กำหนดรหัสนำหน้าเอกสาร');
  if DBEdit1.Text = '' then
    sfmain.RaiseException('ยังไม่กำหนดรหัส/เลขที่อ้างอิง');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_3', 'INSERT', QLocatLOCATCD.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_3', 'EDIT', QLocatLOCATCD.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QLocat.Post;
end;

procedure TSetLocat.CancBtnClick(Sender: TObject);
begin
  QLocat.Cancel;
end;

procedure TSetLocat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SetLocat := Nil;
  Action := caFree;
end;

procedure TSetLocat.QLocatAfterDelete(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QLocat.Active then
      if (QLocat.ApplyUpdates = 0) then
        QLocat.CommitUpdates
      else
        raise Exception.Create(QLocat.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    QLocat.edit;
    raise;
  end;
end;

procedure TSetLocat.QLocatAfterPost(DataSet: TDataSet);
var
  l: string;
begin
  l := Qlocat.fieldbyname('LOCATCD').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QLocat.Active then
      if (QLocat.ApplyUpdates = 0) then
        QLocat.CommitUpdates
      else
        raise Exception.Create(QLocat.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QLocat.Edit;
    raise;
  end;
  //
  with QLocat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :Xlocat ');
    Params[0].Asstring := l;
    Open;
  end;
end;

procedure TSetLocat.QLocatBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('SECRET', 'LOCAT', Qlocat.fieldbyname('LOCATCD').AsString);
end;

procedure TSetLocat.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSetLocat.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSfloct = Mrok then
  begin
    with QLocat do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :0');
      Params[0].Asstring := fFindData.Keyno;
      Open;
    end;
  end;
end;

procedure TSetLocat.SavBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสสาขาก่อนบันทึก!');
  if DBEdit2.Text = '' then
    SFMain.RaiseException('กรุณาใส่ชื่อสาขาก่อนบันทึก!');
  QLocat.Post;
end;

procedure TSetLocat.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET01_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSetLocat.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TSetLocat.FormShow(Sender: TObject);
begin
  with QLocat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD ='''' ');
    Open;
  end;
end;

procedure TSetLocat.QLocatLOCATCDValidate(Sender: TField);
begin
  sfmain.Fieldexist('INVLOCAT', 'LOCATCD', QLocatLOCATCD.AsString);
end;

procedure TSetLocat.QLocatSHORTLValidate(Sender: TField);
begin
  sfmain.Fieldexist('INVLOCAT', 'SHORTL', QLocatSHORTL.AsString);
end;

procedure TSetLocat.DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetProv = Mrok then
  begin
    QLocat.FieldByName('PROVCOD').AsString := fFindData.Keyno;
  end;
end;

procedure TSetLocat.DBMemo1Click(Sender: TObject);
begin
  SetLocat.KeyPreview := False;
end;

procedure TSetLocat.DBMemo1Exit(Sender: TObject);
begin
  SetLocat.KeyPreview := True;
end;

end.

