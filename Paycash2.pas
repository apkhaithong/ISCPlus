unit Paycash2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ComCtrls, ExtCtrls, DB,
  Dbkbd, ToolWin, ImgList, AdvGlowButton, AdvToolBar, AdvPanel, cxButtonEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls, cxContainer,
  cxEdit, cxTextEdit, Menus, cxLookAndFeelPainters, cxButtons, ActnList,
  cxGraphics, cxLookAndFeels, cxNavigator, dxDateRanges, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxImageComboBox,
  cxCurrencyEdit, BusinessSkinForm, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, dxStatusBar, frxExportXLSX, frxRich, frxTableObject, frxClass,
  frxDCtrl, frxFDComponents, frxGradient, frxExportImage, frxExportPDF,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFCashpay2 = class(TForm)
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Query1: TFDQuery;
    Label41: TLabel;
    Label15: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label37: TLabel;
    Label24: TLabel;
    Edit4: TcxTextEdit;
    DBEdit3: TcxDBTextEdit;
    RzDBLabel1: TcxDBTextEdit;
    RzDBLabel2: TcxDBTextEdit;
    RzDBLabel3: TcxDBTextEdit;
    Edit2: TcxTextEdit;
    RecvDate: TcxDBDateEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit11: TcxDBButtonEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
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
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxGradientObject1: TfrxGradientObject;
    frxFDComponents1: TfrxFDComponents;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EnqBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FbtCuscodClick(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure DBEdit11PropertiesChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure cxDBGridTranBKCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    Xinvno, Xlocat, XTaxno: string;
    XBilldt: TDateTime;
    { Public declarations }
  end;

var
  FCashpay2: TFCashpay2;

implementation

uses
  Dmfinc, HlpBill, Hlpdev, Srchdlg1, uSrcDlg, uSrcDlg1, EntrChq, Spprn50,
  USoftFirm, DmAr, unfrPreview, Dmsec, PayCrdt2;
{$R *.DFM}

procedure TFCashpay2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with Dm_Finc.QAr_ServC2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM AR_SERV WHERE DEVNO =:XTAXNO');
    PARAMS[0].ASSTRING := XInvno;
    OPEN;
  end;
  Dm_Finc.QArChq.Close;
  Dm_Finc.QArpaytrn_Typ.Close;
  Dm_Finc.QArpaytrn1.close;
  Dm_Finc.QAr_Serv1.Close;
  Action := Cafree;
end;

procedure TFCashpay2.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  SavBtn.Visible := (DataSource1.Dataset.State in Dseditmodes) and
    (Dm_Finc.QArpaytrn1.Fieldbyname('Cancelid').asstring = '');
  //InsBtn.Visible  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert) ;
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit17.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  CancBtn.Visible := SavBtn.Visible;
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit17.Text <> '');

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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
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
  end
  else if DataSource1.Dataset.State = DsEdit then
  begin

  end;

  if not Dm_Finc.QDBConfig.Active then
    DM_Finc.QDBConfig.Open;
  DBEdit17.Properties.Readonly := Dm_Finc.QDBConfig.Fieldbyname('H_BLNO').asstring = 'Y';
end;

procedure TFCashpay2.CancBtnClick(Sender: TObject);
begin
  if Dm_Finc.QArpayTrn1.State in Dseditmodes then
    Dm_Finc.QArpayTrn1.cancel;

  with Dm_Finc.QArpaytrn1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILNO ');
    Params[0].Asstring := '';
    Open;
  end;

  with Dm_Finc.QArpaytrn_Typ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO = :XBILNO ');
    Params[0].Asstring := '';
    Open;
  end;

  with Dm_Finc.QArmast1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD= :XCUSNO  ');
    Params[0].Asstring := '';
    Open;
  end;
  with Dm_Finc.QAr_Serv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TFCashpay2.SavBtnClick(Sender: TObject);
var
  S: string;
