unit uEngineer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, ImgList, ComCtrls, ToolWin,
  ActnList, RzSpnEdt, Dbkbd, cxGraphics, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzButton, cxMemo,
  cxDropDownEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxButtonEdit, cxDBEdit,
  AdvOfficeButtons, DBAdvOfficeButtons, cxLookAndFeelPainters, cxGroupBox,
  cxCalendar, cxLookAndFeels, dxBarBuiltInMenu, dxDateRanges, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, dxCore,
  cxDateUtils, dxStatusBar;

type
  TFSetEngineer = class(TForm)
    AdvPanel1: TAdvPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    DBEdit1: TcxDBButtonEdit;
    DBEdit5: TcxDBButtonEdit;
    Edit1: TcxTextEdit;
    DBEdit7: TcxDBButtonEdit;
    Edit2: TcxTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DBAdvOfficeCheckBox1: TDBAdvOfficeCheckBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label8: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    Edit8: TcxTextEdit;
    Edit3: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1JOBDATE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMALTIME: TcxGridDBColumn;
    cxGrid1DBTableView1FSTARTTIM: TcxGridDBColumn;
    cxGrid1DBTableView1FSTOPTIM: TcxGridDBColumn;
    cxGrid1DBTableView1FREALTIME: TcxGridDBColumn;
    cxGrid1DBTableView1LSTARTTIM: TcxGridDBColumn;
    cxGrid1DBTableView1LSTOPTIM: TcxGridDBColumn;
    cxGrid1DBTableView1LREALTIME: TcxGridDBColumn;
    cxGrid1DBTableView1RTOTTIME: TcxGridDBColumn;
    cxGrid1DBTableView1REASON: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    cxGrid1DBTableView2Column3: TcxGridDBColumn;
    cxGrid1DBTableView2Column4: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    edDateTo: TcxDateEdit;
    DataSource1: TDataSource;
    qrEngineer: TFDQuery;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    acAdd: TAction;
    acDel: TAction;
    acQuery: TAction;
    acSave: TAction;
    AcCan: TAction;
    acClose: TAction;
    AcPrn: TAction;
    qrOfficer: TFDQuery;
    qrEnTimes: TFDQuery;
    qrEnTimesENCODE: TStringField;
    qrEnTimesENNAME: TStringField;
    qrEnTimesLOCAT: TStringField;
    qrEnTimesDEPCODE: TStringField;
    qrEnTimesPOSITION: TStringField;
    qrEnTimesJOBDATE: TDateField;
    qrEnTimesJOBYEAR: TIntegerField;
    qrEnTimesJOBMONTH: TIntegerField;
    qrEnTimesJOBDAY: TIntegerField;
    qrEnTimesNOMALTIME: TFloatField;
    qrEnTimesOVERTIME: TFloatField;
    qrEnTimesFSTARTTIM: TFloatField;
    qrEnTimesFSTOPTIM: TFloatField;
    qrEnTimesFREALTIME: TFloatField;
    qrEnTimesLSTARTTIM: TFloatField;
    qrEnTimesLSTOPTIM: TFloatField;
    qrEnTimesLREALTIME: TFloatField;
    qrEnTimesRTOTTIME: TFloatField;
    qrEnTimesINPDATE: TDateTimeField;
    qrEnTimesUSERID: TStringField;
    qrEnTimesSTATUS: TStringField;
    qrEnTimesREASON: TStringField;
    dsEnTimes: TDataSource;
    qHoliday: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    tbExec: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    qrEngineerENCODE: TStringField;
    qrEngineerENNAME: TStringField;
    qrEngineerLOCAT: TStringField;
    qrEngineerPOSITION: TStringField;
    qrEngineerEFFICIENCY: TFloatField;
    qrEngineerNOMALTIME: TFloatField;
    qrEngineerOVERTIME: TFloatField;
    qrEngineerBREAKTIME: TStringField;
    qrEngineerSTATUS: TStringField;
    qrEngineerDEPCODE: TStringField;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrEngineerAfterPost(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure qrEngineerBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qrEngineerNewRecord(DataSet: TDataSet);
    procedure qrEnTimesNewRecord(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure qrEnTimesFSTOPTIMValidate(Sender: TField);
    procedure qrEnTimesFSTARTTIMValidate(Sender: TField);
    procedure qrEnTimesLSTOPTIMValidate(Sender: TField);
    procedure qrEnTimesLSTARTTIMValidate(Sender: TField);
    procedure tbExecClick(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure cxGrid1DBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure DBEdit5PropertiesChange(Sender: TObject);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edDateToPropertiesEditValueChanged(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qrEngineerENCODEValidate(Sender: TField);
  private
    { Private declarations }
    procedure nmmonth;
    procedure nmDay;
  public
    { Public declarations }
  end;

var
  FSetEngineer: TFSetEngineer;
  ed8, m, d: string;
  XDate: TDateTime;
  XDay, XYear, XMonth, wDayOfWeek: Word;
  iDay: Integer;

implementation

uses
  USoftFirm, Dmsec, uFindData, Functn01;

{$R *.DFM}

procedure TFSetEngineer.nmmonth;
begin
  case Xmonth of
    1:
      m := 'มกราคม';
    2:
      m := 'กุมภาพันธ์';
    3:
      m := 'มีนาคม';
    4:
      m := 'เมษายน';
    5:
      m := 'พฤษภาคม';
    6:
      m := 'มิถุนายน';
    7:
      m := 'กรกฏาคม';
    8:
      m := 'สิงหาคม';
    9:
      m := 'กันยายน';
    10:
      m := 'ตุลาคม';
    11:
      m := 'พฤศจิกายน';
    12:
      m := 'ธันวาคม';
  end;
end;

procedure TFSetEngineer.nmDay;
begin
  case wDayOfWeek of
    1:
      d := 'อาทิตย์';
    2:
      d := 'จันทร์';
    3:
      d := 'อังคาร';
    4:
      d := 'พุธ';
    5:
      d := 'พฤหัสบดี';
    6:
      d := 'ศุกร์';
    7:
      d := 'เสาร์';
  end;
end;

procedure TFSetEngineer.InsBtnClick(Sender: TObject);
begin
  with qrEngineer do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM ENGINEER WHERE ENCODE =:0 ');
    Params[0].Asstring := '';
    open;
    Insert;
  end;

  with qrEnTimes do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ENTIME WHERE ENCODE=:0');
    Params[0].Asstring := '';
    Open;
  end;

  DBEdit1.SetFocus;
end;

procedure TFSetEngineer.CancBtnClick(Sender: TObject);
begin
  qrEngineer.cancel;
  qrEnTimes.Cancel;
end;

procedure TFSetEngineer.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (qrEngineer.FieldByName('ENCODE').AsString <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  DBAdvOfficeCheckBox1.ReadOnly := not SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
        TcxDBButtonEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
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
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
        TcxDBButtonEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    DBEdit1.Properties.ReadOnly := True;
end;

procedure TFSetEngineer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FSetEngineer := Nil;
end;

procedure TFSetEngineer.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetEngineer.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalEngineer = Mrok then
  begin
    with qrEngineer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE=:0');
      Params[0].Asstring := fFindData.KeyNo;
      Open;
    end;
    with qrEnTimes do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ENTIME WHERE ENCODE=:0 AND JOBYEAR=:1 AND JOBMONTH=:2');
      Params[0].Asstring := fFindData.KeyNo;
      Params[1].AsInteger := XYear;
      Params[2].AsInteger := XMonth;
      Open;
    end;
  end;
end;

procedure TFSetEngineer.SaveBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัส');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_6', 'INSERT', qrEnTimesENCODE.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_6', 'EDIT', qrEnTimesENCODE.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  qrEngineer.Post;
end;

procedure TFSetEngineer.FormShow(Sender: TObject);
begin
  with qrEngineer do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM ENGINEER WHERE ENCODE =:0 ');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TFSetEngineer.qrEngineerAfterPost(DataSet: TDataSet);
var
  nKey: string;
begin
  nKey := qrEngineer.fieldbyname('ENCODE').AsString;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrEngineer.Active then
      if (qrEngineer.ApplyUpdates = 0) then
        qrEngineer.CommitUpdates
      else
        raise Exception.Create(qrEngineer.RowError.Message);
    if qrEnTimes.Active then
      if (qrEnTimes.ApplyUpdates = 0) then
        qrEnTimes.CommitUpdates
      else
        raise Exception.Create(qrEnTimes.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrEngineer.Edit;
    raise;
  end;
  //
  Dm_sec.Do_With_Query(actOpen, qrEngineer, 'SELECT * FROM ENGINEER WHERE ENCODE =:X1', [nKey]);
  Dm_sec.Do_With_Query(actOpen, qrEnTimes, 'SELECT * FROM ENTIME WHERE ENCODE =:X1', [nKey]);
end;

procedure TFSetEngineer.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET01_6', 'DELETE', qrEnTimesENCODE.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        qrEngineer.Delete;
      end;
  end;
end;

procedure TFSetEngineer.qrEngineerBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('JOBORDER', 'REPCOD', qrEngineer.fieldbyname('ENCODE').AsString);
  SFMain.Findexist('JOBORDER', 'RECVCOD', qrEngineer.fieldbyname('ENCODE').AsString);
end;

procedure TFSetEngineer.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET01_6');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  edDateTo.date := Date;
  Decodedate(edDateTo.date, Xyear, Xmonth, Xday);
  cxPageControl1.ActivePage := cxTabSheet1;
end;

procedure TFSetEngineer.qrEngineerNewRecord(DataSet: TDataSet);
begin
  qrEngineer.FieldByName('BREAKTIME').AsString := '12:00-13:00';
  qrEngineer.FieldByName('NOMALTIME').AsFloat := 8;
  qrEngineer.FieldByName('OVERTIME').AsFloat := 8;
  qrEngineer.FieldByName('STATUS').AsString := 'T';
end;

procedure TFSetEngineer.qrEnTimesNewRecord(DataSet: TDataSet);
begin
  qrEnTimes.FieldByName('ENCODE').AsString := qrEngineer.FieldByName('ENCODE').AsString;
  qrEnTimes.FieldByName('ENNAME').AsString := qrEngineer.FieldByName('ENNAME').AsString;
  qrEnTimes.FieldByName('LOCAT').AsString := qrEngineer.FieldByName('LOCAT').AsString;
  qrEnTimes.FieldByName('DEPCODE').AsString := qrEngineer.FieldByName('DEPCODE').AsString;
  qrEnTimes.FieldByName('INPDATE').AsDateTime := Now;
  qrEnTimes.FieldByName('USERID').AsString := SFMain.Xuser_ID;
  qrEnTimes.FieldByName('STATUS').AsString := 'Y';
end;

procedure TFSetEngineer.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[1] = 0 then
  begin
    ACanvas.Font.Color := clRed;
    ACanvas.Font.Style := [fsBold];
    ACanvas.Brush.Color := clBtnface;
  end;
  if AViewInfo.GridRecord.Values[2] > 8 then
  begin
    ACanvas.Font.Color := clMaroon;
    ACanvas.Font.Style := [fsBold];
    ACanvas.Brush.Color := clBtnface;
  end;
end;

procedure TFSetEngineer.qrEnTimesFSTOPTIMValidate(Sender: TField);
begin
  if qrEnTimesFSTARTTIM.AsFloat > 0 then
  begin
    qrEnTimesFREALTIME.AsFloat := qrEnTimesFSTOPTIM.AsFloat - qrEnTimesFSTARTTIM.AsFloat;
    qrEnTimesRTOTTIME.AsFloat := qrEnTimesFREALTIME.AsFloat + qrEnTimesLREALTIME.AsFloat;
  end;
end;

procedure TFSetEngineer.qrEnTimesFSTARTTIMValidate(Sender: TField);
begin
  if qrEnTimesFSTOPTIM.AsFloat > qrEnTimesFSTARTTIM.AsFloat then
  begin
    qrEnTimesFREALTIME.AsFloat := qrEnTimesFSTOPTIM.AsFloat - qrEnTimesFSTARTTIM.AsFloat;
    qrEnTimesRTOTTIME.AsFloat := qrEnTimesFREALTIME.AsFloat + qrEnTimesLREALTIME.AsFloat;
  end;
end;

procedure TFSetEngineer.qrEnTimesLSTOPTIMValidate(Sender: TField);
begin
  if qrEnTimesLSTOPTIM.AsFloat > 0 then
  begin
    qrEnTimesLREALTIME.AsFloat := qrEnTimesLSTOPTIM.AsFloat - qrEnTimesLSTARTTIM.AsFloat;
    qrEnTimesRTOTTIME.AsFloat := qrEnTimesFREALTIME.AsFloat + qrEnTimesLREALTIME.AsFloat;
  end;
end;

procedure TFSetEngineer.qrEnTimesLSTARTTIMValidate(Sender: TField);
begin
  if qrEnTimesLSTOPTIM.AsFloat > qrEnTimesLSTARTTIM.AsFloat then
  begin
    qrEnTimesLREALTIME.AsFloat := qrEnTimesLSTOPTIM.AsFloat - qrEnTimesLSTARTTIM.AsFloat;
    qrEnTimesRTOTTIME.AsFloat := qrEnTimesFREALTIME.AsFloat + qrEnTimesLREALTIME.AsFloat;
  end;
end;

procedure TFSetEngineer.tbExecClick(Sender: TObject);
var
  i: integer;
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ไม่พบรหัสช่าง...!');

  with qHoliday do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM THOLIDAY WHERE CRYEAR=:0 AND CRMONTH=:1 ORDER BY CRMONTH ');
    Params[0].AsInteger := XYear;
    Params[1].AsInteger := XMonth;
    Open;
  end;

  with qrEnTimes do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ENTIME WHERE ENCODE=:0 AND JOBYEAR=:1 AND JOBMONTH=:2');
    Params[0].Asstring := qrEngineer.FieldbyName('ENCODE').AsString;
    Params[1].AsInteger := XYear;
    Params[2].AsInteger := XMonth;
    Open;
  end;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if qrEnTimes.Eof and qrEnTimes.Bof then
  begin
    i := 1;
    while i <= iDay do
    begin
      qrEnTimes.Insert;
      qrEnTimesJOBDATE.AsDateTime := StrToDate(IntToStr(i) + '/' + IntTostr(Xmonth) + '/' + IntTostr(Xyear));
      XDate := qrEnTimes.FieldByName('JOBDATE').AsDateTime;
      DecodeDateFully(XDate, Xyear, Xmonth, Xday, wDayOfWeek);
      qrEnTimesJOBYEAR.AsInteger := Xyear;
      qrEnTimesJOBMONTH.AsInteger := Xmonth;
      qrEnTimesJOBDAY.AsInteger := Xday;
      if wDayOfWeek = 1 then
      begin
        qrEnTimes.FieldByName('NOMALTIME').AsFloat := 0;
        qrEnTimesFSTOPTIM.AsFloat := 0;
        qrEnTimesLSTOPTIM.AsFloat := 0;
        qrEnTimesFSTARTTIM.AsFloat := 0;
        qrEnTimesFREALTIME.AsFloat := 0;
        qrEnTimesLSTARTTIM.AsFloat := 0;
        qrEnTimesLREALTIME.AsFloat := 0;
        qrEnTimesRTOTTIME.AsFloat := 0;
      end
      else
      begin
        if wDayOfWeek = 7 then
          qrEnTimes.FieldByName('NOMALTIME').AsFloat := qrEngineer.FieldByName('OVERTIME').AsFloat
        else
          qrEnTimes.FieldByName('NOMALTIME').AsFloat := qrEngineer.FieldByName('NOMALTIME').AsFloat;
        qrEnTimesFSTOPTIM.AsFloat := 12.00;
        qrEnTimesLSTARTTIM.AsFloat := 13.00;
        qrEnTimesLSTOPTIM.AsFloat := 17.00;
      end;
      i := i + 1;
    end;

    qHoliday.First;
    while not (qHoliday.Eof) do
    begin
      qrEnTimes.First;
      while not (qrEnTimes.Eof) do
      begin
        if qHoliday.FieldByName('HOLIDAY').AsDateTime = qrEnTimesJOBDATE.AsDateTime then
        begin
          qrEnTimes.Edit;
          qrEnTimesNOMALTIME.AsFloat := 0;
          qrEnTimesFSTOPTIM.AsFloat := 0;
          qrEnTimesLSTOPTIM.AsFloat := 0;
          qrEnTimesFSTARTTIM.AsFloat := 0;
          qrEnTimesFREALTIME.AsFloat := 0;
          qrEnTimesLSTARTTIM.AsFloat := 0;
          qrEnTimesLREALTIME.AsFloat := 0;
          qrEnTimesRTOTTIME.AsFloat := 0;
        end;
        qrEnTimes.Next;
      end;
      qHoliday.Next;
    end;
  end
  else
    MessageDlg('มีการกำหนดการทำงานของเดือนนี้แล้ว....!', mtInformation, [mbOK], 0);
end;

procedure TFSetEngineer.Edit8Change(Sender: TObject);
begin
  if qrEngineer.State = DsEdit then
  begin
    with qrEnTimes do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ENTIME WHERE ENCODE=:0 AND JOBYEAR=:1 AND JOBMONTH=:2');
      Params[0].Asstring := qrEngineer.FieldbyName('ENCODE').AsString;
      ;
      Params[1].AsInteger := XYear;
      Params[2].AsInteger := XMonth;
      Open;
    end;
  end;
end;

procedure TFSetEngineer.cxGrid1DBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  if ARecord.Values[1] = 0 then
    AAllow := False;
end;

procedure TFSetEngineer.DBEdit5PropertiesChange(Sender: TObject);
begin
  Edit1.Text := SFMain.FindShowDesc('DIVISION', 'DIVINAM', 'DIVICOD', DbEdit5.Text);
end;

procedure TFSetEngineer.DBEdit7PropertiesChange(Sender: TObject);
begin
  Edit2.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DbEdit7.Text);
end;

procedure TFSetEngineer.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalsetOfficer = Mrok then
  begin
    with qrOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('Select * from Officer where code=:0  ');
      Params[0].AsString := fFindData.Keyno;
      Open;
      qrEngineer.FieldByName('ENCODE').AsString := fFindData.Keyno;
      qrEngineer.FieldByName('ENNAME').AsString := qrOfficer.Fieldbyname('NAME').AsString;
      qrEngineer.FieldByName('POSITION').AsString := qrOfficer.Fieldbyname('POSITION').AsString;
      qrEngineer.FieldByName('DEPCODE').AsString := qrOfficer.Fieldbyname('DEPCODE').AsString;
      qrEngineer.FieldByName('LOCAT').AsString := qrOfficer.Fieldbyname('LOCAT').AsString;
    end;
  end;
end;

procedure TFSetEngineer.edDateToPropertiesEditValueChanged(Sender: TObject);
var
  Day2: string;
begin
  XDate := edDateTo.date;
  Decodedate(Xdate, Xyear, Xmonth, Xday);
  DecodeDateFully(XDate, Xyear, Xmonth, Xday, wDayOfWeek);
  nmmonth;
  Edit8.Text := ' ' + M;
  ed8 := inttostr(Xmonth);
  nmDay;
  Edit3.Text := d;
  LDay(Day2, edDateTo.Date);
  iDay := StrToInt(Day2);
end;

procedure TFSetEngineer.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetDepmast = Mrok then
    qrEngineer.FieldByName('DEPCODE').AsString := fFindData.Keyno;
end;

procedure TFSetEngineer.qrEngineerENCODEValidate(Sender: TField);
begin
  sfmain.Fieldexist('ENGINEER', 'ENCODE', qrEngineerENCODE.AsString);
end;

end.

