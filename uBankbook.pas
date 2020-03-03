unit uBankbook;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, Dbkbd, cxGraphics, cxMemo,
  cxDBEdit, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, AdvGlowButton, AdvToolBar, AdvPanel,
  cxLookAndFeelPainters, cxGroupBox, cxLookAndFeels, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, cxCalc,
  dxStatusBar;

type
  TfrBankbook = class(TForm)
    Query1: TFDQuery;
    DataSource1: TDataSource;
    qrBankbook: TFDQuery;
    qrBankbookBANKBOOKCOD: TStringField;
    qrBankbookBANKCOD: TStringField;
    qrBankbookBANKLOCCOD: TStringField;
    qrBankbookBOOKTYPCOD: TStringField;
    qrBankbookBOOKNO: TStringField;
    qrBankbookBOOKNAM: TStringField;
    qrBankbookBOOKENG: TStringField;
    qrBankbookMEMO1: TMemoField;
    qrBankbookACCMSTCOD: TStringField;
    qrBankbookBEGINNING: TFloatField;
    DBkbd1: TDBkbd;
    qrHelp1: TFDQuery;
    qrHelp1BANKCOD: TStringField;
    qrHelp1BANKNAM: TStringField;
    DataSource3: TDataSource;
    qrHelp2: TFDQuery;
    qrHelp2BANKLOCCOD: TStringField;
    qrHelp2BANKLOCNAM: TStringField;
    DataSource2: TDataSource;
    qrHelp3: TFDQuery;
    qrHelp3BOOKTYPCOD: TStringField;
    qrHelp3BOOKTYPNAM: TStringField;
    DataSource4: TDataSource;
    AdvPanel1: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    cxGroupBox1: TcxGroupBox;
    Label7: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxTextEdit2: TcxTextEdit;
    AutoRun: TcxCheckBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Lookup1: TcxDBLookupComboBox;
    Lookup2: TcxDBLookupComboBox;
    Lookup3: TcxDBLookupComboBox;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    AGBInsert: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxDBCalcEdit1: TcxDBCalcEdit;
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure qrBankbookAfterPost(DataSet: TDataSet);
    procedure qrBankbookAfterDelete(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure qrBankbookBANKCODValidate(Sender: TField);
    procedure qrBankbookBANKLOCCODValidate(Sender: TField);
    procedure qrBankbookBOOKTYPCODValidate(Sender: TField);
    procedure qrBankbookBANKBOOKCODValidate(Sender: TField);
    procedure qrBankbookACCMSTCODValidate(Sender: TField);
    procedure qrBankbookBOOKNOValidate(Sender: TField);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesChange(Sender: TObject);
    procedure AutoRunPropertiesChange(Sender: TObject);
    procedure qrBankbookAfterCancel(DataSet: TDataSet);
    procedure Lookup1PropertiesInitPopup(Sender: TObject);
    procedure Lookup2PropertiesInitPopup(Sender: TObject);
    procedure Lookup3PropertiesInitPopup(Sender: TObject);
    procedure AGBInsertClick(Sender: TObject);
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
  private
    Function RunDocno:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frBankbook: TfrBankbook;

implementation

uses USoftFirm,uFindData,Dmsec,Functn01,uBanklocat;

{$R *.DFM}
Function TfrBankbook.RunDocno:String;
Var H,L,R:String;
    I,C :Integer;
begin
     H  := 'BBM-';
     With Dm_sec.Query1 Do
     Begin
       Close;
       Sql.Clear;
       SQl.Add('SELECT MAX(BANKBOOKCOD) as Maxno FROM BANKBOOK WHERE SUBSTR(BANKBOOKCOD,1,3) = ''BBM'' ');
       Open;
       If Not(Bof and Eof) Then
       Begin
         L := Copy(Dm_sec.Query1.Fieldbyname('Maxno').Asstring,5,4);
         Val(L,I,C);
         I:=I+1;
         R := Dm_sec.ZeroLead(Inttostr(I),4);
         Result := H+R;
       End
       else
       begin
         R := Dm_sec.ZeroLead(Inttostr(1),4);
         Result := H+R;
       end;
     End;
end;


procedure TfrBankbook.DataSource1StateChange(Sender: TObject);
begin
  Do_Check_Object_Parent(cxGroupBox1,Datasource1.DataSet.State);
  InsBtn.Visible         := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Visible         := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete) and (qrBankbookBANKBOOKCOD.AsString <> '');
  editBtn.Visible        := DataSource1.State=Dsbrowse;
  CloseBtn.Enabled       := (DataSource1.State=Dsbrowse);
  SaveBtn.Visible        := (DataSource1.State in DsEditmodes)and
                            ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  CancBtn.Visible        := SaveBtn.Visible;
  AutoRun.Properties.ReadOnly := ((Not SaveBtn.Visible) and (Datasource1.State=Dsbrowse));
  AGBInsert.Visible      := SaveBtn.Visible;

  if (DataSource1.Dataset.State = DsEdit) Then
      cxDBTextEdit1.Properties.ReadOnly     := True;
