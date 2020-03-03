unit PaymntPos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, ComCtrls, ToolWin, RzLabel,
  RzSpnEdt, RzPanel, cxButtonEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit, AdvGlowButton,
  AdvToolBar, AdvPanel, cxLookAndFeelPainters, cxGroupBox, cxRadioGroup,
  ActnList, RzDbkbd, cxGraphics, cxLookAndFeels, dxDateRanges, System.Actions,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxImageComboBox, cxCurrencyEdit, BusinessSkinForm, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxStatusBar;

type
  TFPaymntPos = class(TForm)
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    cxRadioGroup1: TcxRadioGroup;
    dxStatusBar1: TdxStatusBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    cxGroupBox18: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3PAYFOR: TcxGridDBColumn;
    cxGridDBTableView3CONTNO: TcxGridDBColumn;
    cxGridDBTableView3PAYAMT: TcxGridDBColumn;
    cxGridDBTableView3PAYINT: TcxGridDBColumn;
    cxGridDBTableView3VATRTPAY: TcxGridDBColumn;
    cxGridDBTableView3DISCT: TcxGridDBColumn;
    cxGridDBTableView3NETPAY: TcxGridDBColumn;
    cxGridDBTableView3DIVICOD: TcxGridDBColumn;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PAYFOR: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid3DBTableView2: TcxGridDBTableView;
    cxGrid3DBTableView2PAYCODE: TcxGridDBColumn;
    cxGrid3DBTableView2CHQNO: TcxGridDBColumn;
    cxGrid3DBTableView2BANKBOOKCOD: TcxGridDBColumn;
    cxGrid3DBTableView2BANKLOCAT: TcxGridDBColumn;
    cxGrid3DBTableView2DTONCHQ: TcxGridDBColumn;
    cxGrid3DBTableView2AMOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1PAYFOR: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid2DBTableView1AMOUNT: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    AdvPanel1: TAdvPanel;
    DataSource1: TDataSource;
    ActionList1: TActionList;
    actEditPrn: TAction;
    DBkbd1: TRzDBkbd;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    RzLabel1: TRzLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit5: TcxDBTextEdit;
    DBEdit17: TcxDBTextEdit;
    TaxDate: TcxDBDateEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit19: TcxDBTextEdit;
    DBEdit20: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBGridTranBKCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPaymntPos: TFPaymntPos;
  Xinvno: string;

implementation

uses
  Dmic01, EntrChq, USoftFirm, Dmar, uSrcDlg, DmSet1, unfrPreview, Dmsec,
  uSrcDLGAr;
{$R *.DFM}

procedure TFPaymntPos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with FmDmic01.Icinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
    PARAMS[0].ASSTRING := Xinvno;
    OPEN;
  end;
  //
  with FmDmic01.ictran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:XINVNO');
    PARAMS[0].ASSTRING := Xinvno;
    OPEN;
  end;

  if FmDmic01.QArpaytrn1.Active then
    FmDmic01.QArpaytrn1.Close;
  if FmDmic01.QArpaytrn_Typ.Active then
    FmDmic01.QArpaytrn_Typ.Close;
  if FmDmic01.QArChq.Active then
    FmDmic01.QArChq.Close;
  Action := Cafree;
end;

procedure TFPaymntPos.DataSource1StateChange(Sender: TObject);
var
  n: Word;
