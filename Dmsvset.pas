unit DmSvSet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDm_SvSet = class(TDataModule)
    SoSvtype1: TDataSource;
    QSvtype1: TFDQuery;
    QSvstock: TFDQuery;
    SoSvstock: TDataSource;
    QApmast: TFDQuery;
    SoApmast: TDataSource;
    QSvmast: TFDQuery;
    SoSvmast: TDataSource;
    SoChecklis: TDataSource;
    TmpQuery: TFDQuery;
    QLocat: TFDQuery;
    QSvpict: TFDQuery;
    Sosvpict: TDataSource;
    Bookserv: TFDQuery;
    SoBookserv: TDataSource;
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
    Query2: TFDQuery;
    Query1: TFDQuery;
    TabServ: TFDQuery;
    Grpmst: TFDQuery;
    SoGrppart: TDataSource;
    SoGrpOrd: TDataSource;
    SoGrpmst: TDataSource;
    SoGrpServ: TDataSource;
    SoCondpay: TDataSource;
    QOrdiv: TFDQuery;
    QOrdivORDNO: TStringField;
    QOrdivORDDATE: TDateField;
    QOrdivCUSCOD: TStringField;
    QOrdivDISCT: TFloatField;
    QOrdivBALANCE: TFloatField;
    QOrdivVATRT: TFloatField;
    QOrdivVATAMT: TFloatField;
    QOrdivNETAMT: TFloatField;
    QOrdivNETTOTAL: TFloatField;
    QOrdivTOTPRC: TFloatField;
    QOrdivFLAG: TStringField;
    QOrdivSTAT: TStringField;
    QOrdivJOBNO: TStringField;
    QOrdivMEMO1: TMemoField;
    QOrdivORDLOCAT: TStringField;
    QOrdivOFFICCOD: TStringField;
    QOrdivUSERID: TStringField;
    QOrdivTIME1: TDateTimeField;
    SoOrdiv: TDataSource;
    SoOrdtn: TDataSource;
    QOrdtn: TFDQuery;
    QOrdtnORDNO: TStringField;
    QOrdtnORDDATE: TDateField;
    QOrdtnUPRICE: TFloatField;
    QOrdtnQTYORD: TFloatField;
    QOrdtnQTYOUT: TFloatField;
    QOrdtnQTYBOD: TFloatField;
    QOrdtnNETFL: TStringField;
    QOrdtnREDU1: TFloatField;
    QOrdtnREDU2: TFloatField;
    QOrdtnREDU3: TFloatField;
    QOrdtnNETPRC: TFloatField;
    QOrdtnTOTPRC: TFloatField;
    QOrdtnACCTNO: TStringField;
    QOrdtnJOBNO: TStringField;
    QOrdtnSERIALNO: TStringField;
    QOrdtnPARTNO: TStringField;
    QOrdtnORDLOCAT: TStringField;
    QOrdivVATTYPE: TStringField;
    Lastno: TFDQuery;
    QJobord: TFDQuery;
    SoJobord: TDataSource;
    QInvent: TFDQuery;
    Query3: TFDQuery;
    QCondpay: TFDQuery;
    QOrdivGCODE: TStringField;
    TChecklis: TFDTable;
    TGrpServ: TFDTable;
    TGrppart: TFDTable;
    TGrpOrd: TFDTable;
    TTopcar: TFDTable;
    Condpay: TFDQuery;
    QDbconfig: TFDQuery;
    TInvmast: TFDTable;
    Qinventor: TFDQuery;
    QOrdtnYEAR1: TStringField;
    QOrdtnUSERID: TStringField;
    QOrdtnTIME1: TDateTimeField;
    QOrdtnCAMPNO: TStringField;
    QOrdtnCAMFLG: TStringField;
    QOrdivCANCELID: TStringField;
    QOrdivCANDAT: TDateTimeField;
    QOrdivPOSTGLDT: TDateTimeField;
    QOrdivCAMPNO: TStringField;
    QOrdtnGROUP1: TStringField;
    BookservREPTYPE: TStringField;
    BookservFINSDATE: TDateField;
    BookservFINSTIME: TStringField;
    QSvmastSTRNO: TStringField;
    QSvmastREGNO: TStringField;
    QSvmastENGNO: TStringField;
    QSvmastTYPE: TStringField;
    QSvmastMDLCOD: TStringField;
    QSvmastBAAB: TStringField;
    QSvmastCOLOR: TStringField;
    QSvmastCC: TStringField;
    QSvmastSDATE: TDateField;
    QSvmastCUSCOD: TStringField;
    QSvmastLASTSERV: TDateField;
    QSvmastLASTKILO: TFloatField;
    QSvmastBUYFROM: TStringField;
    QSvmastSVDISCT: TFloatField;
    QSvmastVIPCARD: TStringField;
    QSvmastVIPISSU: TDateField;
    QSvmastVIPEXP: TDateField;
    QSvmastINSURNO: TStringField;
    QSvmastINSURDT: TDateField;
    QSvmastWARANTY: TFloatField;
    QSvmastREGDATE: TDateField;
    QSvmastEXPWARNT: TDateField;
    QSvmastCUSTYPE: TStringField;
    QSvmastFIRSTDT: TDateField;
    QSvmastSTATUS: TStringField;
    QSvmastMEMO1: TMemoField;
    QSvmastUSERID: TStringField;
    QSvmastTIME1: TDateTimeField;
    QSvmastCANCELID: TStringField;
    QSvmastCANDAT: TDateTimeField;
    QSvmastEXPKILO: TFloatField;
    QSvmastEXPTYPE: TStringField;
    QSvmastPTDISCT: TFloatField;
    QSvmastINSURTYP: TStringField;
    QSvmastISCODE: TStringField;
    QSvmastPRBTYP: TStringField;
    QSvmastPRBISCOD: TStringField;
    QSvmastPRBEXPDT: TDateField;
    QSvmastGEARTYPE: TStringField;
    QSvmastMODLYEAR: TStringField;
    QSvmastESTUSE: TFloatField;
    QSvmastLOCAT: TStringField;
    QSvmastBODYNO: TStringField;
    QSvmastGCODE: TStringField;
    GrpmstGCODE: TStringField;
    GrpmstMDLCOD: TStringField;
    GrpmstGDESC: TStringField;
    GrpmstUSERID: TStringField;
    GrpmstTIME1: TDateTimeField;
    QSvstockCODE: TStringField;
    QSvstockLOCAT: TStringField;
    QSvstockDESC1: TStringField;
    QSvstockONHAND: TFloatField;
    QSvstockUNIT: TStringField;
    QSvstockUCOST: TFloatField;
    QSvstockUPRICE: TFloatField;
    QSvstockSTAT: TStringField;
    QSvstockFRT: TFloatField;
    QSvstockMEMO1: TMemoField;
    QSvstockUSERID: TStringField;
    QSvstockTIME1: TDateTimeField;
    CondpayCURYEAR: TStringField;
    CondpayCURMONTH: TStringField;
    CondpayLICEN_NO: TStringField;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    CondpayTAXID: TStringField;
    CondpayVATRT: TFloatField;
    CondpayTAXNAME: TStringField;
    CondpayTAXADDR: TStringField;
    CondpaySVRATE: TFloatField;
    CondpayNEXTKILO: TFloatField;
    CondpayNEXTDAY: TFloatField;
    CondpaySVFLAG: TStringField;
    CondpayCAMTYP: TStringField;
    CondpayCAMPART: TFloatField;
    CondpayCAMSERV: TFloatField;
    CondpayCAMDAT1: TDateField;
    CondpayCAMDAT2: TDateField;
    CondpayH_CSH: TStringField;
    CondpayH_CRD: TStringField;
    CondpayH_CSD: TStringField;
    CondpayH_PUR: TStringField;
    CondpayH_CRN: TStringField;
    CondpayH_DBN: TStringField;
    CondpayH_RCG: TStringField;
    CondpayH_RTG: TStringField;
    CondpayH_TRA: TStringField;
    CondpayH_TRB: TStringField;
    CondpayH_PO: TStringField;
    CondpayH_PK: TStringField;
    CondpayH_PKSV: TStringField;
    CondpayH_RTSV: TStringField;
    CondpayH_QA1: TStringField;
    CondpayH_ADJ: TStringField;
    CondpayH_BNO: TStringField;
    CondpayH_BSNO: TStringField;
    CondpayH_OTH: TStringField;
    CondpayH_RVOTH: TStringField;
    CondpayH_JOB: TStringField;
    CondpayH_QA: TStringField;
    CondpayH_RQPK: TStringField;
    CondpayH_INVOT: TStringField;
    CondpayH_DVTX: TStringField;
    CondpayH_BLNO: TStringField;
    CondpayH_DVPT: TStringField;
    CondpayH_DVSV: TStringField;
    CondpayH_DVAL: TStringField;
    CondpayH_DVOH: TStringField;
    CondpayH_TXPT: TStringField;
    CondpayH_TXSV: TStringField;
    CondpayH_TXAL: TStringField;
    CondpayH_TXOH: TStringField;
    CondpayH_AJTM: TStringField;
    CondpayH_CUS: TStringField;
    CondpayH_STIN: TStringField;
    CondpaySVRATE2: TFloatField;
    CondpayMEMO1: TMemoField;
    CondpayFIXJOB: TStringField;
    CondpayVATTYPE: TStringField;
    CondpaySELDB2: TStringField;
    CondpayPODISC: TStringField;
    CondpayPOCOST: TStringField;
    CondpayMULTIFR: TStringField;
    CondpaySALTYPE: TStringField;
    CondpayDISCTYP: TStringField;
    CondpayCAMPTYP: TStringField;
    CondpayDISBATH: TStringField;
    CondpayTEMPTAX: TStringField;
    CondpayH_WARTY: TStringField;
    CondpayMAPDRV: TStringField;
    CondpayH_OTHC: TStringField;
    CondpayH_OTHD: TStringField;
    CondpayH_FRE: TStringField;
    CondpayH_DXOH: TStringField;
    CondpayH_SLCS: TStringField;
    CondpayH_SLCD: TStringField;
    CondpayH_SLFI: TStringField;
    CondpayH_SLRS: TStringField;
    CondpayH_SLRC: TStringField;
    CondpayH_SLMV: TStringField;
    CondpayH_SLQA: TStringField;
    CondpayH_TXCS: TStringField;
    CondpayH_TXFI: TStringField;
    CondpayH_SLBL: TStringField;
    CondpaySEPOH: TStringField;
    CondpayH_PTOH: TStringField;
    CondpayH_SVOH: TStringField;
    CondpayNSTKLOB: TStringField;
    CondpayH_TXDV: TStringField;
    CondpayISSUTAX: TStringField;
    CondpayH_DBSV: TStringField;
    CondpayH_CLMT: TStringField;
    CondpayH_RTPT: TStringField;
    CondpayADDCHARG: TFloatField;
    QSvtype1TYPCOD: TStringField;
    QSvtype1TYPNAME: TStringField;
    QSvtype1TYPFLG: TStringField;
    QSvtype1SNCSET: TStringField;
    QSvtype1ACCSV: TStringField;
    QSvtype1ACCCL: TStringField;
    QSvtype1ACCTC: TStringField;
    QSvtype1DEPT: TStringField;
    QJobordJOBNO: TStringField;
    QJobordLOCAT: TStringField;
    QJobordSTRNO: TStringField;
    QJobordCUSCOD: TStringField;
    QJobordMDLCOD: TStringField;
    QJobordRUNNO: TStringField;
    QJobordRECVDATE: TDateField;
    QJobordRECVTIME: TStringField;
    QJobordFINSDATE: TDateField;
    QJobordFINSTIME: TStringField;
    QJobordRFINSHDT: TDateField;
    QJobordRFINSHTM: TStringField;
    QJobordRLKILOMT: TFloatField;
    QJobordKILOMT: TFloatField;
    QJobordRECVCOD: TStringField;
    QJobordCUST_IN: TStringField;
    QJobordPAYCOD: TStringField;
    QJobordCUST_OUT: TStringField;
    QJobordAPP_DATE: TDateField;
    QJobordAPP_MILE: TFloatField;
    QJobordREPTYPE: TStringField;
    QJobordGROUP1: TStringField;
    QJobordREPBAY: TStringField;
    QJobordPAYDATE: TDateField;
    QJobordINSPECT: TStringField;
    QJobordREPCOD: TStringField;
    QJobordVATTYPE: TStringField;
    QJobordVAT: TFloatField;
    QJobordPARTDISC: TFloatField;
    QJobordPARTNET: TFloatField;
    QJobordPARTVAT: TFloatField;
    QJobordPARTTOT: TFloatField;
    QJobordOILDISC: TFloatField;
    QJobordOILNET: TFloatField;
    QJobordOILVAT: TFloatField;
    QJobordOILTOT: TFloatField;
    QJobordSERVDISC: TFloatField;
    QJobordSERVNET: TFloatField;
    QJobordSERVVAT: TFloatField;
    QJobordSERVTOT: TFloatField;
    QJobordOUTJDISC: TFloatField;
    QJobordOUTJNET: TFloatField;
    QJobordOUTJVAT: TFloatField;
    QJobordOUTJTOT: TFloatField;
    QJobordCOLORDISC: TFloatField;
    QJobordCOLORNET: TFloatField;
    QJobordCOLORVAT: TFloatField;
    QJobordCOLORTOT: TFloatField;
    QJobordOTHERDISC: TFloatField;
    QJobordOTHERNET: TFloatField;
    QJobordOTHERVAT: TFloatField;
    QJobordOTHERTOT: TFloatField;
    QJobordTSV_DISC: TFloatField;
    QJobordTSV_NET: TFloatField;
    QJobordTSV_VAT: TFloatField;
    QJobordTSV_TOT: TFloatField;
    QJobordTAXDATE: TDateField;
    QJobordPTAXNO: TStringField;
    QJobordSTAXNO: TStringField;
    QJobordBILDATE: TDateField;
    QJobordBILLNO: TStringField;
    QJobordFLAGCAN: TStringField;
    QJobordCANDATE: TDateField;
    QJobordSTATUS: TStringField;
    QJobordMEMO1: TMemoField;
    QJobordSVFLAG: TStringField;
    QJobordTOPNO: TStringField;
    QJobordPREORDNO: TStringField;
    QJobordADDNET: TFloatField;
    QJobordADDVAT: TFloatField;
    QJobordADDTOT: TFloatField;
    QJobordPARTCOST: TFloatField;
    QJobordUSERID: TStringField;
    QJobordTIME1: TDateTimeField;
    QJobordCANCELID: TStringField;
    QJobordCANDAT: TDateTimeField;
    QJobordPOSTGLDT: TDateTimeField;
    QJobordINV1_PT: TFloatField;
    QJobordINV1_SV: TFloatField;
    QJobordINV2_PT: TFloatField;
    QJobordINV2_SV: TFloatField;
    QJobordDISCPT: TFloatField;
    QJobordDISCSV: TFloatField;
    QJobordDISCOL: TFloatField;
    QJobordDISCCO: TFloatField;
    QJobordOUTADD: TFloatField;
    QJobordOILCOST: TFloatField;
    QJobordFRRATE: TFloatField;
    QJobordFRCODE: TStringField;
    QJobordCAMPNO: TStringField;
    QJobordREFNO: TFloatField;
    QJobordFLAG: TStringField;
    QJobordISCODE: TStringField;
    QJobordSTATCOD: TStringField;
    QJobordREDUAMT: TFloatField;
    SoSetgroup: TDataSource;
    QSetgroup: TFDQuery;
    BookservBOOKNO: TStringField;
    BookservLOCAT: TStringField;
    BookservUpdateStatus: TStringField;
    BookservREMARK: TMemoField;
    BookservINPDATE: TDateTimeField;
    QModelmst: TFDQuery;
    QSvmastROUNDKILO: TFloatField;
    QSvmastNEXTDTSV: TDateField;
    QSvmastNEXTKLSV: TFloatField;
    QSvmastROUNDDAY: TIntegerField;
    dsModelmst: TDataSource;
    QOrdivUpdatestatus: TStringField;
    procedure QSvtype1BeforePost(DataSet: TDataSet);
    procedure QSvtype1AfterPost(DataSet: TDataSet);
    procedure QSvtype1AfterDelete(DataSet: TDataSet);
    procedure QSvtype1AfterCancel(DataSet: TDataSet);
    procedure QSvstockBeforePost(DataSet: TDataSet);
    procedure QSvstockAfterPost(DataSet: TDataSet);
    procedure QSvstockAfterDelete(DataSet: TDataSet);
    procedure QSvstockAfterCancel(DataSet: TDataSet);
    procedure QApmastBeforePost(DataSet: TDataSet);
    procedure QApmastAfterPost(DataSet: TDataSet);
    procedure QApmastAfterDelete(DataSet: TDataSet);
    procedure QApmastAfterCancel(DataSet: TDataSet);
    procedure QSvmastBeforePost(DataSet: TDataSet);
    procedure QSvmastAfterPost(DataSet: TDataSet);
    procedure QSvmastAfterDelete(DataSet: TDataSet);
    procedure QSvmastAfterCancel(DataSet: TDataSet);
    procedure QSvtype1NewRecord(DataSet: TDataSet);
    procedure GrpmstAfterPost(DataSet: TDataSet);
    procedure GrpmstAfterDelete(DataSet: TDataSet);
    procedure BookservAfterPost(DataSet: TDataSet);
    procedure BookservAfterCancel(DataSet: TDataSet);
    procedure BookservNewRecord(DataSet: TDataSet);
    procedure BookservREGNOValidate(Sender: TField);
    procedure BookservCFDATEValidate(Sender: TField);
    procedure QSvmastNewRecord(DataSet: TDataSet);
    procedure QOrdivAfterDelete(DataSet: TDataSet);
    procedure QOrdivAfterPost(DataSet: TDataSet);
    procedure QOrdivBeforeDelete(DataSet: TDataSet);
    procedure QOrdivBeforeEdit(DataSet: TDataSet);
    procedure QOrdivBeforePost(DataSet: TDataSet);
    procedure QOrdivNewRecord(DataSet: TDataSet);
    procedure QOrdtnAfterPost(DataSet: TDataSet);
    procedure QOrdtnBeforeInsert(DataSet: TDataSet);
    procedure QOrdtnBeforePost(DataSet: TDataSet);
    procedure QOrdivORDDATEValidate(Sender: TField);
    procedure QOrdtnNewRecord(DataSet: TDataSet);
    procedure TChecklisNewRecord(DataSet: TDataSet);
    procedure TGrpServNewRecord(DataSet: TDataSet);
    procedure TGrpServBeforePost(DataSet: TDataSet);
    procedure TGrppartNewRecord(DataSet: TDataSet);
    procedure TGrppartBeforePost(DataSet: TDataSet);
    procedure TGrpOrdNewRecord(DataSet: TDataSet);
    procedure TTopcarNewRecord(DataSet: TDataSet);
    procedure QOrdivORDLOCATValidate(Sender: TField);
    procedure QSvmastMDLCODValidate(Sender: TField);
    procedure QSvmastTYPEValidate(Sender: TField);
    procedure QOfficerBeforeDelete(DataSet: TDataSet);
    procedure QApmastBeforeDelete(DataSet: TDataSet);
    procedure QSvstockBeforeDelete(DataSet: TDataSet);
    procedure QSvmastBeforeDelete(DataSet: TDataSet);
    procedure QSvtype1BeforeDelete(DataSet: TDataSet);
    procedure QOrdtnAfterOpen(DataSet: TDataSet);
    procedure QOrdtnBeforeClose(DataSet: TDataSet);
    procedure Dm_SvSetCreate(Sender: TObject);
    procedure QSvmastCUSCODValidate(Sender: TField);
    procedure BookservREPTYPEValidate(Sender: TField);
    procedure QSetgroupAfterDelete(DataSet: TDataSet);
    procedure QSetgroupAfterPost(DataSet: TDataSet);
    procedure BookservBKDATEValidate(Sender: TField);
    procedure BookservCalcFields(DataSet: TDataSet);
    procedure BookservBeforePost(DataSet: TDataSet);
    procedure QSvmastGCODEValidate(Sender: TField);
    procedure QSvstockNewRecord(DataSet: TDataSet);
    procedure BookservUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QOrdivUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
    procedure CheckEditRight(XSource: TDataSource);
  public
    { Public declarations }
    XSchema: string;
    function MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    function RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function ZeroLead(St: string; len: integer): string;
    procedure CloseAll;
  end;

