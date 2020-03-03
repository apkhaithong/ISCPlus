unit Arinv04;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Dbkbd, ComCtrls,
  ImgList, ToolWin, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxRadioGroup, AdvGlowButton, AdvToolBar, AdvPanel, cxButtonEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, Menus, cxButtons,
  ActnList, cxGraphics, cxLookAndFeels, dxDateRanges, System.Actions, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxImageComboBox, cxCurrencyEdit, BusinessSkinForm, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxStatusBar, frxDCtrl, frxBDEComponents,
  frxExportPDF, frxExportCSV, frxCross, frxExportImage, frxClass,
  frxExportBaseDialog, frxExportXLSX, frxRich, frxGradient, frxChBox,
  frxTableObject, frxFDComponents, frxChart, frxBarcode;

type
  TArinv_4 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label2: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Edit5: TcxTextEdit;
    Edit2: TcxTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBText1: TcxDBTextEdit;
    DBText2: TcxDBTextEdit;
    Billdate: TcxDBDateEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit7: TcxDBButtonEdit;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxGroupBox1: TcxGroupBox;
    Label31: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    Label9: TLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label35: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    DBText10: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit28: TcxDBTextEdit;
    DBEdit35: TcxDBTextEdit;
    DBEdit29: TcxDBTextEdit;
    Bevel1: TBevel;
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
    frxBarCodeObject1: TfrxBarCodeObject;
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
    frxDialogControls1: TfrxDialogControls;
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure ClosBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanbtnClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnqBtnClick(Sender: TObject);
    procedure DBEdit1BtnClick(Sender: TObject);
    procedure DBEdit7BtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FldCombo1BtnClick(Sender: TObject);
    procedure FldCombo2BtnClick(Sender: TObject);
    procedure FldCombo3BtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FbtLocatClick(Sender: TObject);
    procedure FbtRefinvClick(Sender: TObject);
    procedure FbtBookClick(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure cxDBGridTranBKCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Arinv_4: TArinv_4;

implementation

uses
  DmAr, USoftFirm, functn01, EntrChq, DmSet1, SrchDlgar, Prnbil101, uSrcDlgAR,
  unfrPreview, Dmsec, uSrcDlg;
{$R *.DFM}

procedure TArinv_4.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  DelBtn.Visible := (DataSource1.DataSet.State = DsBrowse) and
    (Dm_ar.QArpaytrFLAG.Value <> 'C') and (DBkbd1.AllowDelete) and (DBEdit4.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.DataSet.State in DsEditModes);
  CancBtn.Visible := SavBtn.Visible;
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit4.Text <> '');

  cxGrid3DBTableView2.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Append.Enabled := SavBtn.Visible;

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

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
      end;
    end;
  end
  else if DataSource1.Dataset.State = DsInsert then
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

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end
  else if DataSource1.Dataset.State = DsEdit then
  begin
    DBEdit35.Enabled := True;
    DBEdit35.Style.Color := clWhite;

    cxGrid3DBTableView2.NavigatorButtons.Insert.Enabled := False;
    cxGrid3DBTableView2.NavigatorButtons.Delete.Enabled := False;
    cxGrid3DBTableView2.NavigatorButtons.Append.Enabled := False;

    cxGrid3DBTableView2.OptionsData.Editing := True;
  end;

  if not (Dm_Ar.QDBConfig.Active) then
    Dm_Ar.QDBConfig.Open;
  DBEdit4.Properties.Readonly := Dm_Ar.QDBConfig.Fieldbyname('H_BLNO').asstring = 'Y';
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  BillDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TArinv_4.InsBtnClick(Sender: TObject);
begin
  with Dm_Ar.QArpaytr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = '''' ');
    Open;
    Insert;
  end;

  with Dm_Ar.QArpaytrn_Typ1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO = '''' ');
    Open;
  end;

  with Dm_Ar.QArinv2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = '''' ');
    Open;
  end;

  DBEdit1.SetFocus;
end;

procedure TArinv_4.DBEdit1Change(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOCATCOD ');
    Params[0].Asstring := DBEdit1.Text;
    Open;
  end;
  Edit5.Text := Dm_Ar.Query1.fieldbyname('locatnm').AsString;
end;

procedure TArinv_4.DBEdit6Change(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT Snam,Name1,Name2 FROM CUSTMAST WHERE CUSCOD = :0 ');
    Params[0].Asstring := DBEdit6.Text;
    Open;
  end;
  Edit2.Text := Dm_Ar.Query1.Fieldbyname('Snam').asstring + ' ' +
    Dm_Ar.Query1.Fieldbyname('Name1').asstring + '  ' +
    Dm_Ar.Query1.Fieldbyname('Name2').asstring;
end;

procedure TArinv_4.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDFIN', 'HDFIN02_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TArinv_4.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TArinv_4.SavBtnClick(Sender: TObject);
begin
  if DBEdit7.Text = '' then
    sfmain.RaiseException('กรุณาอ้างอิงใบส่งสินค้า..!');

  if Dm_Ar.QArpaytr1Cancelid.AsString <> '' then
    SFMain.RaiseException(' ไม่สามารถบันทึกได้...ข้อมูลถูกยกเลิกแล้ว ');

  if Dm_Ar.QArpaytr1Nettot.Asfloat = 0 then
    SFMain.RaiseException('ยอดรับชำระเป็น 0');

  Dm_Ar.QArpaytrn_Typ1.DisableControls;
  Dm_Ar.QArpaytrn_Typ1.First;
  while not (Dm_Ar.QArpaytrn_Typ1.Eof) do
  begin
    if (Dm_Ar.QArpaytrn_Typ1PAYCODE.AsString = '02') then
    begin
      if Dm_Ar.QArpaytrn_Typ1CHQNO.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดเลขที่เช็ค..!');
    end;

    if (Dm_Ar.QArpaytrn_Typ1PAYCODE.AsString = '10') then
    begin
      if Dm_Ar.QArpaytrn_Typ1BANKBOOKCOD.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดรหัสธนาคาร..!');
    end;

      {If (Dm_Ar.QArpaytrn_Typ1AMOUNT.Asfloat <= 0) Then  Dm_Ar.QArpaytrn_Typ1.Delete
      else Dm_Ar.QArpaytrn_Typ1.Next;  }
    if (Dm_Ar.QArpaytrn_Typ1PAYCODE.AsString = '') then
      Dm_Ar.QArpaytrn_Typ1.Delete
    else
      Dm_Ar.QArpaytrn_Typ1.Next;
  end;
  Dm_Ar.QArpaytrn_Typ1.EnableControls;

  if Dm_Ar.QArpaytrn_Typ1.RecordCount = 0 then
  begin
    Dm_Ar.QArpaytrn_Typ1.Append;
    SFMain.RaiseException('กรุณาบันทึกข้อมูลให้ครบก่อนบันทึก..!');
  end;

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN02_3', 'INSERT', DBEdit4.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN02_3', 'EDIT', DBEdit4.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Ar.QArpaytr1.Post;
end;

procedure TArinv_4.CancBtnClick(Sender: TObject);
begin
  Label2.Visible := False;
  with Dm_Ar.QArchq do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO = :XBILLNO ');
    Params[0].Asstring := Dm_Ar.QArpaytr1.FieldByName('BILLNO').asstring;
    Open;
  end;
  Dm_Ar.QArchq.First;
  while not Dm_Ar.QArchq.Eof do
  begin
    Dm_Ar.QArchq.Edit;
    Dm_Ar.QArchq.Delete;
  end;

  if Dm_Ar.QArpaytr1.Active then
    Dm_Ar.QArpaytr1.Cancel;
  //if Dm_Ar.QArpaytrn_Typ1.Active then
  Dm_Ar.QArpaytrn_Typ1.Cancel;
end;

procedure TArinv_4.ClosBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TArinv_4.DelBtnClick(Sender: TObject);
begin
  if Dm_Ar.QArpaytr1FLAG.AsString = 'C' then
    SFMain.RaiseException(' ข้อมูลถูกยกเลิกแล้ว ');

  {If Not Dm_Ar.QArinv2.Active Then
     SFMain.RaiseException('เป็นใบเสร็จที่เกิดจากการรับชำระประเภทขายสด ดูเลข Invoice แล้วไปยกเลิกการรับชำระที่ระบบนั้นๆ');}

  if Dm_Ar.QArpaytr1POSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDFIN02_3', 'CANCEL', DBEdit4.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dm_Ar.QArpaytr1Cancel;
      end;
  end;

  with Dm_Ar.QArpaytr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO =:edit1');
    params[0].AsString := DBEdit4.Text;
    Open;
  end;

  with Dm_Ar.QArpaytrn_Typ1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  *  FROM  ARPAYTRN_TYP WHERE BILLNO=:edit1');
    params[0].AsString := DBEdit4.Text;
    Open;
  end;
end;

procedure TArinv_4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Dm_Ar.QArpaytr1.Active then
    Dm_Ar.QArpaytr1.Close;
  if Dm_Ar.QLastno.Active then
    Dm_Ar.QLastno.Close;
  if Dm_Ar.QArinv2.Active then
    Dm_Ar.QArinv2.Close;
  if Dm_Ar.QArchq.Active then
    Dm_Ar.QArchq.Close;
  if Dm_Ar.QAr_Serv1.Active then
    Dm_Ar.QAr_Serv1.Close;
  if Dm_Ar.QArcred.Active then
    Dm_Ar.QArcred.Close;
  if Dm_Ar.QArfinc.Active then
    Dm_Ar.QArfinc.Close;
  if Dm_Ar.QOthinv.Active then
    Dm_Ar.QOthinv.Close;

  Action := Cafree;
  Arinv_4 := nil;
end;

procedure TArinv_4.CanbtnClick(Sender: TObject);
begin
  if Dm_Ar.QArchq.Active then
    Dm_Ar.QArchq.Delete
end;

procedure TArinv_4.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFChqinp, FChqinp);
  FChqinp.ShowModal;
end;

procedure TArinv_4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
    Vk_F9:
      PrnBtnClick(Sender);
    Vk_F7:
      EnqBtnClick(Sender);
    Vk_ESCAPE:
      CancBtnClick(Sender);
    Vk_F3:
      DBEdit7Btnclick(Sender);
    Vk_F8:
      if DelBtn.Visible then
        DelBtnClick(Sender);
    Vk_F2:
      if SavBtn.Visible then
        SavBtnClick(Sender);
    Vk_F5:
      if InsBtn.Visible then
        InsBtnClick(Sender);
  end;
end;

procedure TArinv_4.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  fSrcDlgAR.Xpaycon := '1';
  if sfmain.XChgLoc = 'Y' then
    fSrcDlgAR.XSrLocat := ''
  else
    fSrcDlgAR.XSrLocat := sfmain.Xlocat;
  if fSrcDlgAR.ShowModalArBil = Mrok then
  begin
    with Dm_Ar.QArpaytr1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILLNO');
      Params[0].Asstring := fSrcDlgAR.Keyno;
      Open;
    end;

    if Dm_Ar.QArpaytr1.Bof and Dm_Ar.QArpaytr1.eof then
      SFMain.RaiseException('ไม่มีขอ้มูล');

    if Dm_Ar.QArpaytr1FLAG.AsString = 'C' then
      Label2.Visible := True
    else
      Label2.Visible := False;

    with Dm_Ar.QArpaytrn_Typ1 do
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
      Params[0].Asstring := Dm_Ar.QArpaytr1.FieldByName('BILLNO').Asstring;
      Open;
    end;
{    with Dm_Ar.QArpay do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAY WHERE INVNO = :XINVNO ');
      Params[0].Asstring := Dm_Ar.QArpaytr1.FieldByName('INVNO').Asstring;
      Open;
    end; }
    //
    with Dm_Ar.QArinv2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = :XINVNO ');
      Params[0].Asstring := Dm_Ar.QArpaytr1INVNO.Asstring;
      Open;
      if Bof and Eof then
        Dm_Ar.QArinv2.Close;
    end;
  end;
end;

procedure TArinv_4.DBEdit1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalLocat = Mrok then
  begin
    Dm_Ar.QArpaytr1.FieldByName('LOCAT').Asstring := fSrcDlgAR.KeyNo;
  end;
end;

procedure TArinv_4.DBEdit7BtnClick(Sender: TObject);
begin
  if Dm_Ar.QArpaytr1.FieldByName('Locat').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสสาขา');

  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalArinv = Mrok then
  begin
    Dm_Ar.QArpaytr1.FieldByName('INVNO').Asstring := fSrcDlgAR.Keyno;
  end;
end;

procedure TArinv_4.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_BillArPayA.fr3','1');
end;

procedure TArinv_4.FldCombo1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalBak = Mrok then
    Dm_Ar.QArpaytr1.FieldByName('BKCODE').Asstring := fSrcDlgAR.KeyNo;
end;

procedure TArinv_4.FldCombo2BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalBook = Mrok then
    Dm_Ar.QArpaytr1.FieldByName('BOOKNO').Asstring := fSrcDlgAR.KeyNo;
end;

procedure TArinv_4.FldCombo3BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalPAYFOR = Mrok then
    Dm_Ar.QArpaytr1.FieldByName('PAYFOR').Asstring := fSrcDlgAR.Keyno;
end;

procedure TArinv_4.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArinv_4.FbtLocatClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalLocat = Mrok then
  begin
    Dm_Ar.QArpaytr1.FieldByName('LOCAT').Asstring := fSrcDlgAR.KeyNo;
  end;
end;

procedure TArinv_4.FbtRefinvClick(Sender: TObject);
begin
  if Dm_Ar.QArpaytr1.FieldByName('Locat').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสสาขา');

  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalArinv = Mrok then
  begin
    Dm_Ar.QArpaytr1.FieldByName('INVNO').Asstring := fSrcDlgAR.Keyno;
  end;
end;

procedure TArinv_4.FbtBookClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalBook = Mrok then
    Dm_Ar.QArpaytr1.FieldByName('BOOKNO').Asstring := fSrcDlgAR.KeyNo;
end;

procedure TArinv_4.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalLocat = Mrok then
    Dm_Ar.QArpaytr1.FieldByName('LOCAT').Asstring := fSrcDlgAR.KeyNo;
end;

procedure TArinv_4.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Dm_Ar.QArpaytr1.FieldByName('Locat').Asstring = '' then
    sfMain.RaiseException('ยังไม่บันทึกรหัสสาขา');

  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if sfmain.XChgLoc = 'Y' then
    fSrcDlgAR.XSrLocat := ''
  else
    fSrcDlgAR.XSrLocat := sfmain.Xlocat;
  if fSrcDlgAR.ShowModalArinv = Mrok then
    Dm_Ar.QArpaytr1.FieldByName('INVNO').Asstring := fSrcDlgAR.Keyno;
end;

procedure TArinv_4.FormShow(Sender: TObject);
begin
  with Dm_Ar.QArpaytr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = '''' ');
    Open;
  end;

  with Dm_Ar.QArpaytrn_Typ1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO = '''' ');
    Open;
  end;

  with Dm_Ar.QArinv2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = '''' ');
    Open;
  end;
