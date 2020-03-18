unit CanPo_inv02;

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
  cxGroupBox, cxRadioGroup, ActnList, cxNavigator, Menus, cxButtons, dxCore,
  cxDateUtils, cxCheckBox, AdvProgressBar, AdvCircularProgress,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookAndFeels,
  dxDateRanges, RzDbkbd, dxStatusBar, cxMemo, frxBDEComponents, frxExportCSV,
  frxExportPDF, frxExportXLSX, frxClass, frxExportBaseDialog, frxExportImage,
  frxCross, frxRich, frxGradient, frxChBox, frxTableObject, frxFDComponents,
  frxChart, frxDCtrl, frxBarcode;

type
  TFCanPo_inv02 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    QPoinv1: TFDQuery;
    QPoinv1PONO: TStringField;
    QPoinv1APCODE: TStringField;
    QPoinv1PODATE: TDateField;
    QPoinv1POLOCAT: TStringField;
    QPoinv1POTYPE: TStringField;
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
    QPoinv1POSTGLDT: TDateTimeField;
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
    QPoinv1PRCFLG: TStringField;
    QPoinv1VATTYPE: TStringField;
    QPoTrn: TFDQuery;
    QPoTrnPONO: TStringField;
    QPoTrnPOLOCAT: TStringField;
    QPoTrnPODATE: TDateField;
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
    SoPotype: TDataSource;
    Query1: TFDQuery;
    SoInvt: TDataSource;
    QDbconfig: TFDQuery;
    QLastno: TFDQuery;
    QLocat: TFDQuery;
    Condpay: TFDQuery;
    Query2: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    QPoTrnPARTDESC: TStringField;
    Label9: TLabel;
    Query3: TFDQuery;
    PoDate: TcxDBDateEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit22: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    QPoinv1QUOTNO: TStringField;
    QPoTrnQUOTNO: TStringField;
    Query4: TFDQuery;
    Query5: TFDQuery;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPONO: TcxGridDBColumn;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranPARTDESC: TcxGridDBColumn;
    cxGridTranPOLOCAT: TcxGridDBColumn;
    cxGridTranORDQTY: TcxGridDBColumn;
    cxGridTranRECQTY: TcxGridDBColumn;
    cxGridTranBALANCE: TcxGridDBColumn;
    cxGridTranFLAG: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Label5: TLabel;
    edFDate: TcxDateEdit;
    Label6: TLabel;
    edTDate: TcxDateEdit;
    QaBtn: TcxButton;
    cxCheckBox1: TcxCheckBox;
    QPoTrnREFNO: TStringField;
    cxButtonEdit1: TcxButtonEdit;
    Label7: TLabel;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxChartObject1: TfrxChartObject;
    frxFDComponents1: TfrxFDComponents;
    frxReportTableObject1: TfrxReportTableObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    QPoinv1CREDTM: TIntegerField;
    QPotypeLASTPO: TIntegerField;
    procedure InsBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ClosBtnClick(Sender: TObject);
    procedure CalBtnClick(Sender: TObject);
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
    procedure QPoinv1APCODEValidate(Sender: TField);
    procedure QPoinv1AfterCancel(DataSet: TDataSet);
    procedure QPoinv1NewRecord(DataSet: TDataSet);
    procedure QPoTrnBeforePost(DataSet: TDataSet);
    procedure QPoinv1AfterInsert(DataSet: TDataSet);
    procedure QPoinv1BeforePost(DataSet: TDataSet);
    procedure QPoinv1CalcFields(DataSet: TDataSet);
    procedure PoDateExit(Sender: TObject);
    procedure QPoinv1PODATEValidate(Sender: TField);
    procedure QPoinv1POLOCATValidate(Sender: TField);
    procedure cxGridTranCustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QPoTrnPARTNOChange(Sender: TField);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure QaBtnClick(Sender: TObject);
    procedure QPoinv1DISCTValidate(Sender: TField);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    procedure SmPotot;
    { Private declarations }
  public
    Val, cc: Integer;
    nNetFl, nPartno: string;
    nUprice: Double;
    { Public declarations }
    function MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function ZeroLead(St: string; len: integer): string;
  end;

