unit Dmsec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  n2wMoney, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.DB2, FireDAC.Phys.DB2Def,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.ODBCBase,
  System.Variants, frxClass;

type
  TActionType = (actOpen, actExecSql, actInsert);

  TDM_SEC = class(TDataModule)
    HI_DBMS: TFDConnection;
    FDPhysDB2DriverLink1: TFDPhysDB2DriverLink;
    Query1: TFDQuery;
    Query2: TFDQuery;
    qrRecent: TFDQuery;
    Condpay: TFDQuery;
    QMenutrn: TFDQuery;
    QCondcal: TFDQuery;
    QLastno: TFDQuery;
    qCondpay: TFDQuery;
    QDbconfig: TFDQuery;
    Lastno: TFDQuery;
    QLocat: TFDQuery;
    qrReport: TFDQuery;
    procedure qrReportAfterPost(DataSet: TDataSet);
    procedure HI_DBMSRecover(ASender, AInitiator: TObject;
      AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
    procedure HI_DBMSBeforeStartTransaction(Sender: TObject);
    procedure HI_DBMSAfterCommit(Sender: TObject);
    procedure HI_DBMSAfterRollback(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mStream: TMemoryStream;
    XSchema, XDB, Xtprd, Decode: string;
    function ZeroLead(St: string; len: integer): string;
    procedure EndCode(PASWR, USID, CK: string); // เข้ารหัส ถอดรหัส
    function RunDoc(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function MaxRunNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function MaxDocNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function ChkRecent(FUserid, FMenucode, FUsingstat, FDocno: string): string;
    function ChkMenu(FTable, FField1, FField2, FValue1, FValue2: string): string;
//    Procedure Do_With_Query(ActionType  : TActionType; QueryName : TFDQuery ;
//                           sqlText : String; Const parName : Array of Const);
    procedure Do_With_Query(ActionType: TActionType; QueryName: TFDQuery; sqlText: string; const parName: array of Variant);
    procedure Do_With_Query_No_params(ActionType: TActionType; QueryName: TFDQuery; sqlText: string);
//    procedure Do_Prev_Edit_FastReport(nFrReport: TfrxReport; nFrName, Action: string); {Action to preview and design FR}
//    Procedure Do_Prev_Edit_FastReport_Without_frpreview(nFrReport:TfrReport;nFrName,Action:String); {Action to preview and design FR}
    function Do_Ref_frReport1(AfrReport: TfrxReport): TfrxReport; {Reference FR}
//    function Do_Show_frReports(FReport: string): string;
    function Do_Call_Reports(FTable, FField, FValue: string): string;

    // Add by Aphisit
    function Do_Show_frReports(FReport: string; AFrStream: TMemoryStream): string;
    procedure Do_Prev_Edit_FastReport(nFrReport: TfrxReport; nFrName, Action: string);
  end;

var
  DM_SEC: TDM_SEC;

implementation

uses
  USoftFirm, unfrPreview, uPaymntPos_01;

{$R *.DFM}

function TDM_SEC.Do_Call_Reports(FTable, FField, FValue: string): string;
var
  VTable, VField, VValue: string;
begin
  VTable := FTable;
  VField := FField;
  VValue := UpperCase(FValue);
  with qrReport do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM ' + VTable + ' WHERE ' + VField + ' = :0 ');
    params[0].AsString := VValue;
    open;
  end;
  Result := VTable + '' + VValue;
end;

function TDM_SEC.Do_Show_frReports(FReport: string; AFrStream: TMemoryStream): string;
begin
  Do_Call_Reports('SVSLFRREPORTS','FRNAME',FReport);
  if qrReport.IsEmpty then
    raise Exception.Create('ไม่มี Report ' + FReport );
  AFrStream.LoadFromStream(qrReport.CreateBlobStream(qrReport.FieldByName('PATHFR'), bmRead));
end;

function TDM_SEC.Do_Ref_frReport1(AfrReport: TfrxReport): TfrxReport;
begin
  Result := AfrReport;
end;

procedure TDM_SEC.Do_Prev_Edit_FastReport(nFrReport: TfrxReport; nFrName, Action: string);
var
  AFrStream: TMemoryStream;
begin
  AFrStream := TMemoryStream.Create;
  try
    Do_Show_frReports(nFrName, AFrStream);
    nFrReport.LoadFromStream(AFrStream);
    nFrReport.PreviewOptions.AllowEdit := False;
    nFrReport.PreviewOptions.AllowPreviewEdit := False;
    nFrReport.FileName := nFrName;
    //
    if (Action = '1') then {Preview Report}
    begin
      nFrReport.ShowReport;
    end
    else if Action = '2' then {Design Report}
    begin
      nFrReport.DesignReport;
      //
      SFMain.AdvSmoothMessageDialog6.HTMLText.Text := 'Edited by User : ' + SFMain.Xuser_ID + '<br/>Do you want to save changes?';
      case SFMain.AdvSmoothMessageDialog6.ExecuteDialog of
        mrOk:
          begin
            qrReport.Edit;
            AFrStream.Clear;
            nFrReport.SaveToStream(AFrStream);
            AFrStream.Position := 0;
            (qrReport.FieldByName('PATHFR') as TBlobField).LoadFromStream(AFrStream);
            qrReport.FieldByName('USERID').AsString := SFMain.Xuser_ID;
            qrReport.FieldByName('INPUTDT').AsDateTime := Now;
            qrReport.Post;
          end;
        mrCancel:
          begin
            DeleteFile(nFrName);
          end;
      end;
    end
    else if Action = '3' then {Print Report}
    begin
      nFrReport.PrepareReport;
      nFrReport.Print;
    end;
  finally
    AFrStream.Free;
  end;
end;

procedure TDM_SEC.Do_With_Query_No_params(ActionType: TActionType; QueryName: TFDQuery; sqlText: string);
begin
  with QueryName do
  begin
    Close;
    Sql.Clear;
    Sql.Add(sqlText);
    case ActionType of
      actOpen:
        open;
      actExecSql:
        execSql;
      actInsert:
        begin
          open;
          insert;
        end;
    end;
  end;
end;

procedure TDM_SEC.Do_With_Query(ActionType: TActionType; QueryName: TFDQuery; sqlText: string; const parName: array of Variant);
var
  I: Integer;
  AParamValues: string;
begin
  with QueryName do
  begin
    Close;
    SQL.Clear;
    SQL.Add(sqlText);
    //
    AParamValues := '';
    for I := 0 to Params.Count - 1 do
    begin
      AParamValues := AParamValues + Params[I].Name + ';';
    end;
    //
    Params.ParamValues[AParamValues] := VarArrayOf(parName);
    Prepare;
    case ActionType of
      actOpen:
        Open;
      actExecSql:
        ExecSql;
      actInsert:
        begin
          Open;
          Insert;
        end;
    end;
  end;
end;

function TDM_SEC.ChkMenu(FTable, FField1, FField2, FValue1, FValue2: string): string;
var
  VTable, VField1, VField2, VValue1, VValue2: string;
begin
  VTable := FTable;
  VField1 := FField1;
  VField2 := FField2;
  VValue1 := FValue1;
  VValue2 := FValue2;

  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT ' + VField1 + ',' + VField2 + ' FROM ' + VTable + ' WHERE ' + VField1 + '=:0 AND ' + VField2 + '=:1 AND USERID =:2');
    params[0].AsString := VValue1;
    params[1].AsString := VValue2;
    params[2].AsString := SFMain.Xuser_ID;
    open;
    if not (Eof and Bof) then
      SFMain.RaiseException('ไม่มีสิทธิ์ในการเข้าใช้งาน..!');
  end;
  Result := VTable + '' + VValue1 + '' + VValue2;
end;

function TDM_SEC.ChkRecent(FUserid, FMenucode, FUsingstat, FDocno: string): string;
var
  VUserid, VMenucode, VUsingstat, VDocno: string;
begin
  VUserid := FUserid;
  VMenucode := FMenucode;
  VUsingstat := FUsingstat;
  VDocno := FDocno;
  with qrRecent do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM RECENTMENU WHERE IDNO IS NULL');
    open;
    insert;
    qrRecent.FieldByName('USERID').AsString := VUserid;
    qrRecent.FieldByName('MENUCODE').AsString := VMenucode;
    qrRecent.FieldByName('USINGSTAT').AsString := VUsingstat;
    qrRecent.FieldByName('DOCNO').AsString := VDocno;
    qrRecent.FieldByName('LASTRECENT').AsDateTime := Now;
    qrRecent.FieldByName('FLAG').AsString := '2';
  end;
end;

function TDM_SEC.MaxRunNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  Zero, PF1, PF2: string;
  PF, HH, Lc, YY, MM, S2, Y1: string;
  i, LL, Max: integer;
  LN, V1: Double;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  MM := Copy(DateTostr(Dvalue), 4, 2);
  if not QCondpay.Active then
    QCondpay.Open;
  HH := QCondpay.Fieldbyname(HField).Asstring;

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD(SQLTXT);
    Params[0].Asstring := Lc;
    Params[1].Asstring := HH;
    Params[2].Asstring := Y1;
    Params[3].Asstring := MM;
    Open;
  end;
  if not (Query1.Eof and Query1.Bof) and (Query1.Fieldbyname('Maxno').asstring <> '') then
  begin
    PF1 := Copy(Query1.Fieldbyname('Maxno').asstring, 1, 8);
    Max := Strtoint(Copy(Query1.Fieldbyname('Maxno').asstring, 9, 4));
  end
  else
  begin
    PF1 := '';
    Max := 0;
  end;

  with QLocat do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (QLocat.Eof) and (QLocat.Bof) then
      SFmain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := QLocat.FieldByname('SHORTL').Asstring;
  end;

  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CUR_YEAR,CUR_MONTH,HDOC,' + LField + ' FROM TLASTNO ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CUR_YEAR = :CRY ' +
      ' AND CUR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := MM;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
      with QLastno do
      begin
        Insert;
        Fieldbyname('Locat').Asstring := Lc;
        Fieldbyname('Cur_year').Asstring := YY;
        Fieldbyname('Cur_Month').Asstring := MM;
        Fieldbyname('HDOC').Asstring := YY;
        Post;
      end;
  end;

  PF2 := PF + HH + '-' + Y1 + MM;
  if PF1 = PF2 then
  begin
    V1 := Max + 1;
    S2 := FloatTostr(V1);
    LL := length(S2);
    Zero := '';
    for i := 1 to (4 - LL) do
      Zero := Zero + '0';
    Result := PF1 + Zero + S2;
  end
  else
  begin
    V1 := 1;
    S2 := FloatTostr(V1);
    LL := length(S2);
    Zero := '';
    for i := 1 to (4 - LL) do
      Zero := Zero + '0';
    Result := PF2 + Zero + S2;
  end;

  if V1 > QLastNo.Fieldbyname(LField).AsFloat then
  begin
    QLastNo.Edit;
    QLastNo.Fieldbyname(LField).AsFloat := V1;
    QLastNo.Post;
  end;
end;

function TDM_SEC.MaxDocNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  Zero, PF1, PF2: string;
  PF, HH, Lc, YY, MM, S2, Y1: string;
  i, LL, Max: integer;
  LN, V1: Double;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  MM := Copy(DateTostr(Dvalue), 4, 2);
  if not QCondpay.Active then
    QCondpay.Open;
  HH := QCondpay.Fieldbyname(HField).Asstring;

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD(SQLTXT);
    Params[0].Asstring := Lc;
    Params[1].Asstring := Y1;
    Params[2].Asstring := MM;
    Open;
  end;
  if not (Query1.Eof and Query1.Bof) and (Query1.Fieldbyname('Maxno').asstring <> '') then
  begin
    PF1 := Copy(Query1.Fieldbyname('Maxno').asstring, 1, 5);
    Max := Strtoint(Copy(Query1.Fieldbyname('Maxno').asstring, 6, 5));
  end
  else
  begin
    PF1 := '';
    Max := 0;
  end;

  with QLocat do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (QLocat.Eof) and (QLocat.Bof) then
      SFmain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := QLocat.FieldByname('SHORTL').Asstring;
  end;

  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CUR_YEAR,CUR_MONTH,HDOC,' + LField + ' FROM TLASTNO ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CUR_YEAR = :CRY ' +
      ' AND CUR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := MM;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
      with QLastno do
      begin
        Insert;
        Fieldbyname('Locat').Asstring := Lc;
        Fieldbyname('Cur_year').Asstring := YY;
        Fieldbyname('Cur_Month').Asstring := MM;
        Fieldbyname('HDOC').Asstring := YY;
        Post;
      end;
  end;

//  PF2 := PF+HH+'-'+Y1+MM;
  PF2 := PF + Y1 + MM;
  if PF1 = PF2 then
  begin
    V1 := Max + 1;
    S2 := FloatTostr(V1);
    LL := length(S2);
    Zero := '';
    for i := 1 to (5 - LL) do
      Zero := Zero + '0';
    Result := PF1 + Zero + S2;
  end
  else
  begin
    V1 := 1;
    S2 := FloatTostr(V1);
    LL := length(S2);
    Zero := '';
    for i := 1 to (5 - LL) do
      Zero := Zero + '0';
    Result := PF2 + Zero + S2;
  end;

  if V1 > QLastNo.Fieldbyname(LField).AsFloat then
  begin
    QLastNo.Edit;
    QLastNo.Fieldbyname(LField).AsFloat := V1;
    QLastNo.Post;
  end;
end;

function TDM_SEC.RunDoc(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, MM, S2, Y1, S3: string;
  i, LL: integer;
  LN, V1: Double;
begin
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  MM := Copy(DateTostr(Dvalue), 4, 2);
  with QCondpay do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT * FROM TLASTNO ');
    Open;
    HH := QCondpay.Fieldbyname(HField).Asstring;
  end;

  with QLocat do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (QLocat.Eof) and (QLocat.Bof) then
      SFmain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := QLocat.FieldByname('SHORTL').Asstring;
  end;

  with Lastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CUR_YEAR,CUR_MONTH,HDOC,' + LField + ' FROM TLASTNO WHERE LOCAT = :LOCAT_A ' +
      ' AND CUR_YEAR = :CRY ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Open;
  end;

  if (LASTNO.Eof) and (LASTNO.Bof) then
  begin
    with Lastno do
    begin
      Insert;
      Fieldbyname('Locat').Asstring := Lc;
      Fieldbyname('CUr_year').Asstring := YY;
      Fieldbyname('CUr_Month').Asstring := MM;
      Fieldbyname('HDOC').Asstring := YY + MM;
      Post;
    end;
  end;
  LN := LastNo.FieldByname(LField).AsFloat;
  V1 := LN + 1;
  S2 := FloatTostr(V1);
  S3 := ZeroLead(S2, 5);
  Result := PF + Y1 + MM + S3;
  if V1 > LastNo.Fieldbyname(LField).AsFloat then
  begin
    LastNo.Edit;
    LastNo.Fieldbyname(LField).AsFloat := V1;
    LastNo.Post;
  end;
end;

function TDM_SEC.RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  Zero: string;
  PF, HH, Lc, YY, MM, S2, Y1, S3: string;
  i, LL: integer;
  LN, V1: Double;
begin
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  MM := Copy(DateTostr(Dvalue), 4, 2);
  with QCondpay do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT * FROM THDDOC ');
    Open;
    HH := QCondpay.Fieldbyname(HField).Asstring;
  end;

  with QLocat do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (QLocat.Eof) and (QLocat.Bof) then
      SFmain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := QLocat.FieldByname('SHORTL').Asstring;
  end;

  with Lastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CUR_YEAR,CUR_MONTH,HDOC,' + LField + ' FROM TLASTNO WHERE LOCAT  = :LOCAT_A ' +
      ' AND CUR_YEAR = :CRY ' +
      ' AND CUR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := MM;
    Open;
  end;

  if (LASTNO.Eof) and (LASTNO.Bof) then
  begin
    with Lastno do
    begin
      Insert;
      Fieldbyname('Locat').Asstring := Lc;
      Fieldbyname('CUr_year').Asstring := YY;
      Fieldbyname('CUr_Month').Asstring := MM;
      Fieldbyname('HDOC').Asstring := YY + MM;
      Post;
    end;
  end;
  LN := LastNo.FieldByname(LField).AsFloat;
  V1 := LN + 1;
  S2 := FloatTostr(V1);
  S3 := ZeroLead(S2, 3);
  Result := PF + HH + Y1 + MM + S3;
  if V1 > LastNo.Fieldbyname(LField).AsFloat then
  begin
    LastNo.Edit;
    LastNo.Fieldbyname(LField).AsFloat := V1;
    LastNo.Post;
  end;
end;

procedure TDM_SEC.EndCode(PASWR, USID, CK: string);
var
  STRT, ORDP, XSTR, asci: string;
  i, j, k, L: integer;
begin
  Xtprd := '';
  asci := CHAR(127);
  USID := TRIM(USID);
  PASWR := TRIM(PASWR);

  L := length(USID);

  STRT := USID;

  k := L;

  for j := 1 to k do
    L := L + (ORD(STRT[j]) * j) + k;

  if CK = '0' then //  เข้ารหัส
  begin
    STRT := PASWR;
    i := length(STRT);
    ORDP := '';
    for j := 1 to i do
      ORDP := ORDP + asci + inttostr(ORD(STRT[j]) + L + j);
    ORDP := ORDP + asci;
    Xtprd := ORDP;
  end
  else if CK = '1' then // ถอดรหัส
  begin
    STRT := PASWR;
    i := length(STRT);
    ORDP := '';
    XSTR := '';
    k := 1;
    for j := 1 to i do
    begin
      if STRT[j] <> asci then
        ORDP := ORDP + STRT[j];
      if (STRT[j] = asci) and (ORDP <> '') then
      begin
        XSTR := XSTR + CHAR(strtoint(ORDP) - (L + k));
        k := k + 1;
        ORDP := '';
      end;
    end;
    Xtprd := XSTR;
  end;
  Xtprd := trim(XTPRD);
end;

procedure TDM_SEC.HI_DBMSAfterCommit(Sender: TObject);
begin
  if HI_DBMS.TxOptions.AutoCommit = False then
    HI_DBMS.TxOptions.AutoCommit := True;
end;

procedure TDM_SEC.HI_DBMSAfterRollback(Sender: TObject);
begin
  if HI_DBMS.TxOptions.AutoCommit = False then
    HI_DBMS.TxOptions.AutoCommit := True;
end;

procedure TDM_SEC.HI_DBMSBeforeStartTransaction(Sender: TObject);
begin
  if HI_DBMS.TxOptions.AutoCommit = True then
    HI_DBMS.TxOptions.AutoCommit := False;
end;

procedure TDM_SEC.HI_DBMSRecover(ASender, AInitiator: TObject;
  AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
var
  iRes: Integer;
begin
  iRes := MessageDlg('Connection is lost. Retry - ok, Fail - Cancel', mtConfirmation, [mbOK, mbCancel], 0); //mbYes
  case iRes of
//    mrYes: AAction := faOfflineAbort;
    mrOk: AAction := faRetry;
    mrCancel: AAction := faFail;
  end;
end;

function TDM_SEC.ZeroLead(St: string; len: integer): string;
var
  Zero, Chr1: string;
  j, ll: integer;
begin
  Chr1 := Trim(St);
  Zero := '';
  ll := length(Chr1);
  if len < ll then
    len := ll;

  for j := 1 to len - ll do
    Zero := Zero + '0';
  Result := Zero + Chr1;
end;

procedure TDM_SEC.qrReportAfterPost(DataSet: TDataSet);
var
  nRepNm, nExtract: string;
begin
  nRepNm := qrReport.FieldByName('FRNAME').AsString;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if qrReport.Active then
      if (qrReport.ApplyUpdates = 0) then
        qrReport.CommitUpdates
      else
        raise Exception.Create(qrReport.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    qrReport.Edit;
    raise;
  end;
  //
  nExtract := ExtractFilePath(Application.ExeName) + nRepNm;
  DeleteFile(nExtract);
end;

end.

