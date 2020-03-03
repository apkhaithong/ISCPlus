unit SetCond2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, Mask, DBCtrls, DB, ImgList, ToolWin,
  RzButton, RzSpnEdt, cxLookAndFeelPainters, cxGroupBox, cxTextEdit, cxDBEdit,
  cxContainer, cxEdit, cxCheckBox, cxPC, cxControls, cxRadioGroup, cxMaskEdit,
  cxDropDownEdit, cxCalendar, AdvGlowButton, AdvToolBar, AdvPanel, RzDbkbd,
  cxGraphics, cxLookAndFeels, dxBarBuiltInMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TSetCmpForm2 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label32: TLabel;
    Label35: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    AdvPanel2: TAdvPanel;
    Bevel7: TBevel;
    Label56: TLabel;
    Label58: TLabel;
    Label61: TLabel;
    Label67: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Bevel9: TBevel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    DBEdit23: TcxDBTextEdit;
    DBEdit24: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxTabSheet2: TcxTabSheet;
    AdvPanel3: TAdvPanel;
    cxGroupBox1: TcxGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label28: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label87: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label55: TLabel;
    Label86: TLabel;
    Label88: TLabel;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label91: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBCheckBox17: TcxDBCheckBox;
    cxTabSheet4: TcxTabSheet;
    AdvPanel4: TAdvPanel;
    cxGroupBox7: TcxGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label25: TLabel;
    cxDBCheckBox27: TcxDBCheckBox;
    cxDBCheckBox28: TcxDBCheckBox;
    cxDBCheckBox29: TcxDBCheckBox;
    cxDBCheckBox33: TcxDBCheckBox;
    cxDBCheckBox34: TcxDBCheckBox;
    cxDBCheckBox35: TcxDBCheckBox;
    DBEdit5: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBCheckBox36: TcxDBCheckBox;
    cxDBTextEdit36: TcxDBTextEdit;
    DBEdit29: TcxDBTextEdit;
    cxDBCheckBox37: TcxDBCheckBox;
    DBCheckBox45: TcxDBCheckBox;
    cxTabSheet7: TcxTabSheet;
    AdvPanel5: TAdvPanel;
    cxGroupBox12: TcxGroupBox;
    cxDBCheckBox53: TcxDBCheckBox;
    cxDBCheckBox57: TcxDBCheckBox;
    cxGroupBox13: TcxGroupBox;
    cxDBCheckBox55: TcxDBCheckBox;
    cxDBCheckBox56: TcxDBCheckBox;
    cxGroupBox14: TcxGroupBox;
    DBCheckBox46: TcxDBCheckBox;
    cxGroupBox16: TcxGroupBox;
    cxDBCheckBox45: TcxDBCheckBox;
    cxDBCheckBox52: TcxDBCheckBox;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    cxDBTextEdit46: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    AdvPanel9: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    OpenDialog1: TOpenDialog;
    Condpay: TFDTable;
    dbconfig: TFDTable;
    QrCondpay: TFDQuery;
    DBkbd1: TRzDBkbd;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    QrCondpayCURYEAR: TStringField;
    QrCondpayCURMONTH: TStringField;
    QrCondpayLICEN_NO: TStringField;
    QrCondpayCOMP_NM: TStringField;
    QrCondpayCOMP_ADR1: TStringField;
    QrCondpayCOMP_ADR2: TStringField;
    QrCondpayTELP: TStringField;
    QrCondpayTAXID: TStringField;
    QrCondpayVATRT: TFloatField;
    QrCondpayTAXNAME: TStringField;
    QrCondpayTAXADDR: TStringField;
    QrCondpaySVRATE: TFloatField;
    QrCondpayNEXTKILO: TIntegerField;
    QrCondpayNEXTDAY: TIntegerField;
    QrCondpaySVFLAG: TStringField;
    QrCondpayCAMTYP: TStringField;
    QrCondpayCAMPART: TFloatField;
    QrCondpayCAMSERV: TFloatField;
    QrCondpayCAMDAT1: TDateField;
    QrCondpayCAMDAT2: TDateField;
    QrCondpayH_CSH: TStringField;
    QrCondpayH_CRD: TStringField;
    QrCondpayH_CSD: TStringField;
    QrCondpayH_PUR: TStringField;
    QrCondpayH_CRN: TStringField;
    QrCondpayH_DBN: TStringField;
    QrCondpayH_RCG: TStringField;
    QrCondpayH_RTG: TStringField;
    QrCondpayH_TRA: TStringField;
    QrCondpayH_TRB: TStringField;
    QrCondpayH_PO: TStringField;
    QrCondpayH_PK: TStringField;
    QrCondpayH_PKSV: TStringField;
    QrCondpayH_RTSV: TStringField;
    QrCondpayH_QA1: TStringField;
    QrCondpayH_ADJ: TStringField;
    QrCondpayH_BNO: TStringField;
    QrCondpayH_BSNO: TStringField;
    QrCondpayH_OTH: TStringField;
    QrCondpayH_RVOTH: TStringField;
    QrCondpayH_JOB: TStringField;
    QrCondpayH_QA: TStringField;
    QrCondpayH_RQPK: TStringField;
    QrCondpayH_INVOT: TStringField;
    QrCondpayH_DVTX: TStringField;
    QrCondpayH_BLNO: TStringField;
    QrCondpayH_DVPT: TStringField;
    QrCondpayH_DVSV: TStringField;
    QrCondpayH_DVAL: TStringField;
    QrCondpayH_DVOH: TStringField;
    QrCondpayH_TXPT: TStringField;
    QrCondpayH_TXSV: TStringField;
    QrCondpayH_TXAL: TStringField;
    QrCondpayH_TXOH: TStringField;
    QrCondpayH_AJTM: TStringField;
    QrCondpayH_CUS: TStringField;
    QrCondpayH_STIN: TStringField;
    QrCondpaySVRATE2: TFloatField;
    QrCondpayFIXJOB: TStringField;
    QrCondpayVATTYPE: TStringField;
    QrCondpaySELDB2: TStringField;
    QrCondpayPODISC: TStringField;
    QrCondpayPOCOST: TStringField;
    QrCondpayMULTIFR: TStringField;
    QrCondpaySALTYPE: TStringField;
    QrCondpayDISCTYP: TStringField;
    QrCondpayCAMPTYP: TStringField;
    QrCondpayDISBATH: TStringField;
    QrCondpayTEMPTAX: TStringField;
    QrCondpayH_WARTY: TStringField;
    QrCondpayMAPDRV: TStringField;
    QrCondpayH_OTHC: TStringField;
    QrCondpayH_OTHD: TStringField;
    QrCondpayH_FRE: TStringField;
    QrCondpayH_DXOH: TStringField;
    QrCondpayH_SLCS: TStringField;
    QrCondpayH_SLCD: TStringField;
    QrCondpayH_SLFI: TStringField;
    QrCondpayH_SLRS: TStringField;
    QrCondpayH_SLRC: TStringField;
    QrCondpayH_SLMV: TStringField;
    QrCondpayH_SLQA: TStringField;
    QrCondpayH_TXCS: TStringField;
    QrCondpayH_TXFI: TStringField;
    QrCondpayH_SLBL: TStringField;
    QrCondpaySEPOH: TStringField;
    QrCondpayH_PTOH: TStringField;
    QrCondpayH_SVOH: TStringField;
    QrCondpayNSTKLOB: TStringField;
    QrCondpayH_TXDV: TStringField;
    QrCondpayISSUTAX: TStringField;
    QrCondpayH_DBSV: TStringField;
    QrCondpayH_CLMT: TStringField;
    QrCondpayH_RTPT: TStringField;
    QrCondpayADDCHARG: TFloatField;
    QrCondpayH_YEAR: TStringField;
    QrCondpayFLINVADD: TStringField;
    QrCondpayH_PR: TStringField;
    QrCondpaySTART_STK: TDateField;
    QrCondpayMEMO1: TMemoField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBCheckBox45MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbconfigNewRecord(DataSet: TDataSet);
    procedure CondpayNewRecord(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetCmpForm2: TSetCmpForm2;

implementation

uses
  DmSec, USoftFirm;

{$R *.DFM}

procedure TSetCmpForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TSetCmpForm2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
  end;
end;

procedure TSetCmpForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Condpay.Close;
  Action := Cafree;
  SetCmpForm2 := nil;
end;

procedure TSetCmpForm2.SaveBtnClick(Sender: TObject);
begin
  if DBEDIT5.Text = DBEDIT7.Text then
    SFMain.RaiseException('รหัสนำหน้าใบส่งสินค้า/ใบกำกับหน้าร้าน ซ้ำกับ รหัสนำหน้าใบส่งสินค้า/ใบกำกับเครดิต');

  if Condpay.State in [Dsinsert, Dsedit] then
    Condpay.Post;
  if Dbconfig.State in [Dsinsert, Dsedit] then
    Dbconfig.Post;
  if QrCondpay.State in [Dsinsert, DsEdit] then
    QrCondpay.Post;
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_1', 'Edit', 'Documents');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Close;
end;

procedure TSetCmpForm2.DataSource1StateChange(Sender: TObject);
var
  n: Word;
begin
  SaveBtn.Enabled := (DataSource1.State in DsEditmodes) or (DataSource2.State in DsEditmodes);
  //CancBtn.Enabled := SaveBtn.Enabled;
  CloseBtn.Enabled := not SaveBtn.Enabled;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Enabled := False;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBCheckBox) and (TcxDBCheckBox(Components[n]).Tag = 0) then
      begin
        TcxDBCheckBox(Components[n]).Properties.ReadOnly := True;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Enabled := True;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBCheckBox) and (TcxDBCheckBox(Components[n]).Tag = 0) then
      begin
        TcxDBCheckBox(Components[n]).Properties.ReadOnly := False;
      end;
    end;
  end;
