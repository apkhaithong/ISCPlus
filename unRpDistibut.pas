unit unRpDistibut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  Vcl.ActnList, Dbkbd, dxStatusBar, AdvGlowButton, AdvToolBar, cxTextEdit,
  AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons, cxMemo, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtonEdit, AdvPanel;

type
  TFRpDistibut = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBButtonEdit;
    DBEdit3: TcxDBButtonEdit;
    DBDateEdit1: TcxDBDateEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBMemo1: TcxDBMemo;
    DBRadioGroup1: TDBAdvOfficeRadioGroup;
    DataSource1: TDataSource;
    qrRepDist: TFDQuery;
    qrRepDistUpdateStatus: TStringField;
    qrRepDistLOCAT: TStringField;
    qrRepDistREPDISTNO: TStringField;
    qrRepDistREPDISTDT: TDateField;
    qrRepDistSTRNO: TStringField;
    qrRepDistENGNO: TStringField;
    qrRepDistSLCODE: TStringField;
    qrRepDistACCNO: TFloatField;
    qrRepDistLTEXT: TMemoField;
    qrRepDistUSERID: TStringField;
    qrRepDistINPDATE: TDateTimeField;
    qrRepDistSTAT: TStringField;
    qrRepDistRECVDT: TDateField;
    qrRepDistRECVNM: TStringField;
    qrRepDistORDER: TStringField;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    Action1: TAction;
    Query1: TFDQuery;
    Label10: TLabel;
    Label11: TLabel;
    DBDateEdit2: TcxDBDateEdit;
    DBEdit8: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
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
    dxStatusBar1: TdxStatusBar;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    procedure qrRepDistREPDISTDTValidate(Sender: TField);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qrRepDistAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    XYear, XMonth, XDay: word;
    { Public declarations }

  end;

var
  FRpDistibut: TFRpDistibut;
  Duplicate: Boolean;

implementation

uses
  Srchset1, Dm1, uSoftFirm, Dmsec, Srchsal1;

{$R *.DFM}

procedure TFRpDistibut.InsBtnClick(Sender: TObject);
begin
  with qrRepDist do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM REPDIST WHERE REPDISTNO ='''' ');
    open;
    Insert;
  end;
end;

procedure TFRpDistibut.CancBtnClick(Sender: TObject);
begin
  qrRepDist.cancel;
end;

procedure TFRpDistibut.DataSource1StateChange(Sender: TObject);
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
  DBRadioGroup1.ReadOnly := not SavBtn.Visible;

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
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
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
  DBEdit1.Properties.ReadOnly := Dm01.QDbconfig.FieldByName('R_REPDIS').AsString = 'Y';
  DBEdit2.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.DataSet.State = DsInsert);
  DBDateEdit1.Enabled := (SFMain.XChgdate = 'Y') and (DataSource1.DataSet.State = DsInsert);
end;

procedure TFRpDistibut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FRpDistibut := Nil;
end;

procedure TFRpDistibut.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFRpDistibut.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalRepDist = Mrok then
  begin
    with qrRepDist do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM REPDIST WHERE REPDISTNO=:0');
      Params[0].Asstring := SearchSale.KeyNo;
      Open;
    end;
  end;
end;

procedure TFRpDistibut.SavBtnClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    sfmain.RaiseException('ยังไม่อ้างอิงเลขตัวถัง..!');
  qrRepDist.Post;
end;

procedure TFRpDistibut.FormShow(Sender: TObject);
begin
  with qrRepDist do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM REPDIST WHERE REPDISTNO ='''' ');
    open;
  end;
end;

procedure TFRpDistibut.qrRepDistAfterPost(DataSet: TDataSet);
var
  XRep: string;
begin
  XRep := qrRepDist.fieldbyname('REPDISTNO').AsString;
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
    sql.Add('SELECT * FROM REPDIST WHERE REPDISTNO=:XREPDISTNO');
    params[0].AsString := XRep;
    open;
  end;
end;

procedure TFRpDistibut.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        qrRepDist.delete;
      end;
  end;
end;

procedure TFRpDistibut.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSL', 'HDSL01_8');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFRpDistibut.qrRepDistNewRecord(DataSet: TDataSet);
begin
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  qrRepDistLOCAT.AsString := SFMain.Xlocat;
  qrRepDistREPDISTDT.AsDateTime := SFMain.CR_DATE;
  qrRepDistUSERID.AsString := SFMain.Xuser_ID;
  qrRepDistINPDATE.AsDateTime := Now;
  qrRepDistSTAT.AsString := 'N';
end;

procedure TFRpDistibut.qrRepDistCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if qrRepDist.CachedUpdates then
    qrRepDistUpdateStatus.Value := UpdateStatusStr[qrRepDist.UpdateStatus];
end;

procedure TFRpDistibut.DBEdit2Change(Sender: TObject);
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

procedure TFRpDistibut.qrRepDistLOCATValidate(Sender: TField);
begin
  qrRepDistREPDISTDTValidate(Sender);
end;

procedure TFRpDistibut.DBEdit3Change(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM OFFICER WHERE CODE=:0');
    params[0].AsString := DBEdit3.Text;
    open;
    Edit1.text := fieldbyname('NAME').AsString;
  end;
end;

procedure TFRpDistibut.DBMemo1Click(Sender: TObject);
begin
  FRpDistibut.KeyPreview := False;
end;

procedure TFRpDistibut.DBMemo1Exit(Sender: TObject);
begin
  FRpDistibut.KeyPreview := True;
end;

procedure TFRpDistibut.qrRepDistREPDISTDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if not DM01.QDbconfig.Active then
    DM01.QDbconfig.Open;
  if DM01.QDbconfig.FieldByName('R_REPDIS').AsString = 'Y' then
  begin
    HF := 'H_REPDIS';
    LF := 'L_REPDIS';
    LV := qrRepDistLOCAT.AsString;
    DV := qrRepDistREPDISTDT.Asdatetime;
    if qrRepDistUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(REPDISTNO) AS MAXNO FROM REPDIST WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(REPDISTNO,2,2)=:EDIT2 AND SUBSTR(REPDISTNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(REPDISTNO,7,2)=:EDIT4';
      qrRepDistREPDISTNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV);
    end;
  end;
  DecodeDate(DV, XYear, XMonth, XDay);
end;

procedure TFRpDistibut.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PREPDISTNO' then
    ParValue := DBEDit1.Text;
end;

procedure TFRpDistibut.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchset, Searchset);
  if Searchset.ShowModalsetLocat = MrOk then
    qrRepDist.FieldByName('LOCAT').AsString := Searchset.Keyno;
end;

procedure TFRpDistibut.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = MrOk then
    qrRepDist.FieldByName('SLCODE').AsString := SearchSet.Keyno;
end;

procedure TFRpDistibut.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  SearchSale.Xflg := 'C';
  SearchSale.XLocat := qrRepDistLOCAT.Asstring;
  if SearchSale.ShowModalStrno = Mrok then
  begin
    if (Datasource1.State = DsInsert) then
      qrRepDistSTRNO.Asstring := SearchSale.Keyno;
    qrRepDistENGNO.AsString := SearchSale.HQuery1.fieldbyname('ENGNO').AsString;
  end;
end;

procedure TFRpDistibut.qrRepDistAfterCancel(DataSet: TDataSet);
begin
  if qrRepDist.Active then
    qrRepDist.CancelUpdates;
end;

end.

