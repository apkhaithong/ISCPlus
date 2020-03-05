unit Arinv02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit,
  cxLookAndFeelPainters, ActnList, RzDbkbd, cxCalendar, cxCheckBox, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxTextEdit, cxContainer, cxGroupBox, cxRadioGroup,
  AdvGlowButton, AdvToolBar, AdvPanel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeels, dxDateRanges, System.Actions, cxNavigator,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxStatusBar, frxBDEComponents,
  frxExportPDF, frxExportCSV, frxCross, frxExportImage, frxClass,
  frxExportBaseDialog, frxExportXLSX, frxRich, frxGradient, frxChBox,
  frxTableObject, frxFDComponents, frxChart, frxDCtrl, frxBarcode;

type
  TArinv_2 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label10: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label9: TLabel;
    wwDBGrid1: TcxGrid;
    wwDBGridTrData: TcxGridDBTableView;
    wwDBGridTrDataLOCAT: TcxGridDBColumn;
    wwDBGridTrDataJOBNO: TcxGridDBColumn;
    wwDBGridTrDataINVNO: TcxGridDBColumn;
    wwDBGridTrDataINVDATE: TcxGridDBColumn;
    wwDBGridTrDataDUEDATE: TcxGridDBColumn;
    wwDBGridTrDataBALANCE: TcxGridDBColumn;
    wwDBGridTrDataPAYAMT: TcxGridDBColumn;
    wwDBGrid1Level1: TcxGridLevel;
    raSelDate: TcxRadioGroup;
    ImpBtn: TAdvGlowButton;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    CheckBox1: TcxCheckBox;
    FDate: TcxDateEdit;
    TDate: TcxDateEdit;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxRadioGroup2: TcxRadioGroup;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    BillDate: TcxDBDateEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit2: TcxDBButtonEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit3: TcxDBTextEdit;
    ChqDate: TcxDBDateEdit;
    DBEdit14: TcxDBTextEdit;
    wwDBGridTrDataFLGPAY: TcxGridDBColumn;
    DBEdit30: TcxDBButtonEdit;
    Label2: TLabel;
    Label39: TLabel;
    DBEdit8: TcxDBTextEdit;
    cxRadioGroup1: TcxRadioGroup;
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
    procedure InsBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure ImpBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit2BtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBGridTrDataINVNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit2PropertiesChange(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure BillDateExit(Sender: TObject);
    procedure ChqDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Arinv_2: TArinv_2;

implementation

uses
  DmAr, Functn01, DmSet1, SrchDlgAr, HlpPay, HlpAray, USoftFirm, uSrcDlgAR,
  unfrPreview, Dmsec, uSrcDlg1, uSrcDLG;

{$R *.DFM}

procedure TArinv_2.InsBtnClick(Sender: TObject);
begin
  with Dm_Ar.QArbill do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILL WHERE ARBILNO = '''' ');
    Open;
    Insert;
  end;

  with Dm_Ar.QArbilTr do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = '''' ');
    Open;
  end;
  if DBEdit2.Enabled = false then
    DBEdit1.SetFocus
  else
    DBEdit2.SetFocus;
end;

procedure TArinv_2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TArinv_2.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit5.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  DBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;
  wwDBGridTrData.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  wwDBGridTrData.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  wwDBGridTrData.NavigatorButtons.Append.Enabled := SaveBtn.Visible;
  ImpBtn.Enabled := (SaveBtn.Visible);
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit5.Text <> '');

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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
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
  end;

  if not (Dm_Ar.QDBConfig.Active) then
    Dm_Ar.QDBConfig.Open;
  DBEdit5.Properties.Readonly := Dm_Ar.QDBConfig.Fieldbyname('H_BNO').asstring = 'Y';
   //DBKbd1.AllowEditing:=(Dm_Ar.QArbill.Fieldbyname('Refbil').Asstring='') and (SFMain.Edit_right);
  DBEdit2.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  BillDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TArinv_2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Ar.QArbill.Close;
  Dm_Ar.QArbiltr.Close;
  Action := CaFree;
  Arinv_2 := Nil;
end;