begin
  if DBEdit6.Text = '' then
    sfmain.RaiseException('ไม่พบเลขที่ใบส่งสินค้า..!');

  Dm_Finc.QArpaytrn_Typ.DisableControls;
  Dm_Finc.QArpaytrn_Typ.First;
  while not (Dm_Finc.QArpaytrn_Typ.Eof) do
  begin
    if (Dm_Finc.QArpaytrn_TypPAYCODE.AsString = '02') then
    begin
      if Dm_Finc.QArpaytrn_TypCHQNO.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดเลขที่เช็ค..!');
    end;

    if (Dm_Finc.QArpaytrn_TypPAYCODE.AsString = '10') then
    begin
      if Dm_Finc.QArpaytrn_TypBANKBOOKCOD.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดรหัสธนาคาร..!');
    end;

      {If (Dm_Finc.QArpaytrn_TypAMOUNT.Asfloat <= 0) Then  Dm_Finc.QArpaytrn_Typ.Delete
      else  Dm_Finc.QArpaytrn_Typ.Next; }
    Dm_Finc.QArpaytrn_Typ.Next;
  end;
  Dm_Finc.QArpaytrn_Typ.EnableControls;

  if Dm_Finc.QArpaytrn_Typ.RecordCount = 0 then
  begin
    Dm_Finc.QArpaytrn_Typ.Append;
    SFMain.RaiseException('กรุณาบันทึกข้อมูลให้ครบก่อนบันทึก..!');
  end;

  if DBEdit6.Text <> XInvno then
    sfmain.RaiseException('ใบส่งสินค้าที่อ้างอิงไม่ตรงกับเอกสารต้นทาง..!');

  S := Dm_Finc.QArpaytrn1.FieldByName('Billno').Asstring;
  if Dm_Finc.QArpayTrn1.State in Dseditmodes then
    Dm_Finc.QArpayTrn1.Post;
  with Dm_Finc.QArpaytrn1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO=:XBILNO');
    Params[0].Asstring := S;
    Open;
  end;

  with Dm_Finc.QAr_Serv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO=:XDVNO');
    Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('INVNO').Asstring;
    Open;
  end;

  with Dm_Finc.QArChq do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO=:XBILNO');
    Params[0].asstring := Dm_Finc.QArpaytrn1.FieldByName('BILLNO').Asstring;
    Open;
  end;
end;

procedure TFCashpay2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFCashpay2.EnqBtnClick(Sender: TObject);
var
  S: string;
begin
  Application.CreateForm(TFhlpBill, FhlpBill);
  if sfmain.XChgLoc = 'Y' then
    FhlpBill.XSrLocat := ''
  else
    FhlpBill.XSrLocat := sfmain.Xlocat;
  FhlpBill.XFlag := '1';
  if FhlpBill.ShowModal = MrOk then
  begin
    with Dm_Finc.QArpaytrn1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILNO ');
      Params[0].Asstring := FhlpBill.Qhelp.FieldByName('BILLNO').Asstring;
      Open;
    end;
    if Dm_Finc.QArpaytrn1.Fieldbyname('Cancelid').asstring <> '' then
      Label23.Visible := True
    else
      Label23.Visible := False;

    with Dm_Finc.QArpaytrn_Typ do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO = :XBILNO ');
      Params[0].Asstring := FhlpBill.Qhelp.FieldByName('BILLNO').Asstring;
      Open;
    end;

    with Dm_Finc.QAr_Serv1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
      Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('INVNO').Asstring;
      Open;
      if Dm_Finc.QAr_serv1.Bof and Dm_Finc.QAr_serv1.eof then
        SFMain.RaiseException('ไม่พบใบส่งของชั่วคราว');
    end;
   //
    if Dm_Finc.QAr_Serv1.Fieldbyname('Temptax').Asstring = 'Y' then
    begin
      with Dm_Finc.QTaxsal do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO=:XTAXNO ');
        Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('BILLNO').Asstring;
        Open;
      end;
    end;
   //
    with Dm_Finc.QArChq do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO=:XBILNO  ');
      Params[0].asstring := Dm_Finc.QArpaytrn1.FieldByName('BILLNO').Asstring;
      Open;
    end;
   //
    with Dm_Finc.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PAYTYP Where Paycode=:edit1');
      Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring;
      Open;
    end;

    if Dm_Finc.QAr_serv1.FieldByName('PTYPE').Asstring = 'C' then
    begin
      with Dm_Finc.QArinvoi do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM ARINVOI WHERE INVNO=:EDIT1 ');
        Params[0].asstring := Dm_Finc.QAr_serv1.FieldByName('DEVNO').Asstring;
        Open;
        if not (BOF and EOF) then
        begin
          Label24.Caption := 'ยอดคืนสินค้า :     ' + Floattostr(Dm_Finc.QArinvoi.FieldByName('RTNAMT').Asfloat);
        end;
      end;
    end;
  end;
end;

