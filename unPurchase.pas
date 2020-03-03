unit unPurchase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, System.Actions,
  FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Dbkbd,
  BusinessSkinForm, Vcl.ActnList, n2wMoney, Data.DB, dxStatusBar, AdvGlowButton,
  AdvToolBar, cxGroupBox, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxNavigator, cxDBNavigator, cxRadioGroup, cxTextEdit, cxMaskEdit, cxButtonEdit,
  AdvPanel, frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFPurChase = class(TForm)
    Query1: TFDQuery;
    QPurChaseTrn: TFDQuery;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    QPurChaseHd: TFDQuery;
    QPurChaseHdPURCHASENO: TStringField;
    QPurChaseHdPURCHASEDT: TDateField;
    QPurChaseHdLOCAT: TStringField;
    QPurChaseHdREFNO: TStringField;
    QPurChaseHdSENDDT: TDateField;
    QPurChaseHdPURCODE: TStringField;
    QPurChaseHdAPCODE: TStringField;
    QPurChaseHdVATRT: TFloatField;
    QPurChaseHdINCLVAT: TStringField;
    QPurChaseHdCOST: TFloatField;
    QPurChaseHdVAT: TFloatField;
    QPurChaseHdTOTCOST: TFloatField;
    QPurChaseHdDESCP: TStringField;
    QPurChaseHdCREDTM: TFloatField;
    QPurChaseHdDUEDATE: TDateField;
    QPurChaseHdINPUTDT: TDateTimeField;
    QPurChaseHdUSERID: TStringField;
    QPurChaseTrnPURCHASENO: TStringField;
    QPurChaseTrnPURCHASEDT: TDateField;
    QPurChaseTrnGCODE: TStringField;
    QPurChaseTrnTYPE: TStringField;
    QPurChaseTrnMODEL: TStringField;
    QPurChaseTrnBAAB: TStringField;
    QPurChaseTrnCOLOR: TStringField;
    QPurChaseTrnCC: TFloatField;
    QPurChaseTrnRVLOCAT: TStringField;
    QPurChaseTrnCRLOCAT: TStringField;
    QPurChaseTrnCOST: TFloatField;
    QPurChaseTrnDISCT: TFloatField;
    QPurChaseTrnNETCOST: TFloatField;
    QPurChaseTrnVATRT: TFloatField;
    QPurChaseTrnVAT: TFloatField;
    QPurChaseTrnBONUS: TFloatField;
    QPurChaseTrnFLAG: TStringField;
    QPurChaseTrnMEMO1: TMemoField;
    QPurChaseTrnQTY: TFloatField;
    QPurChaseTrnTCOST: TFloatField;
    QPurChaseTrnTNETCOST: TFloatField;
    QPurChaseTrnNCOST: TFloatField;
    QPurChaseHdUpdatestatus: TStringField;
    DataSource2: TDataSource;
    QPurChaseTrn1: TFDQuery;
    QPurChaseTrn1PURCHASENO: TStringField;
    QPurChaseTrn1PURCHASEDT: TDateField;
    QPurChaseTrn1GCODE: TStringField;
    QPurChaseTrn1TYPE: TStringField;
    QPurChaseTrn1MODEL: TStringField;
    QPurChaseTrn1BAAB: TStringField;
    QPurChaseTrn1COLOR: TStringField;
    QPurChaseTrn1CC: TFloatField;
    QPurChaseTrn1RVLOCAT: TStringField;
    QPurChaseTrn1CRLOCAT: TStringField;
    QPurChaseTrn1COST: TFloatField;
    QPurChaseTrn1QTY: TFloatField;
    QPurChaseTrn1TCOST: TFloatField;
    QPurChaseTrn1DISCT: TFloatField;
    QPurChaseTrn1NCOST: TFloatField;
    QPurChaseTrn1VATRT: TFloatField;
    QPurChaseTrn1NETCOST: TFloatField;
    QPurChaseTrn1VAT: TFloatField;
    QPurChaseTrn1TNETCOST: TFloatField;
    QPurChaseTrn1BONUS: TFloatField;
    QPurChaseTrn1FLAG: TStringField;
    QPurChaseTrn1MEMO1: TMemoField;
    QPurChaseTrnRVQTY: TFloatField;
    QPurChaseTrnMARK: TStringField;
    QPurChaseTrnKANGRV: TFloatField;
    QPurChaseTrnCANQTY: TFloatField;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    FldCombo1: TcxDBButtonEdit;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    Edit3: TcxTextEdit;
    n2wBill: Tn2wMoney;
    ActionList1: TActionList;
    Action1: TAction;
    DBRadioGroup1: TcxDBRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrintBtn: TAdvGlowButton;
    DBAdvGlowNavigator1: TcxDBNavigator;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    FldEdit1: TcxDBTextEdit;
    DBDateEdit2: TcxDBDateEdit;
    FldCombo3: TcxDBButtonEdit;
    FldCombo2: TcxDBButtonEdit;
    FldEdit5: TcxDBTextEdit;
    FldEdit2: TcxDBTextEdit;
    DBDateEdit1: TcxDBDateEdit;
    DBEdit1: TcxDBTextEdit;
    DBDateEdit3: TcxDBDateEdit;
    FldEdit6: TcxDBTextEdit;
    FldCombo7: TcxDBButtonEdit;
    FldCombo8: TcxDBButtonEdit;
    FldCombo9: TcxDBButtonEdit;
    FldCombo10: TcxDBButtonEdit;
    FldEdit7: TcxDBTextEdit;
    FldCombo12: TcxDBButtonEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBMemo1: TcxDBMemo;
    DBkbd1: TDBkbd;
    Condpay: TFDQuery;
    cxGroupBox1: TcxGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    FldEdit3: TcxDBTextEdit;
    FldEdit8: TcxDBTextEdit;
    FldEdit9: TcxDBTextEdit;
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
    procedure DataSource1StateChange(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure QPurChaseTrnNewRecord(DataSet: TDataSet);
    procedure QPurChaseHdNewRecord(DataSet: TDataSet);
    procedure CancBtnClick(Sender: TObject);
    procedure FldCombo1Change(Sender: TObject);
    procedure FldCombo3Change(Sender: TObject);
    procedure FldCombo2Change(Sender: TObject);
    procedure QPurChaseTrnAfterPost(DataSet: TDataSet);
    procedure QPurChaseTrnTYPEValidate(Sender: TField);
    procedure QPurChaseTrnGCODEValidate(Sender: TField);
    procedure QPurChaseTrnMODELValidate(Sender: TField);
    procedure QPurChaseTrnBAABValidate(Sender: TField);
    procedure QPurChaseTrnCOLORValidate(Sender: TField);
    procedure QPurChaseHdLOCATValidate(Sender: TField);
    procedure QPurChaseHdAPCODEValidate(Sender: TField);
    procedure QPurChaseHdPURCODEValidate(Sender: TField);
    procedure EnqBtnClick(Sender: TObject);
    procedure QPurChaseHdAfterPost(DataSet: TDataSet);
    procedure QPurChaseHdPURCHASEDTValidate(Sender: TField);
    procedure QPurChaseHdCREDTMValidate(Sender: TField);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure QPurChaseHdAfterCancel(DataSet: TDataSet);
    procedure QPurChaseHdBeforePost(DataSet: TDataSet);
    procedure QPurChaseTrnCCValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure QPurChaseHdCalcFields(DataSet: TDataSet);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DataSource3StateChange(Sender: TObject);
    procedure QPurChaseTrnCOSTValidate(Sender: TField);
    procedure DBEdit6Exit(Sender: TObject);
    procedure QPurChaseTrnNCOSTValidate(Sender: TField);
    procedure QPurChaseTrnBeforePost(DataSet: TDataSet);
    procedure FldCombo1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure PrintBtnClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure QPurChaseTrnAfterDelete(DataSet: TDataSet);
    procedure QPurChaseHdBeforeDelete(DataSet: TDataSet);
    procedure QPurChaseHdUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    VPurChaseNo: string;
    XYear, XMonth, XDay: word;
    { Public declarations }
  end;

var
  FPurChase: TFPurChase;
  XTYPE, XMODEL, XBAAB, XCOLOR: string;
  Duplicate: Boolean;

implementation

uses
  dm1, USoftFirm, SrchStk, Srchset1, functn01, Dmsec;
{$R *.dfm}

procedure TFPurChase.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (FldEdit1.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  DBRadioGroup1.Properties.ReadOnly := not SavBtn.Visible;
  PrintBtn.Visible := (DataSource1.State = Dsbrowse) and (FldEdit1.Text <> '');

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
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
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
      end;
    end;
  end
  else if (DataSource1.Dataset.State = DsInsert) or (DataSource1.Dataset.State = DsEdit) then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
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
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := $00FFFFD9;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
      end;
    end;
  end;
  if (DataSource1.DataSet.State = DsEdit) then
  begin
    DBRadioGroup1.Enabled := False;
  end;
  DM01.QDbconfig.Close;
  DM01.QDbconfig.Open;
  if (dm01.QDBConfig.Fieldbyname('R_PURCHA').asstring = 'Y') then
    FldEdit1.Properties.Readonly := True
  else if (DataSource1.Dataset.State = DsInsert) then
    FldEdit1.Properties.Readonly := False
  else
    FldEdit1.Properties.Readonly := True;
  if FldEdit1.Properties.Readonly then
    FldEdit1.Style.Color := clBtnFace
  else
    FldEdit1.Style.Color := clWhite;
  FldCombo1.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBDateEdit2.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  FldEdit3.Properties.ReadOnly := True;
  FldEdit8.Properties.ReadOnly := True;
  FldEdit9.Properties.ReadOnly := True;
end;

procedure TFPurChase.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFPurChase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FPurChase := nil;
end;

procedure TFPurChase.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F7 then
    EnqBtnClick(Sender);
  if Key = VK_F2 then
    SavBtnClick(Sender);
  if (Key = VK_F8) and (delbtn.Visible) then
    DelBtnClick(Sender);
  if Key = VK_F5 then
    InsBtnClick(Sender);
end;

procedure TFPurChase.FormShow(Sender: TObject);
begin
  Dm_sec.Do_With_Query(actOpen, QPurChaseHd, 'SELECT * FROM HDPURCHASE WHERE PURCHASENO =:0', ['']);
  Dm_sec.Do_With_Query(actOpen, QPurChaseTrn, 'SELECT * FROM TRPURCHASE WHERE PURCHASENO=:0', ['']);
end;

procedure TFPurChase.InsBtnClick(Sender: TObject);
begin
  Dm_sec.Do_With_Query(actInsert, QPurChaseHd, 'SELECT * FROM HDPURCHASE WHERE PURCHASENO =:0', ['']);
  Dm_sec.Do_With_Query(actOpen, QPurChaseTrn, 'SELECT * FROM TRPURCHASE WHERE PURCHASENO =:0', ['']);
  FldCombo3.SetFocus;
end;

procedure TFPurChase.DelBtnClick(Sender: TObject);
begin
  SFMain.Findexist('INVINVO', 'PURCHANO', QPurChaseHdPURCHASENO.Asstring);

  if FldEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        QPurChaseHd.delete;
      end;
  end;
end;

procedure TFPurChase.SavBtnClick(Sender: TObject);
begin
  if FldCombo12.Text = '' then
    SFMain.RaiseException('ยังไม่บันทึกกลุ่มสินค้า...!');
  if FldCombo2.Text = '' then
    sfmain.RaiseException('กรุณาระบุผู้สั่งซื้อ..!');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'STK12', 'INSERT', QPurChaseHdPURCHASENO.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'STK12', 'EDIT', QPurChaseHdPURCHASENO.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QPurChaseHd.Post;
end;

procedure TFPurChase.QPurChaseTrnNewRecord(DataSet: TDataSet);
begin
  if QPurChaseHdPURCHASENO.AsString = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบสั่งซื้อ...!');
  ClearAsFloat(QPurChaseTrn);
  QPurChaseTrnRVLOCAT.AsString := QPurChaseHdLocat.AsString;
  QPurChaseTrnCRLOCAT.AsString := QPurChaseHdLocat.AsString;
  QPurChaseTrnPURCHASENO.AsString := QPurChaseHdPURCHASENO.AsString;
  QPurChaseTrnPURCHASEDT.AsDateTime := QPurChaseHdPURCHASEDT.AsDateTime;
  QPurChaseTrnVATRT.AsFloat := QPurChaseHdVATRT.AsFloat;
  QPurChaseTrnQty.Asfloat := 1;
  QPurChaseTrnFLAG.AsString := 'N';
  if XTYPE <> '' then
  begin
    QPurChaseTrn.FieldByName('TYPE').AsString := XTYPE;
    QPurChaseTrn.FieldByName('MODEL').AsString := XMODEL;
    QPurChaseTrn.FieldByName('BAAB').AsString := XBAAB;
    QPurChaseTrn.FieldByName('COLOR').AsString := XCOLOR;
  end;
end;

procedure TFPurChase.QPurChaseHdNewRecord(DataSet: TDataSet);
begin
  condpay.Open;
  Duplicate := False;
  ClearAsFloat(QPurChaseHd);
  if not dm01.QCondpay.Active then
    dm01.QCondpay.Open;
  QPurChaseHdVATRT.AsFloat := dm01.QCondpay.Fieldbyname('VAT').asfloat;
  QPurChaseHdLocat.AsString := SFMain.Xlocat;
  QPurChaseHdPURCHASEDT.AsDateTime := SFMain.CR_DATE;
  QPurChaseHdSENDDT.AsDateTime := Date;
  QPurChaseHdINPUTDT.AsDateTime := Now;
  QPurChaseHdUserid.AsString := SFMain.Xuser_ID;
     //QPurChaseHdINCLVAT.AsString := '2';

  if Condpay.Fieldbyname('Vattype').asstring <> '' then
    QPurChaseHd.FieldByName('INCLVAT').Asstring := Condpay.Fieldbyname('Vattype').asstring
  else
    QPurChaseHd.FieldByName('INCLVAT').Asstring := '2';
end;

procedure TFPurChase.CancBtnClick(Sender: TObject);
begin
  QPurChaseHd.Cancel;
end;

procedure TFPurChase.FldCombo1Change(Sender: TObject);
begin
  Edit2.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', FldCombo1.Text);
end;

procedure TFPurChase.FldCombo3Change(Sender: TObject);
begin
  Edit1.Text := SFMain.FindShowDesc('APMAST', 'APNAME', 'APCODE', FldCombo3.Text);
end;

procedure TFPurChase.FldCombo2Change(Sender: TObject);
begin
  Edit3.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', FldCombo2.Text);
end;

procedure TFPurChase.QPurChaseTrnAfterPost(DataSet: TDataSet);
var
  XNetcst, XNetvat, XNetTot, XVat: double;
  SAmt: string;
  bk: Tbookmark;
begin
  QPurChaseTrn.DisableControls;
  bk := QPurChaseTrn.GetBookmark;

   //XVat      := QPurChaseHdVatrt.AsFloat;
  XNetcst := 0;
  XNetvat := 0;
  XNetTot := 0;
  QPurChaseTrn.first;
  while not QPurChaseTrn.Eof do
  begin
    XNetcst := XNetcst + QPurChaseTrnNETCOST.Asfloat;
    XNetvat := XNetvat + QPurChaseTrnVAT.Asfloat;
    XNetTot := XNetTot + QPurChaseTrnTNetCOST.Asfloat;
    QPurChaseTrn.Next;
  end;
  if QPurChaseHd.state = Dsbrowse then
    QPurChaseHd.edit;
  QPurChaseHdCOST.AsFloat := XNetcst;
  QPurChaseHdVAT.AsFloat := XNetvat;
  QPurChaseHdTOTCOST.AsFloat := XNetTot;

  QPurChaseTrn.EnableControls;
  QPurChaseTrn.GotoBookMark(bk);
  QPurChaseTrn.FreeBookmark(bk);
end;

procedure TFPurChase.QPurChaseTrnTYPEValidate(Sender: TField);
begin
  if (QPurChaseTrnFLAG.asstring = 'Y') then
    SFMain.RaiseException('รายการนี้รับสต็อกไปแล้วแก้ไขไม่ได้..!');
  SFMain.FindNoExist('SETTYPE', 'TYPECOD', QPurChaseTrnTYPE.AsString);
end;

procedure TFPurChase.QPurChaseTrnGCODEValidate(Sender: TField);
begin
  if (QPurChaseTrnFLAG.asstring = 'Y') then
    SFMain.RaiseException('รายการนี้รับสต็อกไปแล้วแก้ไขไม่ได้..!');
  SFMain.FindNoExist('SETGROUP', 'GCODE', QPurChaseTrnGCODE.AsString);
end;

procedure TFPurChase.QPurChaseTrnMODELValidate(Sender: TField);
begin
  if (QPurChaseTrnFLAG.asstring = 'Y') then
    SFMain.RaiseException('รายการนี้รับสต็อกไปแล้วแก้ไขไม่ได้..!');
  SFMain.FindNoExist('SETMODEL', 'MODELCOD', QPurChaseTrnMODEL.AsString);
end;

procedure TFPurChase.QPurChaseTrnBAABValidate(Sender: TField);
begin
  if (QPurChaseTrnFLAG.asstring = 'Y') then
    SFMain.RaiseException('รายการนี้รับสต็อกไปแล้วแก้ไขไม่ได้..!');
  SFMain.FindNoExist('SETBAAB', 'BAABCOD', QPurChaseTrnBAAB.AsString);
end;

procedure TFPurChase.QPurChaseTrnCOLORValidate(Sender: TField);
begin
  if (QPurChaseTrnFLAG.asstring = 'Y') then
    SFMain.RaiseException('รายการนี้รับสต็อกไปแล้วแก้ไขไม่ได้..!');
  SFMain.FindNoExist('SETCOLOR', 'COLORCOD', QPurChaseTrnCOLOR.AsString);
end;

procedure TFPurChase.QPurChaseHdLOCATValidate(Sender: TField);
begin
  QPurChaseHdPURCHASEDTValidate(Sender);
//  Dm_sec.FindNoExist('INVLOCAT','LOCATCD',QPurChaseHdLOCAT.AsString);
end;

procedure TFPurChase.QPurChaseHdAPCODEValidate(Sender: TField);
begin
  SFMain.FindNoExist('APMAST', 'APCODE', QPurChaseHdAPCODE.AsString);
end;

procedure TFPurChase.QPurChaseHdPURCODEValidate(Sender: TField);
begin
  SFMain.FindNoExist('OFFICER', 'CODE', QPurChaseHdPURCODE.AsString);
end;

procedure TFPurChase.QPurChaseHdUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
//   Duplicate:=True;
end;

procedure TFPurChase.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchStk, SearchStk);
  if sfmain.XChgLoc = 'Y' then
    SearchStk.Xlocat := ''
  else
    SearchStk.Xlocat := sfmain.Xlocat;
  if SearchStk.ShowModalPurChase = Mrok then
  begin
    Dm_sec.Do_With_Query(actOpen, QPurChaseHd, 'SELECT * FROM HDPURCHASE WHERE PURCHASENO=:0', [SearchStk.Keyno]);
    Dm_sec.Do_With_Query(actOpen, QPurChaseTrn, 'SELECT * FROM TRPURCHASE WHERE PURCHASENO=:0', [SearchStk.Keyno]);
  end;
end;

procedure TFPurChase.QPurChaseHdAfterPost(DataSet: TDataSet);
var
  VPurChaseNo: string;
begin
  VPurChaseNo := QPurChaseHdPurChaseno.AsString;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QPurChaseHd.Active then
      if (QPurChaseHd.ApplyUpdates = 0) then
        QPurChaseHd.CommitUpdates
      else
        raise Exception.Create(QPurChaseHd.RowError.Message);
    if QPurChaseTrn.Active then
      if (QPurChaseTrn.ApplyUpdates = 0) then
        QPurChaseTrn.CommitUpdates
      else
        raise Exception.Create(QPurChaseTrn.RowError.Message);
    if Dm_sec.QLastno.Active then
      if (Dm_sec.QLastno.ApplyUpdates = 0) then
        Dm_sec.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm_sec.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QPurChaseHd.Edit;
    raise;
  end;
  //
  with QPurChaseHd do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM HDPURCHASE WHERE PURCHASENO = :0');
    Params[0].Asstring := VPurChaseNo;
    Open;
  end;
  with QPurChaseTrn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TRPURCHASE WHERE PURCHASENO = :0');
    Params[0].Asstring := VPurChaseNo;
    Open;
  end;
end;

procedure TFPurChase.QPurChaseHdPURCHASEDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  DM01.QDbconfig.Close;
  DM01.QDbconfig.Open;
  if DM01.QDbconfig.FieldByName('R_PURCHA').AsString = 'Y' then
  begin
    HF := 'H_PURCHA';
    LF := 'L_PURCHA';
    LV := QPurChaseHdLOCAT.AsString;
    DV := QPurChaseHdPURCHASEDT.Asdatetime;
    if QPurChaseHdUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(PURCHASENO) AS MAXNO FROM HDPURCHASE WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(PURCHASENO,2,2)=:EDIT2 AND SUBSTR(PURCHASENO,5,2)=:EDIT3 ' +
        'AND SUBSTR(PURCHASENO,7,2)=:EDIT4';
      QPurChaseHdPURCHASENO.Asstring := Dm01.MaxNo(HF, LF, LV, SQLTXT, DV);
    end;
  end;
  DecodeDate(DV, XYear, XMonth, XDay);
end;

procedure TFPurChase.QPurChaseHdCREDTMValidate(Sender: TField);
begin
  DBDateEdit1Exit(Sender);
end;

procedure TFPurChase.DBDateEdit1Exit(Sender: TObject);
begin
  if QPurChaseHdSENDDT.Asstring <> '' then
    QPurChaseHdDUEDATE.Asdatetime := QPurChaseHdSENDDT.Asdatetime + QPurChaseHdcredtm.asfloat;
end;

procedure TFPurChase.QPurChaseHdAfterCancel(DataSet: TDataSet);
begin
  if QPurChaseHd.Active then
    QPurChaseHd.CancelUpdates;
  if QPurChaseTrn.Active then
    QPurChaseTrn.CancelUpdates;
end;

procedure TFPurChase.QPurChaseHdBeforePost(DataSet: TDataSet);
begin
  QPurChaseTrn.First;
  if QPurChaseHdUpdateStatus.Value = 'Inserted' then
  begin
    QPurChaseHdPURCHASEDTValidate(QPurChaseHdPURCHASEDT);
    QPurChaseTrn.DisableControls;
    QPurChaseTrn.AfterPost := Nil;
    QPurChaseTrn.First;
    while not QPurChaseTrn.Eof do
    begin
      QPurChaseTrn.Edit;
      QPurChaseTrn.Fieldbyname('PURCHASENO').Asstring := QPurChaseHdPURCHASENO.Asstring;
      QPurChaseTrn.Next;
    end;
    QPurChaseTrn.AfterPost := QPurChaseTrnAfterPost;
    QPurChaseTrn.EnableControls;
  end;
end;

procedure TFPurChase.QPurChaseTrnCCValidate(Sender: TField);
begin
  if (QPurChaseTrnFLAG.asstring = 'Y') then
    SFMain.RaiseException('รายการนี้รับสต็อกไปแล้วแก้ไขไม่ได้..!');
end;

procedure TFPurChase.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK01_7');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFPurChase.QPurChaseHdCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QPurChaseHd.CachedUpdates then
    QPurChaseHdUpdateStatus.Value := UpdateStatusStr[QpurChaseHd.UpdateStatus];
end;

procedure TFPurChase.DBMemo1Click(Sender: TObject);
begin
  FPurChase.KeyPreview := False;
end;

procedure TFPurChase.DBMemo1Exit(Sender: TObject);
begin
  FPurChase.KeyPreview := True;
end;

procedure TFPurChase.DataSource3StateChange(Sender: TObject);
var
  n: Word;
begin
  if DataSource3.DataSet.State = DsBrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 2) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
    end;
  end
  else if (DataSource3.DataSet.State = DsInsert) then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 2) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := $00ECFFEC;
      end;
    end;
  end;
