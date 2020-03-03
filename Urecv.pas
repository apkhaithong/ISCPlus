unit Urecv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, ImgList, ComCtrls, ToolWin,
  Buttons, DB, Dbkbd, RzSpnEdt, RzBorder, AdvGlowButton, AdvOfficeStatusBar,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDBEdit, cxDropDownEdit, cxCalendar, cxMemo, AdvToolBar, cxCheckBox,
  AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons, AdvGlassButton, cxNavigator,
  cxDBNavigator, cxPC, cxLookAndFeelPainters, cxGroupBox, cxRadioGroup,
  DBAdvGlowNavigator, AdvPanel, ActnList, cxGraphics, cxLookAndFeels,
  dxBarBuiltInMenu, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxStatusBar, frxClass, frxExportXLSX, frxRich, frxDCtrl,
  frxTableObject, frxExportPDF, frxExportImage, frxGradient, frxFDComponents,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFrecv = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    Qinvtrn: TFDQuery;
    QinvtrnRECVNO: TStringField;
    QinvtrnRECVDT: TDateField;
    QinvtrnGCODE: TStringField;
    QinvtrnTYPE: TStringField;
    QinvtrnMODEL: TStringField;
    QinvtrnBAAB: TStringField;
    QinvtrnCOLOR: TStringField;
    QinvtrnCC: TFloatField;
    QinvtrnSTAT: TStringField;
    QinvtrnSTRNO: TStringField;
    QinvtrnENGNO: TStringField;
    QinvtrnREGNO: TStringField;
    QinvtrnKEYNO: TStringField;
    QinvtrnREFNO: TStringField;
    QinvtrnMILERT: TFloatField;
    QinvtrnCRLOCAT: TStringField;
    QinvtrnMOVENO: TStringField;
    QinvtrnMOVEDT: TDateField;
    QinvtrnRVCODE: TStringField;
    QinvtrnRVLOCAT: TStringField;
    QinvtrnSTDCOST: TFloatField;
    QinvtrnCRCOST: TFloatField;
    QinvtrnDISCT: TFloatField;
    QinvtrnNETCOST: TFloatField;
    QinvtrnCRVAT: TFloatField;
    QinvtrnTOTCOST: TFloatField;
    QinvtrnVATRT: TFloatField;
    QinvtrnNADDCOST: TFloatField;
    QinvtrnVADDCOST: TFloatField;
    QinvtrnTADDCOST: TFloatField;
    QinvtrnSTDPRC: TFloatField;
    QinvtrnSDATE: TDateField;
    QinvtrnPRICE: TFloatField;
    QinvtrnBONUS: TFloatField;
    QinvtrnTSALE: TStringField;
    QinvtrnCONTNO: TStringField;
    QinvtrnCURSTAT: TStringField;
    QinvtrnCRDTXNO: TStringField;
    QinvtrnCRDAMT: TFloatField;
    QinvtrnRESVNO: TStringField;
    QinvtrnRESVDT: TDateField;
    QinvtrnFLAG: TStringField;
    QinvtrnPOSTDT: TDateField;
    QinvtrnINPDT: TDateTimeField;
    QinvtrnUSERID: TStringField;
    QinvtrnMANUYR: TStringField;
    QinvtrnTAXIN: TStringField;
    QinvtrnAPCODE: TStringField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ActionList1: TActionList;
    atEdit: TAction;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label38: TLabel;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    DBCheckBox1: TcxDBCheckBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label40: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label30: TLabel;
    Label23: TLabel;
    Label33: TLabel;
    Label39: TLabel;
    Label31: TLabel;
    DBMemo1: TcxDBMemo;
    GroupBox1: TcxGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit15: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit19: TcxDBTextEdit;
    DBEdit20: TcxDBTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    DBAdvGlowNavigator1: TcxDBNavigator;
    DBEdit21: TcxDBButtonEdit;
    DBEdit22: TcxDBButtonEdit;
    DBEdit23: TcxDBButtonEdit;
    DBEdit24: TcxDBButtonEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit25: TcxDBButtonEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit13: TcxDBButtonEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit29: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit31: TcxDBTextEdit;
    GroupBox2: TcxGroupBox;
    Label6: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit26: TcxDBTextEdit;
    DBEdit27: TcxDBTextEdit;
    DBEdit28: TcxDBTextEdit;
    dbRaTypVat: TcxDBRadioGroup;
    DBLocat: TcxDBButtonEdit;
    DBEdit7: TcxDBTextEdit;
    dbApcode: TcxDBButtonEdit;
    DBDateEdit2: TcxDBDateEdit;
    DBEdit30: TcxDBButtonEdit;
    DBEdit8: TcxDBTextEdit;
    DBDateEdit1: TcxDBDateEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBDateEdit3: TcxDBDateEdit;
    DBEdit9: TcxDBTextEdit;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvGlowButton1: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxTextEdit1: TcxTextEdit;
    Label8: TLabel;
    ADDPO: TAdvGlowButton;
    Label11: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
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
    procedure DataSource1StateChange(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure InsButtonClick(Sender: TObject);
    procedure ClrBtnClick(Sender: TObject);
    procedure DataSource2StateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FldEdit15Exit(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBLocatChange(Sender: TObject);
    procedure DBLocatExit(Sender: TObject);
    procedure dbApcodeChange(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dbApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit21PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit25PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBAdvGlowNavigator1BtnInsert(Sender: TObject);
    procedure atEditExecute(Sender: TObject);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure ADDPOClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frecv: TFrecv;

implementation

uses
  dm1, dmstock, USoftfirm, SrchStk, Srchset1, functn01, unfrPreview, Dmsec,
  PurchasekitDlg; //,SetInvmast;
{$R *.dfm}

procedure TFrecv.InsBtnClick(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actInsert, DMstk.Qinvoi, 'SELECT * FROM INVINVO WHERE RECVNO =:0', ['']);
  DM_SEC.Do_With_Query(actOpen, DMstk.Qinvtrn, 'SELECT * FROM INVTRAN WHERE RECVNO=:0', ['']);
  edit1.Clear;
  Frecv.dbApcode.SetFocus;
end;

procedure TFrecv.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  GroupBox1.Visible := SFMain.XChqCost = 'Y';
  GroupBox2.Visible := SFMain.XChqCost = 'Y';
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DMstk.QinvoiRECVNO.AsString <> '');
  enqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  dbRaTypVat.Properties.ReadOnly := not SavBtn.Visible;
  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (DMstk.QinvoiRECVNO.AsString <> '');
  DBRadioGroup1.Properties.ReadOnly := not SavBtn.Visible;
  DBCheckBox1.Properties.ReadOnly := not SavBtn.Visible;
  ADDPO.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 3) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := True;
        TcxDBmemo(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := True;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
    end;
  end
  else if (DataSource1.Dataset.State = DsInsert) then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 3) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := False;
        TcxDBmemo(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := False;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end
  else if (DataSource1.Dataset.State = DsEdit) then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := False;
        TcxDBmemo(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True
      end;
    end;
    dbApcode.Properties.ReadOnly := True;
    dbApcode.Style.Color := $00EAF3F4;
    DBEdit5.Properties.ReadOnly := True;
    DBEdit5.Style.Color := $00EAF3F4;
    DBEdit6.Properties.ReadOnly := True;
    DBEdit6.Style.Color := $00EAF3F4;
    DBEdit8.Properties.ReadOnly := True;
    DBEdit8.Style.Color := $00EAF3F4;
  end;

  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  begin
    if (Dm01.QDBConfig.Fieldbyname('R_RECVCR').asstring = 'Y') then
      DBEdit7.Properties.Readonly := True
    else if (DataSource1.Dataset.State = DsInsert) then
      DBEdit7.Properties.Readonly := False
    else
      DBEdit7.Properties.Readonly := True;

    if (DataSource1.DataSet.State = DsEdit) then
    begin
        //  DBEdit7.Properties.ReadOnly := False;
      DBLocat.Properties.ReadOnly := False;
      Edit2.Style.Color := $00FFFFD9;
      DBDateEdit2.Properties.ReadOnly := False;
      DBDateEdit2.Style.Color := clWhite;
      dbRaTypVat.Enabled := False;
    end;
    if DBEdit7.Properties.Readonly then
      DBEdit7.Style.Color := clBtnFace
    else
      DBEdit7.Style.Color := clWhite;
  end;
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert) or (DataSource1.Dataset.State = DsEdit);
  DBDateEdit2.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert) or (DataSource1.Dataset.State = DsEdit);
  DBEdit17.Properties.ReadOnly := True;
  DBEdit19.Properties.ReadOnly := True;
end;

procedure TFrecv.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrecv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  Frecv := nil;
end;

procedure TFrecv.CancBtnClick(Sender: TObject);
begin
  DMstk.QInvoi.cancel;
  Dmstk.QInvtrn.Cancel;
end;

procedure TFrecv.DelBtnClick(Sender: TObject);
begin
  if DBEdit7.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');
  if DMstk.QInvoiPOSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DMstk.QInvtrn.First;
        while not DMstk.QInvtrn.eof do
        begin
          if (DMstk.QInvtrn.fieldbyname('FLAG').asstring = 'C') or
            (DMstk.QInvtrn.fieldbyname('CURSTAT').asstring = 'R') then
          begin
            DMstk.QInvtrn.cancel;
            SFMain.RaiseException('รถคันนี้ขายไปแล้ว ');
          end;
          DMstk.QInvtrn.Next;
        end;
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_1', 'DELETE', DBEdit7.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        DMstk.QInvoi.Delete;
      end;
  end;
end;

procedure TFrecv.DelButtonClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ ที่จะลบรายการนี้?', mtConfirmation, [mbYes, mbCancel], 0) = mrYes then
  begin
    if (DMstk.QInvtrn.fieldbyname('FLAG').asstring = 'C') or
      (DMstk.QInvtrn.fieldbyname('CURSTAT').asstring = 'R') then
    begin
      DMstk.QInvtrn.cancel;
      SFMain.RaiseException('รถคันนี้ขายไปแล้ว ');
    end;
    DMstk.QInvtrn.delete;
  end;
end;

procedure TFrecv.SavBtnClick(Sender: TObject);
begin
  if DBEdit8.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกเลขที่ใบส่งสินค้า');

  if DMstk.QInvoiAPCODE.Asstring = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัสเจ้าหนี้');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_1', 'INSERT', DBEdit7.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_1', 'EDIT', DBEdit7.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  DMstk.QInvoi.post;
  with QInvtrn do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT RECVNO,RECVDT,TYPE,MODEL,BAAB,COLOR,CC,STAT,STRNO,ENGNO,REGNO,DORECV, ' +
      ' KEYNO,REFNO,MILERT,CRLOCAT,MOVENO,MOVEDT,RVCODE,RVLOCAT,STDCOST,CRCOST,' +
      ' DISCT,NETCOST,TOTCOST,VATRT,NADDCOST,VADDCOST,TADDCOST,POSTDT,SDATE,PRICE,' +
      ' BONUS,TSALE,CONTNO,CURSTAT,RESVNO,RESVDT,FLAG,INPDT,USERID,CRVAT,STDPRC,GCODE,' +
      ' CRDTXNO,CRDAMT,MANUYR,TAXIN,APCODE FROM INVTRAN WHERE RECVNO = :RECVNO  UNION ' +
      ' SELECT RECVNO,RECVDT,TYPE,MODEL,BAAB,COLOR,CC,STAT,STRNO,ENGNO,REGNO,DORECV, ' +
      ' KEYNO,REFNO,MILERT,CRLOCAT,MOVENO,MOVEDT,RVCODE,RVLOCAT,STDCOST,CRCOST,' +
      ' DISCT,NETCOST,TOTCOST,VATRT,NADDCOST,VADDCOST,TADDCOST,POSTDT,SDATE,PRICE,' +
      ' BONUS,TSALE,CONTNO,CURSTAT,RESVNO,RESVDT,FLAG,INPDT,USERID,CRVAT,STDPRC,GCODE,' +
      ' CRDTXNO,CRDAMT,MANUYR,TAXIN,APCODE FROM HINVTRAN WHERE RECVNO = :RECVNO ORDER BY INPDT ');
    Params[0].Asstring := DMstk.QInvoi.FIELDBYNAME('RECVNO').ASSTRING;
    Open;
  end;