var
  FCanPo_inv02: TFCanPo_inv02;
  Smnettot: Double;
  XBo, XSC1: string;
  Duplicate: Boolean;

implementation

uses
  Dmpo, FPoi2, Dlginvms, Functn01, USoftFirm, uFindPO, Dmsec, unfrPreview,
  Dmic01, RecvHistory, uSrcDlg1, uSrcDLG;

{$R *.DFM}

function TFCanPo_inv02.MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
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

function TFCanPo_inv02.ZeroLead(St: string; len: integer): string;
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

procedure TFCanPo_inv02.SmPotot;
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

procedure TFCanPo_inv02.InsBtnClick(Sender: TObject);
begin
  with QPoinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CANPO_INVOI WHERE PONO ='''' ');
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

procedure TFCanPo_inv02.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_8');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Smnettot := 0;
end;

procedure TFCanPo_inv02.DataSource1StateChange(Sender: TObject);
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
  cxGridTran.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SaveBtn.Visible;
  QaBtn.Enabled := SaveBtn.Visible;
  cxCheckbox1.Properties.ReadOnly := not Savebtn.Visible;

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
  DBEdit8.Properties.Readonly := Dm_Po.DBConfig.Fieldbyname('H_CANPO').asstring = 'Y';
  DBEdit22.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  PoDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TFCanPo_inv02.DelBtnClick(Sender: TObject);
begin
  if DBEdit8.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_8', 'DELETE', QPoinv1PONO.AsString);
        if DM_SEC.qrRecent.Active then
          DM_SEC.qrRecent.ApplyUpdates;
        if DM_SEC.qrRecent.Active then
          DM_SEC.qrRecent.CommitUpdates;
        QPoinv1.delete;
      end;
  end;
end;

procedure TFCanPo_inv02.SaveBtnClick(Sender: TObject);
begin
  if val <> 0 then
    SFMain.RaiseException('มีรหัสสินค้าซ้ำ')
  else
  begin
    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_8', 'INSERT', QPoinv1PONO.AsString)
    else
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_8', 'EDIT', QPoinv1PONO.AsString);
    if DM_SEC.qrRecent.Active then
      DM_SEC.qrRecent.ApplyUpdates;
    if DM_SEC.qrRecent.Active then
      DM_SEC.qrRecent.CommitUpdates;
    Qtemp.Close;
    QPoTrn.First;
    QPoinv1.Post;
  end;
end;

procedure TFCanPo_inv02.CancBtnClick(Sender: TObject);
begin
  QPoinv1.Cancel;
end;

procedure TFCanPo_inv02.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindPO, fFindPO);
  fFindPO.SC1 := ' AND (CHCODE = '''' OR CHCODE IS NULL) ';
  if sfmain.XChgLoc = 'Y' then
    fFindPO.XSrLocat := ''
  else
    fFindPO.XSrLocat := sfmain.Xlocat;
  if fFindPO.ShowModalCanPO = Mrok then
  begin
    with QPoinv1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CANPO_INVOI WHERE PONO =:XPONO ');
      PARAMS[0].ASSTRING := fFindPO.KeyNo;
      OPEN;
    end;
    if QPoinv1.Bof and QPoinv1.Eof then
      SFMain.RaiseException('ไม่มีข้อมูล');
    with QPoTrn do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CANPO_TRANS WHERE PONO =:XPONO ');
      PARAMS[0].ASSTRING := fFindPO.KeyNo;
      OPEN;
    end;

    with Qtemp do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT  PARTNO  FROM CANPO_TRANS WHERE  PONO =:0 ');
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

procedure TFCanPo_inv02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FCanPo_inv02 := Nil;
  Action := Cafree;
end;

procedure TFCanPo_inv02.FormShow(Sender: TObject);
begin
  if not Dm_Po.Condpay.Active then
    Dm_Po.Condpay.Open;
  with QPoinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CANPO_INVOI WHERE PONO ='''' ');
    Open;
  end;
  with QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CANPO_TRANS WHERE PONO='''' ');
    Open;
  end;

  edFDate.Date := Date;
  edTDate.Date := Date;
end;

