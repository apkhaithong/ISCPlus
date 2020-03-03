unit Dmfinc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  Math, FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDm_Finc = class(TDataModule)
    QJoborder1: TFDQuery;
    SoJoborder1: TDataSource;
    QAr_serv1: TFDQuery;
    Soarserv1: TDataSource;
    QArpaytrn: TFDQuery;
    Soarpaytrn: TDataSource;
    QTaxsal: TFDQuery;
    SoTaxsal: TDataSource;
    QParttran: TFDQuery;
    QLastno: TFDQuery;
    QAr_serv1JOBNO: TStringField;
    QAr_serv1JOBDATE: TDateField;
    QAr_serv1LOCAT: TStringField;
    QAr_serv1DEVNO: TStringField;
    QAr_serv1DEVDATE: TDateField;
    QAr_serv1DUEDATE: TDateField;
    QAr_serv1CUSCOD: TStringField;
    QAr_serv1DESC1: TStringField;
    QAr_serv1VATRT: TFloatField;
    QAr_serv1AMOUNT: TFloatField;
    QAr_serv1REDU: TFloatField;
    QAr_serv1BALANCE: TFloatField;
    QAr_serv1VAT: TFloatField;
    QAr_serv1TOTTAX: TFloatField;
    QAr_serv1SMPAY: TFloatField;
    QAr_serv1SMCHQ: TFloatField;
    QAr_serv1LPAID: TDateField;
    QAr_serv1REDUAFT: TFloatField;
    QAr_serv1KANG: TFloatField;
    QAr_serv1TAXNO: TStringField;
    QAr_serv1TAXDATE: TDateField;
    QAr_serv1REFNO: TStringField;
    QAr_serv1FLAG: TStringField;
    QAr_serv1USERID: TStringField;
    QAr_serv1TIME1: TDateTimeField;
    QLocat: TFDQuery;
    QSumBill: TFDQuery;
    SoSumbill: TDataSource;
    QSumBillJOBNO: TStringField;
    QSumBillAMOUNT: TFloatField;
    QSumBillREDU: TFloatField;
    QSumBillVAT: TFloatField;
    QSumBillTOTTAX: TFloatField;
    QSumBillSMPAY: TFloatField;
    QSumBillREDUAFT: TFloatField;
    QAr_servCP: TFDQuery;
    SoArservCP: TDataSource;
    QAr_ServC2: TFDQuery;
    SoarServC2: TDataSource;
    QAr_ServC2JOBNO: TStringField;
    QAr_ServC2JOBDATE: TDateField;
    QAr_ServC2LOCAT: TStringField;
    QAr_ServC2DEVNO: TStringField;
    QAr_ServC2DEVDATE: TDateField;
    QAr_ServC2DUEDATE: TDateField;
    QAr_ServC2CUSCOD: TStringField;
    QAr_ServC2DESC1: TStringField;
    QAr_ServC2VATRT: TFloatField;
    QAr_ServC2AMOUNT: TFloatField;
    QAr_ServC2REDU: TFloatField;
    QAr_ServC2BALANCE: TFloatField;
    QAr_ServC2VAT: TFloatField;
    QAr_ServC2TOTTAX: TFloatField;
    QAr_ServC2SMPAY: TFloatField;
    QAr_ServC2SMCHQ: TFloatField;
    QAr_ServC2LPAID: TDateField;
    QAr_ServC2REDUAFT: TFloatField;
    QAr_ServC2KANG: TFloatField;
    QAr_ServC2TAXNO: TStringField;
    QAr_ServC2TAXDATE: TDateField;
    QAr_ServC2REFNO: TStringField;
    QAr_ServC2FLAG: TStringField;
    QAr_ServC2USERID: TStringField;
    QAr_ServC2TIME1: TDateTimeField;
    QAr_ServCS: TFDQuery;
    SoArservCS: TDataSource;
    QAr_servCPJOBNO: TStringField;
    QAr_servCPJOBDATE: TDateField;
    QAr_servCPLOCAT: TStringField;
    QAr_servCPDEVNO: TStringField;
    QAr_servCPDEVDATE: TDateField;
    QAr_servCPDUEDATE: TDateField;
    QAr_servCPCUSCOD: TStringField;
    QAr_servCPDESC1: TStringField;
    QAr_servCPVATRT: TFloatField;
    QAr_servCPAMOUNT: TFloatField;
    QAr_servCPREDU: TFloatField;
    QAr_servCPBALANCE: TFloatField;
    QAr_servCPVAT: TFloatField;
    QAr_servCPTOTTAX: TFloatField;
    QAr_servCPSMPAY: TFloatField;
    QAr_servCPSMCHQ: TFloatField;
    QAr_servCPLPAID: TDateField;
    QAr_servCPREDUAFT: TFloatField;
    QAr_servCPKANG: TFloatField;
    QAr_servCPTAXNO: TStringField;
    QAr_servCPTAXDATE: TDateField;
    QAr_servCPREFNO: TStringField;
    QAr_servCPFLAG: TStringField;
    QAr_servCPUSERID: TStringField;
    QAr_servCPTIME1: TDateTimeField;
    QAr_ServCSJOBNO: TStringField;
    QAr_ServCSJOBDATE: TDateField;
    QAr_ServCSLOCAT: TStringField;
    QAr_ServCSDEVNO: TStringField;
    QAr_ServCSDEVDATE: TDateField;
    QAr_ServCSDUEDATE: TDateField;
    QAr_ServCSCUSCOD: TStringField;
    QAr_ServCSDESC1: TStringField;
    QAr_ServCSVATRT: TFloatField;
    QAr_ServCSAMOUNT: TFloatField;
    QAr_ServCSREDU: TFloatField;
    QAr_ServCSBALANCE: TFloatField;
    QAr_ServCSVAT: TFloatField;
    QAr_ServCSTOTTAX: TFloatField;
    QAr_ServCSSMPAY: TFloatField;
    QAr_ServCSSMCHQ: TFloatField;
    QAr_ServCSLPAID: TDateField;
    QAr_ServCSREDUAFT: TFloatField;
    QAr_ServCSKANG: TFloatField;
    QAr_ServCSTAXNO: TStringField;
    QAr_ServCSTAXDATE: TDateField;
    QAr_ServCSREFNO: TStringField;
    QAr_ServCSFLAG: TStringField;
    QAr_ServCSUSERID: TStringField;
    QAr_ServCSTIME1: TDateTimeField;
    Qarmast1: TFDQuery;
    SoArmast1: TDataSource;
    QArmast2: TFDQuery;
    SoArmast2: TDataSource;
    QOthinvoi1: TFDQuery;
    QOthinvoi1INVNO: TStringField;
    QOthinvoi1INVDATE: TDateField;
    QOthinvoi1JOBNO: TStringField;
    QOthinvoi1LOCAT: TStringField;
    QOthinvoi1JOBDATE: TDateField;
    QOthinvoi1STRNO: TStringField;
    QOthinvoi1CUSCOD: TStringField;
    QOthinvoi1TOTPRC: TFloatField;
    QOthinvoi1DSCT: TFloatField;
    QOthinvoi1DSCAMT: TFloatField;
    QOthinvoi1VAT: TFloatField;
    QOthinvoi1VATAMT: TFloatField;
    QOthinvoi1NETPRC: TFloatField;
    QOthinvoi1USERID: TStringField;
    QOthinvoi1TIME1: TDateTimeField;
    QOthinvoi1MEMO1: TMemoField;
    QOthinvoi1BALANE: TFloatField;
    QOthinvoi1TAXNO: TStringField;
    QOthinvoi1TAXDT: TDateField;
    QOthinvoi1PAID: TFloatField;
    QOthinvoi1DTPAID: TDateField;
    QOthinvoi1REDUAFT: TFloatField;
    QOthinvoi1FLAGCAN: TStringField;
    QOthinvoi1CANDATE: TDateField;
    QOthinvoi1FLAG: TStringField;
    SoOthinvoi1: TDataSource;
    QAr_servCPCANCELID: TStringField;
    QAr_servCPCANDAT: TDateTimeField;
    QAr_servCPPOSTGLDT: TDateTimeField;
    QAr_servCPPAYTYPE: TStringField;
    QAr_ServCSPAYTYPE: TStringField;
    QAr_ServCSCANCELID: TStringField;
    QAr_ServCSCANDAT: TDateTimeField;
    QAr_ServCSPOSTGLDT: TDateTimeField;
    QOthinvoi1PAYTYPE: TStringField;
    QOthinvoi1CANCELID: TStringField;
    QOthinvoi1CANDAT: TDateTimeField;
    QOthinvoi1POSTGLDT: TDateTimeField;
    QAr_ServC2CANCELID: TStringField;
    QAr_ServC2CANDAT: TDateTimeField;
    QAr_ServC2POSTGLDT: TDateTimeField;
    QAr_ServC2PAYTYPE: TStringField;
    QAr_serv1PAYTYPE: TStringField;
    QAr_serv1CANCELID: TStringField;
    QAr_serv1CANDAT: TDateTimeField;
    QAr_serv1POSTGLDT: TDateTimeField;
    QArpaytrn1: TFDQuery;
    Soarpaytrn1: TDataSource;
    QArpaytrn1BILLNO: TStringField;
    QArpaytrn1LOCAT: TStringField;
    QArpaytrn1BILLDT: TDateField;
    QArpaytrn1CUSCODE: TStringField;
    QArpaytrn1PAYTYP: TStringField;
    QArpaytrn1PAYCONT: TStringField;
    QArpaytrn1IDCARD: TStringField;
    QArpaytrn1IDEXPDT: TDateField;
    QArpaytrn1CHQNUM: TFloatField;
    QArpaytrn1CHQAMT: TFloatField;
    QArpaytrn1CSHAMT: TFloatField;
    QArpaytrn1TOTAL: TFloatField;
    QArpaytrn1DISCT: TFloatField;
    QArpaytrn1DISAMT: TFloatField;
    QArpaytrn1VAT3: TFloatField;
    QArpaytrn1VAT3AMT: TFloatField;
    QArpaytrn1NETTOT: TFloatField;
    QArpaytrn1JOBNO: TStringField;
    QArpaytrn1INVNO: TStringField;
    QArpaytrn1FLAG: TStringField;
    QArpaytrn1SYSTM: TStringField;
    QArpaytrn1MEMO1: TMemoField;
    QArpaytrn1USERID: TStringField;
    QArpaytrn1TIME1: TDateTimeField;
    QArpaytrn1CANCELID: TStringField;
    QArpaytrn1CANDAT: TDateTimeField;
    QArpaytrn1POSTGLDT: TDateTimeField;
    Query1: TFDQuery;
    QArpaytrn1ADDAMT: TFloatField;
    QArchq: TFDQuery;
    SoArchq: TDataSource;
    QArpaytrn2: TFDQuery;
    Soarpaytrn2: TDataSource;
    QOthinv: TFDQuery;
    SoOthinv: TDataSource;
    QOthinvINVNO: TStringField;
    QOthinvINVDATE: TDateField;
    QOthinvJOBNO: TStringField;
    QOthinvLOCAT: TStringField;
    QOthinvJOBDATE: TDateField;
    QOthinvSTRNO: TStringField;
    QOthinvCUSCOD: TStringField;
    QOthinvTOTPRC: TFloatField;
    QOthinvDSCT: TFloatField;
    QOthinvDSCAMT: TFloatField;
    QOthinvBALANE: TFloatField;
    QOthinvVAT: TFloatField;
    QOthinvVATAMT: TFloatField;
    QOthinvNETPRC: TFloatField;
    QOthinvTAXNO: TStringField;
    QOthinvTAXDT: TDateField;
    QOthinvPAID: TFloatField;
    QOthinvDTPAID: TDateField;
    QOthinvREDUAFT: TFloatField;
    QOthinvPAYTYPE: TStringField;
    QOthinvFLAG: TStringField;
    QOthinvMEMO1: TMemoField;
    QOthinvUSERID: TStringField;
    QOthinvTIME1: TDateTimeField;
    QOthinvCANCELID: TStringField;
    QOthinvCANDAT: TDateTimeField;
    QOthinvPOSTGLDT: TDateTimeField;
    Condpay: TFDQuery;
    QDbconfig: TFDQuery;
    QAr_ServC2CREDTM: TFloatField;
    QAr_ServC2PTYPE: TStringField;
    QSVMAST: TFDQuery;
    QArinvoi: TFDQuery;
    QTaxsal2: TFDQuery;
    SoTaxsal2: TDataSource;
    QArinvoi2: TFDQuery;
    SoArinvoi2: TDataSource;
    QTaxsal2TAXNO: TStringField;
    QTaxsal2TAXDATE: TDateField;
    QTaxsal2TAXREFNO: TStringField;
    QTaxsal2JOBNO: TStringField;
    QTaxsal2DESC1: TStringField;
    QTaxsal2CUSCOD: TStringField;
    QTaxsal2VATRT: TFloatField;
    QTaxsal2AMOUNT: TFloatField;
    QTaxsal2REDU: TFloatField;
    QTaxsal2BALANCE: TFloatField;
    QTaxsal2VAT: TFloatField;
    QTaxsal2TOTTAX: TFloatField;
    QTaxsal2FLAG: TStringField;
    QTaxsal2CANCEL: TStringField;
    QTaxsal2SYSTM: TStringField;
    QTaxsal2USERID: TStringField;
    QTaxsal2TIME1: TDateTimeField;
    QTaxsal2CANCELID: TStringField;
    QTaxsal2CANDAT: TDateTimeField;
    QTaxsal2POSTGLDT: TDateTimeField;
    QAr_ServC2Updatestatus: TStringField;
    QJoborder1JOBNO: TStringField;
    QJoborder1LOCAT: TStringField;
    QJoborder1STRNO: TStringField;
    QJoborder1CUSCOD: TStringField;
    QJoborder1MDLCOD: TStringField;
    QJoborder1RUNNO: TStringField;
    QJoborder1RECVDATE: TDateField;
    QJoborder1RECVTIME: TStringField;
    QJoborder1FINSDATE: TDateField;
    QJoborder1FINSTIME: TStringField;
    QJoborder1RFINSHDT: TDateField;
    QJoborder1RFINSHTM: TStringField;
    QJoborder1RLKILOMT: TFloatField;
    QJoborder1KILOMT: TFloatField;
    QJoborder1RECVCOD: TStringField;
    QJoborder1CUST_IN: TStringField;
    QJoborder1PAYCOD: TStringField;
    QJoborder1CUST_OUT: TStringField;
    QJoborder1APP_DATE: TDateField;
    QJoborder1APP_MILE: TFloatField;
    QJoborder1REPTYPE: TStringField;
    QJoborder1GROUP1: TStringField;
    QJoborder1REPBAY: TStringField;
    QJoborder1PAYDATE: TDateField;
    QJoborder1INSPECT: TStringField;
    QJoborder1REPCOD: TStringField;
    QJoborder1VATTYPE: TStringField;
    QJoborder1VAT: TFloatField;
    QJoborder1PARTDISC: TFloatField;
    QJoborder1PARTNET: TFloatField;
    QJoborder1PARTVAT: TFloatField;
    QJoborder1PARTTOT: TFloatField;
    QJoborder1OILDISC: TFloatField;
    QJoborder1OILNET: TFloatField;
    QJoborder1OILVAT: TFloatField;
    QJoborder1OILTOT: TFloatField;
    QJoborder1SERVDISC: TFloatField;
    QJoborder1SERVNET: TFloatField;
    QJoborder1SERVVAT: TFloatField;
    QJoborder1SERVTOT: TFloatField;
    QJoborder1OUTJDISC: TFloatField;
    QJoborder1OUTJNET: TFloatField;
    QJoborder1OUTJVAT: TFloatField;
    QJoborder1OUTJTOT: TFloatField;
    QJoborder1COLORDISC: TFloatField;
    QJoborder1COLORNET: TFloatField;
    QJoborder1COLORVAT: TFloatField;
    QJoborder1COLORTOT: TFloatField;
    QJoborder1OTHERDISC: TFloatField;
    QJoborder1OTHERNET: TFloatField;
    QJoborder1OTHERVAT: TFloatField;
    QJoborder1OTHERTOT: TFloatField;
    QJoborder1TSV_DISC: TFloatField;
    QJoborder1TSV_NET: TFloatField;
    QJoborder1TSV_VAT: TFloatField;
    QJoborder1TSV_TOT: TFloatField;
    QJoborder1TAXDATE: TDateField;
    QJoborder1PTAXNO: TStringField;
    QJoborder1STAXNO: TStringField;
    QJoborder1BILDATE: TDateField;
    QJoborder1BILLNO: TStringField;
    QJoborder1FLAGCAN: TStringField;
    QJoborder1CANDATE: TDateField;
    QJoborder1STATUS: TStringField;
    QJoborder1MEMO1: TMemoField;
    QJoborder1SVFLAG: TStringField;
    QJoborder1TOPNO: TStringField;
    QJoborder1PREORDNO: TStringField;
    QJoborder1ADDNET: TFloatField;
    QJoborder1ADDVAT: TFloatField;
    QJoborder1ADDTOT: TFloatField;
    QJoborder1PARTCOST: TFloatField;
    QJoborder1USERID: TStringField;
    QJoborder1TIME1: TDateTimeField;
    QJoborder1CANCELID: TStringField;
    QJoborder1CANDAT: TDateTimeField;
    QJoborder1POSTGLDT: TDateTimeField;
    QTaxsal2LOCAT: TStringField;
    Qduedat: TFDQuery;
    Query2: TFDQuery;
    QTaxsal2PAYTYP: TStringField;
    QArpaytrn1BKCODE: TStringField;
    QArpaytrn1Updatestatus: TStringField;
    QInvanls: TFDQuery;
    QAr_serv1PTYPE: TStringField;
    QTaxsal2FRSV: TStringField;
    QOthinvPTYPE: TStringField;
    QOthinvDUEDATE: TDateField;
    QAr_ServC2TEMPTAX: TStringField;
    QAr_serv1CREDTM: TFloatField;
    QAr_serv1TEMPTAX: TStringField;
    QOthinvVATTYPE: TStringField;
    QOthinvBILLNO: TStringField;
    QOthinvBILLDT: TDateField;
    QTaxsal2Updatestatus: TStringField;
    QAr_ServC2MEMO1: TMemoField;
    QTaxsal2MEMO1: TMemoField;
    QCN_Serv: TFDQuery;
    QAr_ServC2DEPOSTNO: TStringField;
    QAr_ServC2DEPOSAMT: TFloatField;
    QAr_ServC2DEPOSVAT: TFloatField;
    QAr_ServC2DEPOSTAX: TStringField;
    QArpaytrn2BILLNO: TStringField;
    QArpaytrn2LOCAT: TStringField;
    QArpaytrn2BILLDT: TDateField;
    QArpaytrn2CUSCODE: TStringField;
    QArpaytrn2PAYTYP: TStringField;
    QArpaytrn2PAYCONT: TStringField;
    QArpaytrn2IDCARD: TStringField;
    QArpaytrn2IDEXPDT: TDateField;
    QArpaytrn2CHQNUM: TFloatField;
    QArpaytrn2CHQAMT: TFloatField;
    QArpaytrn2CSHAMT: TFloatField;
    QArpaytrn2TOTAL: TFloatField;
    QArpaytrn2DISCT: TFloatField;
    QArpaytrn2DISAMT: TFloatField;
    QArpaytrn2VAT3: TFloatField;
    QArpaytrn2VAT3AMT: TFloatField;
    QArpaytrn2ADDAMT: TFloatField;
    QArpaytrn2NETTOT: TFloatField;
    QArpaytrn2JOBNO: TStringField;
    QArpaytrn2INVNO: TStringField;
    QArpaytrn2FLAG: TStringField;
    QArpaytrn2SYSTM: TStringField;
    QArpaytrn2MEMO1: TMemoField;
    QArpaytrn2USERID: TStringField;
    QArpaytrn2TIME1: TDateTimeField;
    QArpaytrn2CANCELID: TStringField;
    QArpaytrn2CANDAT: TDateTimeField;
    QArpaytrn2POSTGLDT: TDateTimeField;
    QArpaytrn2BKCODE: TStringField;
    QArpaytrn2TAXNO: TStringField;
    QArpaytrn2BOOKNO: TStringField;
    QArpaytrn2PAYFOR: TStringField;
    QArpaytrn2Updatestatus: TStringField;
    QAr_serv1DEPOSTNO: TStringField;
    QAr_serv1DEPOSAMT: TFloatField;
    QAr_serv1DEPOSVAT: TFloatField;
    QAr_serv1DEPOSTAX: TStringField;
    QArpaytrn1POSTGL: TStringField;
    QArpaytrn1TAXNO: TStringField;
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
    QArpaytrn2CLAIMTYP: TStringField;
    QArpaytrn2POSTGL: TStringField;
    QArpaytrn2CREDITAMT: TFloatField;
    QArpaytrn2BANKAMT: TFloatField;
    QArpaytrn1BOOKNO: TStringField;
    QArpaytrn1PAYFOR: TStringField;
    QArpaytrn1CLAIMTYP: TStringField;
    QArpaytrn1CREDITAMT: TFloatField;
    QArpaytrn1BANKAMT: TFloatField;
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
    SoChqtran_Typ1: TDataSource;
    QArpaytrn_TypCHQNO: TStringField;
    Query3: TFDQuery;
    procedure QAr_serv1TAXDATEValidate(Sender: TField);
    procedure QAr_serv1SMPAYValidate(Sender: TField);
    procedure QAr_ServC2NewRecord(DataSet: TDataSet);
    procedure QAr_ServC2BeforePost(DataSet: TDataSet);
    procedure QAr_ServC2AfterPost(DataSet: TDataSet);
    procedure QAr_servCPNewRecord(DataSet: TDataSet);
    procedure QAr_ServCSDEVDATEValidate(Sender: TField);
    procedure QAr_ServCSNewRecord(DataSet: TDataSet);
    procedure QAr_ServCSBeforePost(DataSet: TDataSet);
    procedure QAr_ServCSAfterPost(DataSet: TDataSet);
    procedure QAr_ServCSAfterCancel(DataSet: TDataSet);
    procedure QAr_ServC2AfterCancel(DataSet: TDataSet);
    procedure QOthinvoi1DTPAIDValidate(Sender: TField);
    procedure QOthinvoi1PAIDValidate(Sender: TField);
    procedure QOthinvoi1AfterPost(DataSet: TDataSet);
    procedure QOthinvoi1BeforePost(DataSet: TDataSet);
    procedure QOthinvoi1AfterCancel(DataSet: TDataSet);
    procedure QAr_servCPDEVDATEValidate(Sender: TField);
    procedure QArpaytrn1NewRecord(DataSet: TDataSet);
    procedure QArpaytrn1LOCATValidate(Sender: TField);
    procedure QArpaytrn1PAYTYPValidate(Sender: TField);
    procedure QAr_ServC2DEVDATEValidate(Sender: TField);
    procedure QArpaytrn1CUSCODEValidate(Sender: TField);
    procedure QArpaytrn1BILLDTValidate(Sender: TField);
    procedure QArpaytrn1BeforePost(DataSet: TDataSet);
    procedure QArpaytrn1AfterPost(DataSet: TDataSet);
    procedure QArpaytrn1INVNOValidate(Sender: TField);
    procedure QArpaytrn1VAT3Validate(Sender: TField);
    procedure QArpaytrn1CSHAMTValidate(Sender: TField);
    procedure QArpaytrn1CHQAMTValidate(Sender: TField);
    procedure QArpaytrn2NewRecord(DataSet: TDataSet);
    procedure QArpaytrn2BILLDTValidate(Sender: TField);
    procedure QArpaytrn2CUSCODEValidate(Sender: TField);
    procedure QArpaytrn2INVNOValidate(Sender: TField);
    procedure QArpaytrn2CSHAMTValidate(Sender: TField);
    procedure QArpaytrn2CHQAMTValidate(Sender: TField);
    procedure QArpaytrn2VAT3Validate(Sender: TField);
    procedure QArpaytrn2AfterPost(DataSet: TDataSet);
    procedure QArpaytrn2BeforePost(DataSet: TDataSet);
    procedure QTaxsal2NewRecord(DataSet: TDataSet);
    procedure QTaxsal2TAXDATEValidate(Sender: TField);
    procedure QTaxsal2BeforePost(DataSet: TDataSet);
    procedure QTaxsal2AfterPost(DataSet: TDataSet);
    procedure QTaxsal2AfterCancel(DataSet: TDataSet);
    procedure QTaxsal2BeforeDelete(DataSet: TDataSet);
    procedure QAr_ServC2CalcFields(DataSet: TDataSet);
    procedure QTaxsal2TAXREFNOValidate(Sender: TField);
    procedure QAr_ServC2REDUValidate(Sender: TField);
    procedure QAr_ServC2CREDTMValidate(Sender: TField);
    procedure QTaxsal2REDUValidate(Sender: TField);
    procedure QArpaytrn1CalcFields(DataSet: TDataSet);
    procedure QOthinvDSCAMTValidate(Sender: TField);
    procedure QTaxsal2LOCATValidate(Sender: TField);
    procedure QArpaytrn2CalcFields(DataSet: TDataSet);
    procedure QArpaytrn2PAYTYPValidate(Sender: TField);
    procedure QArchqNewRecord(DataSet: TDataSet);
    procedure QArpaytrn1AfterOpen(DataSet: TDataSet);
    procedure QArpaytrn2AfterOpen(DataSet: TDataSet);
    procedure QTaxsal2CalcFields(DataSet: TDataSet);
    procedure QCN_ServNewRecord(DataSet: TDataSet);
    procedure QCN_ServAfterPost(DataSet: TDataSet);
    procedure QArpaytrn1DISAMTValidate(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure QAr_ServC2DEPOSTNOValidate(Sender: TField);
    procedure QArpaytrn2ADDAMTValidate(Sender: TField);
    procedure QArpaytrn2CUSCODEChange(Sender: TField);
    procedure QArpaytrn1CREDITAMTValidate(Sender: TField);
    procedure QArpaytrn1BANKAMTValidate(Sender: TField);
    procedure QArpaytrn2CREDITAMTValidate(Sender: TField);
    procedure QArpaytrn2BANKAMTValidate(Sender: TField);
    procedure QArpaytrn1AfterCancel(DataSet: TDataSet);
    procedure QArpaytrn2AfterCancel(DataSet: TDataSet);
    procedure QArpaytrn1ADDAMTValidate(Sender: TField);
    procedure QArpaytrn1VAT3AMTValidate(Sender: TField);
    procedure QAr_ServC2BeforeEdit(DataSet: TDataSet);
    procedure QArpaytrn1BeforeEdit(DataSet: TDataSet);
    procedure QArpaytrn2BeforeEdit(DataSet: TDataSet);
    procedure QAr_ServC2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QArpaytrn1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QArpaytrn2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QTaxsal2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
    function RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function MaxNo(HField, LField, Lvalue, SQLtxt: string; Dvalue: TdateTime): string;
  public
    { Public declarations }
    procedure CloseAll;
    procedure QAr_ServC2Delete;
  end;

var
  Dm_Finc: TDm_Finc;
  Duplicate: Boolean;
  Qty: array[1..12] of Double;
  XYear, XMonth, XDay: Word;

const
  eKeyViol = 9729;

implementation

uses
  Functn01, DmSvSet, ShowDlg, USoftFirm, Dmsec;
{$R *.DFM}

function TDm_Finc.RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
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
    if not Condpay.Active then
      Condpay.Open;
    HH := Condpay.Fieldbyname(HField).Asstring;
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
    LN := QLastNo.FieldByname(LField).AsFloat;
    V1 := LN + 1;
    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
    end;
    S2 := FloatTostr(V1);
    LL := length(S2);
    Zero := '';
    for i := 1 to (4 - LL) do
      Zero := Zero + '0';
    Result := PF + HH + '-' + Y1 + MM + Zero + S2;
  end;
end;

function TDm_Finc.MaxNo(HField, LField, Lvalue, SQLtxt: string; Dvalue: TdateTime): string;
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
  if not Condpay.Active then
    Condpay.Open;
  HH := Condpay.Fieldbyname(HField).Asstring;

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add(SQLtxt);
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

procedure TDm_Finc.CloseAll;
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

procedure TDm_Finc.QAr_serv1TAXDATEValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin

end;

procedure TDm_Finc.QAr_serv1SMPAYValidate(Sender: TField);
begin
  QAr_serv1.Fieldbyname('Reduaft').asFLOAT := QAr_serv1TOTTAX.asFLOAT -
    QAr_serv1.Fieldbyname('SmPay').asFLOAT;
end;

procedure TDm_Finc.QAr_ServC2NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  QAr_servC2JOBNO.Asstring := QJoborder1.FieldByname('Jobno').asstring;
  QAr_servC2JOBDATE.Asdatetime := QJoborder1.FieldByname('Recvdate').asDateTime;
  QAr_servC2LOCAT.ASString := QJoborder1.FieldByname('LoCat').asstring;
  QAr_servC2CUSCOD.AsString := QJoborder1.FieldByname('Cuscod').asstring;
  QAr_servC2DESC1.AsString := 'ใบส่งของ/ใบกำกับภาษี';
  QAr_servC2VATRT.AsFloat := QJoborder1.FieldByname('VAT').asFloat;
  QAr_servC2REDU.AsFloat := 0;
  if QJoborder1.FieldByname('VATTYPE').asstring = '2' then
  begin
    QAr_servC2AMOUNT.AsFloat := RoundTo((QJoborder1.FieldByname('PARTNET').asFloat +
      QJoborder1.FieldByname('OILNET').asFloat +
      QJoborder1.FieldByname('TSV_NET').asFloat), -2);

    QAr_servC2VAT.AsFloat := RoundTo((QAr_servC2AMOUNT.AsFloat * QAr_servC2VATRT.AsFloat / 100), -2);
    QAr_servC2TOTTAX.AsFloat := QAr_servC2AMOUNT.AsFloat + QAr_servC2VAT.AsFloat;
  end
  else
  begin
    QAr_servC2TOTTAX.AsFloat := QJoborder1.FieldByname('PARTTOT').asFloat +
      QJoborder1.FieldByname('OILTOT').asFloat +
      QJoborder1.FieldByname('TSV_TOT').asFloat;
    QAr_servC2VAT.AsFloat := FRound((QAr_servC2TOTTAX.AsFloat * QAr_servC2VATRT.AsFloat / (100 + QAr_servC2VATRT.AsFloat)), 2);
    QAr_servC2AMOUNT.AsFloat := QAr_servC2TOTTAX.AsFloat - QAr_servC2VAT.AsFloat;
  end;
  QAr_servC2BALANCE.AsFloat := QAr_servC2AMOUNT.AsFloat;
  QAr_servC2SMPAY.AsFloat := 0;
  QAr_servC2SMCHQ.AsFloat := 0;
  QAr_servC2REDUAFT.AsFloat := 0;
  QAr_servC2KANG.AsFloat := QAr_servC2TOTTAX.AsFloat;
  QAr_servC2PTYPE.AsString := 'S';
  QAr_servC2DEVDATE.AsdateTime := Now;
  QAr_servC2DUEDATE.AsdateTime := Now;
  QAr_servC2FLAG.Asstring := '3';
  QAr_servC2USERID.AsString := sfmain.XUser_Id;
  QAr_servC2TIME1.AsdateTime := Now;
  if Condpay.Fieldbyname('TempTax').Asstring = 'Y' then
    QAr_ServC2TEMPTAX.Asstring := Condpay.Fieldbyname('TempTax').Asstring
  else
    QAr_ServC2TEMPTAX.Asstring := 'N';
end;

procedure TDm_Finc.QAr_ServC2BeforePost(DataSet: TDataSet);
var
  Xdate: TDateTime;
  Allo, Onhn: string;
  Mon, I: word;
begin

  if QAr_servC2UpdateStatus.Value = 'Inserted' then
  begin
    // rerun
    if Duplicate then
      QAr_ServC2DEVDATEValidate(QAr_ServC2DEVDATE);
    //
    if not (Qsvmast.BOF and Qsvmast.eof) then
    begin
      Qsvmast.Edit;
      Qsvmast.Fieldbyname('Status').asstring := '';
      Qsvmast.Fieldbyname('Lastserv').asdatetime := QJobOrder1.Fieldbyname('RECVdate').asDatetime;
      if Qsvmast.Fieldbyname('Firstdt').asstring = '' then
        Qsvmast.Fieldbyname('Firstdt').asdatetime := QJobOrder1.Fieldbyname('RECVdate').asDatetime;
      Qsvmast.Post;
    end;
  end;
end;

procedure TDm_Finc.QAr_ServC2AfterPost(DataSet: TDataSet);
var
  S, P: string;
begin
  S := QAr_ServC2DEVNO.Asstring;
  P := QAr_servC2.Fieldbyname('Ptype').asstring;

  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QAr_servC2.Active then
      if (QAr_servC2.ApplyUpdates = 0) then
        QAr_servC2.CommitUpdates
      else
        raise Exception.Create(QAr_servC2.RowError.Message);
    if QLastNo.Active then
      if (QLastNo.ApplyUpdates = 0) then
        QLastNo.CommitUpdates
      else
        raise Exception.Create(QLastNo.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QAr_servC2.Edit;
    raise;
  end;
  //
  //If P='C' Then
  //Begin
  with Dm_Finc.QAr_servC2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
    Params[0].Asstring := S;
    if not QAr_servC2.Prepared then
      QAr_servC2.Prepare;
    Open;
  end;

  with Dm_Finc.QJoborder1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :Edit ');
    Params[0].Asstring := Dm_Finc.QAr_servC2JOBNO.Asstring;
    if not QJoborder1.Prepared then
      QJoborder1.Prepare;
    Open;
  end;
  //End;
end;

procedure TDm_Finc.QAr_servCPNewRecord(DataSet: TDataSet);
begin
  QAr_servCPJOBNO.Asstring := QJoborder1.FieldByname('Jobno').asstring;
  QAr_servCPJOBDATE.Asdatetime := QJoborder1.FieldByname('Recvdate').asDateTime;
  QAr_servCPLOCAT.ASString := QJoborder1.FieldByname('LoCat').asstring;
  QAr_servCPCUSCOD.AsString := QJoborder1.FieldByname('Cuscod').asstring;
  QAr_servCPDESC1.AsString := 'ใบส่งของชั่วคราว-ค่าสินค้า';
  QAr_servCPVATRT.AsFloat := QJoborder1.FieldByname('VAT').asFloat;
  QAr_servCPAMOUNT.AsFloat := QJoborder1.FieldByname('PARTNET').asFloat;
  QAr_servCPREDU.AsFloat := 0;
  QAr_servCPBALANCE.AsFloat := QAr_servCPAMOUNT.AsFloat;
  QAr_servCPVAT.AsFloat := QJoborder1.FieldByname('PARTVAT').asFloat + QJoborder1.FieldByname('TSV_VAT').asFloat;
  QAr_servCPTOTTAX.AsFloat := QAr_servCPBALANCE.AsFloat + QAr_servCPVAT.AsFloat;
  QAr_servCPSMPAY.AsFloat := 0;
  QAr_servCPSMCHQ.AsFloat := 0;
  QAr_servCPREDUAFT.AsFloat := 0;
  QAr_servCPKANG.AsFloat := QAr_servCPTOTTAX.AsFloat;
  QAr_servCPDEVDATE.AsdateTime := Now;
  QAr_servCPDueDATE.AsdateTime := Now;
  QAr_servCPFLAG.Asstring := '1';
  //QAr_servCPPAYTYPE.AsString   := '';
  QAr_servCPUSERID.AsString := SFMain.XUser_Id;
  QAr_servCPTIME1.AsdateTime := Now;
end;

procedure TDm_Finc.QAr_ServCSDEVDATEValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  HF := 'H_DVSV';
  LF := 'L_DVSV';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QAr_ServCS.FieldByName('LOCAT').Asstring;
    DV := QAr_ServCS.FieldByName('DEVDATE').asDateTime;
    if QAr_ServCS.State = DsInsert then
      QAr_ServCS.FieldByName('DEVNO').Asstring := RunNo(HF, LF, LV, DV);
  end;
end;

procedure TDm_Finc.QAr_ServCSNewRecord(DataSet: TDataSet);
begin
  QAr_ServCSJOBNO.Asstring := QJoborder1.FieldByname('Jobno').asstring;
  QAr_ServCSJOBDATE.Asdatetime := QJoborder1.FieldByname('Recvdate').asDateTime;
  QAr_ServCSLOCAT.ASString := QJoborder1.FieldByname('LoCat').asstring;
  QAr_ServCSCUSCOD.AsString := QJoborder1.FieldByname('Cuscod').asstring;
  QAr_ServCSDESC1.AsString := 'ใบส่งของชั่วคราว-ค่าแรง';
  QAr_ServCSVATRT.AsFloat := QJoborder1.FieldByname('VAT').asFloat;
  QAr_ServCSAMOUNT.AsFloat := QJoborder1.FieldByname('TSV_NET').asFloat;
  QAr_ServCSREDU.AsFloat := 0;
  QAr_ServCSBALANCE.AsFloat := QAr_ServCSAMOUNT.AsFloat;
  QAr_ServCSVAT.AsFloat := QAr_ServCSAMOUNT.AsFloat * QAr_ServCSVATRT.AsFloat / 100;
  QAr_ServCSTOTTAX.AsFloat := QAr_ServCSBALANCE.AsFloat + QAr_ServCSVAT.AsFloat;
  QAr_ServCSSMPAY.AsFloat := 0;
  QAr_ServCSSMCHQ.AsFloat := 0;
  QAr_ServCSREDUAFT.AsFloat := 0;
  QAr_ServCSKANG.AsFloat := QAr_ServCSTOTTAX.AsFloat;
  QAr_ServCSDEVDATE.AsdateTime := Now;
  QAr_ServCSDUEDATE.AsdateTime := Now;
  QAr_ServCSFLAG.Asstring := '2';
  //QAr_ServCSPAYTYPE.AsString   := 'D';
  QAr_ServCSUSERID.AsString := SFMain.XUser_Id;
  QAr_ServCSTIME1.AsdateTime := Now;
end;

procedure TDm_Finc.QAr_ServCSBeforePost(DataSet: TDataSet);
begin
  if QAr_ServCS.State = Dsinsert then
  begin
   {Update Joborder}
    if QJoborder1.State = Dsbrowse then
      QJoborder1.Edit;
    QJobOrder1.Fieldbyname('STAXNO').asstring := QAr_ServCSDEVNO.Asstring;
    QJoborder1.FieldByName('Status').Asstring := 'R';
    QJobOrder1.Post;
  end;
end;

procedure TDm_Finc.QAr_ServCSAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QAr_ServCS.Active then
      if (QAr_ServCS.ApplyUpdates = 0) then
        QAr_ServCS.CommitUpdates
      else
        raise Exception.Create(QAr_ServCS.RowError.Message);
    if QLastNo.Active then
      if (QLastNo.ApplyUpdates = 0) then
        QLastNo.CommitUpdates
      else
        raise Exception.Create(QLastNo.RowError.Message);
    if QJoborder1.Active then
      if (QJoborder1.ApplyUpdates = 0) then
        QJoborder1.CommitUpdates
      else
        raise Exception.Create(QJoborder1.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    raise;
  end;
  //
  with Dm_Finc.QAr_servCS do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
    Params[0].Asstring := QJoborder1.Fieldbyname('STAXNO').Asstring;
    Open;
  end;
end;

procedure TDm_Finc.QAr_ServCSAfterCancel(DataSet: TDataSet);
begin
  if QAr_ServCS.Active then
    QAr_ServCS.CancelUpdates;
  if QLastNo.Active then
    QLastNo.CancelUpdates;
  if QJoborder1.Active then
    QJoborder1.CancelUpdates;
end;

procedure TDm_Finc.QAr_ServC2AfterCancel(DataSet: TDataSet);
begin
  if QAr_servC2.Active then
    QAr_servC2.CancelUpdates;
  if QLastNo.Active then
    QLastNo.CancelUpdates;
  if QParttran.Active then
    QParttran.CancelUpdates;
  if Qsvmast.Active then
    Qsvmast.CancelUpdates;
end;

procedure TDm_Finc.QOthinvoi1DTPAIDValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  HF := 'H_TAX';
  LF := 'L_TAX';
  LV := QOthinvoi1.FieldByName('LOCAT').Asstring;
  DV := QOthinvoi1.FieldByName('DTPAID').asDateTime;
  if QOthinvoi1.FieldByName('TAXNO').Asstring = '' then
    QOthinvoi1.FieldByName('TAXNO').Asstring := RunNo(HF, LF, LV, DV);
  Dm_Finc.QOthinvoi1.Fieldbyname('TAXDT').AsDatetime := DV;
end;

procedure TDm_Finc.QOthinvoi1PAIDValidate(Sender: TField);
begin
  QOthinvoi1REDUAFT.Asfloat := QOthinvoi1NETPRC.Asfloat - QOthinvoi1PAID.Asfloat;
end;

procedure TDm_Finc.QOthinvoi1AfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QOthinvoi1.Active then
      if (QOthinvoi1.ApplyUpdates = 0) then
        QOthinvoi1.CommitUpdates
      else
        raise Exception.Create(QOthinvoi1.RowError.Message);
    if QLastNo.Active then
      if (QLastNo.ApplyUpdates = 0) then
        QLastNo.CommitUpdates
      else
        raise Exception.Create(QLastNo.RowError.Message);
    if QTAXSAL.Active then
      if (QTAXSAL.ApplyUpdates = 0) then
        QTAXSAL.CommitUpdates
      else
        raise Exception.Create(QTAXSAL.RowError.Message);
    if QArpaytrn.Active then
      if (QArpaytrn.ApplyUpdates = 0) then
        QArpaytrn.CommitUpdates
      else
        raise Exception.Create(QArpaytrn.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TDm_Finc.QOthinvoi1BeforePost(DataSet: TDataSet);
begin
  {ออกใบกำกับ}
  if QTaxsal.Fieldbyname('Taxno').asstring = '' then
  begin
    QTaxsal.Insert;
    QTaxsal.Fieldbyname('Taxno').asstring := QOthinvoi1TAXNO.Asstring;
    QTaxsal.Fieldbyname('TaxDate').asdatetime := QOthinvoi1TAXDT.AsdateTime;
    QTaxsal.Fieldbyname('TaxRefno').asstring := QOthinvoi1TAXNO.Asstring;
    QTaxsal.Fieldbyname('JOBNO').asstring := QOthinvoi1JOBNO.Asstring;
    QTaxsal.Fieldbyname('DESC1').asstring := 'ค่าใช้จ่ายเพิ่มเติม';
    QTaxsal.Fieldbyname('CUSCOD').asstring := QOthinvoi1CUSCOD.Asstring;
    QTaxsal.Fieldbyname('VATRT').asFLOAT := QOthinvoi1VAT.asFLOAT;
    QTaxsal.Fieldbyname('AMOUNT').asFLOAT := QOthinvoi1Totprc.asFLOAT;
    QTaxsal.Fieldbyname('REDU').asFLOAT := QOthinvoi1DSCAMT.asFLOAT;
    QTaxsal.Fieldbyname('BALANCE').asFLOAT := QOthinvoi1BALANE.asFLOAT;
    QTaxsal.Fieldbyname('VAT').asFLOAT := QOthinvoi1VATAMT.asFLOAT;
    QTaxsal.Fieldbyname('TOTTAX').asFLOAT := QOthinvoi1NETPRC.asFLOAT;
    QTaxsal.Fieldbyname('Flag').asstring := '1';
    QTaxsal.Fieldbyname('USERID').AsString := SFMain.XUser_Id;
    QTaxsal.Fieldbyname('TIME1').AsdateTime := Now;
    QTaxsal.Post;
    {Bill}
    QArpaytrn.Insert;
    QArpaytrn.Fieldbyname('BILLNO').asstring := QOthinvoi1TAXNO.Asstring;
    QArpaytrn.Fieldbyname('BILLDT').asdatetime := QOthinvoi1TAXDT.AsdateTime;
    QArpaytrn.Fieldbyname('LOCAT').asstring := QOthinvoi1LOCAT.Asstring;
    QArpaytrn.Fieldbyname('CUSCODE').asstring := QOthinvoi1CUSCOD.Asstring;
    QArpaytrn.Fieldbyname('PAYTYP').asstring := '1';
    QArpaytrn.Fieldbyname('PAYCONT').asstring := '1';
    QArpaytrn.Fieldbyname('ChqNum').asFLOAT := 0;
    QArpaytrn.Fieldbyname('ChqAmt').asFLOAT := 0;
    QArpaytrn.Fieldbyname('CshAmt').asFLOAT := QOthinvoi1NETPRC.asFLOAT;
    QArpaytrn.Fieldbyname('Total').asFLOAT := QOthinvoi1NETPRC.asFLOAT;
    QArpaytrn.Fieldbyname('Disct').asFLOAT := 0;
    QArpaytrn.Fieldbyname('Disamt').asFLOAT := QOthinvoi1Reduaft.asFLOAT;
    QArpaytrn.Fieldbyname('Nettot').asFLOAT := QOthinvoi1PAID.asFLOAT;
    QArpaytrn.Fieldbyname('JOBNO').asstring := QOthinvoi1JOBNO.Asstring;
    QArpaytrn.Fieldbyname('INVNO').asstring := QOthinvoi1INVNO.Asstring;
    QArpaytrn.Fieldbyname('FLAG').AsString := '2';
    QArpaytrn.Fieldbyname('SYSTM').AsString := '';
    QArpaytrn.Fieldbyname('USERID').AsString := SFMain.XUser_Id;
    QArpaytrn.Fieldbyname('TIME1').AsdateTime := Now;
    QArpaytrn.Post;
  end;
end;

procedure TDm_Finc.QOthinvoi1AfterCancel(DataSet: TDataSet);
begin
  if QOthinvoi1.Active then
    QOthinvoi1.CancelUpdates;
  if QLastNo.Active then
    QLastNo.CancelUpdates;
  if QTAXSAL.Active then
    QTAXSAL.CancelUpdates;
  if QArpaytrn.Active then
    QArpaytrn.CancelUpdates;
end;

procedure TDm_Finc.QAr_servCPDEVDATEValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  HF := 'H_DVPT';
  LF := 'L_DVPT';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QAr_ServCP.FieldByName('LOCAT').Asstring;
    DV := QAr_ServCP.FieldByName('DEVDATE').asDateTime;
    if QAr_ServCP.State = DsInsert then
      QAr_ServCP.FieldByName('DEVNO').Asstring := RunNo(HF, LF, LV, DV);
  end;
end;

procedure TDm_Finc.QArpaytrn1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QArpaytrn1);
  QArpaytrn1LOCAT.Asstring := SFMain.Xlocat;
  QArpaytrn1BILLDT.AsDateTime := SFMain.CR_DATE;
  QArpaytrn1.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
  QArpaytrn1.Fieldbyname('Time1').Asdatetime := Now;
  QArpaytrn1.Fieldbyname('SYSTM').Asstring := 'SVNORM';
  QArpaytrn1Flag.Asstring := '2';
  QArpaytrn1PAYTYP.AsString := '01';

  {QArpaytrn1.Fieldbyname('UserID').Asstring  := SFMain.XUser_id;
  QArpaytrn1.Fieldbyname('Time1').Asdatetime := Now;
  QArpaytrn1.Fieldbyname('SYSTM').Asstring   := 'SVNORM';
  QArpaytrn1Flag.Asstring     := '2';
  QArpaytrn1BILLDT.Asdatetime := QAr_ServC2DEVDATE.Asdatetime;
  QArpaytrn1LOCAT.Asstring    := QAr_ServC2LOCAT.Asstring;
  QArpaytrn1PAYTYP.Asstring   := '01';
  QArpaytrn1CUSCODE.Asstring  := QAr_ServC2CUSCOD.Asstring;
  If (QAr_ServC2DEPOSTAX.Asstring='') and (QAr_ServC2DEPOSAMT.AsFloat>0) then
      QArpaytrn1CSHAMT.Asfloat    := QAr_ServC2TOTTAX.Asfloat-QAr_ServC2DEPOSAMT.AsFloat
  else QArpaytrn1CSHAMT.Asfloat    := QAr_ServC2TOTTAX.Asfloat;
  QArpaytrn1INVNO.Asstring    := QAr_ServC2DEVNO.Asstring;}
end;

procedure TDm_Finc.QArpaytrn1LOCATValidate(Sender: TField);
begin
  with Dm_Finc.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XCOD ');
    Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('Locat').Asstring;
    Open;
    if Dm_Finc.Query1.Bof and Dm_Finc.Query1.eof then
      SFmain.RaiseException('ไม่มีรหัสสาขา');
  end;
  //
end;

procedure TDm_Finc.QArpaytrn1PAYTYPValidate(Sender: TField);
begin
  with Dm_Finc.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PAYTYP WHERE PAYCODE = :XCOD ');
    Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring;
    Open;
    if Dm_Finc.Query1.Bof and Dm_Finc.Query1.eof then
      SFmain.RaiseException('ไม่มีรหัสการชำระ');
    //
    if QArpaytrn1INVNO.Asstring <> '' then
    begin
      if ((Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '01') or (Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '55')) then
      begin
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := Dm_Finc.QAr_serv1.FieldByName('TOTTAX').AsFloat -
          Dm_Finc.QAr_serv1.FieldByName('DEPOSAMT').AsFloat;
      end
      else if Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '02' then
      begin
        Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := Dm_Finc.QAr_serv1.FieldByName('TOTTAX').AsFloat -
          Dm_Finc.QAr_serv1.FieldByName('DEPOSAMT').AsFloat;
      end
      else if Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '10' then
      begin
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat := Dm_Finc.QAr_serv1.FieldByName('TOTTAX').AsFloat -
          Dm_Finc.QAr_serv1.FieldByName('DEPOSAMT').AsFloat;
      end
      else if Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '90' then
      begin
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat := Dm_Finc.QAr_serv1.FieldByName('TOTTAX').AsFloat -
          Dm_Finc.QAr_serv1.FieldByName('DEPOSAMT').AsFloat;
      end
      else
      begin
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := Dm_Finc.QAr_serv1.FieldByName('TOTTAX').AsFloat -
          Dm_Finc.QAr_serv1.FieldByName('DEPOSAMT').AsFloat;
      end;

      Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat := Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat +
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat +
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat +
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat;

      Dm_Finc.QArpaytrn1.FieldByName('NETTOT').AsFloat := Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat;
    end;
  end;
end;

procedure TDm_Finc.QArpaytrn1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Finc.QAr_ServC2DEVDATEValidate(Sender: TField);
var
  HF, LF, LV, Sqltxt, YY: string;
  DV: TdateTime;
  Year, Month, Day: Word;
begin
  DecodeDate(QAr_ServC2DEVDATE.Asdatetime, Year, Month, Day);
  YY := Inttostr(Year);
  if not CondPay.Active then
    CondPay.Open;
  if (YY <> '1899') and (YY <> CondPay.Fieldbyname('Curyear').Asstring) then
    SFmain.RaiseException('บันทึกปีทำงานผิด ปีทำงานปัจจุบัน คือ' + CondPay.Fieldbyname('Curyear').Asstring);

  if Condpay.Fieldbyname('Temptax').Asstring <> 'Y' then
  begin
    if QAr_ServC2PTYPE.Asstring = 'S' then
    begin
      HF := 'H_TXSV';
      LF := 'L_TXSV';
    end;
   //
    if QAr_ServC2PTYPE.Asstring = 'C' then
    begin
      HF := 'H_DVAL';
      LF := 'L_DVAL';
    end;
  end
  else
  begin
    HF := 'H_TXSV';
    LF := 'L_TXSV';
  end;

  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QAr_ServC2.FieldByName('LOCAT').Asstring;
    DV := QAr_ServC2.FieldByName('DEVDATE').asDateTime;

    if QAr_servC2UpdateStatus.Value = 'Inserted' then
    begin
      Sqltxt := 'SELECT MAX(DEVNO) AS MAXNO FROM AR_SERV WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(DEVNO,2,2)=:EDIT2 AND SUBSTR(DEVNO,5,2)=:EDIT3 AND SUBSTR(DEVNO,7,2)=:EDIT4';

      if Duplicate then
        QAr_ServC2.FieldByName('DEVNO').Asstring := MaxNo(HF, LF, LV, Sqltxt, DV)
      else
        QAr_ServC2.FieldByName('DEVNO').Asstring := RunNo(HF, LF, LV, DV);
    end;
  end;
end;

procedure TDm_Finc.QArpaytrn1CUSCODEValidate(Sender: TField);
begin
  with Dm_Finc.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XDVNO ');
    Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('CUSCODE').Asstring;
    Open;
    if Dm_Finc.QArpaytrn1.FieldByName('CUSCODE').Asstring <> '' then
    begin
      if (Dm_Finc.Query1.eof and Dm_Finc.Query1.Bof) then
        sfmain.RaiseException('ไม่พบรหัสลูกค้า');
    end;
  end;
end;

procedure TDm_Finc.QArpaytrn1BILLDTValidate(Sender: TField);
var
  HF, LF, LV, Sqltxt: string;
  DV: TdateTime;
begin
  if not QDBConfig.Active then
    QDBConfig.Open;
  if Condpay.Fieldbyname('Temptax').Asstring <> 'Y' then
  begin
    //--เช็คเลขที่ใบเสร็จใช้เลขที่เดียวกันกับใบกำกับหรือไม่
    if (QDBConfig.Fieldbyname('C_BLCS').asstring <> 'Y') then
    begin
      HF := 'H_BLNO';
      LF := 'L_BLNO';
      if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
      begin
        LV := QArpaytrn1.FieldByName('LOCAT').Asstring;
        DV := QArpaytrn1.FieldByName('BILLDT').asDateTime;

        if QArpaytrn1UpdateStatus.Value = 'Inserted' then
        begin
          Sqltxt := 'SELECT MAX(BILLNO) AS MAXNO FROM ARPAYTRN WHERE LOCAT=:EDIT1 AND ' +
            'SUBSTR(BILLNO,2,2)=:EDIT2 AND SUBSTR(BILLNO,5,2)=:EDIT3 AND SUBSTR(BILLNO,7,2)=:EDIT4';

          if Duplicate then
            QArpaytrn1.FieldByName('BILLNO').Asstring := MaxNo(HF, LF, LV, Sqltxt, DV)
          else
            QArpaytrn1.FieldByName('BILLNO').Asstring := RunNo(HF, LF, LV, DV);
        end;
      end;
    end;
  end
  else
  begin
    HF := 'H_DVAL';
    LF := 'L_DVAL';
    //
    if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
    begin
      LV := QArpaytrn1.FieldByName('LOCAT').Asstring;
      DV := QArpaytrn1.FieldByName('BILLDT').asDateTime;

      if QArpaytrn1UpdateStatus.Value = 'Inserted' then
      begin
        Sqltxt := 'SELECT MAX(BILLNO) AS MAXNO FROM ARPAYTRN WHERE LOCAT=:EDIT1 AND ' +
          'SUBSTR(BILLNO,2,2)=:EDIT2 AND SUBSTR(BILLNO,5,2)=:EDIT3 AND SUBSTR(BILLNO,7,2)=:EDIT4';

        if Duplicate then
          QArpaytrn1.FieldByName('BILLNO').Asstring := MaxNo(HF, LF, LV, Sqltxt, DV)
        else
          QArpaytrn1.FieldByName('BILLNO').Asstring := RunNo(HF, LF, LV, DV);
      end;
    end;
  end;
end;

procedure TDm_Finc.QArpaytrn1BeforePost(DataSet: TDataSet);
begin
  if QArpaytrn1PAYTYP.Asstring = '' then
    SFmain.RaiseException('ยังไม่ใส่ประเภทการชำระ');

  {ออกใบกำกับ}
  if QArpaytrn1UpdateStatus.Value = 'Inserted' then
  begin
    // rerun
    if Duplicate then
      QArpaytrn1BILLDTValidate(QArpaytrn1BILLDT);
    //
    if QAr_Serv1.State = Dsbrowse then
      QAr_Serv1.Edit;
    QAr_Serv1.Fieldbyname('TAXNO').asstring := QArpaytrn1BILLNO.Asstring;
    QAr_Serv1.Fieldbyname('TAXDATE').asDatetime := QArpaytrn1BILLDT.AsdateTime;
    QAr_Serv1.Fieldbyname('PAYTYPE').asstring := QArpaytrn1PAYTYP.Asstring;
    QAr_Serv1.Fieldbyname('SMPAY').Asfloat := QArpaytrn1CshAmt.AsFloat;
    QAr_Serv1.Fieldbyname('SMCHQ').Asfloat := QArpaytrn1ChqAmt.AsFloat;

    if QAr_serv1.Fieldbyname('Temptax').Asstring = 'Y' then
    begin
      QAr_Serv1.Fieldbyname('Reduaft').Asfloat := 0;
      QAr_Serv1.Fieldbyname('KANG').Asfloat := QAr_Serv1.Fieldbyname('TOTTAX').Asfloat -
        (QAr_Serv1.Fieldbyname('SMPAY').Asfloat + QAr_Serv1.Fieldbyname('SMCHQ').Asfloat);
    end
    else
    begin
      QAr_Serv1.Fieldbyname('Reduaft').Asfloat := QArpaytrn1DISAMT.AsFloat;
      QAr_Serv1.Fieldbyname('KANG').Asfloat := 0;
    end;

    QAr_Serv1.Fieldbyname('LPaid').Asdatetime := QArpaytrn1BILLDT.AsdateTime;
    QAr_Serv1.Post;
    // Case  ออกใบเสร็จ/ใบกำกับ
    if QAr_serv1.Fieldbyname('Temptax').Asstring = 'Y' then
    begin
      with QTaxsal do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
        Params[0].Asstring := '';
        Open;
      end;
      QTaxsal.Insert;
      QTaxsal.Fieldbyname('Taxno').asstring := QArpaytrn1BILLNO.Asstring;
      QTaxsal.Fieldbyname('TaxDate').asdatetime := QArpaytrn1BILLDT.AsdateTime;
      QTaxsal.Fieldbyname('LOCAT').asstring := QArpaytrn1LOCAT.Asstring;
      QTaxsal.Fieldbyname('TaxRefno').asstring := QAr_serv1DEVNO.Asstring;
      QTaxsal.Fieldbyname('JOBNO').asstring := QArpaytrn1JOBNO.Asstring;
      QTaxsal.Fieldbyname('DESC1').asstring := 'ใบเสร็จ/ใบกำกับ ศูนย์บริการ';
      QTaxsal.Fieldbyname('CUSCOD').asstring := QArpaytrn1CUSCODE.Asstring;
      QTaxsal.Fieldbyname('VATRT').asFLOAT := QAr_serv1VATRT.asFLOAT;

      if QAr_serv1.Fieldbyname('Temptax').Asstring <> 'Y' then
      begin
        QTaxsal.Fieldbyname('AMOUNT').asFLOAT := QAr_serv1AMOUNT.asFLOAT;
        QTaxsal.Fieldbyname('REDU').asFLOAT := QAr_serv1REDU.asFLOAT;
        QTaxsal.Fieldbyname('BALANCE').asFLOAT := QAr_serv1BALANCE.asFLOAT;
        QTaxsal.Fieldbyname('VAT').asFLOAT := QAr_serv1VAT.asFLOAT;
        QTaxsal.Fieldbyname('TOTTAX').asFLOAT := QAr_serv1TOTTAX.asFLOAT;
      end
      else
      begin
        QTaxsal.Fieldbyname('AMOUNT').asFLOAT := QArpaytrn1TOTAL.asFLOAT;
        //QTaxsal.Fieldbyname('REDU').asFLOAT      := QArpaytrn1DISAMT.asFLOAT;
        QTaxsal.Fieldbyname('VAT').asFLOAT := RoundTo((QArpaytrn1TOTAL.asFLOAT) * QAr_Serv1VATRT.AsFloat / (100 + QAr_Serv1VATRT.AsFloat), -2);
        QTaxsal.Fieldbyname('TOTTAX').asFLOAT := (QArpaytrn1TOTAL.asFLOAT);
        ;
        QTaxsal.Fieldbyname('BALANCE').asFLOAT := (QArpaytrn1TOTAL.asFLOAT) - QTaxsal.Fieldbyname('VAT').asFLOAT;
      end;

      QTaxsal.Fieldbyname('Flag').asstring := '1';
      QTaxsal.Fieldbyname('FRSV').asstring := 'S';
      QTaxsal.Fieldbyname('Paytyp').asstring := QAr_serv1PTYPE.AsString;
      QTaxsal.Fieldbyname('USERID').AsString := SFMain.XUser_Id;
      QTaxsal.Fieldbyname('TIME1').AsdateTime := Now;
      QTaxsal.Post;
    end;
    //
    if (QAr_serv1.FieldByName('PTYPE').Asstring = 'C') then
    begin
      if not (QArinvoi.Bof and QArinvoi.Eof) then
      begin
        QArinvoi.Edit;
        if Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '02' then
          QArinvoi.Fieldbyname('Smchq').Asfloat := QArinvoi.Fieldbyname('SmChq').Asfloat + QArpaytrn1CHQAMT.asfloat
        else
          QArinvoi.Fieldbyname('Smpay').Asfloat := QArinvoi.Fieldbyname('Smpay').Asfloat + QArpaytrn1CSHAMT.asfloat;
        QArinvoi.Fieldbyname('Kang').Asfloat := QArinvoi.Fieldbyname('Nettotal').Asfloat - (QArinvoi.Fieldbyname('Smpay').Asfloat + QArinvoi.Fieldbyname('SmChq').Asfloat);
        QArinvoi.Post;
      end;
    end;
  end;

  QArpaytrn_Typ.DisableControls;
  //QArpaytrn_Typ.AfterPost  := Nil;
  //QArpaytrn_Typ.BeforePost := Nil;
  QArpaytrn_Typ.First;
  while not QArpaytrn_Typ.Eof do
  begin
    QArpaytrn_Typ.Edit;
    QArpaytrn_Typ.Fieldbyname('BILLNO').Asstring := QArpaytrn1BILLNO.Asstring;
    QArpaytrn_Typ.fieldbyname('BILLDT').asdatetime := QArpaytrn1BILLDT.Asdatetime;

    QArpaytrn_Typ.Next;
  end;
  //QArpaytrn_Typ.AfterPost  := QArpaytrn_TypAfterPost;
  //QArpaytrn_Typ.BeforePost := QArpaytrn_TypBeforePost;
  QArpaytrn_Typ.EnableControls;
end;

procedure TDm_Finc.QArpaytrn1AfterPost(DataSet: TDataSet);
var
  S, S2: string;
begin
  S := Dm_Finc.QArpaytrn1.FieldByName('Billno').Asstring;
  S2 := Dm_Finc.QArpaytrn1.FieldByName('Invno').Asstring;

  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QArpaytrn1.Active then
      if (QArpaytrn1.ApplyUpdates = 0) then
        QArpaytrn1.CommitUpdates
      else
        raise Exception.Create(QArpaytrn1.RowError.Message);
    if QLastNo.Active then
      if (QLastNo.ApplyUpdates = 0) then
        QLastNo.CommitUpdates
      else
        raise Exception.Create(QLastNo.RowError.Message);
    if QArinvoi.Active then
      if (QArinvoi.ApplyUpdates = 0) then
        QArinvoi.CommitUpdates
      else
        raise Exception.Create(QArinvoi.RowError.Message);
    if QArChq.Active then
      if (QArChq.ApplyUpdates = 0) then
        QArChq.CommitUpdates
      else
        raise Exception.Create(QArChq.RowError.Message);
    if QAr_Serv1.Active then
      if (QAr_Serv1.ApplyUpdates = 0) then
        QAr_Serv1.CommitUpdates
      else
        raise Exception.Create(QAr_Serv1.RowError.Message);
    if QTaxsal.Active then
      if (QTaxsal.ApplyUpdates = 0) then
        QTaxsal.CommitUpdates
      else
        raise Exception.Create(QTaxsal.RowError.Message);
    if QArpaytrn_Typ.Active then
      if (QArpaytrn_Typ.ApplyUpdates = 0) then
        QArpaytrn_Typ.CommitUpdates
      else
        raise Exception.Create(QArpaytrn_Typ.RowError.Message);
    if QArchq.Active then
      if (QArchq.ApplyUpdates = 0) then
        QArchq.CommitUpdates
      else
        raise Exception.Create(QArchq.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QArpaytrn1.edit;
    if Messagedlg('ใบเสร็จซ้ำ กดปุ่ม Ok เพื่อ Run ใบเสร็จใหม่ ', Mtconfirmation, [mbok], 0) = mrok then
      QArpaytrn1.Post;
  end;
  //
  with QArpaytrn1 do
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

procedure TDm_Finc.QArpaytrn1INVNOValidate(Sender: TField);
begin
  with Dm_Finc.QAr_serv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
    Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('INVNO').Asstring;
    Open;
    if not (QAr_serv1.Bof and QAr_serv1.eof) then
    begin
      if Dm_Finc.QAr_serv1.Bof and Dm_Finc.QAr_serv1.eof then
        SFmain.RaiseException('ไม่พบใบส่งสินค้า');

//       If (Condpay.Fieldbyname('Temptax').Asstring<>'Y') Then
       {If Dm_Finc.QAr_serv1.FieldByName('TAXNO').Asstring<>'' Then
       SFmain.RaiseException('รับชำระแล้วเอกสารเลขที่ '+Dm_Finc.QAr_serv1.FieldByName('TAXNO').Asstring);}

      if Dm_Finc.QAr_serv1.FieldByName('CANCELID').Asstring <> '' then
        SFmain.RaiseException('ยกเลิกแล้ว');

      Dm_Finc.QArpaytrn1.FieldByName('Cuscode').Asstring := Dm_Finc.QAr_serv1.FieldByName('Cuscod').Asstring;
      Dm_Finc.QArpaytrn1.FieldByName('Jobno').Asstring := Dm_Finc.QAr_serv1.FieldByName('Jobno').Asstring;
      Dm_Finc.QArpaytrn1.FieldByName('Billdt').AsDatetime := Now;

      if ((Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '01') or (Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '55')) then
      begin
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := Dm_Finc.QAr_serv1.FieldByName('TOTTAX').AsFloat -
          Dm_Finc.QAr_serv1.FieldByName('DEPOSAMT').AsFloat;
      end
      else if Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '02' then
      begin
        Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := Dm_Finc.QAr_serv1.FieldByName('TOTTAX').AsFloat -
          Dm_Finc.QAr_serv1.FieldByName('DEPOSAMT').AsFloat;
      end
      else if Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '10' then
      begin
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat := Dm_Finc.QAr_serv1.FieldByName('TOTTAX').AsFloat -
          Dm_Finc.QAr_serv1.FieldByName('DEPOSAMT').AsFloat;
      end
      else if Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '90' then
      begin
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat := Dm_Finc.QAr_serv1.FieldByName('TOTTAX').AsFloat -
          Dm_Finc.QAr_serv1.FieldByName('DEPOSAMT').AsFloat;
      end
      else
      begin
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := Dm_Finc.QAr_serv1.FieldByName('TOTTAX').AsFloat -
          Dm_Finc.QAr_serv1.FieldByName('DEPOSAMT').AsFloat;
      end;

      Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat := Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat +
        Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat +
        Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat +
        Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat;

      Dm_Finc.QArpaytrn1.FieldByName('NETTOT').AsFloat := Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat;
       //
      if not QDBConfig.Active then
        QDBConfig.Open;
       //--เช็คเลขที่ใบเสร็จใช้เลขที่เดียวกันกับใบกำกับหรือไม่
      if (QDBConfig.Fieldbyname('C_BLCS').asstring = 'Y') and
        (Condpay.Fieldbyname('Temptax').Asstring <> 'Y') then
        Dm_Finc.QArpaytrn1.FieldByName('Billno').Asstring := Dm_Finc.QArpaytrn1.FieldByName('Invno').Asstring;
    end;
  end;

  if not (QAr_serv1.Bof and QAr_serv1.eof) and
    (QAr_serv1.FieldByName('PTYPE').Asstring = 'C') then
  begin
    with QArinvoi do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARINVOI WHERE INVNO=:EDIT1 ');
      Params[0].asstring := Dm_Finc.QAr_serv1.FieldByName('DEVNO').Asstring;
      Open;
      if not (BOF and EOF) then
      begin
        Dm_Finc.QArpaytrn1.FieldByName('DISAMT').AsFloat := QArinvoi.FieldByName('RTNAMT').AsFloat;
        Dm_Finc.QArpaytrn1.FieldByName('NETTOT').AsFloat := Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat -
          Dm_Finc.QArpaytrn1.FieldByName('DISAMT').AsFloat;
         //
        if (Condpay.Fieldbyname('Temptax').Asstring = 'Y') then
        begin
          if Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '01' then
            Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := QArinvoi.FieldByName('Kang').AsFloat;
          if Dm_Finc.QArpaytrn1.FieldByName('Paytyp').Asstring = '02' then
            Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat := QArinvoi.FieldByName('Kang').AsFloat
          else
            Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat := QArinvoi.FieldByName('Kang').AsFloat;
          Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat := Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat +
            Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat;
          Dm_Finc.QArpaytrn1.FieldByName('NETTOT').AsFloat := Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat;
          //
          Dm_Finc.QArpaytrn1.FieldByName('DISAMT').AsFloat := 0;
        end;
      end;
    end;
  end;
end;

procedure TDm_Finc.QArpaytrn1VAT3Validate(Sender: TField);
begin
  QArpaytrn1VAT3AMT.Asfloat := FRound((QArpaytrn1VAT3.Asfloat * QAr_serv1BALANCE.Asfloat) / 100, 2);
  Dm_Finc.QArpaytrn1.FieldByName('NETTOT').AsFloat := FRound((Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat -
    Dm_Finc.QArpaytrn1VAT3AMT.Asfloat - QArpaytrn1DISAMT.AsFloat) + Dm_Finc.QArpaytrn1ADDAMT.Asfloat, 2);
end;

procedure TDm_Finc.QArpaytrn1CSHAMTValidate(Sender: TField);
var
  V1: Double;
begin
  with Dm_Finc.QAr_Serv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO=:XDVNO');
    Params[0].Asstring := Dm_Finc.QArpaytrn1.FieldByName('INVNO').Asstring;
    Open;
  end;

  if FRound(Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat +
    Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat + Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat +
    Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat, 2) > Dm_Finc.QAr_Serv1.FieldByName('TOTTAX').AsFloat then
    sfmain.RaiseException('ยอดรวมมากกว่ายอดที่ต้องชำระจริง..!');

  V1 := 0;
  Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat := FRound(Dm_Finc.QArpaytrn1.FieldByName('CSHAMT').AsFloat +
    Dm_Finc.QArpaytrn1.FieldByName('CHQAMT').AsFloat + Dm_Finc.QArpaytrn1.FieldByName('BANKAMT').AsFloat +
    Dm_Finc.QArpaytrn1.FieldByName('CREDITAMT').AsFloat, 2);

  Dm_Finc.QArpaytrn1.FieldByName('NETTOT').AsFloat := Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat;

  if QAr_serv1.Fieldbyname('Temptax').Asstring <> 'Y' then
    V1 := (Dm_Finc.QAr_Serv1.FieldByName('TOTTAX').AsFloat - Dm_Finc.QAr_Serv1.FieldByName('DEPOSAMT').AsFloat) -
      Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat;
  if V1 > 0 then
  begin
    Dm_Finc.QArpaytrn1.FieldByName('DISAMT').AsFloat := V1;
    Dm_Finc.QArpaytrn1.FieldByName('ADDAMT').AsFloat := 0;
  end
  else
  begin
    Dm_Finc.QArpaytrn1.FieldByName('ADDAMT').AsFloat := ABS(V1);
    Dm_Finc.QArpaytrn1.FieldByName('DISAMT').AsFloat := 0;
  end
end;

procedure TDm_Finc.QArpaytrn1CHQAMTValidate(Sender: TField);
begin
  QArpaytrn1CSHAMTValidate(QArpaytrn1CHQAMT);
end;

procedure TDm_Finc.QAr_ServC2Delete;
var
  Xdate: TDateTime;
  Allo, Onhn: string;
  Mon: word;
begin
  {
  If Not(Qsvmast.BOF and Qsvmast.eof) Then
  Begin
    Qsvmast.Edit;
    Qsvmast.Fieldbyname('Status').asstring := 'F';
    Qsvmast.Post;
  End;
  }
  //
  QAr_ServC2.Edit;
  QAr_ServC2CANCELID.Asstring := SFMain.XUser_Id;
  QAr_ServC2CANDAT.Asdatetime := Now;
end;

procedure TDm_Finc.QArpaytrn2NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QArpaytrn2);
  QArpaytrn2LOCAT.Asstring := SFMain.Xlocat;
  QArpaytrn2.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
  QArpaytrn2.Fieldbyname('Time1').Asdatetime := Now;
  QArpaytrn2.Fieldbyname('SYSTM').Asstring := 'SVOTH';
  QArpaytrn2Flag.Asstring := '2';
  QArpaytrn2PAYTYP.Asstring := '01';
end;

procedure TDm_Finc.QArpaytrn2BILLDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_TXOH';
  LF := 'L_TXOH';

  LV := QArpaytrn2.FieldByName('LOCAT').Asstring;
  DV := QArpaytrn2.FieldByName('BILLDT').asDateTime;
  if QArpaytrn2Updatestatus.Value = 'Inserted' then
  begin
    SQLTXT := 'SELECT MAX(BILLNO) AS MAXNO FROM ARPAYTRN WHERE LOCAT=:EDIT1 AND ' +
      'SUBSTR(BILLNO,2,2)=:EDIT2 AND SUBSTR(BILLNO,5,2)=:EDIT3 AND SUBSTR(BILLNO,7,2)=:EDIT4 ';

    if Duplicate then
      QArpaytrn2.FieldByName('BILLNO').Asstring := MaxNo(HF, LF, LV, SQLTXT, DV)
    else
      QArpaytrn2.FieldByName('BILLNO').Asstring := RunNo(HF, LF, LV, DV);
  end;
  //
  with Dm_Finc.QArChq do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO= :XBILNO  ');
    Params[0].asstring := QArpaytrn2.FieldByName('BILLNO').Asstring;
    Open;
  end;
end;

procedure TDm_Finc.QArpaytrn2CUSCODEValidate(Sender: TField);
begin
  with Dm_Finc.QArmast1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XDVNO ');
    Params[0].Asstring := Dm_Finc.QArpaytrn2.FieldByName('CUSCODE').Asstring;
    Open;

    if Dm_Finc.QArpaytrn2.FieldByName('CUSCODE').Asstring <> '' then
    begin
      if (Dm_Finc.QArmast1.eof and Dm_Finc.QArmast1.Bof) then
        sfmain.RaiseException('ไม่พบรหัสลูกค้า');
    end;
  end;
end;

procedure TDm_Finc.QArpaytrn2INVNOValidate(Sender: TField);
begin
  with Dm_Finc.QOthinv do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = :XNO ');
    Params[0].Asstring := Dm_Finc.QArpaytrn2.FieldByName('INVNO').Asstring;
    Open;
    if Dm_Finc.QArpaytrn2.FieldByName('INVNO').Asstring <> '' then
    begin
      if Dm_Finc.QOthinv.Bof and Dm_Finc.QOthinv.eof then
        SFmain.RaiseException('ไม่พบใบส่งของชั่วคราว');
    end;
    if Dm_Finc.QOthinv.FieldByName('Billno').Asstring <> '' then
      SFmain.RaiseException('รับชำระเงินแล้ว Bill#' + Dm_Finc.QOthinv.FieldByName('Billno').Asstring);

    Dm_Finc.QArpaytrn2.FieldByName('Cuscode').Asstring := Dm_Finc.QOthinv.FieldByName('Cuscod').Asstring;
    Dm_Finc.QArpaytrn2.FieldByName('Jobno').Asstring := Dm_Finc.QOthinv.FieldByName('Jobno').Asstring;
    Dm_Finc.QArpaytrn2.FieldByName('Billdt').AsDatetime := Date;

    if ((Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring = '01') or (Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring = '55')) then
    begin
      Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat := QOthinvNETPRC.AsFloat;
    end
    else if Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring = '02' then
    begin
      Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat := QOthinvNETPRC.AsFloat;
    end
    else if Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring = '10' then
    begin
      Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat := QOthinvNETPRC.AsFloat;
    end
    else if Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring = '90' then
    begin
      Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat := QOthinvNETPRC.AsFloat;
    end
    else
    begin
      Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat := 0;
      Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat := QOthinvNETPRC.AsFloat;
    end;

    Dm_Finc.QArpaytrn2.FieldByName('TOTAL').AsFloat := Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat +
      Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat +
      Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat +
      Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat;
    Dm_Finc.QArpaytrn2.FieldByName('NETTOT').AsFloat := Dm_Finc.QArpaytrn2.FieldByName('TOTAL').AsFloat;
  end;
end;

procedure TDm_Finc.QArpaytrn2CSHAMTValidate(Sender: TField);
var
  V1: Double;
begin
  Dm_Finc.QArpaytrn2.FieldByName('TOTAL').AsFloat := Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat +
    Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat;
  Dm_Finc.QArpaytrn2.FieldByName('NETTOT').AsFloat := Dm_Finc.QArpaytrn2.FieldByName('TOTAL').AsFloat;
  V1 := Dm_Finc.QOthinv.FieldByName('Netprc').AsFloat -
    Dm_Finc.QArpaytrn2.FieldByName('TOTAL').AsFloat;
  if V1 > 0 then
  begin
    Dm_Finc.QArpaytrn2.FieldByName('DISAMT').AsFloat := V1;
    Dm_Finc.QArpaytrn2.FieldByName('ADDAMT').AsFloat := 0;
  end
  else
  begin
    Dm_Finc.QArpaytrn2.FieldByName('ADDAMT').AsFloat := ABS(V1);
    Dm_Finc.QArpaytrn2.FieldByName('DISAMT').AsFloat := 0;
  end
end;

procedure TDm_Finc.QArpaytrn2CHQAMTValidate(Sender: TField);
begin
  QArpaytrn2CSHAMTValidate(QArpaytrn2CHQAMT);
end;

procedure TDm_Finc.QArpaytrn2VAT3Validate(Sender: TField);
begin
  QArpaytrn2VAT3AMT.Asfloat := FRound((QArpaytrn2VAT3.Asfloat * QOthinvBALANE.Asfloat) / 100, 2);
  Dm_Finc.QArpaytrn2.FieldByName('NETTOT').AsFloat := FRound(Dm_Finc.QArpaytrn2.FieldByName('TOTAL').AsFloat -
    QArpaytrn2VAT3AMT.Asfloat + QArpaytrn2ADDAMT.Asfloat, 2);
end;

procedure TDm_Finc.QArpaytrn2AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := Dm_Finc.QArpaytrn2.FieldByName('Billno').Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QArpaytrn2.Active then
      if (QArpaytrn2.ApplyUpdates = 0) then
        QArpaytrn2.CommitUpdates
      else
        raise Exception.Create(QArpaytrn2.RowError.Message);
    if QLastNo.Active then
      if (QLastNo.ApplyUpdates = 0) then
        QLastNo.CommitUpdates
      else
        raise Exception.Create(QLastNo.RowError.Message);
    if QTAXSAL.Active then
      if (QTAXSAL.ApplyUpdates = 0) then
        QTAXSAL.CommitUpdates
      else
        raise Exception.Create(QTAXSAL.RowError.Message);
    if QOthinv.Active then
      if (QOthinv.ApplyUpdates = 0) then
        QOthinv.CommitUpdates
      else
        raise Exception.Create(QOthinv.RowError.Message);
    if QArChq.Active then
      if (QArChq.ApplyUpdates = 0) then
        QArChq.CommitUpdates
      else
        raise Exception.Create(QArChq.RowError.Message);
    if QArpaytrn_Typ1.Active then
      if (QArpaytrn_Typ1.ApplyUpdates = 0) then
        QArpaytrn_Typ1.CommitUpdates
      else
        raise Exception.Create(QArpaytrn_Typ1.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QArpaytrn2.Edit;
    if Messagedlg('ใบเสร็จซ้ำ กดปุ่ม Ok เพื่อ Run ใบเสร็จใหม่ ', Mtconfirmation, [mbok], 0) = mrok then
      QArpaytrn2.Post;
   //Raise;
  end;
  //
  with Dm_Finc.QArpaytrn2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_Finc.QArpaytrn_Typ1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  *  FROM  ARPAYTRN_TYP WHERE BILLNO=:0');
    Params[0].AsString := S;
    Open;
  end;
  with Dm_Finc.QOthinv do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = :XNO ');
    Params[0].Asstring := Dm_Finc.QArpaytrn2.FieldByName('INVNO').Asstring;
    Open;
    if Dm_Finc.QArpaytrn2.FieldByName('INVNO').Asstring <> '' then
    begin
      if Dm_Finc.QOthinv.Bof and Dm_Finc.QOthinv.eof then
        SFmain.RaiseException('ไม่พบใบส่งของชั่วคราว');
    end;
  end;
  with Dm_Finc.QTaxsal do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
    Params[0].Asstring := Dm_Finc.QArpaytrn2.FieldByName('BILLNO').Asstring;
    Open;
  end;
  with Dm_Finc.QArmast1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD= :XCUSNO  ');
    Params[0].Asstring := Dm_Finc.QOthinv.FieldByName('CUSCOD').Asstring;
    Open;
  end;
  with Dm_Finc.QArChq do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCHQ WHERE BILLNO= :XBILNO  ');
    Params[0].asstring := QArpaytrn2.FieldByName('BILLNO').Asstring;
    Open;
  end;
end;

procedure TDm_Finc.QArpaytrn2BeforePost(DataSet: TDataSet);
begin
  {ออกใบกำกับ}
  if QArpaytrn2Updatestatus.Value = 'Inserted' then
  begin
    {If QOthinv.Fieldbyname('Taxno').asstring<>'' Then
    SFmain.RaiseException('ออกใบกำกับภาษีแล้วกรุณาไปรับเงินที่ระบบลูกหนี้');}

    if Duplicate then
      QArpaytrn2BILLDTValidate(QArpaytrn2BILLDT);
    //
    if QOthinv.Fieldbyname('Taxno').asstring = '' then
    begin
      with Dm_Finc.QTaxsal do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
        Params[0].Asstring := '';
        Open;
      end;
      //
      QTaxsal.Insert;
      QTaxsal.Fieldbyname('Taxno').asstring := QArpaytrn2BILLNO.Asstring;
      QTaxsal.Fieldbyname('TaxDate').asdatetime := QArpaytrn2BILLDT.AsdateTime;
      QTaxsal.Fieldbyname('LOCAT').asstring := QOthinvLOCAT.Asstring;
      QTaxsal.Fieldbyname('TaxRefno').asstring := QOthinvINVNO.Asstring;
      QTaxsal.Fieldbyname('JOBNO').asstring := QArpaytrn2JOBNO.Asstring;
      QTaxsal.Fieldbyname('DESC1').asstring := 'ใบเสร็จ/ใบกำกับ Invoice เสริม';
      QTaxsal.Fieldbyname('CUSCOD').asstring := QArpaytrn2CUSCODE.Asstring;
      QTaxsal.Fieldbyname('VATRT').asFLOAT := QOthinvVAT.asFLOAT;
      QTaxsal.Fieldbyname('AMOUNT').asFLOAT := QOthinvTOTPRC.asFLOAT;
      QTaxsal.Fieldbyname('REDU').asFLOAT := QOthinvDSCAMT.asFLOAT;
      QTaxsal.Fieldbyname('BALANCE').asFLOAT := QOthinvBALANE.asFLOAT;
      QTaxsal.Fieldbyname('VAT').asFLOAT := QOthinvVATAMT.asFLOAT;
      QTaxsal.Fieldbyname('TOTTAX').asFLOAT := QOthinvNETPRC.asFLOAT;
      QTaxsal.Fieldbyname('Flag').asstring := '1'; {1:ใบกำกับ 2:ใบลดหนี้  }
      QTaxsal.Fieldbyname('Paytyp').asstring := QOthinvPType.Asstring;
      QTaxsal.Fieldbyname('FRSV').asstring := 'S';
      QTaxsal.Fieldbyname('Systm').asstring := 'OTH-' + QOthinvflag.Asstring;
      QTaxsal.Fieldbyname('USERID').AsString := SFMain.XUser_Id;
      QTaxsal.Fieldbyname('TIME1').AsdateTime := Now;
      QTaxsal.Post;
    end;

    if QOthinv.State = Dsbrowse then
      QOthinv.Edit;

    if QOthinv.Fieldbyname('Taxno').asstring = '' then
    begin
      QOthinv.Fieldbyname('TAXNO').asstring := QArpaytrn2BILLNO.Asstring;
      QOthinv.Fieldbyname('TAXDT').asDatetime := QArpaytrn2BILLDT.AsdateTime;
    end;
    QOthinv.Fieldbyname('BILLNO').asstring := QArpaytrn2BILLNO.Asstring;
    QOthinv.Fieldbyname('BILLDT').asDatetime := QArpaytrn2BILLDT.AsdateTime;
    QOthinv.Fieldbyname('PAYTYPE').asstring := QArpaytrn2PAYTYP.Asstring;
    QOthinv.Fieldbyname('PAID').Asfloat := QArpaytrn2TOTAL.AsFloat;
    QOthinv.Fieldbyname('Reduaft').Asfloat := QOthinv.Fieldbyname('NETPRC').Asfloat - QOthinv.Fieldbyname('PAID').Asfloat;
    QOthinv.Fieldbyname('DTPaid').Asdatetime := QArpaytrn2BILLDT.AsdateTime;
    QOthinv.Post;
  end;

  QArpaytrn_Typ1.DisableControls;
  //QArpaytrn_Typ1.AfterPost  := Nil;
  //QArpaytrn_Typ1.BeforePost := Nil;
  QArpaytrn_Typ1.First;
  while not QArpaytrn_Typ1.Eof do
  begin
    QArpaytrn_Typ1.Edit;
    QArpaytrn_Typ1.Fieldbyname('BILLNO').Asstring := QArpaytrn2BILLNO.Asstring;
    QArpaytrn_Typ1.fieldbyname('BILLDT').asdatetime := QArpaytrn2BILLDT.Asdatetime;

    QArpaytrn_Typ1.Next;
  end;
  //QArpaytrn_Typ1.AfterPost  := QArpaytrn_Typ1AfterPost;
  //QArpaytrn_Typ1.BeforePost := QArpaytrn_Typ1BeforePost;
  QArpaytrn_Typ1.EnableControls;
end;

procedure TDm_Finc.QTaxsal2NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  QTaxsal2LOCAT.AsString := SFMain.XLocat;
  QTaxsal2TAXDATE.Asdatetime := Now;
  QTaxsal2USERID.AsString := SFMain.XUser_Id;
  QTaxsal2TIME1.AsdateTime := Now;
  QTaxsal2VATRT.asFloat := Condpay.FieldByName('VATRT').AsFloat;
  QTaxsal2Flag.asstring := '2'; //ลดหนี้
  QTaxsal2PAYTYP.Asstring := 'S';
  QTaxsal2FRSV.Asstring := 'S';
  QTaxsal2REDU.Asfloat := 0;
end;

procedure TDm_Finc.QTaxsal2TAXDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_DVSV';
  LF := 'L_DVSV';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QTaxsal2.FieldByName('LOCAT').Asstring;
    DV := QTaxsal2.FieldByName('TAXDATE').asDateTime;
    if QTaxsal2.State = DsInsert then
    begin
      SQLTXT := 'SELECT MAX(TAXNO) AS MAXNO FROM TAXSAL WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 AND SUBSTR(TAXNO,7,2)=:EDIT4';

      if Duplicate then
        QTaxsal2.FieldByName('TAXNO').Asstring := MaxNo(HF, LF, LV, SQLTXT, DV)
      else
        QTaxsal2.FieldByName('TAXNO').Asstring := RunNo(HF, LF, LV, DV);
    end;
  end;
end;

procedure TDm_Finc.QTaxsal2BeforePost(DataSet: TDataSet);
var
  XRtamt: Double;
begin
  QCN_Serv.First;
  if QTaxsal2AMOUNT.Asfloat = 0 then
    SFmain.RaiseException('ยังไม่บันทึกจำนวนเงิน');

  if (QTaxsal2UpdateStatus.Value = 'Inserted') and
    (QTaxsal2.Fieldbyname('Paytyp').Asstring = 'C') then
  begin
    if QTaxsal2.State = Dsinsert then
      QArinvoi2.Insert
    else
      QArinvoi2.Edit;

    QArinvoi2.Fieldbyname('INVNO').asstring := QTaxsal2TAXNO.asstring;
    QArinvoi2.Fieldbyname('LOCAT').asstring := QTaxsal2LOCAT.asstring;
    QArinvoi2.Fieldbyname('CUSCODE').asstring := QTaxsal2CUSCOD.Asstring;
    QArinvoi2.Fieldbyname('Invdate').asdatetime := QTaxsal2TAXDATE.Asdatetime;
    QArinvoi2.Fieldbyname('Invdue').asdatetime := Qduedat.Fieldbyname('DUEDATE').Asdatetime;
    QArinvoi2.Fieldbyname('Total').asFloat := QTaxsal2AMOUNT.Asfloat;
    QArinvoi2.Fieldbyname('Discamt').asFloat := QTaxsal2REDU.Asfloat;
    QArinvoi2.Fieldbyname('Balance').asFloat := QTaxsal2BALANCE.Asfloat;
    QArinvoi2.Fieldbyname('Vatrt').asFloat := QTaxsal2VATRT.Asfloat;
    QArinvoi2.Fieldbyname('Vatamt').asFloat := QTaxsal2VAT.Asfloat;
    QArinvoi2.Fieldbyname('Nettotal').asFloat := QTaxsal2TOTTAX.Asfloat;
    QArinvoi2.Fieldbyname('TAXREFNO').asstring := QTaxsal2TAXREFNO.asstring;
    QArinvoi2.Fieldbyname('TAXNO').asstring := QTaxsal2TAXNO.asstring;
    QArinvoi2.Fieldbyname('TAXdate').asdatetime := QTaxsal2TAXDATE.Asdatetime;
    QArinvoi2.Fieldbyname('Disct').asFloat := 0;
    QArinvoi2.Fieldbyname('Smpay').asFloat := 0;
    QArinvoi2.Fieldbyname('Smchq').asFloat := 0;
    QArinvoi2.Fieldbyname('Kang').asFloat := QTaxsal2TOTTAX.Asfloat;
    QArinvoi2.Fieldbyname('Descrp').asstring := 'ลดหนี้';
    QArinvoi2.Fieldbyname('Jobno').asstring := QTaxsal2JOBNO.Asstring;

    if QArinvoi2.Fieldbyname('Jobno').asstring = '' then
      QArinvoi2.Fieldbyname('REFINV').asstring := 'IC'
    else
      QArinvoi2.Fieldbyname('REFINV').asstring := 'SVC';

    QArinvoi2.Fieldbyname('TNopay').asFloat := 1;
    QArinvoi2.Fieldbyname('Flag').asstring := '7';   //ลดหนี้
    QArinvoi2.Fieldbyname('Vattype').asstring := '2';
    QArinvoi2.Fieldbyname('Stat').asstring := '2';
    QArinvoi2.Fieldbyname('Post').asstring := 'K';
    QArinvoi2.Post;
    //
    with Qarinvoi do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ARINVOI WHERE TAXNO =:XNO');
      PARAMS[0].ASSTRING := QTaxsal2TAXREFNO.asstring;
      OPEN;
    end;

    if not (Qarinvoi.Bof and Qarinvoi.Eof) then
    begin
      with Qarinvoi do
      begin
        Qarinvoi.Edit;
        XRtamt := Fieldbyname('RTNAMT').Asfloat + QTaxsal2TOTTAX.Asfloat;
        Fieldbyname('RTNAMT').Asfloat := XRtamt;
        Fieldbyname('RTNDATE').Asdatetime := QTaxsal2TAXDATE.AsDateTime;
        Fieldbyname('RTNNO').Asstring := QTaxsal2TAXNO.AsString;
        if Fieldbyname('KANG').Asfloat > 0 then
          Fieldbyname('KANG').Asfloat := Fieldbyname('NETTOTAL').Asfloat -
            (Fieldbyname('SMPAY').Asfloat + Fieldbyname('SMCHQ').Asfloat + Fieldbyname('RTNAMT').Asfloat);
        Qarinvoi.Post;
      end
    end
    else
      Qarinvoi.close;
  end;
end;

procedure TDm_Finc.QTaxsal2AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QTaxsal2.Fieldbyname('TAXNO').Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QTAXSAL2.Active then
      if (QTAXSAL2.ApplyUpdates = 0) then
        QTAXSAL2.CommitUpdates
      else
        raise Exception.Create(QTAXSAL2.RowError.Message);
    if QLastNo.Active then
      if (QLastNo.ApplyUpdates = 0) then
        QLastNo.CommitUpdates
      else
        raise Exception.Create(QLastNo.RowError.Message);
    if QArinvoi2.Active then
      if (QArinvoi2.ApplyUpdates = 0) then
        QArinvoi2.CommitUpdates
      else
        raise Exception.Create(QArinvoi2.RowError.Message);
    if QArinvoi.Active then
      if (QArinvoi.ApplyUpdates = 0) then
        QArinvoi.CommitUpdates
      else
        raise Exception.Create(QArinvoi.RowError.Message);
    if QCn_Serv.Active then
      if (QCn_Serv.ApplyUpdates = 0) then
        QCn_Serv.CommitUpdates
      else
        raise Exception.Create(QCn_Serv.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    raise;
  end;
  //
  with Dm_finc.QTaxsal2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XNOO ');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_finc.QArinvoi2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = :XNOO ');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_finc.QCn_serv do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CN_SERV WHERE TAXNO = :XNOO ');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TDm_Finc.QTaxsal2AfterCancel(DataSet: TDataSet);
begin
  if QTAXSAL2.Active then
    QTAXSAL2.CancelUpdates;
  if QLastNo.Active then
    QLastNo.CancelUpdates;
  if QArinvoi2.Active then
    QArinvoi2.CancelUpdates;
  if QCn_Serv.Active then
    QCn_Serv.CancelUpdates;
end;

procedure TDm_Finc.QTaxsal2BeforeDelete(DataSet: TDataSet);
begin
  QArinvoi2.delete;
end;

procedure TDm_Finc.QAr_ServC2CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QAr_ServC2.CachedUpdates then
    QAr_ServC2UpdateStatus.Value := UpdateStatusStr[QAr_ServC2.UpdateStatus];
end;

procedure TDm_Finc.QTaxsal2TAXREFNOValidate(Sender: TField);
begin
  if QTaxsal2TAXREFNO.Asstring <> '' then
    with Query2 do
    begin
      close;
      Sql.clear;
      Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO=:EDIT');
      Params[0].asstring := QTaxsal2TAXREFNO.Asstring;
      Open;
      if not (Eof and Bof) then
      begin
        QTaxsal2CUSCOD.asstring := Query2.Fieldbyname('Cuscod').asstring;
        QTaxsal2JOBNO.asstring := Query2.Fieldbyname('Jobno').asstring;
        QTaxsal2Paytyp.Asstring := Query2.Fieldbyname('Paytyp').asstring;
        QTaxsal2VATRT.Asfloat := Query2.Fieldbyname('VATRT').asFloat;
      end
      else
        SFmain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');

      if Query2.Fieldbyname('FRSV').Asstring = 'F' then
      begin
        MessageBeep(0);
        QTaxsal2FRSV.Asstring := 'F';
        if MessageDlg('เป็นใบกำกับภาษีขายหน้าร้าน ถ้าลดหนี้หน้านี้จะไม่คืนสต็อก ควรลดเฉพาะใบกำกับภาษีค่าอื่นๆ(ไม่ตัดสต็อก) ', Mtconfirmation, [Mbok, Mbcancel], 0) = mrcancel then
          Abort;
      end
      else
        QTaxsal2FRSV.Asstring := 'S';
    end;
  //
  with Qduedat do
  begin
    Close;
    Sql.Clear;
    if QTaxsal2.Fieldbyname('JOBNO').Asstring <> '' then
    begin
      Sql.Add('SELECT * FROM AR_SERV WHERE JOBNO = :XNO ');
      Params[0].Asstring := QTaxsal2.Fieldbyname('JOBNO').Asstring;
    end
    else
    begin
      Sql.Add('SELECT invno,Invdue as Duedate FROM IC_INVOI WHERE INVNO = :XNO ' +
        'Union ' +
        'SELECT Othivno as invno,Invdue as Duedate FROM ICOTHINV WHERE Othivno = :XNO ');
      Params[0].Asstring := QTaxsal2TAXREFNO.Asstring;
    end;
    Open;
  end;
end;

procedure TDm_Finc.QTaxsal2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  if (AException is EFDDBEngineException) then
    if (AException as EFDDBEngineException).Errors[0].Errorcode = eKeyViol then
    begin
      Duplicate := True;
    end;
end;

procedure TDm_Finc.QAr_ServC2REDUValidate(Sender: TField);
var
  XTOT: Double;
begin
  XTOT := 0;
  Condpay.Open;
  if Condpay.FieldByName('VATTYPE').AsString = '1' then
  begin
    XTOT := QAr_ServC2TOTTAX.Asfloat - QAr_ServC2REDU.Asfloat;
    QAr_ServC2VAT.Asfloat := FRound((XTOT * QAr_ServC2VATRT.Asfloat / 100), 2);
    QAr_ServC2BALANCE.Asfloat := XTOT - QAr_ServC2VAT.Asfloat;
    QAr_ServC2TOTTAX.Asfloat := XTOT;
  end
  else
  begin
    QAr_ServC2BALANCE.Asfloat := QAr_ServC2AMOUNT.Asfloat - QAr_ServC2REDU.Asfloat;
    QAr_ServC2VAT.Asfloat := FRound((QAr_ServC2BALANCE.Asfloat * QAr_ServC2VATRT.Asfloat / 100), 2);
    QAr_ServC2TOTTAX.Asfloat := QAr_ServC2BALANCE.Asfloat + QAr_ServC2VAT.Asfloat;
  end;
end;

procedure TDm_Finc.QAr_ServC2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  if (AException is EFDDBEngineException) then
    if (AException as EFDDBEngineException).Errors[0].Errorcode = eKeyViol then
    begin
      Duplicate := True;
    end;
end;

procedure TDm_Finc.QAr_ServC2CREDTMValidate(Sender: TField);
begin
  QAr_ServC2DUEDATE.Asdatetime := QAr_ServC2DEVDATE.Asdatetime + Dm_Finc.QAr_servC2CREDTM.AsFloat;
end;

procedure TDm_Finc.QTaxsal2REDUValidate(Sender: TField);
begin
  QTaxsal2BALANCE.Asfloat := QTaxsal2AMOUNT.Asfloat - QTaxsal2REDU.Asfloat;
  QTaxsal2VAT.Asfloat := Roundto((QTaxsal2BALANCE.Asfloat * QTaxsal2VATRT.Asfloat / 100), -2);
  QTaxsal2TOTTAX.Asfloat := QTaxsal2BALANCE.Asfloat + QTaxsal2VAT.Asfloat;
end;

procedure TDm_Finc.QArpaytrn1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QArpaytrn1.CachedUpdates then
    QArpaytrn1UpdateStatus.Value := UpdateStatusStr[QArpaytrn1.UpdateStatus];
end;

procedure TDm_Finc.QOthinvDSCAMTValidate(Sender: TField);
begin
  QOthinvBALANE.Asfloat := QOthinvTOTPRC.Asfloat - QOthinvDSCAMT.Asfloat;
  QOthinvVATAMT.Asfloat := Roundto((QOthinvBALANE.Asfloat * QOthinvVAT.Asfloat / 100), -2);
  QOthinvNETPRC.Asfloat := QOthinvBALANE.Asfloat + QOthinvVATAMT.Asfloat;
  //
  if QArpaytrn2PAYTYP.Asstring = '02' then
    QArpaytrn2CHQAMT.Asfloat := QOthinvNETPRC.Asfloat
  else
    QArpaytrn2CSHAMT.Asfloat := QOthinvNETPRC.Asfloat;
end;

procedure TDm_Finc.QTaxsal2LOCATValidate(Sender: TField);
begin
  QTaxsal2TAXDATEValidate(Sender);
end;

procedure TDm_Finc.QArpaytrn2CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QArpaytrn2.CachedUpdates then
    QArpaytrn2UpdateStatus.Value := UpdateStatusStr[QArpaytrn2.UpdateStatus];
end;

procedure TDm_Finc.QArpaytrn2PAYTYPValidate(Sender: TField);
begin
  with Dm_Finc.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PAYTYP WHERE PAYCODE = :XCOD ');
    Params[0].Asstring := Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring;
    Open;
    if Dm_Finc.Query1.Bof and Dm_Finc.Query1.eof then
      SFmain.RaiseException('ไม่มีรหัสการชำระ');
    //
    if QArpaytrn2INVNO.Asstring <> '' then
    begin
      if ((Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring = '01') or (Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring = '55')) then
      begin
        Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat := QOthinvNETPRC.AsFloat;
      end
      else if Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring = '02' then
      begin
        Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat := QOthinvNETPRC.AsFloat;
      end
      else if Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring = '10' then
      begin
        Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat := QOthinvNETPRC.AsFloat;
      end
      else if Dm_Finc.QArpaytrn2.FieldByName('Paytyp').Asstring = '90' then
      begin
        Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat := QOthinvNETPRC.AsFloat;
      end
      else
      begin
        Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat := 0;
        Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat := QOthinvNETPRC.AsFloat;
      end;

      Dm_Finc.QArpaytrn2.FieldByName('TOTAL').AsFloat := Dm_Finc.QArpaytrn2.FieldByName('CSHAMT').AsFloat +
        Dm_Finc.QArpaytrn2.FieldByName('CHQAMT').AsFloat +
        Dm_Finc.QArpaytrn2.FieldByName('CREDITAMT').AsFloat +
        Dm_Finc.QArpaytrn2.FieldByName('BANKAMT').AsFloat;
      Dm_Finc.QArpaytrn2.FieldByName('NETTOT').AsFloat := Dm_Finc.QArpaytrn2.FieldByName('TOTAL').AsFloat;
    end;
  end;
end;

procedure TDm_Finc.QArpaytrn2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  if (AException is EFDDBEngineException) then
    if (AException as EFDDBEngineException).Errors[0].Errorcode = eKeyViol then
    begin
      Duplicate := True;
    end;
end;

procedure TDm_Finc.QArchqNewRecord(DataSet: TDataSet);
begin
  if Dm_Finc.QArpaytrn1.Active then
  begin
    Dm_Finc.QArchq.FieldByName('BILLNO').Asstring := Dm_Finc.QArpaytrn1.FieldByName('BILLNO').Asstring;
    Dm_Finc.QArchq.FieldByName('LOCAT').Asstring := Dm_Finc.QArpaytrn1.FieldByName('LOCAT').Asstring;
  end;

  if Dm_Finc.QArpaytrn2.Active then
  begin
    Dm_Finc.QArchq.FieldByName('BILLNO').Asstring := Dm_Finc.QArpaytrn2.FieldByName('BILLNO').Asstring;
    Dm_Finc.QArchq.FieldByName('LOCAT').Asstring := Dm_Finc.QArpaytrn2.FieldByName('LOCAT').Asstring;
  end;
end;

procedure TDm_Finc.QArpaytrn1AfterOpen(DataSet: TDataSet);
begin
  QArpaytrn2.Close;
end;

procedure TDm_Finc.QArpaytrn2AfterOpen(DataSet: TDataSet);
begin
  QArpaytrn1.Close;
end;

procedure TDm_Finc.QTaxsal2CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QTaxsal2.CachedUpdates then
    QTaxsal2UpdateStatus.Value := UpdateStatusStr[QTaxsal2.UpdateStatus];
end;

procedure TDm_Finc.QCN_ServNewRecord(DataSet: TDataSet);
begin
  QCN_Serv.FieldByName('TAXNO').Asstring := QTaxsal2.FieldByName('TAXNO').Asstring;
  QCN_Serv.FieldByName('TAXDATE').Asdatetime := QTaxsal2.FieldByName('TAXDATE').AsDatetime;
  QCN_Serv.FieldByName('JOBNO').Asstring := QTaxsal2.FieldByName('JOBNO').Asstring;
  QCN_Serv.FieldByName('LOCAT').Asstring := QTaxsal2.FieldByName('LOCAT').Asstring;
  QCN_Serv.FieldByName('USERID').Asstring := SFMain.XUser_ID;
  QCN_Serv.FieldByName('TIME1').Asdatetime := Now;
end;

procedure TDm_Finc.QCN_ServAfterPost(DataSet: TDataSet);
var
  XServ, XVat, XDisc: Double;
  BK: Tbookmark;
begin
  BK := QCN_Serv.Getbookmark;
  XServ := 0;
  XDisc := 0;
  XVat := QTaxsal2.FieldByName('Vatrt').AsFloat;
  QCN_Serv.DisableControls;
  QCN_Serv.First;
  while not (QCN_Serv.eof) do
  begin
    XServ := XServ + QCN_Serv.FieldByName('NETPRIC').AsFloat;
    QCN_Serv.Next;
  end;
  QCN_Serv.EnableControls;

  QTaxsal2.FieldByName('AMOUNT').AsFloat := XServ;
  QTaxsal2.FieldByName('VAT').AsFloat := RoundTo((XServ * XVat / 100), -2);
  QTaxsal2.FieldByName('TOTTAX').AsFloat := XServ + QTaxsal2.FieldByName('VAT').AsFloat;

  QCN_Serv.Gotobookmark(BK);
  QCN_Serv.Freebookmark(BK);
end;

procedure TDm_Finc.QArpaytrn1DISAMTValidate(Sender: TField);
begin
  Dm_Finc.QArpaytrn1.FieldByName('NETTOT').AsFloat := FRound((Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat -
    Dm_Finc.QArpaytrn1VAT3AMT.Asfloat - QArpaytrn1DISAMT.AsFloat) + Dm_Finc.QArpaytrn1ADDAMT.Asfloat, 2);
end;

procedure TDm_Finc.DataModuleCreate(Sender: TObject);
begin
  SetRoundMode(rmNearest);
end;

procedure TDm_Finc.QAr_ServC2DEPOSTNOValidate(Sender: TField);
begin
  if QAr_ServC2DEPOSTNO.AsString <> '' then
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM APINVOI WHERE INVNO=:NO');
      Params[0].Asstring := QAr_ServC2DEPOSTNO.Asstring;
      Open;
      if Bof and Eof then
        SFmain.RaiseException('ไม่พบเลขที่มัดจำ');
      if Query1.Fieldbyname('Kang').Asfloat = 0 then
        SFmain.RaiseException('เงินมัดจำถูกล้างหนี้แล้ว');
    //
      if Query1.FieldByName('VATTYPE').AsString = '2' then
        QAr_ServC2.Fieldbyname('Deposamt').AsFloat := Query1.Fieldbyname('Balance').Asfloat
      else
        QAr_ServC2.Fieldbyname('Deposamt').AsFloat := Query1.Fieldbyname('NETTOTAL').Asfloat;
    //
      QAr_ServC2.Fieldbyname('DeposVAT').AsFloat := Query1.Fieldbyname('Vatamt').Asfloat;
      QAr_ServC2.Fieldbyname('DeposTax').Asstring := Query1.Fieldbyname('Taxno').Asstring;
    end;
end;

procedure TDm_Finc.QArpaytrn2ADDAMTValidate(Sender: TField);
begin
  QArpaytrn2VAT3AMT.Asfloat := QArpaytrn2VAT3.Asfloat * QOthinvBALANE.Asfloat / 100;
  Dm_Finc.QArpaytrn2.FieldByName('NETTOT').AsFloat := Dm_Finc.QArpaytrn2.FieldByName('TOTAL').AsFloat -
    QArpaytrn2VAT3AMT.Asfloat + QArpaytrn2ADDAMT.Asfloat;
end;

procedure TDm_Finc.QArpaytrn2CUSCODEChange(Sender: TField);
begin
  with Dm_Finc.QArmast1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XDVNO ');
    Params[0].Asstring := Dm_Finc.QArpaytrn2.FieldByName('CUSCODE').Asstring;
    Open;
  end;
end;

procedure TDm_Finc.QArpaytrn1CREDITAMTValidate(Sender: TField);
begin
  QArpaytrn1CSHAMTValidate(QArpaytrn1CREDITAMT);
end;

procedure TDm_Finc.QArpaytrn1BANKAMTValidate(Sender: TField);
begin
  QArpaytrn1CSHAMTValidate(QArpaytrn1BANKAMT);
end;

procedure TDm_Finc.QArpaytrn2CREDITAMTValidate(Sender: TField);
begin
  QArpaytrn2CSHAMTValidate(QArpaytrn2CREDITAMT);
end;

procedure TDm_Finc.QArpaytrn2BANKAMTValidate(Sender: TField);
begin
  QArpaytrn2CSHAMTValidate(QArpaytrn2BANKAMT);
end;

procedure TDm_Finc.QArpaytrn1AfterCancel(DataSet: TDataSet);
begin
  if QArpaytrn1.Active then
    QArpaytrn1.CancelUpdates;
  if QArpaytrn_Typ.Active then
    QArpaytrn_Typ.CancelUpdates;
end;

procedure TDm_Finc.QArpaytrn2AfterCancel(DataSet: TDataSet);
begin
  if QArpaytrn2.Active then
    QArpaytrn2.CancelUpdates;
  if QArpaytrn_Typ1.Active then
    QArpaytrn_Typ1.CancelUpdates;
end;

procedure TDm_Finc.QArpaytrn1ADDAMTValidate(Sender: TField);
begin
  Dm_Finc.QArpaytrn1.FieldByName('NETTOT').AsFloat := FRound((Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat -
    Dm_Finc.QArpaytrn1VAT3AMT.Asfloat - QArpaytrn1DISAMT.AsFloat) + Dm_Finc.QArpaytrn1ADDAMT.Asfloat, 2);
end;

procedure TDm_Finc.QArpaytrn1VAT3AMTValidate(Sender: TField);
begin
  Dm_Finc.QArpaytrn1.FieldByName('NETTOT').AsFloat := FRound((Dm_Finc.QArpaytrn1.FieldByName('TOTAL').AsFloat -
    Dm_Finc.QArpaytrn1VAT3AMT.Asfloat - QArpaytrn1DISAMT.AsFloat) + Dm_Finc.QArpaytrn1ADDAMT.Asfloat, 2);
end;

procedure TDm_Finc.QAr_ServC2BeforeEdit(DataSet: TDataSet);
begin
  if QAr_ServC2TAXNO.AsString <> '' then
    sfmain.RaiseException('Ref.No. : ' + QAr_ServC2TAXNO.AsString + '<br/>หากต้องการแก้ไขรายการให้ยกเลิกการรับชำระก่อน.');
end;

procedure TDm_Finc.QArpaytrn1BeforeEdit(DataSet: TDataSet);
begin
  sfmain.Do_Chk_DatainGL('ACCGLMST', 'REFDOCNO', QArpaytrn1INVNO.AsString);
end;

procedure TDm_Finc.QArpaytrn2BeforeEdit(DataSet: TDataSet);
begin
  sfmain.Do_Chk_DatainGL('ACCGLMST', 'REFDOCNO', QArpaytrn2INVNO.AsString);
end;

end.

