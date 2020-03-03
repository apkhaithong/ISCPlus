unit unSendClaim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  Vcl.ActnList, Dbkbd, dxStatusBar, AdvGlowButton, AdvToolBar, cxMemo, cxDBEdit,
  cxDropDownEdit, cxImageComboBox, cxButtonEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, AdvPanel;

type
  TfrSendClaim = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    Action1: TAction;
    Query1: TFDQuery;
    Label11: TLabel;
    DBDateEdit2: TcxDBDateEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    qrRepDist: TFDQuery;
    qrRepDistLOCAT: TStringField;
    qrRepDistREPNO: TStringField;
    qrRepDistREPDATE: TDateField;
    qrRepDistTSALE: TStringField;
    qrRepDistCONTNO: TStringField;
    qrRepDistSDATE: TDateField;
    qrRepDistCUSCOD: TStringField;
    qrRepDistSTRNO: TStringField;
    qrRepDistSALECOD: TStringField;
    qrRepDistSENDCOD: TStringField;
    qrRepDistTYPECLAIM: TStringField;
    qrRepDistCLAIMAMT: TFloatField;
    qrRepDistCAMPNO: TStringField;
    qrRepDistFLAG: TStringField;
    qrRepDistAUTHDATE: TDateField;
    qrRepDistUSERID: TStringField;
    qrRepDistINPDATE: TDateTimeField;
    qrRepDistFLUPD: TStringField;
    qrRepDistMEMO1: TMemoField;
    DataSource1: TDataSource;
    qrRepDistUpdateStatus: TStringField;
    Label12: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label9: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    Label10: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBDateEdit1: TcxDBDateEdit;
    DBEdit2: TcxDBButtonEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBEdit6: TcxDBTextEdit;
    cxDBButtonEdit4: TcxDBButtonEdit;
    DBEdit3: TcxDBButtonEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DBMemo1: TcxDBMemo;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrRepDistAfterPost(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrRepDistNewRecord(DataSet: TDataSet);
    procedure qrRepDistCalcFields(DataSet: TDataSet);
    procedure DBEdit2Change(Sender: TObject);
    procedure qrRepDistLOCATValidate(Sender: TField);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qrRepDistREPDATEValidate(Sender: TField);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qrRepDistAfterCancel(DataSet: TDataSet);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit3PropertiesChange(Sender: TObject);
    procedure DBEdit6PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qrRepDistCONTNOChange(Sender: TField);
    procedure qrRepDistSENDCODValidate(Sender: TField);
    procedure qrRepDistSALECODValidate(Sender: TField);
    procedure qrRepDistTYPECLAIMValidate(Sender: TField);
  private
    { Private declarations }
  public
    XYear, XMonth, XDay: word;
    { Public declarations }

  end;

var
  frSendClaim: TfrSendClaim;
  Duplicate: Boolean;

implementation

uses
  Srchset1, Dm1, uSoftFirm, Dmsec, Srchsal1, uSrcDLG1, DmSal;

{$R *.DFM}

procedure TfrSendClaim.InsBtnClick(Sender: TObject);
begin
  with qrRepDist do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM SENDCLAIM WHERE REPNO ='''' ');
    open;
    Insert;
  end;
end;

procedure TfrSendClaim.CancBtnClick(Sender: TObject);
begin
  qrRepDist.cancel;
end;

procedure TfrSendClaim.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  insBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit1.text <> '');
  Enqbtn.Visible := insBtn.Visible;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := $00EAF3F4;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := True;
        TcxDBmemo(Components[n]).Style.Color := $00EAF3F4;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBDateEdit(Components[n]).Style.Color := $00EAF3F4;
      end;

      if (Components[n] is TcxDBImageComboBox) and (TcxDBImageComboBox(Components[n]).Tag = 0) then
      begin
        TcxDBImageComboBox(Components[n]).Properties.Readonly := True;
        TcxDBImageComboBox(Components[n]).Style.Color := $00EAF3F4;
      end;

      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
      end;

      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := $00EAF3F4;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := False;
        TcxDBmemo(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBImageComboBox) and (TcxDBImageComboBox(Components[n]).Tag = 0) then
      begin
        TcxDBImageComboBox(Components[n]).Properties.Readonly := False;
        TcxDBImageComboBox(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
      end;

      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;
  if not (DataSource1.Dataset.State = Dsinsert) then
  begin
    DBEdit1.Properties.Readonly := True;
    DBEdit1.Style.Color := clBtnFace;
  end;
  if not Dm01.QDbconfig.Active then
    Dm01.QDbconfig.Open;
  DBEdit1.Properties.ReadOnly := Dm01.QDbconfig.FieldByName('R_REP').AsString = 'Y';
  DBEdit2.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.DataSet.State = DsInsert);
  DBDateEdit1.Enabled := (SFMain.XChgdate = 'Y') and (DataSource1.DataSet.State = DsInsert);
end;

procedure TfrSendClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frSendClaim := Nil;
end;

procedure TfrSendClaim.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrSendClaim.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalSendClaim = Mrok then
  begin
    with qrRepDist do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SENDCLAIM WHERE REPNO=:0');
      Params[0].Asstring := SearchSale.KeyNo;
      Open;
    end;
  end;
end;

procedure TfrSendClaim.SavBtnClick(Sender: TObject);
begin
  if cxDBImageComboBox1.Text = '' then
    sfmain.RaiseException('ยังไม่ระบุประเภทการขาย..!');

  if cxDBButtonEdit1.Text = '' then
    sfmain.RaiseException('ยังไม่อ้างอิงเลขที่สัญญา..!');

  if DBEdit6.Text = '' then
    sfmain.RaiseException('ยังไม่อ้างอิงรหัสลูกค้า..!');

  if cxDBButtonEdit4.Text = '' then
    sfmain.RaiseException('ยังไม่อ้างอิงเลขถัง..!');

  if qrRepDistCLAIMAMT.AsFloat = 0 then
    sfmain.RaiseException('กรุณาตรวจสอบจำนวนเงิน..!');

  if cxDBButtonEdit3.Text = '' then
    sfmain.RaiseException('ยังไม่ระบุประเภทเคลม..!');

  qrRepDist.Post;
end;

procedure TfrSendClaim.FormShow(Sender: TObject);
begin
  with qrRepDist do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM SENDCLAIM WHERE REPNO ='''' ');
    open;
  end;
