unit Crdpost;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, Vcl.ActnList,
  Data.DB, Dbkbd, dxStatusBar, AdvGlowButton, AdvToolBar, cxButtonEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxTextEdit,
  Vcl.ExtCtrls, AdvPanel, frxBarcode, frxFDComponents, frxTableObject, frxChBox,
  frxGradient, frxRich, frxExportXLSX, frxExportImage, frxCross, frxExportCSV,
  frxClass, frxExportBaseDialog, frxExportPDF, frxBDEComponents, frxDCtrl,
  frxChart;

type
  TFcrdPost = class(TForm)
    AdvPanel1: TAdvPanel;
    Label7: TLabel;
    DBkbd1: TDBkbd;
    DataSource1: TDataSource;
    QTaxbuy2: TFDQuery;
    QTaxbuy2TAXNO: TStringField;
    QTaxbuy2TAXDATE: TDateField;
    QTaxbuy2TAXREFNO: TStringField;
    QTaxbuy2JOBNO: TStringField;
    QTaxbuy2DESC1: TStringField;
    QTaxbuy2CUSCOD: TStringField;
    QTaxbuy2VATRT: TFloatField;
    QTaxbuy2AMOUNT: TFloatField;
    QTaxbuy2REDU: TFloatField;
    QTaxbuy2BALANCE: TFloatField;
    QTaxbuy2VAT: TFloatField;
    QTaxbuy2TOTTAX: TFloatField;
    QTaxbuy2FLAG: TStringField;
    QTaxbuy2CANCEL: TStringField;
    QTaxbuy2SYSTM: TStringField;
    QTaxbuy2USERID: TStringField;
    QTaxbuy2TIME1: TDateTimeField;
    QTaxbuy2CANCELID: TStringField;
    QTaxbuy2CANDAT: TDateTimeField;
    QTaxbuy2POSTGLDT: TDateTimeField;
    QTaxbuy2PAYTYP: TStringField;
    QTaxbuy2LOCAT: TStringField;
    QTaxbuy2FRSV: TStringField;
    QTaxbuy2MEMO1: TMemoField;
    QTaxbuy2CLAIM: TStringField;
    QDbconfig: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    Label2: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cxTextEdit1: TcxTextEdit;
    Edit3: TcxTextEdit;
    Bevel1: TBevel;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    dxStatusBar1: TdxStatusBar;
    ActionList1: TActionList;
    actEditPrn: TAction;
    Query1: TFDQuery;
    DBEdit8: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label42: TLabel;
    Label44: TLabel;
    cxTextEdit2: TcxTextEdit;
    QTaxbuy2POSTGL: TStringField;
    QTaxbuy2BANKBOOKCOD: TStringField;
    DBEdit6: TcxDBTextEdit;
    TxDate: TcxDBDateEdit;
    DBEdit3: TcxDBButtonEdit;
    DBEdit4: TcxDBButtonEdit;
    DBEdit7: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBEdit34: TcxDBButtonEdit;
    QTaxbuy2PAYCD: TStringField;
    frxChartObject1: TfrxChartObject;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxCrossObject1: TfrxCrossObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxReportTableObject1: TfrxReportTableObject;
    frxFDComponents1: TfrxFDComponents;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure InsBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure QTaxbuy2NewRecord(DataSet: TDataSet);
    procedure QTaxbuy2AfterPost(DataSet: TDataSet);
    procedure QTaxbuy2TAXREFNOValidate(Sender: TField);
    procedure QTaxbuy2BALANCEValidate(Sender: TField);
    procedure QTaxbuy2VATValidate(Sender: TField);
    procedure CloseBtnClick(Sender: TObject);
    procedure QTaxbuy2TAXDATEValidate(Sender: TField);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit3PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit34PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FcrdPost: TFcrdPost;
  XTOTTAX: Double;

implementation

uses
  DmAp, USoftFirm, Functn01, Dmsec, SrchTax1, Srchset1, uSrcDlg;
{$R *.DFM}