procedure TFCashpay2.DelBtnClick(Sender: TObject);
var
  XYear, XMonth, XDay: Word;
begin
  sfmain.Do_Chk_DatainGL('ACCGLMST', 'REFDOCNO', Dm_Finc.QArpaytrn1BILLNO.AsString);

  if Dm_Finc.QArpaytrn1.Fieldbyname('Cancelid').asstring <> '' then
    SFMain.RaiseException('ถูกยกเลิกแล้ว');

  if Dm_Finc.QArpaytrn1POSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  if not Dm_Finc.Condpay.Active then
    Dm_Finc.Condpay.Open;
  DecodeDate(Dm_Finc.QArpaytrn1BILLDT.Asdatetime, XYear, XMonth, XDay);
  if Dm_Finc.Condpay.Fieldbyname('Curyear').Asstring > Inttostr(XYear) then
    SFMain.RaiseException('ปิดบัญชีสิ้นปีแล้ว ยกเลิกข้อมูลเก่าไม่ได้');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        with Query1 do
        begin
          close;
          sql.Clear;
          sql.Add('update ar_serv set taxno = '''',taxdate = null,smpay = 0,' +
            'smchq = 0,reduaft = 0,kang = tottax,lpaid = null ' +
            'where DEVNO =:edit1');
          params[0].AsString := Dm_Finc.QArpaytrn1.Fieldbyname('INVNO').Asstring;
          execSql;
        end;

        if (Dm_Finc.QAr_Serv1.Fieldbyname('Temptax').Asstring = 'Y') and (Dm_Finc.QTaxsal.FieldByName('Taxno').Asstring <> '') then
        begin
          Dm_Finc.QTaxsal.Edit;
          Dm_Finc.QTaxsal.Fieldbyname('Cancelid').Asstring := SFMain.XUser_id;
          Dm_Finc.QTaxsal.Fieldbyname('CanDat').Asdatetime := Now;
          Dm_Finc.QTaxsal.Post;
        end;

        if Dm_Finc.QArpaytrn1.State = Dsbrowse then
          Dm_Finc.QArpaytrn1.Edit;
        Dm_Finc.QArpaytrn1.Fieldbyname('Cancelid').Asstring := SFMain.XUser_id;
        Dm_Finc.QArpaytrn1.Fieldbyname('Invno').Asstring := '';
        Dm_Finc.QArpaytrn1.Fieldbyname('Taxno').Asstring := '';
        Dm_Finc.QArpaytrn1.Fieldbyname('CanDat').Asdatetime := Now;
        Dm_Finc.QArpaytrn1.Fieldbyname('Flag').Asstring := 'C';

        if (Dm_Finc.QAr_serv1.FieldByName('PTYPE').Asstring = 'C') then
        begin
          if not (Dm_Finc.QArinvoi.Bof and Dm_Finc.QArinvoi.Eof) then
          begin
            Dm_Finc.QArinvoi.Edit;
            if Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '02' then
              Dm_Finc.QArinvoi.Fieldbyname('Smchq').Asfloat := Dm_Finc.QArinvoi.Fieldbyname('SmChq').Asfloat - Dm_Finc.QArpaytrn1CHQAMT.asfloat
            else
              Dm_Finc.QArinvoi.Fieldbyname('Smpay').Asfloat := Dm_Finc.QArinvoi.Fieldbyname('Smpay').Asfloat - Dm_Finc.QArpaytrn1CSHAMT.asfloat;
            Dm_Finc.QArinvoi.Fieldbyname('Kang').Asfloat := Dm_Finc.QArinvoi.Fieldbyname('Nettotal').Asfloat - (Dm_Finc.QArinvoi.Fieldbyname('Smpay').Asfloat + Dm_Finc.QArinvoi.Fieldbyname('SmChq').Asfloat);
            Dm_Finc.QArinvoi.Post;
          end;
        end;

        Dm_Finc.QArpaytrn1.Post;
        CancBtnClick(Sender);
      end;
  end;
end;

procedure TFCashpay2.SpeedButton8Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalAR = Mrok then
  begin
    Dm_Finc.QArpaytrn1.FieldByName('CUSCODE').Asstring := fSrcDlg1.KeyNo;
  end;
end;

procedure TFCashpay2.DBEdit6Change(Sender: TObject);
begin
  if DBedit6.Text <> '' then
  begin
    RecvDate.Enabled := True;
  end;
  if Dm_Finc.QAr_serv1.FieldByName('PTYPE').Asstring = 'C' then
  begin
    Label24.Caption := 'ยอดคืนสินค้า :     ' + Floattostr(Dm_Finc.QArinvoi.FieldByName('RTNAMT').Asfloat);
  end;
end;

procedure TFCashpay2.SpeedButton5Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if Dm_Finc.Condpay.Fieldbyname('TempTax').Asstring <> 'Y' then
  begin
    if fSrcDlg1.ShowModalTAXNO = Mrok then
    begin
      with Dm_Finc.QAr_serv1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
        Params[0].Asstring := fSrcDlg1.Keyno;
        Open;
        if Dm_Finc.QAr_serv1.Bof and Dm_Finc.QAr_serv1.eof then
          SFMain.RaiseException('ไม่พบใบส่งของ');
      end;
      if Dm_Finc.QAr_serv1.Fieldbyname('Cancelid').Asstring <> '' then
        SFMain.RaiseException('ใบส่งของนี้ยกเลิกแล้ว');

      if Dm_Finc.QAr_serv1.FieldByName('LOCAT').Asstring <> Dm_Finc.QArpaytrn1.FieldByName('LOCAT').Asstring then
      begin
        MessageBeep(0);
        MessageDlg('เป็นใบกำกับของสาขาอื่น สาขาเอกสารใบเสร็จจะออกตามใบกำกับ ', mtInformation, [mbok], 0);
        Dm_Finc.QArpaytrn1.FieldByName('LOCAT').Asstring := Dm_Finc.QAr_serv1.FieldByName('LOCAT').Asstring;
      end;
      Dm_Finc.QArpaytrn1.FieldByName('INVNO').Asstring := Dm_Finc.QAr_serv1.FieldByName('DEVNO').Asstring;
      Dm_Finc.QArpaytrn1.FieldByName('Cuscode').Asstring := Dm_Finc.QAr_serv1.FieldByName('Cuscod').Asstring;
      Dm_Finc.QArpaytrn1.FieldByName('Jobno').Asstring := Dm_Finc.QAr_serv1.FieldByName('Jobno').Asstring;
    end;
  end
  else
  begin
    if fSrcDlg1.ShowModalArserv = Mrok then
    begin
      with Dm_Finc.QAr_serv1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
        Params[0].Asstring := fSrcDlg1.Keyno;
        Open;
        if Dm_Finc.QAr_serv1.Bof and Dm_Finc.QAr_serv1.eof then
          SFMain.RaiseException('ไม่พบใบส่งของ');
      end;
      if Dm_Finc.QAr_serv1.Fieldbyname('Cancelid').Asstring <> '' then
        SFMain.RaiseException('ใบกำกับนี้ยกเลิกแล้ว');
      if Dm_Finc.QAr_serv1.FieldByName('LOCAT').Asstring <> Dm_Finc.QArpaytrn1.FieldByName('LOCAT').Asstring then
      begin
        MessageBeep(0);
        MessageDlg('เป็นใบกำกับของสาขาอื่น สาขาเอกสารใบเสร็จจะออกตามใบกำกับ ', mtInformation, [mbok], 0);
        Dm_Finc.QArpaytrn1.FieldByName('LOCAT').Asstring := Dm_Finc.QAr_serv1.FieldByName('LOCAT').Asstring;
      end;
      Dm_Finc.QArpaytrn1.FieldByName('INVNO').Asstring := Dm_Finc.QAr_serv1.FieldByName('DEVNO').Asstring;
      Dm_Finc.QArpaytrn1.FieldByName('Cuscode').Asstring := Dm_Finc.QAr_serv1.FieldByName('Cuscod').Asstring;
      Dm_Finc.QArpaytrn1.FieldByName('Jobno').Asstring := Dm_Finc.QAr_serv1.FieldByName('Jobno').Asstring;
    end;
  end;
end;

procedure TFCashpay2.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFChqinp, FChqinp);
  FChqinp.ShowModal;
end;

procedure TFCashpay2.InsBtnClick(Sender: TObject);
begin
  {with Dm_Finc.QArpaytrn1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO ='''' ');
    If Not Dm_Finc.QArpaytrn1.Prepared Then Dm_Finc.QArpaytrn1.Prepare;
    Open ;
    Insert;
  end;

   with Dm_Finc.QAr_Serv1 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO ='''' ');
     If Not Dm_Finc.QAr_Serv1.Prepared Then Dm_Finc.QAr_Serv1.Prepare;
     Open ;
   end;
   with Dm_Ar.QArChq do
   begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO=''''  ');
    Open;
   end;
   Edit1.Text :='';}