procedure TFCanPo_inv02.ClosBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFCanPo_inv02.CalBtnClick(Sender: TObject);
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

procedure TFCanPo_inv02.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFCanPo_inv02.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFCanPo_inv02.DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalLocat = Mrok then
    QPoinv1.FieldByName('POLOCAT').Asstring := fFindPO.Keyno;
end;

procedure TFCanPo_inv02.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalAP = Mrok then
    QPoinv1.FieldByName('APCODE').Asstring := fFindPO.KeyNo;
end;

procedure TFCanPo_inv02.cxDBButtonEdit1PropertiesChange(Sender: TObject);
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

procedure TFCanPo_inv02.DBEdit22PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit22.text);
end;

procedure TFCanPo_inv02.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalOffic = Mrok then
    QPoinv1.FieldByName('Officcod').Asstring := fFindPO.Keyno;
end;

procedure TFCanPo_inv02.cxDBButtonEdit3PropertiesChange(Sender: TObject);
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

procedure TFCanPo_inv02.QPoTrnNewRecord(DataSet: TDataSet);
begin
  if QPoinv1.Fieldbyname('PONO').asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบสั่งซื้อสินค้า');

  QPotrnPONO.Asstring := QPoinv1PONO.Asstring;
  QPoTrnPODATE.AsdateTime := QPoinv1PODATE.Asdatetime;
  QPoTrnPOLOCAT.Asstring := QPoinv1POLOCAT.Asstring;
  QPoTrnAPCODE.Asstring := QPoinv1APCODE.Asstring;
  QPoTrnRECQTY.AsFloat := 0;
  QPoTrnBO.Asstring := 'N';
  QPoTrnUSERID.Asstring := SFMain.Xuser_id;
  QPoTrnTIME1.Asdatetime := Now;
end;

procedure TFCanPo_inv02.QPoinv1AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  {Apply CachedUpdate}
  S := QPoinv1.FieldByName('PONO').Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QPoinv1.Active then
      QPoinv1.ApplyUpdates;
    if QPoTrn.Active then
      QPoTrn.ApplyUpdates;
    if QPOTYPE.Active then
      QPOTYPE.ApplyUpdates;
    if QLastno.Active then
      QLastno.ApplyUpdates;
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QPoinv1.Edit;
    raise;
  end;
  if QPoinv1.Active then
    QPoinv1.CommitUpdates;
  if QPoTrn.Active then
    QPoTrn.CommitUpdates;
  if QPOTYPE.Active then
    QPOTYPE.CommitUpdates;
  if QLastno.Active then
    QLastno.CommitUpdates;
  //
  with QPoinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CANPO_INVOI WHERE PONO =:EDIT1');
    Params[0].asstring := S;
    Open;
  end;
  with QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CANPO_TRANS WHERE PONO =:EDIT1');
    Params[0].asstring := S;
    Open;
  end;
end;

procedure TFCanPo_inv02.QPoinv1BeforeDelete(DataSet: TDataSet);
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

procedure TFCanPo_inv02.QPoTrnAfterPost(DataSet: TDataSet);
var
  Tot1, Tot2, Itm, XBFVAT, XVATAMT, XVat: Double;
  bk: Tbookmark;
begin
  {smtot := 0 ;
  XVat      := QPoinv1VAT.AsFloat;
  QPoTrn.Disablecontrols;
  Bk := QPoTrn.GetBookmark;
  QPoTrn.First;
  while not QPoTrn.eof do
  begin
    Smtot  := Smtot+QPoTrnTOTCOST.Asfloat;
    QPoTrn.Next ;
  end;
  QPoTrn.Enablecontrols;
  QPoTrn.GotoBookmark(bk);
  QPoTrn.FreeBookmark(bk);
  If QPoinv1.State = Dsbrowse Then QPoinv1.Edit;

   If QPoinv1VATTYPE.Asstring = '1' then
   begin
      QPoinv1VATAMT.AsFloat  := FRound(Smtot* (XVat/(100+Xvat)),2);
      QPoinv1NETCOST.AsFloat := Smtot-QPoinv1VatAmt.AsFloat;
      QPoinv1TOTCOST.AsFloat := Smtot;
   end
   else
   If QPoinv1VATTYPE.Asstring = '2' then
   begin
      QPoinv1NETCOST.AsFloat := Smtot;
      QPoinv1VATAMT.AsFloat  := FRound((Smtot * (XVat/100)),2);
      QPoinv1TOTCOST.AsFloat := QPoinv1NETCOST.AsFloat + QPoinv1VATAMT.AsFloat;
   end;}

     {QPoinv1NETCOST.Asfloat := Smtot;
     QPoinv1VATAMT.Asfloat  := Smtot*QPoinv1VAT.Asfloat/100;
     QPoinv1TOTCOST.Asfloat := Smtot+QPoinv1VATAMT.Asfloat;}
