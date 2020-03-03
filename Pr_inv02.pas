unit Pr_inv02;

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
  cxNavigator, cxDBLookupComboBox, RzDbkbd, dxStatusBar, cxMemo, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFPr_inv02 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranORDQTY: TcxGridDBColumn;
    cxGridTranORDCOST: TcxGridDBColumn;
    cxGridTranNETFL: TcxGridDBColumn;
    cxGridTranBO: TcxGridDBColumn;
    cxGridTranREDU: TcxGridDBColumn;
    cxGridTranNETCOST: TcxGridDBColumn;
    cxGridTranTOTCOST: TcxGridDBColumn;
    cxGridTranPRBYNAME: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    CalBtn: TAdvGlowButton;
    cxGroupBox1: TcxGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup3: TcxDBRadioGroup;
    PoDate: TcxDBDateEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit22: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    QPoinv1: TFDQuery;
    QPoinv1PRNO: TStringField;
    QPoinv1APCODE: TStringField;
    QPoinv1PRDATE: TDateField;
    QPoinv1PRLOCAT: TStringField;
    QPoinv1PRTYPE: TStringField;
    QPoinv1TRANF: TStringField;
    QPoinv1VAT: TFloatField;
    QPoinv1TOTAL: TFloatField;
    QPoinv1DISCT: TFloatField;
    QPoinv1NETCOST: TFloatField;
    QPoinv1VATAMT: TFloatField;
    QPoinv1TOTCOST: TFloatField;
    QPoinv1OFFICCOD: TStringField;
    QPoinv1COSTFLG: TStringField;
    QPoinv1USERID: TStringField;
    QPoinv1TIME1: TDateTimeField;
    QPoinv1CANCELID: TStringField;
    QPoinv1CANDAT: TDateTimeField;
    QPoinv1PRSTGLDT: TDateTimeField;
    QPoinv1Updatestatus: TStringField;
    QPoinv1REFNO: TStringField;
    QPoinv1FLAG: TStringField;
    QPoinv1DISCTYP: TStringField;
    QPoinv1DUERECV: TDateField;
    QPoinv1CHCODE: TStringField;
    QPoinv1CHRATE: TFloatField;
    QPoinv1DUEDATE: TDateField;
    QPoinv1TPCODE: TStringField;
    QPoinv1RLCODE: TStringField;
    QPoinv1MEMO1: TMemoField;
    QPoinv1CREDTM: TFloatField;
    QPoinv1PRCFLG: TStringField;
    QPoinv1VATTYPE: TStringField;
    QPoTrn: TFDQuery;
    QPoTrnPRNO: TStringField;
    QPoTrnPRLOCAT: TStringField;
    QPoTrnPRDATE: TDateField;
    QPoTrnORDQTY: TFloatField;
    QPoTrnRECQTY: TFloatField;
    QPoTrnBALANCE: TFloatField;
    QPoTrnNETFL: TStringField;
    QPoTrnORDCOST: TFloatField;
    QPoTrnREDU: TFloatField;
    QPoTrnNETCOST: TFloatField;
    QPoTrnTOTCOST: TFloatField;
    QPoTrnLRECV: TDateField;
    QPoTrnUSERID: TStringField;
    QPoTrnTIME1: TDateTimeField;
    QPoTrnFLAG: TStringField;
    QPoTrnAPCODE: TStringField;
    QPoTrnYEAR1: TStringField;
    QPoTrnPARTNO: TStringField;
    QPoTrnBO: TStringField;
    QPoTrnGROUP1: TStringField;
    QPoTrnPOBYNAME: TStringField;
    SoPotrn: TDataSource;
    QTemp: TFDQuery;
    QPotype: TFDQuery;
    QPotypePOCODE: TStringField;
    QPotypePODESC: TStringField;
    QPotypePODISC: TFloatField;
    QPotypeLASTPO: TFloatField;
    SoPotype: TDataSource;
    Query1: TFDQuery;
    QInvt: TFDQuery;
    SoInvt: TDataSource;
    ActionList1: TActionList;
    actEditPrn: TAction;
    QDbconfig: TFDQuery;
    QLastno: TFDQuery;
    QLocat: TFDQuery;
    Condpay: TFDQuery;
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
    Bevel2: TBevel;
    PoHisBtn: TAdvGlowButton;
    cxGridTranPARTDESC: TcxGridDBColumn;
    QPoTrnPARTDESC: TStringField;
    cxDBMemo1: TcxDBMemo;
    Label9: TLabel;
    Query3: TFDQuery;
    Query2UNITCODE: TStringField;
    Query2UNITDESC: TStringField;
    DataSource3: TDataSource;
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
    procedure CalBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CloseBtnClick(Sender: TObject);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
    procedure QPoinv1APCODEValidate(Sender: TField);
    procedure QPoinv1AfterCancel(DataSet: TDataSet);
    procedure QPoinv1NewRecord(DataSet: TDataSet);
    procedure QPoTrnBeforePost(DataSet: TDataSet);
    procedure QPoinv1AfterInsert(DataSet: TDataSet);
    procedure QPoinv1BeforePost(DataSet: TDataSet);
    procedure QPoinv1CalcFields(DataSet: TDataSet);
    procedure QPoinv1PRTYPEValidate(Sender: TField);
    procedure QPoinv1CREDTMValidate(Sender: TField);
    procedure QPoTrnORDQTYValidate(Sender: TField);
    procedure QPoTrnORDCOSTValidate(Sender: TField);
    procedure QPoTrnREDUValidate(Sender: TField);
    procedure QPoTrnPARTNOValidate(Sender: TField);
    procedure QPoTrnBeforeDelete(DataSet: TDataSet);
    procedure cxDBRadioGroup1Click(Sender: TObject);
    procedure cxDBRadioGroup1PropertiesChange(Sender: TObject);
    procedure cxDBRadioGroup3PropertiesChange(Sender: TObject);
    procedure PoDateExit(Sender: TObject);
    procedure cxDBDateEdit1Exit(Sender: TObject);
    procedure cxDBDateEdit2Exit(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure QPoinv1PRDATEValidate(Sender: TField);
    procedure QPoinv1PRLOCATValidate(Sender: TField);
    procedure cxGridTranCustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PoHisBtnClick(Sender: TObject);
    procedure QPoTrnPARTNOChange(Sender: TField);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure cxGridTranPRBYNAMEPropertiesInitPopup(Sender: TObject);
    procedure cxGridTranPRBYNAMEPropertiesCloseUp(Sender: TObject);
    procedure QPoTrnNETCOSTValidate(Sender: TField);
    procedure QPoTrnTOTCOSTValidate(Sender: TField);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    procedure SmPotot;
    { Private declarations }
  public
    Val, cc: Integer;
    { Public declarations }
    function MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function ZeroLead(St: string; len: integer): string;
  end;

var
  FPr_inv02: TFPr_inv02;
  Smnettot: Double;
  XBo, XSC1: string;
  Duplicate: Boolean;

implementation

uses
  Dmpo, FPoi2, Dlginvms, Functn01, USoftFirm, uFindPO, Dmsec, unfrPreview,
  Dmic01, RecvHistory;

{$R *.DFM}

function TFPr_inv02.MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1, PF1, PF2: string;
  LN, V1: Double;
  Max: integer;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if not CondPay.Active then
    CondPay.Open;
  HH := CondPay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);
  if HField <> 'H_OTHC' then
  begin
    if (YY <> '1899') and (YY <> CondPay.Fieldbyname('Curyear').Asstring) then
      sfmain.raiseException('บันทึกปีทำงานผิด ปีทำงานปัจจุบัน คือ' + CondPay.Fieldbyname('Curyear').Asstring);
  end;
  SFMain.Xlocat := Lc;
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD(SQLTXT);
    Params[0].Asstring := Lc;
    Params[1].Asstring := HH;
    Params[2].Asstring := Y1;
    Params[3].Asstring := Mm;
    Open;
  end;

  if not (Query1.Eof and Query1.Bof) and (Query1.Fieldbyname('Maxno').asstring <> '') then
  begin
    PF1 := Copy(Query1.Fieldbyname('Maxno').asstring, 1, 8);
    Max := Strtoint(Copy(Query1.Fieldbyname('Maxno').asstring, 9, 4));
  end
  else
  begin
    PF1 := '';
    Max := 0;
  end;

    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      sfmain.raiseException('ไม่พบรหัสสาขา')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;
    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM SLASTNO ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CR_YEAR = :CRY ' +
      ' AND CR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := Mm;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
    begin
      QLastNo.Insert;
      QLastNo.Fieldbyname('Locat').Asstring := Lc;
      QLastNo.Fieldbyname('Cr_year').Asstring := YY;
      QLastNo.Fieldbyname('Cr_Month').Asstring := Mm;
      QLastNo.Post;
    end;

    PF2 := PF + HH + '-' + Y1 + Mm;
    if PF1 = PF2 then
    begin
      V1 := Max + 1;
      S2 := FloatTostr(V1);
      S3 := ZeroLead(S2, 4);
      Result := PF1 + S3;
    end
    else
    begin
      V1 := 1;
      S2 := FloatTostr(V1);
      S3 := ZeroLead(S2, 4);
      Result := PF2 + S3;
    end;
      {Update Lastno}
    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
      QLastNo.Post;
    end;
  end;