end;

procedure TFCashpay2.FormCreate(Sender: TObject);
begin
  {SFMain.Check_right('HDSV', 'HDSV09');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing:= SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right; }
end;

procedure TFCashpay2.DBEdit11Change(Sender: TObject);
begin
  with Dm_Finc.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XDVNO ');
    Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('CUSCODE').Asstring;
    Open;
    Edit2.Text := Dm_Finc.Query1.Fieldbyname('Name1').Asstring + ' ' + Dm_Finc.Query1.Fieldbyname('Name2').Asstring;
  end;
end;

procedure TFCashpay2.FormShow(Sender: TObject);
var
  N: Word;
begin
  if not (Dm_Finc.Condpay.Active) then
    Dm_Finc.Condpay.Open;

  if Dm_Finc.Condpay.Fieldbyname('TempTax').Asstring = 'Y' then
    Label15.Caption := 'ใบกำกับ'
  else
    Label15.Caption := 'เลขที่ใบเสร็จ';

  with Dm_Finc.QArpaytrn1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE INVNO =:XBILLNO ');
    params[0].AsString := XInvno;
    Open;
    if (eof and bof) then
    begin
      Insert;
      Dm_Finc.QArpaytrn1INVNO.AsString := XInvno;
    end;
  end;

  with Dm_Finc.QArpaytrn_Typ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO =:XBILNO  ');
    Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('BILLNO').Asstring;
    Open;
  end;

  if Dm_Finc.QArpaytrn1.State <> Dsinsert then
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

