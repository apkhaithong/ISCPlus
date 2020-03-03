unit Dm1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  n2wMoney, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TActionType = (actOpen, actExecSql, actInsert);

  TDM01 = class(TDataModule)
    QMenutrn: TFDQuery;
    Query1: TFDQuery;
    QCondpay: TFDQuery;
    SoCondpay: TDataSource;
    QLastno: TFDQuery;
    QDbconfig: TFDQuery;
    Query2: TFDQuery;
    Query3: TFDQuery;
    qrHDRun: TFDQuery;
    qrReport: TFDQuery;
    DataSource1: TDataSource;
    procedure qrReportAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    mStream: TMemoryStream;
    XuserID, XSchema, Tyear, Xtprd, Decode: string;
    procedure SetUserID(NewUserid: string);
    function ChkDupRun(HField, LField, Lvalue: string): string;
    function Findexist(FTable, FField, FValue: string): string;
    function FindShowDesc(FTable, SField, FField, FValue: string): string;
    function FindNoExist(FTable, FField, FValue: string): string;
    function RunNo01(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function RunDocNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function RunNoReg(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function MaxNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function MAXNo1(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function MAXNo2(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function MAXNO3(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function ZeroLead(St: string; len: integer): string;
    procedure Do_With_Query(ActionType: TActionType; QueryName: TFDQuery; sqlText: string; const parName: array of const);
    procedure Do_With_Query_No_params(ActionType: TActionType; QueryName: TFDQuery; sqlText: string);
    function Do_Show_frReports(FReport: string): string;
    function Do_Call_Reports(FTable, FField, FValue: string): string;
  end;

var
  DM01: TDM01;

implementation

uses
  uSoftfirm, unfrPreview, DmSec;

{$R *.DFM}

function TDM01.Do_Call_Reports(FTable, FField, FValue: string): string;
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
    sql.Add('SELECT * FROM ' + VTable + ' WHERE ' + VField + '=:0');
    params[0].AsString := VValue;
    open;
  end;
  Result := VTable + '' + VValue;
end;

function TDM01.Do_Show_frReports(FReport: string): string;
var
  VTable, VField, VValue: string;
begin
  Do_Call_Reports('SVSLFRREPORTS', 'FRNAME', FReport);
  mStream := TMemoryStream.Create;
  mStream.LoadFromStream(qrReport.CreateBlobStream(qrReport.FieldByName('PATHFR'), bmRead));
end;

procedure TDM01.Do_With_Query_No_params(ActionType: TActionType; QueryName: TFDQuery; sqlText: string);
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

procedure TDM01.Do_With_Query(ActionType: TActionType; QueryName: TFDQuery; sqlText: string; const parName: array of const);
var
  i: Integer;
  sParamName: string;
begin
  with QueryName do
  begin
    Close;
    SQL.Clear;
    sql.Add(sqlText);
    for i := 0 to QueryName.Params.Count - 1 do
    begin
      if i <= High(parName) then
      begin
        with parName[i] do
        begin
          sParamName := Params.Items[i].Name;
          case VType of
            vtInteger:
              Params.ParamByName(sParamName).Value := VInteger;
            vtBoolean:
              Params.ParamByName(sParamName).Value := VBoolean;
            vtChar:
              Params.ParamByName(sParamName).Value := VChar;
            vtExtended:
              begin
                if (Pos('DATE', Uppercase((sParamName))) > 0) then
                begin
                  Params.ParamByName(sParamName).DataType := ftDateTime;
                  Params.ParamByName(sParamName).Value := VExtended^
                end
                else
                begin
                  Params.ParamByName(sParamName).DataType := ftFloat;
                  Params.ParamByName(sParamName).Value := VExtended^
                end;
              end;
            vtString:
              Params.ParamByName(sParamName).Value := TrimRight(VString^);
            vtPChar:
              Params.ParamByName(sParamName).Value := VPChar^;
            vtObject:
              Params.ParamByName(sParamName).LoadFromStream(VObject as TMemoryStream, ftBlob);
            vtClass:
              Params.ParamByName(sParamName).Value := VClass.ClassName;
            vtAnsiString:
              Params.ParamByName(sParamName).Value := TrimRight(string(VAnsiString));
            vtCurrency:
              Params.ParamByName(sParamName).Value := VCurrency^;
            vtVariant:
              Params.ParamByName(sParamName).Value := VVariant^;
            vtInt64:
              Params.ParamByName(sParamName).Value := VInt64^;
          end;
        end;
      end;
    end;
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

function TDM01.Findexist(FTable, FField, FValue: string): string;
var
  VTable, VField, VValue: string;
begin
  VTable := FTable;
  VField := FField;
  VValue := FValue;
  with Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select ' + VField + ' from ' + VTable + ' where ' + VField + '=:0 ');
    params[0].AsString := VValue;
    Open;
    if not (Eof and Bof) then
      SFMain.RaiseException('รหัส : ' + VValue + ' ถูกบันทึกใน Table ' + VTable + ' กรุณาตรวจสอบ...!');
  end;
  Result := VTable + ' ' + VValue;
end;

function TDM01.FindShowDesc(FTable, SField, FField, FValue: string): string;
var
  VTable, VField, VSField, VValue, SDesc: string;
begin
  VTable := FTable;
  VField := FField;
  VSField := SField;
  VValue := FValue;
  with Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select ' + VSField + ' from ' + VTable + ' where ' + VField + '=:0 ');
    params[0].AsString := VValue;
    Open;
  end;
  SDesc := Query1.fieldbyname(VSField).AsString;
  Result := SDesc;
end;

function TDM01.FindNoExist(FTable, FField, FValue: string): string;
var
  VTable, VField, VValue: string;
begin
  VTable := FTable;
  VField := FField;
  VValue := FValue;
  with Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select ' + VField + ' from ' + VTable + ' where ' + VField + '=:0 ');
    params[0].AsString := VValue;
    Open;
    if (Eof and Bof) then
      SFMain.RaiseException('รหัส : ' + VValue + ' ยังไม่บันทึกใน Table ' + VTable + ' กรุณาตรวจสอบ...!');
  end;
  Result := VTable + ' ' + VValue;
end;

function TDM01.ZeroLead(St: string; len: integer): string;
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

function TDm01.ChkDupRun(HField, LField, Lvalue: string): string;
var
  PF, HH, Lc: string;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if not QCondPay.Active then
    QCondPay.Open;
  HH := QCondPay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;

    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT SHORTL FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา ' + Lc + ' ตรวจสอบ รหัสผ่าน ช่องประจำสาขา ')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;
  Result := PF + HH;

  if Tyear = 'Y' then
    FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
end;

function TDm01.RunDocNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, MM, DD, S2, S3, Y1: string;
  LN, V1: Double;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/eeee';
  if not QCondPay.Active then
    QCondPay.Open;
  HH := QCondPay.Fieldbyname(HField).Asstring;
  DD := Copy(DateTostr(Dvalue), 1, 2);
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  MM := Copy(DateTostr(Dvalue), 4, 2);

    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT SHORTL FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา ' + Lc + ' ตรวจสอบ รหัสผ่าน ช่องประจำสาขา ')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;
    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM LASTNO ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CR_YEAR = :CRY ' +
      ' AND CR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := MM + DD;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
    begin
      QLastNo.Insert;
      QLastNo.Fieldbyname('Locat').Asstring := Lc;
      QLastNo.Fieldbyname('Cr_year').Asstring := YY;
      QLastNo.Fieldbyname('Cr_Month').Asstring := MM + DD;
      QLastNo.Post;
    end;
    LN := QLastNo.FieldByname(LField).AsFloat;
    V1 := LN + 1;
    S2 := FloatTostr(V1);
    S3 := ZeroLead(S2, 3);
    Result := PF + HH + '-' + Y1 + MM + DD + S3;
      {Update Lastno}
    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
      QLastNo.Post;
    end;
  end;
  if Tyear = 'Y' then
    FormatSettings.ShortDateFormat := 'dd/mm/eeee';
end;

function TDm01.RunNo01(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1: string;
  LN, V1: Double;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if not QCondPay.Active then
    QCondPay.Open;
  HH := QCondPay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);

    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT SHORTL FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา ' + Lc + ' ตรวจสอบ รหัสผ่าน ช่องประจำสาขา ')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;
    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM LASTNO ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CR_YEAR = :CRY ' +
      ' AND CR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := Mm;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
    begin
      QLastNo.Insert;
      QLastNo.Fieldbyname('Locat').Asstring := Lc;
      QLastNo.Fieldbyname('Cr_year').Asstring := YY;
      QLastNo.Fieldbyname('Cr_Month').Asstring := Mm;
      QLastNo.Post;
    end;
    LN := QLastNo.FieldByname(LField).AsFloat;
    V1 := LN + 1;
    S2 := FloatTostr(V1);
    S3 := ZeroLead(S2, 4);
    Result := PF + HH + '-' + Y1 + Mm + S3;
      {Update Lastno}
    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
      QLastNo.Post;
    end;
  end;
 {   If Tyear='Y' Then
    FormatSettings.ShortDateFormat :='dd/mm/eeee' ;  }
end;

function TDm01.RunNoReg(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1: string;
  LN, V1: Double;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if not qrHDRun.Active then
    qrHDRun.Open;
  HH := qrHDRun.Fieldbyname(HField).Asstring;
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);

    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT SHORTL FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา ' + Lc + ' ตรวจสอบ รหัสผ่าน ช่องประจำสาขา ')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;
    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM TB_LASTNO ' +
      'WHERE LOCAT  =:LOCAT_A ' +
      'AND CR_YEAR  =:CRY ' +
      'AND CR_MONTH =:CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := Mm;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
    begin
      QLastNo.Insert;
      QLastNo.Fieldbyname('Locat').Asstring := Lc;
      QLastNo.Fieldbyname('Cr_year').Asstring := YY;
      QLastNo.Fieldbyname('Cr_Month').Asstring := Mm;
      QLastNo.Post;
    end;
    LN := QLastNo.FieldByname(LField).AsFloat;
    V1 := LN + 1;
    S2 := FloatTostr(V1);
    S3 := ZeroLead(S2, 4);
    Result := PF + HH + '-' + Y1 + Mm + S3;
      {Update Lastno}
    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
      QLastNo.Post;
    end;
  end;
end;

function TDm01.MaxNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1, PF1, PF2: string;
  LN, V1: Double;
  Max: integer;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if not QCondPay.Active then
    QCondPay.Open;
  HH := QCondPay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD(SQLTXT);
    Params[0].Asstring := Lc;
    Params[1].Asstring := HH;
    Params[2].Asstring := Y1;
    Params[3].Asstring := Mm;
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

    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;
    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM LASTNO ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CR_YEAR = :CRY ' +
      ' AND CR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := Mm;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
    begin
      QLastNo.Insert;
      QLastNo.Fieldbyname('Locat').Asstring := Lc;
      QLastNo.Fieldbyname('Cr_year').Asstring := YY;
      QLastNo.Fieldbyname('Cr_Month').Asstring := Mm;
      QLastNo.Post;
    end;

    PF2 := PF + HH + '-' + Y1 + Mm;
    if PF1 = PF2 then
    begin
      V1 := Max + 1;
      S2 := FloatTostr(V1);
      S3 := ZeroLead(S2, 4);
      Result := PF1 + S3;
    end
    else
    begin
      V1 := 1;
      S2 := FloatTostr(V1);
      S3 := ZeroLead(S2, 4);
      Result := PF2 + S3;
    end;
      {Update Lastno}
    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
      QLastNo.Post;
    end;
  end;
  if Tyear = 'Y' then
    FormatSettings.ShortDateFormat := 'dd/mm/eeee';
end;

function TDm01.MaxNo1(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1, PF1, PF2: string;
  LN, V1: Double;
  Max: integer;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if not QCondPay.Active then
    QCondPay.Open;
  HH := QCondPay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD(SQLTXT);
    Params[0].Asstring := Lc;
    Params[1].Asstring := HH;
    Params[2].Asstring := Y1;
    Params[3].Asstring := Mm;
    Open;
  end;
  if not (Query1.Eof and Query1.Bof) and (Query1.Fieldbyname('Maxno').asstring <> '') then
  begin
    PF1 := Copy(Query1.Fieldbyname('Maxno').asstring, 1, 7);
    Max := Strtoint(Copy(Query1.Fieldbyname('Maxno').asstring, 8, 4));
  end
  else
  begin
    PF1 := '';
    Max := 0;
  end;

    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;

    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM LASTNO ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CR_YEAR = :CRY ' +
      ' AND CR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := Mm;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
    begin
      QLastNo.Insert;
      QLastNo.Fieldbyname('Locat').Asstring := Lc;
      QLastNo.Fieldbyname('Cr_year').Asstring := YY;
      QLastNo.Fieldbyname('Cr_Month').Asstring := Mm;
      QLastNo.Post;
    end;

    PF2 := PF + HH + '-' + Y1 + Mm;
    if PF1 = PF2 then
    begin
      V1 := Max + 1;
      S2 := FloatTostr(V1);
      S3 := ZeroLead(S2, 4);
      Result := PF1 + S3;
    end
    else
    begin
      V1 := 1;
      S2 := FloatTostr(V1);
      S3 := ZeroLead(S2, 4);
      Result := PF2 + S3;
    end;
      {Update Lastno}
    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
      QLastNo.Post;
    end;
  end;
  if Tyear = 'Y' then
    FormatSettings.ShortDateFormat := 'dd/mm/eeee';
end;

function TDm01.MaxNo2(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, MM, DD, S2, S3, Y1, PF1, PF2: string;
  LN, V1: Double;
  Max: integer;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/eeee';
  if not QCondPay.Active then
    QCondPay.Open;
  HH := QCondPay.Fieldbyname(HField).Asstring;
  DD := Copy(DateTostr(Dvalue), 1, 2);
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  MM := Copy(DateTostr(Dvalue), 4, 2);

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
    PF1 := Copy(Query1.Fieldbyname('Maxno').asstring, 1, 7);
    Max := Strtoint(Copy(Query1.Fieldbyname('Maxno').asstring, 8, 4));
  end
  else
  begin
    PF1 := '';
    Max := 0;
  end;

    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;

    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM LASTNO ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CR_YEAR = :CRY ' +
      ' AND CR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := MM + DD;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
    begin
      QLastNo.Insert;
      QLastNo.Fieldbyname('Locat').Asstring := Lc;
      QLastNo.Fieldbyname('Cr_year').Asstring := YY;
      QLastNo.Fieldbyname('Cr_Month').Asstring := MM + DD;
      QLastNo.Post;
    end;

    PF2 := PF + HH + '-' + Y1 + MM + DD;
    if PF1 = PF2 then
    begin
      V1 := Max + 1;
      S2 := FloatTostr(V1);
      S3 := ZeroLead(S2, 3);
      Result := PF1 + S3;
    end
    else
    begin
      V1 := 1;
      S2 := FloatTostr(V1);
      S3 := ZeroLead(S2, 3);
      Result := PF2 + S3;
    end;
      {Update Lastno}
    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
      QLastNo.Post;
    end;
  end;
  if Tyear = 'Y' then
    FormatSettings.ShortDateFormat := 'dd/mm/eeee';
end;

function TDm01.MaxNo3(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, DD, S2, S3, Y1, PF1, PF2: string;
  LN, V1: Double;
  Max: integer;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/eeee';
  if not QCondPay.Active then
    QCondPay.Open;
  HH := QCondPay.Fieldbyname(HField).Asstring;
  DD := Copy(DateTostr(Dvalue), 1, 2);
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD(SQLTXT);
    Params[0].Asstring := Lc;
    Params[1].Asstring := HH;
    Params[2].Asstring := Y1;
    Params[3].Asstring := Mm;
    Open;
  end;
  if not (Query1.Eof and Query1.Bof) and (Query1.Fieldbyname('Maxno').asstring <> '') then
  begin
    PF1 := Copy(Query1.Fieldbyname('Maxno').asstring, 1, 7);
    Max := Strtoint(Copy(Query1.Fieldbyname('Maxno').asstring, 8, 4));
  end
  else
  begin
    PF1 := '';
    Max := 0;
  end;

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;

  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM LASTNO ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CR_YEAR = :CRY ' +
      ' AND CR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := Mm + DD;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
    begin
      QLastNo.Insert;
      QLastNo.Fieldbyname('Locat').Asstring := Lc;
      QLastNo.Fieldbyname('Cr_year').Asstring := YY;
      QLastNo.Fieldbyname('Cr_Month').Asstring := Mm + DD;
      QLastNo.Post;
    end;

    PF2 := PF + HH + '-' + Y1 + Mm + DD;
    if PF1 = PF2 then
    begin
      V1 := Max + 1;
      S2 := FloatTostr(V1);
      S3 := ZeroLead(S2, 3);
      Result := PF1 + S3;
    end
    else
    begin
      V1 := 1;
      S2 := FloatTostr(V1);
      S3 := ZeroLead(S2, 3);
      Result := PF2 + S3;
    end;

    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
      QLastNo.Post;
    end;
  end;
  if Tyear = 'Y' then
    FormatSettings.ShortDateFormat := 'dd/mm/eeee';
end;

procedure TDm01.SetUserId(NewUserId: string);
begin
  XUserID := NewUserId;
end;

procedure TDM01.qrReportAfterPost(DataSet: TDataSet);
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

