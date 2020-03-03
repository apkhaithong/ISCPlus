unit Arinv03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  Grids, DBGrids, StdCtrls, Buttons, Mask, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters,
  Menus, ActnList, RzDbkbd, cxButtonEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxButtons, cxGroupBox, cxRadioGroup, AdvGlowButton, AdvToolBar,
  ExtCtrls, AdvPanel, cxContainer, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxLookAndFeels, dxDateRanges,
  System.Actions, cxNavigator, cxImageComboBox, cxCurrencyEdit, dxStatusBar,
  frxBarcode, frxClass, frxChart, frxFDComponents, frxTableObject, frxChBox,
  frxGradient, frxRich, frxExportXLSX, frxExportImage, frxCross, frxExportCSV,
  frxExportBaseDialog, frxExportPDF, frxBDEComponents, frxDCtrl;

type
  TArinv_3 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Label6: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    DBGrid1: TcxGrid;
    wwDBGridTrData: TcxGridDBTableView;
    wwDBGridTrDataINVNO: TcxGridDBColumn;
    wwDBGridTrDataINVDATE: TcxGridDBColumn;
    wwDBGridTrDataDUEDATE: TcxGridDBColumn;
    wwDBGridTrDataBALANCE: TcxGridDBColumn;
    wwDBGridTrDataPAYAMT: TcxGridDBColumn;
    DBGrid1Level1: TcxGridLevel;
    Edit4: TcxTextEdit;
    Edit3: TcxTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    cxRadioGroup1: TcxRadioGroup;
    dxStatusBar1: TdxStatusBar;
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
    DBEdit7: TcxDBButtonEdit;
    Label45: TLabel;
    Label1: TLabel;
    Billdate: TcxDBDateEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit20: TcxDBTextEdit;
    DBEdit19: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    frxDialogControls1: TfrxDialogControls;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxCrossObject1: TfrxCrossObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxReportTableObject1: TfrxReportTableObject;
    frxFDComponents1: TfrxFDComponents;
    frxChartObject1: TfrxChartObject;
    frxReport1: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure ClosBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanbtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DBEdit1BtnClick(Sender: TObject);
    procedure DBEdit7BtnClick(Sender: TObject);
    procedure FldCombo2BtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit3PropertiesChange(Sender: TObject);
    procedure BilldateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Arinv_3: TArinv_3;

implementation

uses
  DmAr, HlpAr, HlpAray, EntrChq, DmSet1, uSrcDlg, SrchDlgAr, USoftfirm,
  uSrcDlgAR, unfrPreview, Dmsec;

{$R *.DFM}

procedure TArinv_3.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  SaveBtn.Visible := (DataSource1.Dataset.State in Dseditmodes);
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit4.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  CancBtn.Visible := SaveBtn.Visible;
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit4.Text <> '');

  wwDBGridTrData.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  wwDBGridTrData.NavigatorButtons.Append.Enabled := SaveBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Append.Enabled := SaveBtn.Visible;

  cxDBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;

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
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;

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

  if DataSource1.Dataset.State = DsEdit then
  begin
    cxGrid3DBTableView2.NavigatorButtons.Insert.Enabled := False;
    cxGrid3DBTableView2.NavigatorButtons.Delete.Enabled := False;
    cxGrid3DBTableView2.NavigatorButtons.Append.Enabled := False;

    cxGrid3DBTableView2.OptionsData.Editing := True;
  end;

  Dm_Ar.QDBConfig.Close;
  Dm_Ar.QDBConfig.Open;
  DBEdit4.Properties.Readonly := Dm_Ar.QDBConfig.Fieldbyname('H_BLNO').asstring = 'Y';
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  BillDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
  DBEdit12.Properties.ReadOnly := true;
end;

