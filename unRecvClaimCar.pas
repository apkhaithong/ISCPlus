unit unRecvClaimCar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  Vcl.ActnList, Dbkbd, dxStatusBar, AdvGlowButton, AdvToolBar, cxButtonEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxTextEdit,
  AdvPanel;

type
  TfrRecvClaimCar = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    Action1: TAction;
    Query1: TFDQuery;
    Label11: TLabel;
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
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    qrRepDist: TFDQuery;
    qrRepDistLOCAT: TStringField;
    qrRepDistCUSCOD: TStringField;
    qrRepDistSENDCOD: TStringField;
    qrRepDistCLAIMAMT: TFloatField;
    qrRepDistFLAG: TStringField;
    qrRepDistUSERID: TStringField;
    qrRepDistINPDATE: TDateTimeField;
    DataSource1: TDataSource;
    qrRepDistUpdateStatus: TStringField;
    Label12: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    qrRepDistBILLNO: TStringField;
    qrRepDistBILLDATE: TDateField;
    qrRepDistINVNO: TStringField;
    qrRepDistINVDATE: TDateField;
    qrRepDistCLAIMNO: TStringField;
    qrRepDistPAYAMT: TFloatField;
    qrRepDistVAT3: TFloatField;
    qrRepDistVAT3AMT: TFloatField;
    qrRepDistPAYMENT: TFloatField;
    qrRepDistCANDATE: TDateTimeField;
    cxGroupBox1: TcxGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBDateEdit1: TcxDBDateEdit;
    DBEdit2: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBDateEdit2: TcxDBDateEdit;
    DBEdit6: TcxDBTextEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
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
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qrRepDistAfterCancel(DataSet: TDataSet);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesChange(Sender: TObject);
    procedure DBEdit6PropertiesChange(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure qrRepDistINVNOChange(Sender: TField);
    procedure qrRepDistINVNOValidate(Sender: TField);
    procedure qrRepDistSENDCODValidate(Sender: TField);
    procedure qrRepDistVAT3Validate(Sender: TField);
    procedure qrRepDistVAT3AMTValidate(Sender: TField);
    procedure qrRepDistBILLDATEValidate(Sender: TField);
  private
    { Private declarations }
  public
    XYear, XMonth, XDay: word;
    { Public declarations }

  end;

var
  frRecvClaimCar: TfrRecvClaimCar;
  Duplicate: Boolean;

implementation

uses
  Srchset1, Dm1, uSoftFirm, Dmsec, Srchsal1, uSrcDLG1, DmSal, Functn01;

{$R *.DFM}

procedure TfrRecvClaimCar.InsBtnClick(Sender: TObject);
begin
  with qrRepDist do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM PAYMENTCLAIM WHERE BILLNO ='''' ');
    open;
    Insert;
  end;
end;

procedure TfrRecvClaimCar.CancBtnClick(Sender: TObject);
begin
  qrRepDist.cancel;
end;

procedure TfrRecvClaimCar.DataSource1StateChange(Sender: TObject);
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
  Label7.Visible := qrRepDistFLAG.AsString = 'C';

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
        TcxDBButtonEdit(Components[n]).Style.Color := $00EAF3F4;
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
        TcxDBButtonEdit(Components[n]).Style.Color := clWhite;
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
    cxDBButtonEdit1.Properties.Readonly := True;
    cxDBButtonEdit1.Style.Color := clBtnFace;
    cxDBTextEdit1.Properties.Readonly := True;
    cxDBTextEdit1.Style.Color := clBtnFace;
  end;
  if not Dm01.QDbconfig.Active then
    Dm01.QDbconfig.Open;
  DBEdit1.Properties.ReadOnly := Dm01.QDbconfig.FieldByName('R_CTB').AsString = 'Y';
  DBEdit2.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.DataSet.State = DsInsert);
  DBDateEdit1.Enabled := (SFMain.XChgdate = 'Y') and (DataSource1.DataSet.State = DsInsert);
end;

procedure TfrRecvClaimCar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frRecvClaimCar := Nil;
end;

procedure TfrRecvClaimCar.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrRecvClaimCar.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalPaymentClaim = Mrok then
  begin
    with qrRepDist do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PAYMENTCLAIM WHERE BILLNO=:0');
      Params[0].Asstring := SearchSale.KeyNo;
      Open;
    end;
  end;
end;

procedure TfrRecvClaimCar.SavBtnClick(Sender: TObject);
begin
  if cxDBButtonEdit1.Text = '' then
    sfmain.RaiseException('ยังไม่อ้างอิงเลขที่ใบส่ง..!');

  if DBEdit6.Text = '' then
    sfmain.RaiseException('ยังไม่อ้างอิงรหัสลูกค้า..!');

  if qrRepDistCLAIMAMT.AsFloat = 0 then
    sfmain.RaiseException('กรุณาตรวจสอบจำนวนเงิน..!');

  if cxDBTextEdit1.Text = '' then
    sfmain.RaiseException('ยังไม่ระบุเลขที่อนุมัติ..!');

  qrRepDist.Post;
end;

procedure TfrRecvClaimCar.FormShow(Sender: TObject);
begin
  with qrRepDist do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM PAYMENTCLAIM WHERE BILLNO ='''' ');
    open;
  end;
