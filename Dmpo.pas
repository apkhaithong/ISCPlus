unit Dmpo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDm_Po = class(TDataModule)
    QLocat: TFDQuery;
    SoLocat: TDataSource;
    QApmast: TFDQuery;
    SoApmast: TDataSource;
    QPoTrn: TFDQuery;
    SoPotrn: TDataSource;
    QInvt: TFDQuery;
    SoInvt: TDataSource;
    Query2: TFDQuery;
    SoQuery2: TDataSource;
    QLastno: TFDQuery;
    Condpay: TFDQuery;
    QPoinv1: TFDQuery;
    SoPoinv1: TDataSource;
    QPoTrnPONO: TStringField;
    QPoTrnPOLOCAT: TStringField;
    QPoTrnPODATE: TDateField;
    QPoTrnORDQTY: TFloatField;
    QPoTrnRECQTY: TFloatField;
    QPoTrnBALANCE: TFloatField;
    QPoTrnNETFL: TStringField;
    QPoTrnORDCOST: TFloatField;
    QPoTrnREDU: TFloatField;
    QPoTrnNETCOST: TFloatField;
    QPoTrnTOTCOST: TFloatField;
    QPoTrnLRECV: TDateField;
    QPoTrnUSERID: TStringField;
    QPoTrnTIME1: TDateTimeField;
    QPoinv1PONO: TStringField;
    QPoinv1POLOCAT: TStringField;
    QPoinv1APCODE: TStringField;
    QPoinv1PODATE: TDateField;
    QPoinv1TRANF: TStringField;
    QPoinv1VAT: TFloatField;
    QPoinv1TOTAL: TFloatField;
    QPoinv1DISCT: TFloatField;
    QPoinv1NETCOST: TFloatField;
    QPoinv1VATAMT: TFloatField;
    QPoinv1TOTCOST: TFloatField;
    QPoinv1OFFICCOD: TStringField;
    SoInventor: TDataSource;
    QPoTrnFLAG: TStringField;
    Soinventor1: TDataSource;
    QPoTrnAPCODE: TStringField;
    Qorder1: TFDQuery;
    Soorder1: TDataSource;
    QTemp: TFDQuery;
    SoQTemp: TDataSource;
    Query1: TFDQuery;
    Query26: TFDQuery;
    Query20: TFDQuery;
    SoQuery1: TDataSource;
    QPoTrnYEAR1: TStringField;
    QPoinv1COSTFLG: TStringField;
    QPoinv1USERID: TStringField;
    QPoinv1TIME1: TDateTimeField;
    QPoinv1CANCELID: TStringField;
    QPoinv1CANDAT: TDateTimeField;
    QPoinv1POSTGLDT: TDateTimeField;
    QPoTrnPARTNO: TStringField;
    DbConfig: TFDQuery;
    QPoinv1Updatestatus: TStringField;
    QPoinv1REFNO: TStringField;
    QPoTrnBO: TStringField;
    QPotype: TFDQuery;
    SoPotype: TDataSource;
    QPoinv1POTYPE: TStringField;
    QPoinv1FLAG: TStringField;
    QPoinv1DISCTYP: TStringField;
    Query3: TFDQuery;
    QPoTrnGROUP1: TStringField;
    QInventor: TFDQuery;
    QInventor1: TFDQuery;
    QPoinv1DUERECV: TDateField;
    QPoinv1CHCODE: TStringField;
    QPoinv1CHRATE: TFloatField;
    QPoinv1DUEDATE: TDateField;
    QPoinv1TPCODE: TStringField;
    QPoinv1RLCODE: TStringField;
    QPoinv1MEMO1: TMemoField;
    QPoinv1CREDTM: TFloatField;
    QPoinv1PRCFLG: TStringField;
    procedure QPoTrnNewRecord(DataSet: TDataSet);
    procedure QPoinv1AfterPost(DataSet: TDataSet);
    procedure QPoinv1BeforeDelete(DataSet: TDataSet);
    procedure QPoTrnAfterPost(DataSet: TDataSet);
    procedure QPoinv1POLOCATValidate(Sender: TField);
    procedure QPoinv1APCODEValidate(Sender: TField);
    procedure QPoinv1AfterCancel(DataSet: TDataSet);
    procedure QPoTrnAfterOpen(DataSet: TDataSet);
    procedure QPoinv1NewRecord(DataSet: TDataSet);
    procedure QPoTrnBeforePost(DataSet: TDataSet);
    procedure QPoinv1AfterInsert(DataSet: TDataSet);
    procedure QPoinv1BeforePost(DataSet: TDataSet);
    procedure QPoinv1CalcFields(DataSet: TDataSet);
    procedure QPoinv1POTYPEValidate(Sender: TField);
    procedure QPoTrnBeforeClose(DataSet: TDataSet);
    procedure QPoinv1CREDTMValidate(Sender: TField);
    procedure QPoinv1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
    procedure SmPoTot;
    procedure CheckEditRight(XSource: TDataSource);
  public
    { Public declarations }
    XSchema: string;
    Val: Integer;
    function RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function MaxNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function MaxNo1(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function ZeroLead(St: string; len: integer): string;
    procedure CloseAll;
  end;

var
  Dm_Po: TDm_Po;
  PF: string;
  HF, LF, LV, KV: string;
  DV: TdateTime;
  Smtot: Double;
  Duplicate: Boolean;

implementation

uses
  USoftFirm, Dmsec;

{$R *.DFM}
function TDm_Po.MAXNo1(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, dd, S2, S3, Y1, PF1, PF2: string;
  LN, V1: Double;
  Max: integer;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if not CondPay.Active then
    CondPay.Open;
  HH := HField; //CondPay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);
  dd := Copy(DateTostr(Dvalue), 1, 2);

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

  if Query1.Fieldbyname('Maxno').asstring <> '' then
  begin
    PF1 := Copy(Query1.Fieldbyname('Maxno').asstring, 1, 8);
    Max := Strtoint(Copy(Query1.Fieldbyname('Maxno').asstring, 9, 4));
  end
  else
  begin
    PF1 := '';
    Max := 1;
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
      SFmain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;
    {Query Lastno Table}

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
end;

function TDM_PO.MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1, PF1, PF2: string;
  LN, V1: Double;
  Max: integer;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if not CondPay.Active then
    CondPay.Open;
  HH := CondPay.Fieldbyname(HField).Asstring;
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
  PF1 := Copy(Query1.Fieldbyname('Maxno').asstring, 1, 8);
  Max := Strtoint(Copy(Query1.Fieldbyname('Maxno').asstring, 9, 4));

    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFmain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;
    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM SLASTNO ' +
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
end;

function TDM_PO.RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1: string;
  LN, V1: Double;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if not CondPay.Active then
    CondPay.Open;
  HH := CondPay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);
  {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFmain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;
    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM SLASTNO ' +
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
end;

function TDM_PO.ZeroLead(St: string; len: integer): string;
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

procedure TDm_Po.CheckEditRight(XSource: TDataSource);
begin
  if SFMain.Xlevel > '1' then
    if (XSource.State in DsEditmodes) and (not SFMain.Edit_right) then
    begin
      XSource.dataset.Cancel;
      MessageDlg('ไม่มีสิทธิ์ในการแก้ไขข้อมูล', mtWarning, [mbok], 0);
    end;
end;

procedure TDm_Po.SmPotot;
begin
  smtot := 0;
  QPoTrn.Disablecontrols;
  QPoTrn.First;
  while not QPoTrn.eof do
  begin
    Smtot := Smtot + QPoTrnTOTCOST.Asfloat;
    QPoTrn.Next;
  end;
  QPoTrn.Enablecontrols;
  if QPoinv1.State = Dsbrowse then
    QPoinv1.Edit;
  QPoinv1NETCOST.Asfloat := Smtot;
  QPoinv1VATAMT.Asfloat := Smtot * QPoinv1VAT.Asfloat / 100;
  QPoinv1TOTCOST.Asfloat := Smtot + QPoinv1VATAMT.Asfloat;
end;

procedure TDm_Po.QPoTrnNewRecord(DataSet: TDataSet);
begin
  QPotrnPONO.Asstring := QPoinv1PONO.Asstring;
  QPoTrnPODATE.AsdateTime := QPoinv1PODATE.Asdatetime;
  QPoTrnPOLOCAT.Asstring := QPoinv1POLOCAT.Asstring;
  QPoTrnAPCODE.Asstring := QPoinv1APCODE.Asstring;
  QPoTrnRECQTY.AsFloat := 0;
  QPoTrnBO.Asstring := 'N';
  QPoTrnUSERID.Asstring := SFMain.Xuser_id;
  QPoTrnTIME1.Asdatetime := Now;
end;

procedure TDm_Po.QPoinv1AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  {Apply CachedUpdate}
  S := Dm_PO.QPoinv1.FieldByName('PONO').Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if Dm_PO.QPoinv1.Active then
      if (Dm_PO.QPoinv1.ApplyUpdates = 0) then
        Dm_PO.QPoinv1.CommitUpdates
      else
        raise Exception.Create(Dm_PO.QPoinv1.RowError.Message);
    if Dm_PO.QPoTrn.Active then
      if (Dm_PO.QPoTrn.ApplyUpdates = 0) then
        Dm_PO.QPoTrn.CommitUpdates
      else
        raise Exception.Create(Dm_PO.QPoTrn.RowError.Message);
    if Dm_PO.QPOTYPE.Active then
      if (Dm_PO.QPOTYPE.ApplyUpdates = 0) then
        Dm_PO.QPOTYPE.CommitUpdates
      else
        raise Exception.Create(Dm_PO.QPOTYPE.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    Dm_PO.QPoinv1.Edit;
    raise;
  end;
  //
  with Dm_Po.QPoinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PO_INVOI WHERE PONO =:EDIT1');
    Params[0].asstring := S;
    Open;
  end;
  with Dm_Po.QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PO_TRANS WHERE PONO =:EDIT1');
    Params[0].asstring := S;
    Open;
  end;
end;

procedure TDm_Po.QPoinv1BeforeDelete(DataSet: TDataSet);
begin
  QPoTrn.BeforePost := Nil;
  QPoTrn.AfterPost := Nil;
  QPoTrn.Afterdelete := Nil;

  Dm_Po.QPotrn.First;
  while not (Dm_Po.QPotrn.EoF) do
    Dm_Po.QPotrn.Delete;

  QPoTrn.AfterPost := QPoTrnAfterPost;
  QPoTrn.BeforePost := QPoTrnBeforePost;
  QPoTrn.Afterdelete := QPoTrnAfterPost;
  ;
end;

procedure TDm_Po.QPoTrnAfterPost(DataSet: TDataSet);
var
  Tot1, Tot2, Itm, XBFVAT, XVATAMT: Double;
  bk: Tbookmark;
begin
  smtot := 0;
  QPoTrn.Disablecontrols;
  bk := QPoTrn.GetBookmark;
  QPoTrn.First;
  while not QPoTrn.eof do
  begin
    Smtot := Smtot + QPoTrnTOTCOST.Asfloat;
    QPoTrn.Next;
  end;
  QPoTrn.Enablecontrols;
  QPoTrn.GotoBookmark(bk);
  QPoTrn.FreeBookmark(bk);
  if QPoinv1.State = Dsbrowse then
    QPoinv1.Edit;
  QPoinv1NETCOST.Asfloat := Smtot;
  QPoinv1VATAMT.Asfloat := Smtot * QPoinv1VAT.Asfloat / 100;
  QPoinv1TOTCOST.Asfloat := Smtot + QPoinv1VATAMT.Asfloat;
end;

procedure TDm_Po.QPoinv1POLOCATValidate(Sender: TField);
begin
  with Dm_Po.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD =:XLOCATCOD');
    Params[0].asstring := QPoinv1POLOCAT.Value;
    Open;
    if Dm_Po.Query2.Bof and Dm_Po.Query2.Eof then
      SFmain.RaiseException('ไม่พบรหัสสาขานี้');
  end;
end;

procedure TDm_Po.QPoinv1APCODEValidate(Sender: TField);
begin
  with Dm_Po.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APMAST WHERE APCODE =:XAPCODE ');
    PARAMS[0].ASSTRING := QPoinv1APCODE.Asstring;
    OPEN;
    if Dm_Po.Query1.Bof and Dm_Po.Query1.Eof then
      SFmain.RaiseException('ไม่พบรหัสเจ้าหนี้');
  end;
  Dm_Po.QPoinv1.FieldByName('Disct').AsFloat := Dm_Po.Query1.FieldByName('DISCT').AsFloat;
  Dm_Po.QPoinv1.FieldByName('CREDTM').AsFloat := Dm_Po.Query1.FieldByName('CREDTM').AsFloat;
end;

procedure TDm_Po.QPoinv1AfterCancel(DataSet: TDataSet);
begin
  if Dm_Po.QPoinv1.Active then
    Dm_Po.QPoinv1.CancelUpdates;
  if Dm_Po.QPoTrn.Active then
    Dm_Po.QPoTrn.CancelUpdates;
  if Dm_PO.QPOTYPE.Active then
    Dm_PO.QPOTYPE.CancelUpdates;
end;

procedure TDm_Po.QPoTrnAfterOpen(DataSet: TDataSet);
begin
  with QInventor do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT DESC1 FROM INVENTOR WHERE PARTNO=:PARTNO AND LOCAT=:POLOCAT');
    open;
  end;
end;

procedure TDm_Po.QPoinv1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;

  QPoinv1VAT.Asfloat := Condpay.Fieldbyname('Vatrt').Asfloat;
  QPoinv1USERID.Asstring := SFMain.Xuser_id;
  QPoinv1TIME1.Asdatetime := Now;
  QPoinv1POLOCAT.Asstring := SFMain.Xlocat;
  QPoinv1TRANF.Asstring := 'M';
  QPoinv1PODATE.Asdatetime := Now;
  QPoinv1PRCFLG.Asstring := 'F';
  if Condpay.Fieldbyname('POCOST').Asstring = 'Y' then
    QPoinv1COSTFLG.Asstring := '2'
  else
    QPoinv1COSTFLG.Asstring := '1';
  if Condpay.Fieldbyname('PODISC').Asstring = 'Y' then
    QPoinv1DISCTYP.Asstring := '3'
  else
    QPoinv1DISCTYP.Asstring := '1';
end;

procedure TDm_Po.QPoTrnBeforePost(DataSet: TDataSet);
var
  Present: TDateTime;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  Qn, cc: integer;
begin
  if Dm_Po.QPotrnOrdQty.AsFloat = 0 then
    SFmain.RaiseException('ยอดสั่งซื้อเป็น 0');
  //
  if (Qtemp.Active) then
  begin
    cc := 0;
    Qtemp.First;
    while not (Qtemp.Eof) do
    begin
      if Qtemp.FieldByName('PARTNO').AsString = QPoTrn.FieldByName('PARTNO').AsString then
      begin
        cc := 1;
        SFmain.RaiseException('          รหัสสินค้า ' + QPoTrn.FieldByName('PARTNO').AsString + ' ซ้ำ' +
          #13 + 'ถ้าต้องการแก้ไขให้ลบรหัสสินค้าแล้วเพิ่มใหม่');
      end
      else
        cc := 0;
      Qtemp.Next;
    end;
    val := cc;

    if cc = 0 then
    begin
      Qtemp.Append;
      Qtemp.FieldByName('PARTNO').AsString := QPoTrn.FieldByName('PARTNO').AsString;
    end;
  end;
  //

  Present := QPoinv1PODATE.Asdatetime;
  DecodeDate(Present, Year, Month, Day);
  QPotrnYEAR1.Asstring := FloatTostr(Year);
  //
end;

procedure TDm_Po.QPoinv1AfterInsert(DataSet: TDataSet);
begin
  with Dm_Po.QPoTrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PO_TRANS WHERE PONO =:EDIT1');
    Params[0].asstring := '';
    Open;
  end;

  with Dm_Po.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  PARTNO  FROM PO_TRANS WHERE  PONO =:0 ');
    Params[0].asstring := '';
    open;
  end;
end;

procedure TDm_Po.QPoinv1BeforePost(DataSet: TDataSet);
begin
  if QPoinv1PONO.Asstring = '' then
    SFmain.RaiseException('กรุณาใส่เลขที่ใบสั่งซื้อก่อนบันทึก!');
  if QPoinv1Apcode.Asstring = '' then
    SFmain.RaiseException('กรุณาใส่เจ้าหนี้ก่อนบันทึก!');
  //
  Dm_Po.QPotrn.DisableControls;
  Dm_Po.QPotrn.First;
  while not (Dm_Po.QPotrn.EoF) do
  begin
    if Dm_Po.QPoTrn.FieldByName('PARTNO').Asstring = '' then
      Dm_Po.QPotrn.Delete;
    Dm_Po.QPotrn.Next;
  end;
  Dm_Po.QPotrn.EnableControls;

  if Dm_Po.QPotrn.Bof and Dm_Po.QPotrn.Eof then
    SFmain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  //
  if QPoinv1Updatestatus.Value = 'Inserted' then
  begin
    // Rerun
    if not DbConfig.Active then
      DbConfig.Open;
    if DbConfig.Fieldbyname('H_PO').asstring = 'Y' then
    begin
      if Duplicate then
        QPoinv1POTYPEValidate(QPoinv1POTYPE);
      //
      QPoTrn.AfterPost := Nil;
      QPoTrn.BeforePost := Nil;

      QPoTrn.DisableControls;
      QPoTrn.First;
      while not QPoTrn.Eof do
      begin
        QPoTrn.Edit;
        QPoTrnPONO.Asstring := QPoinv1PONO.Asstring;
        QPoTrn.Next;
      end;
      QPoTrn.EnableControls;
      QPoTrn.AfterPost := QPoTrnAfterPost;
      QPoTrn.BeforePost := QPoTrnBeforePost;
    end;
  end
  else if QPoinv1.State = DsEdit then
  begin
    Dm_Po.QPotrn.DisableControls;
    QPoTrn.AfterPost := Nil;
    QPoTrn.BeforePost := Nil;

    QPoTrn.First;
    while not QPoTrn.Eof do
    begin
      QPoTrn.Edit;
      QPoTrnAPCODE.Asstring := QPoinv1APCODE.Asstring;
      QPoTrnPONO.Asstring := QPoinv1PONO.Asstring;
      QPoTrnPOLOCAT.Asstring := QPoinv1POLOCAT.Asstring;
      QPoTrnPODATE.Asdatetime := QPoinv1PODATE.Asdatetime;
      QPoTrn.Next;
    end;
    QPoTrn.AfterPost := QPoTrnAfterPost;
    QPoTrn.BeforePost := QPoTrnBeforePost;
    Dm_Po.QPotrn.EnableControls;
  end;
end;

procedure TDm_Po.CloseAll;
var
  N: Word;
begin
  for N := 0 to ComponentCount - 1 do
  begin
    if (Components[N] is TFDQuery) then
      TFDQuery(Components[N]).Active := False
    else if (Components[N] is TFDTable) then
      TFDTable(Components[N]).Active := False;
  end;
  Condpay.Open;
end;

procedure TDm_Po.QPoinv1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QPoinv1.CachedUpdates then
    QPoinv1Updatestatus.Value := UpdateStatusStr[QPoinv1.UpdateStatus];
end;

procedure TDm_Po.QPoinv1POTYPEValidate(Sender: TField);
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1, sqltxt: string;
  LN, V1: Double;
begin
  if not DbConfig.Active then
    DbConfig.Open;
  if DbConfig.Fieldbyname('H_PO').asstring = 'Y' then
  begin
    if QPoinv1Updatestatus.Value = 'Inserted' then
    begin
      DV := QPoinv1.Fieldbyname('PODATE').asDatetime;
      HH := QPOTYPE.Fieldbyname('POCODE').Asstring;
      Lc := QPoinv1.Fieldbyname('POLOCAT').asstring;
      LF := HH;

      sqltxt := 'SELECT MAX(PONO) AS MAXNO FROM PO_INVOI WHERE POLOCAT=:0 AND ' +
        'SUBSTR(PONO,2,2)=:1 AND SUBSTR(PONO,4,2)=:2 AND SUBSTR(PONO,6,2)=:3';

      if Duplicate then
        QPoinv1PONO.Asstring := Maxno(HH, LF, Lc, sqltxt, DV)
      else
      begin
        if not CondPay.Active then
          CondPay.Open;
        YY := Copy(DateTostr(DV), 7, 4);
        Y1 := Copy(YY, 3, 2);
        Mm := Copy(DateTostr(DV), 4, 2);
        {}
        with Query1 do
        begin
          Close;
          SQL.Clear;
          SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
          Params[0].Asstring := Lc;
          Open;
          if (Query1.Eof) and (Query1.Bof) then
            SFmain.RaiseException('ไม่พบรหัสสาขา')
          else
            PF := Query1.FieldByname('SHORTL').Asstring;
        end;

        with QPOTYPE do
        begin
          Close;
          SQL.Clear;
          SQL.ADD('SELECT * FROM POTYPE WHERE POCODE  = :EDIT1 ');
          Params[0].Asstring := HH;
          Open;
          if not (QPOTYPE.Eof and QPOTYPE.Bof) then
          begin
            LN := QPOTYPE.FieldByname('LASTPO').AsFloat;
            if LN = 999 then
            begin
              QPOTYPE.Edit;
              QPOTYPE.Fieldbyname('LASTPO').AsFloat := 0;
              QPOTYPE.Post;
              LN := 0;
            end;
            V1 := LN + 1;
            S2 := FloatTostr(V1);
            S3 := ZeroLead(S2, 3);
            QPoinv1PONO.Asstring := PF + HH + Y1 + Mm + S3;
            {Update Lastno}
            if V1 > QPOTYPE.Fieldbyname('LASTPO').AsFloat then
            begin
              QPOTYPE.Edit;
              QPOTYPE.Fieldbyname('LASTPO').AsFloat := V1;
              QPOTYPE.Post;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TDm_Po.QPoinv1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Po.QPoTrnBeforeClose(DataSet: TDataSet);
begin
  QInventor.Close;
end;

procedure TDm_Po.QPoinv1CREDTMValidate(Sender: TField);
begin
  QPoinv1DUEDATE.AsDateTime := QPoinv1PODATE.Asdatetime + QPoinv1CREDTM.Asfloat;
end;

end.

