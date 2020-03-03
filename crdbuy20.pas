unit CrdBuy20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Dbkbd, Db, ComCtrls, ToolWin,
  ImgList, AdvGlowButton, AdvOfficeStatusBar, RzSpnEdt, AdvToolBar, cxTextEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxButtonEdit, RzBorder, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, BusinessSkinForm, dxStatusBar;

type
  TFCredBuy2 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label19: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    FldCombo2: TcxDBButtonEdit;
    FldCombo3: TcxDBButtonEdit;
    FldCombo5: TcxDBButtonEdit;
    FldEdit1: TcxDBTextEdit;
    wwDBCrDate: TcxDBDateEdit;
    FldEdit2: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    FldCombo1: TcxDBButtonEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FldCombo1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure FindRefNo;
    procedure Del_CrdBuy2;
  public
    { Public declarations }
  end;

var
  FCredBuy2: TFCredBuy2;
  S: string;

implementation

uses
  Dm1, DmTax, SrchTax1, Srchset1, USoftFirm, Dmsec;

{$R *.DFM}

procedure TFCredBuy2.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDTAX', 'HDTAX02_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFCredBuy2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Tax.QCredBuy2.Close;
  Dm_Tax.QTaxBuy2.Close;
  Dm_tax.QCrByInvT2.Close;
  Dm01.QLastno.Close;
  Action := Cafree;
  FCredBuy2 := nil;
end;

procedure TFCredBuy2.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (FldEdit1.Text <> '');
  EnqBtn.Visible := InsBtn.Visible;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
      end;
    end;
  end;

  if DataSource1.State = DsEdit then
  begin
    FldCombo1.Enabled := False;
    FldCombo2.Enabled := False;
    FldCombo3.Enabled := False;
    wwDBCrDate.Enabled := False;
    FldEdit1.Enabled := False;
  end
  else if (DataSource1.State = DsInsert) then
  begin
    FldCombo1.Enabled := True;
    FldCombo2.Enabled := True;
    FldCombo3.Enabled := True;
    wwDBCrDate.Enabled := True;
    FldEdit1.Enabled := True;
  end;
  if Dm_Tax.QCredBuy2.fieldbyname('FLAG').Asstring = 'C' then
  begin
    Label19.Visible := True;
    FldEdit1.Style.Color := clBtnFace;
    Delbtn.Visible := False;
  end
  else
  begin
    Label19.Visible := False;
    FldEdit1.Style.Color := ClWhite;
    delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (FldEdit1.Text <> '');
  end;
end;

procedure TFCredBuy2.InsBtnClick(Sender: TObject);
begin
  if not Dm_tax.QDbConfig.Active then
    Dm_tax.QDbConfig.Open;
  with Dm_Tax.QCredBuy2 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXBUY WHERE TAXNO=:EDIT1');
    Params[0].Asstring := '';
    open;
    Insert;
  end;
end;

procedure TFCredBuy2.CancBtnClick(Sender: TObject);
begin
  Dm_Tax.QCredBuy2.Cancel;
end;

procedure TFCredBuy2.DelBtnClick(Sender: TObject);
begin
  if FldEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Del_CrdBuy2;
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_2', 'DELETE', FldEdit1.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        with Dm_Tax.QCredBuy2 do
        begin
          Close;
          Sql.clear;
          Sql.add('SELECT * FROM TAXBUY WHERE TAXNO=:Var0');
          Params[0].Asstring := '';
          open;
        end;
      end;
  end;
end;

procedure TFCredBuy2.FindRefNo;
begin
  with Dm_tax.QTaxBuy2 do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT * FROM TAXBUY WHERE TAXNO = :V0 AND TAXTYP = ''B'' ');
    Params[0].Asstring := Dm_Tax.QCredBuy2.FieldByName('TAXREFNO').Asstring;
    Open;
    if Eof and Bof then
      SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
  end;
  Dm_Tax.QCredBuy2.FieldByName('RECVDT').AsDateTime := Dm_tax.QTaxBuy2.FieldByName('TAXDATE').AsDateTime;
  Dm_Tax.QCredBuy2.FieldByName('CUSCOD').Asstring := Dm_tax.QTaxBuy2.FieldByName('CUSCOD').AsString;
  Dm_Tax.QCredBuy2.Fieldbyname('VATRT').Asfloat := Dm_tax.QTaxBuy2.FieldByName('VATRT').AsFloat;
  Edit1.Text := Dm_tax.QTaxBuy2.FieldByName('TAXREFNO').AsString;
  with Dm_tax.QCrByInvT2 do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT * FROM APINVOI WHERE RECVNO = :V0');
    Params[0].Asstring := Dm_Tax.QTaxBuy2.FieldByName('TAXREFNO').Asstring;
    Open;
  end;
end;