end;

procedure TFrecv.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchStk, SearchStk);
  if SearchStk.ShowModalRecstk = Mrok then
  begin
    with DMstk.QInvoi do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM INVINVO WHERE RECVNO = :RECVNO');
      Params[0].Asstring := Searchstk.Keyno;
      Open;
    end;
    with DMstk.QInvtrn do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' SELECT * FROM INVTRAN WHERE RECVNO = :RECVNO ');
      Params[0].Asstring := DMstk.QInvoi.FIELDBYNAME('RECVNO').ASSTRING;
      Open;
    end;
    with query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM INVTRAN WHERE RECVNO = :RECVNO');
      Params[0].Asstring := DMstk.QInvoi.FIELDBYNAME('RECVNO').ASSTRING;
      Open;
    end;
    with QInvtrn do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' SELECT RECVNO,RECVDT,TYPE,MODEL,BAAB,COLOR,CC,STAT,STRNO,ENGNO,REGNO,DORECV, ' +
        ' KEYNO,REFNO,MILERT,CRLOCAT,MOVENO,MOVEDT,RVCODE,RVLOCAT,STDCOST,CRCOST,' +
        ' DISCT,NETCOST,TOTCOST,VATRT,NADDCOST,VADDCOST,TADDCOST,POSTDT,SDATE,PRICE,' +
        ' BONUS,TSALE,CONTNO,CURSTAT,RESVNO,RESVDT,FLAG,INPDT,USERID,CRVAT,STDPRC,GCODE,' +
        ' CRDTXNO,CRDAMT,MANUYR,TAXIN,APCODE FROM INVTRAN WHERE RECVNO = :RECVNO  UNION ' +

        ' SELECT RECVNO,RECVDT,TYPE,MODEL,BAAB,COLOR,CC,STAT,STRNO,ENGNO,REGNO,DORECV, ' +
        ' KEYNO,REFNO,MILERT,CRLOCAT,MOVENO,MOVEDT,RVCODE,RVLOCAT,STDCOST,CRCOST,' +
        ' DISCT,NETCOST,TOTCOST,VATRT,NADDCOST,VADDCOST,TADDCOST,POSTDT,SDATE,PRICE,' +
        ' BONUS,TSALE,CONTNO,CURSTAT,RESVNO,RESVDT,FLAG,INPDT,USERID,CRVAT,STDPRC,GCODE,' +
        ' CRDTXNO,CRDAMT,MANUYR,TAXIN,APCODE FROM HINVTRAN WHERE RECVNO = :RECVNO  ORDER BY INPDT  ');
      Params[0].Asstring := DMstk.QInvoi.FIELDBYNAME('RECVNO').ASSTRING;
      Open;
    end;
    DMstk.QInvtrn.Last;
    DMstk.QInvtrn.First;
  end;