end;

function TFPr_inv02.ZeroLead(St: string; len: integer): string;
var
  Zero, Chr1: string;
  j, ll: integer;
begin
  Chr1 := Trim(St);
  Zero := '';
  ll := length(Chr1);
  if len < ll then
    len := ll;
  for j := 1 to len - ll do
    Zero := Zero + '0';
  Result := Zero + Chr1;
end;

procedure TFPr_inv02.SmPotot;
begin
  smtot := 0;
  QPoTrn.Disablecontrols;
  QPoTrn.First;
  while not QPoTrn.eof do
  begin
    Smtot := Smtot + QPoTrnTOTCOST.Asfloat;
    QPoTrn.Next;
  end;
  QPoTrn.Enablecontrols;
  if QPoinv1.State = Dsbrowse then
    QPoinv1.Edit;
  QPoinv1NETCOST.Asfloat := Smtot;
  QPoinv1VATAMT.Asfloat := Smtot * QPoinv1VAT.Asfloat / 100;
  QPoinv1TOTCOST.Asfloat := Smtot + QPoinv1VATAMT.Asfloat;
end;

procedure TFPr_inv02.InsBtnClick(Sender: TObject);
begin
  with QPoinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PR_INVOI WHERE PRNO ='''' ');
    Open;
    Insert;
  end;
  QPOTYPE.Open;

  if DBEdit22.Enabled = false then
    cxDBButtonEdit1.SetFocus
  else
    DBEdit22.SetFocus;
  XBo := 'N';
end;

procedure TFPr_inv02.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_4');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Smnettot := 0;
end;

procedure TFPr_inv02.DataSource1StateChange(Sender: TObject);
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
  cxDBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;
  cxDBRadioGroup2.Properties.ReadOnly := not SaveBtn.Visible;
  cxDBRadioGroup3.Properties.ReadOnly := not SaveBtn.Visible;
  DBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SaveBtn.Visible;
  CalBtn.Enabled := (SaveBtn.Visible) and (cxDBRadioGroup3.Itemindex = 1);
  PoHisBtn.Enabled := SaveBtn.Visible;

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
  if not Dm_Po.DbConfig.Active then
    Dm_Po.DbConfig.Open;
  DBEdit8.Properties.Readonly := Dm_Po.DBConfig.Fieldbyname('H_PR').asstring = 'Y';
  DBEdit22.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  PoDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TFPr_inv02.DelBtnClick(Sender: TObject);
begin
  if DBEdit8.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_9', 'DELETE', QPoinv1PRNO.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QPoinv1.delete;
      end;
  end;
end;

procedure TFPr_inv02.SaveBtnClick(Sender: TObject);
begin
  if val <> 0 then
    SFMain.RaiseException('มีรหัสสินค้าซ้ำ')
  else
  begin
    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_9', 'INSERT', QPoinv1PRNO.AsString)
    else
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_9', 'EDIT', QPoinv1PRNO.AsString);
    if DM_SEC.qrRecent.UpdatesPending then
      if (DM_SEC.qrRecent.ApplyUpdates = 0) then
        DM_SEC.qrRecent.CommitUpdates
      else
        raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
    Qtemp.Close;
    QPoinv1.Post;
  end;
end;

procedure TFPr_inv02.CancBtnClick(Sender: TObject);
begin
  QPoinv1.Cancel;
end;

procedure TFPr_inv02.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindPO, fFindPO);
  fFindPO.SC1 := ' AND (CHCODE = '''' OR CHCODE IS NULL) ';
  if sfmain.XChgLoc = 'Y' then
    fFindPO.XSrLocat := ''
  else
    fFindPO.XSrLocat := sfmain.Xlocat;
  if fFindPO.ShowModalPR = Mrok then
  begin
    with QPoinv1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PR_INVOI WHERE PRNO =:XPRNO ');
      PARAMS[0].ASSTRING := fFindPO.KeyNo;
      OPEN;
    end;
    if QPoinv1.Bof and QPoinv1.Eof then
      SFMain.RaiseException('ไม่มีข้อมูล');
    with QPoTrn do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PR_TRANS WHERE PRNO =:XPRNO ');
      PARAMS[0].ASSTRING := fFindPO.KeyNo;
      OPEN;
    end;

    with Qtemp do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT  PARTNO  FROM PR_TRANS WHERE  PRNO =:0 ');
      Params[0].asstring := '';
      open;
    end;

    QPoTrn.first;
    while not QPoTrn.eof do
    begin
      qtemp.insert;
      qtemp.fieldbyname('PARTNO').asstring := QPoTrn.fieldbyname('PARTNO').asstring;
      qtemp.post;
      QPoTrn.Next;
    end;
  end;