end;

procedure TFPurChase.QPurChaseTrnCOSTValidate(Sender: TField);
begin
  if QPurChaseTrn.state = Dsbrowse then
    QPurChaseTrn.edit;
  QPurChaseTrnTCost.AsFloat := QPurChaseTrnCost.AsFloat * QPurChaseTrnQty.AsFloat;
end;

procedure TFPurChase.DBEdit6Exit(Sender: TObject);
begin
  if (DataSource3.DataSet.State = dsInsert) or (DataSource3.DataSet.State = dsEdit) then
  begin
    QPurChaseTrnNCost.Asfloat := QPurChaseTrnTCost.Asfloat - QPurChaseTrnDISCT.Asfloat;
  end;
end;

procedure TFPurChase.QPurChaseTrnNCOSTValidate(Sender: TField);
var
  E: Real;
begin
  if (DataSource3.DataSet.State = dsInsert) or (DataSource3.DataSet.State = dsEdit) then
  begin
    if QPurChaseHdINCLVAT.AsString = '1' then
    begin
      E := FRound(QPurChaseTrnNCost.Asfloat * QPurChaseTrnVatrt.Asfloat / (100 + QPurChaseTrnVatrt.Asfloat), 2);
      QPurChaseTrnVat.Asfloat := E;
      QPurChaseTrnNetCost.Asfloat := QPurChaseTrnNCost.Asfloat - E;
      QPurChaseTrnTNetCost.Asfloat := QPurChaseTrnNetCost.Asfloat + E;
    end
    else
    begin
      E := FRound(QPurChaseTrnNCost.Asfloat * QPurChaseTrnVatrt.Asfloat / 100, 2);
      QPurChaseTrnVat.Asfloat := E;
      QPurChaseTrnNetCost.Asfloat := QPurChaseTrnNCost.Asfloat;
      QPurChaseTrnTNetCost.Asfloat := QPurChaseTrnNetCost.Asfloat + E;
    end;
  end;