end;

procedure TFrecv.InsButtonClick(Sender: TObject);
begin
  if DMstk.QInvtrn.State in Dseditmodes then
    DMstk.QInvtrn.Post;
  DMstk.QInvtrn.insert;
  DBEdit21.Setfocus;
end;

procedure TFrecv.ClrBtnClick(Sender: TObject);
begin
  if DMstk.QInvtrn.State in Dseditmodes then
    DMstk.QInvtrn.cancel;
end;

procedure TFrecv.DataSource2StateChange(Sender: TObject);
var
  N: word;
begin
  DBRadioGroup1.Enabled := not (DataSource2.State = Dsbrowse);
  if DataSource2.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 2) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 2) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := True;
        TcxDBmemo(Components[N]).Style.Color := clBtnFace;
      end;
    end;
  end
  else if (DataSource1.Dataset.State = DsInsert) then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 2) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 2) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := False;
        TcxDBmemo(Components[N]).Style.Color := clWhite;
      end;
    end;
  end
  else if (DataSource2.DataSet.State = DsEdit) then
  begin
    if Dmstk.QInvtrn.FieldByName('FLAG').AsString = 'C' then
    begin
      DBEdit1.Properties.ReadOnly := True;
      DBEdit1.Style.Color := $00EAF3F4;
      DBEdit2.Properties.ReadOnly := True;
      DBEdit2.Style.Color := $00EAF3F4;
      DBEdit15.Properties.ReadOnly := True;
      DBEdit15.Style.Color := $00EAF3F4;
      DBEdit16.Properties.ReadOnly := True;
      DBEdit16.Style.Color := $00EAF3F4;
      DBEdit18.Properties.ReadOnly := True;
      DBEdit18.Style.Color := $00EAF3F4;
    end;
  end;
  DBEdit17.Properties.ReadOnly := True;
  DBEdit17.Style.Color := $00EAF3F4;
  DBEdit19.Properties.ReadOnly := True;
  DBEdit19.Style.Color := $00EAF3F4;