end;

procedure TFPr_inv02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Query3.Close;
  FPr_inv02 := Nil;
  Action := Cafree;
end;

procedure TFPr_inv02.PrnbtnClick(Sender: TObject);
begin
  if DBEdit8.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnPr.fr3', '1');
end;

procedure TFPr_inv02.FormShow(Sender: TObject);
begin
  if not Dm_Po.Condpay.Active then
    Dm_Po.Condpay.Open;
  with QPoinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PR_INVOI WHERE PRNO ='''' ');
    Open;
  end;
  with QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PR_TRANS WHERE PRNO='''' ');
    Open;
  end;
  Query3.Open;
end;

procedure TFPr_inv02.ClosBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFPr_inv02.CalBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFPoinv2, FPoinv2);
  if FPoinv2.showmodal = Mrok then
  begin
    Qtemp.first;
    while not Qtemp.Eof do
    begin
      QPoTrn.Insert;
      QPoTrn.FieldByName('PARTNO').Asstring := Qtemp.FieldByname('PARTNO').AsString;
      QPoTrn.FieldByName('ORDQTY').AsFloat := Qtemp.FieldByname('ORDER').AsFloat;
      QPoTrn.FieldByName('ORDCOST').AsFloat := Qtemp.FieldByname('ONHN').AsFloat;
      QPoTrn.FieldByName('NETFL').Asstring := Qtemp.FieldByname('Locat').AsString;
      QPoTrn.FieldByName('REDU').AsFloat := 0;
      QPoTrnNetcost.Asfloat := QPoTrnORDCOST.VALUE * (1 - QPoTrnRedu.Asfloat / 100);
      QPoTrnTOTCOST.Asfloat := QPoTrnORDQTY.Value * QPoTrnNetcost.Asfloat;
      QPoTrn.Next;
      Qtemp.Next;
    end;
  end;
end;

procedure TFPr_inv02.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFPr_inv02.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFPr_inv02.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  fFindPO.SC1 := XSC1;
  if fFindPO.ShowModalPARTS = Mrok then
  begin
    with QInvt do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
      Params[0].Asstring := fFindPO.KeyNo;
      Params[1].Asstring := SFMain.Xlocat;
      Open;
    end;

    if QPoinv1.State = Dsinsert then
      if QPoTrn.State = Dsbrowse then
        QPoTrn.Insert;
    QPoTrn.FieldByName('PARTNO').Asstring := Qinvt.FieldByName('PARTNO').Asstring;
    QPoTrn.FieldByName('NETFL').Asstring := Qinvt.FieldByName('NETPRC').Asstring;
    if Qinvt.Bof and Qinvt.Eof then
      SFMain.RaiseException('ไม่มีขอ้มูล');
  end;