procedure TFcrdPost.InsBtnClick(Sender: TObject);
begin
  DBkbd1.AllowEditing := SFMain.Edit_right;
  XTOTTAX := 0;
  with QTaxBuy2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO ='''' ');
    Open;
    Insert;
  end;
  if dbedit3.Enabled = false then
    dbedit4.SetFocus
  else
    dbedit3.SetFocus;
end;

procedure TFcrdPost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FcrdPost := Nil;
  Action := Cafree;
end;

procedure TFcrdPost.SavBtnClick(Sender: TObject);
begin
  if dbedit4.text = '' then
    SFMain.RaiseException('ยังไม่บันทึกใบกำกับ !');
  QTaxBuy2.Post;
end;

procedure TFcrdPost.CancBtnClick(Sender: TObject);
begin
  QTaxBuy2.cancel;
end;

procedure TFcrdPost.DelBtnClick(Sender: TObject);
begin
  if DBEdit6.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        QTaxBuy2.Edit;
        QTaxBuy2.fieldbyname('CANCELID').Asstring := SFMain.Xuser_id;
        QTaxBuy2.fieldbyname('CANDAT').Asdatetime := Now;
        QTaxBuy2.Post;
      end;
  end;
end;

procedure TFcrdPost.EnqBtnClick(Sender: TObject);
begin
// DBkbd1.AllowEditing:= false;
  Application.Createform(TSearchTax, SearchTax);
  SearchTax.SC1 := ' AND FLAG = ''7'' AND SYSTM = ''X'' ';
  if sfmain.XChgLoc = 'Y' then
    SearchTax.XSrLocat := ''
  else
    SearchTax.XSrLocat := sfmain.Xlocat;
  if SearchTax.ShowModalTAXPST = Mrok then
  begin
    with QTaxBuy2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XNOO AND FLAG = ''7''  AND SYSTM = ''X'' ');
      Params[0].Asstring := SearchTax.Keyno;
      Open;
    end;
    //
  end;
end;

procedure TFcrdPost.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit6.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  CancBtn.Visible := SavBtn.Visible;
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit6.Text <> '');
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
    DBEdit6.Properties.ReadOnly := True;
    TxDate.Properties.ReadOnly := True;
    DBEdit3.Properties.ReadOnly := True;
    DBEdit4.Properties.ReadOnly := True;
    DBEdit7.Properties.ReadOnly := True;
    cxDBButtonEdit1.Properties.ReadOnly := False;
    DBEdit34.Properties.ReadOnly := False;
  end;

  if not QDbconfig.Active then
    QDbconfig.Open;
  DBEdit6.Properties.ReadOnly := QDbconfig.FieldByName('H_DVSV').AsString = 'Y';
  DBEDIT3.Enabled := (SFMain.XChgLoc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  TxDate.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
end;

procedure TFcrdPost.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if QTaxBuy2CANCELID.asstring <> '' then
    Label5.Visible := True
  else
    Label5.Visible := False;
end;

procedure TFcrdPost.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSP', 'HDSP05');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
end;

procedure TFcrdPost.QTaxbuy2NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QTaxbuy2);
  QTaxbuy2.FieldByName('Locat').Asstring := SFMain.Xlocat;
  QTaxbuy2.FieldByName('TAXDATE').Asdatetime := Now;
  QTaxbuy2.FieldByName('FLAG').Asstring := '7';
  QTaxbuy2.FieldByName('FRSV').Asstring := 'F';
  QTaxbuy2.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
  QTaxbuy2.Fieldbyname('Time1').Asdatetime := Now;
  QTaxbuy2.Fieldbyname('Desc1').Asstring := 'ลดหนี้เงินมัดจำ ';
  QTaxbuy2.Fieldbyname('Systm').Asstring := 'X';
  Qtaxbuy2.fieldbyname('CANCELID').asstring := '';
  QTaxbuy2.FieldByName('PAYCD').Asstring := '01';
end;

procedure TFcrdPost.QTaxbuy2AfterPost(DataSet: TDataSet);
var
  S, TX: string;
begin
  S := QTaxbuy2.FieldByName('TAXNO').Asstring;
  TX := QTaxbuy2.FieldByName('TAXREFNO').Asstring;
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QTaxbuy2.Active then
      if (QTaxbuy2.ApplyUpdates = 0) then
        QTaxbuy2.CommitUpdates
      else
        raise Exception.Create(QTaxbuy2.RowError.Message);
    if Dm_Ap1.QLastno.Active then
      if (Dm_Ap1.QLastno.ApplyUpdates = 0) then
        Dm_Ap1.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm_Ap1.QLastno.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.Hi_DBMS.RollBack;
    QTaxbuy2.Edit;
    raise;
  end;
  //
  with QTaxBuy2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XNOO ');
    Params[0].Asstring := S;
    Open;
  end;

  if QTaxBuy2.fieldbyname('CANCELID').Asstring = '' then
  begin
    with Dm_Ap1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE APINVOI SET RTNAMT =RTNAMT+:0,RTNDATE =:1,RTNNO =:2 WHERE INVNO =:XNOO AND DEPOSIT =''Y'' ');
      Params[0].Asfloat := QTaxBuy2.Fieldbyname('TOTTAX').asfloat;
      Params[1].Asdatetime := QTaxBuy2.Fieldbyname('TAXDATE').asdatetime;
      Params[2].Asstring := QTaxBuy2.Fieldbyname('TAXNO').asstring;
      Params[3].Asstring := TX;
      ExecSql;
    end;
  end
  else
  begin
    with Dm_Ap1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE APINVOI SET RTNAMT =RTNAMT-:0,RTNDATE =null,RTNNO =''''WHERE INVNO =:XNOO AND DEPOSIT =''Y'' ');
      Params[0].Asfloat := QTaxBuy2.Fieldbyname('TOTTAX').asfloat;
      Params[1].Asstring := TX;
      ExecSql;
    end;
  end;

  with Dm_Ap1.Query1 do
  begin
    close;
    Sql.Clear;
    Sql.add('update  apinvoi set kang =nettotal-smpay-rtnamt  where INVNO =:0 AND DEPOSIT = ''Y'' ');
    Params[0].Asstring := TX;
    execsql;
  end;