end;

procedure TfrBankbook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrHelp1.Close;
  qrHelp2.Close;
  qrHelp3.Close;
  frBankbook := Nil;
  Action :=caFree;
end;

procedure TfrBankbook.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrBankbook.InsBtnClick(Sender: TObject);
Const
  SqlQuery = 'SELECT * FROM BANKBOOK WHERE BANKBOOKCOD =:0';
begin
  Dm_sec.Do_With_Query(actInsert,qrBankbook,SqlQuery,['']);
  cxDBTextEdit1.SetFocus;
  AutoRun.Checked := True;
end;

procedure TfrBankbook.CancBtnClick(Sender: TObject);
begin
   qrBankbook.Cancel;
end;

procedure TfrBankbook.SaveBtnClick(Sender: TObject);
Const
  SqlQuery = 'SELECT * FROM ACCMST WHERE ACCMSTCOD =:0';
begin
   if cxDBTextEdit1.Text = '' then
      SFMain.RaiseException('*รหัสแฟ้ม : ห้ามว่าง!');
   if Lookup1.Text = '' then
   SFMain.RaiseException('*ชื่อธนาคาร : ห้ามว่าง!');
   if Lookup2.Text = '' then
   SFMain.RaiseException('*สาขาธนาคาร : ห้ามว่าง!');
   if Lookup3.Text = '' then
   SFMain.RaiseException('*ประเภทบัญชี : ห้ามว่าง!');
   if cxDBTextEdit2.Text = '' then
   SFMain.RaiseException('*บัญชีเลขที่ : ห้ามว่าง!');

   Dm_sec.Do_With_Query(actOpen,query1,SqlQuery,[qrBankbookACCMSTCOD.AsString]);
     if query1.FieldByName('ACCFLAG').AsString = 'Y' then
     SFMain.RaiseException('เป็นรหัสบัญชีคุม !');

   if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDSET04_3','INSERT',qrBankbookBANKBOOKCOD.AsString) else
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDSET04_3','EDIT',qrBankbookBANKBOOKCOD.AsString);
   qrBankbook.Post;
   AutoRun.Checked := False;
end;

procedure TfrBankbook.qrBankbookAfterPost(DataSet: TDataSet);
Const
  SqlQuery = 'SELECT * FROM BANKBOOK WHERE BANKBOOKCOD =:X1';
Var nKey : String;
begin
  nKey := qrBankbook.fieldbyname('BANKBOOKCOD').AsString;
  SFMain.Do_After_Post_Delete(qrBankbook);
  Dm_sec.Do_With_Query(actOpen,qrBankbook,SqlQuery,[nKey]);
end;

procedure TfrBankbook.qrBankbookAfterDelete(DataSet: TDataSet);
begin
  SFMain.Do_After_Post_Delete(qrBankbook);
end;

procedure TfrBankbook.DelBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' Then
  SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk :
    begin
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDSET04_3','DELETE',qrBankbookBANKBOOKCOD.AsString);
      qrBankbook.Delete;
      SFMain.Do_Cancel_Delete;
    end;
  end;  
end;

procedure TfrBankbook.FormShow(Sender: TObject);
Const
  SqlQuery = 'SELECT * FROM BANKBOOK WHERE BANKBOOKCOD =:0';
begin
  Dm_sec.Do_With_Query(actOpen,qrBankbook,SqlQuery,['']);
  qrHelp1.Open;
  qrHelp2.Open;
  qrHelp3.Open;
end;

procedure TfrBankbook.DBkbd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F3 then
      EditBtnClick(Sender);
   if Key = VK_F2 then
      SaveBtnClick(Sender);
   if (Key = VK_F8) and (Delbtn.Visible= True) then
      DelBtnClick(Sender);
   if (Key = VK_F5) and (InsBtn.Visible= True) then
      InsBtnClick(Sender);
end;