procedure TArinv_3.InsBtnClick(Sender: TObject);
begin
  with Dm_Ar.QArpaytr do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = '''' ');
    Open;
    Insert;
  end;

  with Dm_Ar.QArpaytrn_Typ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO = '''' ');
    Open;
  end;

  with Dm_Ar.QArbilTr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = '''' ');
    Open;
  end;

  Dbedit1.Properties.Readonly := False;
  Billdate.Properties.ReadOnly := False;
  Dbedit7.Properties.Readonly := False;
  Dbedit11.Properties.Readonly := False;
end;

procedure TArinv_3.DBEdit1Change(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOCATCOD ');
    Params[0].Asstring := DBEdit1.Text;
    Open;
  end;
  Edit4.Text := Dm_Ar.Query1.FieldByName('LOCATNM').Asstring;
end;

procedure TArinv_3.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TArinv_3.SaveBtnClick(Sender: TObject);
var
  billno, Invno: string;
begin
  Edit3.SetFocus;
  if Dm_Ar.QArpaytrCancelid.AsString <> '' then
    sfMain.RaiseException(' ไม่สามารถบันทึกได้...ข้อมูลถูกยกเลิกแล้ว ');
  billno := Dm_Ar.QArpaytr.fieldbyname('BILLNO').asstring;
  Invno := Dm_Ar.QArpaytr.fieldbyname('INVNO').asstring;

  Dm_Ar.QArpaytrn_Typ.DisableControls;
  Dm_Ar.QArpaytrn_Typ.First;
  while not (Dm_Ar.QArpaytrn_Typ.Eof) do
  begin
    if (Dm_Ar.QArpaytrn_TypPAYCODE.AsString = '02') then
    begin
      if Dm_Ar.QArpaytrn_TypCHQNO.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดเลขที่เช็ค..!');
    end;

    if (Dm_Ar.QArpaytrn_TypPAYCODE.AsString = '10') then
    begin
      if Dm_Ar.QArpaytrn_TypBANKBOOKCOD.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดรหัสธนาคาร..!');
    end;

      {If (Dm_Ar.QArpaytrn_TypAMOUNT.Asfloat <= 0) Then  Dm_Ar.QArpaytrn_Typ.Delete
      else Dm_Ar.QArpaytrn_Typ.Next;}
    if (Dm_Ar.QArpaytrn_TypPAYCODE.AsString = '') then
      Dm_Ar.QArpaytrn_Typ.Delete
    else
      Dm_Ar.QArpaytrn_Typ.Next;
  end;
  Dm_Ar.QArpaytrn_Typ.EnableControls;

  if Dm_Ar.QArpaytrn_Typ.RecordCount = 0 then
  begin
    Dm_Ar.QArpaytrn_Typ.Append;
    SFMain.RaiseException('กรุณาบันทึกข้อมูลให้ครบก่อนบันทึก..!');
  end;

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN02_2', 'INSERT', Dm_Ar.QArpaytr.FieldByName('BILLNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN02_2', 'EDIT', Dm_Ar.QArpaytr.FieldByName('BILLNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Ar.QArpaytr.Post;

  with Dm_Ar.QArbiltr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = ' + '''' + Invno + '''' + ' AND FLGPAY = ''Y'' ');
    Open;
  end;

  with Dm_Ar.QArpaytr do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = ' + '''' + billno + '''' + '');
    Open;
  end;

  with Dm_Ar.QArpaytrn_Typ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO = ' + '''' + billno + '''' + '');
    Open;
  end;
end;

procedure TArinv_3.CancBtnClick(Sender: TObject);
begin
  Label2.Visible := False;
  if Dm_Ar.QArpaytr.Active then
    Dm_Ar.QArpaytr.Cancel;
  //if Dm_Ar.QArpaytrn_Typ.Active then
  Dm_Ar.QArpaytrn_Typ.Cancel;
end;

procedure TArinv_3.ClosBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TArinv_3.DelBtnClick(Sender: TObject);
begin
  if DBEdit4.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  if Dm_Ar.QArpaytrFLAG.AsString = 'C' then
    sfMain.RaiseException(' ข้อมูลถูกยกเลิกแล้ว ');

  if Dm_Ar.QArpaytrPOSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDFIN02_2', 'DELETE', Dm_Ar.QArpaytr.FieldByName('BILLNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dm_Ar.QArpaytrDelete;
      end;
  end;

  with Dm_Ar.QArpaytr do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = '''' ');
    Open;
  end;

  with Dm_Ar.QArbiltr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = '''' ');
    Open;
  end;
end;

procedure TArinv_3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Dm_Ar.QArpaytr.Active then
    Dm_Ar.QArpaytr.Close;
  if Dm_Ar.QArchq.Active then
    Dm_Ar.QArchq.Close;
  if Dm_Ar.QLastno.Active then
    Dm_Ar.QLastno.Close;
  if Dm_Ar.TArinvoi.Active then
    Dm_Ar.TArinvoi.Close;
  if Dm_Ar.QArbill1.Active then
    Dm_Ar.QArbill1.Close;

  Action := Cafree;
  Arinv_3 := nil;
end;

procedure TArinv_3.CanbtnClick(Sender: TObject);
begin
  if Dm_Ar.QArchq.Active then
    Dm_Ar.QArchq.Delete
end;

procedure TArinv_3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TArinv_3.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDFIN', 'HDFIN02_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TArinv_3.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  //fSrcDlgAR.Xpaycon := '%';
  if SFmain.XChgLoc = 'Y' then
    fSrcDlgAR.XSrLocat := ''
  else
    fSrcDlgAR.XSrLocat := SFmain.Xlocat;
  if fSrcDlgAR.ShowModalArBil = Mrok then
  begin
    with Dm_Ar.QArpaytr do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILLNO');
      Params[0].Asstring := fSrcDlgAR.Keyno;
      Open;
    end;
    if Dm_Ar.QArpaytr.Bof and Dm_Ar.QArpaytr.eof then
      sfMain.RaiseException('ไม่มีขอ้มูล');
    if Dm_Ar.QArpaytrFLAG.AsString = 'C' then
      Label2.Visible := True;

    with Dm_Ar.QArpaytrn_Typ do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO = :XBILNO ');
      Params[0].Asstring := fSrcDlgAR.Keyno;
      Open;
    end;

    with Dm_Ar.QArchq do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO = :XBILNO');
      Params[0].Asstring := Dm_Ar.QArpaytr.FieldByName('BILLNO').Asstring;
      Open;
    end;
    with Dm_AR.QArbill1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILL WHERE ARBILNO = :XARBILNO ');
      Params[0].Asstring := Dm_Ar.QArpaytr.FieldByName('INVNO').Asstring;
      Open;
    end;

    with Dm_Ar.QArbiltr1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = :XARBILNO AND FLGPAY = ''Y'' ');
      Params[0].Asstring := Dm_Ar.QArpaytr.FieldByName('INVNO').Asstring;
      Open;
    end;
    Dbedit1.Properties.Readonly := True;
    Billdate.Properties.Readonly := True;
    Dbedit7.Properties.Readonly := True;
    Dbedit11.Properties.Readonly := True;
  end;
end;

procedure TArinv_3.DBEdit1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalLocat = Mrok then
    Dm_Ar.QArpaytr.FieldByName('LOCAT').Asstring := fSrcDlgAR.Keyno;
end;

procedure TArinv_3.DBEdit7BtnClick(Sender: TObject);
begin
  if Dm_Ar.QArpaytr.FieldByName('Locat').Asstring = '' then
    sfMain.RaiseException('ยังไม่บันทึกรหัสสาขา');

  Application.CreateForm(THlp_Aray, Hlp_Aray);
  Hlp_Aray.DbGrid_PBill.Visible := true;
  if Hlp_Aray.ShowModal = MrOk then
  begin
    with Dm_AR.QArbill1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILL WHERE ARBILNO = :XARBILNO ');
      Params[0].Asstring := Hlp_Aray.QHlp.FieldByName('ARBILNO').Asstring;
      Open;
    end;
    if Dm_Ar.QArbill1.Bof and Dm_Ar.QArbill1.Eof then
      sfMain.RaiseException('ไม่มีรายการบิล');
    Dm_Ar.QArpaytr.FieldByName('INVNO').Asstring := Dm_Ar.QArbill1.FieldByName('ARBILNO').Asstring;
    Dm_Ar.QArpaytr.FieldByName('CUSCODE').Asstring := Dm_Ar.QArbill1.FieldByName('CUSCODE').Asstring;
    if Dm_Ar.QArpaytrPaytyp.Asstring = '02' then
    begin
      Dm_Ar.QArpaytr.FieldByName('CHQAMT').AsFloat := Dm_Ar.QArbill1.FieldByName('PAYAMT').AsFloat;
      Dm_Ar.QArpaytr.FieldByName('NETTOT').AsFloat := Dm_Ar.QArbill1.FieldByName('PAYAMT').AsFloat;
    end
    else
    begin
      Dm_Ar.QArpaytr.FieldByName('CSHAMT').AsFloat := Dm_Ar.QArbill1.FieldByName('PAYAMT').AsFloat;
      Dm_Ar.QArpaytr.FieldByName('NETTOT').AsFloat := Dm_Ar.QArbill1.FieldByName('PAYAMT').AsFloat;
    end;

    with Dm_Ar.QArbiltr1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = :XBILNO AND FLGPAY = ''Y'' ');
      Params[0].Asstring := Hlp_Aray.QHlp.FieldByName('ARBILNO').Asstring;
      Open;
    end;
  end;
end;

procedure TArinv_3.FldCombo2BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalBook = Mrok then
    Dm_Ar.QArpaytr.FieldByName('BOOKNO').Asstring := fSrcDlgAR.KeyNo;
end;

procedure TArinv_3.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArinv_3.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalLocat = Mrok then
    Dm_Ar.QArpaytr.FieldByName('LOCAT').Asstring := fSrcDlgAR.Keyno;
end;

procedure TArinv_3.DBEdit1PropertiesChange(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :0 ');
    Params[0].Asstring := DBEdit1.Text;
    Open;
  end;
  Edit4.Text := Dm_Ar.Query1.FieldByName('LOCATNM').Asstring;
end;

procedure TArinv_3.DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalPAYTYP = Mrok then
    Dm_Ar.QArpaytr.FieldByName('PAYTYP').Asstring := fSrcDlgAR.Keyno;
end;

procedure TArinv_3.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Dm_Ar.QArpaytr.FieldByName('Locat').Asstring = '' then
    sfMain.RaiseException('ยังไม่บันทึกรหัสสาขา');

  Application.CreateForm(THlp_Aray, Hlp_Aray);
  Hlp_Aray.XSrLocat := Dm_Ar.QArpaytr.FieldByName('Locat').Asstring;
  Hlp_Aray.DbGrid_PBill.Visible := true;

  if Hlp_Aray.ShowModal = MrOk then
  begin
    with Dm_AR.QArbill1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILL WHERE ARBILNO = :XARBILNO ');
      Params[0].Asstring := Hlp_Aray.QHlp.FieldByName('ARBILNO').Asstring;
      Open;
    end;
    if Dm_Ar.QArbill1.Bof and Dm_Ar.QArbill1.Eof then
      sfMain.RaiseException('ไม่มีรายการบิล');

    SFMain.Do_Show_DisplayFormat_Floating(Dm_AR.QArbill1);
    Dm_Ar.QArpaytr.FieldByName('INVNO').Asstring := Dm_Ar.QArbill1.FieldByName('ARBILNO').Asstring;
    Dm_Ar.QArpaytr.FieldByName('CUSCODE').Asstring := Dm_Ar.QArbill1.FieldByName('CUSCODE').Asstring;
    if Dm_Ar.QArpaytrPaytyp.Asstring = '02' then
    begin
      Dm_Ar.QArpaytr.FieldByName('CHQAMT').AsFloat := Dm_Ar.QArbill1.FieldByName('PAYAMT').AsFloat;
      Dm_Ar.QArpaytr.FieldByName('NETTOT').AsFloat := Dm_Ar.QArbill1.FieldByName('PAYAMT').AsFloat - Dm_Ar.QArbill1.FieldByName('DEPOSIT_AMNT').AsFloat;
    end
    else
    begin
      Dm_Ar.QArpaytr.FieldByName('CSHAMT').AsFloat := Dm_Ar.QArbill1.FieldByName('PAYAMT').AsFloat;
      Dm_Ar.QArpaytr.FieldByName('NETTOT').AsFloat := Dm_Ar.QArbill1.FieldByName('PAYAMT').AsFloat - Dm_Ar.QArbill1.FieldByName('DEPOSIT_AMNT').AsFloat;
    end;

    with Dm_Ar.QArbiltr1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = :XBILNO AND FLGPAY  = ''Y'' AND REFBILLNO = '''' ');
      Params[0].Asstring := Hlp_Aray.QHlp.FieldByName('ARBILNO').Asstring;
      Open;
    end;
  end;