end;

procedure TFrecv.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F7) and (enqBtn.Visible) then
    EnqBtnClick(Sender);
  if (Key = VK_F2) and (SavBtn.Visible) then
    SavBtnClick(Sender);
  if (Key = VK_F8) and (Delbtn.Visible) then
    DelBtnClick(Sender);
  if (Key = VK_F5) and (InsBtn.Visible) then
    InsBtnClick(Sender);
end;

procedure TFrecv.SpeedButton1Click(Sender: TObject);
begin
  if (DMstk.QInvtrn.fieldbyname('FLAG').asstring = 'C') then
  begin
    messageDlg('รถคันนี้ขายไปแล้ว ', mterror, [mbOk], 0);
    DMstk.QInvtrn.cancel;
  end;
end;

procedure TFrecv.FldEdit15Exit(Sender: TObject);
begin
  if Dmstk.QInvtrn.State = Dsbrowse then
    Dmstk.QInvtrn.Edit;
  Dmstk.QInvtrn.FieldByName('TOTCOST').asfloat := Dmstk.QInvtrn.FieldByName('NETCOST').asfloat + Dmstk.QInvtrn.FieldByName('CRVAT').asfloat;
end;

procedure TFrecv.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RecCar.fr3','1'); {1 = Preview Report}
end;

