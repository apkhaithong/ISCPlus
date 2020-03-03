unit DmAp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDm_Ap1 = class(TDataModule)
    QApbill: TFDQuery;
    SoApbill: TDataSource;
    QLocat: TFDQuery;
    QApinv: TFDQuery;
    QApbiltr: TFDQuery;
    SoApbiltr: TDataSource;
    QAppay1: TFDQuery;
    QApbillAPBILNO: TStringField;
    QApbillLOCAT: TStringField;
    QApbillBDATE: TDateField;
    QApbillAPCODE: TStringField;
    QApbillDESC: TStringField;
    QApbillDATE1: TDateField;
    QApbillITEMS: TFloatField;
    QApbillAMOUNT: TFloatField;
    QApbillUSERID: TStringField;
    QApbillFDUE: TDateField;
    QApbillLDUE: TDateField;
    QApbillREFBIL: TStringField;
    QLastno: TFDQuery;
    QCondPay: TFDQuery;
    QAppaytr: TFDQuery;
    SoAppaytr: TDataSource;
    QApchq: TFDQuery;
    SoApchq: TDataSource;
 //   QAppaytrTCHQ1: TFloatField;
    QAppaytrBILLNO: TStringField;
    QAppaytrLOCAT: TStringField;
    QAppaytrBILLDT: TDateField;
    QAppaytrAPCODE: TStringField;
    QAppaytrPAYCONT: TStringField;
    QAppaytrCHQNUM: TFloatField;
    QAppaytrCHQAMT: TFloatField;
    QAppaytrCSHAMT: TFloatField;
    QAppaytrTOTAL: TFloatField;
    QAppaytrDISCT: TFloatField;
    QAppaytrINVNO: TStringField;
    QAppaytrUSERID: TStringField;
    QAppaytrTIME1: TDateTimeField;
    QApbillPAYAMT: TFloatField;
    QApbill1: TFDQuery;
    SoApbill1: TDataSource;
    QAppaytr1: TFDQuery;
    SoAppaytr1: TDataSource;
    QApinv3: TFDQuery;
    SoApinv3: TDataSource;
    QOfficer: TFDQuery;
    QApbiltr1: TFDQuery;
    SoApbiltr1: TDataSource;
    QApinv3INVNO: TStringField;
    QApinv3LOCAT: TStringField;
    QApinv3RECVDT: TDateField;
    QApinv3RECVNO: TStringField;
    QApinv3CREDTM: TFloatField;
    QApinv3INVDUE: TDateField;
    QApinv3TAXDATE: TDateField;
    QApinv3OFFICCOD: TStringField;
    QApinv3INVDATE: TDateField;
    QApinv3DESCRP: TStringField;
    QApinv3VATTYPE: TStringField;
    QApinv3TOTAL: TFloatField;
    QApinv3DISCT: TFloatField;
    QApinv3DISCAMT: TFloatField;
    QApinv3BALANCE: TFloatField;
    QApinv3NETTOTAL: TFloatField;
    QApinv3TAXNO: TStringField;
    QApinv3SMPAY: TFloatField;
    QApinv3SMCHQ: TFloatField;
    QApinv3LPAID: TDateField;
    QApinv3KANG: TFloatField;
    QApinv3REDUAFT: TFloatField;
    QApinv3TAXREFNO: TStringField;
    QApinv3TNOPAY: TFloatField;
    QApinv3FLAG: TStringField;
    QApinv3STAT: TStringField;
    QApinv3POST: TStringField;
    QApinv3MEMO1: TMemoField;
    QTaxbuy: TFDQuery;
    QApinv3DISC: TFloatField;
    QApchq1: TFDQuery;
    SoApchq1: TDataSource;
    QApinv3USERID: TStringField;
    Apinv05: TFDQuery;
    SoApinv05: TDataSource;
    Apinv05INVNO: TStringField;
    Apinv05LOCAT: TStringField;
    Apinv05APCODE: TStringField;
    Apinv05RECVDT: TDateField;
    Apinv05RECVNO: TStringField;
    Apinv05CREDTM: TFloatField;
    Apinv05INVDUE: TDateField;
    Apinv05TAXDATE: TDateField;
    Apinv05OFFICCOD: TStringField;
    Apinv05INVDATE: TDateField;
    Apinv05DESCRP: TStringField;
    Apinv05VATTYPE: TStringField;
    Apinv05TOTAL: TFloatField;
    Apinv05DISCT: TFloatField;
    Apinv05DISCAMT: TFloatField;
    Apinv05BALANCE: TFloatField;
    Apinv05VATRT: TFloatField;
    Apinv05VATAMT: TFloatField;
    Apinv05NETTOTAL: TFloatField;
    Apinv05TAXNO: TStringField;
    Apinv05SMPAY: TFloatField;
    Apinv05SMCHQ: TFloatField;
    Apinv05LPAID: TDateField;
    Apinv05KANG: TFloatField;
    Apinv05REDUAFT: TFloatField;
    Apinv05TAXREFNO: TStringField;
    Apinv05TNOPAY: TFloatField;
    Apinv05L_DUE: TDateField;
    Apinv05BILL: TStringField;
    Apinv05JOBNO: TStringField;
    Apinv05FLAG: TStringField;
    Apinv05STAT: TStringField;
    Apinv05POST: TStringField;
    Apinv05MEMO1: TMemoField;
    Apinv05DISC: TFloatField;
    QAppaytrFLAG: TStringField;
    QApinv3TIME1: TDateTimeField;
    QApinv3CANCELID: TStringField;
    QApinv3CANDAT: TDateTimeField;
    QApinv3POSTGLDT: TDateTimeField;
    Apinv05USERID: TStringField;
    Apinv05TIME1: TDateTimeField;
    Apinv05CANCELID: TStringField;
    Apinv05CANDAT: TDateTimeField;
    Apinv05POSTGLDT: TDateTimeField;
    QAppaytrPAYTYP: TStringField;
    QAppaytrCANCELID: TStringField;
    QAppaytrCANDAT: TDateTimeField;
    QAppaytrPOSTGLDT: TDateTimeField;
    QApinv1: TFDQuery;
    QAppaytr1BILLNO: TStringField;
    QAppaytr1LOCAT: TStringField;
    QAppaytr1BILLDT: TDateField;
    QAppaytr1APCODE: TStringField;
    QAppaytr1PAYTYP: TStringField;
    QAppaytr1PAYCONT: TStringField;
    QAppaytr1CHQNUM: TFloatField;
    QAppaytr1CHQAMT: TFloatField;
    QAppaytr1CSHAMT: TFloatField;
    QAppaytr1TOTAL: TFloatField;
    QAppaytr1DISCT: TFloatField;
    QAppaytr1DISAMT: TFloatField;
    QAppaytr1ADDAMT: TFloatField;
    QAppaytr1NETTOT: TFloatField;
    QAppaytr1INVNO: TStringField;
    QAppaytr1FLAG: TStringField;
    QAppaytr1SYSTM: TStringField;
    QAppaytr1MEMO1: TMemoField;
    QAppaytr1USERID: TStringField;
    QAppaytr1TIME1: TDateTimeField;
    QAppaytr1CANCELID: TStringField;
    QAppaytr1CANDAT: TDateTimeField;
    QAppaytr1POSTGLDT: TDateTimeField;
    SoApinv1: TDataSource;
    QApinv1INVNO: TStringField;
    QApinv1LOCAT: TStringField;
    QApinv1APCODE: TStringField;
    QApinv1RECVDT: TDateField;
    QApinv1RECVNO: TStringField;
    QApinv1CREDTM: TFloatField;
    QApinv1INVDUE: TDateField;
    QApinv1TAXDATE: TDateField;
    QApinv1OFFICCOD: TStringField;
    QApinv1INVDATE: TDateField;
    QApinv1VATTYPE: TStringField;
    QApinv1TOTAL: TFloatField;
    QApinv1DISCT: TFloatField;
    QApinv1DISCAMT: TFloatField;
    QApinv1BALANCE: TFloatField;
    QApinv1VATRT: TFloatField;
    QApinv1VATAMT: TFloatField;
    QApinv1NETTOTAL: TFloatField;
    QApinv1TAXNO: TStringField;
    QApinv1SMPAY: TFloatField;
    QApinv1SMCHQ: TFloatField;
    QApinv1LPAID: TDateField;
    QApinv1KANG: TFloatField;
    QApinv1REDUAFT: TFloatField;
    QApinv1TAXREFNO: TStringField;
    QApinv1TNOPAY: TFloatField;
    QApinv1FLAG: TStringField;
    QApinv1STAT: TStringField;
    QApinv1POST: TStringField;
    QApinv1MEMO1: TMemoField;
    QApinv1DISC: TFloatField;
    QApinv1CANCELID: TStringField;
    QApinv1CANDAT: TDateTimeField;
    Query2: TFDQuery;
    QAppay: TFDQuery;
    SoAppay: TDataSource;
    TApinvoi: TFDTable;
    TAppay: TFDTable;
    TAppayINVNO: TStringField;
    TAppayLOCAT: TStringField;
    TAppayNOPAY: TFloatField;
    TAppayDDATE: TDateField;
    TAppayDAMT: TFloatField;
    TAppayV_DAMT: TFloatField;
    TAppayN_DAMT: TFloatField;
    TAppayDATE1: TDateField;
    TAppayPAYMENT: TFloatField;
    TAppayV_PAYMENT: TFloatField;
    TAppayN_PAYMENT: TFloatField;
    TAppayVATRT: TFloatField;
    QAppaytrUpdateStatus: TStringField;
    QAppaytrDISAMT: TFloatField;
    QAppaytrADDAMT: TFloatField;
    QAppaytrNETTOT: TFloatField;
    QApbiltrAPBILNO: TStringField;
    QApbiltrLOCAT: TStringField;
    QApbiltrINVNO: TStringField;
    QApbiltrINVDATE: TDateField;
    QApbiltrDUEDATE: TDateField;
    QApbiltrBALANCE: TFloatField;
    QApbiltrPAYAMT: TFloatField;
    QApbiltrNOPAY: TFloatField;
    QAppaytrSYSTM: TStringField;
    QDbconfig: TFDQuery;
    QApinv3VATRT: TFloatField;
    QApinv3VATAMT: TFloatField;
    QApinv3DEPOSIT: TStringField;
    QApinv1RTNAMT: TFloatField;
    QApinv1RTNDATE: TDateField;
    QApinv1RTNNO: TStringField;
    QApinv3RTNAMT: TFloatField;
    QApinv3RTNDATE: TDateField;
    QApinv3RTNNO: TStringField;
    QApbillTYPE: TStringField;
    QTaxbuy2: TFDQuery;
    SoTaxbuy2: TDataSource;
    QApinv2: TFDQuery;
    QTaxbuy2TAXNO: TStringField;
    QTaxbuy2TAXDATE: TDateField;
    QTaxbuy2TAXREFNO: TStringField;
    QTaxbuy2DESC1: TStringField;
    QTaxbuy2CUSCOD: TStringField;
    QTaxbuy2VATRT: TFloatField;
    QTaxbuy2AMOUNT: TFloatField;
    QTaxbuy2REDU: TFloatField;
    QTaxbuy2BALANCE: TFloatField;
    QTaxbuy2VAT: TFloatField;
    QTaxbuy2TOTTAX: TFloatField;
    QTaxbuy2FLAG: TStringField;
    QTaxbuy2CANCEL: TStringField;
    QTaxbuy2USERID: TStringField;
    QTaxbuy2TIME1: TDateTimeField;
    QTaxbuy2CANCELID: TStringField;
    QTaxbuy2CANDAT: TDateTimeField;
    QTaxbuy2POSTGLDT: TDateTimeField;
    QTaxbuy2LOCAT: TStringField;
    Condpay: TFDQuery;
    QAppaytr1VAT3: TFloatField;
    QAppaytr1VAT3AMT: TFloatField;
    QAppaytrMEMO1: TMemoField;
    QAppaytrVAT3: TFloatField;
    QAppaytrVAT3AMT: TFloatField;
    QApinv3PAYCD: TStringField;
    Query1: TFDQuery;
    QApinv3YEAR1: TStringField;
    QApinv3APCODE: TStringField;
    QApinv1DESCRP: TStringField;
    QApinv1BILLNO: TStringField;
    QApinv1USERID: TStringField;
    QApinv1TIME1: TDateTimeField;
    QApinv1POSTGLDT: TDateTimeField;
    QApinv1DEPOSIT: TStringField;
    QApinv1YEAR1: TStringField;
    QApinv1PAYCD: TStringField;
    QApinv3POSTGL: TStringField;
    QApinv3BANKBOOKCOD: TStringField;
    QApinv3Updatestatus: TStringField;
    procedure QApbillBDATEValidate(Sender: TField);
    procedure QApbillAfterPost(DataSet: TDataSet);
    procedure QApbillBeforePost(DataSet: TDataSet);
    procedure QApbiltrNewRecord(DataSet: TDataSet);
    procedure QApbillBeforeDelete(DataSet: TDataSet);
    procedure QAppaytrBeforePost(DataSet: TDataSet);
    procedure QAppaytrAfterPost(DataSet: TDataSet);
    procedure QAppaytrAfterCancel(DataSet: TDataSet);
    procedure QApbillAfterCancel(DataSet: TDataSet);
    procedure QAppaytr1BeforePost(DataSet: TDataSet);
    procedure QAppaytr1AfterPost(DataSet: TDataSet);
    procedure QAppaytr1AfterCancel(DataSet: TDataSet);
    procedure QApinv3BeforePost(DataSet: TDataSet);
    procedure QApinv3AfterPost(DataSet: TDataSet);
    procedure QApinv3AfterCancel(DataSet: TDataSet);
    procedure QApinv3BeforeDelete(DataSet: TDataSet);
    procedure QApinv3RECVDTValidate(Sender: TField);
    procedure QApbiltrAfterPost(DataSet: TDataSet);
    procedure QApinv3LOCATValidate(Sender: TField);
    procedure QApbillLOCATValidate(Sender: TField);
    procedure QAppaytr1CSHAMTValidate(Sender: TField);
    procedure QAppaytr1NewRecord(DataSet: TDataSet);
    procedure QApinv3NewRecord(DataSet: TDataSet);
    procedure QApbiltr1AfterOpen(DataSet: TDataSet);
    procedure QAppaytrCalcFields(DataSet: TDataSet);
    procedure QApbillNewRecord(DataSet: TDataSet);
    procedure QAppaytrNewRecord(DataSet: TDataSet);
    procedure Appay05BeforeDelete(DataSet: TDataSet);
    procedure Dm_Ap1Create(Sender: TObject);
    procedure QApinv3OFFICCODValidate(Sender: TField);
    procedure QApchq1NewRecord(DataSet: TDataSet);
    procedure QApbiltr1BeforeClose(DataSet: TDataSet);
    procedure QApchqBeforePost(DataSet: TDataSet);
    procedure QAppaytr1BILLNOValidate(Sender: TField);
    procedure QAppaytrBILLNOValidate(Sender: TField);
    procedure QAppaytrINVNOValidate(Sender: TField);
    procedure QTaxbuy2AfterPost(DataSet: TDataSet);
    procedure QTaxbuy2TAXDATEValidate(Sender: TField);
    procedure QTaxbuy2NewRecord(DataSet: TDataSet);
    procedure QTaxbuy2TAXREFNOValidate(Sender: TField);
    procedure QTaxbuy2AMOUNTValidate(Sender: TField);
    procedure QTaxbuy2AfterCancel(DataSet: TDataSet);
    procedure QTaxbuy2BeforePost(DataSet: TDataSet);
    procedure QTaxbuy2REDUValidate(Sender: TField);
    procedure QApchq1BeforePost(DataSet: TDataSet);
    procedure QApchqNewRecord(DataSet: TDataSet);
    procedure QAppaytr1VAT3Validate(Sender: TField);
    procedure QApinv3CREDTMValidate(Sender: TField);
    procedure QAppaytrVAT3Validate(Sender: TField);
    procedure QAppaytrVAT3AMTValidate(Sender: TField);
    procedure QAppaytrADDAMTValidate(Sender: TField);
    procedure QAppaytr1ADDAMTValidate(Sender: TField);
    procedure QAppaytr1DISAMTValidate(Sender: TField);
    procedure QAppaytr1VAT3AMTValidate(Sender: TField);
    procedure QAppaytr1TOTALValidate(Sender: TField);
    procedure QAppaytr1NETTOTValidate(Sender: TField);
    procedure QAppaytr1PAYTYPValidate(Sender: TField);
    procedure QAppaytrTOTALValidate(Sender: TField);
    procedure QAppaytrNETTOTValidate(Sender: TField);
    procedure QAppaytrCSHAMTValidate(Sender: TField);
    procedure QApinv3INVNOValidate(Sender: TField);
    procedure QApinv3RECVNOChange(Sender: TField);
    procedure QApinv3UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
    function Next_Mth(Date_a: Tdatetime; Tmon: Integer): TdateTime;
  public
    { Public declarations }
    XSchema: string;
    Xuser_ID, XPasswd, Xlocat, XDepart, XLevel, Xsrch, XFlx: string;
    function RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    procedure QAppaytr1delete;
    procedure QAppaytrDelete;
    procedure CloseAll;
    function MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function ZeroLead(St: string; len: integer): string;
  end;