end;

procedure TFCanPo_inv02.QPoinv1APCODEValidate(Sender: TField);
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

procedure TFCanPo_inv02.QPoinv1AfterCancel(DataSet: TDataSet);
begin
  if QPoinv1.Active then
    QPoinv1.CancelUpdates;
  if QPoTrn.Active then
    QPoTrn.CancelUpdates;
end;

procedure TFCanPo_inv02.QPoinv1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  if not CondPay.Active then
    CondPay.Open;
  QPoinv1VAT.Asfloat := Dm_po.Condpay.Fieldbyname('Vatrt').Asfloat;
  QPoinv1USERID.Asstring := SFMain.Xuser_id;
  QPoinv1TIME1.Asdatetime := SFMain.XCurDtStFrmDB;
  QPoinv1POLOCAT.Asstring := SFMain.Xlocat;
  QPoinv1RLCODE.Asstring := SFMain.Xlocat;
  QPoinv1TRANF.Asstring := 'M';
  QPoinv1PODATE.Asdatetime := SFMain.XCurDtFrmDB;
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

procedure TFCanPo_inv02.QPoTrnBeforePost(DataSet: TDataSet);
var
  Present: TDateTime;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  Qn, cc: integer;
begin
  //IF QPotrnOrdQty.AsFloat =0  Then  SFMain.RaiseException('ยอดสั่งซื้อเป็น 0');
  //  เช็ครหัสซ่ำ
  {If (Qtemp.Active) then
  Begin
    cc := 0;
    Qtemp.First;
    while not(Qtemp.Eof) do
    Begin
      If (Qtemp.FieldByName('PARTNO').AsString = QPoTrn.FieldByName('PARTNO').AsString)
      And (QPoTrn.State = Dsinsert) then
      Begin
        cc := 1;
        SFMain.RaiseException('รหัสสินค้า '+QPoTrn.FieldByName('PARTNO').AsString+' ซ้ำ<br/>ถ้าต้องการแก้ไขให้ลบรหัสสินค้าแล้วเพิ่มใหม่');
      End Else
        cc := 0;
        Qtemp.Next;
    End;
    val := cc;
    If cc = 0 then
    Begin
      Qtemp.Append;
      Qtemp.FieldByName('PARTNO').AsString := QPoTrn.FieldByName('PARTNO').AsString;
    End;
  End;}
  //

  Present := QPoinv1PODATE.Asdatetime;
  DecodeDate(Present, Year, Month, Day);
  QPotrnYEAR1.Asstring := FloatTostr(Year);
end;

procedure TFCanPo_inv02.QPoinv1AfterInsert(DataSet: TDataSet);
begin
  with QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CANPO_TRANS WHERE PONO =:EDIT1');
    Params[0].asstring := '';
    Open;
  end;

  with Qtemp do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  PARTNO  FROM CANPO_TRANS WHERE  PONO =:0 ');
    Params[0].asstring := '';
    open;
  end;
end;