end;

procedure TFPurChase.QPurChaseTrnBeforePost(DataSet: TDataSet);
begin
  XTYPE := QPurChaseTrn.fieldbyname('TYPE').AsString;
  XMODEL := QPurChaseTrn.fieldbyname('MODEL').AsString;
  XBAAB := QPurChaseTrn.fieldbyname('BAAB').AsString;
  XCOLOR := QPurChaseTrn.fieldbyname('COLOR').AsString;
  QPurChaseTrnKANGRV.AsFloat := QPurChaseTrnQTY.AsFloat;
end;

procedure TFPurChase.FldCombo1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    QPurChaseHdLocat.asstring := Searchset.Keyno;
end;

procedure TFPurChase.FldCombo3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetAP = Mrok then
  begin
    QPurChaseHdAPCODE.asstring := Searchset.Keyno;
    Edit1.Text := Searchset.HQuery1.Fieldbyname('Apname').asstring;
    QPurChaseHdCREDTM.AsFloat := Searchset.HQuery1.Fieldbyname('CREDTM').AsFloat;
  end;
end;

procedure TFPurChase.FldCombo2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = Mrok then
  begin
    if QPurChaseHd.State = Dsbrowse then
      QPurChaseHd.Edit;
    QPurChaseHdPURCODE.asstring := Searchset.Keyno;
  end;