var
  Dm_Ap1: TDm_Ap1;
  Duplicate: Boolean;

const
  eKeyViol = 9729;

implementation

uses
  USoftFirm, Functn01, Dmsec;
{$R *.DFM}

function TDm_AP1.MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
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
  if HField <> 'H_OTHC' then
  begin
    if (YY <> '1899') and (YY <> CondPay.Fieldbyname('Curyear').Asstring) then
      sfmain.raiseException('บันทึกปีทำงานผิด ปีทำงานปัจจุบัน คือ' + CondPay.Fieldbyname('Curyear').Asstring);
  end;
  SFMain.Xlocat := Lc;
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
      sfmain.raiseException('ไม่พบรหัสสาขา')
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

function TDm_AP1.ZeroLead(St: string; len: integer): string;
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

function TDm_AP1.Next_Mth(Date_a: Tdatetime; Tmon: Integer): TdateTime;
var
  Mon: array[1..12] of Integer;
  XYear, XMonth, XDay, Xyr1, XMon, Xday1: Word;
  Y1, Y2: Real;
  Year1: string;
begin
  Mon[1] := 31;
  Mon[2] := 28;
  Mon[3] := 31;
  Mon[4] := 30;
  Mon[5] := 31;
  Mon[6] := 30;
  Mon[7] := 31;
  Mon[8] := 31;
  Mon[9] := 30;
  Mon[10] := 31;
  Mon[11] := 30;
  Mon[12] := 31;
  DecodeDate(Date_a, XYear, XMonth, XDay);

  XMon := XMonth + Tmon;
  Xyr1 := XYear;
  if XMon > 12 then
  begin
    XMon := 1;
    Xyr1 := XYear + 1;
  end;
  Y1 := XYear / 4;
  Y2 := Round(XYear / 4);
  if Y1 = Y2 then
    Mon[2] := 29
  else
    Mon[2] := 28;

  if XDay = Mon[XMonth] then
    Xday1 := Mon[XMon]
  else
    Xday1 := XDay;

  Year1 := Inttostr(Xday1) + '/' + inttostr(XMon) + '/' + Inttostr(Xyr1);
  Result := Strtodate(Year1);
