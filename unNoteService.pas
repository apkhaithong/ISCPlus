unit unNoteService;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Buttons, Mask, DB, Dbkbd, ComCtrls, ToolWin,
  cxTextEdit, cxButtonEdit, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, AdvGlowButton, AdvToolBar, AdvPanel,
  cxMemo, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Phys.Intf,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrNoteService = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bookserv: TFDQuery;
    BookservLOCAT: TStringField;
    BookservBOOKNO: TStringField;
    BookservBKDATE: TDateField;
    BookservBKTIME: TFloatField;
    BookservCFDATE: TDateField;
    BookservCFTIME: TFloatField;
    BookservBKTYPE: TStringField;
    BookservNAME1: TStringField;
    BookservNAME2: TStringField;
    BookservMDLCOD: TStringField;
    BookservREGNO: TStringField;
    BookservCOLOR: TStringField;
    BookservKILOMT: TFloatField;
    BookservCUSCODE: TStringField;
    BookservUSERID: TStringField;
    BookservREPTYPE: TStringField;
    BookservFINSDATE: TDateField;
    BookservFINSTIME: TStringField;
    BookservUpdateStatus: TStringField;
    BookservINPDATE: TDateTimeField;
    BookservREMARK: TMemoField;
    Query1: TFDQuery;
    Query2: TFDQuery;
    BookservSALCOD: TStringField;
    BookservFLGCS: TStringField;
    Label20: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    BookservMOBILE: TStringField;
    BookservTELPHOME: TStringField;
    AdvPanel1: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    DBDateEdit1: TcxDBDateEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit15: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    edShowLocat: TcxTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit8: TcxDBButtonEdit;
    DBEdit7: TcxDBButtonEdit;
    DBEdit10: TcxDBButtonEdit;
    cxTextEdit1: TcxTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBDateEdit2: TcxDBDateEdit;
    DBDateEdit3: TcxDBDateEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBMemo1: TcxDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InsBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CloseBtnClick(Sender: TObject);
    procedure btnModelClick(Sender: TObject);
    procedure FbtLocatClick(Sender: TObject);
    procedure btnTypeSVClick(Sender: TObject);
    procedure DBEdit15Change(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure btnRegnoClick(Sender: TObject);
    procedure BookservAfterPost(DataSet: TDataSet);
    procedure BookservNewRecord(DataSet: TDataSet);
    procedure BookservCalcFields(DataSet: TDataSet);
    procedure BookservBeforePost(DataSet: TDataSet);
    procedure BookservBKDATEValidate(Sender: TField);
    procedure BookservREGNOValidate(Sender: TField);
    procedure RzRapidFireButton2Click(Sender: TObject);
    procedure DBEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure BookservUpdateError(ASender: TDataSet; AException: EFDException;
      ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frNoteService: TfrNoteService;
  Duplicate: Boolean;

implementation

uses
  USoftFirm, Dmsec, uSrcDlg;

{$R *.DFM}

procedure TfrNoteService.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
//   frNoteService := Nil;
end;

procedure TfrNoteService.InsBtnClick(Sender: TObject);
begin
  with Bookserv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM BOOKSERV WHERE BOOKNO =:0');
    PARAMS[0].ASSTRING := '';
    OPEN;
    Insert;
  end;
  DBEdit5.SetFocus;
end;

procedure TfrNoteService.FormCreate(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  FormatSettings.ShortTimeFormat := ('HH.SS');

{  SFMain.Check_right(HSV, 'SV01');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing:= SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right; }

  with Bookserv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM BOOKSERV WHERE BOOKNO =:0');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;
end;

procedure TfrNoteService.SaveBtnClick(Sender: TObject);
begin
  Bookserv.Post;
end;

procedure TfrNoteService.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ที่จะลบข้อมูลนี้', Mtconfirmation, [mbok, mbcancel], 0) = mrok then
    Bookserv.Delete;
end;

procedure TfrNoteService.CancBtnClick(Sender: TObject);
begin
  Bookserv.Cancel;
end;

procedure TfrNoteService.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete);
  Enqbtn.Enabled := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Enabled := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Enabled := SavBtn.Enabled;
  //
  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
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
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  if not dm_sec.QDBConfig.Active then
    dm_sec.QDBConfig.Open;
  DBEdit16.Properties.Readonly := dm_sec.QDBConfig.Fieldbyname('R_BSV').asstring = 'Y';
  DBEDIT15.Enabled := (SFMain.XChgLoc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBDateEdit1.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
end;

procedure TfrNoteService.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
    Vk_F2:
      SaveBtnClick(Sender);
    Vk_F3:
      DelBtnClick(Sender);
    Vk_Insert:
      InsBtnClick(Sender);
  end;
end;

procedure TfrNoteService.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrNoteService.btnModelClick(Sender: TObject);
begin
 { Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalModel=Mrok Then
     Bookserv.FieldByName('MDLCOD').AsString := fSrcDlg1.KeyNo;   }

end;

procedure TfrNoteService.FbtLocatClick(Sender: TObject);
begin
 { Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalLocat=Mrok Then
     Bookserv.FieldByName('LOCAT').AsString := fSrcDlg1.KeyNo;}

end;

procedure TfrNoteService.btnTypeSVClick(Sender: TObject);
begin
 { Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalSvtype=Mrok Then
     Bookserv.FieldByName('REPTYPE').Asstring:= fSrcDlg1.Keyno ;   }

end;

procedure TfrNoteService.DBEdit15Change(Sender: TObject);
begin
  with Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
    PARAMS[0].ASSTRING := DBEdit15.TEXT;
    OPEN;
    edShowLocat.TEXT := FieldByname('LOCATNM').Asstring;
  end;
end;

procedure TfrNoteService.RzRapidFireButton1Click(Sender: TObject);
begin
 { Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalOffic=Mrok Then
     Bookserv.FieldByName('SALCOD').Asstring:= fSrcDlg1.Keyno;  }
end;

procedure TfrNoteService.DBEdit10Change(Sender: TObject);
begin
 //    edSwOfficer.Text := SFMain.FindShowDesc('OFFICER','NAME','CODE',DBEdit10.Text);
end;

procedure TfrNoteService.DBEdit13Change(Sender: TObject);
begin
 // edSwTypService.Text := SFMain.FindShowDesc('SVTYPE','TYPNAME','TYPCOD',DBEdit13.Text);
end;

procedure TfrNoteService.EnqBtnClick(Sender: TObject);
begin
    { Application.Createform(TfSrcDlg1,fSrcDlg1);
     if SFMain.XChgLoc = 'Y' then fSrcDlg1.XSrLocat :='%' else fSrcDlg1.XSrLocat := SFMain.Xlocat;
     If fSrcDlg1.ShowModalBookSV=Mrok Then
     Begin
       with Bookserv do
       Begin
        close;
        sql.Clear;
        sql.Add('SELECT * FROM BOOKSERV WHERE BOOKNO =:0');
        Params[0].AsString := fSrcDlg1.Keyno;
        Open;
       End;
     end;  }
end;

procedure TfrNoteService.btnRegnoClick(Sender: TObject);
begin
{  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalSvmst=Mrok Then
     Bookserv.FieldByName('REGNO').Asstring := fSrcDlg1.qrFindDat.fieldbyname('REGNO').AsString;     }

end;

procedure TfrNoteService.BookservAfterPost(DataSet: TDataSet);
begin
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if Bookserv.Active then
      if (Bookserv.ApplyUpdates = 0) then
        Bookserv.CommitUpdates
      else
        raise Exception.Create(Bookserv.RowError.Message);
    if DM_Sec.Lastno.Active then
      if (DM_Sec.Lastno.ApplyUpdates = 0) then
        DM_Sec.Lastno.CommitUpdates
      else
        raise Exception.Create(DM_Sec.Lastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TfrNoteService.BookservNewRecord(DataSet: TDataSet);
var
  Present: TDateTime;
  Hour, Min, Sec, MSec: Word;
  S: string;
begin
  Present := Now;
  DecodeTime(Present, Hour, Min, Sec, MSec);
  S := IntToStr(Hour) + '.' + IntToStr(Min);

  Bookserv.Fieldbyname('LOCAT').Asstring := SFMain.Xlocat;
  Bookserv.Fieldbyname('USERID').Asstring := SFMain.Xuser_ID;
  Bookserv.Fieldbyname('BKDATE').AsDateTime := Date;
  Bookserv.Fieldbyname('INPDATE').asdateTime := Now;
  Bookserv.Fieldbyname('BKTIME').Asfloat := StrToFloat(S);
end;

procedure TfrNoteService.BookservCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if Bookserv.CachedUpdates then
    BookservUpdateStatus.Value := UpdateStatusStr[Bookserv.UpdateStatus];
end;

procedure TfrNoteService.BookservBeforePost(DataSet: TDataSet);
begin
  if (BookservUpdateStatus.Value = 'Inserted') then
    if Duplicate then
      BookservBKDATEValidate(BookservBKDATE);
end;

procedure TfrNoteService.BookservBKDATEValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  HF := 'H_BSV';
  LF := 'L_BSV';
  DM_Sec.QDBConfig.Close;
  DM_Sec.QDBConfig.Open;
  if DM_Sec.QDBConfig.Fieldbyname('R_BSV').asstring = 'Y' then
  begin
    LV := Bookserv.Fieldbyname('LOCAT').asstring;
    DV := Bookserv.Fieldbyname('BKDATE').asDatetime;
    if BookservUpdateStatus.Value = 'Inserted' then
      BookservBOOKNO.Asstring := DM_Sec.RunNo(HF, LF, LV, DV);
  end;
end;

procedure TfrNoteService.BookservREGNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVMAST WHERE REGNO= :XREGNO  ');
    Params[0].Asstring := BookservREGNO.value;
    Open;
  end;

  if not (Query1.Bof and Query1.eof) then
    with Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT Name1,name2 FROM CUSTMAST WHERE CUSCOD= :XCus  ');
      Params[0].Asstring := Query1.FieldByname('Cuscod').value;
      Open;
    end;

  if not (Query1.Bof and Query1.eof) then
  begin
    Bookserv.FieldByName('COLOR').AsString := Query1.FieldByName('COLOR').AsString;
    Bookserv.FieldByName('CUSCODE').AsString := Query1.FieldByName('CUSCOD').AsString;
    Bookserv.FieldByName('MDLCOD').AsString := Query1.FieldByName('MDLCOD').AsString;
    if Bookserv.FieldByName('Cuscode').AsString <> '' then
    begin
      Bookserv.FieldByName('Name1').AsString := Query2.FieldByName('Name1').AsString;
      Bookserv.FieldByName('Name2').AsString := Query2.FieldByName('Name2').AsString;
    end;
  end;
end;

procedure TfrNoteService.BookservUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TfrNoteService.RzRapidFireButton2Click(Sender: TObject);
begin
 { Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalOffic=Mrok Then
     Bookserv.FieldByName('SALCOD').Asstring:= fSrcDlg1.Keyno;   }

end;

procedure TfrNoteService.DBEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    BookservLOCAT.Asstring := fSrcDlg.Keyno;
end;

procedure TfrNoteService.DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalSvmst = Mrok then
    BookservREGNO.Asstring := fSrcDlg.Keyno;
end;

procedure TfrNoteService.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalMODEL = Mrok then
    BookservMDLCOD.Asstring := fSrcDlg.Keyno;
end;

procedure TfrNoteService.DBEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    BookservSALCOD.Asstring := fSrcDlg.Keyno;
end;

end.