procedure TFCanPo_inv02.QPoinv1BeforePost(DataSet: TDataSet);
begin
  if QPoinv1PONO.Asstring = '' then
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
    if Dm_po.DbConfig.Fieldbyname('H_CANPO').asstring = 'Y' then
    begin
      //If Duplicate Then
      QPoinv1PODATEValidate(QPoinv1PODATE);
      //
      QPoTrn.AfterPost := Nil;
      QPoTrn.BeforePost := Nil;

      QPoTrn.DisableControls;
      QPoTrn.First;
      while not QPoTrn.Eof do
      begin
        QPoTrn.Edit;
        QPoTrnAPCODE.Asstring := QPoinv1APCODE.Asstring;
        QPoTrnPONO.Asstring := QPoinv1PONO.Asstring;
        QPoTrnPOLOCAT.Asstring := QPoinv1POLOCAT.Asstring;
        QPoTrnPODATE.Asdatetime := QPoinv1PODATE.Asdatetime;
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
      QPoTrnPONO.Asstring := QPoinv1PONO.Asstring;
      QPoTrnPOLOCAT.Asstring := QPoinv1POLOCAT.Asstring;
      QPoTrnPODATE.Asdatetime := QPoinv1PODATE.Asdatetime;
      QPoTrn.Next;
    end;
    QPoTrn.AfterPost := QPoTrnAfterPost;
    QPoTrn.BeforePost := QPoTrnBeforePost;
    QPotrn.EnableControls;
  end;
end;

procedure TFCanPo_inv02.QPoinv1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QPoinv1.CachedUpdates then
    QPoinv1Updatestatus.Value := UpdateStatusStr[QPoinv1.UpdateStatus];
end;

procedure TFCanPo_inv02.PoDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QPoinv1PODATE.AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QPoinv1PODATE.AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QPoinv1PODATE.AsDateTime := QPoinv1PODATE.AsDateTime;
  end;
end;

procedure TFCanPo_inv02.QPoinv1PODATEValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  HF := 'H_CANPO';
  LF := 'L_CANPO';
  if not (QDBConfig.Active) then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QPoinv1.Fieldbyname('POLOCAT').asstring;
    DV := QPoinv1.Fieldbyname('PODATE').asDatetime;
    if QPoinv1UpdateStatus.Value = 'Inserted' then
    begin
      sqltxt := 'SELECT MAX(PONO) AS MAXNO FROM CANPO_INVOI WHERE POLOCAT=:EDIT1 AND ' +
        'SUBSTR(PONO,2,2)=:EDIT2 AND SUBSTR(PONO,5,2)=:EDIT3 AND SUBSTR(PONO,7,2)=:EDIT4 ';
      QPoinv1.FieldByName('PONO').Asstring := MaxNo(HF, LF, LV, sqltxt, DV);
    end;
  end;
end;

procedure TFCanPo_inv02.QPoinv1POLOCATValidate(Sender: TField);
begin
  QPoinv1PODATEValidate(Sender);
end;

procedure TFCanPo_inv02.cxGridTranCustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
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

procedure TFCanPo_inv02.cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalREELOCAT = Mrok then
    QPoinv1.FieldByName('RLCODE').Asstring := fFindPO.Keyno;
end;