end;

procedure TArinv_3.DBEdit3PropertiesChange(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCUSCOD ');
    Params[0].Asstring := DBEdit3.Text;
    Open;
  end;
  Edit3.Text := Dm_Ar.Query1.Fieldbyname('Snam').asstring + ' ' +
    Dm_Ar.Query1.Fieldbyname('Name1').asstring + ' ' +
    Dm_Ar.Query1.Fieldbyname('Name2').asstring;
end;

procedure TArinv_3.BilldateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Ar.QArpaytr.fieldbyname('BILLDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Ar.QArpaytr.fieldbyname('BILLDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Ar.QArpaytr.fieldbyname('BILLDT').AsDateTime := Dm_Ar.QArpaytr.fieldbyname('BILLDT').AsDateTime;
  end;
end;

procedure TArinv_3.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
//  IF Uppercase(NAME)='DATETHAI' Then
//  Begin
//     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
//  End;
end;

procedure TArinv_3.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PBILLNO' then
    Value := DBEdit4.Text;
end;

procedure TArinv_3.actEditPrnExecute(Sender: TObject);
begin
  if cxRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_BillArPay.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSvBillNo.fr3', '2');
end;

procedure TArinv_3.PrnBtnClick(Sender: TObject);
begin
  if DBEdit4.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  if cxRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_BillArPay.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSvBillNo.fr3', '1');
end;

procedure TArinv_3.FormShow(Sender: TObject);
begin
  with Dm_Ar.QArpaytr do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = '''' ');
    Open;
  end;

  with Dm_Ar.QArpaytrn_Typ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO = '''' ');
    Open;
  end;

  with Dm_Ar.QArbiltr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = '''' ');
    Open;
  end;
end;

procedure TArinv_3.cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPAYTYP = Mrok then
  begin
    if (Dm_Ar.QArpaytr.state in Dseditmodes) and (Dm_Ar.QArpaytrn_Typ.State = Dsbrowse) then
      Dm_Ar.QArpaytrn_Typ.Edit;
    Dm_Ar.QArpaytrn_Typ.FieldByname('PAYCODE').Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TArinv_3.cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Dm_Ar.QArpaytrn_Typ.FieldByName('PAYCODE').AsString = '02' then
  begin
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalBak = Mrok then
    begin
      Dm_Ar.QArpaytrn_Typ.Edit;
      Dm_Ar.QArpaytrn_Typ.FieldByname('BANKBOOKCOD').Asstring := fSrcDlg.Keyno;
    end;
  end
  else
  begin
    Application.CreateForm(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalBankbook = MrOk then
    begin
      Dm_Ar.QArpaytrn_Typ.Edit;
      Dm_Ar.QArpaytrn_Typ.FieldByName('BANKBOOKCOD').AsString := fSrcDlg.Keyno;
      Dm_Ar.QArpaytrn_Typ.FieldByName('BANKLOCAT').AsString := fSrcDlg.qrFindDat.fieldbyname('BANKLOCNAM').AsString;
    end;
  end;
end;

end.