procedure TFCashpay2.PrnBtnClick(Sender: TObject);
begin
  if DBEdit17.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');


  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnSvBillNo.fr3','1');
end;

procedure TFCashpay2.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFCashpay2.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EnqBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SavBtnClick(Sender);
        //Vk_F5 : InsBtnClick(Sender);
  end;
end;

procedure TFCashpay2.FbtCuscodClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalAR = Mrok then
  begin
    Dm_Finc.QArpaytrn1.FieldByName('CUSCODE').Asstring := fSrcDlg1.KeyNo;
  end;
end;

procedure TFCashpay2.DBEdit5Change(Sender: TObject);
begin
  with Dm_finc.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
    Params[0].AsString := DBEdit5.Text;
    Open;
    Edit4.Text := Dm_finc.Query1.fieldbyname('LOCATNM').AsString;
  end;
end;

procedure TFCashpay2.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
  begin
    Dm_Finc.QArpaytrn1.FieldByName('Locat').Asstring := fSrcDlg1.KeyNo;
  end;
end;

procedure TFCashpay2.cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if Dm_Finc.Condpay.Fieldbyname('TempTax').Asstring <> 'Y' then
  begin
    if fSrcDlg1.ShowModalTAXNO = Mrok then
    begin
      with Dm_Finc.QAr_serv1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
        Params[0].Asstring := fSrcDlg1.Keyno;
        Open;
        if Dm_Finc.QAr_serv1.Bof and Dm_Finc.QAr_serv1.eof then
          SFMain.RaiseException('ไม่พบใบส่งของ');
      end;
      if Dm_Finc.QAr_serv1.Fieldbyname('Cancelid').Asstring <> '' then
        SFMain.RaiseException('ใบส่งของนี้ยกเลิกแล้ว');

      if Dm_Finc.QAr_serv1.FieldByName('LOCAT').Asstring <> Dm_Finc.QArpaytrn1.FieldByName('LOCAT').Asstring then
      begin
        MessageBeep(0);
        MessageDlg('เป็นใบกำกับของสาขาอื่น สาขาเอกสารใบเสร็จจะออกตามใบกำกับ ', mtInformation, [mbok], 0);
        Dm_Finc.QArpaytrn1.FieldByName('LOCAT').Asstring := Dm_Finc.QAr_serv1.FieldByName('LOCAT').Asstring;
      end;
      Dm_Finc.QArpaytrn1.FieldByName('INVNO').Asstring := Dm_Finc.QAr_serv1.FieldByName('DEVNO').Asstring;
      Dm_Finc.QArpaytrn1.FieldByName('Cuscode').Asstring := Dm_Finc.QAr_serv1.FieldByName('Cuscod').Asstring;
      Dm_Finc.QArpaytrn1.FieldByName('Jobno').Asstring := Dm_Finc.QAr_serv1.FieldByName('Jobno').Asstring;
    end;
  end
  else
  begin
    if fSrcDlg1.ShowModalArserv = Mrok then
    begin
      with Dm_Finc.QAr_serv1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
        Params[0].Asstring := fSrcDlg1.Keyno;
        Open;
        if Dm_Finc.QAr_serv1.Bof and Dm_Finc.QAr_serv1.eof then
          SFMain.RaiseException('ไม่พบใบส่งของ');
      end;
      if Dm_Finc.QAr_serv1.Fieldbyname('Cancelid').Asstring <> '' then
        SFMain.RaiseException('ใบกำกับนี้ยกเลิกแล้ว');
      if Dm_Finc.QAr_serv1.FieldByName('LOCAT').Asstring <> Dm_Finc.QArpaytrn1.FieldByName('LOCAT').Asstring then
      begin
        MessageBeep(0);
        MessageDlg('เป็นใบกำกับของสาขาอื่น สาขาเอกสารใบเสร็จจะออกตามใบกำกับ ', mtInformation, [mbok], 0);
        Dm_Finc.QArpaytrn1.FieldByName('LOCAT').Asstring := Dm_Finc.QAr_serv1.FieldByName('LOCAT').Asstring;
      end;
      Dm_Finc.QArpaytrn1.FieldByName('INVNO').Asstring := Dm_Finc.QAr_serv1.FieldByName('DEVNO').Asstring;
      Dm_Finc.QArpaytrn1.FieldByName('Cuscode').Asstring := Dm_Finc.QAr_serv1.FieldByName('Cuscod').Asstring;
      Dm_Finc.QArpaytrn1.FieldByName('Jobno').Asstring := Dm_Finc.QAr_serv1.FieldByName('Jobno').Asstring;
    end;
  end;