end;

procedure TFPurChase.FldCombo7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalType = Mrok then
  begin
    if QPurChaseTrn.State = Dsbrowse then
      QPurChaseTrn.Edit;
    QPurChaseTrn.fieldbyname('Type').asstring := Searchset.Keyno;
  end;
end;

procedure TFPurChase.FldCombo8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalmodel = Mrok then
  begin
    if QPurChaseTrn.State = Dsbrowse then
      QPurChaseTrn.Edit;
    QPurChaseTrn.fieldbyname('MODEL').asstring := Searchset.Keyno;
  end;
end;

procedure TFPurChase.FldCombo9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalBaab = Mrok then
  begin
    if QPurChaseTrn.State = Dsbrowse then
      QPurChaseTrn.Edit;
    QPurChaseTrn.fieldbyname('BAAB').asstring := Searchset.Keyno;
  end;
end;

procedure TFPurChase.FldCombo10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalcolor = Mrok then
  begin
    if QPurChaseTrn.State = Dsbrowse then
      QPurChaseTrn.Edit;
    QPurChaseTrn.fieldbyname('COLOR').asstring := Searchset.Keyno;
  end;
end;

procedure TFPurChase.FldCombo12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetgrp = Mrok then
  begin
    if QPurChaseTrn.State = Dsbrowse then
      QPurChaseTrn.Edit;
    QPurChaseTrn.fieldbyname('GCODE').asstring := Searchset.Keyno;
  end;
