unit PayOth;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ComCtrls, ExtCtrls, DB,
  Dbkbd, ToolWin, ImgList, AdvGlowButton, AdvToolBar, AdvPanel, Menus,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  ActnList, cxGraphics, cxLookAndFeels, dxDateRanges, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxImageComboBox, cxCurrencyEdit, BusinessSkinForm, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, dxStatusBar, frxExportXLSX, frxRich,
  frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFPayoth = class(TForm)
    AdvPanel1: TAdvPanel;
    Label2: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Edit2: TcxTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit31: TcxDBTextEdit;
    DBEdit32: TcxDBTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    dxStatusBar1: TdxStatusBar;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    cxDBTextEdit1: TcxDBTextEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    BillDate: TcxDBDateEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit11: TcxDBButtonEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label23: TLabel;
    DBEdit12: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit20: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit19: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
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
    Query1: TFDQuery;
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
    procedure SaveBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure BillDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    Xinvno, Xlocat, XTaxno: string;
    XBilldt: TDateTime;
  end;

var
  FPayoth: TFPayoth;

implementation

uses
  Dmfinc, HlpBill, EntrChq, uSrcDlg1, USoftFirm, DmAr, uSrcDlg, unfrPreview,
  Dmsec, DmSv;
{$R *.DFM}

procedure TFPayoth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with Dm_Sv.QOthinvoi1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM OTHINVOI WHERE INVNO =:XTAXNO');
    PARAMS[0].ASSTRING := XInvno;
    OPEN;
  end;

  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('update OTHTRAN set TAXNO=:EDIT1,TAXDT=:EDIT2 WHERE INVNO =:EDIT3');
    params[0].AsString := Dm_Sv.QOthinvoi1.fieldbyname('TAXNO').AsString;
    params[1].AsDateTime := Dm_Sv.QOthinvoi1.fieldbyname('TAXDT').AsDateTime;
    params[2].AsString := XInvno;
    execSql;
  end;

  with Dm_Sv.QOthtran1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM OTHTRAN WHERE INVNO =:XTAXNO');
    PARAMS[0].ASSTRING := XInvno;
    OPEN;
  end;

  Dm_Finc.Closeall;
  Action := Cafree;
  FPayoth := Nil;
end;

procedure TFPayoth.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  SaveBtn.Visible := (DataSource1.Dataset.State in Dseditmodes) and
    (Dm_Finc.QArpaytrn1.Fieldbyname('Cancelid').asstring = '');
  //InsBtn.Visible  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit17.Text <> '');
  EditBtn.Enabled := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  CancBtn.Visible := SaveBtn.Visible;

  cxGrid3DBTableView2.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Append.Enabled := SaveBtn.Visible;

  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit17.Text <> '');
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
  end;

  Dm_Finc.QDBConfig.Close;
  DM_Finc.QDBConfig.Open;
  DBEdit17.Properties.Readonly := Dm_Finc.QDBConfig.Fieldbyname('H_TXOH').asstring = 'Y';
end;

procedure TFPayoth.CancBtnClick(Sender: TObject);
begin
  if Dm_Finc.QArpaytrn2.State in Dseditmodes then
    Dm_Finc.QArpaytrn2.cancel;
  if Dm_Finc.QArpaytrn_Typ1.Active then
    Dm_Finc.QArpaytrn_Typ1.Cancel;

  with Dm_Finc.QArpaytrn2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILNO ');
    Params[0].Asstring := '';
    Open;
  end;

  with Dm_Finc.QArpaytrn_Typ1 do
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
  with Dm_Finc.QOthinv do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TFPayoth.SaveBtnClick(Sender: TObject);