end;

procedure TfrSendClaim.qrRepDistAfterPost(DataSet: TDataSet);
var
  XRep: string;
begin
  XRep := qrRepDist.fieldbyname('REPNO').AsString;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrRepDist.Active then
      if (qrRepDist.ApplyUpdates = 0) then
        qrRepDist.CommitUpdates
      else
        raise Exception.Create(qrRepDist.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrRepDist.Edit;
    raise;
  end;
  //
  with qrRepDist do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM SENDCLAIM WHERE REPNO=:XREPDISTNO');
    params[0].AsString := XRep;
    open;
  end;
end;

procedure TfrSendClaim.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  if qrRepDistFLAG.AsString = 'Y' then
    SFMain.RaiseException('กรุณาตรวจสอบสถานะของเลขที่รายงานนี้..!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        qrRepDist.delete;
      end;
  end;
end;

procedure TfrSendClaim.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSL', 'HDSL01_9_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TfrSendClaim.qrRepDistNewRecord(DataSet: TDataSet);
begin
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  qrRepDistLOCAT.AsString := SFMain.Xlocat;
  qrRepDistREPDATE.AsDateTime := SFMain.CR_DATE;
  qrRepDistUSERID.AsString := SFMain.Xuser_ID;
  qrRepDistINPDATE.AsDateTime := Now;
  qrRepDistFLAG.AsString := 'N';
  qrRepDistCLAIMAMT.AsFloat := 0;
end;

procedure TfrSendClaim.qrRepDistCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if qrRepDist.CachedUpdates then
    qrRepDistUpdateStatus.Value := UpdateStatusStr[qrRepDist.UpdateStatus];
end;

procedure TfrSendClaim.DBEdit2Change(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:0');
    params[0].AsString := DBEdit2.Text;
    open;
    Edit2.text := fieldbyname('LOCATNM').AsString;
  end;
end;

procedure TfrSendClaim.qrRepDistLOCATValidate(Sender: TField);
begin
  qrRepDistREPDATEValidate(Sender);
end;

procedure TfrSendClaim.DBEdit3Change(Sender: TObject);
begin
  {with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM OFFICER WHERE CODE=:0');
    params[0].AsString := DBEdit3.Text;
    open;
    Edit1.text := fieldbyname('NAME').AsString;
  end;}
  Edit1.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit3.Text);
end;

procedure TfrSendClaim.DBMemo1Click(Sender: TObject);
begin
  frSendClaim.KeyPreview := False;
end;

procedure TfrSendClaim.DBMemo1Exit(Sender: TObject);
begin
  frSendClaim.KeyPreview := True;
end;

procedure TfrSendClaim.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchset, Searchset);
  if Searchset.ShowModalsetLocat = MrOk then
    qrRepDist.FieldByName('LOCAT').AsString := Searchset.Keyno;
end;

procedure TfrSendClaim.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = MrOk then
    qrRepDist.FieldByName('SALECOD').AsString := SearchSet.Keyno;
end;

procedure TfrSendClaim.qrRepDistREPDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if not DM01.QDbconfig.Active then
    DM01.QDbconfig.Open;
  if DM01.QDbconfig.FieldByName('R_REP').AsString = 'Y' then
  begin
    HF := 'H_REP';
    LF := 'L_REP';
    LV := qrRepDistLOCAT.AsString;
    DV := qrRepDistREPDATE.Asdatetime;
    if qrRepDistUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(REPNO) AS MAXNO FROM SENDCLAIM WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(REPNO,2,2)=:EDIT2 AND SUBSTR(REPNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(REPNO,7,2)=:EDIT4';
      qrRepDistREPNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV);
    end;
  end;
  DecodeDate(DV, XYear, XMonth, XDay);
end;

procedure TfrSendClaim.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if cxDBImageComboBox1.Text = '' then
    sfmain.RaiseException('กรุณาอ้างอิงประเภทการขาย..!');

  Application.Createform(TSearchSale, SearchSale);
  if qrRepDistTSALE.AsString = 'C' then
  begin
    if SearchSale.ShowModalArcred = Mrok then
      qrRepDistCONTNO.AsString := SearchSale.Keyno;
  end
  else if qrRepDistTSALE.AsString = 'F' then
  begin
    if SearchSale.ShowModalArFinc = Mrok then
      qrRepDistCONTNO.AsString := SearchSale.Keyno;
  end
  else
  begin
    if SearchSale.ShowModalArOthr = Mrok then
      qrRepDistCONTNO.AsString := SearchSale.Keyno;
  end;
end;

procedure TfrSendClaim.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalTypeClaim = Mrok then
    qrRepDistTYPECLAIM.AsString := fSrcDlg1.Keyno;
end;

procedure TfrSendClaim.qrRepDistAfterCancel(DataSet: TDataSet);
begin
  if qrRepDist.Active then
    qrRepDist.CancelUpdates;
end;

procedure TfrSendClaim.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = MrOk then
    qrRepDist.FieldByName('SENDCOD').AsString := SearchSet.Keyno;
end;

procedure TfrSendClaim.cxDBButtonEdit2PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := sfmain.FindShowDesc('OFFICER', 'NAME', 'CODE', cxDBButtonEdit2.Text);
end;

procedure TfrSendClaim.cxDBButtonEdit3PropertiesChange(Sender: TObject);
begin
  cxTextedit2.Text := sfmain.FindShowDesc('TYPECLAIM', 'CLAIMDESC', 'CLAIMCODE', cxDBButtonEdit3.Text);
end;

procedure TfrSendClaim.DBEdit6PropertiesChange(Sender: TObject);
begin
  cxTextEdit3.Text := SFMain.FindShowDesc('VIEW_CUST', 'CUSTNAME', 'CUSCOD', DBEdit6.Text);
end;

procedure TfrSendClaim.cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  SearchSale.Xflg := 'C';
  SearchSale.XLocat := Dm_sal.QCshSale.Fieldbyname('Locat').Asstring;
  if SearchSale.ShowModalStrno = Mrok then
    qrRepDistSTRNO.Asstring := SearchSale.Keyno;
end;

procedure TfrSendClaim.qrRepDistCONTNOChange(Sender: TField);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    if qrRepDistTSALE.AsString = 'C' then
      sql.Add('SELECT * FROM ARCRED WHERE CONTNO =:EDIT1')
    else if qrRepDistTSALE.AsString = 'F' then
      sql.Add('SELECT * FROM ARFINC WHERE CONTNO =:EDIT1')
    else
      sql.Add('SELECT A.ARCONT,A.ARDATE SDATE,A.TSALE,A.CONTNO,A.CUSCOD,B.STRNO,A.PAYAMT ' +
        'FROM AROTHR A LEFT JOIN VIEW_SALEALL B ON (A.CONTNO=B.CONTNO) WHERE ARCONT =:EDIT1 ');
    params[0].AsString := qrRepDistCONTNO.AsString;
    open;

    qrRepDistCUSCOD.AsString := query1.fieldbyname('CUSCOD').AsString;
    qrRepDistSDATE.AsDateTime := query1.fieldbyname('SDATE').AsDateTime;
    qrRepDistSTRNO.AsString := query1.fieldbyname('STRNO').AsString;
  end;
end;

procedure TfrSendClaim.qrRepDistSENDCODValidate(Sender: TField);
begin
  sfmain.Findnoexist('OFFICER', 'CODE', qrRepDistSENDCOD.AsString);
end;

procedure TfrSendClaim.qrRepDistSALECODValidate(Sender: TField);
begin
  sfmain.Findnoexist('OFFICER', 'CODE', qrRepDistSALECOD.AsString);
end;

procedure TfrSendClaim.qrRepDistTYPECLAIMValidate(Sender: TField);
begin
  sfmain.Findnoexist('TYPECLAIM', 'CLAIMCODE', qrRepDistTYPECLAIM.AsString);
end;

end.