end;

function TDm_Ap1.RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  Zero: string;
  PF, HH, Lc, YY, MM, S2, Y1: string;
  i, LL: integer;
  LN, V1: Double;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  MM := Copy(DateTostr(Dvalue), 4, 2);
  begin
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
    with QCondpay do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SCONDPAY ');
      Open;
      HH := QCondpay.Fieldbyname(HField).Asstring;
    end;
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
      Params[2].Asstring := MM;
      Open;
    end;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
    begin
      with QLastno do
      begin
        Insert;
        Fieldbyname('Locat').Asstring := Lc;
        Fieldbyname('Cr_year').Asstring := YY;
        Fieldbyname('Cr_Month').Asstring := MM;
        Post;
      end;
    end;
    LN := QLastNo.FieldByname(LField).AsFloat;
    V1 := LN + 1;
    S2 := FloatTostr(V1);
    LL := length(S2);
    Zero := '';
    for i := 1 to (4 - LL) do
      Zero := Zero + '0';
    Result := PF + HH + '-' + Y1 + MM + Zero + S2;
    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
      QLastNo.Post;
    end;
  end;
end;

procedure TDm_Ap1.QApbillBDATEValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  HF := 'H_BSNO';
  LF := 'L_BSNO';
  LV := QApbill.FieldByName('Locat').Asstring;
  DV := QApbill.FieldByName('BDATE').asDateTime;
  if QApbill.State = DsInsert then
    QApbill.FieldByName('APBILNO').Asstring := RunNo(HF, LF, LV, DV);
end;

procedure TDm_Ap1.QApbillAfterPost(DataSet: TDataSet);
var
  XBIl: string;