end;

procedure TArinv_4.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//      BEGIN
//         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//         VAL := SFMain.n2wBill.Text;
//      END;
end;

procedure TArinv_4.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'PBILLNO' then
    Value := DBEdit4.text;
end;

procedure TArinv_4.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_BillArPayA.fr3','2');
end;

procedure TArinv_4.cxDBGridTranBKCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDLG, fSrcDLG);
  if fSrcDLG.ShowModalBak = Mrok then
  begin
    Dm_Ar.QArchq.Edit;
    Dm_Ar.QArChq.FieldByName('BKCODE').Asstring := fSrcDLG.KeyNo;
  end;
end;

procedure TArinv_4.cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPAYTYP = Mrok then
  begin
    if (Dm_Ar.QArpaytr1.state in Dseditmodes) and (Dm_Ar.QArpaytrn_Typ1.State = Dsbrowse) then
      Dm_Ar.QArpaytrn_Typ1.Edit;
    Dm_Ar.QArpaytrn_Typ1.FieldByname('PAYCODE').Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TArinv_4.cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Dm_Ar.QArpaytrn_Typ1.FieldByName('PAYCODE').AsString = '02' then
  begin
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalBak = Mrok then
    begin
      Dm_Ar.QArpaytrn_Typ1.Edit;
      Dm_Ar.QArpaytrn_Typ1.FieldByname('BANKBOOKCOD').Asstring := fSrcDlg.Keyno;
    end;
  end
  else
  begin
    Application.CreateForm(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalBankbook = MrOk then
    begin
      Dm_Ar.QArpaytrn_Typ1.Edit;
      Dm_Ar.QArpaytrn_Typ1.FieldByName('BANKBOOKCOD').AsString := fSrcDlg.Keyno;
      Dm_Ar.QArpaytrn_Typ1.FieldByName('BANKLOCAT').AsString := fSrcDlg.qrFindDat.fieldbyname('BANKLOCNAM').AsString;
    end;
  end;
end;

end.