end;

procedure TSetCmpForm2.CancBtnClick(Sender: TObject);
begin
  if SetCmpForm2.Condpay.State in [Dsinsert, Dsedit] then
    SetCmpForm2.Condpay.Cancel;
  if SetCmpForm2.Dbconfig.State in [Dsinsert, Dsedit] then
    SetCmpForm2.Dbconfig.Cancel;

  CloseBtn.Enabled := True;
  SaveBtn.Enabled := False;
  //CancBtn.Enabled := False;

  with QrCondpay do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM SCONDPAY');
    Open;
  end;
  Condpay.Open;
  if Condpay.Recordcount = 0 then
    Condpay.Insert;
  DBConFig.Open;
  if DBConFig.Recordcount = 0 then
    DBConFig.Insert;
end;

procedure TSetCmpForm2.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET01_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSetCmpForm2.DBMemo1Enter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TSetCmpForm2.DBMemo1Exit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TSetCmpForm2.SpeedButton6Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    if Condpay.State = Dsbrowse then
      Condpay.Edit;
    Condpay.Fieldbyname('Mapdrv').asstring := ExtractFilePath(OpenDialog1.Filename);
  end;
end;

procedure TSetCmpForm2.DBCheckBox45MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (DBCheckBox46.Checked) then
  begin
    DBCheckBox45.Checked := false;
    SFMain.RaiseException('ระบบภาษีศูนย์บริการใช้แบบใบส่งของชั่วคราว<br/>และออกใบเสร็จ/ใบกำกับอยู่แล้ว');
  end;