var
  Dm_SvSet: TDm_SvSet;
  Duplicate: Boolean;

const
  {Declare constants we're interested in}
  eRecLock = 10241;
  eDataChang = 10259;
  eKeyChang = 8708;
  eKeyViol = 9729;

implementation

uses
  USoftFirm, Functn01, Dmsec, Spin01;

{$R *.DFM}

function TDm_Svset.ZeroLead(St: string; len: integer): string;
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

function TDm_SvSet.RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  Zero: string;
  PF, HH, Lc, YY, MM, S2, Y1: string;
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
    Sql.Add('SELECT * FROM SCONDPAY ');
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
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM SLASTNO WHERE LOCAT  = :LOCAT_A ' +
      ' AND CR_YEAR = :CRY ' +
      ' AND CR_MONTH= :CRM ');
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
      Fieldbyname('Cr_year').Asstring := YY;
      Fieldbyname('Cr_Month').Asstring := MM;
      Post;
    end;
  end;
  LN := LastNo.FieldByname(LField).AsFloat;
  V1 := LN + 1;
  S2 := FloatTostr(V1);
  LL := length(S2);
  Zero := '';
  for i := 1 to (4 - LL) do
    Zero := Zero + '0';
  Result := PF + HH + '-' + Y1 + MM + Zero + S2;
  if V1 > LastNo.Fieldbyname(LField).AsFloat then
  begin
    LastNo.Edit;
    LastNo.Fieldbyname(LField).AsFloat := V1;
    LastNo.Post;
  end;