procedure TfrBankbook.FormCreate(Sender: TObject);
begin
    SFMain.Check_right('HDSET','HDSET04_3');
    DBkbd1.AllowInsert := SFMain.Insert_Right;
    DBkbd1.AllowEditing := SFMain.Edit_Right;
    DBkbd1.AllowDelete := SFMain.Del_Right;
end;

procedure TfrBankbook.EditBtnClick(Sender: TObject);
Const
  SqlQuery = 'SELECT * FROM BANKBOOK WHERE BANKBOOKCOD =:EDIT1';
begin
  Application.CreateForm(TfFindData,fFindData);
  if fFindData.ShowModalBooK = mrOK then
  begin
    Dm_sec.Do_With_Query(actOpen,qrBankbook,SqlQuery,[fFindData.Keyno]);
  end;
end;

procedure TfrBankbook.qrBankbookBANKCODValidate(Sender: TField);
begin
  SFMain.FindNoExist('SETBANK','BANKCOD',qrBankbookBANKCOD.AsString);
end;

procedure TfrBankbook.qrBankbookBANKLOCCODValidate(Sender: TField);
begin
  SFMain.FindNoExist('BANKLOCAT','BANKLOCCOD',qrBankbookBANKLOCCOD.AsString);
end;

procedure TfrBankbook.qrBankbookBOOKTYPCODValidate(Sender: TField);
begin
  SFMain.FindNoExist('BKBOOKTYPE','BOOKTYPCOD',qrBankbook.fieldbyname('BOOKTYPCOD').AsString);
end;

procedure TfrBankbook.qrBankbookBANKBOOKCODValidate(Sender: TField);
begin
  SFMain.Fieldexist('BANKBOOK','BANKBOOKCOD',qrBankbookBANKBOOKCOD.AsString);
end;

procedure TfrBankbook.qrBankbookACCMSTCODValidate(Sender: TField);
begin
  SFMain.Findnoexist('ACCMST','ACCMSTCOD',qrBankbookACCMSTCOD.AsString);
end;

procedure TfrBankbook.qrBankbookBOOKNOValidate(Sender: TField);
begin
  SFMain.Fieldexist('BANKBOOK','BOOKNO',qrBankbookBOOKNO.AsString);
end;

procedure TfrBankbook.cxDBMemo1Click(Sender: TObject);
begin
  frBankbook.KeyPreview := False;
end;

procedure TfrBankbook.cxDBMemo1Exit(Sender: TObject);
begin
  frBankbook.KeyPreview := True;
end;

procedure TfrBankbook.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if Datasource1.DataSet.State in DsEditmodes then
  begin
    Application.CreateForm(TfFindData,fFindData);
    If fFindData.ShowModalAccmst = mrOK Then
    qrBankbookACCMSTCOD.AsString := fFindData.Keyno;  
  end;
end;

procedure TfrBankbook.cxDBButtonEdit3PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := SFMain.FindShowDesc('ACCMST','ACCMSTNAM','ACCMSTCOD',cxDBButtonEdit3.Text);
end;

procedure TfrBankbook.AutoRunPropertiesChange(Sender: TObject);
begin
  if Datasource1.DataSet.State = DsInsert then
  begin
    if AutoRun.Checked = True then
      qrBankbookBANKBOOKCOD.AsString := RunDocno else
      qrBankbookBANKBOOKCOD.AsString := '';
  end;
end;

procedure TfrBankbook.qrBankbookAfterCancel(DataSet: TDataSet);
begin
  if qrBankbook.Active then qrBankbook.CancelUpdates;
  AutoRun.Checked := False;
end;

procedure TfrBankbook.Lookup1PropertiesInitPopup(Sender: TObject);
begin
  qrHelp1.Close;
  qrHelp1.Open;
end;

procedure TfrBankbook.Lookup2PropertiesInitPopup(Sender: TObject);
begin
  qrHelp2.Close;
  qrHelp2.Open;
end;

procedure TfrBankbook.Lookup3PropertiesInitPopup(Sender: TObject);
begin
  qrHelp3.Close;
  qrHelp3.Open;
end;

procedure TfrBankbook.AGBInsertClick(Sender: TObject);
begin
  if Not Assigned(frBanklocat) then
  frBanklocat := TfrBanklocat.Create(Application);
  frBanklocat.Show;
  frBanklocat.InsBtnClick(Sender);
end;

procedure TfrBankbook.cxDBTextEdit1PropertiesChange(Sender: TObject);
begin
  DelBtn.Visible := (cxDBTextEdit1.Text <> '') and (Datasource1.State = DsBrowse);
end;

end.