end;

procedure TFcrdPost.QTaxbuy2TAXREFNOValidate(Sender: TField);
var
  TTX, VTX, NTX: Double;
begin
  with Dm_Ap1.Query1 do
  begin
    Close;
    Sql.Clear;
    SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.RECVNO,A.RECVDT,A.APCODE,A.NETTOTAL,A.RTNAMT,A.CANCELID ' +
      'FROM APINVOI A ' +
      'WHERE A.INVNO = :EDIT1 AND  A.FLAG=''E'' ');
    params[0].asstring := Qtaxbuy2.fieldbyname('TAXREFNO').asstring;
    open;
    if not (Dm_Ap1.Query1.eof and Dm_Ap1.Query1.bof) then
    begin
      if (Dm_Ap1.Query1.fieldbyname('RTNAMT').AsFloat > 0) then
        sfmain.RaiseException('เอกสารที่เลือก ทำใบลดหนี้แล้ว<br/>กรุณาตรวจสอบรายการนี้อีกครั้ง..!');
    end;
  end;

  if Dm_Ap1.Query1.bof and Dm_Ap1.Query1.eof then
    SFMain.RaiseException('เลขที่ใบกำกับที่ระบุไม่มีอยู่ในระบบ');

  with Dm_Ap1.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select  * from  APinvoi where  invno =:0 and DEPOSIT = ''Y'' and candat is null ');
    params[0].asstring := Qtaxbuy2.fieldbyname('TAXREFNO').asstring;
    open;
  end;

  if Dm_Ap1.Query1.bof and Dm_Ap1.Query1.eof then
    SFMain.RaiseException('เลขที่ใบส่งสินค้าที่ระบุไม่มีอยู่ในระบบ');


  {If Dm_Ap1.Query1.fieldbyname('KANG').asfloat <=0 Then
  SFMain.RaiseException('ยอดคงเหลือเป็น 0 ไม่สามารถทำการลดหนี้ได้');}

  TTX := Dm_Ap1.Query1.fieldbyname('RTNAMT').asfloat;
  VTX := (Dm_Ap1.Query1.fieldbyname('RTNAMT').asfloat * Dm_Ap1.Query1.fieldbyname('VATRT').asfloat) / (100 + Dm_Ap1.Query1.fieldbyname('VATRT').asfloat);
  NTX := TTX - VTX;

  //XTOTTAX := Dm_Ap1.Query1.fieldbyname('TOTTAX').asfloat-TTX;
  Qtaxbuy2.FieldByName('VATRT').asfloat := Dm_Ap1.Query1.fieldbyname('VATRT').asfloat;
  Qtaxbuy2.FieldByName('AMOUNT').asfloat := Dm_Ap1.Query1.fieldbyname('Balance').asfloat - NTX;
  Qtaxbuy2.FieldByName('BALANCE').asfloat := Dm_Ap1.Query1.fieldbyname('Balance').asfloat - NTX;
  Qtaxbuy2.FieldByName('VAT').asfloat := Dm_Ap1.Query1.fieldbyname('Vatamt').asfloat - VTX;
  Qtaxbuy2.FieldByName('TOTTAX').asfloat := Dm_Ap1.Query1.fieldbyname('NETTOTAL').asfloat - TTX;

  Qtaxbuy2.FieldByName('CUSCOD').asstring := Dm_Ap1.Query1.fieldbyname('APCODE').asstring;
end;

procedure TFcrdPost.QTaxbuy2BALANCEValidate(Sender: TField);
begin
  Qtaxbuy2.FieldByName('VAt').asfloat := Qtaxbuy2.fieldbyname('Balance').asfloat * Qtaxbuy2.fieldbyname('Vatrt').asfloat / 100;
  Qtaxbuy2.FieldByName('AMOUNT').asfloat := Qtaxbuy2.fieldbyname('Balance').asfloat;
end;

procedure TFcrdPost.QTaxbuy2VATValidate(Sender: TField);
var
  XVAT: double;