procedure TFCredBuy2.SavBtnClick(Sender: TObject);
begin
  S := Dm_Tax.QCredBuy2.FieldByName('Taxno').Asstring;
  if Dm_Tax.QCredBuy2.state in [Dsinsert, Dsedit] then
  begin
    if (Dm_Tax.QCredBuy2TAXRefNo.value <> '') and
      (Dm_Tax.QCredBuy2TotTAX.value <> 0) then
    begin
      Dm_Tax.QCredBuy2.Post;
    end
    else
      SFMain.RaiseException('กรุณาป้อนเลขที่ใบกำกับที่อ้างถึง');
  end;
  with Dm_Tax.QCredBuy2 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXBUY WHERE TAXNO=:EDIT1');
    Params[0].Asstring := S;
    open;
  end;
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_2', 'INSERT', FldEdit1.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_2', 'EDIT', FldEdit1.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFCredBuy2.Del_CrdBuy2;
begin
  if not (SFMain.Del_right) then
    SFMain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
  if MessageDlg('แน่ใจหรือไม่ที่จะยกเลิก', mtconfirmation, [mbOk, mbcancel], 0) = mrok then
    with Dm_tax do
    begin
      QCrByInvT2.Edit;
      QCrByInvT2.FieldByName('RtnAmt').Asfloat := QCrByInvT2.FieldByName('RtnAmt').Asfloat - QCredBuy2TOTTAX.AsFloat;
      QCrByInvT2.Post;
      QCredBuy2.Edit;
      QCredBuy2.FieldByName('Flag').Asstring := 'C';
      QCredBuy2.FieldByName('Candat').Asdatetime := Now;
      QCredBuy2.FieldByName('CANCELID').Asstring := SFMain.Xuser_Id;
      QCredBuy2.Post;
    end;
end;

procedure TFCredBuy2.EnqBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  SearchTax.Xcont := '2';
  if SearchTax.ShowModalTaxCrdB1 = MrOk then
  begin
    with Dm_Tax.QCredBuy2 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM TAXBUY WHERE TAXNO=:EDIT1');
      Params[0].Asstring := SearchTax.Keyno;
      open;
    end;
    with Dm_tax.QTaxBuy2 do
    begin
      Close;
      Sql.clear;
      SQL.Add('SELECT * FROM TAXBUY WHERE TAXNO = :V0');
      Params[0].Asstring := Dm_Tax.QCredBuy2.FieldByName('TAXREFNO').Asstring;
      Open;
      if Eof and Bof then
        SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
    end;
    Edit1.Text := Dm_tax.QTaxBuy2.FieldByName('TAXREFNO').AsString;
      //Edit2.Text := FloatToStrF(Dm_tax.QTaxBuy2.FieldByName('NETAMT').AsFloat,ffNumber,12,2) ;
    with Dm_tax.QCrByInvT2 do
    begin
      Close;
      Sql.clear;
      SQL.Add('SELECT * FROM APINVOI WHERE RECVNO = :V0');
      Params[0].Asstring := Dm_Tax.QTaxBuy2.FieldByName('TAXREFNO').Asstring;
      Open;
      if eof and bof then
        SFMain.RaiseException('ไม่พบเลขที่ใบรับนี้');
    end;
  end;
end;

procedure TFCredBuy2.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFCredBuy2.DBEdit3Exit(Sender: TObject);
begin
  FindRefno;
end;

procedure TFCredBuy2.FldCombo1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLoCat = Mrok then
    Dm_Tax.QCredBuy2.FieldByName('LOCAT').Asstring := SearchSet.KeyNo;
end;

procedure TFCredBuy2.FldCombo2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  SearchTax.ShowModalTypCred;
end;

procedure TFCredBuy2.FldCombo3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  FormatSettings.shortdateformat := 'dd/mm/yyyy';
  Application.CreateForm(TSearchTax, SearchTax);
  if SearchTax.ShowModalTaxBuy = MrOk then
  begin
    Dm_Tax.QCredBuy2.FieldByName('TAXREFNO').Asstring := SearchTax.KeyNo;
    FindRefno;
  end;
end;

procedure TFCredBuy2.FldCombo5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  SearchTax.Xcont := Edit1.Text;
  if SearchTax.ShowModalStrRecv = MrOk then
    Dm_Tax.QCredBuy2.FieldByName('Strno').Asstring := SearchTax.KeyNo;
  with Dm_tax.QCrByInvT1 do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT * FROM INVTRAN WHERE STRNO = :V0');
    Params[0].Asstring := Dm_Tax.QCredBuy2.FieldByName('STRNO').Asstring;
    Open;
    if Dm_tax.QCrByInvT1.FieldByName('Flag').Asstring = 'C' then
      SFMain.RaiseException('รถคันนี้ถูกขายแล้วไม่สามารถออกใบลดหนี้ทั้งรายการ');
  end;
end;

procedure TFCredBuy2.FormShow(Sender: TObject);
begin
  Dm01.QCondpay.Open;
  with Dm_Tax.QCredBuy2 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXBUY WHERE TAXNO=:EDIT1');
    Params[0].Asstring := '';
    open;
  end;
end;

end.