end;

procedure TFPurChase.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//     n2wBill.Value := FRPARSER.Calc(P1);
//     VAL := n2wBill.Text;
//  END;
end;

procedure TFPurChase.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'VPURCHASENO' then
    Value := FldEdit1.Text;
end;

procedure TFPurChase.PrintBtnClick(Sender: TObject);
begin
  if FldEdit1.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PurChaseCar.fr3', '1');
end;

procedure TFPurChase.Action1Execute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PurChaseCar.fr3', '2');
end;

procedure TFPurChase.QPurChaseTrnAfterDelete(DataSet: TDataSet);
var
  XNetcst, XNetvat, XNetTot, XVat: double;
  SAmt: string;
  bk: Tbookmark;
begin
  QPurChaseTrn.DisableControls;
  bk := QPurChaseTrn.GetBookmark;

   //XVat      := QPurChaseHdVatrt.AsFloat;
  XNetcst := 0;
  XNetvat := 0;
  XNetTot := 0;
  QPurChaseTrn.first;
  while not QPurChaseTrn.Eof do
  begin
    XNetcst := XNetcst + QPurChaseTrnNETCOST.Asfloat;
    XNetvat := XNetvat + QPurChaseTrnVAT.Asfloat;
    XNetTot := XNetTot + QPurChaseTrnTNetCOST.Asfloat;
    QPurChaseTrn.Next;
  end;
  if QPurChaseHd.state = Dsbrowse then
    QPurChaseHd.edit;
  QPurChaseHdCOST.AsFloat := XNetcst;
  QPurChaseHdVAT.AsFloat := XNetvat;
  QPurChaseHdTOTCOST.AsFloat := XNetTot;

  QPurChaseTrn.EnableControls;
  QPurChaseTrn.GotoBookMark(bk);
  QPurChaseTrn.FreeBookmark(bk);
end;

procedure TFPurChase.QPurChaseHdBeforeDelete(DataSet: TDataSet);
begin
  QPurChaseTrn.AfterDelete := Nil;
  QPurChaseTrn.First;
  while not QPurChaseTrn.Eof do
    QPurChaseTrn.Delete;
  QPurChaseTrn.AfterDelete := QPurChaseTrnAfterPost;
end;

end.