procedure TArinv_2.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDFIN', 'HDFIN02_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TArinv_2.SaveBtnClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    sfMain.RaiseException(' ไม่มีเลขที่วางบิล');
  if Dm_ar.QArbilTr.RecordCount = 0 then
    sfMain.RaiseException('ยังไม่มีรายการ');
  if ChqDate.Date = 0 then
    sfMain.RaiseException(' ไม่มีวันที่รับเช็ค');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN02_1', 'INSERT', Dm_Ar.QArbill.FieldByName('ARBILNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN02_1', 'EDIT', Dm_Ar.QArbill.FieldByName('ARBILNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Ar.QArbilTr.Last;
  Dm_Ar.QArbilTr.First;
  Dm_Ar.QArbill.Post;
end;

procedure TArinv_2.DBEdit2Change(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOCATCOD ');
    Params[0].Asstring := DBEdit2.Text;
    Open;
  end;
  Edit2.Text := Dm_Ar.Query1.FieldByName('LOCATNAM').Asstring;
end;

procedure TArinv_2.DBEdit1Change(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARMAST WHERE CUSCOD = :XCUSCOD ');
    Params[0].Asstring := DBEdit1.Text;
    Open;
  end;
  Edit1.Text := Dm_Ar.Query1.Fieldbyname('SNAM').Asstring + ' ' +
    Dm_Ar.Query1.Fieldbyname('NAME1').Asstring + ' '
    + Dm_Ar.Query1.Fieldbyname('NAME2').Asstring
end;

procedure TArinv_2.DelBtnClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  if Dm_Ar.QArbill.Fieldbyname('Refbil').Asstring <> '' then
    sfMain.RaiseException('ใบวางบิลนี้ชำระเงินแล้ว#' + Dm_Ar.QArbill.Fieldbyname('Refbil').Asstring);
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDFIN02_1', 'DELETE', Dm_Ar.QArbill.FieldByName('ARBILNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dm_Ar.QArbill.delete;
      end;
  end;
end;

procedure TArinv_2.CancBtnClick(Sender: TObject);
begin
  Dm_Ar.QArbill.Cancel;
end;

procedure TArinv_2.EditBtnClick(Sender: TObject);
begin
  Application.CreateForm(THlp_Aray, Hlp_Aray);
  Hlp_Aray.DbGrid_Bill.Visible := True;
  if SFmain.XChgLoc = 'Y' then
    Hlp_Aray.XSrLocat := ''
  else
    Hlp_Aray.XSrLocat := SFmain.Xlocat;
  if Hlp_Aray.ShowModal = MrOk then
  begin
    with Dm_Ar.QArbill do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILL WHERE ARBILNO = :XARBILNO');
      Params[0].Asstring := Hlp_Aray.QHlp.FieldByName('ARBILNO').Asstring;
      ;
      Open;
    end;
    if Dm_Ar.QArbill.Bof and Dm_Ar.QArbill.eof then
      sfMain.RaiseException('ไม่มีขอ้มูล');
    with Dm_Ar.QArbiltr do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = :XARBILNO');
      Params[0].Asstring := Dm_Ar.QArbill.FieldByName('ARBILNO').Asstring;
      Open;
    end;
    DBEdit2.Properties.ReadOnly := True;
    DBEdit1.Properties.ReadOnly := True;
    BillDate.Properties.ReadOnly := True;
    Fdate.Properties.ReadOnly := True;
    Tdate.Properties.ReadOnly := True;
  end;
end;

procedure TArinv_2.ImpBtnClick(Sender: TObject);
var
  VDate: string;
begin
  if raSelDate.ItemIndex = 0 then
    VDate := ' AND (INVDUE>=:EDIT3 AND INVDUE<=:EDIT4) '
  else
    VDate := ' AND (INVDATE>=:EDIT3 AND INVDATE<=:EDIT4) ';

  if DBedit1.Text = '' then
    sfMain.RaiseException('ยังไม่มีรหัสลูกหนี้');

  with Dm_Ar.QUERY1 do
  begin
    Close;
    Sql.Clear;
    if DBRadioGroup1.Itemindex = 0 then
      Sql.Add('SELECT CUSCODE,LOCAT,INVNO,INVDATE,INVDUE,TAXNO,TAXDATE,JOBNO,  ' +
        'NETTOTAL - (CASE WHEN (SELECT SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) IS NULL THEN 0 ELSE (SELECT SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) END) KANG,TNOPAY AS ' +
        'NOPAY,(NETTOTAL-VATAMT) AS BALANCE,VATAMT, FLAG ' +
        'FROM ARINVOI ' +
        'WHERE (FLAG<>''7'') AND TNOPAY=1 ' +
        'AND NETTOTAL > (CASE WHEN (SELECT SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) IS NULL THEN 0 ELSE (SELECT SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) END) ' +
        'AND LOCAT LIKE :EDIT1 ' +
        'AND CUSCODE=:EDIT2 AND POSTGLDT IS NULL ' + VDate +
{    'UNION '+
    'SELECT A.CUSCODE,B.LOCAT,B.INVNO,A.INVDATE,B.DDATE AS '+
    'INVDUE,TAXNO,TAXDATE,JOBNO,(B.DAMT-B.PAYMENT) AS KANG,B.NOPAY,(A.NETTOTAL-A.VATAMT) AS BALANCE,A.VATAMT '+
    'FROM ARINVOI A,ARPAY B '+
    'WHERE (A.INVNO=B.INVNO) AND KANG>0 AND TNOPAY>1 AND B.LOCAT LIKE :EDIT1 '+
    'AND A.CUSCODE=:EDIT2 AND (B.DDATE>=:EDIT3 AND B.DDATE<=:EDIT4) AND A.POSTGLDT IS NULL  '+  }
      'ORDER BY INVDUE,INVNO ')
    else
      Sql.Add('SELECT CUSCODE,LOCAT,INVNO,INVDATE,INVDUE,TAXNO,TAXDATE,JOBNO,  ' +
        'NETTOTAL - (CASE WHEN (SELECT SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) IS NULL THEN 0 ELSE (SELECT SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) END) KANG,TNOPAY AS ' +
        'NOPAY,(NETTOTAL-VATAMT) AS BALANCE,VATAMT,FLAG  ' +
        'FROM ARINVOI ' +
        'WHERE (FLAG=''2'' OR FLAG=''D'' OR FLAG=''X'') AND TNOPAY=1 ' +
        'AND NETTOTAL > (CASE WHEN (SELECT SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) IS NULL THEN 0 ELSE (SELECT SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) END) ' +
        'AND LOCAT LIKE :EDIT1 AND ' +
        'CUSCODE=:EDIT2 AND POSTGLDT IS NULL' + VDate +
        'UNION ' +
        'SELECT CUSCODE,LOCAT,INVNO,INVDATE,INVDUE,TAXNO,TAXDATE,JOBNO,' +
        'NETTOTAL + (CASE WHEN (SELECT SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) IS NULL THEN 0 ELSE (SELECT SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) END) KANG,TNOPAY AS ' +
        'NOPAY,(NETTOTAL-VATAMT) AS BALANCE,VATAMT,FLAG  ' +
        'FROM ARINVOI ' +
        'WHERE FLAG=''7'' ' +
        'AND NETTOTAL > (CASE WHEN (SELECT -SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) IS NULL THEN 0 ELSE (SELECT -SUM(PAYAMT) FROM ARBILTR WHERE INVNO=ARINVOI.INVNO) END) ' +
        'AND TNOPAY=1  AND LOCAT LIKE :EDIT1 ' +
        'AND CUSCODE=:EDIT2 AND POSTGLDT IS NULL ' + VDate +






{    'UNION '+
    'SELECT A.CUSCODE,B.LOCAT,B.INVNO,A.INVDATE,B.DDATE AS '+
    'INVDUE,TAXNO,TAXDATE,JOBNO,(B.DAMT-B.PAYMENT) AS KANG,B.NOPAY,(A.NETTOTAL-A.VATAMT) AS BALANCE,A.VATAMT '+
    'FROM ARINVOI A, '+
    'ARPAY B WHERE (A.INVNO=B.INVNO) AND (B.DAMT-B.PAYMENT)>0 AND A.TNOPAY>1 AND B.LOCAT LIKE :EDIT1 '+
    'AND A.CUSCODE=:EDIT2 AND (B.DDATE>=:EDIT3 AND B.DDATE<=:EDIT4) AND A.POSTGLDT IS NULL '+    }
      'ORDER BY INVDUE,INVNO ');
    if CheckBox1.Checked then
      Params[0].Asstring := '%'
    else
      Params[0].Asstring := DM_AR.QArbillLOCAT.Asstring + '%';
    Params[1].Asstring := DM_AR.QArbillCUSCODE.Asstring;
    Params[2].Asdate := FDate.Date;
    Params[3].Asdate := TDate.Date;
    Open;
    if Dm_Ar.QUERY1.Bof and Dm_Ar.QUERY1.Eof then
      sfMain.RaiseException('ไม่มี Due ค้างชำระตามช่วงวันนี้');
  end;
  // Clear Buffer
  with Dm_Ar.QArbilTr do
  begin
    Close;
    Sql.Clear;
    Sql.Add('DELETE FROM ARBILTR WHERE ARBILNO = :1 ');
    Params[0].Asstring := Dm_Ar.QArbill.FieldByName('ARBILNO').Asstring;
    ExEcSql;
    //
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = '''' ');
    Open;
  end;
  //
  Dm_ar.Query1.First;
  while not Dm_ar.Query1.Eof do
  begin
    Dm_Ar.QArbiltr.Append;
    Dm_Ar.QArbiltr.FieldByName('ARBILNO').Asstring := Dm_Ar.QArbill.FieldByName('ARBILNO').Asstring;
    Dm_Ar.QArbiltr.FieldByName('INVNO').Asstring := Dm_Ar.Query1.FieldByName('INVNO').Asstring;
    Dm_Ar.QArbiltr.FieldByName('LOCAT').Asstring := Dm_Ar.Query1.FieldByName('LOCAT').Asstring;
    Dm_Ar.QArbiltr.FieldByName('INVDATE').AsDateTime := Dm_Ar.Query1.FieldByName('INVDATE').AsDateTime;
    Dm_Ar.QArbiltr.FieldByName('TAXDATE').AsDateTime := Dm_Ar.Query1.FieldByName('TAXDATE').AsDateTime;
    Dm_Ar.QArbiltr.FieldByName('TAXNO').Asstring := Dm_Ar.Query1.FieldByName('TAXNO').Asstring;
    Dm_Ar.QArbiltr.FieldByName('JOBNO').Asstring := Dm_Ar.Query1.FieldByName('JOBNO').Asstring;
    Dm_Ar.QArbiltr.FieldByName('NOPAY').AsFloat := Dm_Ar.Query1.FieldByName('NOPAY').AsFloat;
    Dm_Ar.QArbiltr.FieldByName('DUEDATE').AsDateTime := Dm_Ar.Query1.FieldByName('INVDUE').AsDateTime;
    if Dm_ar.Query1.FieldByName('FLAG').AsString = '7' then
    begin
      Dm_Ar.QArbiltr.FieldByName('BALANCE').AsFloat := -Dm_Ar.Query1.FieldByName('KANG').AsFloat;
      Dm_Ar.QArbiltr.FieldByName('PAYAMT').AsFloat := -Dm_Ar.Query1.FieldByName('KANG').AsFloat;
    end
    else
    begin
      Dm_Ar.QArbiltr.FieldByName('BALANCE').AsFloat := Dm_Ar.Query1.FieldByName('KANG').AsFloat;
      Dm_Ar.QArbiltr.FieldByName('PAYAMT').AsFloat := Dm_Ar.Query1.FieldByName('KANG').AsFloat;
    end;
    Dm_Ar.QArbiltr.FieldByName('BF_VAT').AsFloat := Dm_Ar.Query1.FieldByName('BALANCE').AsFloat;
    Dm_Ar.QArbiltr.FieldByName('VATAMT').AsFloat := Dm_Ar.Query1.FieldByName('VATAMT').AsFloat;
    Dm_Ar.QArbiltr.FieldByName('FLGPAY').Asstring := 'Y';
    Dm_Ar.QArbiltr.Post;
    Dm_ar.Query1.Next;
  end;
end;

procedure TArinv_2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TArinv_2.DBEdit2BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalLocat = Mrok then
    Dm_Ar.QArbill.FieldByName('LOCAT').Asstring := fSrcDlgAR.Keyno;
end;

procedure TArinv_2.PrnBtnClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');


  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnAr01.fr3','1');
end;

procedure TArinv_2.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArinv_2.FormShow(Sender: TObject);
begin
  raSelDate.ItemIndex := 0;
  cxRadioGroup1.ItemIndex := 0;
  FDate.Date := Date;
  TDate.Date := Date;
  with Dm_Ar.QArbill do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILL WHERE ARBILNO = '''' ');
    Open;
  end;
end;

procedure TArinv_2.wwDBGridTrDataINVNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Dm_Ar.QArbill.Fieldbyname('CUSCODE').asstring = '' then
  begin
    DBEdit1.Setfocus;
    sfMain.RaiseException('ยังไม่บันทึกรหัสลูกหนี้');
  end;
{    Dm_Ar.QArbiltr.FieldByName('INVNO').Asstring     := Dm_Ar.Query1.FieldByName('INVNO').Asstring;
    Dm_Ar.QArbiltr.FieldByName('INVDATE').AsDateTime := Dm_Ar.Query1.FieldByName('INVDATE').AsDateTime;
    Dm_Ar.QArbiltr.FieldByName('BALANCE').AsFloat    := Dm_Ar.Query1.FieldByName('KANG').AsFloat;
    Dm_Ar.QArbiltr.FieldByName('NOPAY').AsFloat      := Dm_Ar.Query1.FieldByName('NOPAY').AsFloat;
    Dm_Ar.QArbiltr.FieldByName('DUEDATE').AsDateTime := Dm_Ar.Query1.FieldByName('INVDUE').AsDateTime;
    Dm_Ar.QArbiltr.FieldByName('PAYAMT').AsFloat     := Dm_Ar.Query1.FieldByName('KANG').AsFloat;
    Dm_Ar.QArbiltr.FieldByName('LOCAT').Asstring     := Dm_Ar.QArbill.FieldByName('LOCAT').Asstring;
    Dm_Ar.QArbiltr.FieldByName('ARBILNO').Asstring   := Dm_Ar.QArbill.FieldByName('ARBILNO').Asstring;
    Dm_Ar.QArbiltr.FieldByName('TAXDATE').AsDateTime := Dm_Ar.Query1.FieldByName('TAXDATE').AsDateTime;
    Dm_Ar.QArbiltr.FieldByName('TAXNO').Asstring     := Dm_Ar.Query1.FieldByName('TAXNO').Asstring;
    Dm_Ar.QArbiltr.FieldByName('JOBNO').Asstring     := Dm_Ar.Query1.FieldByName('JOBNO').Asstring;    }
end;

procedure TArinv_2.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalLocat = Mrok then
    Dm_Ar.QArbill.FieldByName('LOCAT').Asstring := fSrcDlgAR.Keyno;
end;

procedure TArinv_2.DBEdit2PropertiesChange(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOCATCOD ');
    Params[0].Asstring := DBEdit2.Text;
    Open;
  end;
  Edit2.Text := Dm_Ar.Query1.FieldByName('LOCATNM').Asstring;
end;

procedure TArinv_2.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalAR = Mrok then
    Dm_Ar.QArbill.FieldByName('CUSCODE').Asstring := fSrcDlgAR.KeyNo;
end;

procedure TArinv_2.DBEdit1PropertiesChange(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCUSCOD ');
    Params[0].Asstring := DBEdit1.Text;
    Open;
  end;
  Edit1.Text := Dm_Ar.Query1.Fieldbyname('SNAM').Asstring + ' ' +
    Dm_Ar.Query1.Fieldbyname('NAME1').Asstring + ' '
    + Dm_Ar.Query1.Fieldbyname('NAME2').Asstring;
end;

procedure TArinv_2.BillDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Ar.QArbill.fieldbyname('BDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Ar.QArbill.fieldbyname('BDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Ar.QArbill.fieldbyname('BDATE').AsDateTime := Dm_Ar.QArbill.fieldbyname('BDATE').AsDateTime;
  end;
end;

procedure TArinv_2.ChqDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Ar.QArbill.fieldbyname('DATE1').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Ar.QArbill.fieldbyname('DATE1').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Ar.QArbill.fieldbyname('DATE1').AsDateTime := Dm_Ar.QArbill.fieldbyname('DATE1').AsDateTime;
  end;
end;

procedure TArinv_2.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TArinv_2.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XOption: string;
begin
  if UpperCase(VarName) = 'PARBILL' then
    Value := DBEdit5.Text;

  if cxRadioGroup2.ItemIndex = 0 then
    XOption := '1'
  else
    XOption := '2';

  if UpperCase(VarName) = 'POPTION' then
    Value := XOption;
end;

procedure TArinv_2.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnAr01.fr3','2');
end;

procedure TArinv_2.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalAR = Mrok then
    Dm_Ar.QArbill.fieldbyname('REFCODE').Asstring := fSrcDlg1.KeyNo;
end;

procedure TArinv_2.DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Key_a := Dm_Ar.QArbill.Fieldbyname('CUSCODE').Asstring;
  if fSrcDlg.ShowModalDeposit = Mrok then
    Dm_Ar.QArbill.Fieldbyname('DEPOSIT_DOC').Asstring := fSrcDlg.Keyno;
end;

end.