begin
  XBIl := Dm_Ap1.QApbill.FieldByName('APBILNO').Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QApbill.Active then
      if (QApbill.ApplyUpdates = 0) then
        QApbill.CommitUpdates
      else
        raise Exception.Create(QApbill.RowError.Message);
    if QApbiltr.Active then
      if (QApbiltr.ApplyUpdates = 0) then
        QApbiltr.CommitUpdates
      else
        raise Exception.Create(QApbiltr.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE APPAY SET BILL = ''  WHERE BILL = :XBIL ');
      params[0].Asstring := XBIl;
      ExecSQl;
    end;
    raise;
  end;
  //
  with Dm_Ap1.QApbill do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APBILL WHERE APBILNO = :XAPBILNO');
    Params[0].Asstring := XBIl;
    Open;
  end;
  with Dm_Ap1.QApbiltr do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APBILTR WHERE APBILNO = :XAPBILNO');
    Params[0].Asstring := XBIl;
    Open;
  end;
end;

procedure TDm_Ap1.QApbillBeforePost(DataSet: TDataSet);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  if QApbill.State = DsInsert then
  begin
    HF := 'H_BSNO';
    LF := 'L_BSNO';
    LV := QApbill.FieldByName('Locat').Asstring;
    DV := QApbill.FieldByName('BDATE').asDateTime;
    QApbill.FieldByName('APBILNO').Asstring := RunNo(HF, LF, LV, DV);
  end;
end;

procedure TDm_Ap1.QApbiltrNewRecord(DataSet: TDataSet);
begin
  if QApbiltr.State = Dsinsert then
  begin
    QApbiltr.FieldByName('APBILNO').ASSTRING := QApbill.Fieldbyname('APBILNO').asstring;
    QApbiltr.FieldByName('LOCAT').ASSTRING := QApbill.Fieldbyname('LOCAT').asstring;
  end;
end;

procedure TDm_Ap1.QApbillBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

  QApbiltr.AfterPost := Nil;
  QApbiltr.AfterDelete := Nil;
  QApbiltr.First;
  while not QApbiltr.Eof do
    QApbiltr.Delete;
  QApbiltr.AfterPost := QApbiltrAfterPost;
  QApbiltr.AfterDelete := QApbiltrAfterPost;
end;

procedure TDm_Ap1.QAppaytrBeforePost(DataSet: TDataSet);
var
  Total, Totch, XNum, Payamt1, Payment_a, Vatrt, Lost_a: Double;
begin
  if QAppaytrUpdateStatus.Value = 'Inserted' then
  begin
    QApbill1.Edit;
    QApbill1.Fieldbyname('REFBIL').Asstring := QAppaytrBILLNO.Asstring;
    //
    if QApchq.Active then
    begin
      Total := 0;
      XNum := 0;
      QApchq.First;
      while (not QApchq.Eof) do
      begin
        Total := Total + QApchq.FieldByname('CHQAMT').AsFloat;
        XNum := XNum + 1;
        QApchq.Next;
      end;
      QAppaytr.FieldByName('CHQNUM').Asfloat := XNum;
      Totch := Strtofloat(FloattostrF(QAppaytr1.FieldByName('CHQAMT').AsFloat, ffFixed, 15, 2));
      Total := Strtofloat(FloattostrF(Total, ffFixed, 15, 2));
      //if total <> Totch then
      //Messagedlg('ยอดรวมเช็คไม่เท่ากับยอดเงินหน้าเช็ค',Mtwarning,[mbok],0);
    end;

    with QApbiltr1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM APBILTR WHERE APBILNO = :XAPBILNO ');
      Params[0].Asstring := QAppaytr.FieldByName('INVNO').Asstring;
      ;
      Open;
    end;
    if QApbiltr1.Eof and QApbiltr1.Bof then
      SFmain.RaiseException('ไม่มีรายการบิล');

    QApbiltr1.First;
    while not (QApbiltr1.eof) do
    begin
      TApinvoi.Edit;
      if QApbiltr1.FieldByName('Payamt').Asfloat > 0 then
      begin
        if QAppaytr.FieldByName('Paytyp').Asstring = '02' then
        begin
          if Dm_Ap1.QApbill1.Fieldbyname('TYPE').Asstring = '1' then
            TApinvoi.FieldByName('SMCHQ').Asfloat := TApinvoi.FieldByName('SMCHQ').Asfloat
              + ABS(QApbiltr1.FieldByName('Payamt').Asfloat)
          else
            TApinvoi.FieldByName('SMCHQ').Asfloat := TApinvoi.FieldByName('SMCHQ').Asfloat
              + ABS(QApbiltr1.FieldByName('Payamt').Asfloat) - TApinvoi.FieldByName('RTNAMT').Asfloat;
        end
        else
        begin
          if Dm_Ap1.QApbill1.Fieldbyname('TYPE').Asstring = '1' then
            TApinvoi.FieldByName('SMPAY').Asfloat := TApinvoi.FieldByName('SMPAY').Asfloat
              + ABS(QApbiltr1.FieldByName('Payamt').Asfloat)
          else
            TApinvoi.FieldByName('SMPAY').Asfloat := TApinvoi.FieldByName('SMPAY').Asfloat
              + ABS(QApbiltr1.FieldByName('Payamt').Asfloat) - TApinvoi.FieldByName('RTNAMT').Asfloat;
        end;
        TApinvoi.FieldByName('KANG').Asfloat := TApinvoi.FieldByName('NETTOTAL').Asfloat
          - TApinvoi.FieldByName('SMPAY').Asfloat - TApinvoi.FieldByName('SMCHQ').Asfloat - TApinvoi.FieldByName('RTNAMT').Asfloat;

        TApinvoi.FieldByName('LPAID').AsDateTime := QAppaytr.FieldByName('BILLDT').AsDateTime;
        Payamt1 := QApbiltr1.FieldByName('PAYAMT').Asfloat;
        Vatrt := TApinvoi.FieldByName('Vatrt').Asfloat;
        TApinvoi.Post;

        //Update Arpay
        if not TAppay.Eof then
        begin
          TAppay.First;
          while (not TAppay.Eof) and (TAppayDAMT.Asfloat = TAppayPAYMENT.Asfloat) do
            TAppay.Next;

          Lost_a := TAppayDAMT.Asfloat - TAppayPAYMENT.Asfloat;
          while (not TAppay.Eof) and (Payamt1 > 0) do
          begin
            if Lost_a <> TAppayDAMT.Asfloat then
            begin
              if Payamt1 > Lost_a then
              begin
                Payment_a := TAppayDAMT.Asfloat;
                Payamt1 := Payamt1 - Lost_a;
              end
              else
              begin
                Payment_a := TAppayPAYMENT.Asfloat + Payamt1;
                Payamt1 := 0;
              end;
            end
            else
            begin
              if Payamt1 > TAppayDAMT.Asfloat then
              begin
                Payment_a := TAppayDAMT.Asfloat;
                Payamt1 := Payamt1 - TAppayDAMT.Asfloat;
              end
              else
              begin
                Payment_a := Payamt1;
                Payamt1 := 0;
              end;
            end;
            TAppay.Edit;
            TAppayDATE1.Asdatetime := QAppaytrBILLDT.Asdatetime;
            TAppayPAYMENT.Asfloat := Payment_a;
            TAppayV_PAYMENT.Asfloat := Payment_a * Vatrt / (100 + Vatrt);
            TAppayN_PAYMENT.Asfloat := Payment_a - TAppayV_PAYMENT.Asfloat;
            TAppay.Post;

            TAppay.Next;
          end;
        end;
      end;
      QApbiltr1.Next;
    end;
  end;
end;

procedure TDm_Ap1.QAppaytrAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QAppaytr.FieldByName('BILLNO').Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QAppaytr.Active then
      if (QAppaytr.ApplyUpdates = 0) then
        QAppaytr.CommitUpdates
      else
        raise Exception.Create(QAppaytr.RowError.Message);
    if QApchq.Active then
      if (QApchq.ApplyUpdates = 0) then
        QApchq.CommitUpdates
      else
        raise Exception.Create(QApchq.RowError.Message);
    if TApinvoi.Active then
      if (TApinvoi.ApplyUpdates = 0) then
        TApinvoi.CommitUpdates
      else
        raise Exception.Create(TApinvoi.RowError.Message);
    if TAppay.Active then
      if (TAppay.ApplyUpdates = 0) then
        TAppay.CommitUpdates
      else
        raise Exception.Create(TAppay.RowError.Message);
    if QApbill1.Active then
      if (QApbill1.ApplyUpdates = 0) then
        QApbill1.CommitUpdates
      else
        raise Exception.Create(QApbill1.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    raise;
  end;
   //
  with Dm_Ap1.QAppaytr do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APPAYTRN WHERE BILLNO = :XBILLNO');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_Ap1.QApchq do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APCHQ WHERE BILLNO = :XBILNO');
    Params[0].Asstring := Dm_Ap1.QAppaytr.FieldByName('BILLNO').Asstring;
    Open;
  end;
  with Dm_Ap1.QApbill1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APBILL WHERE APBILNO = :XAPBILNO ');
    Params[0].Asstring := Dm_Ap1.QAppaytr.FieldByName('INVNO').Asstring;
    Open;
  end;

  with Dm_Ap1.QApbiltr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APBILTR WHERE APBILNO = :XAPBILNO ');
    Params[0].Asstring := Dm_Ap1.QAppaytr.FieldByName('INVNO').Asstring;
    Open;
  end;
end;

procedure TDm_Ap1.QAppaytrAfterCancel(DataSet: TDataSet);
begin
  if QAppaytr.Active then
    QAppaytr.CancelUpdates;
  if QAppaytr.Active then
    QAppaytr.CancelUpdates;
  if QApchq.Active then
    QApchq.CancelUpdates;
  if TApinvoi.Active then
    TApinvoi.CancelUpdates;
  if TAppay.Active then
    TAppay.CancelUpdates;
  if QApbill1.Active then
    QApbill1.CancelUpdates;
end;

procedure TDm_Ap1.QApbillAfterCancel(DataSet: TDataSet);
begin
  if QApbill.Active then
    QApbill.CancelUpdates;
  if QApbiltr.Active then
    QApbiltr.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TDm_Ap1.QAppaytr1BeforePost(DataSet: TDataSet);
var
  Total, XNum, Payamt1, Payment_a, Vatrt, Lost_a: Double;
begin

  if (QAppaytr1.FieldByName('CSHAMT').Asfloat + QAppaytr1.FieldByName('CHQAMT').Asfloat) <> (QAppaytr1.FieldByName('NETTOT').Asfloat) then
    SFmain.RaiseException('ยอดชำระจริงไม่ตรงกับยอดเงินชำระ');

  if QAppaytr1.State = Dsinsert then
  begin
    QApinv1.Edit;
    QApinv1.FieldByName('SMPAY').Asfloat := QApinv1.FieldByName('SMPAY').Asfloat
      + QAppaytr1.FieldByName('Total').Asfloat;
    QApinv1.FieldByName('SMCHQ').Asfloat := QApinv1.FieldByName('SMCHQ').Asfloat
      + QAppaytr1.FieldByName('CHQAMT').Asfloat;
    QApinv1.FieldByName('Reduaft').Asfloat := QApinv1.FieldByName('Reduaft').Asfloat
      + QAppaytr1.FieldByName('Disamt').Asfloat;

    QApinv1.FieldByName('KANG').Asfloat := QApinv1.FieldByName('NETTOTAL').Asfloat
      - QApinv1.FieldByName('SMPAY').Asfloat - QApinv1.FieldByName('RTNAMT').Asfloat;

    QApinv1.FieldByName('LPAID').AsDateTime := QAppaytr1.FieldByName('BILLDT').AsDateTime;

    Payamt1 := QAppaytr1.FieldByName('Total').Asfloat;
    Vatrt := QApinv1.FieldByName('Vatrt').Asfloat;

    if QApchq1.Active then
    begin
      Total := 0;
      XNum := 0;
      QApchq1.First;
      while (not QApchq1.Eof) do
      begin
        QApchq1.Edit;
        QApchq1.Fieldbyname('BILLNO').Asstring := QAppaytr1BILLNO.Asstring;
        Total := Total + QApchq1.FieldByname('CHQAMT').AsFloat;
        XNum := XNum + 1;
        QApchq1.Next;
      end;
      QAppaytr1.FieldByName('CHQNUM').Asfloat := XNum;
    end;
  end;
end;

procedure TDm_Ap1.QAppaytr1AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QAppaytr1BILLNO.Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QAppaytr1.Active then
      if (QAppaytr1.ApplyUpdates = 0) then
        QAppaytr1.CommitUpdates
      else
        raise Exception.Create(QAppaytr1.RowError.Message);
    if QApinv1.Active then
      if (QApinv1.ApplyUpdates = 0) then
        QApinv1.CommitUpdates
      else
        raise Exception.Create(QApinv1.RowError.Message);
    if QApchq1.Active then
      if (QApchq1.ApplyUpdates = 0) then
        QApchq1.CommitUpdates
      else
        raise Exception.Create(QApchq1.RowError.Message);

    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    raise;
  end;
  //
  with Dm_Ap1.QAppaytr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APPAYTRN WHERE BILLNO = :XBill ');
    Params[0].Asstring := S;
    Open;
  end;

  with Dm_Ap1.QApchq1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APCHQ WHERE BILLNO = :XBILNO');
    Params[0].Asstring := Dm_Ap1.QAppaytr1.FieldByName('BILLNO').Asstring;
    Open;
  end;

  with Dm_Ap1.QApinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APINVOI WHERE INVNO = :XINVNO');
    Params[0].Asstring := Dm_Ap1.QAppaytr1.Fieldbyname('INVNO').Asstring;
    Open;
  end;
  //
  if Dm_Ap1.QAppaytr1.Fieldbyname('Flag').Asstring <> 'C' then
    with Dm_Ap1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE APINVOI SET KANG=0 WHERE RECVNO=:EDIT AND FLAG=''6'' ');
      Params[0].Asstring := Dm_Ap1.QAppaytr1.Fieldbyname('INVNO').Asstring;
      ExecSql;
    end
  else
    with Dm_Ap1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE APINVOI SET KANG=NETTOTAL WHERE RECVNO=:EDIT AND FLAG=''6'' ');
      Params[0].Asstring := Dm_Ap1.QAppaytr1.Fieldbyname('INVNO').Asstring;
      ExecSql;
    end;

  //
end;

procedure TDm_Ap1.QAppaytr1AfterCancel(DataSet: TDataSet);
begin
  if QAppaytr1.Active then
    QAppaytr1.CancelUpdates;
  if QApinv1.Active then
    QApinv1.CancelUpdates;
  if QApchq1.Active then
    QApchq1.CancelUpdates;
end;

procedure TDm_Ap1.QApinv3BeforePost(DataSet: TDataSet);
begin
  if (QApinv3SMPAY.AsFloat + QApinv3SMCHQ.AsFloat) = 0 then
  begin
    QApinv3.FieldByName('KANG').AsFloat := QApinv3.FieldByName('NETTOTAL').AsFloat;
    QApinv3.FieldByName('BALANCE').AsFloat := QApinv3.FieldByName('TOTAL').AsFloat;
  end
  else
    SFmain.RaiseException('มีการชำระเงินแล้ว');
 // Insert Or edit Taxbuy
  if (QApinv3TAXNO.Asstring <> '') and (QApinv3DEPOSIT.AsString = 'N') then
  begin
    with QTaxbuy do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXBUY WHERE TAXREFNO = :XNO ');
      Params[0].Asstring := QApinv3INVNO.Asstring;
      Open;
      if Bof and Eof then
        Insert
      else
        Edit;
    end;
    ClearAsFloat(QTaxbuy);
    QTaxbuy.Fieldbyname('Locat').Asstring := QAPinv3.Fieldbyname('Locat').Asstring;
    QTaxbuy.Fieldbyname('Taxno').Asstring := QAPinv3.Fieldbyname('Taxno').Asstring;
    QTaxbuy.Fieldbyname('Taxdate').Asstring := QAPinv3.Fieldbyname('Taxdate').Asstring;
    QTaxbuy.Fieldbyname('Taxrefno').Asstring := QAPinv3.Fieldbyname('Invno').Asstring;
    QTaxbuy.Fieldbyname('Desc1').Asstring := QAPinv3.Fieldbyname('Descrp').Asstring;
    QTaxbuy.Fieldbyname('Cuscod').Asstring := QAPinv3.Fieldbyname('APCode').Asstring;
    QTaxbuy.Fieldbyname('Vatrt').Asstring := QAPinv3.Fieldbyname('Vatrt').Asstring;
    QTaxbuy.Fieldbyname('Amount').Asstring := QAPinv3.Fieldbyname('Total').Asstring;
    QTaxbuy.Fieldbyname('Redu').Asstring := QAPinv3.Fieldbyname('Discamt').Asstring;
    QTaxbuy.Fieldbyname('Balance').Asstring := QAPinv3.Fieldbyname('Balance').Asstring;
    QTaxbuy.Fieldbyname('Vat').Asstring := QAPinv3.Fieldbyname('Vatamt').Asstring;
    QTaxbuy.Fieldbyname('Tottax').Asstring := QAPinv3.Fieldbyname('Nettotal').Asstring;
    QTaxbuy.Fieldbyname('Flag').Asstring := '1';  //1:ใบกำกับภาษีซื้อ 2: ใบลดหนี้
    QTaxbuy.Fieldbyname('Userid').Asstring := QAPinv3.Fieldbyname('Userid').Asstring;
    QTaxbuy.Fieldbyname('Time1').Asdatetime := QAPinv3.Fieldbyname('Time1').AsDatetime;
    QTaxbuy.Post;
  end
  else
if (QApinv3TAXNO.Asstring <> '') and (QApinv3DEPOSIT.AsString = 'Y') then
  begin
    with QTaxbuy do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXSAL  WHERE TAXREFNO = :XNO ');
      Params[0].Asstring := QApinv3INVNO.Asstring;
      Open;
      if Bof and Eof then
        Insert
      else
        Edit;
    end;
    ClearAsFloat(QTaxbuy);
    QTaxbuy.Fieldbyname('Locat').Asstring := QAPinv3.Fieldbyname('Locat').Asstring;
    QTaxbuy.Fieldbyname('Taxno').Asstring := QAPinv3.Fieldbyname('Taxno').Asstring;
    QTaxbuy.Fieldbyname('Taxdate').Asstring := QAPinv3.Fieldbyname('Taxdate').Asstring;
    QTaxbuy.Fieldbyname('Taxrefno').Asstring := QAPinv3.Fieldbyname('Invno').Asstring;
    QTaxbuy.Fieldbyname('Desc1').Asstring := ' ออกใบกำกับเงินมัดจำสินค้า ';
    QTaxbuy.Fieldbyname('Cuscod').Asstring := QAPinv3.Fieldbyname('APCode').Asstring;
    QTaxbuy.Fieldbyname('Vatrt').Asstring := QAPinv3.Fieldbyname('Vatrt').Asstring;
    QTaxbuy.Fieldbyname('Amount').Asstring := QAPinv3.Fieldbyname('Total').Asstring;
    QTaxbuy.Fieldbyname('Redu').Asstring := QAPinv3.Fieldbyname('Discamt').Asstring;
    QTaxbuy.Fieldbyname('Balance').Asstring := QAPinv3.Fieldbyname('Balance').Asstring;
    QTaxbuy.Fieldbyname('Vat').Asstring := QAPinv3.Fieldbyname('Vatamt').Asstring;
    QTaxbuy.Fieldbyname('Tottax').Asstring := QAPinv3.Fieldbyname('Nettotal').Asstring;
    QTaxbuy.Fieldbyname('Flag').Asstring := '1';  //1:ใบกำกับภาษีขาย
    QTaxbuy.Fieldbyname('Paytyp').Asstring := 'C';
    QTaxbuy.Fieldbyname('Frsv').Asstring := 'F';
    QTaxbuy.Fieldbyname('Systm').Asstring := 'X';
    QTaxbuy.Fieldbyname('Userid').Asstring := QAPinv3.Fieldbyname('Userid').Asstring;
    QTaxbuy.Fieldbyname('Time1').Asdatetime := QAPinv3.Fieldbyname('Time1').AsDatetime;
    QTaxbuy.Post;
  end;
end;

procedure TDm_Ap1.QApinv3AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QApinv3.Fieldbyname('INVNO').Asstring;

  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QApinv3.Active then
      if (QApinv3.ApplyUpdates = 0) then
        QApinv3.CommitUpdates
      else
        raise Exception.Create(QApinv3.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    if QTaxbuy.Active then
      if (QTaxbuy.ApplyUpdates = 0) then
        QTaxbuy.CommitUpdates
      else
        raise Exception.Create(QTaxbuy.RowError.Message);
    if QAppay1.Active then
      if (QAppay1.ApplyUpdates = 0) then
        QAppay1.CommitUpdates
      else
        raise Exception.Create(QAppay1.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    raise;
  end;
  //
  with QApinv3 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APINVOI WHERE INVNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TDm_Ap1.QApinv3AfterCancel(DataSet: TDataSet);
begin
  if QApinv3.Active then
    QApinv3.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
  if QTaxbuy.Active then
    QTaxbuy.CancelUpdates;
  if QAppay1.Active then
    QAppay1.CancelUpdates;
end;

procedure TDm_Ap1.QApinv3BeforeDelete(DataSet: TDataSet);
begin

  if (QApinv3TAXNO.Asstring <> '') and (QApinv3DEPOSIT.AsString = 'N') then
  begin

    with QTaxbuy do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXBUY WHERE TAXNO = :XNO');
      Params[0].Asstring := QApinv3.FieldByName('TAXNO').Asstring;
      Open;
    end;
    if not (QTaxbuy.Bof and QTaxbuy.Eof) then
    begin
      QTaxbuy.Delete;
    end;
  end
  else if (QApinv3TAXNO.Asstring <> '') and (QApinv3DEPOSIT.AsString = 'Y') then
  begin

    with QUery1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPdate TAXSAL Set CANCELID =:0 ,CANDAT =:1  WHERE TAXNO = :XNO');
      Params[0].Asstring := SFMain.XUser_ID;
      Params[1].Asdatetime := now;
      Params[2].Asstring := QApinv3.FieldByName('TAXNO').Asstring;
      ExecSql;
    end;
  end;


  //
  with QAppay1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APPAY WHERE INVNO = :XNO');
    Params[0].Asstring := QApinv3.FieldByName('INVNO').Asstring;
    Open;
  end;
  if not (QAppay1.Bof and QAppay1.Eof) then
  begin
    QAppay1.First;
    while not QAppay1.Eof do
      QAppay1.Delete;
  end;
end;

procedure TDm_Ap1.QApinv3RECVDTValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  HF := 'H_RVOTH';
  LF := 'L_RVOTH';
  if not (QDBConfig.Active) then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QApinv3.FieldByName('Locat').Asstring;
    DV := QApinv3.FieldByName('RECVDT').asDateTime;
    if QApinv3.State = DsInsert then
    begin
      sqltxt := 'SELECT MAX(RECVNO) AS MAXNO FROM APINVOI WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(RECVNO,2,2)=:EDIT2 AND SUBSTR(RECVNO,5,2)=:EDIT3 AND SUBSTR(RECVNO,7,2)=:EDIT4 AND FLAG = ''E'' ';

      if Duplicate then
        QApinv3.FieldByName('RECVNO').Asstring := MaxNo(HF, LF, LV, sqltxt, DV)
      else
        QApinv3.FieldByName('RECVNO').Asstring := RunNo(HF, LF, LV, DV);
    end;
  end;
end;

procedure TDm_Ap1.QApbiltrAfterPost(DataSet: TDataSet);
var
  Tot1, Tot2, Itm: Double;
begin
  Tot1 := 0;
  Tot2 := 0;
  Itm := 0;
  QApbilTr.DisableControls;
  QApbilTr.First;
  while not QApbilTr.Eof do
  begin
    Tot1 := Tot1 + QApbilTrBALANCE.Asfloat;
    Tot2 := Tot2 + QApbilTrPAYAMT.Asfloat;
    Itm := Itm + 1;
    QApbilTr.Next;
  end;
  QApbilTr.EnableControls;
  QApbill.Edit;
  QApbillAMOUNT.Asfloat := Tot2;
  QApbillITEMS.Asfloat := Itm;
end;

procedure TDm_Ap1.QApinv3LOCATValidate(Sender: TField);
begin
  if QApinv3RECVDT.Asstring <> '' then
    QApinv3RECVDTValidate(Sender);
end;

procedure TDm_Ap1.QApbillLOCATValidate(Sender: TField);
begin
  if Datetimetostr(QApbillBDATE.AsDateTime) <> '30/12/1899' then
    QApbillBDATEValidate(Sender);
end;

procedure TDm_Ap1.QAppaytr1delete;
var
  Payamt1, Payment_a, Vatrt: Double;
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

  QAppaytr1.Edit;
  QAppaytr1.FieldByName('FLAG').Asstring := 'C';
  QAppaytr1.FieldByName('CANCELID').Asstring := SFMain.XUser_ID;
  QAppaytr1.FieldByName('CANDAT').Asdatetime := Now;

  QApinv1.Edit;
  QApinv1.FieldByName('SMPAY').Asfloat := QApinv1.FieldByName('SMPAY').Asfloat
    - QAppaytr1.FieldByName('TOTAL').Asfloat;
  QApinv1.FieldByName('SMCHQ').Asfloat := QApinv1.FieldByName('SMCHQ').Asfloat
    - QAppaytr1.FieldByName('CHQAMT').Asfloat;
  QApinv1.FieldByName('Reduaft').Asfloat := QApinv1.FieldByName('Reduaft').Asfloat
    - QAppaytr1.FieldByName('Disamt').Asfloat;

  QApinv1.FieldByName('KANG').Asfloat := QApinv1.FieldByName('NETTOTAL').Asfloat
    - QApinv1.FieldByName('SMPAY').Asfloat - QApinv1.FieldByName('RTNAMT').Asfloat;

  Payamt1 := QAppaytr1.FieldByName('Total').Asfloat;
  Vatrt := QApinv1.FieldByName('Vatrt').Asfloat;

  QApinv1.Post;
  QAppaytr1.BeforePost := Nil;
  QAppaytr1.Post;
  QAppaytr1.BeforePost := QAppaytr1BeforePost;
end;

procedure TDm_Ap1.QAppaytr1CSHAMTValidate(Sender: TField);
begin

  Dm_Ap1.QAppaytr1.FieldByName('CHQAMT').AsFloat := QAppaytr1NETTOT.Asfloat - Dm_Ap1.QAppaytr1.FieldByName('CSHAMT').AsFloat;
end;

procedure TDm_Ap1.QAppaytr1NewRecord(DataSet: TDataSet);
begin
  if QAppaytr1.State = Dsinsert then
  begin
    ClearAsFloat(QAppaytr1);
    QAPpaytr1LOCAT.Asstring := SFMain.Xlocat;
    QAPpaytr1.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
    QAPpaytr1.Fieldbyname('Time1').Asdatetime := Now;
    QAPpaytr1.Fieldbyname('SYSTM').Asstring := 'AP';
    QAPpaytr1.Fieldbyname('BILLDT').Asdatetime := Date;
    QAPpaytr1.Fieldbyname('PAYTYP').AsString := '02';
    QAPpaytr1.Fieldbyname('PAYCONT').AsString := '1';
    QAPpaytr1Flag.Asstring := '1';
  end;
end;

procedure TDm_Ap1.CloseAll;
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
  QCondpay.Open;
end;

procedure TDm_Ap1.QApinv3NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QApinv3);
  QApinv3LOCAT.Asstring := SFMain.Xlocat;
  QApinv3RECVDT.Asdatetime := Date;
  QApinv3INVDATE.Asdatetime := Date;
  QApinv3INVDUE.Asdatetime := Date;
  QApinv3POSTGLDT.Asdatetime := Date;
  QApinv3.FieldByName('STAT').Asstring := '3';
  QApinv3.FieldByName('FLAG').Asstring := 'E';
  QApinv3.FieldByName('USERID').Asstring := SFMain.XUser_ID;
  QApinv3.FieldByName('TIME1').AsdateTime := Now;
  QApinv3.FieldByName('VATRT').AsFloat := 0; //Condpay.Fieldbyname('VATRT').Asfloat;
  QApinv3.FieldByName('YEAR1').Asstring := Condpay.Fieldbyname('CURYEAR').AsString;
  QApinv3TNOPAY.Asfloat := 1;
  QApinv3DEPOSIT.Asstring := 'Y';
  if Condpay.FieldByName('VATTYPE').AsString <> '' then
    QApinv3VATTYPE.Asstring := Condpay.FieldByName('VATTYPE').AsString
  else
    QApinv3VATTYPE.Asstring := '2';

  QApinv3PAYCD.AsString := '01';
end;

procedure TDm_Ap1.QApbiltr1AfterOpen(DataSet: TDataSet);
begin
  TApinvoi.Open;
  TAppay.Open;
end;

procedure TDm_Ap1.QAppaytrCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QAppaytr.CachedUpdates then
    QAppaytrUpdateStatus.Value := UpdateStatusStr[QAppaytr.UpdateStatus];
end;

procedure TDm_Ap1.QApbillNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QApbill);
  QApbillLOCAT.Asstring := SFMain.Xlocat;
  QApbillBDATE.Asdatetime := Date;
  QApbill.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
  QApbill.Fieldbyname('Time1').Asdatetime := Now;
  QApbillTYPE.Asstring := '1';
end;

procedure TDm_Ap1.QAppaytrNewRecord(DataSet: TDataSet);
begin
  if not QCondpay.Active then
    QCondpay.open;

  ClearAsFloat(QAppaytr);
  QAPpaytrLOCAT.Asstring := SFMain.Xlocat;
  QAPpaytr.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
  QAPpaytr.Fieldbyname('Time1').Asdatetime := Now;
  QAPpaytr.Fieldbyname('SYSTM').Asstring := 'AP_BILL';
  QAPpaytr.Fieldbyname('BILLDT').Asdatetime := Date;
  QAPpaytr.Fieldbyname('PAYTYP').AsString := '02';
  QAPpaytr.Fieldbyname('PAYCONT').AsString := '2';
  QAPpaytrFlag.Asstring := '1';
end;

procedure TDm_Ap1.QAppaytrDelete;
var
  Payamt1, Payment_a, Vatrt: Double;
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

  QAppaytr.Edit;
  QAppaytr.FieldByName('FLAG').Asstring := 'C';
  QAppaytr.FieldByName('CANCELID').Asstring := SFMain.XUser_ID;
  QAppaytr.FieldByName('CANDAT').Asdatetime := Now;
  //
  QApbill1.Edit;
  QApbill1.Fieldbyname('REFBIL').Asstring := '';
  //


  with QApbiltr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APBILTR WHERE APBILNO = :XAPBILNO ');
    Params[0].Asstring := QAppaytr.FieldByName('INVNO').Asstring;
    ;
    Open;
  end;
  if QApbiltr1.Eof and QApbiltr1.Bof then
    SFmain.RaiseException('ไม่มีรายการบิล');

  QApbiltr1.First;
  while not (QApbiltr1.eof) do
  begin
    TApinvoi.Edit;
    if QApbiltr1.FieldByName('Payamt').Asfloat > 0 then
    begin
      if QAppaytr.FieldByName('Paytyp').Asstring = '02' then
      begin
        if Dm_Ap1.QApbill1.Fieldbyname('TYPE').Asstring = '1' then
          TApinvoi.FieldByName('SMCHQ').Asfloat := TApinvoi.FieldByName('SMCHQ').Asfloat
            - ABS(QApbiltr1.FieldByName('Payamt').Asfloat)
        else
          TApinvoi.FieldByName('SMCHQ').Asfloat := TApinvoi.FieldByName('SMCHQ').Asfloat
            - ABS(QApbiltr1.FieldByName('Payamt').Asfloat) + TApinvoi.FieldByName('RTNAMT').Asfloat;
      end
      else
      begin
        if Dm_Ap1.QApbill1.Fieldbyname('TYPE').Asstring = '1' then
          TApinvoi.FieldByName('SMPAY').Asfloat := TApinvoi.FieldByName('SMPAY').Asfloat
            - ABS(QApbiltr1.FieldByName('Payamt').Asfloat)
        else
          TApinvoi.FieldByName('SMPAY').Asfloat := TApinvoi.FieldByName('SMPAY').Asfloat
            - ABS(QApbiltr1.FieldByName('Payamt').Asfloat) + TApinvoi.FieldByName('RTNAMT').Asfloat;
      end;
      TApinvoi.FieldByName('KANG').Asfloat := TApinvoi.FieldByName('NETTOTAL').Asfloat
        - TApinvoi.FieldByName('SMPAY').Asfloat - TApinvoi.FieldByName('SMCHQ').Asfloat - TApinvoi.FieldByName('RTNAMT').Asfloat;

      Payamt1 := QApbiltr1.FieldByName('PAYAMT').Asfloat;
      Vatrt := TApinvoi.FieldByName('Vatrt').Asfloat;
      TApinvoi.Post;

      //Update Arpay
      TAppay.First;
      while not (TAppay.Eof) and (TAppayPAYMENT.Asfloat > 0) do
        TAppay.Next;

      if TAppay.Eof then
        TAppay.Last
      else
        TAppay.Prior;

      while not (TAppay.Bof) and (Payamt1 > 0) do
      begin
        if Payamt1 > TAppayPAYMENT.Asfloat then
        begin
          Payment_a := 0;
          Payamt1 := Payamt1 - TAppayPAYMENT.Asfloat;
        end
        else
        begin
          Payment_a := TAppayPAYMENT.Asfloat - Payamt1;
          Payamt1 := 0;
        end;
        TAppay.Edit;
        TAppayDATE1.Asstring := '';
        TAppayPAYMENT.Asfloat := Payment_a;
        TAppayV_PAYMENT.Asfloat := Payment_a * Vatrt / (100 + Vatrt);
        TAppayN_PAYMENT.Asfloat := Payment_a - TAppayV_PAYMENT.Asfloat;
        TAppay.Post;
        TAppay.Prior;
      end;
    end;
    QApbiltr1.Next;
  end;
  QAppaytr.BeforePost := Nil;
  QAppaytr.Post;
  QAppaytr.BeforePost := QAppaytrBeforePost;
end;

procedure TDm_Ap1.Appay05BeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
end;

procedure TDm_Ap1.Dm_Ap1Create(Sender: TObject);
begin
  Condpay.open;
end;

procedure TDm_Ap1.QApinv3OFFICCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:OFFICCOD');
    Params[0].Asstring := QApinv3OFFICCOD.Asstring;
    Open;
  end;
  if Query1.EOF and Query1.BOF then
    SFmain.RaiseException('ไม่มีข้อมูล');
end;

procedure TDm_Ap1.QApchq1NewRecord(DataSet: TDataSet);
begin
  if QAppaytr1BILLNO.Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกเลขใบเสร็จ หรือหากบันทึกแล้วให้เคาะ <Enter>');

  QApChq1.FieldByName('BILLNO').Asstring := QAppaytr1.FieldByName('BILLNO').Asstring;
  QApChq1.FieldByName('LOCAT').Asstring := QAppaytr1.FieldByName('LOCAT').Asstring;
end;

procedure TDm_Ap1.QApbiltr1BeforeClose(DataSet: TDataSet);
begin
  TApinvoi.Close;
  TAppay.Close;
end;

procedure TDm_Ap1.QApchqBeforePost(DataSet: TDataSet);
begin
  if QApchq.Fieldbyname('BILLNO').Asstring = '' then
    QApchq.Fieldbyname('BILLNO').Asstring := QAppaytrBILLNO.Asstring;
end;

procedure TDm_Ap1.QAppaytr1BILLNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM APPAYTRN WHERE BILLNO=:EDIT1');
    Params[0].asstring := QAppaytr1BILLNO.Asstring;
    Open;
    if not (Bof and Eof) then
      SFmain.RaiseException('เลขที่ใบเสร็จซ้ำ หากต้องการชำระหลาย Inv. ในใบเสร็จใบเดียว ให้ชำระโดยการออกใบวางบิลก่อน แล้วชำระตามใบวางบิล');
  end;
  //
  with Dm_Ap1.QApchq1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APCHQ WHERE BILLNO= :XBILNO  ');
    Params[0].Asstring := Dm_Ap1.QAppaytr1BILLNO.Asstring;
    Open;
  end;
end;

procedure TDm_Ap1.QAppaytrBILLNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM APPAYTRN WHERE BILLNO=:EDIT1');
    Params[0].asstring := QAppaytrBILLNO.Asstring;
    Open;
    if not (Bof and Eof) then
      SFmain.RaiseException('เลขที่ใบเสร็จซ้ำกับของเดิม');
  end;
  with Dm_Ap1.QApchq do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APCHQ WHERE BILLNO= :XBILNO  ');
    Params[0].Asstring := QAppaytrBILLNO.Asstring;
    Open;
  end;
end;

procedure TDm_Ap1.QAppaytrINVNOValidate(Sender: TField);
begin
  if QAppaytrINVNO.Asstring <> '' then
  begin
    with Dm_Ap1.QApbill1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM APBILL WHERE APBILNO = :XAPBILNO ');
      Params[0].Asstring := QAppaytrINVNO.Asstring;
      Open;
      if Bof and Eof then
        SFmain.RaiseException('ไม่พบเลขที่ใบวางบิล');
    end;
    if Dm_Ap1.QApbill1.Fieldbyname('Refbil').Asstring <> '' then
      SFmain.RaiseException('ใบวางบิลนี้ชำระเงินแล้ว');

    //Dm_Ap1.QAppaytr.FieldByName('INVNO').Asstring   := Dm_Ap1.QApbill1.FieldByName('APBILNO').Asstring;
    Dm_Ap1.QAppaytr.FieldByName('APcode').Asstring := Dm_Ap1.QApbill1.FieldByName('APcode').Asstring;

    Dm_Ap1.QAppaytr.FieldByName('TOTAL').AsFloat := Dm_Ap1.QApbill1.FieldByName('Amount').AsFloat;

    with Dm_Ap1.QApbiltr1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM APBILTR WHERE APBILNO = :XBILNO ');
      Params[0].Asstring := Dm_Ap1.QApbill1.FieldByName('APBILNO').Asstring;
      Open;
    end;
  end;
end;

procedure TDm_Ap1.QTaxbuy2AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QTaxbuy2.FieldByName('TAXNO').Asstring;
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QTaxbuy2.Active then
      if (QTaxbuy2.ApplyUpdates = 0) then
        QTaxbuy2.CommitUpdates
      else
        raise Exception.Create(QTaxbuy2.RowError.Message);
    if QApinv2.Active then
      if (QApinv2.ApplyUpdates = 0) then
        QApinv2.CommitUpdates
      else
        raise Exception.Create(QApinv2.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    QTaxbuy2.Edit;
    raise;
  end;
  if QTaxbuy2.Active then
    QTaxbuy2.CommitUpdates;
  if QApinv2.Active then
    QApinv2.CommitUpdates;
  if QLastno.Active then
    QLastno.CommitUpdates;
  //
  with Dm_Ap1.QTaxBuy2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXBUY WHERE TAXNO = :XNOO ');
    Params[0].Asstring := S;
    Open;
  end;
  //
  with Dm_Ap1.QApinv2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APINVOI WHERE TAXNO=:EDIT1');
    Params[0].Asstring := Dm_Ap1.QTaxbuy2TAXREFNO.Asstring;
    Open;
  end;
end;

procedure TDm_Ap1.QTaxbuy2TAXDATEValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  HF := 'H_RTG';
  LF := 'L_RTG';

  LV := QTaxbuy2.FieldByName('Locat').Asstring;
  DV := QTaxbuy2.FieldByName('TAXDATE').asDateTime;
  if QTaxbuy2.State = DsInsert then
    QTaxbuy2.FieldByName('TAXNO').Asstring := RunNo(HF, LF, LV, DV);
end;

procedure TDm_Ap1.QTaxbuy2NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QTaxbuy2);
  QTaxbuy2.FieldByName('Locat').Asstring := SFMain.Xlocat;
  QTaxbuy2.FieldByName('TAXDATE').Asdatetime := Date;
  QTaxbuy2.FieldByName('FLAG').Asstring := '6';
  QTaxbuy2.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
  QTaxbuy2.Fieldbyname('Time1').Asdatetime := Now;
end;

procedure TDm_Ap1.QTaxbuy2TAXREFNOValidate(Sender: TField);
begin
  with Dm_Ap1.QApinv2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APINVOI WHERE TAXNO=:EDIT1');
    Params[0].Asstring := QTaxbuy2TAXREFNO.Asstring;
    Open;
    if not (Bof and Eof) then
    begin
      QTaxbuy2CUSCOD.Asstring := QApinv2.Fieldbyname('Apcode').Asstring;
      QTaxbuy2VATRT.Asfloat := QApinv2.Fieldbyname('Vatrt').AsFloat;
    end
    else
      SFmain.RaiseException('ไม่พบเลขใบกำกับนี้');
  end;
end;

procedure TDm_Ap1.QTaxbuy2AMOUNTValidate(Sender: TField);
begin
  if QApinv2.Active then
    if QTaxbuy2AMOUNT.Asfloat > QApinv2.Fieldbyname('Balance').Asfloat then
      SFmain.RaiseException('จำนวนลดหนี้มากกว่ายอด Inv.');
  QTaxbuy2REDUValidate(Sender);
end;

procedure TDm_Ap1.QTaxbuy2AfterCancel(DataSet: TDataSet);
begin
  if QTaxbuy2.Active then
    QTaxbuy2.CancelUpdates;
  if QApinv2.Active then
    QApinv2.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TDm_Ap1.QTaxbuy2BeforePost(DataSet: TDataSet);
begin
  if QTaxbuy2.State = Dsinsert then
  begin
    Dm_Ap1.QApinv2.Edit;
    Dm_Ap1.QApinv2.Fieldbyname('RTNAMT').Asfloat := Dm_Ap1.QApinv2.Fieldbyname('RTNAMT').Asfloat +
      QTaxbuy2TOTTAX.Asfloat;
    Dm_Ap1.QApinv2.Fieldbyname('Kang').Asfloat := Dm_Ap1.QApinv2.Fieldbyname('NETTOTAL').Asfloat -
      Dm_Ap1.QApinv2.Fieldbyname('SMPAY').Asfloat - Dm_Ap1.QApinv2.Fieldbyname('SMCHQ').Asfloat -
      Dm_Ap1.QApinv2.Fieldbyname('RTNAMT').Asfloat;
    Dm_Ap1.QApinv2.Fieldbyname('RTNDATE').Asdatetime := QTaxbuy2TAXDATE.Asdatetime;
    Dm_Ap1.QApinv2.Post;
  end;
end;

procedure TDm_Ap1.QTaxbuy2REDUValidate(Sender: TField);
begin
  QTaxbuy2BALANCE.Asfloat := QTaxbuy2AMOUNT.Asfloat;
  QTaxbuy2VAT.Asfloat := FRound((QTaxbuy2AMOUNT.Asfloat * QTaxbuy2VATRT.Asfloat / 100), 2);
  QTaxbuy2TOTTAX.Asfloat := QTaxbuy2BALANCE.Asfloat + QTaxbuy2VAT.Asfloat;
end;

procedure TDm_Ap1.QApchq1BeforePost(DataSet: TDataSet);
begin
  if QApchq1.Fieldbyname('BILLNO').Asstring = '' then
    QApchq1.Fieldbyname('BILLNO').Asstring := QAppaytr1BILLNO.Asstring;
end;

procedure TDm_Ap1.QApchqNewRecord(DataSet: TDataSet);
begin
  if QAppaytrBILLNO.Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกเลขใบเสร็จ หรือหากบันทึกแล้วให้เคาะ <Enter>');
  QApchq.FieldByName('LOCAT').Asstring := QAppaytr.FieldByName('LOCAT').Asstring;
  QApchq.FieldByName('BILLNO').Asstring := QAppaytrBILLNO.Asstring;
end;

procedure TDm_Ap1.QAppaytr1VAT3Validate(Sender: TField);
var
  Tott, vatrt: real;
begin
  Tott := QAppaytr1TOTAL.Asfloat;
  vatrt := (QAppaytr1TOTAL.Asfloat * Dm_Ap1.QApinv1.fieldbyname('VATRT').asfloat) / (100 + Dm_Ap1.QApinv1.fieldbyname('VATRT').asfloat);
  QAppaytr1VAT3AMT.Asfloat := FRound((Tott - vatrt) * QAppaytr1VAT3.Asfloat / 100, 2);
  QAppaytr1NETTOT.Asfloat := (QAppaytr1TOTAL.Asfloat + QAppaytr1ADDAMT.Asfloat) - (QAppaytr1VAT3AMT.Asfloat + QAppaytr1DISAMT.Asfloat);
end;

procedure TDm_Ap1.QApinv3CREDTMValidate(Sender: TField);
begin
  Dm_Ap1.QApinv3INVDUE.Asdatetime := Dm_Ap1.QApinv3INVDATE.Asdatetime + Dm_Ap1.QApinv3CREDTM.Asfloat;
end;

procedure TDm_Ap1.QAppaytrVAT3Validate(Sender: TField);
var
  Tott, vatrt: real;
begin

  Tott := QAppaytrTOTAL.Asfloat;
  vatrt := (QAppaytrTOTAL.Asfloat * QCondpay.Fieldbyname('Vatrt').Asfloat) / (100 + QCondpay.Fieldbyname('Vatrt').Asfloat);
  QAppaytrVAT3AMT.Asfloat := FRound((Tott - vatrt) * QAppaytrVAT3.Asfloat / 100, 2);
  QAppaytrNETTOT.Asfloat := (QAppaytrTOTAL.Asfloat + QAppaytrADDAMT.Asfloat) - (QAppaytrVAT3AMT.Asfloat + QAppaytrDISAMT.Asfloat);
end;

procedure TDm_Ap1.QAppaytrVAT3AMTValidate(Sender: TField);
begin
  QAppaytrNETTOT.Asfloat := (QAppaytrTOTAL.Asfloat + QAppaytrADDAMT.Asfloat) - (QAppaytrVAT3AMT.Asfloat + QAppaytrDISAMT.Asfloat);
end;

procedure TDm_Ap1.QAppaytrADDAMTValidate(Sender: TField);
begin
  QAppaytrNETTOT.Asfloat := (QAppaytrTOTAL.Asfloat + QAppaytrADDAMT.Asfloat) - (QAppaytrVAT3AMT.Asfloat + QAppaytrDISAMT.Asfloat);
end;

procedure TDm_Ap1.QAppaytr1ADDAMTValidate(Sender: TField);
begin
  QAppaytr1NETTOT.Asfloat := (QAppaytr1TOTAL.Asfloat + QAppaytr1ADDAMT.Asfloat) - (QAppaytr1VAT3AMT.Asfloat + QAppaytr1DISAMT.Asfloat);
end;

procedure TDm_Ap1.QAppaytr1DISAMTValidate(Sender: TField);
begin
  if (QAppaytr1.FieldByName('TOTAL').Asfloat < QAppaytr1.FieldByName('DISAMT').Asfloat) then
    SFmain.RaiseException('ยอดส่วนลดมากกว่ายอดตัดหนี้');

  QAppaytr1NETTOT.Asfloat := (QAppaytr1TOTAL.Asfloat + QAppaytr1ADDAMT.Asfloat) - (QAppaytr1VAT3AMT.Asfloat + QAppaytr1DISAMT.Asfloat);
end;

procedure TDm_Ap1.QAppaytr1VAT3AMTValidate(Sender: TField);
begin
  QAppaytr1NETTOT.Asfloat := (QAppaytr1TOTAL.Asfloat + QAppaytr1ADDAMT.Asfloat) - (QAppaytr1VAT3AMT.Asfloat + QAppaytr1DISAMT.Asfloat);
end;

procedure TDm_Ap1.QAppaytr1TOTALValidate(Sender: TField);
begin
  if Dm_Ap1.QAppaytr1.FieldByName('TOTAL').AsFloat > Dm_Ap1.QApinv1.FieldByName('KANG').AsFloat then
    SFmain.RaiseException(' ยอดชำระมากกว่ายอดคงเหลือไม่ได้ โปรดทำการตรวจสอบ');

  QAppaytr1NETTOT.Asfloat := (QAppaytr1TOTAL.Asfloat + QAppaytr1ADDAMT.Asfloat) - (QAppaytr1VAT3AMT.Asfloat + QAppaytr1DISAMT.Asfloat);
end;

procedure TDm_Ap1.QAppaytr1NETTOTValidate(Sender: TField);
begin

  if Dm_Ap1.QAppaytr1Paytyp.Asstring = '01' then
  begin
    Dm_Ap1.QAppaytr1.FieldByName('CSHAMT').AsFloat := QAppaytr1NETTOT.Asfloat;
    Dm_Ap1.QAppaytr1.FieldByName('CHQAMT').AsFloat := 0;
  end
  else
  begin
    Dm_Ap1.QAppaytr1.FieldByName('CHQAMT').AsFloat := QAppaytr1NETTOT.Asfloat;
    Dm_Ap1.QAppaytr1.FieldByName('CSHAMT').AsFloat := 0;
  end;
end;

procedure TDm_Ap1.QAppaytr1PAYTYPValidate(Sender: TField);
begin
  QAppaytr1NETTOTValidate(QAppaytr1NETTOT);
end;

procedure TDm_Ap1.QAppaytrTOTALValidate(Sender: TField);
begin
  if Dm_Ap1.QAppaytr.FieldByName('TOTAL').AsFloat <> 0 then
  begin
    if Dm_Ap1.QAppaytr.FieldByName('TOTAL').AsFloat <> Dm_Ap1.QApbill1.FieldByName('Amount').AsFloat then
      SFmain.RaiseException('ยอดตัดเจ้าหน้ไม่เท่ากับยอดตั้งเจ้าหนี้ โปรดทำการตรวจสอบ');
  end;

  QAppaytrNETTOT.Asfloat := (QAppaytrTOTAL.Asfloat + QAppaytrADDAMT.Asfloat) - (QAppaytrVAT3AMT.Asfloat + QAppaytrDISAMT.Asfloat);
end;

procedure TDm_Ap1.QAppaytrNETTOTValidate(Sender: TField);
begin

  if Dm_Ap1.QAppaytrPaytyp.Asstring = '01' then
  begin
    Dm_Ap1.QAppaytr.FieldByName('CSHAMT').AsFloat := QAppaytrNETTOT.Asfloat;
    Dm_Ap1.QAppaytr.FieldByName('CHQAMT').AsFloat := 0;
  end
  else
  begin
    Dm_Ap1.QAppaytr.FieldByName('CHQAMT').AsFloat := QAppaytrNETTOT.Asfloat;
    Dm_Ap1.QAppaytr.FieldByName('CSHAMT').AsFloat := 0;
  end;
end;

procedure TDm_Ap1.QAppaytrCSHAMTValidate(Sender: TField);
begin
  Dm_Ap1.QAppaytr.FieldByName('CHQAMT').AsFloat := QAppaytrNETTOT.Asfloat - Dm_Ap1.QAppaytr.FieldByName('CSHAMT').AsFloat;
end;

procedure TDm_Ap1.QApinv3INVNOValidate(Sender: TField);
begin
  SFMain.Fieldexist('VIEW_AP', 'INVNO', QApinv3INVNO.AsString);
end;

procedure TDm_Ap1.QApinv3RECVNOChange(Sender: TField);
begin
  Dm_Ap1.QApinv3INVNO.AsString := Dm_Ap1.QApinv3RECVNO.AsString;
end;

procedure TDm_Ap1.QApinv3UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  if (AException is EFDDBEngineException) then
    if (AException as EFDDBEngineException).Errors[0].Errorcode = eKeyViol then
    begin
      Duplicate := True;
    end;
end;

end.