procedure TFrecv.DBLocatChange(Sender: TObject);
begin
  Edit2.Text := DM01.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBLocat.Text);
end;

procedure TFrecv.DBLocatExit(Sender: TObject);
begin
  if (DMstk.QInvtrn.State = DsInsert) then
    DMstk.QInvtrn.FieldByName('CRLOCAT').Asstring := DMstk.QInvoi.FieldByName('LOCAT').Asstring;
end;

procedure TFrecv.dbApcodeChange(Sender: TObject);
begin
  Edit1.Text := DM01.FindShowDesc('APMAST', 'APNAME', 'APCODE', DBApcode.Text);
end;

procedure TFrecv.DBEdit1Exit(Sender: TObject);
begin
  if DMstk.QInvtrn.State = DsInsert then
    DMstk.QInvtrn.FieldByName('ENGNO').Asstring := DMstk.QInvtrn.FieldByName('STRNO').Asstring;
end;

procedure TFrecv.FormCreate(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  SFMain.Check_right('HDSTK', 'HDSTK01_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFrecv.DBMemo1Click(Sender: TObject);
begin
  Frecv.KeyPreview := False;
end;

procedure TFrecv.DBMemo1Exit(Sender: TObject);
begin
  Frecv.KeyPreview := True;
end;

procedure TFrecv.FormShow(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, DMstk.Qinvoi, 'SELECT *  FROM INVINVO WHERE RECVNO =:0', ['']);
  DM_SEC.Do_With_Query(actOpen, DMstk.Qinvtrn, 'SELECT * FROM INVTRAN WHERE RECVNO =:0', ['']);
end;

procedure TFrecv.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    DMstk.QInvoi.fieldbyname('LOCAT').asstring := Searchset.Keyno;
end;

procedure TFrecv.dbApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetAP = Mrok then
  begin
    DMstk.QInvoi.Fieldbyname('APCODE').asstring := Searchset.Keyno;
    DMstk.QInvoi.Fieldbyname('CREDTM').AsFloat := Searchset.HQuery1.Fieldbyname('CREDTM').AsFloat;
  end;
end;

procedure TFrecv.DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchStk, SearchStk);
  if SearchStk.ShowModalPurChase = MrOk then
    DMstk.QInvoi.FieldByName('PURCHANO').AsString := SearchStk.Keyno;
end;

procedure TFrecv.DBEdit21PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalType = Mrok then
  begin
    if Dmstk.QInvtrn.State = Dsbrowse then
      Dmstk.QInvtrn.Edit;
    DMstk.QInvtrn.fieldbyname('Type').asstring := Searchset.Keyno;
  end;
end;

procedure TFrecv.DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalmodel = Mrok then
  begin
    if Dmstk.QInvtrn.State = Dsbrowse then
      Dmstk.QInvtrn.Edit;
    DMstk.QInvtrn.fieldbyname('MODEL').asstring := Searchset.Keyno;
  end;
end;

procedure TFrecv.DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalBaab = Mrok then
  begin
    if Dmstk.QInvtrn.State = Dsbrowse then
      Dmstk.QInvtrn.Edit;
    DMstk.QInvtrn.fieldbyname('BAAB').asstring := Searchset.Keyno;
  end;
end;

procedure TFrecv.DBEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalcolor = Mrok then
  begin
    if Dmstk.QInvtrn.State = Dsbrowse then
      Dmstk.QInvtrn.Edit;
    DMstk.QInvtrn.fieldbyname('COLOR').asstring := Searchset.Keyno;
  end;
end;

procedure TFrecv.DBEdit25PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetgrp = Mrok then
  begin
    if Dmstk.QInvtrn.State = Dsbrowse then
      Dmstk.QInvtrn.Edit;
    DMstk.QInvtrn.fieldbyname('GCODE').asstring := Searchset.Keyno;
  end;
end;

procedure TFrecv.DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = Mrok then
  begin
    if Dmstk.QInvtrn.State = Dsbrowse then
      Dmstk.QInvtrn.Edit;
    DMstk.QInvtrn.fieldbyname('RVCODE').asstring := Searchset.Keyno;
  end;
end;

procedure TFrecv.AdvGlowButton1Click(Sender: TObject);
begin
  {Application.CreateForm(TfrSetInvmast,frSetInvmast);
  if frSetInvmast.ShowModal = MrOk then
  begin
    with frSetInvmast do
    begin
       frSetInvmast.QSetInvmast.First;
       while not QSetInvmast.Eof do
       begin
         DMstk.Qinvtrn.Append;
         DMstk.Qinvtrn.FieldByName('TYPE').AsString      := frSetInvmast.QSetInvmast.fieldbyname('TYPE').AsString;
         DMstk.Qinvtrn.FieldByName('MODEL').AsString     := frSetInvmast.QSetInvmast.fieldbyname('MODEL').AsString;
         DMstk.Qinvtrn.FieldByName('BAAB').AsString      := frSetInvmast.QSetInvmast.fieldbyname('BAAB').AsString;
         DMstk.Qinvtrn.FieldByName('CC').AsString        := frSetInvmast.QSetInvmast.fieldbyname('CC').AsString;
         DMstk.Qinvtrn.FieldByName('GCODE').AsString     := frSetInvmast.QSetInvmast.fieldbyname('GCODE').AsString;
         DMstk.Qinvtrn.FieldByName('CRCOST').AsFloat     := frSetInvmast.QSetInvmast.fieldbyname('STDCOST').AsFloat;
         DMstk.Qinvtrn.FieldByName('STDPRC').AsFloat     := frSetInvmast.QSetInvmast.fieldbyname('STDPRC').AsFloat;
         frSetInvmast.QSetInvmast.Next;
       end;
    end;
  end;  }
end;

procedure TFrecv.DBDateEdit2Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(DMstk.Qinvoi.FieldByName('RECVDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      DMstk.Qinvoi.FieldByName('RECVDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      DMstk.Qinvoi.FieldByName('RECVDT').AsDateTime := DMstk.Qinvoi.FieldByName('RECVDT').AsDateTime;
  end;
end;

procedure TFrecv.DBDateEdit1Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(DMstk.Qinvoi.FieldByName('INVDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      DMstk.Qinvoi.FieldByName('INVDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      DMstk.Qinvoi.FieldByName('INVDT').AsDateTime := DMstk.Qinvoi.FieldByName('INVDT').AsDateTime;
  end;
end;

procedure TFrecv.DBAdvGlowNavigator1BtnInsert(Sender: TObject);
begin
  if DataSource1.State = dsBrowse then
    SFMain.RaiseException('กรุณาเพิ่มข้อมูล  เพื่อทำรายการ..!');
end;

procedure TFrecv.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RecCar.fr3','2');
end;

procedure TFrecv.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'RECVNO' then
    Value := DBEdit7.Text;
end;

procedure TFrecv.DBEdit1PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from TAXBUYTRN where strno=:edit1');
    params[0].AsString := DBEdit1.Text;
    open;

    cxTextEdit1.Text := Query1.fieldbyname('TAXNO').AsString;
  end;
end;

procedure TFrecv.ADDPOClick(Sender: TObject);
begin
  if DBEdit30.Text = '' then
    sfmain.RaiseException('กรุณาอ้างอิงเลขที่ใบสั่งซื้อ..!');

  Application.CreateForm(TfrPurchaseKitDlg, frPurchaseKitDlg);
  if frPurchaseKitDlg.ShowModal = MrOk then
  begin
    with frPurchaseKitDlg do
    begin
      QBK_Invtran.First;
      while not QBK_Invtran.Eof do
      begin
        Dmstk.QInvtrn.Append;
        DMstk.Qinvtrn.FieldByName('TYPE').AsString := frPurchaseKitDlg.QBK_Invtran.fieldbyname('TYPE').AsString;
        Dmstk.QInvtrn.FieldByName('MODEL').AsString := frPurchaseKitDlg.QBK_Invtran.fieldbyname('MODEL').AsString;
        Dmstk.QInvtrn.FieldByName('BAAB').AsString := frPurchaseKitDlg.QBK_Invtran.fieldbyname('BAAB').AsString;
        DmStk.QInvtrn.FieldByName('COLOR').AsString := frPurchasekitDlg.QBK_Invtran.fieldbyname('COLOR').AsString;
        DmStk.QInvtrn.FieldByName('GCODE').AsString := frPurchasekitDlg.QBK_Invtran.fieldbyname('GCODE').AsString;
        DmStk.QInvtrn.FieldByName('CC').AsString := frPurchasekitDlg.QBK_Invtran.fieldbyname('CC').AsString;
        DmStk.QInvtrn.FieldByName('STRNO').AsString := frPurchasekitDlg.QBK_Invtran.fieldbyname('STRNO').AsString;
        DmStk.QInvtrn.FieldByName('ENGNO').AsString := frPurchasekitDlg.QBK_Invtran.fieldbyname('ENGNO').AsString;
        Dmstk.QInvtrn.FieldByName('RVLOCAT').AsString := frPurchasekitDlg.QBK_Invtran.fieldbyname('RVLOCAT').AsString;
        Dmstk.QInvtrn.FieldByName('CRLOCAT').AsString := frPurchasekitDlg.QBK_Invtran.fieldbyname('RVLOCAT').AsString;
        Dmstk.QInvtrn.FieldByName('STDPRC').AsFloat := frPurchasekitDlg.QBK_Invtran.fieldbyname('STDPRC').AsFloat;
        Dmstk.QInvtrn.FieldByName('APCODE').AsString := frPurchasekitDlg.QBK_Invtran.fieldbyname('APCODE').AsString;
        Dmstk.QInvtrn.FieldByName('RVCODE').AsString := frPurchasekitDlg.QBK_Invtran.fieldbyname('RVCODE').AsString;
        QBK_Invtran.Next;
      end;
    end;
  end;
end;

end.

