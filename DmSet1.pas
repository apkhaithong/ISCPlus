unit DmSet1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDm_set1 = class(TDataModule)
    SoOfficer: TDataSource;
    SoTypemst: TDataSource;
    SoGroup: TDataSource;
    SoCatalog: TDataSource;
    SoBkmast: TDataSource;
    SoDbconfig: TDataSource;
    SoInventor: TDataSource;
    DataSource1: TDataSource;
    TmpQuery: TFDQuery;
    QGroup: TFDQuery;
    Condpay: TFDTable;
    Query1: TFDQuery;
    Query2: TFDQuery;
    Query3: TFDQuery;
    QOfficer: TFDQuery;
    QCatalog: TFDQuery;
    Query4: TFDQuery;
    QTypemst: TFDQuery;
    Qinventor: TFDQuery;
    QinventorPARTNO: TStringField;
    QinventorLOCAT: TStringField;
    QinventorYEAR1: TStringField;
    QinventorDESC1: TStringField;
    QinventorGROUP1: TStringField;
    QinventorTYPE: TStringField;
    QinventorMODEL: TStringField;
    QinventorUNIT: TStringField;
    QinventorVATCAL: TStringField;
    QinventorCOST: TCurrencyField;
    QinventorSTDBUY: TCurrencyField;
    QinventorLSTBUY: TCurrencyField;
    QinventorLSTBDATE: TDateField;
    QinventorPRICE1: TCurrencyField;
    QinventorPRICE2: TCurrencyField;
    QinventorPRICE3: TCurrencyField;
    QinventorPRICE4: TCurrencyField;
    QinventorSHELF: TStringField;
    QinventorMOVDATE: TDateField;
    QinventorCREATDAT: TDateField;
    QinventorCODE_T: TStringField;
    QinventorMINCAL: TCurrencyField;
    QinventorMIN1: TCurrencyField;
    QinventorMAX1: TCurrencyField;
    QinventorNETPRC: TStringField;
    QinventorDISCON: TStringField;
    QinventorBACKORD: TCurrencyField;
    QinventorONORDER: TCurrencyField;
    QinventorEMGCOST: TCurrencyField;
    QinventorMANUFAC: TStringField;
    QinventorSUPPLIER: TStringField;
    QinventorCHARGFLG: TStringField;
    QinventorSESFLAG: TStringField;
    QinventorLOCK: TStringField;
    QinventorINPLOC: TStringField;
    QinventorGRADE: TStringField;
    QinventorLABEL: TStringField;
    QinventorPARTCHG: TStringField;
    QinventorPRIC1CHG: TCurrencyField;
    QinventorLASTCHG: TDateField;
    QinventorENGDESC: TStringField;
    QinventorSHELF2: TStringField;
    QinventorUNITENG: TStringField;
    QinventorBARCODE: TStringField;
    QinventorSALEDATE: TDateField;
    QinventorSUBGROUP: TStringField;
    Qinvanls: TFDQuery;
    QBkmast: TFDQuery;
    QDbconfig: TFDQuery;
    QLastno: TFDQuery;
    QPtStore: TFDQuery;
    QinventorFRT: TFloatField;
    QinventorMAXDISC: TFloatField;
    QinventorNUM_UNIT: TFloatField;
    procedure QBkmastAfterPost(DataSet: TDataSet);
    procedure QGroupAfterPost(DataSet: TDataSet);
    procedure QTypemstAfterPost(DataSet: TDataSet);
    procedure QOfficerAfterPost(DataSet: TDataSet);
    procedure QRtChqAfterPost(DataSet: TDataSet);
    procedure QRtChqAfterDelete(DataSet: TDataSet);
    procedure QBookAfterDelete(DataSet: TDataSet);
    procedure QBookAfterPost(DataSet: TDataSet);
    procedure QPaytypAfterDelete(DataSet: TDataSet);
    procedure Dm_set1Create(Sender: TObject);
    procedure QCatalogAfterPost(DataSet: TDataSet);
    procedure QCatalogAfterCancel(DataSet: TDataSet);
    procedure QCatalogNewRecord(DataSet: TDataSet);
    procedure QinventorNewRecord(DataSet: TDataSet);
    procedure QinvanlsNewRecord(DataSet: TDataSet);
    procedure QinventorAfterPost(DataSet: TDataSet);
    procedure QinventorAfterCancel(DataSet: TDataSet);
    procedure QinventorBeforePost(DataSet: TDataSet);
    procedure QinventorBeforeDelete(DataSet: TDataSet);
    procedure QOfficerNewRecord(DataSet: TDataSet);
    procedure QinventorGROUP1Validate(Sender: TField);
    procedure QinventorTYPEValidate(Sender: TField);
    procedure QinventorLOCATValidate(Sender: TField);
    procedure QinventorBeforeEdit(DataSet: TDataSet);
    procedure QinventorUpdateError(ASender: TDataSet; AException: EFDException;
      ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
  private
    { Private declarations }
    procedure ClearAsFloat(DataSet: TDataSet);
    function RunNo01(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function ZeroLead(St: string; len: integer): string;
  public
    { Public declarations }
    XYear: string;
    procedure CloseAll;
  end;

var
  Dm_set1: TDm_set1;
  Xprice1: Double;
  Duplicate: Boolean;

implementation

uses
  DmIc01, USoftFirm, Functn01, Dmsec;

{$R *.DFM}
function TDm_set1.ZeroLead(St: string; len: integer): string;
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

function TDm_set1.RunNo01(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1: string;
  LN, V1: Double;
begin
  if not Condpay.Active then
    Condpay.Open;
  HH := Condpay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);
    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM LOCATMST WHERE LOCATCOD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFmain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := Query1.FieldByname('LOCATDOC').Asstring;
  end;
    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM LASTNO ' +
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

function TDm_set1.MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1, PF1, PF2: string;
  LN, V1: Double;
  Max: integer;
begin
  if not CondPay.Active then
    CondPay.Open;
  HH := CondPay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);
  if (YY <> '1899') and (YY <> CondPay.Fieldbyname('Curyear').Asstring) then
    SFmain.RaiseException('บันทึกปีทำงานผิด ปีทำงานปัจจุบัน คือ' + CondPay.Fieldbyname('Curyear').Asstring);

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM LOCATMST WHERE LOCATCOD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFmain.RaiseException('ไม่พบรหัสสาขา')
    else
      PF := Query1.FieldByname('LOCATDOC').Asstring;
  end;
    //
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD(SQLTXT);
    Params[0].Asstring := PF;
    Params[1].Asstring := HH;
    Open;
  end;
  PF1 := Copy(Query1.Fieldbyname('Maxno').asstring, 1, 8);
  Max := Strtoint(Copy(Query1.Fieldbyname('Maxno').asstring, 9, 4));

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
end;

procedure TDm_set1.QBkmastAfterPost(DataSet: TDataSet);
begin
  if QBkmast.Active then
    DM_Sec.HI_DBMS.ApplyUpdates([QBkmast]);
end;

procedure TDm_set1.QGroupAfterPost(DataSet: TDataSet);
begin
  if QGroup.Active then
    DM_Sec.HI_DBMS.ApplyUpdates([QGroup]);
end;

procedure TDm_set1.QTypemstAfterPost(DataSet: TDataSet);
begin
  if QTypemst.Active then
    DM_Sec.HI_DBMS.ApplyUpdates([QTypemst]);
end;

procedure TDm_set1.QOfficerAfterPost(DataSet: TDataSet);
begin
  if QOfficer.Active then
    DM_Sec.HI_DBMS.ApplyUpdates([QOfficer]);
end;

procedure TDm_set1.QRtChqAfterPost(DataSet: TDataSet);
begin
//   If QRtchq.Active Then DM_Sec.HI_DBMS.ApplyUpdates([QRtchq]);
end;

procedure TDm_set1.QRtChqAfterDelete(DataSet: TDataSet);
begin
//   If QRtchq.Active Then DM_Sec.HI_DBMS.ApplyUpdates([QRtchq]);
end;

procedure TDm_set1.QBookAfterDelete(DataSet: TDataSet);
begin
//   If QBook.Active Then DM_Sec.HI_DBMS.ApplyUpdates([QBook]);
end;

procedure TDm_set1.QBookAfterPost(DataSet: TDataSet);
begin
//   If QBook.Active Then DM_Sec.HI_DBMS.ApplyUpdates([QBook]);
end;

procedure TDm_set1.QPaytypAfterDelete(DataSet: TDataSet);
begin
//   If QPaytyp.Active Then DM_Sec.HI_DBMS.ApplyUpdates([QPaytyp]);
end;

procedure TDm_set1.Dm_set1Create(Sender: TObject);
begin
  CondPay.Close;
  Condpay.Open;
  XYear := Condpay.FieldByName('CURYEAR').Asstring;
end;

procedure TDm_set1.CloseAll;
var
  N: Word;
begin
  for N := 0 to ComponentCount - 1 do
  begin
    if (Components[N] is TFDQuery) then
      TFDQuery(Components[N]).Active := False
    else if (Components[N] is TFDtable) then
      TFDtable(Components[N]).Active := False;
  end;
end;

procedure TDm_set1.ClearAsFloat(DataSet: TDataSet);
var
  S: string;
  I: Integer;
begin
  for I := 0 to DataSet.FieldCount - 1 do
  begin
    if (DataSet.Fields[I].dataType = ftFloat) and
      (DataSet.Fields[I].Isnull) then
    begin
      S := DataSet.Fields[I].FieldName;
      DataSet.Fieldbyname(S).Asfloat := 0;
    end;
  end;
end;

procedure TDm_set1.QCatalogAfterPost(DataSet: TDataSet);
begin
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QCatalog.Active then
      if (QCatalog.ApplyUpdates = 0) then
        QCatalog.CommitUpdates
      else
        raise Exception.Create(QCatalog.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TDm_set1.QCatalogAfterCancel(DataSet: TDataSet);
begin
  if QCatalog.Active then
    QCatalog.CancelUpdates;
end;

procedure TDm_set1.QCatalogNewRecord(DataSet: TDataSet);
begin
  if QCatalog.State = dsinsert then
  begin
    QCatalog.Fieldbyname('Netprc').Asstring := ' ';
    QCatalog.Fieldbyname('discon').Asstring := 'N';
    ClearAsFloat(QCatalog);
  end;
end;

procedure TDm_set1.QinventorNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QInventor);
  Qinventor.Fieldbyname('Locat').Asstring := SFMain.Xlocat;
  Qinventor.Fieldbyname('INPLOC').Asstring := 'A';
  Qinventor.FieldByName('DISCON').Asstring := 'N';
  Qinventor.FieldByName('NETPRC').Asstring := ' ';
  Qinventor.FieldByName('SESFLAG').Asstring := ' ';
  Qinventor.FieldByName('VATCAL').Asstring := 'Y';
  Qinventor.FieldByName('CHARGFLG').Asstring := 'N';
  Qinventor.FieldByName('CREATDAT').Asdatetime := Now;
  Qinventor.FieldByName('MOVDATE').Asdatetime := Now;
end;

procedure TDm_set1.QinvanlsNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QInvanls);
end;

