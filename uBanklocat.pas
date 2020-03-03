unit uBanklocat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, Dbkbd, cxCheckBox, cxTextEdit,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxLabel, AdvGlowButton, AdvToolBar,
  AdvPanel, cxLookAndFeelPainters, cxGroupBox, cxGraphics, cxLookAndFeels,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  dxStatusBar;

type
  TfrBanklocat = class(TForm)
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    AdvPanel1: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    cxGroupBox1: TcxGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    AutoRun: TcxCheckBox;
    dxStatusBar1: TdxStatusBar;
    qrBanklocat: TFDQuery;
    qrBanklocatBANKLOCCOD: TStringField;
    qrBanklocatBANKLOCNAM: TStringField;
    qrBanklocatBANKLOCENG: TStringField;
    qrBanklocatBKADDR1: TStringField;
    qrBanklocatBKADDR2: TStringField;
    qrBanklocatMEMO1: TStringField;
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure qrBanklocatAfterPost(DataSet: TDataSet);
    procedure qrBanklocatAfterDelete(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure qrBanklocatBeforeDelete(DataSet: TDataSet);
    procedure qrBanklocatBANKLOCCODValidate(Sender: TField);
    procedure AutoRunPropertiesChange(Sender: TObject);
    procedure qrBanklocatAfterCancel(DataSet: TDataSet);
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
  private
    function RunDocno: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frBanklocat: TfrBanklocat;

implementation

uses
  USoftFirm, uFindData, Dmsec, Functn01;

{$R *.DFM}

function TfrBanklocat.RunDocno: string;
var
  H, L, R: string;
  I, C: Integer;
begin
  H := 'BKL-';
  with Dm_sec.Query1 do
  begin
    Close;
    Sql.Clear;
    SQl.Add('SELECT MAX(BANKLOCCOD) as Maxno FROM BANKLOCAT WHERE SUBSTR(BANKLOCCOD,1,3) = ''BKL'' ');
    Open;
    if not (Bof and Eof) then
    begin
      L := Copy(Dm_sec.Query1.Fieldbyname('Maxno').Asstring, 5, 4);
      Val(L, I, C);
      I := I + 1;
      R := Dm_sec.ZeroLead(Inttostr(I), 4);
      Result := H + R;
    end
    else
    begin
      R := Dm_sec.ZeroLead(Inttostr(1), 4);
      Result := H + R;
    end;
  end;
end;

procedure TfrBanklocat.DataSource1StateChange(Sender: TObject);
begin
  Do_Check_Object_Parent(cxGroupBox1, Datasource1.DataSet.State);
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (qrBanklocatBANKLOCCOD.AsString <> '');
  Editbtn.Enabled := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  AutoRun.Properties.ReadOnly := ((not SaveBtn.Visible) and (Datasource1.State = Dsbrowse));

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    cxDBTextEdit1.Properties.ReadOnly := True;
end;

procedure TfrBanklocat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frBanklocat := Nil;
  Action := caFree;
end;

procedure TfrBanklocat.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrBanklocat.InsBtnClick(Sender: TObject);
const
  SqlQuery = 'SELECT * FROM BANKLOCAT WHERE BANKLOCCOD =:0';
begin
  Dm_sec.Do_With_Query(actInsert, qrBanklocat, SqlQuery, ['']);
  cxDBTextEdit1.SetFocus;
  AutoRun.Checked := True;
end;

procedure TfrBanklocat.CancBtnClick(Sender: TObject);
begin
  qrBanklocat.Cancel;
end;

procedure TfrBanklocat.SaveBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    SFMain.RaiseException('*รหัสสาขาธนาคาร : ห้ามว่าง!');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET2_3', 'INSERT', qrBanklocatBANKLOCCOD.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET2_3', 'EDIT', qrBanklocatBANKLOCCOD.AsString);
  qrBanklocat.Post;
  AutoRun.Checked := False;
end;

procedure TfrBanklocat.qrBanklocatAfterPost(DataSet: TDataSet);
const
  SqlQuery = 'SELECT * FROM BANKLOCAT WHERE BANKLOCCOD =:X1';
var
  nKey: string;
begin
  nKey := qrBanklocat.fieldbyname('BANKLOCCOD').AsString;
  SFMain.Do_After_Post_Delete(qrBanklocat);
  Dm_sec.Do_With_Query(actOpen, qrBanklocat, SqlQuery, [nKey]);
end;

procedure TfrBanklocat.qrBanklocatAfterDelete(DataSet: TDataSet);
begin
  SFMain.Do_After_Post_Delete(qrBanklocat);
end;

procedure TfrBanklocat.DelBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET2_3', 'DELETE', qrBanklocatBANKLOCCOD.AsString);
        qrBanklocat.Delete;
        SFMain.Do_Cancel_Delete;
      end;
  end;
end;

procedure TfrBanklocat.FormShow(Sender: TObject);
const
  SqlQuery = 'SELECT * FROM BANKLOCAT WHERE BANKLOCCOD =:0';
begin
  Dm_sec.Do_With_Query(actOpen, qrBanklocat, SqlQuery, ['']);
end;

procedure TfrBanklocat.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
    EditBtnClick(Sender);
  if Key = VK_F2 then
    SaveBtnClick(Sender);
  if (Key = VK_F8) and (Delbtn.Visible = True) then
    DelBtnClick(Sender);
  if (Key = VK_F5) and (InsBtn.Visible = True) then
    InsBtnClick(Sender);
end;

procedure TfrBanklocat.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET2_3');
  DBkbd1.AllowInsert := SFMain.Insert_Right;
  DBkbd1.AllowEditing := SFMain.Edit_Right;
  DBkbd1.AllowDelete := SFMain.Del_Right;
end;

procedure TfrBanklocat.EditBtnClick(Sender: TObject);
const
  SqlQuery = 'SELECT * FROM BANKLOCAT WHERE BANKLOCCOD =:EDIT1';
begin
  Application.CreateForm(TfFindData, fFindData);
  if fFindData.ShowModalBanklocat = mrOK then
  begin
    Dm_sec.Do_With_Query(actOpen, qrBanklocat, SqlQuery, [fFindData.Keyno]);
  end;
end;

procedure TfrBanklocat.qrBanklocatBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('BANKBOOK', 'BANKLOCCOD', qrBanklocatBANKLOCCOD.AsString);
end;

procedure TfrBanklocat.qrBanklocatBANKLOCCODValidate(Sender: TField);
begin
  SFMain.Fieldexist('BANKLOCAT', 'BANKLOCCOD', qrbanklocatBANKLOCCOD.AsString);
end;

procedure TfrBanklocat.AutoRunPropertiesChange(Sender: TObject);
begin
  if Datasource1.DataSet.State = DsInsert then
  begin
    if AutoRun.Checked = True then
      qrBanklocatBANKLOCCOD.AsString := RunDocno
    else
      qrBanklocatBANKLOCCOD.AsString := '';
  end;
end;

procedure TfrBanklocat.qrBanklocatAfterCancel(DataSet: TDataSet);
begin
  if qrBanklocat.Active then
    qrBanklocat.CancelUpdates;
  AutoRun.Checked := False;
end;

procedure TfrBanklocat.cxDBTextEdit1PropertiesChange(Sender: TObject);
begin
  DelBtn.Visible := (cxDBTextEdit1.Text <> '') and (Datasource1.State = DsBrowse);
end;

end.