end;

procedure TfrRecvClaimCar.qrRepDistAfterPost(DataSet: TDataSet);
var
  XRep: string;
begin
  XRep := qrRepDist.fieldbyname('BILLNO').AsString;
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
    sql.Add('SELECT * FROM PAYMENTCLAIM WHERE BILLNO=:XREPDISTNO');
    params[0].AsString := XRep;
    open;
  end;
end;

procedure TfrRecvClaimCar.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  if qrRepDistFLAG.AsString = 'Y' then
    SFMain.RaiseException('กรุณาตรวจสอบสถานะของเลขที่รายงานนี้..!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        qrRepDist.Edit;
        qrRepDistFlag.Asstring := 'C';
        qrRepDistCandate.Asdatetime := Now;
        qrRepDist.Post;
      end;
  end;
end;

procedure TfrRecvClaimCar.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSL', 'HDSL01_9_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TfrRecvClaimCar.qrRepDistNewRecord(DataSet: TDataSet);
begin
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  qrRepDistLOCAT.AsString := SFMain.Xlocat;
  qrRepDistBILLDATE.AsDateTime := SFMain.CR_DATE;
  qrRepDistINVDATE.AsDateTime := SFMain.CR_DATE;
  qrRepDistUSERID.AsString := SFMain.Xuser_ID;
  qrRepDistINPDATE.AsDateTime := Now;
  qrRepDistFLAG.AsString := 'N';
  qrRepDistCLAIMAMT.AsFloat := 0;
  qrRepDistPAYAMT.AsFloat := 0;
  qrRepDistVAT3.AsFloat := 0;
  qrRepDistVAT3AMT.AsFloat := 0;
  qrRepDistPAYMENT.AsFloat := 0;
end;

procedure TfrRecvClaimCar.qrRepDistCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if qrRepDist.CachedUpdates then
    qrRepDistUpdateStatus.Value := UpdateStatusStr[qrRepDist.UpdateStatus];
end;

procedure TfrRecvClaimCar.DBEdit2Change(Sender: TObject);
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

procedure TfrRecvClaimCar.qrRepDistLOCATValidate(Sender: TField);
begin
  qrRepDistBILLDATEValidate(Sender);
end;

procedure TfrRecvClaimCar.DBMemo1Click(Sender: TObject);
begin
  frRecvClaimCar.KeyPreview := False;
end;

procedure TfrRecvClaimCar.DBMemo1Exit(Sender: TObject);
begin
  frRecvClaimCar.KeyPreview := True;
end;

procedure TfrRecvClaimCar.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchset, Searchset);
  if Searchset.ShowModalsetLocat = MrOk then
    qrRepDist.FieldByName('LOCAT').AsString := Searchset.Keyno;
end;

procedure TfrRecvClaimCar.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalInvoiClaim = Mrok then
    qrRepDistINVNO.AsString := SearchSale.Keyno;
end;

procedure TfrRecvClaimCar.qrRepDistAfterCancel(DataSet: TDataSet);
begin
  if qrRepDist.Active then
    qrRepDist.CancelUpdates;
