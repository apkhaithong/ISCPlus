unit Apinv04;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask, DB, Grids, cxLookAndFeelPainters,
  ActnList, Dbkbd, cxGroupBox, cxRadioGroup, cxDBEdit, cxMemo, cxButtonEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxControls, cxContainer,
  cxEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  System.Actions, BusinessSkinForm, dxStatusBar, frxBDEComponents, frxExportPDF,
  frxExportCSV, frxCross, frxExportImage, frxClass, frxExportBaseDialog,
  frxExportXLSX, frxRich, frxGradient, frxChBox, frxTableObject,
  frxFDComponents, frxChart, frxDCtrl, frxBarcode;

type
  TApinv_4 = class(TForm)
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn1: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label44: TLabel;
    Label42: TLabel;
    Label14: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    cxTextEdit1: TcxTextEdit;
    DBEdit23: TcxDBTextEdit;
    RevDate: TcxDBDateEdit;
    DBEdit2: TcxDBButtonEdit;
    DBEdit10: TcxDBButtonEdit;
    DBEdit17: TcxDBButtonEdit;
    DBEdit18: TcxDBTextEdit;
    InvDate: TcxDBDateEdit;
    DBEdit19: TcxDBTextEdit;
    TxDate: TcxDBDateEdit;
    DBEdit22: TcxDBTextEdit;
    InvDue: TcxDBDateEdit;
    DBEdit8: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    DBEdit34: TcxDBButtonEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxChartObject1: TfrxChartObject;
    frxFDComponents1: TfrxFDComponents;
    frxReportTableObject1: TfrxReportTableObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    frxBDEComponents1: TfrxBDEComponents;
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure SaveBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure cxDBTextEdit3Exit(Sender: TObject);
    procedure cxDBTextEdit6Exit(Sender: TObject);
    procedure cxDBTextEdit4Exit(Sender: TObject);
    procedure DBEdit2PropertiesChange(Sender: TObject);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit17PropertiesChange(Sender: TObject);
    procedure DBEdit17PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure RevDateExit(Sender: TObject);
    procedure InvDateExit(Sender: TObject);
    procedure TxDateExit(Sender: TObject);
    procedure InvDueExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure PrnBtn1Click(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure DBEdit10PropertiesChange(Sender: TObject);
    procedure DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit8PropertiesChange(Sender: TObject);
    procedure DBEdit34PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBDateEdit1Exit(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Apinv_4: TApinv_4;

implementation

uses
  DmAp, USoftFirm, Functn01, uSrcDlg, uFindPO, unfrPreview, Dmsec;

{$R *.DFM}

procedure TApinv_4.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (Dm_Ap1.QApinv3INVNO.AsString <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  DBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;
  PrnBtn1.Visible := (DataSource1.State = Dsbrowse) and (Dm_Ap1.QApinv3INVNO.AsString <> '');

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := False;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := True;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  if not Dm_ap1.QDBConfig.Active then
    Dm_ap1.QDBConfig.Open;
  DBEdit23.Properties.Readonly := Dm_ap1.QDBConfig.Fieldbyname('H_RVOTH').asstring = 'Y';
  DBEDIT2.Enabled := (SFMain.XChgLoc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  RevDate.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
end;

procedure TApinv_4.InsBtnClick(Sender: TObject);
begin
  if not Dm_Ap1.Condpay.Active then
    Dm_Ap1.Condpay.Open;
  with Dm_Ap1.QApinv3 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APINVOI WHERE INVNO = '''' ');
    Open;
    Insert;
  end;
  if DBEdit2.Enabled = false then
    DBEdit10.SetFocus
  else
    DBEdit2.SetFocus;
end;

procedure TApinv_4.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if not (ActiveControl is TDbMemo) then
    begin
      Perform(Wm_NextDlgCtl, 0, 0);
      Key := #0;
    end;
end;

procedure TApinv_4.CancBtnClick(Sender: TObject);
begin
  Dm_Ap1.QApinv3.Cancel;
end;

procedure TApinv_4.DelBtnClick(Sender: TObject);
begin
  if DBEdit23.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  if Dm_Ap1.QApinv3POSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSP04', 'DELETE', Dm_Ap1.QApinv3.FieldByName('INVNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dm_Ap1.QApinv3.delete;
      end;
  end;
end;

procedure TApinv_4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Apinv_4 := Nil;
  Action := Cafree;
end;

procedure TApinv_4.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fSrcDlg.XSrLocat := ''
  else
    fSrcDlg.XSrLocat := sfmain.Xlocat;
  if fSrcDlg.ShowModalApOth = Mrok then
  begin
    with Dm_Ap1.QApinv3 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM APINVOI WHERE INVNO =:XNo AND RECVNO =:XRecvno');
      Params[0].Asstring := fSrcDlg.keyno;
      Params[1].Asstring := fSrcDlg.qrFindDat.fieldbyname('RECVNO').AsString;
      Open;
    end;
    if Dm_Ap1.QApinv3.Bof and Dm_Ap1.QApinv3.Eof then
      SFMain.RaiseException('ไม่มีเลขที่ Invoice นี้ในแฟ้มข้อมูล');
    with Dm_Ap1.QLocat do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD =:XLOCATCOD ');
      Params[0].Asstring := DBEdit2.Text;
      Open;
    end;
    if Dm_Ap1.QLocat.Bof and Dm_Ap1.QLocat.eof then
      SFMain.RaiseException('ไม่มีรหัสสาขานี้ในแฟ้มข้อมูล');
    Edit1.Text := Dm_Ap1.QLocat.fieldByName('LOCATNM').Asstring;

    if Dm_Ap1.QApinv3.Fieldbyname('DEPOSIT').Asstring = 'N' then
    begin
      with Dm_Ap1.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM APMAST WHERE APCODE =:XAPCODE ');
        Params[0].Asstring := DBEdit10.Text;
        Open;
      end;
      Edit2.Text := Dm_Ap1.Query1.fieldByName('APNAME').Asstring;
      Label5.Caption := 'รหัสเจ้าหนี้';
    end
    else
    begin
      with Dm_Ap1.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCODE ');
        Params[0].Asstring := DBEdit10.Text;
        Open;
      end;
      Edit2.Text := Dm_Ap1.Query1.fieldByName('NAME1').Asstring + ' ' + Dm_Ap1.Query1.fieldByName('NAME2').Asstring;
      Label5.Caption := 'รหัสลูกค้า';
    end;
    DBEdit2.Properties.ReadOnly := True;
    RevDate.Properties.ReadOnly := True;
    DBEdit23.Properties.ReadOnly := True;
    InvDate.Properties.ReadOnly := True;
    DBEdit18.Properties.ReadOnly := True;
    TxDate.Properties.ReadOnly := True;
    DBEdit19.Properties.ReadOnly := True;
    cxDBTextEdit3.Properties.ReadOnly := True;
    cxDBTextEdit4.Properties.ReadOnly := True;
    cxDBTextEdit6.Properties.ReadOnly := True;
  end;
end;

procedure TApinv_4.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSP', 'HDSP04');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
end;

procedure TApinv_4.DBMemo1Enter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TApinv_4.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.Itemindex = 0 then
  begin
    cxDBTextEdit4.Properties.ReadOnly := True;
    cxDBTextEdit5.Properties.ReadOnly := True;
    cxDBTextEdit6.Properties.ReadOnly := False;

    cxDBTextEdit4.Tabstop := False;
    cxDBTextEdit5.Tabstop := False;
    cxDBTextEdit6.Tabstop := True;
  end;
  if DBRadioGroup1.Itemindex = 1 then
  begin
    cxDBTextEdit4.Properties.ReadOnly := False;
    cxDBTextEdit5.Properties.ReadOnly := True;
    cxDBTextEdit6.Properties.ReadOnly := True;

    cxDBTextEdit4.Tabstop := True;
    cxDBTextEdit5.Tabstop := False;
    cxDBTextEdit6.Tabstop := False;
  end;
end;

procedure TApinv_4.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  DBkbd1.AllowEditing := (SFMain.Edit_right) and (Dm_Ap1.QApinv3.Fieldbyname('kang').Asfloat > 0);
end;

procedure TApinv_4.SaveBtnClick(Sender: TObject);
begin
  cxDBMemo1.SetFocus;

  if (DBEdit8.Text = '10') and (DBEdit34.Text = '') then
    SFMain.RaiseException('ยังไม่บันทึกสมุดเงินฝากธนาคาร..!');

  if Dm_Ap1.QApinv3.FieldByName('RECVNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกวันที่ใบรับ ');
  if Dm_Ap1.QApinv3.FieldByName('APCODE').Asstring = '' then
    SFMain.RaiseException('ยังไม่ระบุรหัสลูกค้าหรือเจ้าหนี้ ');
  if Dm_Ap1.QApinv3.FieldByName('INVNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึก เลขที่ใบส่งของ');
  if Dm_Ap1.QApinv3.FieldByName('NETTOTAL').AsFloat = 0 then
    SFMain.RaiseException('ยังไม่ได้ระบุจำนวนเงิน ');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSP04', 'INSERT', Dm_Ap1.QApinv3.FieldByName('INVNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSP04', 'EDIT', Dm_Ap1.QApinv3.FieldByName('INVNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Ap1.QApinv3.Post;
end;

procedure TApinv_4.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TApinv_4.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      if DelBtn.Visible then
        DelBtnClick(Sender);
    Vk_F2:
      if SaveBtn.Visible then
        SaveBtnClick(Sender);
    Vk_F5:
      if InsBtn.Visible then
        InsBtnClick(Sender);
  end;
end;

procedure TApinv_4.FormShow(Sender: TObject);
begin
  with Dm_Ap1.QApinv3 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APINVOI WHERE INVNO = '''' ');
    Open;
  end;
end;

procedure TApinv_4.DBEdit22Exit(Sender: TObject);
begin
  Dm_Ap1.QApinv3.FieldByName('INVDUE').AsDateTime := Dm_Ap1.QApinv3.FieldByName('RECVDT').AsDateTime
    + Dm_Ap1.QApinv3.FieldByName('CREDTM').AsFloat;
end;

procedure TApinv_4.DBEdit18Exit(Sender: TObject);
begin
  if Dm_Ap1.QApinv3.State = dsinsert then
  begin
    with Dm_Ap1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM APINVOI WHERE INVNO = :XNO ');
      Params[0].Asstring := Dm_Ap1.QApinv3.FieldByName('INVNO').Asstring;
      Open;
    end;
    if not (Dm_Ap1.Query1.bof and Dm_Ap1.Query1.Eof) then
      SFMain.RaiseException('เลขที่Invoiceนี้มีแล้วในแฟ้มข้อมูล');
  end;
end;

procedure TApinv_4.cxDBTextEdit3Exit(Sender: TObject);
var
  XNET, VVAT: Double;
  CNET, CVAT: string;
begin
  if Dm_Ap1.QApinv3.State in Dseditmodes then
  begin
    XNET := (Dm_Ap1.QApinv3.FieldByName('TOTAL').AsFloat *
      (100 + Dm_Ap1.QApinv3.FieldByName('VATRT').AsFloat) / 100);
    CNET := FloatToStrF(XNET, ffFixed, 12, 2);
    Dm_Ap1.QApinv3.FieldByName('NETTOTAL').AsFloat := StrToFloat(CNET);

    VVAT := (Dm_Ap1.QApinv3.FieldByName('TOTAL').AsFloat *
      (Dm_Ap1.QApinv3.FieldByName('VATRT').AsFloat) / 100);
    CVAT := FloatToStrF(VVAT, ffFixed, 12, 2);
    Dm_Ap1.QApinv3.FieldByName('VATAMT').AsFloat := StrToFloat(CVAT);
    Dm_Ap1.QApinv3.FieldByName('NETTOTAL').AsFloat := Dm_Ap1.QApinv3.FieldByName('TOTAL').AsFloat
      + Dm_Ap1.QApinv3.FieldByName('VATAMT').AsFloat;
  end;
end;

procedure TApinv_4.cxDBTextEdit6Exit(Sender: TObject);
var
  XTOTAL, VVAT: Double;
  CTOTAL, CVAT: string;
begin
  if Dm_Ap1.QApinv3.State in Dseditmodes then
  begin
    if Dm_Ap1.QApinv3.FieldByName('VATRT').AsFloat = 0 then
    begin
      Dm_Ap1.QApinv3.FieldByName('TOTAL').AsFloat := Dm_Ap1.QApinv3.FieldByName('NETTOTAL').AsFloat;
      Dm_Ap1.QApinv3.FieldByName('VATAMT').AsFloat := 0;
    end
    else
    begin
      XTOTAL := (Dm_Ap1.QApinv3.FieldByName('NETTOTAL').AsFloat * 100
        / (100 + Dm_Ap1.QApinv3.FieldByName('VATRT').AsFloat));
      CTOTAL := FloatToStrF(XTOTAL, ffFixed, 12, 2);
      Dm_Ap1.QApinv3.FieldByName('TOTAL').AsFloat := StrToFloat(CTOTAL);
      VVAT := (Dm_Ap1.QApinv3.FieldByName('NETTOTAL').AsFloat
        * Dm_Ap1.QApinv3.FieldByName('VATRT').AsFloat
        / (100 + Dm_Ap1.QApinv3.FieldByName('VATRT').AsFloat));
      CVAT := FloatToStrF(VVAT, ffFixed, 12, 2);
      Dm_Ap1.QApinv3.FieldByName('VATAMT').AsFloat := StrToFloat(CVAT);
    end;
  end;
end;

procedure TApinv_4.cxDBTextEdit4Exit(Sender: TObject);
var
  XNET, VVAT: Double;
  CNET, CVAT: string;
begin
  if Dm_Ap1.QApinv3.State in Dseditmodes then
  begin
    XNET := (Dm_Ap1.QApinv3.FieldByName('TOTAL').AsFloat *
      (100 + Dm_Ap1.QApinv3.FieldByName('VATRT').AsFloat) / 100);
    CNET := FloatToStrF(XNET, ffFixed, 12, 2);
    Dm_Ap1.QApinv3.FieldByName('NETTOTAL').AsFloat := StrToFloat(CNET);

    VVAT := (Dm_Ap1.QApinv3.FieldByName('TOTAL').AsFloat *
      (Dm_Ap1.QApinv3.FieldByName('VATRT').AsFloat) / 100);
    CVAT := FloatToStrF(VVAT, ffFixed, 12, 2);
    Dm_Ap1.QApinv3.FieldByName('VATAMT').AsFloat := StrToFloat(CVAT);
    Dm_Ap1.QApinv3.FieldByName('NETTOTAL').AsFloat := Dm_Ap1.QApinv3.FieldByName('TOTAL').AsFloat
      + Dm_Ap1.QApinv3.FieldByName('VATAMT').AsFloat;
  end;
end;

procedure TApinv_4.DBEdit2PropertiesChange(Sender: TObject);
begin
  with Dm_Ap1.QLocat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOCATCOD ');
    Params[0].Asstring := DBEdit2.Text;
    Open;
  end;
  Edit1.Text := Dm_Ap1.QLocat.fieldByName('LOCATNM').Asstring;
end;

procedure TApinv_4.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Dm_Ap1.QApinv3.FieldByName('LOCAT').Asstring := fSrcDlg.Keyno;
end;

procedure TApinv_4.DBEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAR = Mrok then
  begin
    Edit2.Text := fsrcdlg.qrFindDat.FieldByName('NAME1').Asstring + ' ' + fSrcDlg.qrFindDat.FieldByName('NAME2').Asstring;
    Dm_Ap1.QApinv3.FieldByName('APCODE').Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TApinv_4.DBEdit17PropertiesChange(Sender: TObject);
begin
  Edit3.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit17.text);
end;

procedure TApinv_4.DBEdit17PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    Dm_Ap1.QApinv3.FieldByName('OFFICCOD').Asstring := fSrcDlg.Keyno;
end;

procedure TApinv_4.RevDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Ap1.QApinv3.fieldbyname('RECVDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Ap1.QApinv3.fieldbyname('RECVDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Ap1.QApinv3.fieldbyname('RECVDT').AsDateTime := Dm_Ap1.QApinv3.fieldbyname('RECVDT').AsDateTime;
  end;
end;

procedure TApinv_4.InvDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Ap1.QApinv3.fieldbyname('INVDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Ap1.QApinv3.fieldbyname('INVDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Ap1.QApinv3.fieldbyname('INVDATE').AsDateTime := Dm_Ap1.QApinv3.fieldbyname('INVDATE').AsDateTime;
  end;
end;

procedure TApinv_4.TxDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Ap1.QApinv3.fieldbyname('TAXDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Ap1.QApinv3.fieldbyname('TAXDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Ap1.QApinv3.fieldbyname('TAXDATE').AsDateTime := Dm_Ap1.QApinv3.fieldbyname('TAXDATE').AsDateTime;
  end;
end;

procedure TApinv_4.InvDueExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Ap1.QApinv3.fieldbyname('INVDUE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Ap1.QApinv3.fieldbyname('INVDUE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Ap1.QApinv3.fieldbyname('INVDUE').AsDateTime := Dm_Ap1.QApinv3.fieldbyname('INVDUE').AsDateTime;
  end;
end;

procedure TApinv_4.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
 { IF Uppercase(NAME)='DATETHAI' Then
  Begin
     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
  End;  }
end;

procedure TApinv_4.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'PAPINVNO' then
    Value := DBEdit18.Text;
end;

procedure TApinv_4.PrnBtn1Click(Sender: TObject);
begin
  if DBEdit23.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnEarnest.fr3','1');
end;

procedure TApinv_4.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnEarnest.fr3','2');
end;

procedure TApinv_4.DBEdit10PropertiesChange(Sender: TObject);
begin
  with Dm_Ap1.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCODE ');
    Params[0].Asstring := DBEdit10.Text;
    Open;
  end;
  Edit2.Text := Dm_Ap1.Query1.FieldByName('NAME1').Asstring + ' ' + Dm_Ap1.Query1.FieldByName('NAME2').Asstring;
end;

procedure TApinv_4.DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPAYTYP = Mrok then
    Dm_Ap1.QApinv3.FieldByName('PAYCD').Asstring := fSrcDlg.Keyno;
end;

procedure TApinv_4.DBEdit8PropertiesChange(Sender: TObject);
begin
  DBEdit34.Enabled := DBEdit8.Text = '10';
  cxDBDateEdit1.Enabled := DBEdit8.Text = '10';

  with Dm_AP1.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PAYTYP WHERE PAYCODE=:XCOD ');
    Params[0].Asstring := DBEdit8.Text;
    Open;
  end;
  cxTextEdit1.Text := Dm_AP1.Query2.FieldByName('PAYDESC').Asstring;
end;

procedure TApinv_4.DBEdit34PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if Dm_Ap1.QApinv3PAYCD.AsString = '02' then
  begin
    if fSrcDlg.ShowModalBak = Mrok then
      Dm_Ap1.QApinv3.FieldByName('BANKBOOKCOD').Asstring := fSrcDlg.KeyNo;
  end
  else
  begin
    if fSrcDlg.ShowModalBook = Mrok then
      Dm_Ap1.QApinv3.FieldByName('BANKBOOKCOD').Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TApinv_4.cxDBDateEdit1Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Ap1.QApinv3.fieldbyname('POSTGLDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Ap1.QApinv3.fieldbyname('POSTGLDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Ap1.QApinv3.fieldbyname('POSTGLDT').AsDateTime := Dm_Ap1.QApinv3.fieldbyname('POSTGLDT').AsDateTime;
  end;
end;

end.