procedure TFCanPo_inv02.QPoTrnPARTNOChange(Sender: TField);
begin
  with Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := QPoTrnPARTNO.Asstring;
    PARAMS[1].ASSTRING := QPoTrnPOLOCAT.Asstring;
    Open;
    QPoTrn.FieldByName('PARTDESC').Asstring := Query2.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFCanPo_inv02.cxDBMemo1Click(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFCanPo_inv02.cxDBMemo1Exit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFCanPo_inv02.QaBtnClick(Sender: TObject);
begin
  QPoTrn.CancelUpdates;
  with Query4 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PO_TRANS WHERE (BALANCE > 0) ' +
      'AND (PODATE BETWEEN :EDIT1 AND :EDIT2) ' +
      'AND APCODE LIKE :EDIT3 '+
      'AND POLOCAT LIKE :EDIT4 '+
      'AND PONO LIKE :EDIT5 '+
      'AND FLAG IS NULL ');
    Params[0].AsDate := edFDate.Date;
    Params[1].AsDate := edTDate.Date;
    Params[2].Asstring := cxDBButtonEdit1.TEXT + '%';
    Params[3].AsString := DBEdit22.Text + '%';
    Params[4].AsString := cxButtonEdit1.Text + '%';
    OPEN;
  end;

  if (Query4.Eof) and (Query4.Bof) then
    sfmain.raiseException('ไม่พบรายการตามเงื่อนไข..!');

  Query4.First;
  while not Query4.Eof do
  begin
    QPoTrn.Append;
    QPoTrn.FieldByname('PARTNO').AsString := Query4.fieldbyname('PARTNO').AsString;
    QPoTrn.FieldByname('ORDQTY').AsFloat := Query4.fieldbyname('ORDQTY').AsFloat;
    QPoTrn.FieldByname('RECQTY').AsFloat := Query4.fieldbyname('RECQTY').AsFloat;
    QPoTrn.FieldByname('BALANCE').AsFloat := Query4.fieldbyname('BALANCE').AsFloat;
    QPoTrn.FieldByname('NETFL').AsString := Query4.fieldbyname('NETFL').AsString;
    QPoTrn.FieldByname('ORDCOST').AsFloat := Query4.fieldbyname('ORDCOST').AsFloat;
    QPoTrn.FieldByname('REDU').AsFloat := Query4.fieldbyname('REDU').AsFloat;
    QPoTrn.FieldByname('NETCOST').AsFloat := Query4.fieldbyname('NETCOST').AsFloat;
    QPoTrn.FieldByname('TOTCOST').AsFloat := Query4.fieldbyname('TOTCOST').AsFloat;
    QPoTrn.FieldByname('LRECV').AsDateTime := Query4.fieldbyname('LRECV').AsDateTime;
    QPoTrn.FieldByname('FLAG').AsString := Query4.fieldbyname('FLAG').AsString;
    QPoTrn.FieldByname('YEAR1').AsString := Query4.fieldbyname('YEAR1').AsString;
    QPoTrn.FieldByname('USERID').AsString := sfmain.Xuser_ID;
    QPoTrn.FieldByname('TIME1').AsDateTime := now;
    QPoTrn.FieldByname('BO').AsString := Query4.fieldbyname('BO').AsString;
    QPoTrn.FieldByname('GROUP1').AsString := Query4.fieldbyname('GROUP1').AsString;
    QPoTrn.FieldByname('POBYNAME').AsString := Query4.fieldbyname('POBYNAME').AsString;
    QPoTrn.FieldByname('PARTDESC').AsString := Query4.fieldbyname('PARTDESC').AsString;
    QPoTrn.FieldByname('QUOTNO').AsString := Query4.fieldbyname('QUOTNO').AsString;
    QPoTrn.FieldByname('REFNO').AsString := Query4.fieldbyname('PONO').AsString;
    Query4.Next;
  end;
end;

procedure TFCanPo_inv02.QPoinv1DISCTValidate(Sender: TField);
var
  Pric1, SmPric1: Double;
begin
  if (QPoinv1.State in Dseditmodes) and (QPoinv1.Active) then
  begin
    QPoTrn.DisableControls;
    QPoTrn.first;
    while not QPoTrn.Eof do
    begin
      QPoTrn.Edit;
      if QPoTrnNETFL.Asstring = 'N' then
        QPoTrnREDU.AsFloat := 0
      else
        QPoTrnREDU.Asfloat := QPoinv1DISCT.Asfloat;
      Pric1 := FRound(QPoTrnORDCOST.Asfloat * (QPoTrnREDU.Asfloat / 100), 2);
      SmPric1 := QPoTrnORDCOST.Asfloat - Pric1;
      QPoTrnNETCOST.AsFloat := SmPric1;
      QPoTrnTOTCOST.AsFloat := FRound((QPoTrnNETCOST.AsFloat * QPoTrnORDQTY.AsFloat), 2);
      QPoTrn.Next;
    end;
    QPoTrn.EnableControls;

    QPoTrnAfterPost(QPoTrn);
  end;
end;

procedure TFCanPo_inv02.cxCheckBox1Click(Sender: TObject);
begin
  if QPoTrn.Active then
  begin
    QPoTrn.First;
    while not QPoTrn.Eof do
    begin
      QPoTrn.Edit;
      if cxCheckBox1.Checked then
        QPoTrnFLAG.AsString := 'N'
      else
        QPoTrnFLAG.AsString := '';
      QPoTrn.Next;
    end;
  end;
end;

procedure TFCanPo_inv02.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPO = Mrok then
  begin
    cxButtonEdit1.Text := fSrcDlg.KeyNo;
  end;
end;

end.