end;

procedure TfrRecvClaimCar.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = MrOk then
    qrRepDist.FieldByName('SENDCOD').AsString := SearchSet.Keyno;
end;

procedure TfrRecvClaimCar.cxDBButtonEdit2PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := sfmain.FindShowDesc('OFFICER', 'NAME', 'CODE', cxDBButtonEdit2.Text);
end;

procedure TfrRecvClaimCar.DBEdit6PropertiesChange(Sender: TObject);
begin
  cxTextEdit3.Text := SFMain.FindShowDesc('VIEW_CUST', 'CUSTNAME', 'CUSCOD', DBEdit6.Text);
end;

procedure TfrRecvClaimCar.DBDateEdit1Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(qrRepDistBILLDATE.AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      qrRepDistBILLDATE.AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      qrRepDistBILLDATE.AsDateTime := qrRepDistBILLDATE.AsDateTime;
  end;
end;

procedure TfrRecvClaimCar.DBDateEdit2Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(qrRepDistINVDATE.AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      qrRepDistINVDATE.AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      qrRepDistINVDATE.AsDateTime := qrRepDistINVDATE.AsDateTime;
  end;
end;

procedure TfrRecvClaimCar.qrRepDistINVNOChange(Sender: TField);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM INVOICLAIM WHERE INVNO=:0');
    params[0].AsString := qrRepDistINVNO.AsString;
    open;
    if not (eof and bof) then
    begin
      qrRepDistCUSCOD.AsString := query1.fieldbyname('CUSCOD').AsString;
      qrRepDistCLAIMNO.AsString := query1.fieldbyname('CLAIMNO').AsString;
      qrRepDistCLAIMAMT.AsFloat := query1.fieldbyname('CLAIMAMT').AsFloat;
      qrRepDistPAYAMT.AsFloat := query1.fieldbyname('CLAIMAMT').AsFloat;
      qrRepDistPAYMENT.AsFloat := query1.fieldbyname('CLAIMAMT').AsFloat;
    end;
  end;
end;

procedure TfrRecvClaimCar.qrRepDistINVNOValidate(Sender: TField);
begin
  sfmain.Findnoexist('INVOICLAIM', 'INVNO', qrRepDistINVNO.AsString);
end;

procedure TfrRecvClaimCar.qrRepDistSENDCODValidate(Sender: TField);
begin
  sfmain.Findnoexist('OFFICER', 'CODE', qrRepDistSENDCOD.AsString);
end;

procedure TfrRecvClaimCar.qrRepDistVAT3Validate(Sender: TField);
begin
  qrRepDistVAT3AMT.AsFloat := FRound((qrRepDistPAYAMT.AsFloat * qrRepDistVAT3.AsFloat) / 100, 2);
  qrRepDistPAYMENT.AsFloat := FRound(qrRepDistPAYAMT.AsFloat - ((qrRepDistPAYAMT.AsFloat * qrRepDistVAT3.AsFloat) / 100), 2);
end;

procedure TfrRecvClaimCar.qrRepDistVAT3AMTValidate(Sender: TField);
begin
  qrRepDistPAYMENT.AsFloat := FRound(qrRepDistPAYAMT.AsFloat - qrRepDistVAT3AMT.AsFloat, 2);
end;

procedure TfrRecvClaimCar.qrRepDistBILLDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if not DM01.QDbconfig.Active then
    DM01.QDbconfig.Open;
  if DM01.QDbconfig.FieldByName('R_CTB').AsString = 'Y' then
  begin
    HF := 'H_CTB';
    LF := 'L_CTB';
    LV := qrRepDistLOCAT.AsString;
    DV := qrRepDistBILLDATE.Asdatetime;
    if qrRepDistUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(BILLNO) AS MAXNO FROM PAYMENTCLAIM WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(BILLNO,2,2)=:EDIT2 AND SUBSTR(BILLNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(BILLNO,7,2)=:EDIT4';
      qrRepDistBILLNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV);
    end;
  end;
  DecodeDate(DV, XYear, XMonth, XDay);
end;

end.