end;

procedure TSetCmpForm2.dbconfigNewRecord(DataSet: TDataSet);
var
  S: string;
  I: Integer;
begin
  DbConfig.Fieldbyname('L_Prc2').Asstring := 'N';
  DbConfig.Fieldbyname('L_Prc3').Asstring := 'N';
  DbConfig.Fieldbyname('L_Prc4').Asstring := 'N';
  for I := 0 to DataSet.FieldCount - 1 do
  begin
    S := DataSet.Fields[I].FieldName;
    if Copy(S, 1, 1) = 'H' then
      DataSet.Fieldbyname(S).Asstring := 'Y';
  end;
end;

procedure TSetCmpForm2.CondpayNewRecord(DataSet: TDataSet);
var
  XYear, XMonth, XDay: Word;
  XDate: TdateTime;
begin
  XDate := Now;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Condpay.Fieldbyname('CurYear').Asstring := Floattostr(XYear);
  Condpay.Fieldbyname('CurMonth').Asstring := Floattostr(XMonth);
  Condpay.Fieldbyname('Svflag').Asstring := 'N';
  Condpay.Fieldbyname('Vattype').Asstring := '2';
  Condpay.Fieldbyname('Fixjob').Asstring := 'Y';
end;

procedure TSetCmpForm2.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSetCmpForm2.FormShow(Sender: TObject);
begin
  with QrCondpay do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM SCONDPAY');
    Open;
  end;
  Condpay.Open;
  if Condpay.Recordcount = 0 then
    Condpay.Insert;
  DBConFig.Open;
  if DBConFig.Recordcount = 0 then
    DBConFig.Insert;
end;

end.

