unit unStkRegRed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Dbkbd, Db, ImgList,
  ToolWin, ActnList, RzDbkbd, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, AdvGlowButton, AdvToolBar,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  AdvOfficeStatusBar, RzSpnEdt, RzStatus, AdvPanel, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, dxDateRanges, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TfrStkRegRed = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanel2: TAdvPanel;
    Bevel1: TBevel;
    Label7: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Addpay: TRzRapidFireButton;
    Delpay: TRzRapidFireButton;
    Label1: TLabel;
    Label2: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1REGNO: TcxGridDBColumn;
    cxGrid1DBTableView1FRONT: TcxGridDBColumn;
    cxGrid1DBTableView1HIND: TcxGridDBColumn;
    cxGrid1DBTableView1BOOK: TcxGridDBColumn;
    cxGrid1DBTableView1FLAG: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    FldCombo2: TcxDBButtonEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit2: TcxDBTextEdit;
    DBRecDt: TcxDBDateEdit;
    DBEdit3: TcxDBTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    qrStkRecvRed: TFDQuery;
    qrStkRecvRedUpdatestatus: TStringField;
    qrStkRecvRedREGREDNO: TStringField;
    qrStkRecvRedLOCATRECV: TStringField;
    qrStkRecvRedLOCATKEEP: TStringField;
    qrStkRecvRedRECVDATE: TDateField;
    qrStkRecvRedRECVFRM: TStringField;
    qrStkRecvRedUSERID: TStringField;
    qrStkRecvRedINPDATE: TDateTimeField;
    DataSource2: TDataSource;
    qrRecvRedTrn: TFDQuery;
    qrRecvRedTrnREGREDNO: TStringField;
    qrRecvRedTrnREGNO: TStringField;
    qrRecvRedTrnFRONT: TStringField;
    qrRecvRedTrnHIND: TStringField;
    qrRecvRedTrnBOOK: TStringField;
    qrRecvRedTrnFLAG: TStringField;
    AdvPanel3: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    Edit5: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FldCombo2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SavBtnClick(Sender: TObject);
    procedure qrStkRecvRedAfterPost(DataSet: TDataSet);
    procedure qrStkRecvRedAfterDelete(DataSet: TDataSet);
    procedure EnqBtnClick(Sender: TObject);
    procedure DBRecDtExit(Sender: TObject);
    procedure qrStkRecvRedCalcFields(DataSet: TDataSet);
    procedure qrStkRecvRedLOCATRECVValidate(Sender: TField);
    procedure qrStkRecvRedLOCATKEEPValidate(Sender: TField);
    procedure qrStkRecvRedREGREDNOValidate(Sender: TField);
    procedure RFBtnAddRegClick(Sender: TObject);
    procedure qrStkRecvRedBeforeDelete(DataSet: TDataSet);
    procedure DBEdit6Change(Sender: TObject);
    procedure qrStkRecvRedNewRecord(DataSet: TDataSet);
    procedure qrRecvRedTrnNewRecord(DataSet: TDataSet);
    procedure qrStkRecvRedRECVDATEValidate(Sender: TField);
    procedure qrStkRecvRedBeforePost(DataSet: TDataSet);
    procedure qrRecvRedTrnAfterPost(DataSet: TDataSet);
    procedure FldCombo2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    XYear, XMonth, XDay: Word;
    XDate: TdateTime;
    { Public declarations }
  end;

var
  frStkRegRed: TfrStkRegRed;
  SVStr: string;
  Duplicate: Boolean;
  XRegno: string;

implementation

uses
  USoftFirm, Dmsec, dmstock, dm1, Functn01, SrchStk, Srchset1;

{$R *.DFM}

procedure TfrStkRegRed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  frStkRegred := nil;
end;

