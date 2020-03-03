unit unInvoiClaimCar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, DB, Dbkbd,
  ComCtrls, Csv_txt, ToolWin, ImgList, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, AdvGlowButton, AdvToolBar, AdvPanel,
  AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxContainer, cxMaskEdit, cxLookAndFeelPainters,
  cxGroupBox, cxRadioGroup, ActnList, cxLookAndFeels, dxDateRanges,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxNavigator, RzDbkbd, dxStatusBar, cxMemo, frxClass, frxExportXLSX, frxRich,
  frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TFInvoiClaimCar = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label18: TLabel;
    Label24: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridLevelI: TcxGridLevel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    PoDate: TcxDBDateEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit22: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBButtonEdit3: TcxDBButtonEdit;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    QPoinv1: TFDQuery;
    QPoinv1USERID: TStringField;
    QPoinv1Updatestatus: TStringField;
    QPoinv1DUEDATE: TDateField;
    QPoinv1MEMO1: TMemoField;
    QPoinv1CREDTM: TFloatField;
    QPoTrn: TFDQuery;
    SoPotrn: TDataSource;
    QTemp: TFDQuery;
    Query1: TFDQuery;
    SoInvt: TDataSource;
    ActionList1: TActionList;
    actEditPrn: TAction;
    Query2: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
    QPoinv1LOCAT: TStringField;
    QPoinv1INVNO: TStringField;
    QPoinv1INVDATE: TDateField;
    QPoinv1CUSCOD: TStringField;
    QPoinv1SENDCOD: TStringField;
    QPoinv1CLAIMAMT: TFloatField;
    QPoinv1PAYAMT: TFloatField;
    QPoinv1DIFAMT: TFloatField;
    QPoinv1SMPAY: TFloatField;
    QPoinv1CLAIMNO: TStringField;
    QPoinv1FLAG: TStringField;
    QPoinv1INPDATE: TDateTimeField;
    AdvPanel4: TAdvPanel;
    AdvAddInAll: TAdvGlowButton;
    AdvAddIn: TAdvGlowButton;
    AdvAddOut: TAdvGlowButton;
    AdvPanel3: TAdvPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    HelpBtn: TAdvGlowButton;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    DataSource: TDataSource;
    qrFindDat: TFDQuery;
    cxDBMemo1: TcxDBMemo;
    qrFindDatREPNO: TStringField;
    qrFindDatREPDATE: TDateField;
    qrFindDatCONTNO: TStringField;
    qrFindDatSTRNO: TStringField;
    qrFindDatCLAIMAMT: TFloatField;
    qrFindDatTYPECLAIM: TStringField;
    cxGridDBTableView2REPNO: TcxGridDBColumn;
    cxGridDBTableView2REPDATE: TcxGridDBColumn;
    cxGridDBTableView2STRNO: TcxGridDBColumn;
    cxGridDBTableView2CLAIMAMT: TcxGridDBColumn;
    cxGridDBTableView2TYPECLAIM: TcxGridDBColumn;
    QPoTrnLOCAT: TStringField;
    QPoTrnINVNO: TStringField;
    QPoTrnINVDATE: TDateField;
    QPoTrnREPNO: TStringField;
    QPoTrnREPDATE: TDateField;
    QPoTrnCUSCOD: TStringField;
    QPoTrnSTRNO: TStringField;
    QPoTrnCAMPNO: TStringField;
    QPoTrnTYPECLAIM: TStringField;
    QPoTrnCLAIMAMT: TFloatField;
    QPoTrnPAYAMT: TFloatField;
    QPoTrnDIFAMT: TFloatField;
    QPoTrnCLAIMNO: TStringField;
    QPoTrnUSERID: TStringField;
    QPoTrnINPDATE: TDateTimeField;
    cxGridTranSTRNO: TcxGridDBColumn;
    cxGridTranTYPECLAIM: TcxGridDBColumn;
    cxGridTranCLAIMAMT: TcxGridDBColumn;
    cxGridTranPAYAMT: TcxGridDBColumn;
    cxGridTranDIFAMT: TcxGridDBColumn;
    Label11: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxGridTranREPNO: TcxGridDBColumn;
    cxGridTranREPDATE: TcxGridDBColumn;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReportTableObject1: TfrxReportTableObject;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxReport1: TfrxReport;
    procedure InsBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrnbtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClosBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit22PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesChange(Sender: TObject);
    procedure QPoTrnNewRecord(DataSet: TDataSet);
    procedure QPoinv1AfterPost(DataSet: TDataSet);
    procedure QPoinv1BeforeDelete(DataSet: TDataSet);
    procedure QPoTrnAfterPost(DataSet: TDataSet);
    procedure QPoinv1AfterCancel(DataSet: TDataSet);
    procedure QPoinv1NewRecord(DataSet: TDataSet);
    procedure QPoinv1AfterInsert(DataSet: TDataSet);
    procedure QPoinv1BeforePost(DataSet: TDataSet);
    procedure QPoinv1CalcFields(DataSet: TDataSet);
    procedure QPoinv1CREDTMValidate(Sender: TField);
    procedure PoDateExit(Sender: TObject);
    procedure cxDBDateEdit2Exit(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure cxGridTranCustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure QPoinv1INVDATEValidate(Sender: TField);
    procedure QPoinv1LOCATValidate(Sender: TField);
    procedure HelpBtnClick(Sender: TObject);
    procedure qrFindDatBeforeOpen(DataSet: TDataSet);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure AdvAddInClick(Sender: TObject);
    procedure AdvAddInAllClick(Sender: TObject);
    procedure AdvAddOutClick(Sender: TObject);
    procedure QPoTrnCLAIMAMTValidate(Sender: TField);
    procedure QPoTrnPAYAMTValidate(Sender: TField);
    procedure QPoinv1SENDCODValidate(Sender: TField);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    Val, cc: Integer;
    { Public declarations }
  end;

var
  FInvoiClaimCar: TFInvoiClaimCar;
  Smnettot: Double;
  XBo, XSC1: string;
  Duplicate: Boolean;

implementation

uses
  Dmpo, FPoi2, Dlginvms, Functn01, USoftFirm, uFindPO, Dmsec, unfrPreview,
  Dmic01, Dm1, Srchsal1, Srchset1;

{$R *.DFM}

procedure TFInvoiClaimCar.InsBtnClick(Sender: TObject);
begin
  with QPoinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVOICLAIM WHERE INVNO ='''' ');
    Open;
    Insert;
  end;

  if DBEdit22.Enabled = false then
    cxDBButtonEdit1.SetFocus
  else
    DBEdit22.SetFocus;
  XBo := 'N';
end;

procedure TFInvoiClaimCar.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSL', 'HDSL01_9_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Smnettot := 0;
end;

procedure TFInvoiClaimCar.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit8.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (DBEdit8.Text <> '');
  cxGridTran.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SaveBtn.Visible;

  AdvPanel4.Visible := (DataSource1.State = DsInsert) and (DBkbd1.AllowInsert);
  AdvPanel3.Visible := (DataSource1.State = DsInsert) and (DBkbd1.AllowInsert);

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
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

      if (Components[n] is TcxGridDBTableView) and (TcxGridDBTableView(Components[n]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[n]).OptionsData.Editing := False;
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

      if (Components[n] is TcxGridDBTableView) and (TcxGridDBTableView(Components[n]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[n]).OptionsData.Editing := True;
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
  if DataSource1.Dataset.State = DsEdit then
  begin
    DBEdit22.Enabled := False;
    PoDate.Enabled := False;
    DBEdit8.Enabled := False;
    cxDBButtonEdit1.Enabled := False;
  end;
  if not Dm01.QDbconfig.Active then
    Dm01.QDbconfig.Open;
  DBEdit8.Properties.ReadOnly := Dm01.QDbconfig.FieldByName('R_CBL').AsString = 'Y';
  DBEdit22.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.DataSet.State = DsInsert);
  PoDate.Enabled := (SFMain.XChgdate = 'Y') and (DataSource1.DataSet.State = DsInsert);
end;

procedure TFInvoiClaimCar.DelBtnClick(Sender: TObject);
begin
  if DBEdit8.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSL01_9_2', 'DELETE', QPoinv1INVNO.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QPoinv1.delete;
      end;
  end;
end;

procedure TFInvoiClaimCar.SaveBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    sfmain.RaiseException('ยังไม่ระบุเลขที่อนุมัติ');

  if val <> 0 then
    SFMain.RaiseException('มีรหัสสินค้าซ้ำ')
  else
  begin
    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_9_2', 'INSERT', QPoinv1INVNO.AsString)
    else
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_9_2', 'EDIT', QPoinv1INVNO.AsString);
    if DM_SEC.qrRecent.UpdatesPending then
      if (DM_SEC.qrRecent.ApplyUpdates = 0) then
        DM_SEC.qrRecent.CommitUpdates
      else
        raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
    QPoinv1.Post;
  end;
end;

procedure TFInvoiClaimCar.CancBtnClick(Sender: TObject);
begin
  QPoinv1.Cancel;
end;

procedure TFInvoiClaimCar.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalInvoiClaim = Mrok then
  begin
    with QPoinv1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVOICLAIM WHERE INVNO=:0');
      Params[0].Asstring := SearchSale.KeyNo;
      Open;
    end;

    with QPoTrn do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVCLAIMTR WHERE INVNO=:0');
      Params[0].Asstring := SearchSale.KeyNo;
      Open;
    end;
  end;
end;

procedure TFInvoiClaimCar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FInvoiClaimCar := Nil;
  Action := Cafree;
end;

procedure TFInvoiClaimCar.PrnbtnClick(Sender: TObject);
begin
  if DBEdit8.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_ARCLAIMINVOI.fr3', '1');
end;

procedure TFInvoiClaimCar.FormShow(Sender: TObject);
begin
  with QPoinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVOICLAIM WHERE INVNO ='''' ');
    Open;
  end;
  with QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVCLAIMTR WHERE INVNO='''' ');
    Open;
  end;
end;

procedure TFInvoiClaimCar.ClosBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFInvoiClaimCar.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F9:
      PrnBtnClick(Sender);
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

procedure TFInvoiClaimCar.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFInvoiClaimCar.DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchset, Searchset);
  if Searchset.ShowModalsetLocat = MrOk then
    QPoinv1.FieldByName('LOCAT').AsString := Searchset.Keyno;
end;

procedure TFInvoiClaimCar.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalCuscod = Mrok then
    QPoinv1.Fieldbyname('CUSCOD').Asstring := SearchSale.Keyno;
end;

procedure TFInvoiClaimCar.cxDBButtonEdit1PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM VIEW_CUST WHERE CUSCOD =:APCODE');
    Params[0].Asstring := cxDBButtonEdit1.Text;
    Open;
  end;
  cxTextEdit2.Text := Query1.Fieldbyname('CUSTNAME').Asstring;
  XSC1 := '';
end;

procedure TFInvoiClaimCar.DBEdit22PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit22.text);
end;

procedure TFInvoiClaimCar.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = MrOk then
    QPoinv1.FieldByName('SENDCOD').AsString := SearchSet.Keyno;
end;

procedure TFInvoiClaimCar.cxDBButtonEdit3PropertiesChange(Sender: TObject);
begin
  cxTextEdit4.Text := sfmain.FindShowDesc('OFFICER', 'NAME', 'CODE', cxDBButtonEdit3.Text);
end;

procedure TFInvoiClaimCar.QPoTrnNewRecord(DataSet: TDataSet);
begin
  QPoTrnUSERID.Asstring := SFMain.Xuser_id;
  QPoTrnINPDATE.Asdatetime := Now;
  QPoTrnDIFAMT.AsFloat := 0;
  QPoTrnCLAIMAMT.AsFloat := 0;
  QPoTrnPAYAMT.AsFloat := 0;
end;

procedure TFInvoiClaimCar.QPoinv1AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  {Apply CachedUpdate}
  S := QPoinv1.FieldByName('INVNO').Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QPoinv1.Active then
      if (QPoinv1.ApplyUpdates = 0) then
        QPoinv1.CommitUpdates
      else
        raise Exception.Create(QPoinv1.RowError.Message);
    if QPoTrn.Active then
      if (QPoTrn.ApplyUpdates = 0) then
        QPoTrn.CommitUpdates
      else
        raise Exception.Create(QPoTrn.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QPoinv1.Edit;
    raise;
  end;
  //
  with QPoinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVOICLAIM WHERE INVNO =:EDIT1');
    Params[0].asstring := S;
    Open;
  end;
  with QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVCLAIMTR WHERE INVNO =:EDIT1');
    Params[0].asstring := S;
    Open;
  end;
end;

procedure TFInvoiClaimCar.QPoinv1BeforeDelete(DataSet: TDataSet);
begin
  QPoTrn.BeforePost := Nil;
  QPoTrn.AfterPost := Nil;
  QPoTrn.Afterdelete := Nil;

  QPotrn.First;
  while not (QPotrn.EoF) do
    QPotrn.Delete;

  QPoTrn.AfterPost := QPoTrnAfterPost;
  QPoTrn.Afterdelete := QPoTrnAfterPost;
end;

procedure TFInvoiClaimCar.QPoTrnAfterPost(DataSet: TDataSet);
var
  Tot1, Tot2, Tot3: Double;
  bk: Tbookmark;
begin
  Tot1 := 0;
  Tot2 := 0;
  Tot3 := 0;
  QPoTrn.Disablecontrols;
  bk := QPoTrn.GetBookmark;
  QPoTrn.First;
  while not QPoTrn.eof do
  begin
    Tot1 := Tot1 + QPoTrnCLAIMAMT.Asfloat;
    Tot2 := Tot2 + QPoTrnPAYAMT.Asfloat;
    Tot3 := Tot3 + QPoTrnDIFAMT.Asfloat;
    QPoTrn.Next;
  end;
  QPoTrn.Enablecontrols;
  QPoTrn.GotoBookmark(bk);
  QPoTrn.FreeBookmark(bk);
  if QPoinv1.State = Dsbrowse then
    QPoinv1.Edit;

  QPoinv1CLAIMAMT.Asfloat := Tot1;
  QPoinv1PAYAMT.Asfloat := Tot2;
  QPoinv1DIFAMT.Asfloat := Tot3;
end;

procedure TFInvoiClaimCar.QPoinv1AfterCancel(DataSet: TDataSet);
begin
  if QPoinv1.Active then
    QPoinv1.CancelUpdates;
  if QPoTrn.Active then
    QPoTrn.CancelUpdates;
end;

procedure TFInvoiClaimCar.QPoinv1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  QPoinv1USERID.Asstring := SFMain.Xuser_id;
  QPoinv1INPDATE.Asdatetime := SFMain.XCurDtStFrmDB;
  QPoinv1LOCAT.Asstring := SFMain.Xlocat;
  QPoinv1INVDATE.Asdatetime := SFMain.XCurDtFrmDB;
  QPoinv1SENDCOD.AsString := SFMain.XOffCod;
  QPoinv1CREDTM.AsInteger := 0;
  QPoinv1DUEDATE.AsDateTime := SFMain.XCurDtFrmDB;
  QPoinv1FLAG.AsString := 'Y';
end;

procedure TFInvoiClaimCar.QPoinv1AfterInsert(DataSet: TDataSet);
begin
  with QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVCLAIMTR WHERE INVNO =:EDIT1');
    Params[0].asstring := '';
    Open;
  end;
end;

procedure TFInvoiClaimCar.QPoinv1BeforePost(DataSet: TDataSet);
begin
  if QPoinv1INVNO.Asstring = '' then
    SFMain.RaiseException('กรุณาระบุเลขที่ใบส่งก่อนบันทึก!');
  if QPoinv1cuscod.Asstring = '' then
    SFMain.RaiseException('กรุณาระบุลูกหนี้ก่อนบันทึก!');
  //
  QPotrn.DisableControls;
  QPotrn.First;
  while not (QPotrn.EoF) do
  begin
    if QPoTrn.FieldByName('STRNO').Asstring = '' then
      QPotrn.Delete;
    QPotrn.Next;
  end;
  QPotrn.EnableControls;

  if QPotrn.Bof and QPotrn.Eof then
    SFMain.RaiseException('ยังไม่บันทึกรายการเคลม');
  //
  if QPoinv1Updatestatus.Value = 'Inserted' then
  begin
    // Rerun
    if not DM01.QDbconfig.Active then
      DM01.QDbconfig.Open;
    if DM01.QDbconfig.FieldByName('R_CBL').AsString = 'Y' then
    begin
      if Duplicate then
        QPoinv1INVDATEValidate(QPoinv1INVDATE);
      //
      QPoTrn.AfterPost := Nil;
      QPoTrn.BeforePost := Nil;

      QPoTrn.DisableControls;
      QPoTrn.First;
      while not QPoTrn.Eof do
      begin
        QPoTrn.Edit;
        QPoTrnINVNO.Asstring := QPoinv1INVNO.Asstring;
        QPoTrnCLAIMNO.Asstring := QPoinv1CLAIMNO.Asstring;
        QPoTrnLOCAT.Asstring := QPoinv1LOCAT.Asstring;
        QPoTrnCUSCOD.Asstring := QPoinv1CUSCOD.Asstring;
        QPoTrnINVDATE.AsDateTime := QPoinv1INVDATE.AsDateTime;
        QPoTrn.Next;
      end;
      QPoTrn.EnableControls;
      QPoTrn.AfterPost := QPoTrnAfterPost;
    end;
  end
  else if QPoinv1.State = DsEdit then
  begin
    QPotrn.DisableControls;
    QPoTrn.AfterPost := Nil;
    QPoTrn.BeforePost := Nil;

    QPoTrn.First;
    while not QPoTrn.Eof do
    begin
      QPoTrn.Edit;
      QPoTrnINVNO.Asstring := QPoinv1INVNO.Asstring;
      QPoTrnLOCAT.Asstring := QPoinv1LOCAT.Asstring;
      QPoTrnCUSCOD.Asstring := QPoinv1CUSCOD.Asstring;
      QPoTrnINVDATE.AsDateTime := QPoinv1INVDATE.AsDateTime;
      QPoTrn.Next;
    end;
    QPoTrn.AfterPost := QPoTrnAfterPost;
    QPotrn.EnableControls;
  end;
end;

procedure TFInvoiClaimCar.QPoinv1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QPoinv1.CachedUpdates then
    QPoinv1Updatestatus.Value := UpdateStatusStr[QPoinv1.UpdateStatus];
end;

procedure TFInvoiClaimCar.QPoinv1CREDTMValidate(Sender: TField);
begin
  QPoinv1DUEDATE.AsDateTime := QPoinv1INVDATE.Asdatetime + QPoinv1CREDTM.Asfloat;
end;

procedure TFInvoiClaimCar.PoDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QPoinv1INVDATE.AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QPoinv1INVDATE.AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QPoinv1INVDATE.AsDateTime := QPoinv1INVDATE.AsDateTime;
  end;
end;

procedure TFInvoiClaimCar.cxDBDateEdit2Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QPoinv1DUEDATE.AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QPoinv1DUEDATE.AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QPoinv1DUEDATE.AsDateTime := QPoinv1DUEDATE.AsDateTime;
  end;
end;

procedure TFInvoiClaimCar.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_ARCLAIMINVOI.fr3', '2');
end;

procedure TFInvoiClaimCar.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TFInvoiClaimCar.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PINVNO' then
    Value := DBEdit8.Text;
end;

procedure TFInvoiClaimCar.cxGridTranCustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AStyle: TcxStyle;
  IndNo: string;
begin
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;
  ATextRect := AViewInfo.ContentBounds;
  AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
  InflateRect(ATextRect, -2, -1);
  if AIndicatorViewInfo.GridRecord.Selected then
    AStyle := sfmain.styleSelected
  else
    AStyle := sfmain.styleNormal;

  if AIndicatorViewInfo.GridRecord.Index + 1 = 0 then
    IndNo := ''
  else
    IndNo := IntToStr(AIndicatorViewInfo.GridRecord.Index + 1);

  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, TcxAlignmentVert.vaCenter,
    False, False, IndNo,
    AStyle.Font, AStyle.TextColor, AStyle.Color);
  ADone := True;
end;

procedure TFInvoiClaimCar.cxDBMemo1Click(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFInvoiClaimCar.cxDBMemo1Exit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFInvoiClaimCar.QPoinv1INVDATEValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  HF := 'H_CBL';
  LF := 'L_CBL';
  if not DM01.QDbconfig.Active then
    DM01.QDbconfig.Open;
  if DM01.QDbconfig.FieldByName('R_CBL').AsString = 'Y' then
  begin
    LV := QPoinv1.Fieldbyname('LOCAT').asstring;
    DV := QPoinv1.Fieldbyname('INVDATE').asDatetime;
    if QPoinv1UpdateStatus.Value = 'Inserted' then
    begin
      sqltxt := 'SELECT MAX(INVNO) AS MAXNO FROM INVOICLAIM WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(INVNO,2,2)=:EDIT2 AND SUBSTR(INVNO,5,2)=:EDIT3 AND SUBSTR(INVNO,7,2)=:EDIT4 ';
      QPoinv1.FieldByName('INVNO').Asstring := Dm01.MAXNO(HF, LF, LV, sqltxt, DV);
    end;
  end;
  DecodeDate(DV, XYear, XMonth, XDay);
end;

procedure TFInvoiClaimCar.QPoinv1LOCATValidate(Sender: TField);
begin
  QPoinv1INVDATEValidate(Sender);
end;

procedure TFInvoiClaimCar.HelpBtnClick(Sender: TObject);
begin
  if cxButtonEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบเลขที่เคลมตามเงื่อนไข');

  if cxButtonEdit2.Text = '' then
    cxButtonEdit2.Text := 'โโโโโ';

  if qrFindDat.Active then
    qrFindDat.Close;
  qrFindDat.Open;
end;

procedure TFInvoiClaimCar.qrFindDatBeforeOpen(DataSet: TDataSet);
begin
  qrFindDat.ParamByName('FREPNO').Value := cxButtonEdit1.Text;

  if cxButtonEdit2.Text = '' then
    qrFindDat.ParamByName('TREPNO').Value := 'โโโโโ'
  else
    qrFindDat.ParamByName('TREPNO').Value := cxButtonEdit2.Text;
end;

procedure TFInvoiClaimCar.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalSendClaim = Mrok then
    cxButtonEdit1.Text := SearchSale.Keyno;
end;

procedure TFInvoiClaimCar.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalSendClaim = Mrok then
    cxButtonEdit2.Text := SearchSale.Keyno;
end;

procedure TFInvoiClaimCar.AdvAddInClick(Sender: TObject);
begin
  if not (qrFindDat.Eof) then
  begin
    QPoTrn.Append;
    QPoTrnREPNO.AsString := qrFindDatREPNO.AsString;
    QPoTrnREPDATE.AsDateTime := qrFindDatREPDATE.AsDateTime;
    QPoTrnSTRNO.AsString := qrFindDatSTRNO.AsString;
    QPoTrnTYPECLAIM.Asstring := qrFindDatTYPECLAIM.AsString;
    QPoTrnCLAIMAMT.AsFloat := qrFindDatCLAIMAMT.AsFloat;
    QPoTrnPAYAMT.AsFloat := qrFindDatCLAIMAMT.AsFloat;
    QPoTrn.Post;
    qrFindDat.Delete;
  end;
end;

procedure TFInvoiClaimCar.AdvAddInAllClick(Sender: TObject);
begin
  qrFindDat.First;
  while not (qrFindDat.Eof) do
  begin
    QPoTrn.Append;
    QPoTrnREPNO.AsString := qrFindDatREPNO.AsString;
    QPoTrnREPDATE.AsDateTime := qrFindDatREPDATE.AsDateTime;
    QPoTrnSTRNO.AsString := qrFindDatSTRNO.AsString;
    QPoTrnTYPECLAIM.Asstring := qrFindDatTYPECLAIM.AsString;
    QPoTrnCLAIMAMT.AsFloat := qrFindDatCLAIMAMT.AsFloat;
    QPoTrnPAYAMT.AsFloat := qrFindDatCLAIMAMT.AsFloat;
    QPoTrn.Post;
    qrFindDat.Next;
  end;

  qrFindDat.First;
  while not (qrFindDat.Eof) do
    qrFindDat.Delete;
end;

procedure TFInvoiClaimCar.AdvAddOutClick(Sender: TObject);
begin
  QPoTrn.First;
  while not (QPoTrn.Eof) do
    QPoTrn.Delete;

  qrFindDat.Close;
  qrFindDat.Open;
end;

procedure TFInvoiClaimCar.QPoTrnCLAIMAMTValidate(Sender: TField);
begin
  QPoTrnDIFAMT.AsFloat := FRound(QPoTrnCLAIMAMT.AsFloat - QPoTrnPAYAMT.AsFloat, 2);
end;

procedure TFInvoiClaimCar.QPoTrnPAYAMTValidate(Sender: TField);
begin
  QPoTrnDIFAMT.AsFloat := FRound(QPoTrnCLAIMAMT.AsFloat - QPoTrnPAYAMT.AsFloat, 2);
end;

procedure TFInvoiClaimCar.QPoinv1SENDCODValidate(Sender: TField);
begin
  sfmain.Findnoexist('OFFICER', 'CODE', QPoinv1SENDCOD.AsString);
end;

end.