begin
  if DBEdit6.Text = '' then
    sfmain.RaiseException('ยังไม่ระบุเลขที่ใบส่งของ..!');

  Dm_Finc.QArpaytrn_Typ1.DisableControls;
  Dm_Finc.QArpaytrn_Typ1.First;
  while not (Dm_Finc.QArpaytrn_Typ1.Eof) do
  begin
    if (Dm_Finc.QArpaytrn_Typ1PAYCODE.AsString = '02') then
    begin
      if Dm_Finc.QArpaytrn_Typ1CHQNO.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดเลขที่เช็ค..!');
    end;

    if (Dm_Finc.QArpaytrn_Typ1PAYCODE.AsString = '10') then
    begin
      if Dm_Finc.QArpaytrn_Typ1BANKBOOKCOD.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดรหัสธนาคาร..!');
    end;

    if (Dm_Finc.QArpaytrn_Typ1AMOUNT.Asfloat <= 0) then
      Dm_Finc.QArpaytrn_Typ1.Delete
    else
      Dm_Finc.QArpaytrn_Typ1.Next;
  end;
  Dm_Finc.QArpaytrn_Typ1.EnableControls;

  if Dm_Finc.QArpaytrn_Typ1.RecordCount = 0 then
  begin
    Dm_Finc.QArpaytrn_Typ1.Append;
    SFMain.RaiseException('กรุณาบันทึกข้อมูลให้ครบก่อนบันทึก..!');
  end;

  if Dm_Finc.QArpaytrn2.State in Dseditmodes then
    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV12_2', 'INSERT', Dm_Finc.QArpaytrn2.Fieldbyname('BILLNO').Asstring)
    else
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV12_2', 'EDIT', Dm_Finc.QArpaytrn2.Fieldbyname('BILLNO').Asstring);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Finc.QArpaytrn2.Post;
end;

procedure TFPayoth.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFPayoth.EditBtnClick(Sender: TObject);
var
  S: string;
begin
  Application.CreateForm(TFhlpBill, FhlpBill);
  FhlpBill.XFlag := '2';
  if FhlpBill.ShowModal = MrOk then
  begin
    with Dm_Finc.QArpaytrn2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILNO ');
      Params[0].Asstring := FhlpBill.Qhelp.FieldByName('BILLNO').Asstring;
      Open;
    end;
    if Dm_Finc.QArpaytrn2.Fieldbyname('Cancelid').asstring <> '' then
      Label23.Visible := True
    else
      Label23.Visible := False;

    with Dm_Finc.QArpaytrn_Typ1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO = :XBILNO ');
      Params[0].Asstring := FhlpBill.Qhelp.FieldByName('BILLNO').Asstring;
      Open;
    end;

    with Dm_Finc.QOthinv do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = :XNO ');
      Params[0].Asstring := Dm_Finc.QArpaytrn2.FieldByName('INVNO').Asstring;
      Open;
      if Dm_Finc.QOthinv.Bof and Dm_Finc.QOthinv.eof then
        SFMain.RaiseException('ไม่พบใบส่งของชั่วคราว');
    end;

    with Dm_Finc.QTaxsal do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
      Params[0].Asstring := Dm_Finc.QArpaytrn2.FieldByName('BILLNO').Asstring;
      Open;
    end;

    with Dm_Finc.QArmast1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD= :XCUSNO  ');
      Params[0].Asstring := Dm_Finc.QOthinv.FieldByName('CUSCOD').Asstring;
      Open;
    end;

    with Dm_Finc.QArChq do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO= :XBILNO  ');
      Params[0].asstring := Dm_Finc.QArpaytrn2.FieldByName('BILLNO').Asstring;
      Open;
    end;
  end;
end;