procedure TfrStkRegRed.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  Dbkbd1.AllowEditing := qrRecvRedTrn.FieldByName('FLAG').AsString = '0';
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnface;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnface;
      end;
      if (Components[n] is TcxGridDBTableView) and (TcxGridDBTableView(Components[n]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[n]).OptionsData.Editing := False;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
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
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := false;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxGridDBTableView) and (TcxGridDBTableView(Components[n]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[n]).OptionsData.Editing := True;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True
      end;
    end;
  end;
  if (DataSource1.Dataset.State = DsEdit) then
  begin
    FldCombo2.Enabled := False;
    DBRecDt.Enabled := False;
  end
  else
  begin
    FldCombo2.Enabled := True;
    DBRecDt.Enabled := True;
  end;
  if not Dm01.QDbConfig.Active then
    Dm01.QDbConfig.Open;
  FldCombo2.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBRecdt.Enabled := (SFMain.XChgdate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBEdit2.Properties.ReadOnly := Dm01.QDbConfig.FieldByName('H_STKRED').AsString = 'Y';
end;

procedure TfrStkRegRed.InsBtnClick(Sender: TObject);
begin
  with qrStkRecvRed do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM STKRECVRED WHERE REGREDNO='''' ');
    open;
    Insert;
  end;
  with qrRecvRedTrn do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM RECVREDTRN WHERE REGREDNO='''' ');
    open;
  end;
  if DBEdit2.Properties.ReadOnly = True then
    DBEdit3.SetFocus
  else
    DBEdit2.SetFocus;
end;

procedure TfrStkRegRed.DelBtnClick(Sender: TObject);
begin
  if qrRecvRedTrn.FieldByName('FLAG').AsString = '0' then
    SFMain.RaiseException('บันทึกรับเงินมัดจำแล้ว...ลบไม่ได้!');

  if DBEdit2.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        with qrRecvRedtrn do
        begin
          sql.Clear;
          sql.Add('DELETE FROM RECVREDTRN WHERE REGREDNO =:0');
          params[0].AsString := DBEdit2.Text;
          execsql;
          qrStkRecvRed.Delete;
        end;
      end;
  end;
end;

procedure TfrStkRegRed.CancBtnClick(Sender: TObject);
begin
  qrRecvRedTrn.Cancel;
  qrRecvRedTrn.Close;
  qrStkRecvRed.Cancel;
end;

procedure TfrStkRegRed.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrStkRegRed.FldCombo2Change(Sender: TObject);
begin
  with Dm01.query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
    params[0].AsString := FldCombo2.Text;
    open;
  end;
  Edit5.Text := Dm01.query1.fieldbyname('LOCATNM').AsString;
end;

procedure TfrStkRegRed.FormShow(Sender: TObject);
begin
  with qrStkRecvRed do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM STKRECVRED WHERE REGREDNO='''' ');
    open;
  end;
  with qrRecvRedTrn do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM RECVREDTRN WHERE REGREDNO='''' ');
    open;
  end;
end;

procedure TfrStkRegRed.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK03_1');
  DBkbd1.AllowInsert := SFMain.Insert_Right;
  DBkbd1.AllowEditing := SFMain.Edit_Right;
  DBkbd1.AllowDelete := SFMain.Del_Right;
end;

procedure TfrStkRegRed.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F7 then
    EnqBtnClick(Sender);
  if Key = VK_F2 then
    SavBtnClick(Sender);
  if (Key = VK_F8) and (Delbtn.Visible = True) then
    DelBtnClick(Sender);
  if (Key = VK_F5) and (InsBtn.Visible = True) then
    InsBtnClick(Sender);
end;

procedure TfrStkRegRed.SavBtnClick(Sender: TObject);
begin
  if qrRecvRedTrnREGREDNO.AsString = '' then
    SFMain.RaiseException('ยังไม่ระบุเลขทะเบียนป้ายแดง..!');
  qrRecvRedtrn.First;
  qrStkRecvRed.Post;
end;

procedure TfrStkRegRed.qrStkRecvRedAfterPost(DataSet: TDataSet);
var
  XRegno: string;