end;

procedure TFCashpay2.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnSvBillNo.fr3','2');
end;

procedure TFCashpay2.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//    SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//    VAL := SFMain.n2wBill.Text;
//  END;
end;

procedure TFCashpay2.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PBILLNO' then
    Value := DBEdit17.Text;
end;

procedure TFCashpay2.DBEdit11PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO ' +
      'FROM CUSTMAST WHERE CUSCOD = :VAR');
    Params[0].asstring := DBEdit11.Text;
    open;
    if not (bof and eof) then
    begin
      Edit2.Text := FieldByName('SNAM').Asstring +
        Fieldbyname('NAME1').asstring + '  ' +
        Fieldbyname('NAME2').asstring;
    end;
  end;
end;

procedure TFCashpay2.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if Dm_Finc.QArpaytrn1.Fieldbyname('Cancelid').asstring <> '' then
    Label23.Visible := True
  else
    Label23.Visible := False;
end;

procedure TFCashpay2.cxDBGridTranBKCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDLG, fSrcDLG);
  if fSrcDLG.ShowModalBak = Mrok then
  begin
    Dm_Finc.QArchq.Edit;
    Dm_Finc.QArChq.FieldByName('BKCODE').Asstring := fSrcDLG.KeyNo;
  end;
end;

procedure TFCashpay2.cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPAYTYP = Mrok then
  begin
    if (Dm_Finc.QArpaytrn1.state in Dseditmodes) and (Dm_Finc.QArpaytrn_Typ.State = Dsbrowse) then
      Dm_Finc.QArpaytrn_Typ.Edit;
    Dm_Finc.QArpaytrn_Typ.FieldByname('PAYCODE').Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TFCashpay2.cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Dm_Finc.QArpaytrn_Typ.FieldByName('PAYCODE').AsString = '02' then
  begin
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalBak = Mrok then
    begin
      Dm_Finc.QArpaytrn_Typ.Edit;
      Dm_Finc.QArpaytrn_Typ.FieldByname('BANKBOOKCOD').Asstring := fSrcDlg.Keyno;
    end;
  end
  else
  begin
    Application.CreateForm(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalBankbook = MrOk then
    begin
      Dm_Finc.QArpaytrn_Typ.Edit;
      Dm_Finc.QArpaytrn_Typ.FieldByName('BANKBOOKCOD').AsString := fSrcDlg.Keyno;
      Dm_Finc.QArpaytrn_Typ.FieldByName('BANKLOCAT').AsString := fSrcDlg.qrFindDat.fieldbyname('BANKLOCNAM').AsString;
    end;
  end;
end;

end.