end;

procedure TFPr_inv02.DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalLocat = Mrok then
    QPoinv1.FieldByName('PRLOCAT').Asstring := fFindPO.Keyno;
end;

procedure TFPr_inv02.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalAP = Mrok then
    QPoinv1.FieldByName('APCODE').Asstring := fFindPO.KeyNo;
end;

procedure TFPr_inv02.cxDBButtonEdit1PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APMAST WHERE APCODE =:APCODE');
    Params[0].Asstring := cxDBButtonEdit1.Text;
    Open;
  end;
  cxTextEdit2.Text := Query1.Fieldbyname('APNAME').Asstring;
  XSC1 := '';
end;

procedure TFPr_inv02.DBEdit22PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit22.text);
end;

procedure TFPr_inv02.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalOffic = Mrok then
    QPoinv1.FieldByName('Officcod').Asstring := fFindPO.Keyno;
end;

procedure TFPr_inv02.cxDBButtonEdit3PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT');
    params[0].asstring := cxDBButtonEdit3.Text;
    Open;
    cxTextEdit4.Text := Query1.Fieldbyname('NAME').asstring;
  end;
end;

procedure TFPr_inv02.QPoTrnNewRecord(DataSet: TDataSet);
begin
  if QPoinv1.Fieldbyname('PRNO').asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบสั่งซื้อสินค้า');

  QPotrnPRNO.Asstring := QPoinv1PRNO.Asstring;
  QPoTrnPRDATE.AsdateTime := QPoinv1PRDATE.Asdatetime;
  QPoTrnPRLOCAT.Asstring := QPoinv1PRLOCAT.Asstring;
  QPoTrnAPCODE.Asstring := QPoinv1APCODE.Asstring;
  QPoTrnRECQTY.AsFloat := 0;
  QPoTrnBO.Asstring := 'N';
  QPoTrnUSERID.Asstring := SFMain.Xuser_id;
  QPoTrnTIME1.Asdatetime := Now;
end;