procedure TFPayoth.DelBtnClick(Sender: TObject);
begin
  if DBEdit17.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  if Dm_Finc.QArpaytrn2.Fieldbyname('Cancelid').asstring <> '' then
    SFMain.RaiseException('ถูกยกเลิกแล้ว');

  sfmain.Do_Chk_DatainGL('ACCGLMST', 'REFDOCNO', Dm_Finc.QArpaytrn2BILLNO.AsString);

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSV12_2', 'DELETE', Dm_Finc.QArpaytrn2.Fieldbyname('BILLNO').Asstring);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

        with Dm_Finc.Query1 do
        begin
          close;
          sql.Clear;
          sql.Add('update othinvoi set billno = '''',billdt = null,paid = 0,dtpaid = null ' +
            'where BILLNO =:edit2');
          params[0].AsString := Dm_Finc.QArpaytrn2.Fieldbyname('BILLNO').Asstring;
          execSql;
        end;

        if Dm_Finc.QArpaytrn2.State = Dsbrowse then
          Dm_Finc.QArpaytrn2.Edit;
        Dm_Finc.QArpaytrn2.Fieldbyname('Cancelid').Asstring := SFMain.XUser_id;
        Dm_Finc.QArpaytrn2.Fieldbyname('Invno').Asstring := '';
        Dm_Finc.QArpaytrn2.Fieldbyname('Taxno').Asstring := '';
        Dm_Finc.QArpaytrn2.Fieldbyname('CanDat').Asdatetime := Now;
        Dm_Finc.QArpaytrn2.Fieldbyname('Flag').Asstring := 'C';

        if not (Dm_Finc.QTaxsal.Bof and Dm_Finc.QTaxsal.Eof) and
          (Dm_Finc.QTaxsal.State = Dsbrowse) then
        begin
          Dm_Finc.QTaxsal.Edit;
          Dm_Finc.QTaxsal.Fieldbyname('VATRT').AsFloat := 0;
          Dm_Finc.QTaxsal.Fieldbyname('AMOUNT').AsFloat := 0;
          Dm_Finc.QTaxsal.Fieldbyname('BALANCE').AsFloat := 0;
          Dm_Finc.QTaxsal.Fieldbyname('VAT').AsFloat := 0;
          Dm_Finc.QTaxsal.Fieldbyname('TOTTAX').AsFloat := 0;

          Dm_Finc.QTaxsal.Fieldbyname('Cancelid').Asstring := SFMain.XUser_id;
          Dm_Finc.QTaxsal.Fieldbyname('CanDat').Asdatetime := Now;
          Dm_Finc.QTaxsal.Post;
        end;

        Dm_Finc.QArpaytrn2.Post;
      //
        with Dm_Finc.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('UPDATE OTHTRAN SET CANCELID=:EDIT1 ,CANDAT=:EDIT2 WHERE INVNO=:EDIT3');
          Params[0].Asstring := SFMain.Xuser_id;
          Params[1].Asdatetime := Now;
          Params[2].Asstring := Dm_Finc.QOthinv.Fieldbyname('INVNO').Asstring;
          Execsql;
        end;

      //
        CancBtnClick(Sender);
      end;
  end;
end;

procedure TFPayoth.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
    Vk_F9:
      PrnBtnClick(Sender);
    Vk_F7:
      EditBtnClick(Sender);
    Vk_ESCAPE:
      CancBtnClick(Sender);
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

procedure TFPayoth.FormCreate(Sender: TObject);
begin
   {SFMain.Check_right('HDSV', 'HDSV12_2');
   DBkbd1.AllowDelete := SFMain.Del_right;
   DBkbd1.AllowEditing:= SFMain.Edit_right;
   DBkbd1.AllowInsert := SFMain.Insert_right;
   ShortDateFormat := 'dd/mm/yyyy'; }
end;

procedure TFPayoth.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFPayoth.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
    Dm_Finc.QArpaytrn2.FieldByName('Locat').Asstring := fSrcDlg1.KeyNo;
end;

procedure TFPayoth.DBEdit5PropertiesChange(Sender: TObject);
begin
  with Dm_Finc.Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select locatnm from invlocat where locatcd =:edit2');
    params[0].AsString := dbedit5.Text;
    open;
  end;
  edit2.Text := Dm_Finc.Query1.fieldbyname('locatnm').AsString;
end;

procedure TFPayoth.InsBtnClick(Sender: TObject);
begin
  {with Dm_Finc.QArpaytrn2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN  WHERE BILLNO='''' ');
    Open ;
    Insert;
  end;

  with Dm_Finc.QTaxsal do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
    Params[0].Asstring := '';
    Open ;
  end;

  with Dm_Finc.QOthinv do
  begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = :XNO ');
     Params[0].Asstring := '';
     Open ;
  end;
  with Dm_Finc.QArmast1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD= :XCUSNO  ');
    Params[0].Asstring := '';
    Open;
  end;
   with Dm_Ar.QArChq do
   begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO=''''  ');
    Open;
   end; }
end;

procedure TFPayoth.BillDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Finc.QArpaytrn2.fieldbyname('BILLDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Finc.QArpaytrn2.fieldbyname('BILLDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Finc.QArpaytrn2.fieldbyname('BILLDT').AsDateTime := Dm_Finc.QArpaytrn2.fieldbyname('BILLDT').AsDateTime;
  end;
end;

procedure TFPayoth.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TFPayoth.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PBILLNO' then
    Value := DBEdit17.Text;
end;

procedure TFPayoth.PrnBtnClick(Sender: TObject);
begin
  if DBEdit17.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSVInvS4.fr3', '1');
end;

procedure TFPayoth.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSVInvS4.fr3', '2');
end;

procedure TFPayoth.FormShow(Sender: TObject);
begin
  with Dm_Finc.QArpaytrn2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE INVNO =:XBILLNO  ');
    params[0].AsString := XInvno;
    Open;
    if (eof and bof) then
    begin
      Insert;
      Dm_Finc.QArpaytrn2INVNO.AsString := XInvno;
    end;
  end;

  with Dm_Finc.QArpaytrn_Typ1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO =:XBILLNO');
    Params[0].Asstring := Dm_Finc.QArpaytrn2.FieldByName('BILLNO').Asstring;
    Open;
  end;
end;

procedure TFPayoth.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if SFMain.XChgLoc = 'Y' then
    fSrcDlg1.XSrLocat := ''
  else
    fSrcDlg1.XSrLocat := SFmain.Xlocat;
  if fSrcDlg1.ShowModalOthinv = Mrok then
    Dm_Finc.QArpaytrn2INVNO.AsString := fSrcDlg1.Keyno;
end;

procedure TFPayoth.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if Dm_Finc.QArpaytrn2.Fieldbyname('Cancelid').asstring <> '' then
    Label23.Visible := True
  else
    Label23.Visible := False;
end;

procedure TFPayoth.cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPAYTYP = Mrok then
  begin
    if (Dm_Finc.QArpaytrn2.state in Dseditmodes) and (Dm_Finc.QArpaytrn_Typ1.State = Dsbrowse) then
      Dm_Finc.QArpaytrn_Typ1.Edit;
    Dm_Finc.QArpaytrn_Typ1.FieldByname('PAYCODE').Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TFPayoth.cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Dm_Finc.QArpaytrn_Typ1.FieldByName('PAYCODE').AsString = '02' then
  begin
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalBak = Mrok then
    begin
      Dm_Finc.QArpaytrn_Typ1.Edit;
      Dm_Finc.QArpaytrn_Typ1.FieldByname('BANKBOOKCOD').Asstring := fSrcDlg.Keyno;
    end;
  end
  else
  begin
    Application.CreateForm(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalBankbook = MrOk then
    begin
      Dm_Finc.QArpaytrn_Typ1.Edit;
      Dm_Finc.QArpaytrn_Typ1.FieldByName('BANKBOOKCOD').AsString := fSrcDlg.Keyno;
      Dm_Finc.QArpaytrn_Typ1.FieldByName('BANKLOCAT').AsString := fSrcDlg.qrFindDat.fieldbyname('BANKLOCNAM').AsString;
    end;
  end;
end;

end.