end;

function TDm_Svset.MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1, PF1, PF2: string;
  LN, V1: Double;
  Max: integer;
begin
  if not QCondpay.Active then
    QCondpay.Open;
  HH := QCondpay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);
  if (YY <> '1899') and (YY <> QCondpay.Fieldbyname('Curyear').Asstring) then
    SFmain.RaiseException('บันทึกปีทำงานผิด ปีทำงานปัจจุบัน คือ' + QCondpay.Fieldbyname('Curyear').Asstring);
    //
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
    //
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

    {Query Lastno Table}
  with Lastno do
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
    if (LASTNO.Eof) and (LASTNO.Bof) then
    begin
      LastNo.Insert;
      LastNo.Fieldbyname('Locat').Asstring := Lc;
      LastNo.Fieldbyname('Cr_year').Asstring := YY;
      LastNo.Fieldbyname('Cr_Month').Asstring := Mm;
      LastNo.Post;
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
    if V1 > LastNo.Fieldbyname(LField).AsFloat then
    begin
      LastNo.Edit;
      LastNo.Fieldbyname(LField).AsFloat := V1;
      LastNo.Post;
    end;
  end;
end;

procedure TDm_Svset.CheckEditRight(XSource: TDataSource);
begin
  if SFMain.Xlevel > '1' then
    if (XSource.State in DsEditmodes) and (not SFMain.Edit_right) then
    begin
      XSource.dataset.Cancel;
      MessageDlg('ไม่มีสิทธิ์ในการแก้ไขข้อมูล', mterror, [mbok], 0);
    end;