begin
  XVAT := Qtaxbuy2.fieldbyname('Balance').asfloat * Qtaxbuy2.fieldbyname('Vatrt').asfloat / 100;
  if (XVAT > (Qtaxbuy2.fieldbyname('Vat').asfloat + 1)) or (XVAT < (Qtaxbuy2.fieldbyname('Vat').asfloat - 1)) then
    SFMain.RaiseException('แก้ยอดภาษีได้ บวก ลบ ไม่เกิน 1 เท่านั้น ');
  Qtaxbuy2.FieldByName('TOTTAX').asfloat := Qtaxbuy2.fieldbyname('Balance').asfloat + Qtaxbuy2.FieldByName('VAt').asfloat;
end;

procedure TFcrdPost.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFcrdPost.QTaxbuy2TAXDATEValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  HF := 'H_TXFI';
  LF := 'L_TXFI';

  LV := QTaxbuy2.FieldByName('Locat').Asstring;
  DV := QTaxbuy2.FieldByName('TAXDATE').asDateTime;
  if QTaxbuy2.State = DsInsert then
    QTaxbuy2.FieldByName('TAXNO').Asstring := DM_AP1.RunNo(HF, LF, LV, DV);
end;

procedure TFcrdPost.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F9:
      PrnBtnClick(Sender);
    Vk_F7:
      EnqBtnClick(Sender);
    Vk_ESCAPE:
      CancBtnClick(Sender);
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

procedure TFcrdPost.FormShow(Sender: TObject);
begin
  with QTaxBuy2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO ='''' ');
    Open;
  end;
end;

procedure TFcrdPost.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    QTaxBuy2.fieldbyname('LOCAT').asstring := Searchset.Keyno;
end;

procedure TFcrdPost.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_CrdPost.fr3','2');
end;

procedure TFcrdPost.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//      BEGIN
//         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//         VAL := SFMain.n2wBill.Text;
//      END;
end;

procedure TFcrdPost.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PAPBILL' then
    Value := DBEdit6.Text;
end;

procedure TFcrdPost.PrnBtnClick(Sender: TObject);
begin
  if DBEdit6.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_CrdPost.fr3','1');
end;

procedure TFcrdPost.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TFSrcDlg, FSrcDlg);
  if FSrcDlg.ShowModalAR = Mrok then
    QTaxBuy2.fieldbyname('CUSCOD').asstring := FSrcDlg.Keyno;
end;

procedure TFcrdPost.DBEdit7PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XNOO ');
    Params[0].Asstring := DBEdit7.Text;
    Open;
    Edit3.Text := Query1.Fieldbyname('Name1').asstring + '  ' + Query1.Fieldbyname('Name2').asstring;
  end;
end;

procedure TFcrdPost.DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  {Application.Createform(TSearchTax,SearchTax);
  SearchTax.SC1 := ' AND FLAG = ''1'' AND SYSTM = ''X'' AND CANDAT IS NULL ';
  If SearchTax.ShowModalTAXPST=Mrok Then
    QTaxBuy2.fieldbyname('TAXREFNO').asstring :=SearchTax.Keyno; }

  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.nChkRtnAmt := 'AND A.RTNAMT <= 0 ';
  if sfmain.XChgLoc = 'Y' then
    fSrcDlg.XSrLocat := ''
  else
    fSrcDlg.XSrLocat := sfmain.Xlocat;
  if fSrcDlg.ShowModalApOth = Mrok then
    QTaxBuy2.fieldbyname('TAXREFNO').asstring := fSrcDlg.Keyno;
end;

procedure TFcrdPost.DBEdit3PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOCATCOD ');
    Params[0].Asstring := DBEdit3.Text;
    Open;
  end;
  cxTextEdit1.Text := Query1.fieldByName('LOCATNM').Asstring;
end;

procedure TFcrdPost.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPAYTYP = Mrok then
    QTaxbuy2PAYCD.AsString := fSrcDlg.Keyno;
end;

procedure TFcrdPost.DBEdit34PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if QTaxbuy2PAYCD.AsString = '02' then
  begin
    if fSrcDlg.ShowModalBak = Mrok then
      QTaxbuy2.FieldByName('BANKBOOKCOD').Asstring := fSrcDlg.KeyNo;
  end
  else
  begin
    if fSrcDlg.ShowModalBook = Mrok then
      QTaxbuy2.FieldByName('BANKBOOKCOD').Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TFcrdPost.cxDBButtonEdit1PropertiesChange(Sender: TObject);
begin
  DBEdit34.Enabled := cxDBButtonEdit1.Text = '10';

  with Dm_AP1.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PAYTYP WHERE PAYCODE=:XCOD ');
    Params[0].Asstring := cxDBButtonEdit1.Text;
    Open;
  end;
  cxTextEdit2.Text := Dm_AP1.Query2.FieldByName('PAYDESC').Asstring;
end;

end.