procedure TFPr_inv02.QPoinv1AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  {Apply CachedUpdate}
  S := QPoinv1.FieldByName('PRNO').Asstring;
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
    if QPOTYPE.Active then
      if (QPOTYPE.ApplyUpdates = 0) then
        QPOTYPE.CommitUpdates
      else
        raise Exception.Create(QPOTYPE.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
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
    Sql.Add('SELECT * FROM PR_INVOI WHERE PRNO =:EDIT1');
    Params[0].asstring := S;
    Open;
  end;
  with QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PR_TRANS WHERE PRNO =:EDIT1');
    Params[0].asstring := S;
    Open;
  end;
end;

procedure TFPr_inv02.QPoinv1BeforeDelete(DataSet: TDataSet);
begin
  QPoTrn.BeforePost := Nil;
  QPoTrn.AfterPost := Nil;
  QPoTrn.Afterdelete := Nil;

  QPotrn.First;
  while not (QPotrn.EoF) do
    QPotrn.Delete;

  QPoTrn.AfterPost := QPoTrnAfterPost;
  QPoTrn.BeforePost := QPoTrnBeforePost;
  QPoTrn.Afterdelete := QPoTrnAfterPost;
end;

procedure TFPr_inv02.QPoTrnAfterPost(DataSet: TDataSet);
var
  Tot1, Tot2, Itm, XBFVAT, XVATAMT, XVat: Double;
  bk: Tbookmark;
begin
  smtot := 0;
  XVat := QPoinv1VAT.AsFloat;
  QPoTrn.Disablecontrols;
  bk := QPoTrn.GetBookmark;
  QPoTrn.First;
  while not QPoTrn.eof do
  begin
    Smtot := Smtot + QPoTrnTOTCOST.Asfloat;
    QPoTrn.Next;
  end;
  QPoTrn.Enablecontrols;
  QPoTrn.GotoBookmark(bk);
  QPoTrn.FreeBookmark(bk);
  if QPoinv1.State = Dsbrowse then
    QPoinv1.Edit;

  if QPoinv1VATTYPE.Asstring = '1' then
  begin
    QPoinv1VATAMT.AsFloat := FRound(Smtot * (XVat / (100 + XVat)), 2);
    QPoinv1NETCOST.AsFloat := Smtot - QPoinv1VatAmt.AsFloat;
    QPoinv1TOTCOST.AsFloat := Smtot;
  end
  else if QPoinv1VATTYPE.Asstring = '2' then
  begin
    QPoinv1NETCOST.AsFloat := Smtot;
    QPoinv1VATAMT.AsFloat := FRound((Smtot * (XVat / 100)), 2);
    QPoinv1TOTCOST.AsFloat := QPoinv1NETCOST.AsFloat + QPoinv1VATAMT.AsFloat;
  end;

     {QPoinv1NETCOST.Asfloat := Smtot;
     QPoinv1VATAMT.Asfloat  := Smtot*QPoinv1VAT.Asfloat/100;
     QPoinv1TOTCOST.Asfloat := Smtot+QPoinv1VATAMT.Asfloat;}
end;

procedure TFPr_inv02.QPoinv1APCODEValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APMAST WHERE APCODE =:XAPCODE ');
    PARAMS[0].ASSTRING := QPoinv1APCODE.Asstring;
    OPEN;
    if Query1.Bof and Query1.Eof then
      SFMain.RaiseException('ไม่พบรหัสเจ้าหนี้');
  end;
  QPoinv1.FieldByName('Disct').AsFloat := Query1.FieldByName('DISCT').AsFloat;
  QPoinv1.FieldByName('CREDTM').AsFloat := Query1.FieldByName('CREDTM').AsFloat;
end;

procedure TFPr_inv02.QPoinv1AfterCancel(DataSet: TDataSet);
begin
  if QPoinv1.Active then
    QPoinv1.CancelUpdates;
  if QPoTrn.Active then
    QPoTrn.CancelUpdates;
end;

procedure TFPr_inv02.QPoinv1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  if not CondPay.Active then
    CondPay.Open;
  QPoinv1VAT.Asfloat := Dm_po.Condpay.Fieldbyname('Vatrt').Asfloat;
  QPoinv1USERID.Asstring := SFMain.Xuser_id;
  QPoinv1TIME1.Asdatetime := SFMain.XCurDtStFrmDB;
  QPoinv1PRLOCAT.Asstring := SFMain.Xlocat;
  QPoinv1RLCODE.Asstring := SFMain.Xlocat;
  QPoinv1TRANF.Asstring := 'M';
  QPoinv1PRDATE.Asdatetime := SFMain.XCurDtFrmDB;
  QPoinv1PRCFLG.Asstring := 'F';
  QPoinv1OFFICCOD.AsString := SFMain.XOffCod;
  //QPoinv1POTYPE.AsString   := 'R';

  if Dm_po.Condpay.Fieldbyname('POCOST').Asstring = 'Y' then
    QPoinv1COSTFLG.Asstring := '2'
  else
    QPoinv1COSTFLG.Asstring := '1';
  if Dm_po.Condpay.Fieldbyname('PODISC').Asstring = 'Y' then
    QPoinv1DISCTYP.Asstring := '3'
  else
    QPoinv1DISCTYP.Asstring := '1';

  if Condpay.Fieldbyname('Vattype').asstring <> '' then
    QPoinv1.FieldByName('VATTYPE').Asstring := Condpay.Fieldbyname('Vattype').asstring
  else
    QPoinv1.FieldByName('VATTYPE').Asstring := '2';
end;

procedure TFPr_inv02.QPoTrnBeforePost(DataSet: TDataSet);
var
  Present: TDateTime;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  Qn, cc: integer;
begin
  if QPotrnOrdQty.AsFloat = 0 then
    SFMain.RaiseException('ยอดสั่งซื้อเป็น 0');
  //  เช็ครหัสซ่ำ
  if (Qtemp.Active) then
  begin
    cc := 0;
    Qtemp.First;
    while not (Qtemp.Eof) do
    begin
      if (Qtemp.FieldByName('PARTNO').AsString = QPoTrn.FieldByName('PARTNO').AsString)
        and (QPoTrn.State = Dsinsert) then
      begin
        cc := 1;
        SFMain.RaiseException('          รหัสสินค้า ' + QPoTrn.FieldByName('PARTNO').AsString + ' ซ้ำ' +
          #13 + 'ถ้าต้องการแก้ไขให้ลบรหัสสินค้าแล้วเพิ่มใหม่');
      end
      else
        cc := 0;
      Qtemp.Next;
    end;
    val := cc;
    if cc = 0 then
    begin
      Qtemp.Append;
      Qtemp.FieldByName('PARTNO').AsString := QPoTrn.FieldByName('PARTNO').AsString;
    end;
  end;
  //

  Present := QPoinv1PRDATE.Asdatetime;
  DecodeDate(Present, Year, Month, Day);
  QPotrnYEAR1.Asstring := FloatTostr(Year);
end;

procedure TFPr_inv02.QPoinv1AfterInsert(DataSet: TDataSet);
begin
  with QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PR_TRANS WHERE PRNO =:EDIT1');
    Params[0].asstring := '';
    Open;
  end;

  with Qtemp do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  PARTNO  FROM PR_TRANS WHERE  PRNO =:0 ');
    Params[0].asstring := '';
    open;
  end;
end;

procedure TFPr_inv02.QPoinv1BeforePost(DataSet: TDataSet);
begin
  if QPoinv1PRNO.Asstring = '' then
    SFMain.RaiseException('กรุณาใส่เลขที่ใบสั่งซื้อก่อนบันทึก!');
  if QPoinv1Apcode.Asstring = '' then
    SFMain.RaiseException('กรุณาใส่เจ้าหนี้ก่อนบันทึก!');
  //
  QPotrn.DisableControls;
  QPotrn.First;
  while not (QPotrn.EoF) do
  begin
    if QPoTrn.FieldByName('PARTNO').Asstring = '' then
      QPotrn.Delete;
    QPotrn.Next;
  end;
  QPotrn.EnableControls;

  if QPotrn.Bof and QPotrn.Eof then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  //
  if QPoinv1Updatestatus.Value = 'Inserted' then
  begin
    // Rerun
    if not Dm_po.DbConfig.Active then
      Dm_po.DbConfig.Open;
    if Dm_po.DbConfig.Fieldbyname('H_PR').asstring = 'Y' then
    begin
      if Duplicate then
        QPoinv1PRTYPEValidate(QPoinv1PRTYPE);
      //
      QPoTrn.AfterPost := Nil;
      QPoTrn.BeforePost := Nil;

      QPoTrn.DisableControls;
      QPoTrn.First;
      while not QPoTrn.Eof do
      begin
        QPoTrn.Edit;
        QPoTrnPRNO.Asstring := QPoinv1PRNO.Asstring;
        QPoTrn.Next;
      end;
      QPoTrn.EnableControls;
      QPoTrn.AfterPost := QPoTrnAfterPost;
      QPoTrn.BeforePost := QPoTrnBeforePost;
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
      QPoTrnAPCODE.Asstring := QPoinv1APCODE.Asstring;
      QPoTrnPRNO.Asstring := QPoinv1PRNO.Asstring;
      QPoTrnPRLOCAT.Asstring := QPoinv1PRLOCAT.Asstring;
      QPoTrnPRDATE.Asdatetime := QPoinv1PRDATE.Asdatetime;
      QPoTrn.Next;
    end;
    QPoTrn.AfterPost := QPoTrnAfterPost;
    QPoTrn.BeforePost := QPoTrnBeforePost;
    QPotrn.EnableControls;
  end;
end;

procedure TFPr_inv02.QPoinv1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QPoinv1.CachedUpdates then
    QPoinv1Updatestatus.Value := UpdateStatusStr[QPoinv1.UpdateStatus];
end;

procedure TFPr_inv02.QPoinv1PRTYPEValidate(Sender: TField);
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1, sqltxt: string;
  LN, V1: Double;
begin
  {If Not Dm_po.DbConfig.Active Then Dm_po.DbConfig.Open;
  If Dm_po.DbConfig.Fieldbyname('H_PO').asstring='Y' Then
  begin
    If QPoinv1Updatestatus.Value='Inserted' Then
    Begin
      DV := QPoinv1.Fieldbyname('PODATE').asDatetime;
      HH := QPOTYPE.Fieldbyname('POCODE').Asstring;
      LC := QPoinv1.Fieldbyname('POLOCAT').asstring;
      LF := HH;

      SQLTXT :='SELECT MAX(PRNO) AS MAXNO FROM PR_INVOI WHERE POLOCAT=:0 AND '+
               'SUBSTR(PRNO,2,2)=:1 AND SUBSTR(PRNO,4,2)=:2 AND SUBSTR(PRNO,6,2)=:3';

      If Duplicate Then
        QPoinv1PRNO.Asstring := Dm_po.Maxno(HH,LF,LC,Sqltxt,DV)
      Else
      Begin
        If Not Dm_po.CondPay.Active Then Dm_po.CondPay.Open;
        YY := Copy(DateTostr(DV),7,4);
        Y1 := Copy(YY,3,2);
        MM := Copy(DateTostr(DV),4,2);
        {}
        {With Query1 do
        begin
          Close;
          SQL.Clear;
          SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
          Params[0].Asstring := LC;
          Open;
          If (Query1.Eof) and (Query1.Bof) Then
          SFMain.RaiseException('ไม่พบรหัสสาขา')
          Else
          PF := Query1.FieldByname('SHORTL').Asstring;
        end;

        With QPOTYPE do
        begin
          Close;
          SQL.Clear;
          SQL.ADD('SELECT * FROM POTYPE WHERE POCODE  =:EDIT1 ');
          Params[0].Asstring := HH;
          Open;
          If NOT (QPOTYPE.Eof and QPOTYPE.Bof) Then
          BEGIN
            LN := QPOTYPE.FieldByname('LASTPO').AsFloat;
            If LN=999 Then
            Begin
              QPOTYPE.Edit;
              QPOTYPE.Fieldbyname('LASTPO').AsFloat := 0;
              QPOTYPE.Post;
              LN:=0;
            end;
            V1 := LN+1;
            S2 := FloatTostr(V1);
            S3 := Dm_po.ZeroLead(S2,3);
            QPoinv1PRNO.Asstring  := PF+HH+Y1+MM+S3;
            {Update Lastno}
            {If  V1>QPOTYPE.Fieldbyname('LASTPO').AsFloat Then
            begin
              QPOTYPE.Edit;
              QPOTYPE.Fieldbyname('LASTPO').AsFloat := V1;
              QPOTYPE.Post;
            end;
          end;
        end;
      end;
    end;
  end;}
end;

procedure TFPr_inv02.QPoinv1CREDTMValidate(Sender: TField);
begin
  QPoinv1DUEDATE.AsDateTime := QPoinv1PRDATE.Asdatetime + QPoinv1CREDTM.Asfloat;
end;

procedure TFPr_inv02.QPoTrnORDQTYValidate(Sender: TField);
begin
  if (QPoTrnOrdqty.AsFloat = 0) and (QPoTrnPARTNO.AsString <> '') then
    SFMain.RaiseException('จำนวนสั่งซื้อยอดเป็น 0');
  if (QPoinv1DiscTyp.Asstring = '1') or (QPoinv1DiscTyp.Asstring = '4') then
    QPoTrnRedu.AsFloat := QPoinv1DISCT.Asfloat;
    //
  if QPoinv1DiscTyp.Asstring = '2' then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD=:EDIT1');
      Params[0].Asstring := QPoTrn.FieldByName('GROUP1').Asstring;
      Open;
    end;
    QPoTrnRedu.AsFloat := Query1.Fieldbyname('Purdisc').AsFloat;
  end;
    //
  if QPoinv1DiscTyp.Asstring = '3' then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM DISCPO WHERE POTYPE=:EDIT1 AND LOCAT=:EDIT2 AND GROUPCOD=:EDIT3');
      Params[0].Asstring := QPoinv1PRTYPE.Asstring;
      Params[1].Asstring := QPoinv1PRLOCAT.Asstring;
      Params[2].Asstring := QPoTrn.FieldByName('GROUP1').Asstring;
      Open;
    end;
    QPoTrnRedu.AsFloat := Query1.Fieldbyname('Podisc').AsFloat;
  end;

  QPoTrnBalance.Asfloat := QPoTrnORDQTY.Asfloat;
end;

procedure TFPr_inv02.QPoTrnORDCOSTValidate(Sender: TField);
begin
  if (QPoTrnORDCOST.AsFloat = 0) and (QPoTrnPARTNO.AsString <> '') then
    SFMain.RaiseException('ราคาต้นทุนยอดเป็น 0');

  QPoTrnNetcost.Asfloat := FRound(QPoTrnORDCOST.Asfloat * (1 - QPoTrnRedu.Asfloat / 100), 4);
  QPoTrnTOTCOST.Asfloat := QPoTrnORDQTY.Asfloat * QPoTrnNetcost.Asfloat;
end;

procedure TFPr_inv02.QPoTrnREDUValidate(Sender: TField);
begin
  QPoTrnNetcost.Asfloat := FRound(QPoTrnORDCOST.Asfloat * (1 - QPoTrnRedu.Asfloat / 100), 4);
  QPoTrnTOTCOST.Asfloat := QPoTrnORDQTY.Asfloat * QPoTrnNetcost.Asfloat;
end;

procedure TFPr_inv02.QPoTrnPARTNOValidate(Sender: TField);
begin
  if QPoTrn.State = Dsbrowse then
    QPoTrn.Edit;
{    If QPotrnPARTNO.Asstring ='' Then SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้า');
    With Query1 Do
    begin
       Close;
       SQL.Clear;
       SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
       PARAMS[0].ASSTRING := QPotrnPARTNO.Asstring;
       PARAMS[1].ASSTRING := QPotrnPOLOCAT.Asstring;
       Open;
    end;
    If Query1.Bof and Query1.Eof Then
    Begin
        Application.CreateForm(TFsvmast,Fsvmast);
        With Fsvmast.Hquery1 Do
        begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO LIKE :XPARTNO AND LOCAT=:XLOC ' );
            PARAMS[0].ASSTRING := QPotrnPARTNO.Asstring+'%';
            PARAMS[1].ASSTRING := QPotrnPOLOCAT.Asstring;
            Open;
        end;
        If (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) Then
        begin
          Fsvmast.Close;
          SFMain.RaiseException('ไม่พบรหัสสินค้า');
        end Else
        begin
           If Fsvmast.Showmodal=mrok Then
              QPotrnPARTNO.Value := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
        end;
    end;   }

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
      'LOCAT = :Edit2');
    PARAMS[0].ASSTRING := QPotrnPARTNO.Asstring;
    PARAMS[1].ASSTRING := QPoinv1PRLOCAT.Asstring;
    Open;
    if Query1.Bof and Query1.Eof then
      SFMain.RaiseException('ไม่พบรหัสสินค้า');
  end;

  if QPoinv1COSTFLG.Asstring = '1' then
    QPoTrn.FieldByName('ORDCOST').AsFloat := Query1.FieldByName('LSTBUY').AsFloat;

  if QPoinv1COSTFLG.Asstring = '2' then
    QPoTrn.FieldByName('ORDCOST').AsFloat := Query1.FieldByName('STDBUY').AsFloat;

  if QPoinv1COSTFLG.Asstring = '3' then
    QPoTrn.FieldByName('ORDCOST').AsFloat := Query1.FieldByName('PRICE1').AsFloat;

  QPoTrn.FieldByName('NETFL').Asstring := Query1.FieldByName('NETPRC').Asstring;
  QPoTrn.FieldByName('GROUP1').Asstring := Query1.FieldByName('GROUP1').Asstring;
    //
  if (Qtemp.Active) then
  begin
    cc := 0;
    Qtemp.First;
    while not (Qtemp.Eof) do
    begin
      if (Qtemp.FieldByName('PARTNO').AsString = QPoTrn.FieldByName('PARTNO').AsString)
        and (QPoTrn.State = Dsinsert) then
      begin
        cc := 1;
        SFMain.RaiseException('          รหัสสินค้า ' + QPoTrn.FieldByName('PARTNO').AsString + ' ซ้ำ' +
          #13 + 'ถ้าต้องการแก้ไขให้ลบรหัสสินค้าแล้วเพิ่มใหม่');
      end
      else
        cc := 0;
      Qtemp.Next;
    end;
    val := cc;
  end;
end;

procedure TFPr_inv02.QPoTrnBeforeDelete(DataSet: TDataSet);
var
  delp: string;
  ord: Integer;
begin
  ord := 0;
  if QPoTrn.Active then
  begin
    delp := QPoTrn.FieldByName('PARTNO').AsString;
    if QPoTrnORDQTY.AsString <> '' then
      ord := 1;
      //
    if Qtemp.Active then
    begin
      Qtemp.First;
      while not (Qtemp.Eof) do
      begin
        if (Qtemp.FieldByName('PARTNO').AsString = delp) and (ord = 1) then
        begin
          Qtemp.Delete;
          Exit;
        end;
        Qtemp.Next;
      end;
    end;
     //
  end;
end;

procedure TFPr_inv02.cxDBRadioGroup1Click(Sender: TObject);
begin
  if Datasource1.State in dsEditModes then
  begin
    case cxDBRadioGroup1.Itemindex of
      0:
        begin
          if cxDBButtonEdit1.Text = '' then
            SFMain.RaiseException('ยังไม่บันทึกประเภทการสั่งซื้อ');
          if (QPotype.Active) and (QPoinv1.State in Dseditmodes) then
            QPoinv1.FieldByName('Disct').AsFloat := QPotype.FieldByName('PODISC').AsFloat;
        end;
      1:
        begin
        end;
      2:
        begin
          with Query1 do
          begin
            Close;
            Sql.clear;
            Sql.Add('SELECT * FROM DISCPO');
            Open;
            if (Bof and Eof) then
              SFMain.RaiseException('ยังไม่มีการกำหนดส่วนลดการสั่งซื้อ');
          end;
        end;
    end;
  end;
end;

procedure TFPr_inv02.cxDBRadioGroup1PropertiesChange(Sender: TObject);
begin
  if Datasource1.State in DsEditmodes then
  begin
    if (cxDBRadioGroup1.Itemindex = 1) and (QPoinv1.State in Dseditmodes) then
      QPoinv1.FieldByName('Disct').AsFloat := 0;
    DBEdit22.Enabled := (cxDBRadioGroup1.Itemindex = 0);
  end;
end;

procedure TFPr_inv02.cxDBRadioGroup3PropertiesChange(Sender: TObject);
begin
  if Datasource1.State in DsEditModes then
    CalBtn.Enabled := cxDBRadioGroup3.Itemindex = 1;
end;

procedure TFPr_inv02.PoDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QPoinv1PRDATE.AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QPoinv1PRDATE.AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QPoinv1PRDATE.AsDateTime := QPoinv1PRDATE.AsDateTime;
  end;
end;

procedure TFPr_inv02.cxDBDateEdit1Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QPoinv1DUERECV.AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QPoinv1DUERECV.AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QPoinv1DUERECV.AsDateTime := QPoinv1DUERECV.AsDateTime;
  end;
end;

procedure TFPr_inv02.cxDBDateEdit2Exit(Sender: TObject);
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

procedure TFPr_inv02.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnPr.fr3', '2');
end;

procedure TFPr_inv02.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TFPr_inv02.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PPRNO' then
    Value := DBEdit8.Text;
end;

procedure TFPr_inv02.QPoinv1PRDATEValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  HF := 'H_PR';
  LF := 'L_PR';
  if not (QDBConfig.Active) then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QPoinv1.Fieldbyname('PRLOCAT').asstring;
    DV := QPoinv1.Fieldbyname('PRDATE').asDatetime;
    if QPoinv1UpdateStatus.Value = 'Inserted' then
    begin
      sqltxt := 'SELECT MAX(PRNO) AS MAXNO FROM PR_INVOI WHERE PRLOCAT=:EDIT1 AND ' +
        'SUBSTR(PRNO,2,2)=:EDIT2 AND SUBSTR(PRNO,5,2)=:EDIT3 AND SUBSTR(PRNO,7,2)=:EDIT4 ';
      QPoinv1.FieldByName('PRNO').Asstring := MaxNo(HF, LF, LV, sqltxt, DV);
    end;
  end;
end;

procedure TFPr_inv02.QPoinv1PRLOCATValidate(Sender: TField);
begin
  QPoinv1PRDATEValidate(Sender);
end;

procedure TFPr_inv02.cxGridTranCustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
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

procedure TFPr_inv02.cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalREELOCAT = Mrok then
    QPoinv1.FieldByName('RLCODE').Asstring := fFindPO.Keyno;
end;

procedure TFPr_inv02.PoHisBtnClick(Sender: TObject);
begin
  if QPoTrnPARTNO.Asstring = '' then
    sfmain.RaiseException('ไม่พบรหัสสินค้าที่อ้างอิง..!');

  if not Assigned(FRecvHistory) then
    FRecvHistory := TFRecvHistory.Create(Application);
  FRecvHistory.cxButtonEdit1.Text := QPoTrnPARTNO.Asstring;
  FRecvHistory.Show;
end;

procedure TFPr_inv02.QPoTrnPARTNOChange(Sender: TField);
begin
  with Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := QPoTrnPARTNO.Asstring;
    PARAMS[1].ASSTRING := QPoTrnPRLOCAT.Asstring;
    Open;
    QPoTrn.FieldByName('PARTDESC').Asstring := Query2.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFPr_inv02.cxDBMemo1Click(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFPr_inv02.cxDBMemo1Exit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFPr_inv02.cxGridTranPRBYNAMEPropertiesInitPopup(Sender: TObject);
begin
  Query3.Close;
  Query3.Open;
end;

procedure TFPr_inv02.cxGridTranPRBYNAMEPropertiesCloseUp(Sender: TObject);
begin
  cxGrid1.SetFocus;
end;

procedure TFPr_inv02.QPoTrnNETCOSTValidate(Sender: TField);
begin
 // QPoTrnTOTCOST.Asfloat := QPoTrnORDQTY.Asfloat * QPoTrnNetcost.Asfloat;
end;

procedure TFPr_inv02.QPoTrnTOTCOSTValidate(Sender: TField);
begin
  if QPoTrnORDQTY.AsFloat > 0 then
    QPoTrnNetcost.Asfloat := QPoTrnTOTCOST.Asfloat / QPoTrnORDQTY.Asfloat;
end;

end.

