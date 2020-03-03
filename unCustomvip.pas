unit unCustomVip;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, DateUtils, Dbkbd, ImgList,
  ComCtrls, ToolWin, ActnList, RzSpnEdt, RzBorder, AdvGlowButton, AdvToolBar,
  AdvPanel, cxTextEdit, cxButtonEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxMemo, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TFrCustVip = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label59: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit7: TcxTextEdit;
    Edit6: TcxTextEdit;
    Edit3: TcxTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBDateEdit1: TcxDBDateEdit;
    DBDateEdit2: TcxDBDateEdit;
    DBEdit15: TcxDBButtonEdit;
    DBEdit8: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    DBEdit23: TcxDBButtonEdit;
    DBEdit24: TcxDBButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    qrCustVip: TFDQuery;
    qrCustVipVIPNO: TStringField;
    qrCustVipCUSCOD: TStringField;
    qrCustVipBEGINDT: TDateField;
    qrCustVipEXPIREDT: TDateField;
    qrCustVipSVDISCT: TFloatField;
    qrCustVipPTDISCT: TFloatField;
    qrCustVipCODEOUT: TStringField;
    qrCustVipCODEAUT: TStringField;
    qrCustVipINPDATE: TDateTimeField;
    qrCustVipUSERID: TStringField;
    DBkbd1: TDBkbd;
    ActionList2: TActionList;
    actEditPrn: TAction;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrCustVipAfterPost(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrCustVipNewRecord(DataSet: TDataSet);
    procedure DBEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit15PropertiesChange(Sender: TObject);
    procedure DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit23PropertiesChange(Sender: TObject);
    procedure DBEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit24PropertiesChange(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure qrCustVipVIPNOValidate(Sender: TField);
    procedure qrCustVipBEGINDTValidate(Sender: TField);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCustVip: TFrCustVip;

implementation

uses
  USoftFirm, Dmsec, uFindData, unfrPreview;

{$R *.DFM}

procedure TFrCustVip.InsBtnClick(Sender: TObject);
begin
  with qrCustVip do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM CUSTOMVIP WHERE VIPNO =:0 ');
    Params[0].Asstring := '';
    open;
    Insert;
  end;
  DBEdit1.SetFocus;
end;

procedure TFrCustVip.CancBtnClick(Sender: TObject);
begin
  qrCustVip.cancel;
end;

procedure TFrCustVip.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (qrCustVipVIPNO.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

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

  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    DBEdit1.Properties.ReadOnly := True;
end;

procedure TFrCustVip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrCustVip := Nil;
end;

procedure TFrCustVip.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFrCustVip.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCustVip = Mrok then
  begin
    with qrCustVip do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CUSTOMVIP WHERE VIPNO=:0');
      Params[0].Asstring := fFindData.KeyNo;
      Open;
    end;
  end;
end;

procedure TFrCustVip.SaveBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกเลขบัตร VIP');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_4', 'INSERT', qrCustVipVIPNO.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_4', 'EDIT', qrCustVipVIPNO.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  qrCustVip.Post;
end;

procedure TFrCustVip.FormShow(Sender: TObject);
begin
  with qrCustVip do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM CUSTOMVIP WHERE VIPNO =:0 ');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TFrCustVip.qrCustVipAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrCustVip.Active then
      if (qrCustVip.ApplyUpdates = 0) then
        qrCustVip.CommitUpdates
      else
        raise Exception.Create(qrCustVip.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrCustVip.Edit;
    raise;
  end;
end;

procedure TFrCustVip.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET03_4', 'DELETE', qrCustVipVIPNO.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        qrCustVip.Delete;
      end;
  end;
end;

procedure TFrCustVip.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET03_4');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFrCustVip.qrCustVipNewRecord(DataSet: TDataSet);
begin
  qrCustVipINPDATE.AsDateTime := Now;
  qrCustVipUSERID.AsString := SFMain.Xuser_ID;
  qrCustVipBEGINDT.AsDateTime := Date;
end;

procedure TFrCustVip.DBEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCusmast = Mrok then
    qrCustVipCUSCOD.Asstring := fFindData.KeyNo;
end;

procedure TFrCustVip.DBEdit15PropertiesChange(Sender: TObject);
begin
  with DM_SEC.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCOD ');
    Params[0].Asstring := qrCustVipCUSCOD.Asstring;
    Open;
    Edit3.Text := DM_SEC.Query1.Fieldbyname('Snam').Asstring + DM_SEC.Query1.Fieldbyname('Name1').Asstring + ' ' +
      DM_SEC.Query1.Fieldbyname('Name2').Asstring;
  end;
end;

procedure TFrCustVip.DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalsetOfficer = Mrok then
    qrCustVipCODEOUT.Asstring := fFindData.KeyNo;
end;

procedure TFrCustVip.DBEdit23PropertiesChange(Sender: TObject);
begin
  Edit7.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit23.text);
end;

procedure TFrCustVip.DBEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalsetOfficer = Mrok then
    qrCustVipCODEAUT.Asstring := fFindData.KeyNo;
end;

procedure TFrCustVip.DBEdit24PropertiesChange(Sender: TObject);
begin
  Edit6.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit24.text);
end;

procedure TFrCustVip.DBDateEdit1Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  DecodeDate(qrCustVip.FieldByName('BEGINDT').AsDateTime, Year1, Month1, Day1);
  RYear := Year1 - 543;
  if RYear > 1910 then
    qrCustVip.FieldByName('BEGINDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
  else
    qrCustVip.FieldByName('BEGINDT').AsDateTime := qrCustVip.FieldByName('BEGINDT').AsDateTime;
end;

procedure TFrCustVip.DBDateEdit2Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(qrCustVip.FieldByName('EXPIREDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      qrCustVip.FieldByName('EXPIREDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      qrCustVip.FieldByName('EXPIREDT').AsDateTime := qrCustVip.FieldByName('EXPIREDT').AsDateTime;
  end;
end;

procedure TFrCustVip.qrCustVipVIPNOValidate(Sender: TField);
begin
  sfmain.Fieldexist('CUSTOMVIP', 'VIPNO', qrCustVipVIPNO.AsString);
end;

procedure TFrCustVip.qrCustVipBEGINDTValidate(Sender: TField);
begin
  qrCustVipEXPIREDT.AsDateTime := IncYear(qrCustVipBEGINDT.AsDateTime);
end;

procedure TFrCustVip.cxDBMemo1Click(Sender: TObject);
begin
  FrCustVip.KeyPreview := False;
end;

procedure TFrCustVip.cxDBMemo1Exit(Sender: TObject);
begin
  FrCustVip.KeyPreview := True;
end;

procedure TFrCustVip.PrnBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(SFMain.frPath + '\FR\fr_CUSTOMVIP.fr3');
//  frReport1.Preview := frCustPrev.frPreview1;
//  if frReport1.PrepareReport then
//  begin
//    frReport1.ShowPreparedReport;
//    frCustPrev.ShowModal;
//  end;
end;

procedure TFrCustVip.actEditPrnExecute(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath + '\FR\fr_CUSTOMVIP.fr3');
//  frREport1.DesignReport;
end;

procedure TFrCustVip.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PCODE' then
    ParValue := DBEdit1.Text + '%';
end;

end.