begin
  XRegno := qrStkRecvRed.fieldbyname('REGREDNO').AsString;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrStkRecvRed.Active then
      if (qrStkRecvRed.ApplyUpdates = 0) then
        qrStkRecvRed.CommitUpdates
      else
        raise Exception.Create(qrStkRecvRed.RowError.Message);
    if qrRecvRedTrn.Active then
      if (qrRecvRedTrn.ApplyUpdates = 0) then
        qrRecvRedTrn.CommitUpdates
      else
        raise Exception.Create(qrRecvRedTrn.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrStkRecvRed.Edit;
    raise;
  end;
  //
  with qrStkRecvRed do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM STKRECVRED WHERE REGREDNO =:edit1');
    Params[0].AsString := XRegno;
    open;
  end;
  with qrRecvRedTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM RECVREDTRN WHERE REGREDNO =:edit1');
    Params[0].AsString := XRegno;
    open;
  end;
end;

procedure TfrStkRegRed.qrStkRecvRedAfterDelete(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrStkRecvRed.Active then
      if (qrStkRecvRed.ApplyUpdates = 0) then
        qrStkRecvRed.CommitUpdates
      else
        raise Exception.Create(qrStkRecvRed.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrStkRecvRed.Edit;
    raise;
  end;
end;

procedure TfrStkRegRed.EnqBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSearchStk, SearchStk);
  if SearchStk.ShowModalStkRevred = mrOK then
    with qrStkRecvRed do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM STKRECVRED WHERE REGREDNO =:0');
      params[0].AsString := SearchStk.Keyno;
      open;
    end;
  with qrRecvRedTrn do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM RECVREDTRN WHERE REGREDNO =:0');
    params[0].AsString := SearchStk.Keyno;
    open;
  end;
end;

procedure TfrStkRegRed.DBRecDtExit(Sender: TObject);
begin
  if qrStkRecvRedRECVDATE.AsDateTime > Date then
  begin
    MessageDlg('ไม่อนุญาติให้บันทึกล่วงหน้า..!', mtError, [mbOK], 0);
    DBRecdt.SetFocus;
  end;
end;

procedure TfrStkRegRed.qrStkRecvRedCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if qrStkRecvRed.CachedUpdates then
    qrStkRecvRedUpdateStatus.Value := UpdateStatusStr[qrStkRecvRed.UpdateStatus];
end;

procedure TfrStkRegRed.qrStkRecvRedLOCATRECVValidate(Sender: TField);
begin
  qrStkRecvRedRECVDATEValidate(Sender);
end;

procedure TfrStkRegRed.qrStkRecvRedLOCATKEEPValidate(Sender: TField);
begin
  dm01.Findnoexist('INVLOCAT', 'LOCATCD', qrStkRecvRedLOCATKEEP.AsString);
end;

procedure TfrStkRegRed.qrStkRecvRedREGREDNOValidate(Sender: TField);
begin
  dm01.Findexist('STKRECVRED', 'REGREDNO', qrStkRecvRedREGREDNO.AsString);
end;

procedure TfrStkRegRed.RFBtnAddRegClick(Sender: TObject);
begin
  qrStkRecvRed.Append;
end;

procedure TfrStkRegRed.qrStkRecvRedBeforeDelete(DataSet: TDataSet);
begin
  dm01.Findexist('STKREGRED', 'REGRED', qrStkRecvRedREGREDNO.AsString);
end;

procedure TfrStkRegRed.DBEdit6Change(Sender: TObject);
begin
  with dm01.query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
    params[0].AsString := DBEdit6.Text;
    open;
  end;
  cxTextEdit1.Text := dm01.query1.fieldbyname('LOCATNM').AsString;
end;

procedure TfrStkRegRed.qrStkRecvRedNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  qrStkRecvRed.FieldByName('USERID').AsString := SFMain.Xuser_ID;
  qrStkRecvRed.FieldByName('LOCATRECV').AsString := SFMain.Xlocat;
  qrStkRecvRed.FieldByName('LOCATKEEP').AsString := SFMain.Xlocat;
  qrStkRecvRed.FieldByName('RECVDATE').AsDateTime := SFMain.CR_DATE;
  qrStkRecvRed.FieldByName('INPDATE').AsDateTime := Now;
end;

procedure TfrStkRegRed.qrRecvRedTrnNewRecord(DataSet: TDataSet);
begin
  qrRecvRedTrn.FieldByName('REGREDNO').AsString := qrStkRecvRed.fieldbyname('REGREDNO').AsString;
  qrRecvRedTrn.FieldByName('FRONT').AsString := '1';
  qrRecvRedTrn.FieldByName('HIND').AsString := '1';
  qrRecvRedTrn.FieldByName('BOOK').AsString := '1';
  qrRecvRedTrn.FieldByName('FLAG').AsString := '1';
end;

procedure TfrStkRegRed.qrStkRecvRedRECVDATEValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  if Dm01.QDbconfig.FieldByName('H_STKRED').asstring = 'Y' then
  begin
    HF := 'H_STKRED';
    LF := 'L_STKRED';
    LV := qrStkRecvRed.Fieldbyname('LOCATRECV').asstring;
    DV := qrStkRecvRed.Fieldbyname('RECVDATE').asDatetime;
    if qrStkRecvRedUpdateStatus.Value = 'Inserted' then
    begin
      sqltxt := 'SELECT MAX(REGREDNO) AS MAXNO FROM STKRECVRED WHERE LOCATRECV=:EDIT1 AND ' +
        'SUBSTR(REGREDNO,2,2)=:EDIT2 AND SUBSTR(REGREDNO,5,2)=:EDIT3 AND SUBSTR(REGREDNO,7,2)=:EDIT4 ';
      qrStkRecvRedREGREDNO.Asstring := dm01.Maxno(HF, LF, LV, sqltxt, DV)
    end;
  end;

  DecodeDate(DV, XYear, XMonth, XDay);
end;

procedure TfrStkRegRed.qrStkRecvRedBeforePost(DataSet: TDataSet);
begin
  qrRecvRedTrn.First;
  if qrStkRecvRedUpdateStatus.Value = 'Inserted' then
  begin
    if Duplicate then
    begin
      qrStkRecvRedRECVDATEValidate(qrStkRecvRedRECVDATE);
      qrRecvRedTrn.DisableControls;
      qrRecvRedTrn.AfterPost := nil;
      qrRecvRedTrn.First;
      while not (Eof) do
      begin
        qrRecvRedTrn.Edit;
        qrRecvRedTrn.FieldByName('REGREDNO').AsString := qrStkRecvRed.fieldbyname('REGREDNO').AsString;
        qrRecvRedTrn.Next;
      end;
      qrRecvRedTrn.AfterPost := qrRecvRedTrnAfterPost;
      qrRecvRedTrn.EnableControls;
    end;
    XRegno := qrStkRecvRed.fieldbyname('REGREDNO').AsString;
  end;
end;

procedure TfrStkRegRed.qrRecvRedTrnAfterPost(DataSet: TDataSet);
begin
  qrRecvRedTrn.Last;
end;

procedure TfrStkRegRed.FldCombo2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalsetLocat = Mrok then
    qrStkRecvRed.fieldbyname('LOCATRECV').asstring := Searchset.Keyno;
end;

procedure TfrStkRegRed.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalsetLocat = Mrok then
    qrStkRecvRed.fieldbyname('LOCATKEEP').asstring := Searchset.Keyno;
end;

end.

