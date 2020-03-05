unit DmAr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDm_Ar = class(TDataModule)
    QArbill: TFDQuery;
    SoArbill: TDataSource;
    QArbilTr: TFDQuery;
    SoArbilTr: TDataSource;
    QCondpay: TFDQuery;
    QLastno: TFDQuery;
    Query1: TFDQuery;
    QArPay1: TFDQuery;
    SoArPay1: TDataSource;
    QArinv1: TFDQuery;
    SoArinv1: TDataSource;
    QOfficer: TFDQuery;
    QOfficerOFFICCOD: TStringField;
    QOfficerOFFICNAM: TStringField;
    QArpaytr: TFDQuery;
    SoArpaytr: TDataSource;
    QArbill1: TFDQuery;
    SoArbill1: TDataSource;
    QArchq: TFDQuery;
    SoArchq: TDataSource;
    QArpaytr1: TFDQuery;
    SoArpaytr1: TDataSource;
    QArinv2: TFDQuery;
    SoArinv2: TDataSource;
    QArinv1INVNO: TStringField;
    QArinv1LOCAT: TStringField;
    QArinv1CUSCODE: TStringField;
    QArinv1OFFICCOD: TStringField;
    QArinv1INVDATE: TDateField;
    QArinv1DESCRP: TStringField;
    QArinv1VATTYPE: TStringField;
    QArinv1TOTAL: TFloatField;
    QArinv1DISCT: TFloatField;
    QArinv1DISCAMT: TFloatField;
    QArinv1BALANCE: TFloatField;
    QArinv1VATRT: TFloatField;
    QArinv1VATAMT: TFloatField;
    QArinv1NETTOTAL: TFloatField;
    QArinv1SMPAY: TFloatField;
    QArinv1SMCHQ: TFloatField;
    QArinv1LPAID: TDateField;
    QArinv1KANG: TFloatField;
    QArinv1REDUAFT: TFloatField;
    QArinv1TAXREFNO: TStringField;
    QArinv1L_DUE: TDateField;
    QArinv1BILL: TStringField;
    QArinv1JOBNO: TStringField;
    QArinv1FLAG: TStringField;
    QArinv1STAT: TStringField;
    QArinv1POST: TStringField;
    QArinv1MEMO1: TMemoField;
    QArinv1CREDTM: TFloatField;
    QArinv1TNOPAY: TFloatField;
    QArinv1TAXNO: TStringField;
    QArinv1INVDUE: TDateField;
    QArinv1TAXDATE: TDateField;
    QArpaytrBILLNO: TStringField;
    QArpaytrLOCAT: TStringField;
    QArpaytrBILLDT: TDateField;
    QArpaytrCUSCODE: TStringField;
    QArpaytrPAYCONT: TStringField;
    QArpaytrCHQNUM: TFloatField;
    QArpaytrCHQAMT: TFloatField;
    QArpaytrCSHAMT: TFloatField;
    QArpaytrTOTAL: TFloatField;
    QArpaytrDISCT: TFloatField;
    QArpaytrINVNO: TStringField;
    QArpaytrUSERID: TStringField;
    QArpaytrNETTOT: TFloatField;
    QArpaytr1BILLNO: TStringField;
    QArpaytr1LOCAT: TStringField;
    QArpaytr1BILLDT: TDateField;
    QArpaytr1CUSCODE: TStringField;
    QArpaytr1PAYTYP: TStringField;
    QArpaytr1PAYCONT: TStringField;
    QArpaytr1CHQNUM: TFloatField;
    QArpaytr1CHQAMT: TFloatField;
    QArpaytr1CSHAMT: TFloatField;
    QArpaytr1TOTAL: TFloatField;
    QArpaytr1DISCT: TFloatField;
    QArpaytr1INVNO: TStringField;
    QArpaytr1USERID: TStringField;
    QArpaytr1TIME1: TDateTimeField;
    QArpaytr1NETTOT: TFloatField;
    QArinv1REFINV: TStringField;
    QArinv1USERID: TStringField;
    Arinv05: TFDQuery;
    SoArinv05: TDataSource;
    Arinv05INVNO: TStringField;
    Arinv05LOCAT: TStringField;
    Arinv05CUSCODE: TStringField;
    Arinv05OFFICCOD: TStringField;
    Arinv05INVDATE: TDateField;
    Arinv05DESCRP: TStringField;
    Arinv05VATTYPE: TStringField;
    Arinv05TOTAL: TFloatField;
    Arinv05DISCT: TFloatField;
    Arinv05DISCAMT: TFloatField;
    Arinv05BALANCE: TFloatField;
    Arinv05VATRT: TFloatField;
    Arinv05VATAMT: TFloatField;
    Arinv05NETTOTAL: TFloatField;
    Arinv05SMPAY: TFloatField;
    Arinv05SMCHQ: TFloatField;
    Arinv05LPAID: TDateField;
    Arinv05KANG: TFloatField;
    Arinv05REDUAFT: TFloatField;
    Arinv05TAXREFNO: TStringField;
    Arinv05L_DUE: TDateField;
    Arinv05BILL: TStringField;
    Arinv05JOBNO: TStringField;
    Arinv05FLAG: TStringField;
    Arinv05STAT: TStringField;
    Arinv05POST: TStringField;
    Arinv05MEMO1: TMemoField;
    Arinv05CREDTM: TFloatField;
    Arinv05TNOPAY: TFloatField;
    Arinv05TAXNO: TStringField;
    Arinv05INVDUE: TDateField;
    Arinv05TAXDATE: TDateField;
    Arinv05REFINV: TStringField;
    Arinv05USERID: TStringField;
    Arinv05TIME1: TDateTimeField;
    QArpaytr1FLAG: TStringField;
    QArpaytrFLAG: TStringField;
    QArbillARBILNO: TStringField;
    QArbillLOCAT: TStringField;
    QArbillBDATE: TDateField;
    QArbillCUSCODE: TStringField;
    QArbillDESC: TStringField;
    QArbillDATE1: TDateField;
    QArbillITEMS: TFloatField;
    QArbillAMOUNT: TFloatField;
    QArbillPAYAMT: TFloatField;
    QArbillFDUE: TDateField;
    QArbillLDUE: TDateField;
    QArbillREFBIL: TStringField;
    QArbillUSERID: TStringField;
    QArbillTIME1: TDateTimeField;
    QArpaytrDISAMT: TFloatField;
    QArpaytr1DISAMT: TFloatField;
    QArpaytr1JOBNO: TStringField;
    QArpaytrTIME1: TDateTimeField;
    QArpaytrCANCELID: TStringField;
    QArpaytrCANDAT: TDateTimeField;
    QArpaytrPOSTGLDT: TDateTimeField;
    QArpaytrIDCARD: TStringField;
    QArpaytrIDEXPDT: TDateField;
    QArpaytrVAT3: TFloatField;
    QArpaytrVAT3AMT: TFloatField;
    QArinv1TIME1: TDateTimeField;
    QArinv1CANCELID: TStringField;
    QArinv1CANDAT: TDateTimeField;
    QArinv1POSTGLDT: TDateTimeField;
    QArpaytr1CANCELID: TStringField;
    QArpaytr1CANDAT: TDateTimeField;
    QArpaytrPAYTYP: TStringField;
    QArpaytrADDAMT: TFloatField;
    QArpaytrJOBNO: TStringField;
    QArpaytrSYSTM: TStringField;
    QArpaytrMEMO1: TMemoField;
    QArpaytr1IDCARD: TStringField;
    QArpaytr1IDEXPDT: TDateField;
    QArpaytr1ADDAMT: TFloatField;
    QArpaytr1VAT3: TFloatField;
    QArpaytr1VAT3AMT: TFloatField;
    QArpaytr1SYSTM: TStringField;
    Query2: TFDQuery;
    QArbiltr1: TFDQuery;
    SoArbiltr1: TDataSource;
    QInvbil: TFDQuery;
    SoInvbil: TDataSource;
    QArpaytr1UpdateStatus: TStringField;
    QArbilTrARBILNO: TStringField;
    QArbilTrLOCAT: TStringField;
    QArbilTrINVNO: TStringField;
    QArbilTrINVDATE: TDateField;
    QArbilTrDUEDATE: TDateField;
    QArbilTrBALANCE: TFloatField;
    QArbilTrPAYAMT: TFloatField;
    QArbillUpdateStatus: TStringField;
    QArpaytrUpdateStatus: TStringField;
    TArinvoi: TFDTable;
    QArinv2INVNO: TStringField;
    QArinv2LOCAT: TStringField;
    QArinv2CUSCODE: TStringField;
    QArinv2INVDATE: TDateField;
    QArinv2NETTOTAL: TFloatField;
    QArinv2SMPAY: TFloatField;
    QArinv2SMCHQ: TFloatField;
    QArinv2LPAID: TDateField;
    QArinv2KANG: TFloatField;
    QArinv2REDUAFT: TFloatField;
    QArinv2VATRT: TFloatField;
    QTaxsal: TFDQuery;
    QDbconfig: TFDQuery;
    SoDbconfig: TDataSource;
    QArinv2BILL: TStringField;
    QArinv2RTNAMT: TFloatField;
    QArinv2RTNDATE: TDateField;
    QArinv2RTNNO: TStringField;
    QAr_Serv1: TFDQuery;
    QArinv2JOBNO: TStringField;
    QArcred: TFDQuery;
    QArfinc: TFDQuery;
    QArinv2REFINV: TStringField;
    QArinv2TAXREFNO: TStringField;
    QOthinv: TFDQuery;
    QArinv2BALANCE: TFloatField;
    QArinv2VATAMT: TFloatField;
    QArinv2Netamt_a: TFloatField;
    QArbilTrJOBNO: TStringField;
    QArbilTrTAXNO: TStringField;
    QArbilTrTAXDATE: TDateField;
    QArinv1RTNAMT: TFloatField;
    QArinv1RTNDATE: TDateField;
    QArinv1RTNNO: TStringField;
    QArbillTYPE: TStringField;
    QArbilTrBF_VAT: TFloatField;
    QArbilTrVATAMT: TFloatField;
    QArbillBF_VAT: TFloatField;
    QArbillVATAMT: TFloatField;
    QArpaytr1BKCODE: TStringField;
    QArpaytr1TAXNO: TStringField;
    QArpaytrBKCODE: TStringField;
    QArpaytrBOOKNO: TStringField;
    QArpaytr1BOOKNO: TStringField;
    QArinv2TAXNO: TStringField;
    QArinv1PAYFOR: TStringField;
    QPayfor: TFDQuery;
    QArpaytr1PAYFOR: TStringField;
    QArinv2PAYFOR: TStringField;
    QVatMast: TFDQuery;
    SoArOthr: TDataSource;
    QArOthr: TFDQuery;
    QArOthrARCONT: TStringField;
    QArOthrTSALE: TStringField;
    QArOthrCONTNO: TStringField;
    QArOthrCUSCOD: TStringField;
    QArOthrLOCAT: TStringField;
    QArOthrPAYFOR: TStringField;
    QArOthrPAYAMT: TFloatField;
    QArOthrVATRT: TFloatField;
    QArOthrTAXNO: TStringField;
    QArOthrARDATE: TDateField;
    QArOthrSMPAY: TFloatField;
    QArOthrSMCHQ: TFloatField;
    QArOthrBALANCE: TFloatField;
    QArOthrUSERID: TStringField;
    QArOthrUpdateStatus: TStringField;
    QArOthrDDATE: TDateField;
    QArOthrINPDT: TDateTimeField;
    QArOthrFOLLOWCODE: TStringField;
    QArOthrMEMO1: TMemoField;
    QArpaytrPOSTGL: TStringField;
    QArpaytr1POSTGL: TStringField;
    QArchqBILLNO: TStringField;
    QArchqLOCAT: TStringField;
    QArchqCHQNO: TStringField;
    QArchqCHQDUE: TDateField;
    QArchqBKCODE: TStringField;
    QArchqBKBRAN: TStringField;
    QArchqCHQAMT: TFloatField;
    QArchqPAYINDT: TDateField;
    QArchqPOSTCHQ: TDateField;
    QArchqSTATUS: TStringField;
    QArchqUSERID: TStringField;
    QArchqTIME1: TDateTimeField;
    QArpaytrTAXNO: TStringField;
    QArpaytrPAYFOR: TStringField;
    QArpaytrCLAIMTYP: TStringField;
    QArpaytrCREDITAMT: TFloatField;
    QArpaytrBANKAMT: TFloatField;
    QArpaytr1MEMO1: TMemoField;
    QArpaytr1POSTGLDT: TDateTimeField;
    QArpaytr1CLAIMTYP: TStringField;
    QArpaytr1CREDITAMT: TFloatField;
    QArpaytr1BANKAMT: TFloatField;
    QArpaytrn_Typ: TFDQuery;
    QArpaytrn_TypPAYCODE: TStringField;
    QArpaytrn_TypBANKCOD: TStringField;
    QArpaytrn_TypDTONCHQ: TDateField;
    QArpaytrn_TypBANKBOOKCOD: TStringField;
    QArpaytrn_TypDTONBANK: TDateField;
    QArpaytrn_TypBANKLOCAT: TStringField;
    QArpaytrn_TypAMOUNT: TFloatField;
    QArpaytrn_TypCANFL: TStringField;
    QArpaytrn_TypCANDT: TDateTimeField;
    QArpaytrn_TypBILLNO: TStringField;
    QArpaytrn_TypBILLDT: TDateField;
    SoChqtran_Typ: TDataSource;
    QArpaytrn_Typ1: TFDQuery;
    SoChqtran_Typ1: TDataSource;
    QArpaytrn_Typ1BILLNO: TStringField;
    QArpaytrn_Typ1BILLDT: TDateField;
    QArpaytrn_Typ1PAYCODE: TStringField;
    QArpaytrn_Typ1BANKCOD: TStringField;
    QArpaytrn_Typ1CHQNO: TStringField;
    QArpaytrn_Typ1DTONCHQ: TDateField;
    QArpaytrn_Typ1BANKBOOKCOD: TStringField;
    QArpaytrn_Typ1DTONBANK: TDateField;
    QArpaytrn_Typ1BANKLOCAT: TStringField;
    QArpaytrn_Typ1AMOUNT: TFloatField;
    QArpaytrn_Typ1CANFL: TStringField;
    QArpaytrn_Typ1CANDT: TDateTimeField;
    QArpaytrn_TypCHQNO: TStringField;
    QArbillREFCODE: TStringField;
    QArbilTrFLGPAY: TStringField;
    QArbilTrREFBILLNO: TStringField;
    QArpaytrBANKFEE: TFloatField;
    QArbillDEPOSIT_NO: TFloatField;
    QArbillDEPOSIT_AMNT: TFloatField;
    QArbillDEPOSIT_DOC: TStringField;
    QArbilTrNOPAY: TIntegerField;
    procedure QArbillBeforePost(DataSet: TDataSet);
    procedure QArbillAfterPost(DataSet: TDataSet);
    procedure QArbillBDATEValidate(Sender: TField);
    procedure QArbillBeforeDelete(DataSet: TDataSet);
    procedure QArbillAfterDelete(DataSet: TDataSet);
    procedure QArbillAfterCancel(DataSet: TDataSet);
    procedure QArbilTrNewRecord(DataSet: TDataSet);
    procedure QArinv1BeforePost(DataSet: TDataSet);
    procedure QArinv1AfterPost(DataSet: TDataSet);
    procedure QArinv1AfterCancel(DataSet: TDataSet);
    procedure QArpaytrBeforePost(DataSet: TDataSet);
    procedure QArpaytrAfterPost(DataSet: TDataSet);
    procedure QArpaytrAfterCancel(DataSet: TDataSet);
    procedure QArpaytr1BeforePost(DataSet: TDataSet);
    procedure QArpaytr1AfterPost(DataSet: TDataSet);
    procedure QArpaytr1AfterCancel(DataSet: TDataSet);
    procedure QArinv1INVDATEValidate(Sender: TField);
    procedure QArpaytrBILLDTValidate(Sender: TField);
    procedure QArpaytr1BILLDTValidate(Sender: TField);
    procedure QArpaytr1LOCATValidate(Sender: TField);
    procedure QArpaytrLOCATValidate(Sender: TField);
    procedure QArinv1LOCATValidate(Sender: TField);
    procedure QArbillLOCATValidate(Sender: TField);
    procedure Arinv05AfterPost(DataSet: TDataSet);
    procedure QArpaytr1NewRecord(DataSet: TDataSet);
    procedure QArbillNewRecord(DataSet: TDataSet);
    procedure QArpaytr1CSHAMTValidate(Sender: TField);
    procedure QArpaytr1CHQAMTValidate(Sender: TField);
    procedure QArpaytr1CalcFields(DataSet: TDataSet);
    procedure QArbilTrAfterPost(DataSet: TDataSet);
    procedure QArbillCalcFields(DataSet: TDataSet);
    procedure QArpaytrNewRecord(DataSet: TDataSet);
    procedure QArpaytrCSHAMTValidate(Sender: TField);
    procedure QArpaytrCHQAMTValidate(Sender: TField);
    procedure QArpaytrCalcFields(DataSet: TDataSet);
    procedure QArbiltr1AfterOpen(DataSet: TDataSet);
    procedure QArinv1NewRecord(DataSet: TDataSet);
    procedure Dm_ArCreate(Sender: TObject);
    procedure QArinv1BeforeDelete(DataSet: TDataSet);
    procedure QArpaytr1INVNOValidate(Sender: TField);
    procedure QArpaytr1VAT3Validate(Sender: TField);
    procedure QArinv2CalcFields(DataSet: TDataSet);
    procedure QArpaytr1PAYTYPValidate(Sender: TField);
    procedure QArpaytrINVNOValidate(Sender: TField);
    procedure QArbiltr1BeforeClose(DataSet: TDataSet);
    procedure QArpaytrPAYTYPValidate(Sender: TField);
    procedure QArchqNewRecord(DataSet: TDataSet);
    procedure QArpaytrVAT3Validate(Sender: TField);
    procedure QArpaytrVAT3AMTValidate(Sender: TField);
    procedure QArpaytr1TOTALValidate(Sender: TField);
    procedure QArpaytr1NETTOTValidate(Sender: TField);
    procedure QArpaytrADDAMTValidate(Sender: TField);
    procedure QArpaytrTOTALValidate(Sender: TField);
    procedure QArpaytr1VAT3AMTValidate(Sender: TField);
    procedure QArpaytrNETTOTValidate(Sender: TField);
    procedure QArinv1PAYFORValidate(Sender: TField);
    procedure QPayforAfterPost(DataSet: TDataSet);
    procedure QArinv1TOTALValidate(Sender: TField);
    procedure QArOthrCONTNOValidate(Sender: TField);
    procedure QArOthrARCONTValidate(Sender: TField);
    procedure QArOthrTSALEValidate(Sender: TField);
    procedure QArOthrCUSCODValidate(Sender: TField);
    procedure QArOthrPAYFORValidate(Sender: TField);
    procedure QArOthrARDATEValidate(Sender: TField);
    procedure QArOthrAfterPost(DataSet: TDataSet);
    procedure QArOthrBeforeDelete(DataSet: TDataSet);
    procedure QArOthrBeforePost(DataSet: TDataSet);
    procedure QArOthrCalcFields(DataSet: TDataSet);
    procedure QArOthrNewRecord(DataSet: TDataSet);
    procedure QArpaytr1CREDITAMTValidate(Sender: TField);
    procedure QArpaytr1BANKAMTValidate(Sender: TField);
    procedure QArpaytrCREDITAMTValidate(Sender: TField);
    procedure QArpaytrBANKAMTValidate(Sender: TField);
    procedure QArpaytr1BeforeEdit(DataSet: TDataSet);
    procedure QArpaytrBeforeEdit(DataSet: TDataSet);
    procedure QArbillCUSCODEChange(Sender: TField);
    procedure QArbilTrBeforeDelete(DataSet: TDataSet);
    procedure QArpaytrBANKFEEValidate(Sender: TField);
    procedure QArbillDEPOSIT_DOCValidate(Sender: TField);
    procedure QArpaytrUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QArOthrUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QArbillUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QArpaytr1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
    function RunNo01(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function ZeroLead(St: string; len: integer): string;
    function Next_Mth(Date_a: Tdatetime; Tmon: Integer): TdateTime;
    procedure CheckEditRight(XSource: TDataSource);
    function MaxNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
  public
    { Public declarations }
    XSchema, XRunCont: string;
    procedure CloseAll;
    procedure QArpaytr1Cancel;
    procedure QArpaytrDelete;
  end;

var
  Dm_Ar: TDm_Ar;
  HF, LF, LV, XREFNO, Sqltxt: string;
  DV: TdateTime;
  Duplicate, DataChang: Boolean;

const
  {Declare constants we're interested in}
  eRecLock = 10241;
  eDataChang = 10259;
  eKeyChang = 8708;
  eKeyViol = 9729;
  eRequiredFieldMissing = 9732;
  eForeignKey = 9733;
  eDetailsExist = 9734;

implementation

uses
  USoftFirm, functn01, Dmsec, ArOthr1, Dm1;
{$R *.DFM}

procedure TDm_Ar.CheckEditRight(XSource: TDataSource);
begin
  if SFMain.Xlevel > '1' then
    if (XSource.State in DsEditmodes) and (not SFMain.Edit_right) then
    begin
      XSource.dataset.Cancel;
      sfmain.RaiseException('ไม่มีสิทธิ์ในการแก้ไขข้อมูล');
    end;
end;

function TDm_Ar.ZeroLead(St: string; len: integer): string;
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

function TDm_Ar.RunNo01(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
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

function TDm_Ar.MaxNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
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
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
      with QLastno do
      begin
        Insert;
        Fieldbyname('Locat').Asstring := Lc;
        Fieldbyname('Cr_year').Asstring := YY;
        Fieldbyname('Cr_Month').Asstring := MM;
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

function TDm_Ar.Next_Mth(Date_a: Tdatetime; Tmon: Integer): TdateTime;
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

procedure TDm_Ar.QArbillBeforePost(DataSet: TDataSet);
var
  HF, LF, LV, XBIL: string;
  DV: TdateTime;
begin
  if QArbillUpdateStatus.Value = 'Inserted' then
  begin
    if Duplicate then
      QArbillBDATEValidate(QArbillBDATE);

    HF := 'H_BNO';
    LF := 'L_BNO';
    LV := QArbill.FieldByName('Locat').Asstring;
    DV := QArbill.FieldByName('BDATE').asDateTime;
    if QArbill.State = DsInsert then
      QArbill.FieldByName('ARBILNO').Asstring := RunNo01(HF, LF, LV, DV);
  end;
end;

procedure TDm_Ar.QArbillAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QArbill.Fieldbyname('Arbilno').asstring;
  dm_sec.HI_DBMS.StartTransaction;
  try
    if QArbill.Active then
      if (QArbill.ApplyUpdates = 0) then
        QArbill.CommitUpdates
      else
        raise Exception.Create(QArbill.RowError.Message);
    if QArbiltr.Active then
      if (QArbiltr.ApplyUpdates = 0) then
        QArbiltr.CommitUpdates
      else
        raise Exception.Create(QArbiltr.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.RollBack;
    raise;
  end;
  //
  with Dm_Ar.QArbill do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILL WHERE ARBILNO = :XARBILNO');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_Ar.QArbiltr do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = :XARBILNO');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TDm_Ar.QArbillBDATEValidate(Sender: TField);
begin
  HF := 'H_BNO';
  LF := 'L_BNO';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QArbill.FieldByName('LOCAT').Asstring;
    DV := QArbill.FieldByName('BDATE').asDateTime;
    if QArbill.State = dsInsert then
    begin
      SQLTXT := 'SELECT MAX(ARBILNO) AS MAXNO FROM ARBILL WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(ARBILNO,2,2)=:EDIT2 AND SUBSTR(ARBILNO,5,2)=:EDIT3 AND SUBSTR(ARBILNO,7,2)=:EDIT4';
      if Duplicate then
        QArbill.FieldByName('ARBILNO').Asstring := MaxNo(HF, LF, LV, SQLTXT, DV)
      else
        QArbill.FieldByName('ARBILNO').Asstring := RunNo01(HF, LF, LV, DV);
    end;
  end;

  {HF := 'H_BNO';
  LF := 'L_BNO';
  If Not QDBConfig.Active Then QDBConfig.Open;
  If QDBConfig.Fieldbyname(HF).asstring='Y' Then
  begin
    LV := QArbill.FieldByName('Locat').Asstring;
    DV := QArbill.FieldByName('BDATE').asDateTime;
    if QArbill.State = DsInsert then
       QArbill.FieldByName('ARBILNO').Asstring := RunNo01(HF,LF,LV,DV);
  End;}
end;

procedure TDm_Ar.QArbillBeforeDelete(DataSet: TDataSet);
begin
  if sfMain.Xlevel > '1' then
    if not (sfMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

  QArbiltr.AfterDelete := nil;
  QArbilTr.AfterPost := nil;

  Dm_Ar.QArbiltr.First;
  while not (Dm_Ar.QArbiltr.Eof) do
    Dm_Ar.QArbiltr.Delete;

  QArbiltr.AfterDelete := QArbilTrAfterPost;
  QArbilTr.AfterPost := QArbilTrAfterPost;
end;

procedure TDm_Ar.QArbillAfterDelete(DataSet: TDataSet);
begin
  dm_sec.HI_DBMS.StartTransaction;
  try
    if QArbill.Active then
      if (QArbill.ApplyUpdates = 0) then
        QArbill.CommitUpdates
      else
        raise Exception.Create(QArbill.RowError.Message);
    if QArpay1.Active then
      if (QArpay1.ApplyUpdates = 0) then
        QArpay1.CommitUpdates
      else
        raise Exception.Create(QArpay1.RowError.Message);
    if QArbiltr.Active then
      if (QArbiltr.ApplyUpdates = 0) then
        QArbiltr.CommitUpdates
      else
        raise Exception.Create(QArbiltr.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TDm_Ar.QArbillAfterCancel(DataSet: TDataSet);
begin
  if QArbill.Active then
    QArbill.CancelUpdates;
  if QArbiltr.Active then
    QArbiltr.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TDm_Ar.QArbilTrNewRecord(DataSet: TDataSet);
begin
  if Qarbiltr.State = Dsinsert then
  begin
    QArbiltr.FieldByName('ARBILNO').ASSTRING := QArbill.Fieldbyname('ARBILNO').asstring;
    QArbiltr.FieldByName('LOCAT').ASSTRING := QArbill.Fieldbyname('LOCAT').asstring;
  end;
end;

procedure TDm_Ar.QArinv1BeforePost(DataSet: TDataSet);
begin
  if QArinv1BILL.Asstring = '' then
  begin
    QArinv1.FieldByName('BALANCE').AsFloat := QArinv1.FieldByName('TOTAL').AsFloat;
    QArinv1.FieldByName('Kang').AsFloat := QArinv1.FieldByName('NETTOTAL').AsFloat;
  end
  else
    SFmain.RaiseException('ออกใบเสร็จรับเงินแล้วแก้ไขไม่ได้');

  if QArinv1TAXNO.Asstring <> '' then
  begin
    with QTaxsal do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM  TAXSAL WHERE TAXNO=:EDIT');
      Params[0].Asstring := QArinv1.Fieldbyname('Taxno').Asstring;
      Open;
      if (QTaxsal.Bof and QTaxsal.Eof) then
        QTaxsal.Insert
      else
        QTaxsal.Edit;
    end;
    QTaxsal.Fieldbyname('Locat').Asstring := QArinv1.Fieldbyname('Locat').Asstring;
    QTaxsal.Fieldbyname('Taxno').Asstring := QArinv1.Fieldbyname('Taxno').Asstring;
    QTaxsal.Fieldbyname('Taxdate').Asstring := QArinv1.Fieldbyname('Taxdate').Asstring;
    QTaxsal.Fieldbyname('Taxrefno').Asstring := QArinv1.Fieldbyname('Invno').Asstring;
    QTaxsal.Fieldbyname('Desc1').Asstring := QArinv1.Fieldbyname('Descrp').Asstring;
    QTaxsal.Fieldbyname('Cuscod').Asstring := QArinv1.Fieldbyname('Cuscode').Asstring;
    QTaxsal.Fieldbyname('Vatrt').Asstring := QArinv1.Fieldbyname('Vatrt').Asstring;
    QTaxsal.Fieldbyname('Amount').Asstring := QArinv1.Fieldbyname('Total').Asstring;
    QTaxsal.Fieldbyname('Redu').Asstring := QArinv1.Fieldbyname('Discamt').Asstring;
    QTaxsal.Fieldbyname('Balance').Asstring := QArinv1.Fieldbyname('Balance').Asstring;
    QTaxsal.Fieldbyname('Vat').Asstring := QArinv1.Fieldbyname('Vatamt').Asstring;
    QTaxsal.Fieldbyname('Tottax').Asstring := QArinv1.Fieldbyname('Nettotal').Asstring;
    QTaxsal.Fieldbyname('Flag').Asstring := '1';  //1:ใบกำกับภาษีขาย 2: ใบลดหนี้
    QTaxsal.Fieldbyname('Userid').Asstring := QArinv1.Fieldbyname('Userid').Asstring;
    QTaxsal.Fieldbyname('Time1').Asdatetime := QArinv1.Fieldbyname('Time1').AsDatetime;
    QTaxsal.Fieldbyname('FRSV').Asstring := 'F';
    QTaxsal.Fieldbyname('PAYTYP').Asstring := 'C';
    QTaxsal.Post;
  end;
end;

procedure TDm_Ar.QArinv1AfterPost(DataSet: TDataSet);
begin
  dm_sec.HI_DBMS.StartTransaction;
  try
    if QArinv1.Active then
      if (QArinv1.ApplyUpdates = 0) then
        QArinv1.CommitUpdates
      else
        raise Exception.Create(QArinv1.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    if QTaxsal.Active then
      if (QTaxsal.ApplyUpdates = 0) then
        QTaxsal.CommitUpdates
      else
        raise Exception.Create(QTaxsal.RowError.Message);
    if QArpay1.Active then
      if (QArpay1.ApplyUpdates = 0) then
        QArpay1.CommitUpdates
      else
        raise Exception.Create(QArpay1.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.RollBack;
    raise;
  end;
  //

  with Dm_Ar.QArinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = :XINVNO ');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TDm_Ar.QArinv1AfterCancel(DataSet: TDataSet);
begin
  if QArinv1.Active then
    QArinv1.CancelUpdates;
end;

procedure TDm_Ar.QArpaytrBeforePost(DataSet: TDataSet);
var
  Total, XNum, Payamt1, Payment_a, Vatrt, Lost_a: Double;
begin

  if (Dm_Ar.QArpaytrBKCODE.AsString = '') and (Dm_Ar.QArpaytrpaytyp.AsString = '10') then
    SFmain.RaiseException('โปรดระบุเลขที่บัญชีก่อนทำการบันทึก');

 { if (Dm_Ar.QArpaytrchqamt.asfloat+Dm_Ar.QArpaytrcshamt.asfloat+
            QArpaytr1CREDITAMT.AsFloat+QArpaytr1BANKAMT.AsFloat)  <> (Dm_Ar.QArpaytrnettot.asfloat)  Then
    SFmain.RaiseException('ยอดรายการชำระและยอดชำระสุทธิไม่ตรงกัน'); }


  if QArpaytrUpdateStatus.Value = 'Inserted' then
  begin
    if Duplicate then
      QArpaytrBILLDTValidate(QArpaytrBILLDT);

    QArbill1.Edit;
    QArbill1.Fieldbyname('REFBIL').Asstring := QArpaytrBILLNO.Asstring;
    QArbill1.Post;
    //
    if QArchq.Active then
    begin
      Total := 0;
      XNum := 0;
      QArchq.First;
      while (not QArchq.Eof) do
      begin
        Total := Total + QArchq.FieldByname('CHQAMT').AsFloat;
        XNum := XNum + 1;
        QArchq.Next;
      end;
      QArpaytr.FieldByName('CHQNUM').Asfloat := XNum;
     // if total <> QArpaytr1.FieldByName('CHQAMT').AsFloat then
     // MessageDlg('ยอดรวมเช็คไม่เท่ากับยอดเงินหน้าเช็ค',Mtinformation,[mbok],0);
    end;

    with QArbiltr1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = :XARBILNO ');
      Params[0].Asstring := QArpaytr.FieldByName('INVNO').Asstring;
      ;
      Open;
    end;
    if QArbiltr1.Eof and QArbiltr1.Bof then
      SFmain.RaiseException('ไม่มีรายการวางบิล');

    QArbiltr1.First;
    while not (QArbiltr1.eof) do
    begin
      if not (TArinvoi.Eof and TArinvoi.Bof) then
      begin
        TArinvoi.Edit;
        if QArpaytr.FieldByName('Paytyp').Asstring = '02' then
        begin
          if QArbill1.Fieldbyname('TYPE').Asstring = '2' then
            TArinvoi.FieldByName('SMCHQ').Asfloat := TArinvoi.FieldByName('SMCHQ').Asfloat
              + ABS(QArbiltr1.FieldByName('Payamt').Asfloat)
          else
            TArinvoi.FieldByName('SMCHQ').Asfloat := TArinvoi.FieldByName('SMCHQ').Asfloat
              + ABS(QArbiltr1.FieldByName('Payamt').Asfloat) - TArinvoi.FieldByName('RTNAMT').Asfloat;
        end
        else
        begin
          if QArbill1.Fieldbyname('TYPE').Asstring = '2' then
            TArinvoi.FieldByName('SMPAY').Asfloat := TArinvoi.FieldByName('SMPAY').Asfloat
              + ABS(QArbiltr1.FieldByName('Payamt').Asfloat)
          else
            TArinvoi.FieldByName('SMPAY').Asfloat := TArinvoi.FieldByName('SMPAY').Asfloat
              + ABS(QArbiltr1.FieldByName('Payamt').Asfloat) - TArinvoi.FieldByName('RTNAMT').Asfloat;
        end;

        if QArbill1.Fieldbyname('TYPE').Asstring = '2' then
          TArinvoi.FieldByName('KANG').Asfloat := TArinvoi.FieldByName('NETTOTAL').Asfloat
            - TArinvoi.FieldByName('SMPAY').Asfloat - TArinvoi.FieldByName('SMCHQ').Asfloat
        else
          TArinvoi.FieldByName('KANG').Asfloat := TArinvoi.FieldByName('NETTOTAL').Asfloat
            - TArinvoi.FieldByName('SMPAY').Asfloat - TArinvoi.FieldByName('SMCHQ').Asfloat - TArinvoi.FieldByName('RTNAMT').Asfloat;

        TArinvoi.FieldByName('LPAID').AsDateTime := QArpaytr.FieldByName('BILLDT').AsDateTime;
        TArinvoi.FieldByName('BILL').Asstring := QArpaytrBILLNO.Asstring;

        Payamt1 := ABS(QArbiltr1.FieldByName('PAYAMT').Asfloat);
        Vatrt := TArinvoi.FieldByName('Vatrt').Asfloat;
        TArinvoi.Post;
      end;
      QArbiltr1.Next;
    end;
  end;

  QArpaytrn_Typ.DisableControls;
  //QArpaytrn_Typ.AfterPost  := Nil;
  //QArpaytrn_Typ.BeforePost := Nil;
  QArpaytrn_Typ.First;
  while not QArpaytrn_Typ.Eof do
  begin
    QArpaytrn_Typ.Edit;
    QArpaytrn_Typ.Fieldbyname('BILLNO').Asstring := QArpaytrBILLNO.Asstring;
    QArpaytrn_Typ.fieldbyname('BILLDT').asdatetime := QArpaytrBILLDT.Asdatetime;

    QArpaytrn_Typ.Next;
  end;
  //QArpaytrn_Typ.AfterPost  := QArpaytrn_TypAfterPost;
  //QArpaytrn_Typ.BeforePost := QArpaytrn_TypBeforePost;
  QArpaytrn_Typ.EnableControls;
end;

procedure TDm_Ar.QArpaytrAfterPost(DataSet: TDataSet);
var
  XSmpay, XSmchq: Double;
var
  S: string;
begin
  S := Dm_Ar.QArpaytr.FieldByName('Billno').Asstring;
  dm_sec.HI_DBMS.StartTransaction;
  try
    if QArpaytr.Active then
      if (QArpaytr.ApplyUpdates = 0) then
        QArpaytr.CommitUpdates
      else
        raise Exception.Create(QArpaytr.RowError.Message);
    if QArchq.Active then
      if (QArchq.ApplyUpdates = 0) then
        QArchq.CommitUpdates
      else
        raise Exception.Create(QArchq.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    if TArinvoi.Active then
      if (TArinvoi.ApplyUpdates = 0) then
        TArinvoi.CommitUpdates
      else
        raise Exception.Create(TArinvoi.RowError.Message);
    if QArbill1.Active then
      if (QArbill1.ApplyUpdates = 0) then
        QArbill1.CommitUpdates
      else
        raise Exception.Create(QArbill1.RowError.Message);
    if QArpaytrn_Typ.Active then
      if (QArpaytrn_Typ.ApplyUpdates = 0) then
        QArpaytrn_Typ.CommitUpdates
      else
        raise Exception.Create(QArpaytrn_Typ.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.RollBack;
    raise;
  end;
  //

  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARBILTR SET REFBILLNO =:EDIT1 WHERE ARBILNO =:EDIT2 AND FLGPAY = ''Y'' AND REFBILLNO = '''' ');
    Params[0].AsString := S;
    Params[1].AsString := Dm_Ar.QArpaytr.FieldByName('INVNO').Asstring;
    execSql;
  end;

  with QArpaytr do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  *  FROM  ARPAYTRN WHERE BILLNO=:0');
    Params[0].AsString := S;
    Open;
  end;

  with QArpaytrn_Typ do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  *  FROM  ARPAYTRN_TYP WHERE BILLNO=:0');
    Params[0].AsString := S;
    Open;
  end;
end;

procedure TDm_Ar.QArpaytrAfterCancel(DataSet: TDataSet);
begin
  if QArpaytr.Active then
    QArpaytr.CancelUpdates;
  if QArchq.Active then
    QArchq.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
  if TArinvoi.Active then
    TArinvoi.CancelUpdates;
  if QArpaytrn_Typ.Active then
    QArpaytrn_Typ.CancelUpdates;
  if QArbill1.Active then
    QArbill1.CancelUpdates;
  //
  with Dm_Ar.QArbilTr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = '''' ');
    Open;
  end;
end;

procedure TDm_Ar.QArpaytr1BeforePost(DataSet: TDataSet);
var
  Total, XNum, Payamt1, Payment_a, Vatrt, Lost_a: Double;
begin
  {if Fround(QArpaytr1chqamt.asfloat+QArpaytr1cshamt.asfloat+
            QArpaytr1CREDITAMT.AsFloat+QArpaytr1BANKAMT.AsFloat,2) <> Fround(Dm_Ar.QArpaytr1nettot.asfloat,2)  Then
    SFmain.RaiseException('ยอดรายการชำระและยอดชำระสุทธิไม่ตรงกัน');}


  if QArpaytr1UpdateStatus.Value = 'Inserted' then
  begin
    if Duplicate then
      QArpaytr1BILLDTValidate(QArpaytr1BILLDT);

    QArpaytr1JOBNO.Asstring := QArinv2.FieldByName('JOBNO').Asstring;
    //
    QArinv2.Edit;
    QArinv2.FieldByName('SMPAY').Asfloat := QArinv2.FieldByName('SMPAY').Asfloat
      + QArpaytr1.FieldByName('TOTAL').Asfloat;

    QArinv2.FieldByName('SMCHQ').Asfloat := 0;

    QArinv2.FieldByName('Reduaft').Asfloat := QArinv2.FieldByName('Reduaft').Asfloat
      + QArpaytr1.FieldByName('Disamt').Asfloat;

    QArinv2.FieldByName('KANG').Asfloat := QArinv2.FieldByName('NETTOTAL').Asfloat
      - QArinv2.FieldByName('SMPAY').Asfloat - QArinv2.FieldByName('RTNAMT').Asfloat;

    QArinv2.FieldByName('LPAID').AsDateTime := QArpaytr1.FieldByName('BILLDT').AsDateTime;
    QArinv2.FieldByName('BILL').Asstring := QArpaytr1BILLNO.Asstring;

    Payamt1 := QArpaytr1.FieldByName('Total').Asfloat;
    Vatrt := QArinv2.FieldByName('Vatrt').Asfloat;
    //
    if QArchq.Active then
    begin
      Total := 0;
      XNum := 0;
      QArchq.First;
      while (not QArchq.Eof) do
      begin
        Total := Total + QArchq.FieldByname('CHQAMT').AsFloat;
        XNum := XNum + 1;
        QArchq.Next;
      end;
      QArpaytr1.FieldByName('CHQNUM').Asfloat := XNum;
      //if total <> QArpaytr1.FieldByName('CHQAMT').AsFloat then
      //SFmain.RaiseException('ยอดรวมเช็คไม่เท่ากับยอดเงินหน้าเช็ค');
    end;
    //
    if Dm_Ar.QArinv2.Fieldbyname('Jobno').Asstring <> '' then
    begin
      if Dm_Ar.QArinv2.Fieldbyname('REFINV').Asstring = 'SVC' then
      begin
        QArpaytr1FLAG.Asstring := '2';
        QArpaytr1SYSTM.Asstring := 'SVNORM';
        //
        with QAr_Serv1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM AR_SERV WHERE JOBNO=:XJOB');
          Params[0].Asstring := Dm_Ar.QArinv2.Fieldbyname('Jobno').Asstring;
          Open;
        end;
        if not (QAr_Serv1.Bof and QAr_Serv1.Eof) then
        begin
          QAr_Serv1.Edit;
          QAr_Serv1.Fieldbyname('TAXNO').asstring := QArpaytr1BILLNO.Asstring;
          QAr_Serv1.Fieldbyname('TAXDATE').asDatetime := QArpaytr1BILLDT.AsdateTime;
          QAr_Serv1.Fieldbyname('PAYTYPE').asstring := QArpaytr1PAYTYP.Asstring;
          QAr_Serv1.Fieldbyname('SMPAY').Asfloat := QArpaytr1CshAmt.AsFloat;
          QAr_Serv1.Fieldbyname('SMCHQ').Asfloat := QArpaytr1ChqAmt.AsFloat;
          QAr_Serv1.Fieldbyname('Reduaft').Asfloat := QAr_Serv1.Fieldbyname('Reduaft').Asfloat +
            (QArpaytr1.FieldByName('Disamt').Asfloat);
          QAr_Serv1.Fieldbyname('KANG').Asfloat := QArinv2.FieldByName('KANG').Asfloat;
          QAr_Serv1.Fieldbyname('LPaid').Asdatetime := QArpaytr1BILLDT.AsdateTime;
          QAr_Serv1.Post;
        end;
      end;
      //
      if Dm_Ar.QArinv2.Fieldbyname('REFINV').Asstring = 'OTH' then
      begin
        QArpaytr1FLAG.Asstring := '2';
        QArpaytr1SYSTM.Asstring := 'SVOTH';

        with QOthinv do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO=:XNO');
          Params[0].Asstring := Dm_Ar.QArinv2.Fieldbyname('Invno').Asstring;
          Open;
        end;
        if not (QOthinv.Bof and QOthinv.Eof) then
        begin
          QOthinv.Edit;
          QOthinv.Fieldbyname('BILLNO').asstring := QArpaytr1BILLNO.Asstring;
          QOthinv.Fieldbyname('BILLDT').asDatetime := QArpaytr1BILLDT.AsdateTime;
          QOthinv.Fieldbyname('PAYTYPE').asstring := QArpaytr1PAYTYP.Asstring;
          QOthinv.Fieldbyname('PAID').Asfloat := QArpaytr1CshAmt.AsFloat;
          QOthinv.Fieldbyname('DTPaid').Asdatetime := QArpaytr1BILLDT.AsdateTime;
          QOthinv.Post;
        end;
      end;
    end;
    //
    if Dm_Ar.QArinv2.Fieldbyname('REFINV').Asstring = 'CLM' then
    begin
      QArpaytr1FLAG.Asstring := '2';
      QArpaytr1SYSTM.Asstring := 'SVCLM';

      with QOthinv do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM ARCLAIM WHERE TAXNO=:XNO');
        Params[0].Asstring := Dm_Ar.QArinv2.Fieldbyname('Invno').Asstring;
        Open;
      end;
      if not (QOthinv.Bof and QOthinv.Eof) then
      begin
        QOthinv.Edit;
        QOthinv.Fieldbyname('BILLNO').asstring := QArpaytr1BILLNO.Asstring;
        QOthinv.Fieldbyname('BILLDATE').asDatetime := QArpaytr1BILLDT.AsdateTime;
        QOthinv.Fieldbyname('SMPAY').Asfloat := QArpaytr1CshAmt.AsFloat;
        QOthinv.Fieldbyname('SMCHQ').Asfloat := QArpaytr1ChqAmt.AsFloat;
        QOthinv.Fieldbyname('LPAID').Asdatetime := QArpaytr1BILLDT.AsdateTime;
        QOthinv.Post;
      end;
    end;
  end;
  QArpaytrn_Typ1.DisableControls;
  //QArpaytrn_Typ1.AfterPost  := Nil;
  //QArpaytrn_Typ1.BeforePost := Nil;
  QArpaytrn_Typ1.First;
  while not QArpaytrn_Typ1.Eof do
  begin
    QArpaytrn_Typ1.Edit;
    QArpaytrn_Typ1.Fieldbyname('BILLNO').Asstring := QArpaytr1BILLNO.Asstring;
    QArpaytrn_Typ1.fieldbyname('BILLDT').asdatetime := QArpaytr1BILLDT.Asdatetime;

    QArpaytrn_Typ1.Next;
  end;
  //QArpaytrn_Typ1.AfterPost  := QArpaytrn_Typ1AfterPost;
  //QArpaytrn_Typ1.BeforePost := QArpaytrn_Typ1BeforePost;
  QArpaytrn_Typ1.EnableControls;
end;

procedure TDm_Ar.QArpaytr1AfterPost(DataSet: TDataSet);
var
  S, RT: string;
begin
  S := QArpaytr1.FieldByName('BILLNO').Asstring;
  RT := QArinv2.FieldByName('RTNNO').Asstring;

  dm_sec.HI_DBMS.StartTransaction;
  try
    if QArpaytr1.Active then
      if (QArpaytr1.ApplyUpdates = 0) then
        QArpaytr1.CommitUpdates
      else
        raise Exception.Create(QArpaytr1.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    if QArinv2.Active then
      if (QArinv2.ApplyUpdates = 0) then
        QArinv2.CommitUpdates
      else
        raise Exception.Create(QArinv2.RowError.Message);
    if QArchq.Active then
      if (QArchq.ApplyUpdates = 0) then
        QArchq.CommitUpdates
      else
        raise Exception.Create(QArchq.RowError.Message);
    if QAr_Serv1.Active then
      if (QAr_Serv1.ApplyUpdates = 0) then
        QAr_Serv1.CommitUpdates
      else
        raise Exception.Create(QAr_Serv1.RowError.Message);
    if QArcred.Active then
      if (QArcred.ApplyUpdates = 0) then
        QArcred.CommitUpdates
      else
        raise Exception.Create(QArcred.RowError.Message);
    if QArfinc.Active then
      if (QArfinc.ApplyUpdates = 0) then
        QArfinc.CommitUpdates
      else
        raise Exception.Create(QArfinc.RowError.Message);
    if QOthinv.Active then
      if (QOthinv.ApplyUpdates = 0) then
        QOthinv.CommitUpdates
      else
        raise Exception.Create(QOthinv.RowError.Message);
    if QArpaytrn_Typ1.Active then
      if (QArpaytrn_Typ1.ApplyUpdates = 0) then
        QArpaytrn_Typ1.CommitUpdates
      else
        raise Exception.Create(QArpaytrn_Typ1.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.RollBack;
    QArpaytr1.Edit;
    raise;
  end;
  //
  with Dm_Ar.QArpaytr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILLNO');
    Params[0].Asstring := S;
    Open;
  end;

  with Dm_Ar.QArpaytrn_Typ1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  *  FROM  ARPAYTRN_TYP WHERE BILLNO=:0');
    Params[0].AsString := S;
    Open;
  end;

  with Dm_Ar.QArchq do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO = :XBILNO');
    Params[0].Asstring := Dm_Ar.QArpaytr1.FieldByName('BILLNO').Asstring;
    Open;
  end;
end;

procedure TDm_Ar.QArpaytr1AfterCancel(DataSet: TDataSet);
begin
  if QArpaytr1.Active then
    QArpaytr1.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
  if QArinv2.Active then
    QArinv2.Close;
  if QArchq.Active then
    QArchq.CancelUpdates;
  if QAr_Serv1.Active then
    QAr_Serv1.CancelUpdates;
  if QArcred.Active then
    QArcred.CancelUpdates;
  if QArfinc.Active then
    QArfinc.CancelUpdates;
  if QOthinv.Active then
    QOthinv.CancelUpdates;
  if QArpaytrn_Typ1.Active then
    QArpaytrn_Typ1.CancelUpdates;
end;

procedure TDm_Ar.QArinv1INVDATEValidate(Sender: TField);
begin
  HF := 'H_OTH';
  LF := 'L_OTH';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QArinv1.FieldByName('Locat').Asstring;
    DV := QArinv1.FieldByName('INVDATE').asDateTime;
    if QArinv1.State = DsInsert then
      QArinv1.FieldByName('INVNO').Asstring := RunNo01(HF, LF, LV, DV);
  end;
end;

procedure TDm_Ar.QArpaytrBILLDTValidate(Sender: TField);
begin
  HF := 'H_BLNO';
  LF := 'L_BLNO';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QArpaytr.FieldByName('Locat').Asstring;
    DV := QArpaytr.FieldByName('BILLDT').asDateTime;
    if QArpaytrUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(BILLNO) AS MAXNO FROM ARPAYTRN WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(BILLNO,2,2)=:EDIT2 AND SUBSTR(BILLNO,5,2)=:EDIT3 AND SUBSTR(BILLNO,7,2)=:EDIT4';
      if Duplicate then
        QArpaytr.FieldByName('BILLNO').Asstring := MaxNo(HF, LF, LV, SQLTXT, DV)
      else
        QArpaytr.FieldByName('BILLNO').Asstring := RunNo01(HF, LF, LV, DV);
    end;
  end;
  with Dm_ar.QArChq do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO= :XBILNO  ');
    Params[0].Asstring := QArpaytr.FieldByName('BILLNO').Asstring;
    Open;
  end;
end;

procedure TDm_Ar.QArpaytr1BILLDTValidate(Sender: TField);
begin
  if (XREFNO = 'CSH') or (XREFNO = 'DFI') or (XREFNO = 'FFI') then
  begin
    HF := 'H_SLBL';
    LF := 'L_SLBL';
  end
  else
  begin
    HF := 'H_BLNO';
    LF := 'L_BLNO';
  end;

  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QArpaytr1.FieldByName('Locat').Asstring;
    DV := QArpaytr1.FieldByName('BILLDT').asDateTime;

    if QArpaytr1UpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(BILLNO) AS MAXNO FROM ARPAYTRN WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(BILLNO,2,2)=:EDIT2 AND SUBSTR(BILLNO,5,2)=:EDIT3 AND SUBSTR(BILLNO,7,2)=:EDIT4';
      if Duplicate then
        QArpaytr1.FieldByName('BILLNO').Asstring := MaxNo(HF, LF, LV, SQLTXT, DV)
      else
        QArpaytr1.FieldByName('BILLNO').Asstring := RunNo01(HF, LF, LV, DV);
    end;
  end;
  //
  with Dm_ar.QArChq do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO= :XBILNO  ');
    Params[0].Asstring := QArpaytr1.FieldByName('BILLNO').Asstring;
    Open;
  end;
end;

procedure TDm_Ar.QArpaytr1LOCATValidate(Sender: TField);
begin
  if Datetimetostr(QArpaytr1BILLDT.AsDateTime) <> '30/12/1899' then
    QArpaytr1BILLDTValidate(Sender);
end;

procedure TDm_Ar.QArpaytrLOCATValidate(Sender: TField);
begin
  if QArpaytrBILLDT.Asstring <> '' then
    QArpaytrBILLDTValidate(Sender);
end;

procedure TDm_Ar.QArinv1LOCATValidate(Sender: TField);
begin
  if Datetimetostr(QArinv1INVDATE.AsDateTime) <> '30/12/1899' then
    QArinv1INVDATEValidate(Sender);
end;

procedure TDm_Ar.QArbillLOCATValidate(Sender: TField);
begin
  if Datetimetostr(QArbillBDATE.AsDateTime) <> '30/12/1899' then
    QArbillBDATEValidate(Sender);
end;

procedure TDm_Ar.Arinv05AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := Arinv05INVNO.Asstring;
  dm_sec.HI_DBMS.StartTransaction;
  try
    if Arinv05.Active then
      if (Arinv05.ApplyUpdates = 0) then
        Arinv05.CommitUpdates
      else
        raise Exception.Create(Arinv05.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TDm_Ar.QArpaytr1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  if Qarpaytr1.State = Dsinsert then
  begin
    ClearAsFloat(QArpaytr1);
    QArpaytr1LOCAT.Asstring := SFMain.Xlocat;
    QArpaytr1.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
    QArpaytr1.Fieldbyname('Time1').Asdatetime := Now;
    QArpaytr1.Fieldbyname('SYSTM').Asstring := 'IC';
    QArpaytr1.Fieldbyname('BILLDT').Asdatetime := Now;
    QArpaytr1.Fieldbyname('PAYTYP').AsString := '01';
    QArpaytr1.Fieldbyname('PAYCONT').AsString := '1';
    QArpaytr1Flag.Asstring := '1';
  end;
end;

procedure TDm_Ar.CloseAll;
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

procedure TDm_Ar.QArbillNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QArbill);
  Duplicate := False;
  QArbillLOCAT.Asstring := SFMain.Xlocat;
  QArbillBDATE.Asdatetime := Date;
  QArbillTYPE.Asstring := '1';
  QArbill.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
  QArbill.Fieldbyname('Time1').Asdatetime := Now;
end;

procedure TDm_Ar.QArbillUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  DataChang := False;
  if (AException is EFDDBEngineException) then
  begin
    if (AException as EFDDBEngineException).Errors[0].Errorcode = eKeyViol then
    begin
      Duplicate := True;
    end
    else if (AException as EFDDBEngineException).Errors[0].Errorcode = eDataChang then
    begin
      DataChang := True;
    end;
  end;
end;

procedure TDm_Ar.QArpaytr1CSHAMTValidate(Sender: TField);
begin
  if QArpaytr1INVNO.AsString <> '' then
  begin
    if FRound(Dm_Ar.QArpaytr1.FieldByName('CSHAMT').AsFloat +
      Dm_Ar.QArpaytr1.FieldByName('CHQAMT').AsFloat + Dm_Ar.QArpaytr1.FieldByName('BANKAMT').AsFloat +
      Dm_Ar.QArpaytr1.FieldByName('CREDITAMT').AsFloat, 2) > Dm_Ar.QArpaytr1.FieldByName('TOTAL').AsFloat then
      sfmain.RaiseException('ยอดรวมมากกว่ายอดที่ต้องชำระจริง..!');

    //Dm_Ar.QArpaytr1.FieldByName('NETTOT').AsFloat:= Dm_Ar.QArpaytr1.FieldByName('TOTAL').AsFloat;
  end;
end;

procedure TDm_Ar.QArpaytr1CHQAMTValidate(Sender: TField);
begin
  QArpaytr1CSHAMTValidate(QArpaytr1CHQAMT);
end;

procedure TDm_Ar.QArpaytr1Cancel;
var
  Payamt1, Payment_a, Vatrt, Lost_a: Double;
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

  if Dm_Ar.QArinv2.Active then
  begin
    if Dm_Ar.QArinv2.Fieldbyname('Jobno').Asstring <> '' then
    begin
      if Dm_Ar.QArinv2.Fieldbyname('REFINV').Asstring = 'SVC' then
      begin
        with QAr_Serv1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM AR_SERV WHERE JOBNO=:XJOB');
          Params[0].Asstring := Dm_Ar.QArinv2.Fieldbyname('Jobno').Asstring;
          Open;
        end;
        if not (QAr_Serv1.Bof and QAr_Serv1.Eof) then
        begin
          QAr_Serv1.Edit;
          QAr_Serv1.Fieldbyname('TAXNO').asstring := '';
          QAr_Serv1.Fieldbyname('TAXDATE').asstring := '';
          QAr_Serv1.Fieldbyname('PAYTYPE').asstring := '';
          QAr_Serv1.Fieldbyname('SMPAY').Asfloat := 0;
          QAr_Serv1.Fieldbyname('SMCHQ').Asfloat := 0;
          QAr_Serv1.Fieldbyname('Reduaft').Asfloat := 0;
          QAr_Serv1.Fieldbyname('KANG').Asfloat := QAr_Serv1.Fieldbyname('Tottax').Asfloat;
          QAr_Serv1.Fieldbyname('LPaid').Asstring := '';
          QAr_Serv1.Post;
        end;
      end;
      //
      if Dm_Ar.QArinv2.Fieldbyname('REFINV').Asstring = 'OTH' then
      begin
        with QOthinv do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO=:XNO');
          Params[0].Asstring := Dm_Ar.QArinv2.Fieldbyname('Invno').Asstring;
          Open;
        end;
        if not (QOthinv.Bof and QOthinv.Eof) then
        begin
          QOthinv.Edit;
          QOthinv.Fieldbyname('BILLNO').asstring := '';
          QOthinv.Fieldbyname('BILLDT').asstring := '';
          QOthinv.Fieldbyname('PAYTYPE').asstring := '';
          QOthinv.Fieldbyname('PAID').Asfloat := 0;
          QOthinv.Fieldbyname('DTPaid').Asstring := '';
          QOthinv.Post;
        end;
      end;
    end;
    //
    if Dm_Ar.QArinv2.Fieldbyname('REFINV').Asstring = 'CLM' then
    begin
      with QOthinv do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM ARCLAIM WHERE TAXNO=:XNO');
        Params[0].Asstring := Dm_Ar.QArinv2.Fieldbyname('Invno').Asstring;
        Open;
      end;
      if not (QOthinv.Bof and QOthinv.Eof) then
      begin
        QOthinv.Edit;
        QOthinv.Fieldbyname('BILLNO').asstring := '';
        QOthinv.Fieldbyname('BILLDATE').AsString := '';
        QOthinv.Fieldbyname('SMPAY').Asfloat := 0;
        QOthinv.Fieldbyname('SMCHQ').Asfloat := 0;
        QOthinv.Fieldbyname('LPAID').Asstring := '';
        QOthinv.Post;
      end;
    end;

    //
    QArinv2.Edit;
    QArinv2.FieldByName('BILL').Asstring := '';

    QArinv2.FieldByName('SMPAY').Asfloat := QArinv2.FieldByName('SMPAY').Asfloat
      - QArpaytr1.FieldByName('TOTAL').Asfloat;

    QArinv2.FieldByName('SMCHQ').Asfloat := 0;

    QArinv2.FieldByName('Reduaft').Asfloat := QArinv2.FieldByName('Reduaft').Asfloat
      - QArpaytr1.FieldByName('Disamt').Asfloat;

    QArinv2.FieldByName('KANG').Asfloat := QArinv2.FieldByName('NETTOTAL').Asfloat
      - QArinv2.FieldByName('SMPAY').Asfloat - QArinv2.FieldByName('RTNAMT').Asfloat;

    Payamt1 := QArpaytr1.FieldByName('Total').Asfloat;
    Vatrt := QArinv2.FieldByName('Vatrt').Asfloat;
    //

    QArinv2.Post;
  end;
  //
  QArpaytr1.Edit;
  QArpaytr1.FieldByName('FLAG').Asstring := 'C';
  QArpaytr1.FieldByName('CANCELID').Asstring := SFMain.XUser_ID;
  QArpaytr1.FieldByName('CANDAT').Asdatetime := Now;
  //
  Dm_Ar.QArchq.First;
  while not (Dm_Ar.QArchq.Eof) do
    Dm_Ar.QArchq.Delete;

  QArpaytr1.BeforePost := Nil;
  QArpaytr1.Post;
  QArpaytr1.BeforePost := QArpaytr1BeforePost;
end;

procedure TDm_Ar.QArpaytr1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QArpaytr1.CachedUpdates then
    QArpaytr1UpdateStatus.Value := UpdateStatusStr[QArpaytr1.UpdateStatus];
end;

procedure TDm_Ar.QArbilTrAfterPost(DataSet: TDataSet);
var
  Tot1, Tot2, Itm, XBFVAT, XVATAMT: Double;
  bk: Tbookmark;
begin
  Tot1 := 0;
  Tot2 := 0;
  Itm := 0;
  XBFVAT := 0;
  XVATAMT := 0;
  QArbilTr.DisableControls;
  bk := QArbilTr.GetBookmark;
  QArbilTr.First;
  while not QArbilTr.Eof do
  begin
    Tot1 := Tot1 + QArbilTrBALANCE.Asfloat;
    Tot2 := Tot2 + QArbilTrPAYAMT.Asfloat;
    XBFVAT := XBFVAT + QArbilTrBF_VAT.Asfloat;
    XVATAMT := XVATAMT + QArbilTrVatamt.Asfloat;
    Itm := Itm + 1;
    QArbilTr.Next;
  end;
  QArbilTr.EnableControls;
  QArbilTr.GotoBookMark(bk);
  QArbilTr.FreeBookmark(bk);

  if QArbill.State = DsBrowse then
    QArbill.Edit;
  QArbillAMOUNT.Asfloat := Tot1;
  QArbillPAYAMT.Asfloat := Tot2;
  QArbillBF_VAT.Asfloat := XBFVAT;
  QArbillVATAMT.Asfloat := XVATAMT;
  QArbillITEMS.Asfloat := Itm;
end;

procedure TDm_Ar.QArbillCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QArbill.CachedUpdates then
    QArbillUpdateStatus.Value := UpdateStatusStr[QArbill.UpdateStatus];
end;

procedure TDm_Ar.QArpaytrNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QArpaytr);
  QArpaytrLOCAT.Asstring := SFMain.Xlocat;
  QArpaytr.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
  QArpaytr.Fieldbyname('Time1').Asdatetime := Now;
  QArpaytr.Fieldbyname('SYSTM').Asstring := 'IC';
  QArpaytr.Fieldbyname('BILLDT').Asdatetime := Now;
  QArpaytr.Fieldbyname('PAYTYP').AsString := '01';
  QArpaytr.Fieldbyname('PAYCONT').AsString := '2';
  QArpaytrFlag.Asstring := '1';

  QArpaytr.Fieldbyname('CLAIMTYP').AsString := 'Y';
end;

procedure TDm_Ar.QArpaytrCSHAMTValidate(Sender: TField);
begin
  if QArpaytr.State in Dseditmodes then
  //QArpaytrCHQAMT.Asfloat  := QArpaytrNETTOT.Asfloat-QArpaytrCSHAMT.Asfloat;
  begin
    QArpaytr.FieldByName('TOTAL').AsFloat := FRound(QArpaytr.FieldByName('CSHAMT').AsFloat +
      QArpaytr.FieldByName('CHQAMT').AsFloat + QArpaytr.FieldByName('BANKAMT').AsFloat +
      QArpaytr.FieldByName('CREDITAMT').AsFloat, 2);

    if FRound(QArpaytr.FieldByName('CSHAMT').AsFloat +
      QArpaytr.FieldByName('CHQAMT').AsFloat + QArpaytr.FieldByName('BANKAMT').AsFloat +
      QArpaytr.FieldByName('CREDITAMT').AsFloat, 2) > QArpaytr.FieldByName('TOTAL').AsFloat then
      sfmain.RaiseException('ยอดรวมมากกว่ายอดที่ต้องชำระจริง..!');
  end;
end;

procedure TDm_Ar.QArpaytrCHQAMTValidate(Sender: TField);
begin
  QArpaytrCSHAMTValidate(QArpaytrCHQAMT);
end;

procedure TDm_Ar.QArpaytrCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QArpaytr.CachedUpdates then
    QArpaytrUpdateStatus.Value := UpdateStatusStr[QArpaytr.UpdateStatus];
end;

procedure TDm_Ar.QArpaytrDelete;
var
  Payamt1, Payment_a, Vatrt, Lost_a: Double;
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

  QArpaytr.Edit;
  QArpaytr.FieldByName('FLAG').Asstring := 'C';
  QArpaytr.FieldByName('CANCELID').Asstring := SFMain.XUser_ID;
  QArpaytr.FieldByName('CANDAT').Asdatetime := Now;
  //
  QArbill1.Edit;
  QArbill1.Fieldbyname('REFBIL').Asstring := '';
  QArbill1.Post;
  //
  Dm_Ar.QArchq.First;
  while not (Dm_Ar.QArchq.Eof) do
    Dm_Ar.QArchq.Delete;

  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARBILTR SET REFBILLNO ='''' WHERE ARBILNO =:EDIT1 AND REFBILLNO =:EDIT2 ');
    Params[0].AsString := QArpaytr.FieldByName('BILLNO').Asstring;
    Params[1].AsString := QArpaytr.FieldByName('INVNO').Asstring;
    execSql;
  end;

  with QArbiltr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO = :XARBILNO ');
    Params[0].Asstring := QArpaytr.FieldByName('INVNO').Asstring;
    ;
    Open;
  end;
  if QArbiltr1.Eof and QArbiltr1.Bof then
    SFmain.RaiseException('ไม่มีรายการบิล');

  QArbiltr1.First;
  while not (QArbiltr1.eof) do
  begin
    TArinvoi.Edit;
    if QArbiltr1.FieldByName('Payamt').Asfloat > 0 then
    begin

      if QArpaytr.FieldByName('Paytyp').Asstring = '02' then
      begin
        if QArbill1.Fieldbyname('TYPE').Asstring = '2' then
          TArinvoi.FieldByName('SMCHQ').Asfloat := TArinvoi.FieldByName('SMCHQ').Asfloat
            - ABS(QArbiltr1.FieldByName('Payamt').Asfloat)
        else
          TArinvoi.FieldByName('SMCHQ').Asfloat := TArinvoi.FieldByName('SMCHQ').Asfloat
            - ABS(QArbiltr1.FieldByName('Payamt').Asfloat) + TArinvoi.FieldByName('RTNAMT').Asfloat;
      end
      else
      begin
        if QArbill1.Fieldbyname('TYPE').Asstring = '2' then
          TArinvoi.FieldByName('SMPAY').Asfloat := TArinvoi.FieldByName('SMPAY').Asfloat
            - ABS(QArbiltr1.FieldByName('Payamt').Asfloat)
        else
          TArinvoi.FieldByName('SMPAY').Asfloat := TArinvoi.FieldByName('SMPAY').Asfloat
            - ABS(QArbiltr1.FieldByName('Payamt').Asfloat) + TArinvoi.FieldByName('RTNAMT').Asfloat;
      end;
      TArinvoi.FieldByName('KANG').Asfloat := TArinvoi.FieldByName('NETTOTAL').Asfloat
        - TArinvoi.FieldByName('SMPAY').Asfloat - TArinvoi.FieldByName('SMCHQ').Asfloat - TArinvoi.FieldByName('RTNAMT').Asfloat;

      TArinvoi.FieldByName('LPAID').Asstring := '';
      TArinvoi.FieldByName('BILL').Asstring := '';

      Payamt1 := QArbiltr1.FieldByName('PAYAMT').Asfloat;
      Vatrt := TArinvoi.FieldByName('Vatrt').Asfloat;
      TArinvoi.Post;
    end;
    QArbiltr1.Next;
  end;
  QArpaytr.BeforePost := Nil;
  QArpaytr.Post;
  QArpaytr.BeforePost := QArpaytrBeforePost;
end;

procedure TDm_Ar.QArbiltr1AfterOpen(DataSet: TDataSet);
begin
  TArinvoi.Open;
end;

procedure TDm_Ar.QArinv1NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QArinv1);
  QArinv1LOCAT.Asstring := SFMain.Xlocat;
  QArinv1INVDATE.Asdatetime := Now;
  QArinv1.FieldByName('TIME1').AsdateTime := Now;
  QArinv1.FieldByName('STAT').Asstring := '3';
  QArinv1.FieldByName('FLAG').Asstring := 'D';
  QArinv1.FieldByName('USERID').Asstring := SFMain.XUser_ID;
  QArinv1.FieldByName('VATTYPE').Asstring := '2';
  QArinv1.FieldByName('VATRT').AsFloat := QCondpay.Fieldbyname('Vatrt').Asfloat;
  QArinv1.FieldByName('TNOPAY').AsFloat := 1;
end;

procedure TDm_Ar.Dm_ArCreate(Sender: TObject);
begin
  QCondpay.Open;
end;

procedure TDm_Ar.QArinv1BeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

  with QTaxsal do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM  TAXSAL WHERE TAXNO=:EDIT');
    Params[0].Asstring := QArinv1TAXNO.Asstring;
    Open;
  end;
  if not (QTaxsal.Bof and QTaxsal.Eof) then
  begin
    QTaxsal.Delete;
  end;
end;

procedure TDm_Ar.QArpaytr1INVNOValidate(Sender: TField);
begin
  with Dm_Ar.QArinv2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = :XINVNO ');
    Params[0].Asstring := QArpaytr1INVNO.Asstring;
    Open;
  end;
  if not (Dm_Ar.QArinv2.Bof and Dm_Ar.QArinv2.Eof) then
  begin
    if Dm_Ar.QArinv2.Fieldbyname('Locat').Asstring <> QArpaytr1LOCAT.Asstring then
      SFmain.RaiseException('สาขาที่รับชำระไม่ตรงกับ Invoice');
    XREFNO := Dm_Ar.QArinv2.Fieldbyname('REFINV').Asstring;

    if Dm_Ar.QArpaytr1.State in Dseditmodes then
    begin
      Dm_Ar.QArinv2.Edit;
      Dm_Ar.QArinv2KANG.Asfloat := Dm_Ar.QArinv2NETTOTAL.Asfloat - Dm_Ar.QArinv2SMPAY.Asfloat -
        Dm_Ar.QArinv2SMCHQ.Asfloat - Dm_Ar.QArinv2RTNAMT.Asfloat;

      Dm_Ar.QArpaytr1.FieldByName('CUSCODE').Asstring := Dm_Ar.QArinv2.FieldByName('CUSCODE').Asstring;
      Dm_Ar.QArpaytr1.FieldByName('PAYFOR').Asstring := Dm_Ar.QArinv2.FieldByName('PAYFOR').Asstring;

      if Dm_Ar.QArinv2.FieldByName('Kang').AsFloat <= 0 then
      begin
        Dm_Ar.QArinv2.Close;
        SFmain.RaiseException('ไม่มียอดค้างชำระ ตามใบส่งของที่ระบุ ');
      end;
      Dm_Ar.QArpaytr1.FieldByName('TOTAL').AsFloat := Dm_Ar.QArinv2.FieldByName('Kang').AsFloat;
      Dm_Ar.QArpaytr1.FieldByName('CSHAMT').AsFloat := Dm_Ar.QArinv2.FieldByName('Kang').AsFloat;
    end;
  end;
  //
  QArpaytr1BILLDTValidate(Sender);
end;

procedure TDm_Ar.QArpaytr1VAT3Validate(Sender: TField);
//Var S1 : String;
begin
  {S1 := Floattostrf(QArpaytr1VAT3.Asfloat*QArinv2Netamt_a.Asfloat/100,ffFixed,15,2);
  QArpaytr1VAT3AMT.Asfloat := Strtofloat(S1);}
  QArpaytr1VAT3AMT.Asfloat := FRound((QArpaytr1VAT3.Asfloat * QArinv2Netamt_a.Asfloat) / 100, 2);

  QArpaytr1.FieldByName('NETTOT').AsFloat := FRound((QArpaytr1.FieldByName('TOTAL').AsFloat + QArpaytr1.FieldByName('ADDAMT').AsFloat) -
    (QArpaytr1VAT3AMT.Asfloat + QArpaytr1DISAMT.Asfloat), 2);
end;

procedure TDm_Ar.QArinv2CalcFields(DataSet: TDataSet);
begin
  QArinv2Netamt_a.Asfloat := QArinv2NETTOTAL.Asfloat - QArinv2VATAMT.Asfloat;
end;

procedure TDm_Ar.QArpaytr1PAYTYPValidate(Sender: TField);
begin
    {If QArpaytr1INVNO.Asstring<>'' Then
    Begin

    If QArpaytr1.State=Dsinsert Then
    Begin

      IF QArpaytr1.FieldByName('Paytyp').Asstring='01' Then
      begin

          QArpaytr1.FieldByName('CSHAMT').AsFloat := QArpaytr1.FieldByName('NETTOT').AsFloat ;
          QArpaytr1.FieldByName('CHQAMT').AsFloat := 0;
        End
        Else
        Begin
          QArpaytr1.FieldByName('CSHAMT').AsFloat := 0 ;
          QArpaytr1.FieldByName('CHQAMT').AsFloat := QArpaytr1.FieldByName('NETTOT').AsFloat ;
        End;
       end;
    end;}
end;

procedure TDm_Ar.QArpaytrINVNOValidate(Sender: TField);
begin
  with Dm_AR.QArbill1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARBILL WHERE ARBILNO = :XARBILNO ');
    Params[0].Asstring := QArpaytrINVNO.Asstring;
    Open;
  end;
  //
  Dm_Ar.QArpaytr.FieldByName('TOTAL').AsFloat := Dm_Ar.QArbill1.FieldByName('PAYAMT').AsFloat;
end;

procedure TDm_Ar.QArbiltr1BeforeClose(DataSet: TDataSet);
begin
  TArinvoi.Close;
end;

procedure TDm_Ar.QArpaytrPAYTYPValidate(Sender: TField);
begin
  //QArpaytrINVNOValidate(Sender);
  if QArpaytrINVNO.Asstring <> '' then
  begin
    if ((QArpaytr.FieldByName('Paytyp').Asstring = '01') or (QArpaytr.FieldByName('Paytyp').Asstring = '55')) then
    begin
      QArpaytr.FieldByName('CHQAMT').AsFloat := 0;
      QArpaytr.FieldByName('CREDITAMT').AsFloat := 0;
      QArpaytr.FieldByName('BANKAMT').AsFloat := 0;
      QArpaytr.FieldByName('CSHAMT').AsFloat := QArbill1.FieldByName('PAYAMT').AsFloat;
    end
    else if QArpaytr.FieldByName('Paytyp').Asstring = '02' then
    begin
      QArpaytr.FieldByName('CSHAMT').AsFloat := 0;
      QArpaytr.FieldByName('CREDITAMT').AsFloat := 0;
      QArpaytr.FieldByName('BANKAMT').AsFloat := 0;
      QArpaytr.FieldByName('CHQAMT').AsFloat := QArbill1.FieldByName('PAYAMT').AsFloat;
    end
    else if QArpaytr.FieldByName('Paytyp').Asstring = '10' then
    begin
      QArpaytr.FieldByName('CHQAMT').AsFloat := 0;
      QArpaytr.FieldByName('CREDITAMT').AsFloat := 0;
      QArpaytr.FieldByName('CSHAMT').AsFloat := 0;
      QArpaytr.FieldByName('BANKAMT').AsFloat := QArbill1.FieldByName('PAYAMT').AsFloat;
    end
    else if QArpaytr.FieldByName('Paytyp').Asstring = '90' then
    begin
      QArpaytr.FieldByName('CHQAMT').AsFloat := 0;
      QArpaytr.FieldByName('CSHAMT').AsFloat := 0;
      QArpaytr.FieldByName('BANKAMT').AsFloat := 0;
      QArpaytr.FieldByName('CREDITAMT').AsFloat := QArbill1.FieldByName('PAYAMT').AsFloat;
    end
    else
    begin
      QArpaytr.FieldByName('CHQAMT').AsFloat := 0;
      QArpaytr.FieldByName('CREDITAMT').AsFloat := 0;
      QArpaytr.FieldByName('BANKAMT').AsFloat := 0;
      QArpaytr.FieldByName('CSHAMT').AsFloat := QArbill1.FieldByName('PAYAMT').AsFloat;
    end;

    QArpaytr.FieldByName('TOTAL').AsFloat := QArpaytr.FieldByName('CSHAMT').AsFloat +
      QArpaytr.FieldByName('CHQAMT').AsFloat +
      QArpaytr.FieldByName('CREDITAMT').AsFloat +
      QArpaytr.FieldByName('BANKAMT').AsFloat;

    QArpaytr.FieldByName('NETTOT').AsFloat := QArpaytr.FieldByName('TOTAL').AsFloat;
  end;
end;

procedure TDm_Ar.QArchqNewRecord(DataSet: TDataSet);
begin
  if Dm_Ar.QArpaytr1.Active then
  begin
    if Dm_Ar.QArpaytr1.FieldByName('BILLNO').Asstring = '' then
      SFmain.RaiseException('ยังไม่บันทึกใบเสร็จ');
    Dm_Ar.QArchq.FieldByName('BILLNO').Asstring := Dm_Ar.QArpaytr1.FieldByName('BILLNO').Asstring;
    Dm_Ar.QArchq.FieldByName('LOCAT').Asstring := Dm_Ar.QArpaytr1.FieldByName('LOCAT').Asstring;
  end
  else if Dm_Ar.QArpaytr.Active then
  begin
    if Dm_Ar.QArpaytr.FieldByName('BILLNO').Asstring = '' then
      SFmain.RaiseException('ยังไม่บันทึกใบเสร็จ');
    Dm_Ar.QArchq.FieldByName('BILLNO').Asstring := Dm_Ar.QArpaytr.FieldByName('BILLNO').Asstring;
    Dm_Ar.QArchq.FieldByName('LOCAT').Asstring := Dm_Ar.QArpaytr.FieldByName('LOCAT').Asstring;
  end;
end;

procedure TDm_Ar.QArpaytrVAT3Validate(Sender: TField);
var
  Tott, vatrt: real;
begin

  if not (QCondpay.Active) then
    QCondpay.Open;

  Tott := QArpaytrTOTAL.Asfloat;
  vatrt := FRound((QArpaytrTOTAL.Asfloat * QCondpay.Fieldbyname('Vatrt').Asfloat) / (100 + QCondpay.Fieldbyname('Vatrt').Asfloat), 2);
  QArpaytrVAT3AMT.Asfloat := FRound((Tott - vatrt) * QArpaytrVAT3.Asfloat / 100, 2);
  QArpaytrNETTOT.Asfloat := FRound((QArpaytrTOTAL.Asfloat + QArpaytrADDAMT.Asfloat) - (QArpaytrVAT3AMT.Asfloat + QArpaytrDISAMT.Asfloat), 2);
end;

procedure TDm_Ar.QArpaytrVAT3AMTValidate(Sender: TField);
begin
  QArpaytr.FieldByName('NETTOT').AsFloat := FRound((QArpaytr.FieldByName('TOTAL').AsFloat + QArpaytr.FieldByName('ADDAMT').AsFloat)
    - (QArpaytrVAT3AMT.Asfloat + QArpaytrDISAMT.Asfloat), 2);
end;

procedure TDm_Ar.QArpaytr1TOTALValidate(Sender: TField);
begin
  if (QArpaytr1.State = Dsinsert) and (QArpaytr1.FieldByName('TOTAL').AsFloat <> 0) then
    QArpaytr1.FieldByName('NETTOT').AsFloat := Fround((QArpaytr1.FieldByName('TOTAL').AsFloat + QArpaytr1.FieldByName('ADDAMT').AsFloat) -
      (QArpaytr1VAT3AMT.Asfloat + QArpaytr1DISAMT.Asfloat), 2);
end;

procedure TDm_Ar.QArpaytr1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Ar.QArpaytr1NETTOTValidate(Sender: TField);
begin

  if (Dm_Ar.QArpaytr1nettot.asfloat < 0) then
    SFmain.RaiseException('ยอดชำระน้อยกว่า 0 บาทไม่ได้');

  if QArpaytr1.State = Dsinsert then
  begin

    if QArpaytr1.FieldByName('Paytyp').Asstring = '01' then
    begin

      QArpaytr1.FieldByName('CSHAMT').AsFloat := QArpaytr1.FieldByName('NETTOT').AsFloat;
      QArpaytr1.FieldByName('CHQAMT').AsFloat := 0;
    end
    else
    begin
      QArpaytr1.FieldByName('CSHAMT').AsFloat := 0;
      QArpaytr1.FieldByName('CHQAMT').AsFloat := QArpaytr1.FieldByName('NETTOT').AsFloat;
    end;
  end;
end;

procedure TDm_Ar.QArpaytrADDAMTValidate(Sender: TField);
begin
  QArpaytr.FieldByName('NETTOT').AsFloat := (QArpaytr.FieldByName('TOTAL').AsFloat + QArpaytr.FieldByName('ADDAMT').AsFloat)
    - (QArpaytrVAT3AMT.Asfloat + QArpaytrDISAMT.Asfloat);
end;

procedure TDm_Ar.QArpaytrTOTALValidate(Sender: TField);
begin
  QArpaytr.FieldByName('NETTOT').AsFloat := (QArpaytr.FieldByName('TOTAL').AsFloat + QArpaytr.FieldByName('ADDAMT').AsFloat)
    - (QArpaytrVAT3AMT.Asfloat + QArpaytrDISAMT.Asfloat + QArpaytrBANKFEE.Asfloat);
end;

procedure TDm_Ar.QArpaytrUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Ar.QArpaytr1VAT3AMTValidate(Sender: TField);
begin
  QArpaytr1.FieldByName('NETTOT').AsFloat := (QArpaytr1.FieldByName('TOTAL').AsFloat + QArpaytr1.FieldByName('ADDAMT').AsFloat)
    - (QArpaytr1VAT3AMT.Asfloat + QArpaytr1DISAMT.Asfloat + QArpaytrBANKFEE.Asfloat);
end;

procedure TDm_Ar.QArpaytrNETTOTValidate(Sender: TField);
begin
  if (Dm_Ar.QArpaytrnettot.asfloat < 0) then
    SFmain.RaiseException('ยอดชำระน้อยกว่า 0 บาทไม่ได้');
end;

procedure TDm_Ar.QArinv1PAYFORValidate(Sender: TField);
begin
  if QArinv1PAYFOR.aSSTRING <> '' then
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.add('SELECT * FROM PAYFOR WHERE FORCODE=:1');
      Params[0].Asstring := QArinv1PAYFOR.aSSTRING;
      Open;
      if Bof and Eof then
        SFmain.RaiseException('ไม่พบรหัสชำระค่าในแฟ้มข้อมูล');
    end;
end;

procedure TDm_Ar.QPayforAfterPost(DataSet: TDataSet);
begin
  dm_sec.HI_DBMS.StartTransaction;
  try
    if QPayfor.Active then
      if (QPayfor.ApplyUpdates = 0) then
        QPayfor.CommitUpdates
      else
        raise Exception.Create(QPayfor.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TDm_Ar.QArinv1TOTALValidate(Sender: TField);
begin
  QArinv1VATAMT.AsFloat := QArinv1TOTAL.AsFloat * QArinv1VATRT.AsFloat / 100;
  QArinv1NETTOTAL.AsFloat := QArinv1TOTAL.AsFloat + (QArinv1TOTAL.AsFloat * QArinv1VATRT.AsFloat / 100)
end;

procedure TDm_Ar.QArOthrCONTNOValidate(Sender: TField);
begin
  if Dm_Ar.QArOthr.FieldByName('CONTNO').Asstring <> '' then
  begin
    with Dm_Ar.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT LOCAT,CONTNO,CUSCOD FROM ARCRED WHERE CONTNO=:V0 AND TSALE=:V1 UNION ' +
        'SELECT LOCAT,CONTNO,CUSCOD FROM ARFINC WHERE CONTNO=:V0 AND TSALE=:V1 ');
      Params[0].Asstring := Dm_Ar.QArOthr.FieldByName('CONTNO').Asstring;
      Params[1].Asstring := Dm_Ar.QArOthr.FieldByName('TSALE').Asstring;
      Open;
      if not (eof and bof) then
        Dm_Ar.QArOthr.FieldByName('Cuscod').Asstring := FieldByName('Cuscod').Asstring;
    end;
  end;
  if Dm_Ar.QArOthr.FieldByName('Cuscod').Asstring <> '' then
  begin
    with Dm_Ar.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD=:CUST');
      Params[0].Asstring := Dm_Ar.QArOthr.FieldByName('Cuscod').Asstring;
      Open;
      FArOth10.Edit1.Text := Dm_Ar.Query1.FieldByName('Snam').Asstring +
        Dm_Ar.Query1.FieldByName('Name1').Asstring + '  ' +
        Dm_Ar.Query1.FieldByName('Name2').Asstring;
    end;
  end;
  if QArOthr.FieldByName('CONTNO').Asstring = '' then
  begin
    FArOth10.DBCust.Properties.ReadOnly := False;
  end
  else
  begin
    FArOth10.DBCust.Properties.ReadOnly := True;
  end;
end;

procedure TDm_Ar.QArOthrARCONTValidate(Sender: TField);
var
  HF, LF, LV: string;
begin
  if QArOthrUpdateStatus.Value = 'Inserted' then
  begin
    LV := QArOthr.FieldByName('Locat').Asstring;
    HF := 'H_AROTH';
    LF := 'L_AROTNO';

    if XRunCont = 'N' then
      if Copy(QArOthrARCONT.Asstring, 1, 3) = Dm01.ChkDupRun(HF, LF, LV) then
        SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');

    if QArOthrARCONT.Asstring = '' then
      SFMain.RaiseException('กรุณาป้อนเลขที่สัญญาลูกหนี้อื่น');
  end;
end;

procedure TDm_Ar.QArOthrTSALEValidate(Sender: TField);
begin
  if QArOthr.FieldByName('TSALE').Asstring = 'T' then
    QArOthr.FieldByName('CONTNO').Asstring := QArOthr.FieldByName('CUSCOD').Asstring;
end;

procedure TDm_Ar.QArOthrUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Ar.QArOthrCUSCODValidate(Sender: TField);
begin
  if QArOthrCUSCOD.Asstring = '' then
    SFMain.RaiseException('กรุณาป้อนรหัสลูกค้าให้เรียบร้อย');
  DM01.FindNoExist('CUSTMAST', 'CUSCOD', Dm_Ar.QArOthrCUSCOD.Asstring);
end;

procedure TDm_Ar.QArOthrPAYFORValidate(Sender: TField);
begin
  DM01.FindNoExist('PAYFOR', 'FORCODE', QArOthrPAYFOR.AsString);
  if copy(QArOthr.FieldByName('PAYFOR').Asstring, 1, 1) = '0' then
    SFMain.RaiseException('ลูกหนี้อื่นต้องไม่ใช้รหัสการชำระที่ขึ้นต้นด้วย 0');
end;

procedure TDm_Ar.QArOthrARDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if QArOthrUpdateStatus.Value = 'Inserted' then
  begin
    LV := QArOthr.FieldByName('Locat').Asstring;
    DV := QArOthr.FieldByName('ArDate').Asdatetime;
    HF := 'H_AROTH';
    LF := 'L_AROTNO';
    if XRunCont = 'Y' then
    begin
      SQLTXT := 'SELECT MAX(ARCONT) AS MAXNO FROM AROTHR WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(ARCONT,2,2)=:EDIT2 AND SUBSTR(ARCONT,5,2)=:EDIT3 ' +
        'AND SUBSTR(ARCONT,7,2)=:EDIT4';
      if Duplicate then
        QArOthrARCONT.Asstring := Dm01.Maxno(HF, LF, LV, SQLTXT, DV)
      else
        QArOthrARCONT.Asstring := Dm01.RunNo01(HF, LF, LV, DV);
    end;
  end;
end;

procedure TDm_Ar.QArOthrAfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QArOthr.FieldByName('ARCont').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QArOthr.Active then
      if (QArOthr.ApplyUpdates = 0) then
        QArOthr.CommitUpdates
      else
        raise Exception.Create(QArOthr.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QArOthr.Edit;
    raise;
  end;
  //
  with Dm_Ar.QArOthr do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM AROTHR WHERE ARCONT=:CONT');
    Params[0].Asstring := SCont;
    Open;
  end;
end;

procedure TDm_Ar.QArOthrBeforeDelete(DataSet: TDataSet);
begin
  if (QArOthrSmpay.Asfloat + QArOthrSmchq.Asfloat) > 0 then
    SFMain.RaiseException('มีการรับชำระเงินแล้ว');
end;

procedure TDm_Ar.QArOthrBeforePost(DataSet: TDataSet);
begin
  ClearAsString(DataSet);
  if (QArOthrUpdateStatus.Value = 'Inserted') then
    if Duplicate then
      QArOthrArDateValidate(QArOthrArDate);

  if (QArOthrUpdateStatus.Value = 'Inserted') then
  begin
    with Query1 do
    begin
      close;
      sql.clear;
      sql.add('SELECT FORCODE,TAXFL FROM PAYFOR ' +
        'WHERE FORCODE=:VAR0 ');
      Params[0].Asstring := QArOthr.FieldByName('payfor').Asstring;
      open;
      if not (bof and eof) then
      begin
        if FieldByName('TAXFL').Asstring <> 'Y' then
          QArOthr.FieldByName('VATRT').AsFloat := 0;
      end;
    end;
  end;
end;

procedure TDm_Ar.QArOthrCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
            'Inserted', 'Deleted');
begin
  if QArOthr.CachedUpdates then
    QArOthrUpdateStatus.Value := UpdateStatusStr[QArOthr.UpdateStatus];
end;

procedure TDm_Ar.QArOthrNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(DataSet);
  Duplicate := False;
  with QVatmast do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM VATMAST ' +
      'WHERE :0 BETWEEN FRMDATE and TODATE ');
    Params[0].AsDate := Date;
    open;
    if eof and bof then
      SFMain.RaiseException('กำหนดอัตราภาษีไม่ครอบคลุมวันนี้');
  end;
  QArOthr.FieldByName('Vatrt').Asfloat := 0; // QVatmast.FieldByName('Vatrt').Asfloat;
  QArOthr.Fieldbyname('LOCAT').Asstring := SFMain.XLocat;
  QArOthr.FieldByName('Ardate').Asdatetime := SFMain.CR_DATE;
  QArOthrInpDt.AsDatetime := Now;
  QArOthr.Fieldbyname('USERID').Asstring := SFMain.Xuser_ID;
end;

procedure TDm_Ar.QArpaytr1CREDITAMTValidate(Sender: TField);
begin
  QArpaytr1CSHAMTValidate(QArpaytr1CREDITAMT);
end;

procedure TDm_Ar.QArpaytr1BANKAMTValidate(Sender: TField);
begin
  QArpaytr1CSHAMTValidate(QArpaytr1BANKAMT);
end;

procedure TDm_Ar.QArpaytrCREDITAMTValidate(Sender: TField);
begin
  QArpaytr1CSHAMTValidate(QArpaytrCREDITAMT);
end;

procedure TDm_Ar.QArpaytrBANKAMTValidate(Sender: TField);
begin
  QArpaytr1CSHAMTValidate(QArpaytrBANKAMT);
end;

procedure TDm_Ar.QArpaytr1BeforeEdit(DataSet: TDataSet);
begin
  if Dm_Ar.QArpaytr1POSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');
end;

procedure TDm_Ar.QArpaytrBeforeEdit(DataSet: TDataSet);
begin
  if Dm_Ar.QArpaytrPOSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');
end;

procedure TDm_Ar.QArbillCUSCODEChange(Sender: TField);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCUSCOD ');
    Params[0].Asstring := QArbillCUSCODE.AsString;
    Open;
  end;
  QArbillDESC.AsString := Dm_Ar.Query1.Fieldbyname('SNAM').Asstring + ' ' +
    Dm_Ar.Query1.Fieldbyname('NAME1').Asstring + ' '
    + Dm_Ar.Query1.Fieldbyname('NAME2').Asstring;
end;

procedure TDm_Ar.QArbilTrBeforeDelete(DataSet: TDataSet);
begin
  if QArbilTr.FieldByName('REFBILLNO').AsString <> '' then
    sfmain.RaiseException('รับชำระเงินแล้ว..!');
end;

procedure TDm_Ar.QArpaytrBANKFEEValidate(Sender: TField);
begin
  QArpaytr.FieldByName('NETTOT').AsFloat := (QArpaytr.FieldByName('TOTAL').AsFloat + QArpaytr.FieldByName('ADDAMT').AsFloat)
    - (QArpaytrVAT3AMT.Asfloat + QArpaytrDISAMT.Asfloat + QArpaytrBANKFEE.Asfloat);
end;

procedure TDm_Ar.QArbillDEPOSIT_DOCValidate(Sender: TField);
begin
  if QArbillDEPOSIT_DOC.Asstring <> '' then
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM APINVOI WHERE INVNO=:NO');
      Params[0].Asstring := QArbillDEPOSIT_DOC.Asstring;
      Open;
      if Bof and Eof then
        SFmain.RaiseException('ไม่พบเลขที่มัดจำ');

      if Query1.Fieldbyname('Kang').Asfloat = 0 then
        SFmain.RaiseException('เงินมัดจำถูกล้างหนี้แล้ว');

      QArbill.Fieldbyname('DEPOSIT_AMNT').AsFloat := Query1.Fieldbyname('Balance').Asfloat;
    end;
end;

end.