end;

procedure TDm_SvSet.QSvtype1BeforePost(DataSet: TDataSet);
begin
  if QSvtype1.Fieldbyname('TYPCOD').Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกรหัสประเภทการซ่อมทำ');
end;

procedure TDm_SvSet.QSvtype1AfterPost(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QSvtype1.Active then
      if (QSvtype1.ApplyUpdates = 0) then
        QSvtype1.CommitUpdates
      else
        raise Exception.Create(QSvtype1.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    QSvtype1.EDIT;
    raise;
  end;
end;

procedure TDm_SvSet.QSvtype1AfterDelete(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSvtype1.Active then
      if (QSvtype1.ApplyUpdates = 0) then
        QSvtype1.CommitUpdates
      else
        raise Exception.Create(QSvtype1.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TDm_SvSet.QSvtype1AfterCancel(DataSet: TDataSet);
begin
  if QSvtype1.Active then
    QSvtype1.CancelUpdates;
  with QSvtype1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVTYPE WHERE TYPCOD = :TYPCODE');
    PARAMS[0].ASSTRING := '';
    Open;
  end;
end;

procedure TDm_SvSet.QSvstockBeforePost(DataSet: TDataSet);
begin
  if QSvstock.Fieldbyname('CODE').Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกรหัสสินค้า');
  if Dm_SvSet.QSvstock.State = DsInsert then
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SVSTOCK WHERE CODE = :XCODE AND LOCAT = :XLoc');
      Params[0].Asstring := Dm_SvSet.QSvstock.FieldByname('CODE').Asstring;
      Params[1].Asstring := Dm_SvSet.QSvstock.FieldByname('LOCAT').Asstring;
      Open;
      if not (Dm_SvSet.Query1.EOF and Dm_SvSet.Query1.BOF) then
        SFmain.RaiseException('รหัสสินค้านี้มีแล้วในแฟ้มข้อมูล');
    end;
  end;
end;

procedure TDm_SvSet.QSvstockAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSvstock.Active then
      if (QSvstock.ApplyUpdates = 0) then
        QSvstock.CommitUpdates
      else
        raise Exception.Create(QSvstock.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    QSvstock.EDIT;
    raise;
  end;
end;

procedure TDm_SvSet.QSvstockAfterDelete(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSvstock.Active then
      if (QSvstock.ApplyUpdates = 0) then
        QSvstock.CommitUpdates
      else
        raise Exception.Create(QSvstock.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TDm_SvSet.QSvstockAfterCancel(DataSet: TDataSet);
begin
  if QSvstock.Active then
    QSvstock.CancelUpdates;
end;

procedure TDm_SvSet.QApmastBeforePost(DataSet: TDataSet);
begin
  if QApmast.Fieldbyname('APCODE').Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกรหัสเจ้าหนี้');
end;

procedure TDm_SvSet.QApmastAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QApmast.Active then
      if (QApmast.ApplyUpdates = 0) then
        QApmast.CommitUpdates
      else
        raise Exception.Create(QApmast.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TDm_SvSet.QApmastAfterDelete(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QApmast.Active then
      if (QApmast.ApplyUpdates = 0) then
        QApmast.CommitUpdates
      else
        raise Exception.Create(QApmast.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TDm_SvSet.QApmastAfterCancel(DataSet: TDataSet);
begin
  if QApmast.Active then
    QApmast.CancelUpdates;
  with QApmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APMAST WHERE APCODE = :APCODE');
    PARAMS[0].ASSTRING := '';
    Open;
  end;
end;

procedure TDm_SvSet.QSvmastBeforePost(DataSet: TDataSet);
begin
  if QSvmast.Fieldbyname('STRNO').Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกหมายเลขตัวถัง');
  if QSvmast.Fieldbyname('CUSCOD').Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
  if QSvmast.Fieldbyname('MDLCOD').Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกรุ่นรถ');
  ClearAsString(QSvmast);
end;

procedure TDm_SvSet.QSvmastAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSvmast.Active then
      if (QSvmast.ApplyUpdates = 0) then
        QSvmast.CommitUpdates
      else
        raise Exception.Create(QSvmast.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    QSvmast.EDIT;
    raise;
  end;
end;

procedure TDm_SvSet.QSvmastAfterDelete(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSvmast.Active then
      if (QSvmast.ApplyUpdates = 0) then
        QSvmast.CommitUpdates
      else
        raise Exception.Create(QSvmast.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TDm_SvSet.QSvmastAfterCancel(DataSet: TDataSet);
begin
  if QSvmast.Active then
    QSvmast.CancelUpdates;
  with QSvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVMAST WHERE STRNO = :XCODE');
    PARAMS[0].Asstring := '';
    Open;
  end;
end;

procedure TDm_SvSet.QSvtype1NewRecord(DataSet: TDataSet);
begin
  QSvtype1.Fieldbyname('TypFlg').Asstring := 'Y';
end;

procedure TDm_svset.CloseAll;
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
end;

procedure TDm_SvSet.GrpmstAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Grpmst.Active then
      if (Grpmst.ApplyUpdates = 0) then
        Grpmst.CommitUpdates
      else
        raise Exception.Create(Grpmst.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TDm_SvSet.GrpmstAfterDelete(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Grpmst.Active then
      if (Grpmst.ApplyUpdates = 0) then
        Grpmst.CommitUpdates
      else
        raise Exception.Create(Grpmst.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TDm_SvSet.BookservAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Bookserv.Active then
      if (Bookserv.ApplyUpdates = 0) then
        Bookserv.CommitUpdates
      else
        raise Exception.Create(Bookserv.RowError.Message);
    if Lastno.Active then
      if (Lastno.ApplyUpdates = 0) then
        Lastno.CommitUpdates
      else
        raise Exception.Create(Lastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TDm_SvSet.BookservAfterCancel(DataSet: TDataSet);
begin
  if Bookserv.Active then
    Bookserv.CancelUpdates;
end;

procedure TDm_SvSet.BookservNewRecord(DataSet: TDataSet);
var
  Present: TDateTime;
  Hour, Min, Sec, MSec: Word;
  S: string;
begin
  Present := Now;
  DecodeTime(Present, Hour, Min, Sec, MSec);
  S := IntToStr(Hour) + '.' + IntToStr(Min);

  Bookserv.Fieldbyname('LOCAT').Asstring := SFMain.Xlocat;
  Bookserv.Fieldbyname('BKDATE').AsDateTime := Date;
  Bookserv.Fieldbyname('INPDATE').asdateTime := Now;
  Bookserv.Fieldbyname('BKTIME').Asfloat := StrToFloat(S);
end;

procedure TDm_SvSet.BookservREGNOValidate(Sender: TField);
begin
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVMAST WHERE REGNO= :XREGNO  ');
    Params[0].Asstring := BookservREGNO.value;
    Open;
  end;

  if not (Dm_SvSet.Query1.Bof and Dm_SvSet.Query1.eof) then
    with Dm_SvSet.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT Name1,name2 FROM CUSTMAST WHERE CUSCOD= :XCus  ');
      Params[0].Asstring := Query1.FieldByname('Cuscod').value;
      Open;
    end;

  if not (Dm_SvSet.Query1.Bof and Dm_SvSet.Query1.eof) then
  begin
    Dm_SvSet.Bookserv.FieldByName('COLOR').AsString := Dm_SvSet.Query1.FieldByName('COLOR').AsString;
    Dm_SvSet.Bookserv.FieldByName('CUSCODE').AsString := Dm_SvSet.Query1.FieldByName('CUSCOD').AsString;
    Dm_SvSet.Bookserv.FieldByName('MDLCOD').AsString := Dm_SvSet.Query1.FieldByName('MDLCOD').AsString;
    if Dm_SvSet.Bookserv.FieldByName('Cuscode').AsString <> '' then
    begin
      Dm_SvSet.Bookserv.FieldByName('Name1').AsString := Dm_SvSet.Query2.FieldByName('Name1').AsString;
      Dm_SvSet.Bookserv.FieldByName('Name2').AsString := Dm_SvSet.Query2.FieldByName('Name2').AsString;
    end;
  end;
end;

procedure TDm_SvSet.BookservCFDATEValidate(Sender: TField);
begin
  if BookservCFDATE.Asdatetime < BookservBkDATE.Asdatetime then
    SFmain.RaiseException('วันที่นัดน้อยกว่าวันรับเรื่อง');
end;

procedure TDm_SvSet.QSvmastNewRecord(DataSet: TDataSet);
begin
  Clearasfloat(Qsvmast);
  Qsvmast.Fieldbyname('Custype').Asstring := '1';
  Qsvmast.Fieldbyname('INSURTYP').Asstring := 'N';
  Qsvmast.Fieldbyname('PRBTYP').Asstring := 'N';
  Qsvmast.Fieldbyname('Svdisct').AsFloat := 0;
  QSvmast.Fieldbyname('Firstdt').AsDatetime := Now;
  Qsvmast.Fieldbyname('USERID').Asstring := SFMain.XUser_id;
  QSvmast.Fieldbyname('Time1').AsDatetime := Now;
  Qsvmast.Fieldbyname('LOCAT').Asstring := SFMain.XLocat;
  Qsvmast.Fieldbyname('GEARTYPE').Asstring := 'A';
  Qsvmast.Fieldbyname('ESTUSE').AsFloat := 0;
end;

procedure TDm_SvSet.QOrdivAfterDelete(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QOrdiv.Active then
      if (QOrdiv.ApplyUpdates = 0) then
        QOrdiv.CommitUpdates
      else
        raise Exception.Create(QOrdiv.RowError.Message);
    if QOrdtn.Active then
      if (QOrdtn.ApplyUpdates = 0) then
        QOrdtn.CommitUpdates
      else
        raise Exception.Create(QOrdtn.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TDm_SvSet.QOrdivAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QOrdivORDNO.AsString;
  QOrdtn.AfterPost := nil;

  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QOrdiv.Active then
      if (QOrdiv.ApplyUpdates = 0) then
        QOrdiv.CommitUpdates
      else
        raise Exception.Create(QOrdiv.RowError.Message);
    with query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM SV_ORDIV WHERE ORDNO =:EDIT1');
      params[0].AsString := S;
      open;
    end;

    QOrdtn.First;
    while not (QOrdtn.Eof) do
    begin
      QOrdtn.Edit;
      QOrdtnJOBNO.Asstring := Query1.fieldbyname('JOBNO').Asstring;
      QOrdtnOrdno.Asstring := Query1.fieldbyname('Ordno').Asstring;
      QOrdtnOrdlocat.asstring := Query1.fieldbyname('ORDLOCAT').Asstring;
      QOrdtnOrddate.AsDateTime := Query1.fieldbyname('Orddate').AsDateTime;
      QOrdtn.Next;
    end;

    if QOrdtn.Active then
      if (QOrdtn.ApplyUpdates = 0) then
        QOrdtn.CommitUpdates
      else
        raise Exception.Create(QOrdtn.RowError.Message);
    if Lastno.Active then
      if (Lastno.ApplyUpdates = 0) then
        Lastno.CommitUpdates
      else
        raise Exception.Create(Lastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    raise;
  end;
  //
  QOrdtn.AfterPost := QOrdtnAfterPost;

  with Dm_SvSet.QOrdiv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SV_ORDIV WHERE ORDNO =:XORDNO ');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;

  with Dm_SvSet.QOrdtn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SV_ORDTN WHERE ORDNO =:XORDNO ');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TDm_SvSet.QOrdivBeforeDelete(DataSet: TDataSet);
begin
  if QOrdivBalance.AsFloat = 0 then
  begin
    with QOrdiv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SV_ORDIV WHERE ORDNO =:XORDNO ');
      PARAMS[0].ASSTRING := '';
      OPEN;
    end;
    SFmain.RaiseException('ไม่สามารถที่จะแก้ไขได้มีการชำระเงินแล้ว');
  end;

  QOrdtn.first;
  while not (QOrdtn.Bof and QOrdtn.Eof) do
  begin
    QOrdtn.delete;
    QOrdtn.Next;
  end;
end;

procedure TDm_SvSet.QOrdivBeforeEdit(DataSet: TDataSet);
begin
  if QOrdivBalance.AsFloat = 0 then
  begin
    with QOrdiv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SV_ORDIV WHERE ORDNO =:XORDNO ');
      PARAMS[0].ASSTRING := '';
      OPEN;
    end;
    SFmain.RaiseException('ไม่สามารถที่จะแก้ไขได้มีการชำระเงินแล้ว');
  end;
end;

procedure TDm_SvSet.QOrdivBeforePost(DataSet: TDataSet);
begin
  if QOrdivORDNO.Asstring = '' then
    SFmain.RaiseException('ไม่มีเลขที่ใบเบิก');
  Dm_SvSet.QOrdtn.first;
  while not Dm_SvSet.QOrdtn.Eof do
  begin
    if QOrdtnPARTNO.AsString = '' then
      QOrdtn.delete;
    Dm_SvSet.QOrdtn.Next;
  end;
end;

procedure TDm_SvSet.QOrdivNewRecord(DataSet: TDataSet);
begin
  if not QCondpay.Active then
    QCondpay.Open;
  QOrdivVatrt.AsFloat := QCondpay.Fieldbyname('Vatrt').Asfloat;
  QOrdivOrdLocat.Asstring := SFMain.Xlocat;
  QOrdivOrdDate.Asdatetime := Now;
  QOrdiv.FieldByName('VATTYPE').Asstring := QCondpay.Fieldbyname('Vattype').Asstring;
  QOrdiv.FieldByName('FLAG').Asstring := '3';
  QOrdivTOTPRC.Asfloat := 0;
  QOrdivNetAmt.Asfloat := 0;
  QOrdivVatamt.Asfloat := 0;
  QOrdivBalance.Asfloat := 0;
  QOrdivNettotal.Asfloat := 0;
end;

procedure TDm_SvSet.QOrdtnAfterPost(DataSet: TDataSet);
var
  XNetAmt, NetAmt, Smnettot: Double;
  SNetAmt: string;
begin
  Smnettot := 0;
  Dm_SvSet.QOrdtn.first;
  while not Dm_SvSet.QOrdtn.Eof do
  begin
    Smnettot := Smnettot + Dm_SvSet.QOrdtnTotPrc.AsFloat;
    Dm_SvSet.QOrdtn.Next;
  end;

  Dm_SvSet.QOrdivTotprc.AsFloat := Smnettot;
  Dm_SvSet.QOrdivBALANCE.AsFloat := Dm_SvSet.QOrdivTotprc.AsFloat; //- Dm_SvSet.QOrdivDISCAMT.AsFloat;

  if Dm_SvSet.QOrdivVATTYPE.Asstring = '1' then
  begin
    Dm_SvSet.QOrdivNettotal.AsFloat := Dm_SvSet.QOrdivBALANCE.AsFloat;
    XNetAmt := (Dm_SvSet.QOrdivBALANCE.AsFloat * 100) / (100 + Dm_SvSet.QOrdivVatrt.AsFloat);
    SNetAmt := floattostrf(XNetAmt, ffFixed, 12, 2);
    NetAmt := strtofloat(SNetAmt);
    Dm_SvSet.QOrdivNETAMT.AsFloat := NetAmt;
    Dm_SvSet.QOrdivVatAmt.AsFloat := Dm_SvSet.QOrdivBALANCE.AsFloat - Dm_SvSet.QOrdivNETAMT.AsFloat;
  end
  else if Dm_SvSet.QOrdivVATTYPE.Asstring = '2' then
  begin
    Dm_SvSet.QOrdivNETAMT.AsFloat := Dm_SvSet.QOrdivBALANCE.AsFloat;
    Dm_SvSet.QOrdivVatAmt.AsFloat := Dm_SvSet.QOrdivNETAMT.AsFloat * (Dm_SvSet.QOrdivVatrt.AsFloat / 100);
    Dm_SvSet.QOrdivNettotal.AsFloat := Dm_SvSet.QOrdivNETAMT.AsFloat + Dm_SvSet.QOrdivVatAmt.AsFloat;
  end;
end;

procedure TDm_SvSet.QOrdtnBeforeInsert(DataSet: TDataSet);
begin
  {If QOrdivOrdno.Asstring = '' then
     SFmain.RaiseException('ไม่มีเลขที่ใบเบิก'); }
end;

procedure TDm_SvSet.QOrdtnBeforePost(DataSet: TDataSet);
begin
  if QOrdivVATTYPE.AsString = '' then
    SFmain.RaiseException(' ไม่มีการบันทึกการป้อนจำนวนเงิน ');
end;

procedure TDm_SvSet.QOrdivORDDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_RQPK';
  LF := 'L_RQPK';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QOrdiv.FieldByName('ORDLOCAT').Asstring;
    DV := QOrdiv.FieldByName('ORDDATE').asDateTime;
    if QOrdiv.State = DsInsert then
    begin
      SQLTXT := 'SELECT MAX(ORDNO) AS MAXNO FROM SV_ORDIV WHERE ORDLOCAT=:EDIT1 AND ' +
        'SUBSTR(ORDNO,2,2)=:EDIT2 AND SUBSTR(ORDNO,5,2)=:EDIT3 AND SUBSTR(ORDNO,7,2)=:EDIT4 ';

      if Duplicate then
        QOrdiv.FieldByName('ORDNO').Asstring := Maxno(HF, LF, LV, SQLTXT, DV)
      else
        QOrdiv.FieldByName('ORDNO').Asstring := RunNo(HF, LF, LV, DV);
    end;
  end;
end;

procedure TDm_SvSet.QOrdtnNewRecord(DataSet: TDataSet);
begin
  QOrdtnJOBNO.Asstring := QOrdivJOBNO.Asstring;
  QOrdtnOrdno.Asstring := QOrdivOrdno.Asstring;
  QOrdtnOrdlocat.asstring := QOrdivOrdlocat.Asstring;
  QOrdtnOrddate.Asstring := QOrdivOrddate.Asstring;
  QOrdtnOrdlocat.asstring := QOrdivOrdlocat.Asstring;
  QOrdtnREDU2.AsFloat := 0;
  QOrdtnREDU3.AsFloat := 0;
end;

procedure TDm_SvSet.TChecklisNewRecord(DataSet: TDataSet);
begin
  TChecklis.Fieldbyname('MDLCOD').asstring := QModelmst.Fieldbyname('MODELCOD').asstring;
  TChecklis.Fieldbyname('USERID').asstring := SFMain.Xuser_ID;
  TChecklis.Fieldbyname('TIME1').AsDateTime := Now;
end;

procedure TDm_SvSet.TGrpServNewRecord(DataSet: TDataSet);
begin
  TGrpServ.Fieldbyname('Gcode').Asstring := Grpmst.Fieldbyname('Gcode').Asstring;
  TGrpServ.Fieldbyname('Mdlcod').Asstring := Grpmst.Fieldbyname('Mdlcod').Asstring;
end;

procedure TDm_SvSet.TGrpServBeforePost(DataSet: TDataSet);
begin
  Dm_SvSet.TGrpServ.FieldByName('GCode').AsString := Dm_SvSet.GrpMst.FieldByName('GCode').AsString;
  Dm_SvSet.TGrpServ.FieldByName('MdlCod').AsString := Dm_SvSet.GrpMst.FieldByName('MdlCod').AsString;
  Dm_SvSet.TGrpServ.fieldbyname('Userid').AsString := SFMain.Xuser_ID;
  Dm_SvSet.TGrpServ.fieldbyname('Time1').AsDateTime := Now;
end;

procedure TDm_SvSet.TGrppartNewRecord(DataSet: TDataSet);
begin
  TGrppart.Fieldbyname('Gcode').Asstring := Grpmst.Fieldbyname('Gcode').Asstring;
  TGrppart.Fieldbyname('Mdlcod').Asstring := Grpmst.Fieldbyname('Mdlcod').Asstring;
end;

procedure TDm_SvSet.TGrppartBeforePost(DataSet: TDataSet);
begin
  Dm_SvSet.TGrpPart.FieldByName('GCode').AsString := Dm_SvSet.GrpMst.FieldByName('GCode').AsString;
  Dm_SvSet.TGrpPart.FieldByName('MdlCod').AsString := Dm_SvSet.GrpMst.FieldByName('MdlCod').AsString;
  Dm_SvSet.TGrpPart.fieldbyname('Userid').AsString := SFMain.Xuser_ID;
  Dm_SvSet.TGrpPart.fieldbyname('Time1').AsDateTime := Now;
end;

procedure TDm_SvSet.TGrpOrdNewRecord(DataSet: TDataSet);
begin
  TGrpOrd.Fieldbyname('Gcode').Asstring := Grpmst.Fieldbyname('Gcode').Asstring;
  TGrpOrd.Fieldbyname('Mdlcod').Asstring := Grpmst.Fieldbyname('Mdlcod').Asstring;
  TGrpORD.fieldbyname('Userid').AsString := SFMain.Xuser_ID;
  TGrpORD.fieldbyname('Time1').AsDateTime := Now;
end;

procedure TDm_SvSet.TTopcarNewRecord(DataSet: TDataSet);
begin
  TTopcar.Fieldbyname('Regno').Asstring := '';
  TTopcar.Fieldbyname('Strno').Asstring := '';
end;

procedure TDm_SvSet.QOrdivORDLOCATValidate(Sender: TField);
begin
  QOrdivORDDATEValidate(Sender);
end;

procedure TDm_SvSet.QOrdivUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_SvSet.QSvmastMDLCODValidate(Sender: TField);
begin
  with QModelmst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD = :0 ');
    Params[0].Asstring := QSvmastMDLCOD.AsString;
    Open;
  end;
  if QModelmst.Bof and QModelmst.eof then
    SFmain.RaiseException('ไม่มีขอ้มูล')
  else
  begin
    QSvmast.FieldByName('ROUNDKILO').AsFloat := QModelmst.FieldByName('ROUNDKILO').AsFloat;
    QSvmast.FieldByName('ROUNDDAY').AsInteger := QModelmst.FieldByName('ROUNDDAY').AsInteger;
  end;
end;

procedure TDm_SvSet.QSvmastTYPEValidate(Sender: TField);
begin
  SFMain.FindNotExist('TYPECOD', 'SETTYPE', QSvmastTYPE.AsString);
end;

procedure TDm_SvSet.QOfficerBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
end;

procedure TDm_SvSet.QApmastBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
end;

procedure TDm_SvSet.QSvstockBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
end;

procedure TDm_SvSet.QSvmastBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT STRNO FROM JOBORDER WHERE STRNO=:XCUS');
    Params[0].asstring := QSvmast.Fieldbyname('Strno').Asstring;
    Open;
    if not (Bof and Eof) then
      SFmain.RaiseException('หมายเลขถังนี้มีการเปิด Job แล้ว ควรใช้วิธีเปลี่ยนแปลงเลขถัง ');
  end;
end;

procedure TDm_SvSet.QSvtype1BeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
end;

procedure TDm_SvSet.QOrdtnAfterOpen(DataSet: TDataSet);
begin
  //TInvmast.Open;
  Qinventor.Open;
end;

procedure TDm_SvSet.QOrdtnBeforeClose(DataSet: TDataSet);
begin
  //TInvmast.Close;
end;

procedure TDm_SvSet.Dm_SvSetCreate(Sender: TObject);
begin
  Qcondpay.open;
end;

procedure TDm_SvSet.QSvmastCUSCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT CUSCOD FROM ARMAST WHERE CUSCOD=:EDIT1');
    params[0].asstring := QSvmastCUSCOD.asstring;
    Open;
    if Bof and Eof then
      SFmain.RaiseException('ไม่พบรหัสลูกค้า');
  end;
end;

procedure TDm_SvSet.BookservREPTYPEValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVTYPE WHERE TYPCOD= :XCOD  ');
    Params[0].Asstring := BookservREPTYPE.Asstring;
    Open;
    if Bof and eof then
      SFmain.RaiseException('ไม่มีข้อมูลในแฟ้มประเภทการซ่อมทำ');
  end;
end;

procedure TDm_SvSet.BookservUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_SvSet.QSetgroupAfterDelete(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSetgroup.Active then
      if (QSetgroup.ApplyUpdates = 0) then
        QSetgroup.CommitUpdates
      else
        raise Exception.Create(QSetgroup.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TDm_SvSet.QSetgroupAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSetgroup.Active then
      if (QSetgroup.ApplyUpdates = 0) then
        QSetgroup.CommitUpdates
      else
        raise Exception.Create(QSetgroup.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TDm_SvSet.BookservBKDATEValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  HF := 'H_SLCS';
  LF := 'L_SLCS';
  QDBConfig.Close;
  QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := Bookserv.Fieldbyname('LOCAT').asstring;
    DV := Bookserv.Fieldbyname('BKDATE').asDatetime;
    if BookservUpdateStatus.Value = 'Inserted' then
      BookservBOOKNO.Asstring := RunNo(HF, LF, LV, DV);
  end;
end;

procedure TDm_SvSet.BookservCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
        'Inserted', 'Deleted');
begin
  if Bookserv.CachedUpdates then
    BookservUpdateStatus.Value := UpdateStatusStr[Bookserv.UpdateStatus];
end;

procedure TDm_SvSet.BookservBeforePost(DataSet: TDataSet);
begin
  if (BookservUpdateStatus.Value = 'Inserted') then
    if Duplicate then
      BookservBKDATEValidate(BookservBKDATE);
end;

procedure TDm_SvSet.QSvmastGCODEValidate(Sender: TField);
begin
  SFMain.FindNotExist('GCODE', 'SETGROUP', QSvmastGCODE.AsString);
end;

procedure TDm_SvSet.QSvstockNewRecord(DataSet: TDataSet);
begin
  QSvStockLOCAT.AsString := SFMain.Xlocat;
  QSvStockTime1.AsDateTime := Now;
  QSvStockUserid.AsString := SFMain.Xuser_ID;
end;

end.