begin
  SaveBtn.Visible := (DataSource1.Dataset.State in DsEditModes) and
    (FmDmic01.IcinvCANCELID.Asstring = '');

  CancBtn.Visible := SaveBtn.Visible;
  Delbtn.Visible := (not (DataSource1.Dataset.State = DsInsert)) and (DBEdit17.Text <> '');
  PrnBtn.Visible := (DataSource1.Dataset.State = Dsbrowse) and (DBEdit17.Text <> '');
  if FmDmIc01.QArpaytrn1CANCELID.AsString <> '' then
    RzLabel1.Visible := True
  else
    RzLabel1.Visible := False;

  cxGrid3DBTableView2.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Append.Enabled := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxGridDBTableView) and (TcxGridDBTableView(Components[n]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[n]).OptionsData.Editing := False;
      end;

      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
        TcxDBButtonEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Enabled := False;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBMemo) and (TcxDBMemo(Components[n]).Tag = 0) then
      begin
        TcxDBMemo(Components[n]).Properties.ReadOnly := True;
        TcxDBMemo(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clBtnface;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxGridDBTableView) and (TcxGridDBTableView(Components[n]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[n]).OptionsData.Editing := True;
      end;

      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
        TcxDBButtonEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Enabled := True;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBMemo) and (TcxDBMemo(Components[n]).Tag = 0) then
      begin
        TcxDBMemo(Components[n]).Properties.ReadOnly := False;
        TcxDBMemo(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;
end;

procedure TFPaymntPos.DBEdit7Change(Sender: TObject);
begin
  {DBedit13.Enabled  := (DBedit7.Text='01');
  DBedit10.Enabled  := (DBedit7.Text='02');
  cxDBTextEdit2.Enabled  := (DBedit7.Text='10');
  cxDBTextEdit3.Enabled  := (DBedit7.Text='90');
  //
  If DBedit13.Enabled Then
   DBedit13.Style.Color := clWhite
  Else
   DBedit13.Style.Color := clSilver;
  If DBedit10.Enabled Then
   DBedit10.Style.Color := clWhite
  Else
   DBedit10.Style.Color := clSilver; }
end;

procedure TFPaymntPos.SaveBtnClick(Sender: TObject);
begin
  if DBEdit6.Text = '' then
    sfmain.RaiseException('ไม่พบเลขที่ใบส่งสินค้า..!');

 { if (DBEdit7.Text = '10') and (cxDBButtonEdit1.Text = '') then
  sfmain.RaiseException('เป็นเงินโอน กรุณาระบุธนาคาร..!');  }

  FmDmic01.QArpaytrn_Typ.DisableControls;
  FmDmic01.QArpaytrn_Typ.First;
  while not (FmDmic01.QArpaytrn_Typ.Eof) do
  begin
    if (FmDmic01.QArpaytrn_TypPAYCODE.AsString = '02') then
    begin
      if FmDmic01.QArpaytrn_TypCHQNO.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดเลขที่เช็ค..!');
    end;

    if (FmDmic01.QArpaytrn_TypPAYCODE.AsString = '10') then
    begin
      if FmDmic01.QArpaytrn_TypBANKBOOKCOD.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดรหัสธนาคาร..!');
    end;

      {If (FmDmic01.QArpaytrn_TypAMOUNT.Asfloat <= 0) Then  FmDmic01.QArpaytrn_Typ.Delete
      else FmDmic01.QArpaytrn_Typ.Next;}
    FmDmic01.QArpaytrn_Typ.Next;
  end;
  FmDmic01.QArpaytrn_Typ.EnableControls;

  if FmDmic01.QArpaytrn_Typ.RecordCount = 0 then
  begin
    FmDmic01.QArpaytrn_Typ.Append;
    SFMain.RaiseException('กรุณาบันทึกข้อมูลให้ครบก่อนบันทึก..!');
  end;

  FmDmic01.QArpaytrn1.Post;
end;

procedure TFPaymntPos.DelBtnClick(Sender: TObject);
begin

  if DBEdit17.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  if FmDmic01.QArpaytrn1POSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

 { Dm_Ar.QArChq.DisableControls ;
  Dm_Ar.QArChq.First ;
  while not(Dm_Ar.QArChq.Eof) Do
    Begin
      If (Dm_Ar.QArChqCHQNO.AsString = '') Then  Dm_Ar.QArChq.Delete
      else Dm_Ar.QArChq.Next;
    End;
  Dm_Ar.QArChq.EnableControls ; }

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        with FmDmic01.Query1 do
        begin
          close;
          sql.Clear;
          sql.Add('update ic_invoi set taxrefno = '''',paid = 0 ' +
            'where TAXREFNO =:edit2');
          params[0].AsString := FmDmic01.QArpaytrn1.Fieldbyname('BILLNO').Asstring;
          execSql;
        end;

        FmDmic01.QArpaytrn1.Edit;
        FmDmic01.QArpaytrn1CancelId.AsString := SFMain.XUser_ID;
        FmDmic01.QArpaytrn1Candat.AsDateTime := Now;
        FmDmic01.QArpaytrn1.Fieldbyname('Invno').Asstring := '';
        FmDmic01.QArpaytrn1.Fieldbyname('Taxno').Asstring := '';
        FmDmic01.QArpaytrn1.Fieldbyname('Flag').Asstring := 'C';
        FmDmic01.QArpaytrn1.Post;
      end;
  end;
end;

procedure TFPaymntPos.CancBtnClick(Sender: TObject);
begin
  FmDmic01.QArpaytrn1.cancel;
  FmDmic01.QArpaytrn_Typ.Cancel;
end;

procedure TFPaymntPos.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFPaymntPos.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PBILLNO' then
    ParValue := DBEdit17.Text;
end;

procedure TFPaymntPos.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
//  if Uppercase(Name) = 'DATETHAI' then
//  begin
//    Val := SFMain.DateThai(Frparser.Calc(p1), Frparser.Calc(p2));
//  end;
end;

procedure TFPaymntPos.PrnBtnClick(Sender: TObject);
begin
  if DBEdit17.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  if cxRadioGroup1.ItemIndex = 0 then
//    DM_SEC.Do_Prev_Edit_FastReport(frReport1, 'fr_Billicinv3.frf', '1')
  else
//    DM_SEC.Do_Prev_Edit_FastReport(frReport1, 'fr_Billicinv4.frf', '1');
end;

procedure TFPaymntPos.actEditPrnExecute(Sender: TObject);
begin
  if cxRadioGroup1.ItemIndex = 0 then
//    DM_SEC.Do_Prev_Edit_FastReport(frReport1, 'fr_Billicinv3.frf', '2')
  else
//    DM_SEC.Do_Prev_Edit_FastReport(frReport1, 'fr_Billicinv4.frf', '2');
end;

procedure TFPaymntPos.FormShow(Sender: TObject);
var
  N: Word;
begin
  Xinvno := FmDmic01.IcinvINVNO.Asstring;
  with FmDmic01.QArpaytrn1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO =:XBILLNO ');
    params[0].AsString := FmDmic01.IcinvTAXREFNO.AsString;
    Open;
    if (eof and bof) then
      Insert;
  end;

  with FmDmic01.Qtmpicinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT INVNO,PAID,TAXREFNO,NETPRC,DEPOSTNO,DEPOSTAX FROM IC_INVOI WHERE INVNO =:XINVNO');
    PARAMS[0].ASSTRING := FmDmic01.IcinvINVNO.Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบใบส่งของ/ใบกำกับ');
  end;

  with FmDmic01.QArpaytrn_Typ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO =:XBILNO  ');
    Params[0].Asstring := FmDmic01.QArpaytrn1.FieldByName('BILLNO').Asstring;
    Open;

    if FmDmic01.QArpaytrn_Typ.RecordCount = 0 then
    begin
      insert;
      FmDmic01.QArpaytrn_TypPAYCODE.AsString := '01';
      FmDmic01.QArpaytrn_TypAMOUNT.AsFloat := FmDmic01.Qtmpicinv.fieldbyname('NETPRC').AsFloat;
    end;
    FmDmic01.QArpaytrn_Typ.Next;
  end;

  if FmDmic01.QArpaytrn1.State <> Dsinsert then
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) then
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
      if (Components[N] is TcxDBDateEdit) then
        TcxDBDateEdit(Components[N]).Properties.Readonly := True;
      if (Components[N] is TcxDBButtonEdit) then
        TcxDBButtonEdit(Components[N]).Properties.Readonly := True;
    end;
end;

procedure TFPaymntPos.FormCreate(Sender: TObject);
begin
  {SFMain.Check_right('HDSV', 'HDSV09');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing:= SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;}
end;

procedure TFPaymntPos.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  {Application.Createform(TfSrcDLG,fSrcDLG);
  if DBEdit7.Text = '02' then
  begin
    If fSrcDLG.ShowModalBak=Mrok Then
    FmDmic01.QArpaytrn1Bkcode.Asstring := fSrcDlg.Keyno;
  end else
  begin
    If fSrcDLG.ShowModalBankbook=Mrok Then
    begin
      FmDmic01.QArpaytrn1Bkcode.Asstring := fSrcDlg.Keyno;
    end;
  end; }
end;

procedure TFPaymntPos.cxDBGridTranBKCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDLG, fSrcDLG);
  if fSrcDLG.ShowModalBak = Mrok then
  begin
    Dm_Ar.QArchq.Edit;
    Dm_Ar.QArChq.FieldByName('BKCODE').Asstring := fSrcDLG.KeyNo;
  end;
end;

procedure TFPaymntPos.cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPAYTYP = Mrok then
  begin
    if (FmDmic01.QArpaytrn1.state in Dseditmodes) and (FmDmic01.QArpaytrn_Typ.State = Dsbrowse) then
      FmDmic01.QArpaytrn_Typ.Edit;
    FmDmic01.QArpaytrn_Typ.FieldByname('PAYCODE').Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TFPaymntPos.cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if FmDmic01.QArpaytrn_Typ.FieldByName('PAYCODE').AsString = '02' then
  begin
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalBak = Mrok then
    begin
      FmDmic01.QArpaytrn_Typ.Edit;
      FmDmic01.QArpaytrn_Typ.FieldByname('BANKBOOKCOD').Asstring := fSrcDlg.Keyno;
    end;
  end
  else
  begin
    Application.CreateForm(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalBankbook = MrOk then
    begin
      FmDmic01.QArpaytrn_Typ.Edit;
      FmDmic01.QArpaytrn_Typ.FieldByName('BANKBOOKCOD').AsString := fSrcDlg.Keyno;
      FmDmic01.QArpaytrn_Typ.FieldByName('BANKLOCAT').AsString := fSrcDlg.qrFindDat.fieldbyname('BANKLOCNAM').AsString;
    end;
  end;
end;

end.