procedure TDm_set1.QinventorAfterPost(DataSet: TDataSet);
begin
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QInventor.Active then
      if (QInventor.ApplyUpdates = 0) then
        QInventor.CommitUpdates
      else
        raise Exception.Create(QInventor.RowError.Message);
    if QInvanls.Active then
      if (QInvanls.ApplyUpdates = 0) then
        QInvanls.CommitUpdates
      else
        raise Exception.Create(QInvanls.RowError.Message);
    if QPtStore.Active then
      if (QPtStore.ApplyUpdates = 0) then
        QPtStore.CommitUpdates
      else
        raise Exception.Create(QPtStore.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QInventor.Edit;
    raise;
  end;
end;

procedure TDm_set1.QinventorAfterCancel(DataSet: TDataSet);
begin
  if QInventor.Active then
    QInventor.CancelUpDates;
  if QInvanls.Active then
    QInvanls.CancelUpDates;
  if QPtStore.Active then
    QPtStore.CancelUpDates;
end;

procedure TDm_set1.QinventorBeforePost(DataSet: TDataSet);
var
  XYear1, XMonth, XDay: Word;
  NRun: Integer;
begin
  DecodeDate(Now, XYear1, XMonth, XDay);

  if QInventor.State = Dsinsert then
  begin
    ClearAsString(QInventor);

    Qinventor.Fieldbyname('Year1').Asstring := Inttostr(XYear1);
    //
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVANLS WHERE LOCAT=:XLoc AND PARTNO = :XPART AND YEAR1= :XYear ');
      Params[0].Asstring := Qinventor.Fieldbyname('Locat').Asstring;
      Params[1].Asstring := Dm_Set1.QInventor.FieldByName('Partno').Asstring;
      Params[2].AsString := XYear;
      Open;
    end;

    if (Dm_Set1.Query1.Eof and Dm_Set1.Query1.Bof) then
    begin
      Qinvanls.Insert;
      Qinvanls.Fieldbyname('Locat').Asstring := Qinventor.Fieldbyname('Locat').Asstring;
      Qinvanls.Fieldbyname('Partno').Asstring := Qinventor.Fieldbyname('Partno').Asstring;
      Qinvanls.Fieldbyname('Year1').Asstring := Inttostr(XYear1);
      Qinvanls.Fieldbyname('Inploc').Asstring := 'A';
      Qinvanls.Post;
    end;
  end
  else if Xprice1 <> QInventorPRICE1.asfloat then
  begin
    QInventorPRIC1CHG.Asfloat := Xprice1;
    QInventorLASTCHG.Asdatetime := Now;
  end;
  if Dm_Set1.QInventor.State in Dseditmodes then
  begin
    Dm_Set1.QInventor.Fieldbyname('PRICE2').Asfloat := (1 + Dm_set1.QDBconfig.FieldByname('C_prc2').AsFloat / 100) *
      Dm_Set1.QInventor.Fieldbyname('PRICE1').Asfloat;
    Dm_Set1.QInventor.Fieldbyname('PRICE3').Asfloat := (1 + Dm_set1.QDBconfig.FieldByname('C_prc3').AsFloat / 100) *
      Dm_Set1.QInventor.Fieldbyname('PRICE1').Asfloat;
    Dm_Set1.QInventor.Fieldbyname('PRICE4').Asfloat := (1 + Dm_set1.QDBconfig.FieldByname('C_prc4').AsFloat / 100) *
      Dm_Set1.QInventor.Fieldbyname('PRICE1').Asfloat;
  end;
end;

procedure TDm_set1.QinventorBeforeDelete(DataSet: TDataSet);
begin
  Qinvanls.Delete;
end;

procedure TDm_set1.QOfficerNewRecord(DataSet: TDataSet);
begin
  QOfficer.Fieldbyname('DEPART').Asstring := '1';
end;

procedure TDm_set1.QinventorGROUP1Validate(Sender: TField);
begin
  with Dm_Set1.QGroup do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD =:GROUPCOD');
    Params[0].Asstring := QinventorGROUP1.Value;
    Open;
  end;
  if Dm_Set1.QGroup.EOF and Dm_Set1.QGroup.BOF then
    SFmain.RaiseException('ไม่มีกลุ่มสินค้าในแฟ้มข้อมูล');
end;

procedure TDm_set1.QinventorTYPEValidate(Sender: TField);
begin
  with Dm_Set1.QTypemst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SETTYPE WHERE TYPECOD=:XType');
    Params[0].Asstring := QinventorTYPE.Value;
    Open;
  end;
  if Dm_Set1.QTypemst.EOF and Dm_Set1.QTypemst.BOF then
    SFmain.RaiseException('ไม่มีรหัสยี่ห้อนั้ในแฟ้มข้อมูล');
end;

procedure TDm_set1.QinventorUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_set1.QinventorLOCATValidate(Sender: TField);
begin
  with Dm_Set1.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:XCod');
    Params[0].Asstring := QinventorLOCAT.Value;
    Open;
  end;
  if Dm_Set1.Query1.EOF and Dm_Set1.Query1.BOF then
    SFmain.RaiseException('ไม่มีรหัสสาขานั้ในแฟ้มข้อมูล');
end;

procedure TDm_set1.QinventorBeforeEdit(DataSet: TDataSet);
begin
  Xprice1 := QinventorPRICE1.Asfloat;
end;

end.

