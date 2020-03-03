unit Dmic01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  Math, FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmDmic01 = class(TDataModule)
    Rcinv: TFDQuery;
    SoRcinv: TDataSource;
    Rctran: TFDQuery;
    SoRctran: TDataSource;
    Query1: TFDQuery;
    Pkinv: TFDQuery;
    SoPkinv: TDataSource;
    SoPkTran: TDataSource;
    PkTran: TFDQuery;
    Icinv: TFDQuery;
    SoIcinv: TDataSource;
    IcTran: TFDQuery;
    SoIcTran: TDataSource;
    RctranRECVNO: TStringField;
    RctranRECVLOC: TStringField;
    RctranPARTNO: TStringField;
    RctranUCOST: TFloatField;
    RctranUNIT: TStringField;
    RctranQTYORD: TFloatField;
    RctranQTYRECV: TFloatField;
    RctranNETCOST: TFloatField;
    RctranREDU1: TFloatField;
    RctranREDU2: TFloatField;
    RctranREDU3: TFloatField;
    RctranACCTNO: TStringField;
    Condpay: TFDQuery;
    PkTranPKNO: TStringField;
    PkTranPARTNO: TStringField;
    PkTranUPRICE: TFloatField;
    PkTranQTYORD: TFloatField;
    PkTranQTYOUT: TFloatField;
    PkTranQTYBOD: TFloatField;
    PkTranNETFL: TStringField;
    PkTranREDU1: TFloatField;
    PkTranREDU2: TFloatField;
    PkTranREDU3: TFloatField;
    PkTranNETPRC: TFloatField;
    PkTranTOTPRC: TFloatField;
    PkTranACCTNO: TStringField;
    PkTranJOBNO: TStringField;
    PkTranSERIALNO: TStringField;
    PkinvPKNO: TStringField;
    PkinvPKDATE: TDateField;
    PkinvSALLEV: TStringField;
    PkinvVATTYPE: TStringField;
    PkinvOFFICCOD: TStringField;
    PkinvTOTPRC: TFloatField;
    PkinvDISCT: TFloatField;
    PkinvDISCAMT: TFloatField;
    PkinvNETAMT: TFloatField;
    PkinvBALANCE: TFloatField;
    PkinvVATRT: TFloatField;
    PkinvVATAMT: TFloatField;
    PkinvNETTOTAL: TFloatField;
    PkinvREFNO: TStringField;
    PkinvREFDAT: TDateField;
    PkinvFLAG: TStringField;
    PkinvSTAT: TStringField;
    PkinvJOBNO: TStringField;
    PkinvMEMO1: TMemoField;
    RcinvRECVNO: TStringField;
    RcinvRECVDT: TDateField;
    RcinvRECVLOC: TStringField;
    RcinvPONO: TStringField;
    RcinvINVNO: TStringField;
    RcinvINVDATE: TDateField;
    RcinvCREDTM: TFloatField;
    RcinvINVDUE: TDateField;
    RcinvVATTYPE: TStringField;
    RcinvAPCODE: TStringField;
    RcinvOFFICCOD: TStringField;
    RcinvTNOPAY: TFloatField;
    RcinvTOTAL: TFloatField;
    RcinvDISCT: TFloatField;
    RcinvDISCAMT: TFloatField;
    RcinvNETAMT: TFloatField;
    RcinvBALANCE: TFloatField;
    RcinvVATRT: TFloatField;
    RcinvVATAMT: TFloatField;
    RcinvTOTCOST: TFloatField;
    RcinvPAID: TFloatField;
    RcinvTAXNO: TStringField;
    RcinvTAXDATE: TDateField;
    RcinvTAXREFNO: TStringField;
    RcinvFLAG: TStringField;
    RcinvMEMO1: TMemoField;
    IcinvINVNO: TStringField;
    IcinvINVLOC: TStringField;
    IcinvINVDATE: TDateField;
    IcinvCREDTM: TFloatField;
    IcinvINVDUE: TDateField;
    IcinvPKNO: TStringField;
    IcinvVATTYPE: TStringField;
    IcinvCUSCOD: TStringField;
    IcinvOFFICCOD: TStringField;
    IcinvTOTPRC: TFloatField;
    IcinvDISCT: TFloatField;
    IcinvDISCAMT: TFloatField;
    IcinvNETAMT: TFloatField;
    IcinvBALANCE: TFloatField;
    IcinvVATRT: TFloatField;
    IcinvVATAMT: TFloatField;
    IcinvNETPRC: TFloatField;
    IcinvPAID: TFloatField;
    IcinvTAXNO: TStringField;
    IcinvTAXREFNO: TStringField;
    IcinvFLAG: TStringField;
    IcinvJOBNO: TStringField;
    IcinvMEMO1: TMemoField;
    IcinvTNOPAY: TFloatField;
    IcinvTAXDATE: TDateField;
    IcTranINVNO: TStringField;
    IcTranINVLOC: TStringField;
    IcTranINVDATE: TDateField;
    IcTranPARTNO: TStringField;
    IcTranCUSCOD: TStringField;
    IcTranUPRICE: TFloatField;
    IcTranAVGCOST: TFloatField;
    IcTranQTYORD: TFloatField;
    IcTranQTYOUT: TFloatField;
    IcTranQTYBOD: TFloatField;
    IcTranNETFL: TStringField;
    IcTranREDU1: TFloatField;
    IcTranREDU2: TFloatField;
    IcTranREDU3: TFloatField;
    IcTranNETPRC: TFloatField;
    IcTranTOTPRC: TFloatField;
    IcTranACCTNO: TStringField;
    IcTranJOBNO: TStringField;
    IcTranSERIALNO: TStringField;
    SoRtinv: TDataSource;
    SoRttran: TDataSource;
    MvInv: TFDQuery;
    SoMvInv: TDataSource;
    PkinvCUSCOD: TStringField;
    SoMvTran: TDataSource;
    MvInvMOVFRM: TStringField;
    MvInvMOVTO: TStringField;
    MvInvMOVDT: TDateField;
    MvInvMOVNO: TStringField;
    MvInvOFFICCOD: TStringField;
    MvInvAPPROVCD: TStringField;
    MvInvRECVCOD: TStringField;
    MvInvRECVDT: TDateField;
    MvInvTOTPRC: TFloatField;
    MvInvMEMO1: TMemoField;
    Mvtran: TFDQuery;
    MvtranMOVNO: TStringField;
    MvtranMOVFRM: TStringField;
    MvtranMOVTO: TStringField;
    MvtranPARTNO: TStringField;
    MvtranQTYMOV: TFloatField;
    MvtranUPRICE: TFloatField;
    MvtranTOTPRC: TFloatField;
    PkTranPKDATE: TDateField;
    RctranRECVDATE: TDateField;
    Rttran: TFDQuery;
    RttranRTNLOC: TStringField;
    RttranRTNNO: TStringField;
    RttranRTNDT: TDateField;
    RttranPARTNO: TStringField;
    RttranQTYINV: TFloatField;
    RttranQTYRTN: TFloatField;
    RttranUPRICE: TFloatField;
    RttranNETFL: TStringField;
    RttranNETPRC: TFloatField;
    RttranTOTPRC: TFloatField;
    RttranACCTNO: TStringField;
    RttranJOBNO: TStringField;
    RttranSERIALNO: TStringField;
    Rtinv: TFDQuery;
    RtinvRTNLOC: TStringField;
    RtinvRTNNO: TStringField;
    RtinvRTNDT: TDateField;
    RtinvTAXREFNO: TStringField;
    RtinvTAXDT: TDateField;
    RtinvINVNO: TStringField;
    RtinvINVDT: TDateField;
    RtinvCREDNO: TStringField;
    RtinvCREDDT: TDateField;
    RtinvAPCODE: TStringField;
    RtinvOFFICCOD: TStringField;
    RtinvVATTYP: TStringField;
    RtinvTOTPRC: TFloatField;
    RtinvVATRT: TFloatField;
    RtinvVATAMT: TFloatField;
    RtinvNETPRC: TFloatField;
    RtinvFLAG: TStringField;
    RtinvMEMO1: TMemoField;
    MvInvFLAG: TStringField;
    QaTran: TFDQuery;
    SoQainv: TDataSource;
    SoQaTran: TDataSource;
//    QainvUpdatestatus: TStringField;
    QaTranQANO: TStringField;
    QaTranQADATE: TDateField;
    QaTranPARTNO: TStringField;
    QaTranUPRICE: TFloatField;
    QaTranQTYORD: TFloatField;
    QaTranQTYOUT: TFloatField;
    QaTranQTYBOD: TFloatField;
    QaTranNETFL: TStringField;
    QaTranREDU1: TFloatField;
    QaTranREDU2: TFloatField;
    QaTranREDU3: TFloatField;
    QaTranNETPRC: TFloatField;
    QaTranTOTPRC: TFloatField;
    QaTranACCTNO: TStringField;
    QaTranJOBNO: TStringField;
    QaTranSERIALNO: TStringField;
    Adjinv: TFDQuery;
    AdjTran: TFDQuery;
    SoAdjinv: TDataSource;
    SoAdjTran: TDataSource;
    AdjinvADJNO: TStringField;
    AdjinvADJLOC: TStringField;
    AdjinvADJDATE: TDateField;
    AdjinvOFFICCOD: TStringField;
    AdjinvTAXDATE: TDateField;
    AdjinvTAXNO: TStringField;
    AdjinvFLAG: TStringField;
    AdjinvMEMO1: TMemoField;
    AdjTranADJNO: TStringField;
    AdjTranADJLOC: TStringField;
    AdjTranADJDATE: TDateField;
    AdjTranPARTNO: TStringField;
    AdjTranUCOST: TFloatField;
    AdjTranAVGCOST: TFloatField;
    AdjTranQTYORD: TFloatField;
    AdjTranQTYOUT: TFloatField;
    AdjTranQTYBOD: TFloatField;
    AdjTranNETCOST: TFloatField;
    AdjinvTOTCOST: TFloatField;
    Taxsal: TFDQuery;
    TaxsalTAXNO: TStringField;
    TaxsalTAXDATE: TDateField;
    TaxsalTAXREFNO: TStringField;
    TaxsalDESC1: TStringField;
    TaxsalCUSCOD: TStringField;
    TaxsalVATRT: TFloatField;
    TaxsalAMOUNT: TFloatField;
    TaxsalREDU: TFloatField;
    TaxsalBALANCE: TFloatField;
    TaxsalVAT: TFloatField;
    TaxsalTOTTAX: TFloatField;
    TaxsalFLAG: TStringField;
    RcinvUSERID: TStringField;
    RcinvTIME1: TDateTimeField;
    RctranUSERID: TStringField;
    RctranTIME1: TDateTimeField;
    RtinvUSERID: TStringField;
    RtinvTIME1: TDateTimeField;
    RttranUSERID: TStringField;
    RttranTIME1: TDateTimeField;
    PkinvSVCOLOR: TStringField;
    PkinvUSERID: TStringField;
    PkinvTIME1: TDateTimeField;
    PkTranUSERID: TStringField;
    PkTranTIME1: TDateTimeField;
    IcinvUSERID: TStringField;
    IcinvTIME1: TDateTimeField;
    IcTranUSERID: TStringField;
    IcTranTIME1: TDateTimeField;
    MvInvUSERID: TStringField;
    MvInvTIME1: TDateTimeField;
    MvtranUSERID: TStringField;
    MvtranTIME1: TDateTimeField;
    QaTranUSERID: TStringField;
    QaTranTIME1: TDateTimeField;
    AdjinvUSERID: TStringField;
    AdjinvTIME1: TDateTimeField;
    AdjTranTOTCOST: TFloatField;
    AdjTranUSERID: TStringField;
    AdjTranTIME1: TDateTimeField;
    TaxsalUSERID: TStringField;
    TaxsalTIME1: TDateTimeField;
    PkinvPKLOCAT: TStringField;
    PkTranPKLOCAT: TStringField;
    PkTranSERVCOD: TStringField;
    PkTranFRT: TFloatField;
    PkTranRTNPK: TStringField;
    PkTranFLAG: TStringField;
    PkTranSVCOLOR: TStringField;
    QaTranQALOCAT: TStringField;
    RctranYEAR1: TStringField;
    RttranYEAR1: TStringField;
    MvtranYEAR1: TStringField;
    PkTranYEAR1: TStringField;
    IcTranYEAR1: TStringField;
    AdjTranYEAR1: TStringField;
    RtinvTOTAL: TFloatField;
    RcinvUpdatestatus: TStringField;
    PkinvUpdatestatus: TStringField;
    IcinvUpdatestatus: TStringField;
    RtinvUpdatestatus: TStringField;
    AdjinvUpdatestatus: TStringField;
    SoRcinv1: TDataSource;
    SoRcTrn1: TDataSource;
    Rcinv1: TFDQuery;
    Rcinv1RECVNO: TStringField;
    Rcinv1RECVDT: TDateField;
    Rcinv1RECVLOC: TStringField;
    Rcinv1PONO: TStringField;
    Rcinv1INVNO: TStringField;
    Rcinv1INVDATE: TDateField;
    Rcinv1CREDTM: TFloatField;
    Rcinv1INVDUE: TDateField;
    Rcinv1VATTYPE: TStringField;
    Rcinv1APCODE: TStringField;
    Rcinv1OFFICCOD: TStringField;
    Rcinv1TNOPAY: TFloatField;
    Rcinv1TOTAL: TFloatField;
    Rcinv1DISCT: TFloatField;
    Rcinv1DISCAMT: TFloatField;
    Rcinv1NETAMT: TFloatField;
    Rcinv1BALANCE: TFloatField;
    Rcinv1VATRT: TFloatField;
    Rcinv1VATAMT: TFloatField;
    Rcinv1TOTCOST: TFloatField;
    Rcinv1PAID: TFloatField;
    Rcinv1TAXNO: TStringField;
    Rcinv1TAXDATE: TDateField;
    Rcinv1TAXREFNO: TStringField;
    Rcinv1FLAG: TStringField;
    Rcinv1MEMO1: TMemoField;
    Rcinv1USERID: TStringField;
    Rcinv1TIME1: TDateTimeField;
    Rctrn1: TFDQuery;
    Rctrn1RECVNO: TStringField;
    Rctrn1RECVLOC: TStringField;
    Rctrn1RECVDATE: TDateField;
    Rctrn1PARTNO: TStringField;
    Rctrn1UCOST: TFloatField;
    Rctrn1UNIT: TStringField;
    Rctrn1QTYORD: TFloatField;
    Rctrn1QTYRECV: TFloatField;
    Rctrn1NETCOST: TFloatField;
    Rctrn1REDU1: TFloatField;
    Rctrn1REDU2: TFloatField;
    Rctrn1REDU3: TFloatField;
    Rctrn1NETTOT: TFloatField;
    Rctrn1ACCTNO: TStringField;
    Rctrn1YEAR1: TStringField;
    Rctrn1USERID: TStringField;
    Rctrn1TIME1: TDateTimeField;
    PkTranBACKFLG: TStringField;
    RctranPONO: TStringField;
    Tinven9: TFDTable;
    QLastno: TFDQuery;
    PkinvCANCELID: TStringField;
    PkinvCANDAT: TDateTimeField;
    PkinvPOSTGLDT: TDateTimeField;
    PkTranCANCELID: TStringField;
    PkTranCANDAT: TDateTimeField;
    PkTranPOSTGLDT: TDateTimeField;
    IcTranFLAG: TStringField;
    IcTranCANCELID: TStringField;
    IcTranCANDAT: TDateTimeField;
    IcTranPOSTGLDT: TDateTimeField;
    TaxsalCANCELID: TStringField;
    TaxsalCANDAT: TDateTimeField;
    TaxsalPOSTGLDT: TDateTimeField;
    TaxsalCANCEL: TStringField;
    RctranFLAG: TStringField;
    RttranFLAG: TStringField;
    RttranCANCELID: TStringField;
    RttranCANDAT: TDateTimeField;
    RttranPOSTGLDT: TDateTimeField;
    MvInvUpdatestatus: TStringField;
    Rcinv1Updatestatus: TStringField;
    Query2: TFDQuery;
    InvMst9: TFDQuery;
    SoInvmst9: TDataSource;
    Rctrn1FLAG: TStringField;
    AdjTranFLAG: TStringField;
    PkinvSVORD: TStringField;
    PkinvRTNPK: TStringField;
    QDbconfig: TFDQuery;
    TmpAjIv: TFDQuery;
    SoTmpajiv: TDataSource;
    SoTmpajtr: TDataSource;
    TmpAjIvADJNO: TStringField;
    TmpAjIvADJLOC: TStringField;
    TmpAjIvSHELF: TStringField;
    TmpAjIvGROUP1: TStringField;
    TmpAjIvADJDATE: TDateField;
    TmpAjIvOFFICCOD: TStringField;
    TmpAjIvFLAG: TStringField;
    TmpAjIvMEMO1: TMemoField;
    TmpAjIvTOTCOST: TFloatField;
    TmpAjIvUSERID: TStringField;
    TmpAjIvTIME1: TDateTimeField;
    TmpAjIvPARTNO1: TStringField;
    TmpAjIvPARTNO2: TStringField;
    PkTranAVGCOST: TFloatField;
    QArpaytrn1: TFDQuery;
    QArpaytrn1BILLNO: TStringField;
    QArpaytrn1LOCAT: TStringField;
    QArpaytrn1BILLDT: TDateField;
    QArpaytrn1INVNO: TStringField;
    QArpaytrn1CUSCODE: TStringField;
    QArpaytrn1PAYTYP: TStringField;
    QArpaytrn1PAYCONT: TStringField;
    QArpaytrn1IDCARD: TStringField;
    QArpaytrn1IDEXPDT: TDateField;
    QArpaytrn1CHQNUM: TFloatField;
    QArpaytrn1CSHAMT: TFloatField;
    QArpaytrn1CHQAMT: TFloatField;
    QArpaytrn1TOTAL: TFloatField;
    QArpaytrn1DISCT: TFloatField;
    QArpaytrn1DISAMT: TFloatField;
    QArpaytrn1VAT3: TFloatField;
    QArpaytrn1VAT3AMT: TFloatField;
    QArpaytrn1NETTOT: TFloatField;
    QArpaytrn1ADDAMT: TFloatField;
    QArpaytrn1JOBNO: TStringField;
    QArpaytrn1FLAG: TStringField;
    QArpaytrn1SYSTM: TStringField;
    QArpaytrn1MEMO1: TMemoField;
    QArpaytrn1USERID: TStringField;
    QArpaytrn1TIME1: TDateTimeField;
    QArpaytrn1CANCELID: TStringField;
    QArpaytrn1CANDAT: TDateTimeField;
    QArpaytrn1POSTGLDT: TDateTimeField;
    Soarpaytrn1: TDataSource;
    QArpaytrn1Updatestatus: TStringField;
    QArchq: TFDQuery;
    SoArchq: TDataSource;
    IcinvTOTCOST: TFloatField;
    IcinvCANCELID: TStringField;
    IcinvCANDAT: TDateTimeField;
    IcinvPOSTGLDT: TDateTimeField;
    RttranAVGCOST: TFloatField;
    IcTranSESFLAG: TStringField;
    RctranAVGCOST: TFloatField;
    Rctrn1AVGCOST: TFloatField;
    QStkcard: TFDQuery;
    RttranCOST: TFloatField;
    MvtranAVGCOST: TFloatField;
    PkinvTOTCOST: TFloatField;
    RtinvTOTCOST: TFloatField;
    RtinvCANCELID: TStringField;
    RtinvCANDAT: TDateTimeField;
    Rcinv1CANCELID: TStringField;
    Rcinv1CANDAT: TDateTimeField;
    Rctrn1PONO: TStringField;
    Rctrn1CANCELID: TStringField;
    Rctrn1CANDAT: TDateTimeField;
    QEnqBk: TFDQuery;
    SoEnqBk: TDataSource;
    QEnqMv: TFDQuery;
    SoEnqMv: TDataSource;
    QValid: TFDQuery;
    RttranTAXREFNO: TStringField;
    TmpAjIvEXPTYP: TStringField;
    Tmpajtr: TFDQuery;
    TmpajtrADJNO: TStringField;
    TmpajtrADJLOC: TStringField;
    TmpajtrPARTNO: TStringField;
    TmpajtrSHELF: TStringField;
    TmpajtrGROUP1: TStringField;
    TmpajtrADJDATE: TDateField;
    TmpajtrUCOST: TFloatField;
    TmpajtrAVGCOST: TFloatField;
    TmpajtrQTYORD: TFloatField;
    TmpajtrQTYOUT: TFloatField;
    TmpajtrQTYBOD: TFloatField;
    TmpajtrNETCOST: TFloatField;
    TmpajtrTOTCOST: TFloatField;
    TmpajtrYEAR1: TStringField;
    TmpajtrFLAG: TStringField;
    TmpajtrUSERID: TStringField;
    TmpajtrTIME1: TDateTimeField;
    TaxsalPAYTYP: TStringField;
    TaxsalLOCAT: TStringField;
    Qtmpicinv: TFDQuery;
    RtinvJOBNO: TStringField;
    Qarinvoi: TFDQuery;
    RtinvPAYTYPE: TStringField;
    PkTranFREE: TStringField;
    PkTranGROUP1: TStringField;
    QInvmst1: TFDQuery;
    QInvmst2: TFDQuery;
    QInvmst3: TFDQuery;
    QInvmst4: TFDQuery;
    QInvmst8: TFDQuery;
    PkTranUpdatestatus: TStringField;
    QInvanls: TFDQuery;
    Query3: TFDQuery;
    RctranUpdatestatus: TStringField;
    IcTranUpdatestatus: TStringField;
    RttranUpdatestatus: TStringField;
    AdjTranUpdatestatus: TStringField;
    MvtranUpdatestatus: TStringField;
    QInvmst5: TFDQuery;
    QInvmst6: TFDQuery;
    Rctrn1Updatestatus: TStringField;
    TaxsalFRSV: TStringField;
    QPkinv: TFDQuery;
    PkinvSALTYPE: TStringField;
    PkTranDISCAMT: TFloatField;
    IcTranFREE: TStringField;
    IcTranGROUP1: TStringField;
    IcTranDISCAMT: TFloatField;
    PkinvDISCTYP: TStringField;
    Query4: TFDQuery;
    PkinvEXDISAMT: TFloatField;
    IcinvEXDISAMT: TFloatField;
    PkinvDISBATH: TStringField;
    IcinvDISBATH: TStringField;
    RcinvEXDISAMT: TFloatField;
    RcinvDISBATH: TStringField;
    RctranDISCAMT: TFloatField;
    QIcothinv: TFDQuery;
    QIcothtrn: TFDQuery;
    Soicothinv: TDataSource;
    SoIcothtrn: TDataSource;
    QIcothinvOTHIVNO: TStringField;
    QIcothinvLOCAT: TStringField;
    QIcothinvOTHDATE: TDateField;
    QIcothinvSALLEV: TStringField;
    QIcothinvVATTYPE: TStringField;
    QIcothinvCUSCOD: TStringField;
    QIcothinvOFFICCOD: TStringField;
    QIcothinvTOTPRC: TFloatField;
    QIcothinvDISCT: TFloatField;
    QIcothinvDISCAMT: TFloatField;
    QIcothinvNETAMT: TFloatField;
    QIcothinvBALANCE: TFloatField;
    QIcothinvVATRT: TFloatField;
    QIcothinvVATAMT: TFloatField;
    QIcothinvNETTOTAL: TFloatField;
    QIcothinvBILLNO: TStringField;
    QIcothinvBILLDT: TDateField;
    QIcothinvFLAG: TStringField;
    QIcothinvPAYTYPE: TStringField;
    QIcothinvTOTCOST: TFloatField;
    QIcothinvDISCTYP: TStringField;
    QIcothinvEXDISAMT: TFloatField;
    QIcothinvDISBATH: TStringField;
    QIcothinvMEMO1: TMemoField;
    QIcothinvUSERID: TStringField;
    QIcothinvTIME1: TDateTimeField;
    QIcothinvCANCELID: TStringField;
    QIcothinvCANDAT: TDateTimeField;
    QIcothinvPOSTGLDT: TDateTimeField;
    QIcothtrnOTHIVNO: TStringField;
    QIcothtrnLOCAT: TStringField;
    QIcothtrnOTHDATE: TDateField;
    QIcothtrnPARTNO: TStringField;
    QIcothtrnDESC1: TStringField;
    QIcothtrnUPRICE: TFloatField;
    QIcothtrnQTYOUT: TFloatField;
    QIcothtrnREDU1: TFloatField;
    QIcothtrnREDU2: TFloatField;
    QIcothtrnREDU3: TFloatField;
    QIcothtrnNETPRC: TFloatField;
    QIcothtrnTOTPRC: TFloatField;
    QIcothtrnCOST: TFloatField;
    QIcothtrnDISCAMT: TFloatField;
    QIcothtrnFLAG: TStringField;
    QIcothtrnUSERID: TStringField;
    QIcothtrnTIME1: TDateTimeField;
    QIcothtrnCANCELID: TStringField;
    QIcothtrnCANDAT: TDateTimeField;
    QIcothtrnPOSTGLDT: TDateTimeField;
    QIcothinvUpdatestatus: TStringField;
    Qarpaytrn: TFDQuery;
    QIcothinvTERM: TFloatField;
    QIcothinvINVDUE: TDateField;
    Qinvmst9: TFDQuery;
    QInvmst10: TFDQuery;
    RtinvDUEDATE: TDateField;
    RcinvUPD: TStringField;
    RctranVATCOST: TFloatField;
    PkinvCAMPNO: TStringField;
    PkTranCAMPNO: TStringField;
    PkTranCAMFLG: TStringField;
    Rctrn1DISCAMT: TFloatField;
    Rctrn1VATCOST: TFloatField;
    TmpajtrITEMNO: TFloatField;
    RcinvPOSTGLDT: TDateTimeField;
    RcinvPAYTYP: TStringField;
    RcinvREFNO: TStringField;
    PkTranCUSCOD: TStringField;
    RctranAPCODE: TStringField;
    PkinvTRANTO: TStringField;
    PkTranREFPO: TStringField;
    IcinvTRANTO: TStringField;
    IcTranREFPO: TStringField;
    PkTranREFNO: TStringField;
    PkTranREFDAT: TDateField;
    IcinvDEPOSTNO: TStringField;
    IcinvDEPOSAMT: TFloatField;
    IcinvDEPOSTAX: TStringField;
    IcinvDEPOSVAT: TFloatField;
    Rctrn1APCODE: TStringField;
    QTemp: TFDQuery;
    PkinvNETADD: TFloatField;
    Qainv: TFDQuery;
    QainvQANO: TStringField;
    QainvQADATE: TDateField;
    QainvSALLEV: TStringField;
    QainvVATTYPE: TStringField;
    QainvCUSCOD: TStringField;
    QainvOFFICCOD: TStringField;
    QainvTOTPRC: TFloatField;
    QainvDISCT: TFloatField;
    QainvDISCAMT: TFloatField;
    QainvNETAMT: TFloatField;
    QainvBALANCE: TFloatField;
    QainvVATRT: TFloatField;
    QainvVATAMT: TFloatField;
    QainvNETTOTAL: TFloatField;
    QainvREFNO: TStringField;
    QainvREFDAT: TDateField;
    QainvFLAG: TStringField;
    QainvSTAT: TStringField;
    QainvJOBNO: TStringField;
    QainvMEMO1: TMemoField;
    QainvUSERID: TStringField;
    QainvTIME1: TDateTimeField;
    QainvQALOCAT: TStringField;
    QainvUpdatestatus: TStringField;
    QainvCANCELID: TStringField;
    QainvCANDAT: TDateTimeField;
    QainvPOSTGLDT: TDateTimeField;
    QainvNETADD: TFloatField;
    PkinvCUPONGNO: TStringField;
    PkTranCUPONGNO: TStringField;
    TmpAjIvUpdatestatus: TStringField;
    QArpaytrn1BKCODE: TStringField;
    QArpaytrn1TAXNO: TStringField;
    QArpaytrn1BOOKNO: TStringField;
    QArpaytrn1PAYFOR: TStringField;
    QArpaytrn1CLAIMTYP: TStringField;
    QArpaytrn1POSTGL: TStringField;
    Rcinv1POSTGLDT: TDateTimeField;
    Rcinv1EXDISAMT: TFloatField;
    Rcinv1DISBATH: TStringField;
    Rcinv1UPD: TStringField;
    Rcinv1PAYTYP: TStringField;
    Rcinv1REFNO: TStringField;
    Rcinv1BKCODE: TStringField;
    Rcinv1LCNO: TStringField;
    Rcinv1CHCODE: TStringField;
    Rcinv1CHRATE: TFloatField;
    Rcinv1TOTHCOS1: TFloatField;
    Rcinv1FOTHCOS: TFloatField;
    Rcinv1TOTHCOS2: TFloatField;
    Rcinv1TOTHTOT: TFloatField;
    Rcinv1TNETCOST: TFloatField;
    Rcinv1TTAXAMT: TFloatField;
    Rcinv1APTYPE: TStringField;
    Rcinv1POSTGL: TStringField;
    AdjinvCANCELID: TStringField;
    AdjinvCANDAT: TDateTimeField;
    AdjinvPOSTGL: TStringField;
    TaxsalPOSTGL: TStringField;
    RcinvPOSTGL: TStringField;
    RtinvPOSTGL: TStringField;
    RtinvPOSTGL0: TStringField;
    Query5: TFDQuery;
    Query6: TFDQuery;
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
    IcinvRTNAMT: TFloatField;
    IcinvRTNDATE: TDateField;
    IcinvRTNNO: TStringField;
    IcinvCAMPNO: TStringField;
    IcinvPTYPE: TStringField;
    IcinvKITCODE: TStringField;
    PkTranSESFLAG: TStringField;
    PkTranPARTDESC: TStringField;
    IcTranCAMPNO: TStringField;
    IcTranPARTDESC: TStringField;
    RttranPARTDESC: TStringField;
    Query7: TFDQuery;
    QaTranPARTDESC: TStringField;
    RctranPARTDESC: TStringField;
    MvtranPARTDESC: TStringField;
    Rctrn1PARTDESC: TStringField;
    AdjTranPARTDESC: TStringField;
    QArpaytrn_TypCHQNO: TStringField;
    RctranGROUP1: TStringField;
    PkinvKITCODE: TStringField;
    RctranLOTNO: TStringField;
    QCondpay: TFDQuery;
    RcinvLCNO: TStringField;
    Rcinv2: TFDQuery;
    SoRcinv2: TDataSource;
    Rctran2: TFDQuery;
    SoRctran2: TDataSource;
    Rcinv2RECVNO: TStringField;
    Rcinv2RECVDT: TDateField;
    Rcinv2RECVLOC: TStringField;
    Rcinv2PONO: TStringField;
    Rcinv2INVNO: TStringField;
    Rcinv2INVDATE: TDateField;
    Rcinv2CREDTM: TFloatField;
    Rcinv2INVDUE: TDateField;
    Rcinv2VATTYPE: TStringField;
    Rcinv2APCODE: TStringField;
    Rcinv2OFFICCOD: TStringField;
    Rcinv2TNOPAY: TFloatField;
    Rcinv2TOTAL: TFloatField;
    Rcinv2DISCT: TFloatField;
    Rcinv2DISCAMT: TFloatField;
    Rcinv2NETAMT: TFloatField;
    Rcinv2BALANCE: TFloatField;
    Rcinv2VATRT: TFloatField;
    Rcinv2VATAMT: TFloatField;
    Rcinv2TOTCOST: TFloatField;
    Rcinv2PAID: TFloatField;
    Rcinv2TAXNO: TStringField;
    Rcinv2TAXDATE: TDateField;
    Rcinv2TAXREFNO: TStringField;
    Rcinv2FLAG: TStringField;
    Rcinv2MEMO1: TMemoField;
    Rcinv2USERID: TStringField;
    Rcinv2TIME1: TDateTimeField;
    Rcinv2CANCELID: TStringField;
    Rcinv2CANDAT: TDateTimeField;
    Rcinv2POSTGLDT: TDateTimeField;
    Rcinv2EXDISAMT: TFloatField;
    Rcinv2DISBATH: TStringField;
    Rcinv2UPD: TStringField;
    Rcinv2PAYTYP: TStringField;
    Rcinv2REFNO: TStringField;
    Rcinv2BKCODE: TStringField;
    Rcinv2LCNO: TStringField;
    Rcinv2CHCODE: TStringField;
    Rcinv2CHRATE: TFloatField;
    Rcinv2TOTHCOS1: TFloatField;
    Rcinv2FOTHCOS: TFloatField;
    Rcinv2TOTHCOS2: TFloatField;
    Rcinv2TOTHTOT: TFloatField;
    Rcinv2TNETCOST: TFloatField;
    Rcinv2TTAXAMT: TFloatField;
    Rcinv2APTYPE: TStringField;
    Rcinv2POSTGL: TStringField;
    Rctran2RECVNO: TStringField;
    Rctran2RECVLOC: TStringField;
    Rctran2RECVDATE: TDateField;
    Rctran2PARTNO: TStringField;
    Rctran2UCOST: TFloatField;
    Rctran2UNIT: TStringField;
    Rctran2QTYORD: TFloatField;
    Rctran2QTYRECV: TFloatField;
    Rctran2NETCOST: TFloatField;
    Rctran2REDU1: TFloatField;
    Rctran2REDU2: TFloatField;
    Rctran2REDU3: TFloatField;
    Rctran2NETTOT: TFloatField;
    Rctran2ACCTNO: TStringField;
    Rctran2FLAG: TStringField;
    Rctran2YEAR1: TStringField;
    Rctran2AVGCOST: TFloatField;
    Rctran2PONO: TStringField;
    Rctran2USERID: TStringField;
    Rctran2TIME1: TDateTimeField;
    Rctran2CANCELID: TStringField;
    Rctran2CANDAT: TDateTimeField;
    Rctran2POSTGLDT: TDateTimeField;
    Rctran2DISCAMT: TFloatField;
    Rctran2VATCOST: TFloatField;
    Rctran2TAXCODE: TStringField;
    Rctran2FTAXRT: TFloatField;
    Rctran2FUNIT: TStringField;
    Rctran2FUCOST: TFloatField;
    Rctran2FTOTCOST: TFloatField;
    Rctran2FDISAMT: TFloatField;
    Rctran2FNETCOST: TFloatField;
    Rctran2TNETCOST: TFloatField;
    Rctran2TTAXAMT: TFloatField;
    Rctran2TTOTCOST: TFloatField;
    Rctran2TOTHCOST: TFloatField;
    Rctran2WEIGHT: TFloatField;
    Rctran2APCODE: TStringField;
    Rctran2PARTDESC: TStringField;
    Rctran2GROUP1: TStringField;
    Rctran2LOTNO: TStringField;
    Rctran2Updatestatus: TStringField;
    Rcinv2Updatestatus: TStringField;
    RctranNETTOT: TFloatField;
    QInvmst7: TFDQuery;
    Rcinv2REFNO3: TStringField;
    QArpaytrn1RECV_MONEY: TFloatField;
    QArpaytrn1CHANGE: TFloatField;
    QArpaytrn_TypCREDIT_CARD: TStringField;
    PkinvPOSTGL: TStringField;
    Rcinv2REFNO4: TStringField;
    MvtranWAREHOUSECOD: TStringField;
    PkTranWAREHOUSECOD: TStringField;
    MvInvCUSCOD: TStringField;
    procedure RctranNewRecord(DataSet: TDataSet);
    procedure RcinvNewRecord(DataSet: TDataSet);
    procedure RcinvRECVDTValidate(Sender: TField);
    procedure RcinvAfterPost(DataSet: TDataSet);
    procedure RcinvBeforePost(DataSet: TDataSet);
    procedure RcinvBeforeDelete(DataSet: TDataSet);
    procedure PkinvPKDATEValidate(Sender: TField);
    procedure PkTranNewRecord(DataSet: TDataSet);
    procedure PkinvAfterPost(DataSet: TDataSet);
    procedure PkinvNewRecord(DataSet: TDataSet);
    procedure PkinvBeforePost(DataSet: TDataSet);
    procedure IcinvNewRecord(DataSet: TDataSet);
    procedure IcTranNewRecord(DataSet: TDataSet);
    procedure IcinvINVDATEValidate(Sender: TField);
    procedure IcinvBeforePost(DataSet: TDataSet);
    procedure IcinvAfterPost(DataSet: TDataSet);
    procedure RttranONewRecord(DataSet: TDataSet);
    procedure RcinvRECVLOCValidate(Sender: TField);
    procedure PkinvPKLOCATValidate(Sender: TField);
    procedure IcinvINVLOCValidate(Sender: TField);
    procedure MvInvMOVDTValidate(Sender: TField);
    procedure RctranBeforeDelete(DataSet: TDataSet);
    procedure PkTranBeforePost(DataSet: TDataSet);
    procedure IcTranBeforePost(DataSet: TDataSet);
    procedure MvtranNewRecord(DataSet: TDataSet);
    procedure MvInvAfterPost(DataSet: TDataSet);
    procedure MvtranBeforePost(DataSet: TDataSet);
    procedure MvtranBeforeDelete(DataSet: TDataSet);
    procedure MvInvBeforeDelete(DataSet: TDataSet);
    procedure RctranAfterPost(DataSet: TDataSet);
    procedure IcTranAfterPost(DataSet: TDataSet);
    procedure PkTranAfterPost(DataSet: TDataSet);
    procedure RttranNewRecord(DataSet: TDataSet);
    procedure RttranBeforeDelete(DataSet: TDataSet);
    procedure RttranAfterPost(DataSet: TDataSet);
    procedure RtinvAfterPost(DataSet: TDataSet);
    procedure RtinvBeforeDelete(DataSet: TDataSet);
    procedure RtinvBeforePost(DataSet: TDataSet);
    procedure RtinvNewRecord(DataSet: TDataSet);
    procedure RtinvRTNDTValidate(Sender: TField);
    procedure MvtranAfterPost(DataSet: TDataSet);
    procedure QainvQADATEValidate(Sender: TField);
    procedure QainvAfterPost(DataSet: TDataSet);
    procedure QainvBeforeDelete(DataSet: TDataSet);
    procedure QainvNewRecord(DataSet: TDataSet);
    procedure QaTranNewRecord(DataSet: TDataSet);
    procedure QaTranAfterPost(DataSet: TDataSet);
    procedure AdjinvADJDATEValidate(Sender: TField);
    procedure AdjTranAfterPost(DataSet: TDataSet);
    procedure AdjinvAfterPost(DataSet: TDataSet);
    procedure AdjinvBeforeDelete(DataSet: TDataSet);
    procedure RttranBeforePost(DataSet: TDataSet);
    procedure IcinvFLAGValidate(Sender: TField);
    procedure MvInvMOVFRMValidate(Sender: TField);
    procedure RtinvRTNLOCValidate(Sender: TField);
    procedure QainvQALOCATValidate(Sender: TField);
    procedure AdjinvADJLOCValidate(Sender: TField);
    procedure RcinvFLAGValidate(Sender: TField);
    procedure RtinvFLAGValidate(Sender: TField);
    procedure AdjTranBeforePost(DataSet: TDataSet);
    procedure AdjTranBeforeDelete(DataSet: TDataSet);
    procedure MvInvBeforePost(DataSet: TDataSet);
    procedure RcinvCalcFields(DataSet: TDataSet);
    procedure RtinvCalcFields(DataSet: TDataSet);
    procedure PkinvCalcFields(DataSet: TDataSet);
    procedure IcinvCalcFields(DataSet: TDataSet);
    procedure AdjinvCalcFields(DataSet: TDataSet);
    procedure Rcinv1RECVDTValidate(Sender: TField);
    procedure Rcinv1RECVLOCValidate(Sender: TField);
    procedure Rcinv1AfterPost(DataSet: TDataSet);
    procedure Rctrn1BeforePost(DataSet: TDataSet);
    procedure Rcinv1BeforePost(DataSet: TDataSet);
    procedure Rcinv1BeforeDelete(DataSet: TDataSet);
    procedure Rctrn1BeforeDelete(DataSet: TDataSet);
    procedure PkTranAfterOpen(DataSet: TDataSet);
    procedure PkinvAfterCancel(DataSet: TDataSet);
    procedure PkTranBeforeDelete(DataSet: TDataSet);
    procedure RctranAfterOpen(DataSet: TDataSet);
    procedure IcTranAfterOpen(DataSet: TDataSet);
    procedure RcinvAfterCancel(DataSet: TDataSet);
    procedure RttranAfterOpen(DataSet: TDataSet);
    procedure QainvCalcFields(DataSet: TDataSet);
    procedure MvInvCalcFields(DataSet: TDataSet);
    procedure Rcinv1CalcFields(DataSet: TDataSet);
    procedure MvInvNewRecord(DataSet: TDataSet);
    procedure MvtranAfterOpen(DataSet: TDataSet);
    procedure MvInvAfterCancel(DataSet: TDataSet);
    procedure RtinvAfterCancel(DataSet: TDataSet);
    procedure Rctrn1AfterOpen(DataSet: TDataSet);
    procedure Rcinv1AfterCancel(DataSet: TDataSet);
    procedure QaTranAfterOpen(DataSet: TDataSet);
    procedure QainvBeforePost(DataSet: TDataSet);
    procedure AdjinvBeforePost(DataSet: TDataSet);
    procedure AdjTranAfterOpen(DataSet: TDataSet);
    procedure AdjinvNewRecord(DataSet: TDataSet);
    procedure AdjinvAfterCancel(DataSet: TDataSet);
    procedure PkinvJOBNOValidate(Sender: TField);
    procedure TmpAjIvNewRecord(DataSet: TDataSet);
    procedure TmpAjIvCalcFields(DataSet: TDataSet);
    procedure TmpAjIvADJDATEValidate(Sender: TField);
    procedure TmpAjIvADJLOCValidate(Sender: TField);
    procedure TmpAjIvAfterPost(DataSet: TDataSet);
    procedure Tmpajtr1NewRecord(DataSet: TDataSet);
    procedure TmpAjIvBeforePost(DataSet: TDataSet);
    procedure Rcinv1NewRecord(DataSet: TDataSet);
    procedure QArpaytrn1BILLDTValidate(Sender: TField);
    procedure QArpaytrn1CalcFields(DataSet: TDataSet);
    procedure QArpaytrn1NewRecord(DataSet: TDataSet);
    procedure QArpaytrn1CSHAMTValidate(Sender: TField);
    procedure QArpaytrn1CHQAMTValidate(Sender: TField);
    procedure QArpaytrn1AfterPost(DataSet: TDataSet);
    procedure QArpaytrn1BeforePost(DataSet: TDataSet);
    procedure PkinvBeforeDelete(DataSet: TDataSet);
    procedure IcTranBeforeDelete(DataSet: TDataSet);
    procedure QIctrnBeforeDelete(DataSet: TDataSet);
    procedure PkinvOFFICCODValidate(Sender: TField);
    procedure PkinvCUSCODValidate(Sender: TField);
    procedure RcinvAPCODEValidate(Sender: TField);
    procedure RcinvPONOValidate(Sender: TField);
    procedure QainvCUSCODValidate(Sender: TField);
    procedure TmpajtrAfterOpen(DataSet: TDataSet);
    procedure AdjTranNewRecord(DataSet: TDataSet);
    procedure PkTranBeforeClose(DataSet: TDataSet);
    procedure PkinvBeforeClose(DataSet: TDataSet);
    procedure RcinvBeforeClose(DataSet: TDataSet);
    procedure RctranBeforeClose(DataSet: TDataSet);
    procedure AdjinvBeforeClose(DataSet: TDataSet);
    procedure AdjTranBeforeClose(DataSet: TDataSet);
    procedure RttranBeforeClose(DataSet: TDataSet);
    procedure RtinvBeforeClose(DataSet: TDataSet);
    procedure MvtranBeforeClose(DataSet: TDataSet);
    procedure MvInvBeforeClose(DataSet: TDataSet);
    procedure RcinvCREDTMValidate(Sender: TField);
    procedure IcinvAfterCancel(DataSet: TDataSet);
    procedure QArpaytrn1AfterCancel(DataSet: TDataSet);
    procedure IcinvCREDTMValidate(Sender: TField);
    procedure Rcinv1BeforeClose(DataSet: TDataSet);
    procedure RctranBeforePost(DataSet: TDataSet);
    procedure QaTranBeforeClose(DataSet: TDataSet);
    procedure RcinvINVNOValidate(Sender: TField);
    procedure IcinvBeforeClose(DataSet: TDataSet);
    procedure PkinvRTNPKValidate(Sender: TField);
    procedure RtinvAfterEdit(DataSet: TDataSet);
    procedure IcTranBeforeClose(DataSet: TDataSet);
    procedure PkTranCalcFields(DataSet: TDataSet);
    procedure PkinvBeforeCancel(DataSet: TDataSet);
    procedure RctranCalcFields(DataSet: TDataSet);
    procedure RcinvBeforeCancel(DataSet: TDataSet);
    procedure IcTranCalcFields(DataSet: TDataSet);
    procedure IcinvBeforeCancel(DataSet: TDataSet);
    procedure RttranCalcFields(DataSet: TDataSet);
    procedure RtinvBeforeCancel(DataSet: TDataSet);
    procedure AdjTranCalcFields(DataSet: TDataSet);
    procedure AdjinvBeforeCancel(DataSet: TDataSet);
    procedure MvtranCalcFields(DataSet: TDataSet);
    procedure Rctrn1BeforeClose(DataSet: TDataSet);
    procedure Rctrn1CalcFields(DataSet: TDataSet);
    procedure Rctrn1NewRecord(DataSet: TDataSet);
    procedure IcinvDISCTValidate(Sender: TField);
    procedure TmpAjIvBeforeDelete(DataSet: TDataSet);
    procedure FmDmic01Create(Sender: TObject);
    procedure PkinvSALTYPEValidate(Sender: TField);
    procedure PkinvEXDISAMTValidate(Sender: TField);
    procedure IcinvEXDISAMTValidate(Sender: TField);
    procedure RcinvEXDISAMTValidate(Sender: TField);
    procedure QIcothinvCalcFields(DataSet: TDataSet);
    procedure QIcothinvNewRecord(DataSet: TDataSet);
    procedure QIcothinvOTHDATEValidate(Sender: TField);
    procedure QIcothinvLOCATValidate(Sender: TField);
    procedure QIcothinvOFFICCODValidate(Sender: TField);
    procedure QIcothinvCUSCODValidate(Sender: TField);
    procedure QIcothinvAfterPost(DataSet: TDataSet);
    procedure QIcothtrnNewRecord(DataSet: TDataSet);
    procedure QIcothinvBeforePost(DataSet: TDataSet);
    procedure QIcothtrnAfterPost(DataSet: TDataSet);
    procedure QIcothinvAfterCancel(DataSet: TDataSet);
    procedure QIcothinvTERMValidate(Sender: TField);
    procedure TmpajtrBeforeClose(DataSet: TDataSet);
    procedure QainvAfterCancel(DataSet: TDataSet);
    procedure RtinvOFFICCODValidate(Sender: TField);
    procedure QArchqNewRecord(DataSet: TDataSet);
    procedure QArpaytrn1VAT3Validate(Sender: TField);
    procedure RcinvVATAMTValidate(Sender: TField);
    procedure PkTranCUSCODValidate(Sender: TField);
    procedure PkinvDISCTValidate(Sender: TField);
    procedure QainvDISCTValidate(Sender: TField);
    procedure IcinvDEPOSTNOValidate(Sender: TField);
    procedure RctranAfterDelete(DataSet: TDataSet);
    procedure SoRctranStateChange(Sender: TObject);
    procedure RtinvINVNOValidate(Sender: TField);
    procedure RcinvBeforeEdit(DataSet: TDataSet);
    procedure MvInvMOVTOValidate(Sender: TField);
    procedure RctranPARTNOValidate(Sender: TField);
    procedure RctranUCOSTValidate(Sender: TField);
    procedure RctranQTYORDValidate(Sender: TField);
    procedure RctranQTYRECVValidate(Sender: TField);
    procedure RctranREDU1Validate(Sender: TField);
    procedure RctranREDU2Validate(Sender: TField);
    procedure RctranREDU3Validate(Sender: TField);
    procedure RctranPONOValidate(Sender: TField);
    procedure RctranDISCAMTValidate(Sender: TField);
    procedure RttranPARTNOValidate(Sender: TField);
    procedure RttranUPRICEValidate(Sender: TField);
    procedure RttranQTYRTNValidate(Sender: TField);
    procedure MvtranPARTNOValidate(Sender: TField);
    procedure MvtranUPRICEValidate(Sender: TField);
    procedure MvtranQTYMOVValidate(Sender: TField);
    procedure AdjTranUCOSTValidate(Sender: TField);
    procedure AdjTranQTYOUTValidate(Sender: TField);
    procedure RcinvINVDATEChange(Sender: TField);
    procedure PkTranQTYORDValidate(Sender: TField);
    procedure QArpaytrn1CREDITAMTValidate(Sender: TField);
    procedure QArpaytrn1BANKAMTValidate(Sender: TField);
    procedure QArpaytrn1PAYTYPValidate(Sender: TField);
    procedure QArpaytrn1DISAMTValidate(Sender: TField);
    procedure QArpaytrn1VAT3AMTValidate(Sender: TField);
    procedure QArpaytrn1ADDAMTValidate(Sender: TField);
    procedure IcinvBeforeEdit(DataSet: TDataSet);
    procedure QArpaytrn1BeforeEdit(DataSet: TDataSet);
    procedure PkTranPARTNOChange(Sender: TField);
    procedure IcTranPARTNOChange(Sender: TField);
    procedure RttranPARTNOChange(Sender: TField);
    procedure QaTranPARTNOChange(Sender: TField);
    procedure QaTranPARTNOValidate(Sender: TField);
    procedure QaTranQTYORDValidate(Sender: TField);
    procedure QaTranUPRICEValidate(Sender: TField);
    procedure QaTranREDU1Validate(Sender: TField);
    procedure QaTranREDU2Validate(Sender: TField);
    procedure QaTranREDU3Validate(Sender: TField);
    procedure QaTranBeforePost(DataSet: TDataSet);
    procedure RctranPARTNOChange(Sender: TField);
    procedure MvtranPARTNOChange(Sender: TField);
    procedure Rctrn1PARTNOChange(Sender: TField);
    procedure AdjTranPARTNOChange(Sender: TField);
    procedure AdjTranPARTNOValidate(Sender: TField);
    procedure QaTranBeforeInsert(DataSet: TDataSet);
    procedure PkinvCUSCODChange(Sender: TField);
    procedure RcinvPAYTYPChange(Sender: TField);
    procedure Rcinv2AfterCancel(DataSet: TDataSet);
    procedure Rcinv2AfterDelete(DataSet: TDataSet);
    procedure Rcinv2AfterPost(DataSet: TDataSet);
    procedure Rcinv2BeforeClose(DataSet: TDataSet);
    procedure Rcinv2BeforeDelete(DataSet: TDataSet);
    procedure Rcinv2BeforeEdit(DataSet: TDataSet);
    procedure Rcinv2BeforePost(DataSet: TDataSet);
    procedure Rcinv2CalcFields(DataSet: TDataSet);
    procedure Rcinv2NewRecord(DataSet: TDataSet);
    procedure Rcinv2RECVDTValidate(Sender: TField);
    procedure Rcinv2RECVLOCValidate(Sender: TField);
    procedure Rcinv2INVNOValidate(Sender: TField);
    procedure Rcinv2INVDATEChange(Sender: TField);
    procedure Rcinv2CREDTMValidate(Sender: TField);
    procedure Rcinv2APCODEValidate(Sender: TField);
    procedure Rcinv2VATAMTValidate(Sender: TField);
    procedure Rcinv2FLAGValidate(Sender: TField);
    procedure Rcinv2EXDISAMTValidate(Sender: TField);
    procedure Rctran2AfterDelete(DataSet: TDataSet);
    procedure Rctran2AfterOpen(DataSet: TDataSet);
    procedure Rctran2AfterPost(DataSet: TDataSet);
    procedure Rctran2BeforeClose(DataSet: TDataSet);
    procedure Rctran2BeforeDelete(DataSet: TDataSet);
    procedure Rctran2BeforePost(DataSet: TDataSet);
    procedure Rctran2CalcFields(DataSet: TDataSet);
    procedure Rctran2NewRecord(DataSet: TDataSet);
    procedure Rctran2PARTNOValidate(Sender: TField);
    procedure Rctran2PARTNOChange(Sender: TField);
    procedure Rctran2QTYORDValidate(Sender: TField);
    procedure Rctran2QTYRECVValidate(Sender: TField);
    procedure Rctran2REDU1Validate(Sender: TField);
    procedure Rctran2REDU2Validate(Sender: TField);
    procedure Rctran2REDU3Validate(Sender: TField);
    procedure Rctran2DISCAMTValidate(Sender: TField);
    procedure Rctran2UCOSTValidate(Sender: TField);
    procedure Rctran2NETCOSTValidate(Sender: TField);
    procedure TmpajtrQTYBODValidate(Sender: TField);
    procedure QArpaytrn1RECV_MONEYValidate(Sender: TField);
    procedure RtinvCREDNOValidate(Sender: TField);
    procedure Rcinv2REFNOValidate(Sender: TField);
    procedure Rcinv2LCNOValidate(Sender: TField);
    procedure Rcinv2REFNO3Validate(Sender: TField);
    procedure Rcinv2REFNO4Validate(Sender: TField);
    procedure RcinvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure TmpAjIvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure Rcinv2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
    //procedure CheckEditRight(XSource:TDataSource);

  public
    { Public declarations }
    DescTax, XRtFlg, Flag_a, XSchema, DoupPart, XISO, Allo, Cost, LVPrice, NALLOW, nCkb2, VHF, VLF: string;
    SmUcost1, SmUcost2, SmUcost3, Ucost1, Ucost2, Ucost3, Net, XQtyOut: Double;
    Runfre, Duplicate: Boolean;
    CountFound, Val, cc, ckImp: Integer;
    TmpAvgcost: Double;
    procedure CloseAll;
    // Run เลขหมวดเดียว
    function RunNo01(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function MaxNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    // Run เลข 2 หมวด
    function RunNo02(var LV, HF, LF, HT, LT, RNCONT, RNTXNO: string; DV: TdateTime): string;
    function ZeroLead(St: string; len: integer): string;
    procedure UpdStock(Xqty, Newcost: Double; XPART, XLOCAT, XType, Stat: string; XDATE: Tdatetime);
    procedure UpdDemn(XOrd, XQty: Double; XPART, XLOCAT, Stat: string; XDATE: Tdatetime);
    procedure Avgcost(XQty, Newcost: Double; XPART, XLOCAT: string; XDATE: Tdatetime);
  end;

var
  FmDmic01: TFmDmic01;
  RnCont, RnTxno, Tmppart, CheckCrdt, SHWBILL: string;
  XYear, XMonth, XDay: Word;
  XDate: TdateTime;
  FActive: Boolean;
  Qty, Ord, Cst: array[1..12] of Double;

const
  {Declare constants we're interested in}
  eRecLock = 10241;
  eDataChang = 10259;
  eKeyChang = 8708;
  eKeyViol = 9729;

implementation

uses
  USoftFirm, Functn01, ShowDlg, stin00, Dmsec, STIn05, STIn06, Dlginvms, Stin01;

{$R *.DFM}

function TFmDmic01.RunNo01(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
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
  if HField <> 'H_OTHC' then
  begin
      {If (YY<>'1899') AND (YY<>CondPay.Fieldbyname('Curyear').Asstring) Then
      SFmain.RaiseException('บันทึกปีทำงานผิด ปีทำงานปัจจุบัน คือ'+CondPay.Fieldbyname('Curyear').Asstring);}
  end;
    {}
  SFMain.Xlocat := Lc;
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT SHORTL FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFmain.RaiseException('ไม่พบรหัสสาขา ' + Lc + ' ตรวจสอบ รหัสผ่าน ช่องประจำสาขา ')
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

function TFmDmic01.MAXNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
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
      {If (YY<>'1899') AND (YY<>CondPay.Fieldbyname('Curyear').Asstring) Then
      SFmain.RaiseException('บันทึกปีทำงานผิด ปีทำงานปัจจุบัน คือ'+CondPay.Fieldbyname('Curyear').Asstring);}
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

function TFmDmic01.RunNo02(var LV, HF, LF, HT, LT, RNCONT, RNTXNO: string; DV: TdateTime): string;
var
  PF, HH, KV, Lc, YY, Mm, S2, S3, Y1: string;
  LN, V1, V2: Double;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  RNCONT := '';
  RNTXNO := '';
  if not CondPay.Active then
    CondPay.Open;
  HH := Condpay.Fieldbyname(HF).Asstring;
  HT := Condpay.Fieldbyname(HT).Asstring;
  Lc := LV;
  YY := Copy(DateTostr(DV), 7, 4);
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(DV), 4, 2);
  if (YY <> '1899') and (YY <> CondPay.Fieldbyname('Curyear').Asstring) then
    SFmain.RaiseException('บันทึกปีทำงานผิด ปีทำงานปัจจุบัน คือ' + CondPay.Fieldbyname('Curyear').Asstring);

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
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LF + ',' + LT + ' FROM SLASTNO ' +
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
    LN := QLastNo.FieldByname(LF).AsFloat;
    V1 := LN + 1;
    S2 := FloatTostr(V1);
    S3 := SFMain.ZeroLead(S2, 4);
    RNCONT := PF + HH + '-' + Y1 + Mm + S3;
      //
    LN := QLastNo.FieldByname(LT).AsFloat;
    V2 := LN + 1;
    S2 := FloatTostr(V2);
    S3 := SFMain.ZeroLead(S2, 4);
    RNTXNO := PF + HT + '-' + Y1 + Mm + S3;
    QLastNo.Edit;
      //
      {Update Lastno Contno}
    if V1 > QLastNo.Fieldbyname(LF).AsFloat then
    begin
      QLastNo.Fieldbyname(LF).AsFloat := V1;
    end;
      {Update Lastno Taxno}
    if V2 > QLastNo.Fieldbyname(LT).AsFloat then
    begin
      QLastNo.Fieldbyname(LT).AsFloat := V2;
    end;
    QLastNo.Post;
  end;
end;

function TFmDmic01.ZeroLead(St: string; len: integer): string;
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

procedure TFmDmic01.RctranNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(Rctran);

  //FmSTIn00.Label15.Caption := 'new';

  if not CondPay.Active then
    CondPay.Open;

  XDate := RcinvRecvDt.AsdateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);

  RctranRecvno.ASstring := RcinvRecvno.ASstring;
  RctranApcode.ASstring := RcinvApCode.ASstring;
  //RctranPono.ASstring      := RcinvPono.ASstring;
  RctranRecvLoc.ASstring := RcinvRecvLoc.ASstring;
  RctranRecvDATE.AsdateTime := RcinvRECVDT.AsdateTime;
  //RctranREDU1.ASFloat      := RcinvDisct.ASFloat;
  RctranUSERID.AsString := SFMain.XUser_ID;
  Rctrantime1.AsDateTime := now;
  RctranFLAG.Asstring := RcinvFLAG.Asstring;
  RctranYear1.AsString := FloatTostr(Xyear);
end;

procedure TFmDmic01.RcinvNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;

  ClearAsFloat(Rcinv);
  if not CondPay.Active then
    CondPay.Open;

  if Condpay.Fieldbyname('Vattype').asstring <> '' then
    Rcinv.FieldByName('VATTYPE').Asstring := Condpay.Fieldbyname('Vattype').asstring
  else
    Rcinv.FieldByName('VATTYPE').Asstring := '2';
  if Condpay.Fieldbyname('Disbath').Asstring <> '' then
    RcinvDISBATH.asstring := Condpay.Fieldbyname('Disbath').Asstring
  else
    RcinvDISBATH.asstring := 'N';

  RcinvVATRT.AsFloat := Condpay.Fieldbyname('VatRt').Asfloat;
  RcinvRECVLOC.AsString := SFMain.XLocat;
  RcinvUSERID.AsString := SFMain.XUser_ID;
  Rcinvtime1.AsDateTime := now;
  RcinvRecvdt.AsDateTime := now;
  RcinvINVDUE.AsDateTime := now;
  RcinvINVDATE.AsDateTime := now;
  RCinvOfficcod.AsString := SFMain.XOffCod;
  RcinvFLAG.Asstring := '5';
  RcinvUPD.AsString := 'Y';
  RcinvPAYTYP.AsString := 'A';
end;

procedure TFmDmic01.RcinvRECVDTValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  FormatSettings.ShortDateFormat := 'YYYY/MM/DD';
  if datetostr(Rcinv.Fieldbyname('RECVDT').asDatetime) < datetostr(Now) then
  begin
    FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
    SFmain.RaiseException('ห้ามรับสินค้า ย้อนวันปัจจุบัน จะกระทบต้นทุนเฉลี่ย');
  end;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';

  HF := 'H_STIN';
  LF := 'L_STIN';

  if not (QDBConfig.Active) then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := Rcinv.Fieldbyname('RECVLOC').asstring;
    DV := Rcinv.Fieldbyname('RECVDT').asDatetime;
    if RcinvUpdateStatus.Value = 'Inserted' then
    begin
      sqltxt := 'SELECT MAX(RECVNO) AS MAXNO FROM RC_INVOI WHERE RECVLOC=:EDIT1 AND ' +
        'SUBSTR(RECVNO,2,2)=:EDIT2 AND SUBSTR(RECVNO,5,2)=:EDIT3 AND SUBSTR(RECVNO,7,2)=:EDIT4 ';
      if Duplicate then
        RcinvRECVNO.Asstring := Maxno(HF, LF, LV, sqltxt, DV)
      else
        RcinvRECVNO.Asstring := RunNo01(HF, LF, LV, DV);
    end;
  end;
  //
  DecodeDate(DV, XYear, XMonth, XDay);
end;

procedure TFmDmic01.RcinvAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := RcinvRECVNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Rcinv.Active then
      if (Rcinv.ApplyUpdates = 0) then
        Rcinv.CommitUpdates
      else
        raise Exception.Create(Rcinv.RowError.Message);
    if Rctran.Active then
      if (Rctran.ApplyUpdates = 0) then
        Rctran.CommitUpdates
      else
        raise Exception.Create(Rctran.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    Rcinv.Edit;
    raise;
  end;
  //
  with FmDmic01.Rcinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO =:XRECVNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
  with FmDmic01.Rctran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO =:XRECVNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TFmDmic01.RcinvBeforePost(DataSet: TDataSet);
begin
  if RcinvOFFICCOD.Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกรหัสพนักงาน');
  Rctran.First;
  if RcinvUpdateStatus.Value = 'Inserted' then
  begin
    if Duplicate then   //Key ซ้ำ
      RcinvRECVDTValidate(RcinvRECVDT);
    Rctran.DisableControls;
    Rctran.AfterPost := Nil;
    Rctran.First;
    while not Rctran.Eof do
    begin
      Rctran.Edit;
      RctranRECVNO.Asstring := RcinvRECVNO.Asstring;
      RctranRECVLOC.Asstring := RcinvRECVLOC.Asstring;
      RctranRECVDATE.Asdatetime := RcinvRECVDT.Asdatetime;
      RctranAPCODE.Asstring := RcinvAPCODE.Asstring;
        //
      Rctran.Next;
    end;
    Rctran.AfterPost := RctranAfterPost;
    Rctran.EnableControls;
  end
  else
  begin
    if RcinvUPD.Asstring <> 'U' then
      RcinvUPD.Asstring := 'U'
    else
      RcinvUPD.Asstring := 'A'
  end;
end;

procedure TFmDmic01.RcinvBeforeDelete(DataSet: TDataSet);
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * from PREPAYTRN where INVNO=:0 and PRECANFL <> ''C'' ');
    params[0].AsString := RcinvINVNO.Asstring;
    open;
    if RcinvINVNO.Asstring <> '' then
    begin
      if not (Eof and Bof) then
        sfmain.RaiseException('วางบิลเตรียมจ่ายแล้ว..ลบไม่ได้!');
    end;
  end;

  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * from APPAYTRNGL where INVNO=:0 and APCANFL <> ''C'' ');
    params[0].AsString := RcinvINVNO.Asstring;
    open;
    if RcinvINVNO.Asstring <> '' then
    begin
      if not (Eof and Bof) then
        sfmain.RaiseException('จ่ายเจ้าหนี้แล้ว..ลบไม่ได้!');
    end;
  end;

  Rctran.AfterDelete := Nil;
  Rctran.first;
  while not (Rctran.Bof and Rctran.Eof) do
    Rctran.delete;
end;

procedure TFmDmic01.PkinvPKDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if PkinvFLAG.Asstring = '3' then
  begin
    HF := 'H_PKSV';
    LF := 'L_PKSV';
  end
  else if PkinvFLAG.Asstring = 'S' then
  begin
    HF := 'H_RTSV';
    LF := 'L_RTSV';

    FormatSettings.ShortDateFormat := 'yyyy/mm/dd';
    if datetostr(PKinv.Fieldbyname('Pkdate').asDatetime) < datetostr(Now) then
    begin
      FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
      SFmain.RaiseException('ห้ามรับคืนสินค้า ย้อนวันปัจจุบัน จะกระทบต้นทุนเฉลี่ย');
    end;
    FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  end
  else if PkinvFLAG.Asstring = 'R' then
  begin
    HF := 'H_RTPT';
    LF := 'L_RTPT';

    FormatSettings.ShortDateFormat := 'yyyy/mm/dd';
    if datetostr(PKinv.Fieldbyname('Pkdate').asDatetime) < datetostr(Now) then
    begin
      FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
      SFmain.RaiseException('ห้ามรับคืนสินค้า ย้อนวันปัจจุบัน จะกระทบต้นทุนเฉลี่ย');
    end;
    FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  end
  else
  begin
    HF := 'H_PK';
    LF := 'L_PK';
  end;

  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := PKinv.Fieldbyname('PkLocat').asstring;
    DV := PKinv.Fieldbyname('Pkdate').asDatetime;
    if PkinvUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(PKNO) AS MAXNO FROM PK_INVOI WHERE PKLOCAT=:EDIT1 AND ' +
        'SUBSTR(PKNO,2,2)=:EDIT2 AND SUBSTR(PKNO,5,2)=:EDIT3 AND SUBSTR(PKNO,7,2)=:EDIT4 ';
      if Duplicate then
        PkinvPKNO.Asstring := Maxno(HF, LF, LV, SQLTXT, DV)
      else
        PkinvPKNO.Asstring := RunNo01(HF, LF, LV, DV);
    end;
  end;
end;

procedure TFmDmic01.PkTranNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(Pktran);

  XDate := PkinvPKDATE.AsDatetime;
  DecodeDate(XDate, XYear, XMonth, XDay);

  PkTranPkno.Asstring := PkinvPkno.Asstring;
  PkTranPklocat.asstring := PkinvPklocat.Asstring;
  PkTranPkdate.AsDatetime := PkinvPkdate.AsDatetime;
//  PkTranFree.Asstring    := 'Y';
  PkTranFlag.AsString := PkinvFlag.AsString;
  PkTranUserId.AsString := PkinvUserId.Asstring;
  PkTranTime1.AsDateTime := Now;
  PkTranQTYORD.AsFloat := 0;
  PktranYear1.Asstring := FloatTostr(Xyear);
  PkTranJOBNO.Asstring := PkinvJOBNO.Asstring;
  PKtranSvColor.AsString := PkinvSVCOLOR.AsString;
  PKtranCuscod.AsString := Pkinvcuscod.AsString;

  if PkinvFLAG.Asstring = 'R' then
  begin
    PKtran.FieldByName('REFNO').Asstring := PkinvREFNO.Asstring;
    PKtran.FieldByName('RTNPK').Asstring := PkinvRTNPK.Asstring;
    PKtran.FieldByName('REFDAT').Asdatetime := PkinvREFDAT.AsDateTime;
  end;
end;

procedure TFmDmic01.PkinvAfterPost(DataSet: TDataSet);
var
  S, Flg: string;
begin
  S := PkinvPKNO.Asstring;
  Flg := PkinvFlag.Asstring;
  if not DM_SEC.HI_DBMS.InTransaction then
    DM_SEC.HI_DBMS.StartTransaction;
  try
    if Pkinv.Active then
      if (Pkinv.ApplyUpdates = 0) then
        Pkinv.CommitUpdates
      else
        raise Exception.Create(Pkinv.RowError.Message);
    if Pktran.Active then
      if (Pktran.ApplyUpdates = 0) then
        Pktran.CommitUpdates
      else
        raise Exception.Create(Pktran.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    Pkinv.Edit;
    raise;
  end;
  //
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := S;
    if not FmDmic01.Pkinv.Prepared then
      FmDmic01.Pkinv.Prepare;
    OPEN;
  end;
  with FmDmic01.PKtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := S;
    if not FmDmic01.PKtran.Prepared then
      FmDmic01.PKtran.Prepare;
    OPEN;
  end;
end;

procedure TFmDmic01.PkinvNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(Pkinv);
  if not (CondPay.Active) then
    CondPay.Open;

  PkinvVatrt.AsFloat := Condpay.Fieldbyname('VatRt').Asfloat;
  PkinvFlag.asstring := Flag_A; // 3 จ่ายเข้าศูนย์
  PkinvPKLOCAT.AsString := SFMain.XLocat;
  PkinvPKDATE.AsDateTime := Date;
  PkinvUSERID.AsString := SFMain.XUser_ID;
  Pkinvtime1.AsDateTime := now;
  PkinvStat.AsString := 'A';
  PkinvSaltype.AsString := '';
  PkinvSVCOLOR.AsString := 'P';
  PkinvOfficcod.AsString := SFMain.XOffCod;
  PkinvCUSCOD.AsString := FmDmic01.Condpay.fieldbyname('TAXNAME').AsString;

  if Condpay.Fieldbyname('Vattype').Asstring <> '' then
    PkinvVATTYPE.Asstring := Condpay.Fieldbyname('Vattype').Asstring
  else
    PkinvVATTYPE.Asstring := '2';

  if Condpay.Fieldbyname('Disbath').Asstring <> '' then
    PkinvDISBATH.asstring := Condpay.Fieldbyname('Disbath').Asstring
  else
    PkinvDISBATH.asstring := 'N';

  if Condpay.Fieldbyname('Disctyp').Asstring <> '' then
    PkinvDisctyp.Asstring := Condpay.Fieldbyname('Disctyp').Asstring
  else
    PkinvDisctyp.Asstring := '1';

  PkinvPOSTGL.AsString := 'N';
end;

procedure TFmDmic01.PkinvBeforePost(DataSet: TDataSet);
var
  Xpart, XVat, Xcost, Xqty: Double;
  Xflag: string;
begin
  if Checkcrdt = 'Y' then
  begin
    with Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT MAXCRED FROM CUSTMAST WHERE CUSCOD=:0');
      Params[0].Asstring := PkinvCUSCOD.Asstring;
      Open;
      if Bof and Eof then
        SFmain.RaiseException('รหัสลูกค้าผิดพลาด');
    end;

    if PkinvJOBNO.Asstring <> '' then
    begin
      with Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT Sum(NETTOTAL) As Sum1 FROM PK_INVOI WHERE JOBNO=:0');
        Params[0].Asstring := PkinvJOBNO.Asstring;
        Open;
      end;
      {If Query1.FieldByName('Sum1').Asfloat>Query2.FieldByName('MAXCRED').Asfloat Then
      Begin
        MessageBeep(0);
        If MessageDlg('เตือน : จำนวนเงินเกินวงเงินให้เครดิต ต้องการทำต่อ ?',Mtconfirmation,[Mbok,mbcancel],0)=Mrcancel Then Abort;
      end;}
    end
    else
    {If PkinvNETTOTAL.Asfloat>Query2.FieldByName('MAXCRED').Asfloat Then
    Begin
      MessageBeep(0);
      If MessageDlg('เตือน : จำนวนเงินเกินวงเงินให้เครดิต ต้องการทำต่อ ?',Mtconfirmation,[Mbok,mbcancel],0)=Mrcancel Then Abort;
    end;}
  end;

  PkTran.Last;
  if (PkTranPARTNO.Asstring = '') or ((PkTranQtyout.Asfloat = 0) and (Uppercase(PkTranBackflg.Asstring) <> 'Y')) then
    PkTran.Delete;

  if PkinvUpdateStatus.Value = 'Inserted' then
  begin
    //Rerun
    if Duplicate then
    begin
      PkinvPKDATEValidate(PkinvPKDATE);
      //
      PkTran.DisableControls;
      PkTran.AfterPost := Nil;
      PkTran.First;
      while not Pktran.Eof do
      begin
        if (PkinvUSERID.AsString = PkTranUSERID.AsString) then
        begin
          Pktran.Edit;
          if PkTranPARTNO.Asstring = '' then
            PkTran.Delete;

          PktranPKno.Asstring := PkinvPKNO.Asstring;
          PkTranPKDATE.AsDateTime := PkinvPKDATE.AsDateTime;
          PkTranCUSCOD.Asstring := PkinvCUSCOD.AsString;
          PkinvPKLOCAT.Asstring := PkinvPKLOCAT.AsString;
        end;
        PkTran.Next;
      end;
      PkTran.AfterPost := PkTranAfterPost;
      PkTran.EnableControls;
      Xflag := PkinvFlag.Asstring;
    end;
  end;
end;

procedure TFmDmic01.IcinvNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(Icinv);
  if not CondPay.Active then
    CondPay.Open;

  IcinvVATRT.AsFloat := Condpay.Fieldbyname('VatRt').Asfloat;
  IcinvINVLOC.AsString := SFMain.XLocat;
  IcinvUSERID.AsString := SFMain.XUser_ID;
  //IcinvINVDATE.AsDateTime := sfmain.XCurDtFrmDB;
  Icinvtime1.AsDateTime := now;
  IcinvInvdue.AsDateTime := now;
  ICinvOfficcod.AsString := SFMain.XOffCod;
  IcinvFLAG.Asstring := '2';
end;

procedure TFmDmic01.IcTranNewRecord(DataSet: TDataSet);
begin
  if IcTran.State = Dsinsert then
  begin
    IcTranInvNo.Asstring := IcInvInvNo.Asstring;
    IcTranInvLoc.Asstring := IcInvInvLoc.Asstring;
    IcTranCuscod.Asstring := IcInvCuscod.Asstring;
    IcTranInvDate.AsdateTime := IcInvInvDate.AsdateTime;
    IctranREDU1.ASFloat := IcinvDisct.ASFloat;
    IcTranUSERID.AsString := SFMain.XUser_ID;
    IcTrantime1.AsDateTime := now;
    IcTranFlag.Asstring := IcInvFlag.Asstring;
    ClearAsFloat(Ictran);
  end;
end;

procedure TFmDmic01.IcinvINVDATEValidate(Sender: TField);
var
  HF, LF, HT, LT, LV, SQLTXT: string;
  DV: TDatetime;
begin
  LV := Icinv.FieldByName('InvLOC').Value;
  DV := Icinv.FieldByName('InvDate').Value;
  if IcinvFLAG.ASstring = '1' then
  begin
    HF := 'H_CSH';
    LF := 'L_CSH';
  end;
  if IcinvFLAG.ASstring = '2' then
  begin
    HF := 'H_CRD';
    LF := 'L_CRD';
  end;
  if RunFre then
  begin
    HF := 'H_FRE';
    LF := 'L_FRE';
  end;

  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    if IcinvUpdatestatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(INVNO) AS MAXNO FROM IC_INVOI WHERE INVLOC=:EDIT1 AND ' +
        'SUBSTR(INVNO,2,2)=:EDIT2 AND SUBSTR(INVNO,5,2)=:EDIT3 AND SUBSTR(INVNO,7,2)=:EDIT4 ';
      if Duplicate then
        IcinvInvNO.Asstring := MAXNO(HF, LF, LV, SQLTXT, DV)
      else
        IcinvInvNO.Asstring := RunNo01(HF, LF, LV, DV);
      IcinvTAXNO.Asstring := IcinvInvNO.Asstring;
      IcinvTAXDate.AsdateTime := IcinvInvDate.AsdateTime;
    end;
  end;
end;

procedure TFmDmic01.IcinvBeforePost(DataSet: TDataSet);
begin
  IcTran.First;

  if IcinvUpdatestatus.Value = 'Inserted' then
  begin
    // Rerun
    if Duplicate then   //Key ซ้ำ
    begin
      IcinvINVDATEValidate(IcinvINVDATE);
      //
      Ictran.DisableControls;
      IcTran.AfterPost := Nil;
      IcTran.First;
      while not Ictran.Eof do
      begin
        Ictran.Edit;
        IctranInvno.Asstring := IcinvInvNO.Asstring;
        Ictran.Next;
      end;
      IcTran.AfterPost := IcTranAfterPost;
      Ictran.EnableControls;
    end;
    //
    if IcInvPkNo.AsString <> '' then
    begin
      QPkinv.Edit;
      QPkinv.FieldByName('REFNO').AsString := IcInvINVNO.AsString;
      QPkinv.FieldByName('REFDAT').AsdateTime := IcInvInvDate.AsdateTime;
      QPkinv.FieldByName('STAT').AsString := '';
      QPkinv.POST;
    end;
    //
    if IcinvTaxno.AsString <> '' then
    begin
      with TAXSAL do
      begin
        Close;
        sql.clear;
        Sql.add('SELECT * FROM TAXSAL WHERE TAXNO =:XTAXNO ');
        Params[0].asstring := '';
        Open;
      end;
      TAXSAL.Insert;
      TAXSALTaxno.AsString := IcinvTaxno.AsString;
      TAXSALLocat.AsString := IcinvINVLOC.AsString;
      TAXSALTaxDate.AsDateTime := IcinvTaxDate.AsDateTime;
      TAXSALTaxRefno.AsString := IcinvInvNO.AsString;
      TAXSALDESC1.AsString := DescTax;
      TAXSALCuscod.AsString := IcinvCusCod.AsString;
      TAXSALFlag.AsString := IcinvFlag.AsString;
      TAXSALVatrt.AsFloat := IcinvVatrt.AsFloat;
      TAXSALAmount.AsFloat := IcinvTOTPRC.AsFloat;
      TAXSALRedu.AsFloat := IcinvDISCAMT.AsFloat;
      TAXSALBalance.AsFloat := IcinvNETAMT.AsFloat;
      TAXSALVat.AsFloat := IcinvVATAMT.AsFloat;
      TAXSALTottax.AsFloat := IcinvNETPRC.AsFloat;
      TaxSalFlag.AsString := '1';
      if IcinvNETPRC.AsFloat > 0 then
        TaxsalFRSV.AsString := 'F'
      else
        TaxsalFRSV.AsString := 'N';
      TaxSalUserId.AsString := SFMain.XUser_ID;
      ;
      TaxSalTime1.AsDateTime := Now;
      if IcinvFLAG.Asstring = '1' then
        TaxsalPAYTYP.Asstring := 'S'
      else
        TaxsalPAYTYP.Asstring := 'C';
      TAXSAL.Post;
    end;
  end;
end;

procedure TFmDmic01.IcinvAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := IcinvINVNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Icinv.Active then
      if (Icinv.ApplyUpdates = 0) then
        Icinv.CommitUpdates
      else
        raise Exception.Create(Icinv.RowError.Message);
    if Ictran.Active then
      if (Ictran.ApplyUpdates = 0) then
        Ictran.CommitUpdates
      else
        raise Exception.Create(Ictran.RowError.Message);
    if TaxSal.Active then
      if (TaxSal.ApplyUpdates = 0) then
        TaxSal.CommitUpdates
      else
        raise Exception.Create(TaxSal.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    if QPkinv.Active then
      if (QPkinv.ApplyUpdates = 0) then
        QPkinv.CommitUpdates
      else
        raise Exception.Create(QPkinv.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    //IcinvBeforeCancel(Icinv);
    ICinv.Edit;
    raise;
  end;
  //
  with FmDmic01.Icinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
  //
  with FmDmic01.Ictran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:XINVNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TFmDmic01.RttranONewRecord(DataSet: TDataSet);
begin
  RttranRTNLOC.AsString := RtinvRTNLOC.AsString;
  RttranRTNNo.AsString := RtinvRTNNo.AsString;
  RttranRTNDT.AsdateTime := RtinvRTNDT.AsdateTime;
end;

procedure TFmDmic01.RcinvRECVLOCValidate(Sender: TField);
begin
  if Rcinv.Fieldbyname('Recvdt').Asstring <> '' then
    RcinvRECVDTValidate(Sender);
end;

procedure TFmDmic01.RcinvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  {if (E is EFDDBEngineException) then
    if (E as EFDDBEngineException).Errors[0].Errorcode = eKeyViol then
    begin
      Duplicate:=True;
    end;}
  Duplicate := True;
end;

procedure TFmDmic01.PkinvPKLOCATValidate(Sender: TField);
begin
  if PkinvPKDATE.Asstring <> '' then
    PkinvPKDATEValidate(Sender);
end;

procedure TFmDmic01.IcinvINVLOCValidate(Sender: TField);
begin
  if IcinvINVDATE.Asstring <> '' then
    IcinvINVDATEValidate(Sender);
end;

procedure TFmDmic01.MvInvMOVDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_TRB';
  LF := 'L_TRB';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := Mvinv.Fieldbyname('MOVFRM').asstring;
    DV := Mvinv.Fieldbyname('MOVDT').asDatetime;
    if MvInvUpdatestatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(MOVNO) AS MAXNO FROM MV_INVOI WHERE MOVFRM=:EDIT1 AND ' +
        'SUBSTR(MOVNO,2,2)=:EDIT2 AND SUBSTR(MOVNO,5,2)=:EDIT3 AND SUBSTR(MOVNO,7,2)=:EDIT4 ';
      //If Duplicate Then
      MvInvMOVNO.Asstring := Maxno(HF, LF, LV, SQLTXT, DV);
      //Else
        //MvInvMOVNO.Asstring := RunNo01(HF,LF,LV,DV);
    end;
  end;
end;

procedure TFmDmic01.RctranBeforeDelete(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := RctranRECVDATE.AsdateTime;
  Xord := RctranQTYORD.AsFloat;
  Xqty := RctranQTYRECV.AsFloat;
  Xpart := RctranPARTNO.Asstring;
  Xlocat := RctranRECVLOC.Asstring;
  Xflag := RctranFLAG.Asstring;
end;

procedure TFmDmic01.PkTranBeforePost(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  Tmppart := FmDmic01.PktranPartno.Asstring;
  if (PkTranQTYORD.Asfloat = 0) and (PkTranQTYOUT.Asfloat = 0) then
    SFmain.RaiseException('จำนวนสั่งและรับเป็น 0');

  if PktranPartno.Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกรหัสสินค้า');

  if FmDmic01.PktranQTYORD.AsFloat < FmDmic01.PkTranQTYOUT.AsFloat then
    SFmain.RaiseException('จำนวนที่รับมากกว่าจำนวนที่สั่ง');

  XDate := PkinvPKDATE.AsdateTime;
  Xord := PktranQTYORD.AsFloat;
  Xqty := PktranQTYOUT.AsFloat;
  Xpart := PktranPartno.Asstring;
  Xlocat := PktranPkLocat.Asstring;
  Xflag := PktranFlag.Asstring;

  if PktranUpdateStatus.Value = 'Inserted' then
  begin
    if (Xflag = '1') or (Xflag = '2') or (Xflag = '3') then
    begin
       //UpdStock(XQty,Xcost,XPART,XLOCAT,'2','-',XDATE);
      Upddemn(Xord, Xqty, Xpart, Xlocat, '+', XDATE);
    end;
    if (Xflag = 'R') or (Xflag = 'S') then
    begin
       //UpdStock(XQty,Xcost,XPART,XLOCAT,'2','+',XDATE);
      Upddemn(Xord, Xqty, Xpart, Xlocat, '-', XDATE);
    end;
     //
    if (Xflag = 'S') then
    begin
      PktranRTNPK.Asstring := PkinvRTNPK.Asstring;
    end;
  end;
end;

procedure TFmDmic01.IcTranBeforePost(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := IcTranINVDATE.AsdateTime;
  Xord := IcTranQTYORD.AsFloat;
  Xqty := IcTranQTYOUT.AsFloat;
  Xpart := IcTranPARTNO.Asstring;
  Xlocat := IcTranINVLOC.Asstring;
  Xflag := IcTranFLAG.Asstring;

  if IcTranUpdateStatus.Value = 'Inserted' then
  begin
     //UpdStock(XQty,Xcost,XPART,XLOCAT,'1','-',XDATE);
  end;
end;

procedure TFmDmic01.MvtranNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(Mvtran);
  MvTranMovFrm.AsString := MvinvMovFrm.AsString;
  MvTranMovTo.AsString := MvinvMovTo.AsString;
  MvTranMovNo.AsString := MvinvMovNo.AsString;
  MvtranUSERID.AsString := SFMain.XUser_ID;
  Mvtrantime1.AsDateTime := now;
end;

procedure TFmDmic01.MvInvAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := MvInvMOVNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Mvinv.Active then
      if (Mvinv.ApplyUpdates = 0) then
        Mvinv.CommitUpdates
      else
        raise Exception.Create(Mvinv.RowError.Message);
    if Mvtran.Active then
      if (Mvtran.ApplyUpdates = 0) then
        Mvtran.CommitUpdates
      else
        raise Exception.Create(Mvtran.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
     //MvInvBeforeCancel(MvInv);
    Mvinv.edit;
    raise;
  end;
  //
  with FmDmic01.Mvinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MV_INVOI WHERE MOVNO =:XMOVNO ');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
  with FmDmic01.MvTran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MV_TRANS WHERE MOVNO =:XMOVNO ');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TFmDmic01.MvtranBeforePost(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := MvinvMovDt.AsdateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);

  XDate := MvInvMOVDT.AsdateTime;
  Xord := MvtranQTYMOV.AsFloat;
  Xqty := MvtranQTYMOV.AsFloat;
  Xpart := MvtranPARTNO.Asstring;
  Xlocat := MvtranMOVFRM.Asstring;
  Xflag := MvInvFLAG.Asstring;
  Xcost := MvtranAVGCOST.Asfloat;

  if MvtranUpdateStatus.Value = 'Inserted' then
  begin
     //UpdStock(XQty,Xcost,XPART,XLOCAT,'3','-',XDATE);
  end;
end;

procedure TFmDmic01.MvtranBeforeDelete(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := MvinvMovDt.AsdateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);

  XDate := MvInvMOVDT.AsdateTime;
  Xord := MvtranQTYMOV.AsFloat;
  Xqty := MvtranQTYMOV.AsFloat;
  Xpart := MvtranPARTNO.Asstring;
  Xlocat := MvtranMOVFRM.Asstring;
  Xflag := MvInvFLAG.Asstring;
  Xcost := MvtranAVGCOST.Asfloat;

   //UpdStock(XQty,Xcost,XPART,XLOCAT,'3','+',XDATE);
end;

procedure TFmDmic01.MvInvBeforeDelete(DataSet: TDataSet);
begin

  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
  //****Delete ****
  Mvtran.AfterDelete := Nil;
  Mvtran.first;
  while not Mvtran.Eof do
    Mvtran.delete;
end;

procedure TFmDmic01.RctranAfterPost(DataSet: TDataSet);
var
  Smnettot, Totprc2, Xvat: double;
  bk: Tbookmark;
begin
  // Showmessage('in Rctran');
  if not (FActive) then
  begin
    Rctran.DisableControls;
    Xvat := FmDmic01.RcinvVatrt.AsFloat;
    Smnettot := 0;
    Totprc2 := 0;
    bk := FmDmic01.Rctran.GetBookmark;

    Rctran.first;
    while not Rctran.Eof do
    begin
      Totprc2 := Totprc2 + FRound((RctranUcost.AsFloat * RctranQTYRECV.AsFloat), 2);
      Smnettot := Smnettot + RctranNettot.AsFloat;
      FmDmic01.Rctran.Next;
    end;
    if Rcinv.State = Dsbrowse then
      Rcinv.Edit;

    FmDmic01.RcinvTOTAL.AsFloat := Smnettot; // Totprc2;
    FmDmic01.RcinvBALANCE.AsFloat := Smnettot - RcinvEXDISAMT.Asfloat;
    FmDmic01.RcinvDISCAMT.AsFloat := RcinvEXDISAMT.Asfloat; // (Totprc2 - Smnettot)+RcinvEXDISAMT.Asfloat;

    if FmDmic01.RcinvVATTYPE.Asstring = '1' then
    begin
      FmDmic01.RcinvVatAmt.AsFloat := FRound(FmDmic01.RcinvBALANCE.AsFloat * (Xvat / (100 + Xvat)), 2);
      FmDmic01.RcinvNETAMT.AsFloat := FRound(FmDmic01.RcinvBALANCE.AsFloat - FmDmic01.RcinvVatAmt.AsFloat, 2);
      FmDmic01.RcinvTOTcost.AsFloat := FRound(FmDmic01.RcinvBALANCE.AsFloat, 2);
    end
    else if FmDmic01.RcinvVATTYPE.Asstring = '2' then
    begin
      FmDmic01.RcinvNETAMT.AsFloat := FmDmic01.RcinvBALANCE.AsFloat;
      FmDmic01.RcinvVatAmt.AsFloat := FRound((FmDmic01.RcinvBALANCE.AsFloat * (Xvat / 100)), 2);
      FmDmic01.RcinvTOTcost.AsFloat := FRound(FmDmic01.RcinvNETAMT.AsFloat + FmDmic01.RcinvVatAmt.AsFloat, 2);
    end;
    Rctran.EnableControls;
    Rctran.GotoBookMark(bk);
    Rctran.FreeBookmark(bk);
  end
  else
  begin
    Rctran2.AfterPost := Rctran2AfterPost;
  end
end;

procedure TFmDmic01.IcTranAfterPost(DataSet: TDataSet);
var
  XNetAmt, NetAmt, Totprc2, Smnettot, Totcost: double;
  SNetAmt: string;
  bk: Tbookmark;
begin
  bk := Ictran.GetBookmark;
  IcTran.DisableControls;
  Smnettot := 0;
  Totprc2 := 0;
  Totcost := 0;
  FmDmic01.IcTran.first;
  while not FmDmic01.IcTran.Eof do
  begin
    Totcost := Totcost + IcTranAvgcost.AsFloat * IcTranQTYOUT.AsFloat;
    Totprc2 := Totprc2 + IcTranUprice.AsFloat * IcTranQTYOUT.AsFloat;
    Smnettot := Smnettot + FmDmic01.IcTranTotPrc.AsFloat;
    FmDmic01.IcTran.Next;
  end;
  if Icinv.State = Dsbrowse then
    Icinv.Edit;
  IcinvTotcost.AsFloat := Totcost;
  IcinvTotprc.AsFloat := Totprc2;
  IcinvDISCAMT.AsFloat := Totprc2 - Smnettot + FmDmic01.IcinvEXDISAMT.AsFloat;

  if IcinvDEPOSTAX.Asstring <> '' then                //ออก Vat มัดจำแล้ว
    IcinvBALANCE.AsFloat := Smnettot - FmDmic01.IcinvEXDISAMT.AsFloat - FmDmic01.IcinvDeposamt.AsFloat
  else
    IcinvBALANCE.AsFloat := Smnettot - FmDmic01.IcinvEXDISAMT.AsFloat;

  if FmDmic01.IcinvVATTYPE.Asstring = '1' then
  begin

    FmDmic01.IcinvNetPrc.AsFloat := FmDmic01.IcinvBALANCE.AsFloat;
//      XNETAMT := FRound((FmDmic01.IcinvBALANCE.AsFloat*100)/(100+FmDmic01.IcinvVatrt.AsFloat),2);
    XNetAmt := FRound((FmDmic01.IcinvBALANCE.AsFloat * FmDmic01.IcinvVatrt.AsFloat) / (100 + FmDmic01.IcinvVatrt.AsFloat), 2);
      //NETAMT  := FRound(XNETAMT,2);
    FmDmic01.IcinvVatAmt.AsFloat := XNetAmt;
    FmDmic01.IcinvNETAMT.AsFloat := FmDmic01.IcinvBALANCE.AsFloat - XNetAmt; //FmDmic01.IcinvNETAMT.AsFloat;

      //FmDmic01.IcinvNETAMT.AsFloat  := FmDmic01.IcinvBALANCE.AsFloat-FmDmic01.IcinvVATAMT.AsFloat;
    {FmDmic01.IcinvNETAMT.AsFloat := FmDmic01.Pkinv.fieldbyname('NETAMT').AsFloat;
    FmDmic01.IcinvVATAMT.AsFloat := FmDmic01.Pkinv.fieldbyname('VATAMT').AsFloat;
    Fmdmic01.IcinvNETPRC.AsFloat := FmDmic01.Pkinv.fieldbyname('NETTOTAL').AsFloat;}
  end
  else if FmDmic01.IcinvVATTYPE.Asstring = '2' then
  begin
    FmDmic01.IcinvNETAMT.AsFloat := FmDmic01.IcinvBALANCE.AsFloat;
    FmDmic01.IcinvVatAmt.AsFloat := FRound(FmDmic01.IcinvNETAMT.AsFloat * (FmDmic01.IcinvVatrt.AsFloat / 100), 2);
    FmDmic01.IcinvNetPrc.AsFloat := FmDmic01.IcinvNETAMT.AsFloat + FmDmic01.IcinvVatAmt.AsFloat;
  end;

  IcTran.EnableControls;
  Ictran.GotoBookMark(bk);
  Ictran.FreeBookmark(bk);
end;

procedure TFmDmic01.PkTranAfterPost(DataSet: TDataSet);
var
  XNetAmt, NetAmt, Totprc2, Smnettot, sprc, nprc: double;
  SNetAmt: string;
  bk: Tbookmark;
begin
  FmDmic01.Pktran.DisableControls;
  Smnettot := 0;
  Totprc2 := 0;
  CountFound := 0;
  bk := FmDmic01.Pktran.GetBookmark;

  FmDmic01.Pktran.first;
  while not FmDmic01.Pktran.Eof do
  begin
    sprc := PkTranUprice.AsFloat * PkTranQTYOUT.AsFloat;
    Totprc2 := Totprc2 + Rounder(sprc, 2);
    Smnettot := Smnettot + FmDmic01.PktranTotPrc.AsFloat;

    if Tmppart = PkTranPARTNO.Asstring then
      CountFound := CountFound + 1;

    if CountFound > 1 then
      DoupPart := PkTranPARTNO.Asstring;

    FmDmic01.Pktran.Next;
  end;
  if Pkinv.state = Dsbrowse then
    Pkinv.edit;
  FmDmic01.PkinvTotprc.AsFloat := Totprc2;
  FmDmic01.PkinvDISCAMT.AsFloat := Totprc2 - Smnettot + PkinvEXDISAMT.Asfloat;
  FmDmic01.PkinvBALANCE.AsFloat := Smnettot - PkinvEXDISAMT.Asfloat;

  if FmDmic01.PkinvVATTYPE.Asstring = '1' then
  begin
    FmDmic01.PkinvNettotal.AsFloat := FmDmic01.PkinvBALANCE.AsFloat;
//      XNETAMT := FRound((FmDmic01.PkinvBALANCE.AsFloat*100)/(100+FmDmic01.PkinvVatrt.AsFloat),2);
    nprc := (FmDmic01.PkinvBALANCE.AsFloat * FmDmic01.PkinvVatrt.AsFloat) / (100 + FmDmic01.PkinvVatrt.AsFloat);
    XNetAmt := Rounder(nprc, 2);
      //SNETAMT := floattostrf(XNETAMT,ffFixed,12,2);
      //NETAMT  := strtofloat(SNETAMT);
    FmDmic01.PkinvVatAmt.AsFloat := XNetAmt;
    FmDmic01.PkinvNETAMT.AsFloat := FmDmic01.PkinvBALANCE.AsFloat - XNetAmt; //FmDmic01.PkinvNETAMT.AsFloat;
  end
  else if FmDmic01.PkinvVATTYPE.Asstring = '2' then
  begin
    FmDmic01.PkinvNETAMT.AsFloat := FmDmic01.PkinvBALANCE.AsFloat;
      //SNETAMT := floattostrf(FRound(FmDmic01.PkinvNETAMT.AsFloat * (FmDmic01.PkinvVatrt.AsFloat/100)),2),ffFixed,12,2);
    nprc := FmDmic01.PkinvNETAMT.AsFloat * FmDmic01.PkinvVatrt.AsFloat / 100;
    FmDmic01.PkinvVatAmt.AsFloat := Rounder(nprc, 2);
    FmDmic01.PkinvNettotal.AsFloat := FmDmic01.PkinvNETAMT.AsFloat + FmDmic01.PkinvVatAmt.AsFloat;
  end;
  Pktran.EnableControls;
  FmDmic01.Pktran.GotoBookMark(bk);
  FmDmic01.Pktran.FreeBookmark(bk);
end;

procedure TFmDmic01.RttranNewRecord(DataSet: TDataSet);
begin
  if Rttran.State = Dsinsert then
  begin
    XDate := RtinvRTNDT.AsdateTime;
    DecodeDate(XDate, XYear, XMonth, XDay);

    RttranRTNLOC.AsString := RtinvRTNLOC.AsString;
    RttranRTNNo.AsString := RtinvRTNNo.AsString;
    RttranTAXREFNO.AsString := RtinvINVNO.AsString;
    RttranRTNDT.AsdateTime := RtinvRTNDT.AsdateTime;
    RtTranUSERID.AsString := SFMain.XUser_ID;
    RtTrantime1.AsDateTime := now;
    RttranFLAG.Asstring := RtinvFLAG.Asstring;
    RttranYear1.Asstring := FloatTostr(Xyear);
    ClearAsFloat(Rttran);
  end;
end;

procedure TFmDmic01.RttranBeforeDelete(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := RttranRTNDT.AsdateTime;
  Xord := RttranQTYRTN.AsFloat;
  Xqty := RttranQTYRTN.AsFloat;
  Xpart := RttranPARTNO.Asstring;
  Xlocat := RttranRTNLOC.Asstring;
  Xflag := RttranFLAG.Asstring;
end;

procedure TFmDmic01.RttranAfterPost(DataSet: TDataSet);
var
  XNETPRC, NETPRC, Smnettot: Double;
  SNETPRC: string;
  bk: Tbookmark;
begin
  bk := Rttran.GetBookmark;
  RtTran.DisableControls;
  Smnettot := 0;
  FmDmic01.Rttran.first;
  while not FmDmic01.Rttran.Eof do
  begin
    Smnettot := Smnettot + FmDmic01.RtTranNetprc.AsFloat;
    FmDmic01.Rttran.Next;
  end;

  FmDmic01.Rtinv.Edit;
  FmDmic01.RtinvTOTAL.AsFloat := Smnettot;

  if FmDmic01.RtinvVATTYP.Asstring = '1' then
  begin
    FmDmic01.RtinvTOTPRC.AsFloat := Smnettot;
    XNETPRC := FRound((Smnettot * 100) / (100 + FmDmic01.RtinvVatrt.AsFloat), 2);
      //SNETPRC := floattostrf(XNETPRC,ffFixed,12,2);
      //NETPRC  := strtofloat(SNETPRC);
    FmDmic01.RtinvNETPRC.AsFloat := XNETPRC;
    FmDmic01.RtinvVatAmt.AsFloat := FmDmic01.RtinvTOTPRC.AsFloat - FmDmic01.RtinvNETPRC.AsFloat;
  end;
  if FmDmic01.RtinvVATTYP.Asstring = '2' then
  begin
    FmDmic01.RtinvNETPRC.AsFloat := Smnettot;
    FmDmic01.RtinvVatAmt.AsFloat := FRound(Smnettot * (FmDmic01.RtinvVatrt.AsFloat / 100), 2);
    FmDmic01.RtinvTOTPRC.AsFloat := FmDmic01.RtinvNETPRC.AsFloat + FmDmic01.RtinvVatAmt.AsFloat;
  end;
  RtTran.EnableControls;
  Rttran.GotoBookMark(bk);
  Rttran.FreeBookmark(bk);
end;

procedure TFmDmic01.RtinvAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := RtinvRTNNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if RTinv.Active then
      if (RTinv.ApplyUpdates = 0) then
        RTinv.CommitUpdates
      else
        raise Exception.Create(RTinv.RowError.Message);
    if RTtran.Active then
      if (RTtran.ApplyUpdates = 0) then
        RTtran.CommitUpdates
      else
        raise Exception.Create(RTtran.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    if TaxSal.Active then
      if (TaxSal.ApplyUpdates = 0) then
        TaxSal.CommitUpdates
      else
        raise Exception.Create(TaxSal.RowError.Message);
    if Qarinvoi.Active then
      if (Qarinvoi.ApplyUpdates = 0) then
        Qarinvoi.CommitUpdates
      else
        raise Exception.Create(Qarinvoi.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    //RtinvBeforeCancel(Rtinv);
    RTinv.Edit;
    raise;
  end;
  //
  with FmDmic01.Rtinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RT_INVOI WHERE RTNNO =:XRTNNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
  with FmDmic01.Rttran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RT_TRAN WHERE RTNNO =:XRTNNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TFmDmic01.RtinvBeforeDelete(DataSet: TDataSet);
begin
  if FmDmic01.RtinvFlag.AsString = '7' then
  begin
    with TaxSal do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO =:XTAXNO ');
      Params[0].AsString := RtinvCREDNO.AsString;
      Open;
    end;
    TaxSal.Edit;
    TaxSalCanCel.AsString := 'C';
    TaxsalCANCELID.Asstring := SFMain.Xuser_id;
    TaxsalCANDAT.Asdatetime := Now;
    TaxSal.Post;
  end;
  //
  //  เพิ่มยอดลูกหนี้& เจ้าหนี้
  with Qarinvoi do
  begin
    Close;
    SQL.Clear;
    if FmDmic01.RtinvFlag.AsString = '7' then
      SQL.Add('SELECT * FROM ARINVOI WHERE INVNO =:XNO')
    else
      SQL.Add('SELECT * FROM APINVOI WHERE INVNO =:XNO');
    PARAMS[0].ASSTRING := RtinvTAXREFNO.Asstring;
    OPEN;
  end;
  if not (Qarinvoi.Bof and Qarinvoi.Eof) then
  begin
    with Qarinvoi do
    begin
      Qarinvoi.Edit;
      Fieldbyname('RTNAMT').Asfloat := Fieldbyname('RTNAMT').Asfloat - RtinvTOTPRC.AsFloat;
      Fieldbyname('KANG').Asfloat := Fieldbyname('NETTOTAL').Asfloat -
        (Fieldbyname('SMPAY').Asfloat + Fieldbyname('SMCHQ').Asfloat - Fieldbyname('RTNAMT').Asfloat);
      if Qarinvoi.Fieldbyname('RTNAMT').Asfloat = 0 then
      begin
        Fieldbyname('RTNDATE').Asstring := '';
        Fieldbyname('RTNNO').Asstring := '';
      end;
      Qarinvoi.Post;
    end
  end
  else
    Qarinvoi.close;

  Rttran.AfterDelete := Nil;
  Rttran.first;
  while not (Rttran.Bof and Rttran.Eof) do
    Rttran.delete;
end;

procedure TFmDmic01.RtinvBeforePost(DataSet: TDataSet);
begin
  Rttran.First;
  if RtinvUpdatestatus.Value = 'Inserted' then
  begin
    // Rerun
    if Duplicate then   //Key ซ้ำ
    begin
      RtinvRTNDTValidate(RtinvRTNDT);
      //
      Rttran.DisableControls;
      Rttran.AfterOpen := Nil;
      Rttran.First;
      while not Rttran.Eof do
      begin
        Rttran.Edit;
        RttranRTNNO.Asstring := RtinvRTNNO.Asstring;
        Rttran.Next;
      end;
      Rttran.AfterOpen := RttranAfterOpen;
      Rttran.EnableControls;
    end;
    //

    if (FmDmic01.RtinvFlag.AsString = '7') and (RtinvCREDNO.AsString <> '') then
    begin
      with TaxSal do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :Xno ');
        Params[0].Asstring := RtinvCREDNO.AsString;
        Open;
        if Bof and Eof then
          TaxSal.Insert
        else
          TaxSal.Edit;
      end;
      TaxSalTAXNO.AsString := RtinvCREDNO.AsString;
      TaxSallocat.AsString := RtinvRTNLOC.AsString;
      TaxSalTAXDate.AsDateTime := RtinvCREDDT.AsDateTime;
      TaxSalTAXRefNo.AsString := RtinvRTNNO.AsString;
      TaxSalCusCod.AsString := RtinvAPCODE.AsString;
      TaxSalDESC1.AsString := 'ใบลดหนี้ภาษีขาย';
      TaxSalVatRt.AsFloat := RtinvVatRt.AsFloat;
      TaxSalAmount.AsFloat := RtinvNETPRC.AsFloat;
      TaxSalRedu.AsFloat := 0;
      TaxSalBalance.AsFloat := RtinvNETPRC.AsFloat;
      TaxSalVat.AsFloat := RtinvVATAMT.AsFloat;
      TaxSalTotTax.AsFloat := RtinvTOTPRC.AsFloat;
      TaxSalFlag.AsString := '7';
      TaxsalFRSV.AsString := 'F';
      TaxSalPaytyp.AsString := RtinvPAYTYPE.Asstring;
      TaxSalUserId.AsString := SFMain.XUser_ID;
      TaxSalTime1.AsDateTime := Now;
      TaxSal.Post;
    end;
  end;
  //  ลดยอดลูกหนี้ & เจ้าหนี้
  with Qarinvoi do
  begin
    Close;
    SQL.Clear;
    if FmDmic01.RtinvFlag.AsString = '7' then
    begin
      SQL.Add('SELECT * FROM ARINVOI WHERE INVNO =:XNO'); //ลูกหนี้
      PARAMS[0].ASSTRING := RtinvTAXREFNO.Asstring;
    end
    else
    begin
      SQL.Add('SELECT * FROM APINVOI WHERE INVNO =:XNO'); //เจ้าหนี้
      PARAMS[0].ASSTRING := RtinvINVNO.Asstring;
    end;
    OPEN;
  end;
  if not (Qarinvoi.Bof and Qarinvoi.Eof) then
  begin
    with Qarinvoi do
    begin
      Qarinvoi.Edit;
      Fieldbyname('RTNAMT').Asfloat := Fieldbyname('RTNAMT').Asfloat + RtinvTOTPRC.AsFloat;
      Fieldbyname('RTNDATE').Asdatetime := RtinvCREDDT.AsDateTime;
      Fieldbyname('RTNNO').Asstring := RtinvRTNNO.AsString;
      Fieldbyname('KANG').Asfloat := Fieldbyname('NETTOTAL').Asfloat -
        (Fieldbyname('SMPAY').Asfloat + Fieldbyname('SMCHQ').Asfloat + Fieldbyname('RTNAMT').Asfloat);

      if Qarinvoi.Fieldbyname('kang').Asfloat < 0 then
      begin
        Fieldbyname('KANG').Asfloat := 0;
        if MessageDlg('คืนเกินยอดค้างชำระ ยืนยันที่จะบันทึก ?', Mtwarning, [mbok, Mbcancel], 0) = Mrcancel then
          Abort;
      end;
      Qarinvoi.Post;
    end
  end
  else
    Qarinvoi.close;
end;

procedure TFmDmic01.RtinvNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(RTinv);
  if not CondPay.Active then
    CondPay.Open;

  RTinvVATRT.AsFloat := Condpay.Fieldbyname('VatRt').Asfloat;
  if XRtFlg = '7' then
    RtinvFlag.AsString := '7'
  else
    RtinvFlag.AsString := '6';
  RtinvRTNLOC.AsString := SFMain.XLocat;
  RtinvRTNDT.AsDateTime := Now;
  RTinvUSERID.AsString := SFMain.XUser_ID;
  RTinvtime1.AsDateTime := now;
  RTinvOfficcod.AsString := SFMain.XOffCod;
  if Condpay.Fieldbyname('Vattype').asstring <> '' then
    RTinv.FieldByName('VATTYP').Asstring := Condpay.Fieldbyname('Vattype').asstring
  else
    RTinv.FieldByName('VATTYP').Asstring := '2';
end;

procedure TFmDmic01.RtinvRTNDTValidate(Sender: TField);
var
  HF, LF, HT, LT, LV, SQLTXT: string;
  DV: TDatetime;
begin
  if RtinvUpdatestatus.Value = 'Inserted' then
  begin
    LV := Rtinv.Fieldbyname('RTNLOC').asstring;
    DV := Rtinv.Fieldbyname('RTNDT').asDatetime;
    if RtinvFlag.ASstring = '7' then //  รับคืนจากลูกค้า
    begin
      FormatSettings.ShortDateFormat := 'yyyy/mm/dd';
      if datetostr(Rtinv.Fieldbyname('RTNDT').asDatetime) < datetostr(Now) then
      begin
        FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
        SFmain.RaiseException('ห้ามรับคืนสินค้า ย้อนวันปัจจุบัน จะกระทบต้นทุนเฉลี่ย');
      end;
      FormatSettings.ShortDateFormat := 'dd/mm/yyyy';

      HF := 'H_RCG';
      LF := 'L_RCG';

      HT := 'H_CRN';
      LT := 'L_CRN';

      if not QDBConfig.Active then
        QDBConfig.Open;
      if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
      begin
       {Runno02(LV,HF,LF,HT,LT,RnCont,RnTxno,DV);
       RtinvRTNNO.Asstring   := RnCont; }
        SQLTXT := 'SELECT MAX(RTNNO) AS MAXNO FROM RT_INVOI WHERE RTNLOC=:EDIT1 AND ' +
          'SUBSTR(RTNNO,2,2)=:EDIT2 AND SUBSTR(RTNNO,5,2)=:EDIT3 AND SUBSTR(RTNNO,7,2)=:EDIT4 ';
        if Duplicate then
          RtinvRTNNO.Asstring := MAXNO(HF, LF, LV, SQLTXT, DV)
        else
          RtinvRTNNO.Asstring := RunNo01(HF, LF, LV, DV);

        RtinvCREDNO.Asstring := RtinvRTNNO.Asstring;
        RtinvCREDDT.AsdateTime := RtinvRTNDt.AsdateTime;
      end;
    end
    else if RtinvFlag.ASstring = '6' then // ส่งคืนเจ้าหนี้
    begin
      HF := 'H_RTG';
      LF := 'L_RTG';

      HT := 'H_DBN';
      LT := 'L_DBN';
      if not QDBConfig.Active then
        QDBConfig.Open;
      if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
      begin
        SQLTXT := 'SELECT MAX(RTNNO) AS MAXNO FROM RT_INVOI WHERE RTNLOC=:EDIT1 AND ' +
          'SUBSTR(RTNNO,2,2)=:EDIT2 AND SUBSTR(RTNNO,5,2)=:EDIT3 AND SUBSTR(RTNNO,7,2)=:EDIT4 ';
        if Duplicate then
          RtinvRTNNO.Asstring := MAXNO(HF, LF, LV, SQLTXT, DV)
        else
          RtinvRTNNO.Asstring := RunNo01(HF, LF, LV, DV);

        RtinvCREDDT.AsdateTime := RtinvRTNDt.AsdateTime;
      end;
    end;
  end;
end;

procedure TFmDmic01.MvtranAfterPost(DataSet: TDataSet);
var
  Smnettot: double;
begin
  MvTran.DisableControls;
  Smnettot := 0;
  FmDmic01.MvTran.first;
  while not FmDmic01.MvTran.Eof do
  begin
    Smnettot := Smnettot + FRound((FmDmic01.MvTranTotprc.AsFloat), 2);
    FmDmic01.MvTran.Next;
  end;
  FmDmic01.Mvinv.Edit;
  FmDmic01.MvinvTotPrc.AsFloat := Smnettot;
   //FmDmic01.MvinvTotPrc.AsFloat := StrTofloat(FloattostrF((Smnettot),ffFixed,15,2));
  MvTran.EnableControls;
end;

procedure TFmDmic01.QainvQADATEValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  HF := 'H_QA1';
  LF := 'L_QA1';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := Qainv.Fieldbyname('QALOCAT').asstring;
    DV := Qainv.Fieldbyname('QAdate').asDatetime;
//    If QainvUpdateStatus.Value='Inserted' Then
    QainvQANO.Asstring := RunNo01(HF, LF, LV, DV);
  end;
end;

procedure TFmDmic01.QainvAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QainvQANO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QAinv.Active then
      if (QAinv.ApplyUpdates = 0) then
        QAinv.CommitUpdates
      else
        raise Exception.Create(QAinv.RowError.Message);
    if QAtran.Active then
      if (QAtran.ApplyUpdates = 0) then
        QAtran.CommitUpdates
      else
        raise Exception.Create(QAtran.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QAinv.Edit;
    raise;
  end;
  //
  with FmDmic01.QAinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM QAINVOI WHERE QANO =:XQANO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
  with FmDmic01.QAtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM QATRANS WHERE QANO =:XQANO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TFmDmic01.QainvBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

  Qatran.AfterDelete := Nil;
  QAtran.first;
  while not (QAtran.Bof and QAtran.Eof) do
    QAtran.delete;
end;

procedure TFmDmic01.QainvNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QAinv);
  if not CondPay.Active then
    CondPay.Open;

  QAinvVatrt.AsFloat := Condpay.Fieldbyname('VatRt').Asfloat;
  QAinvUSERID.AsString := SFMain.XUser_ID;
  QAinvtime1.AsDateTime := now;
  QAinvQALOCAT.AsString := SFMain.XLocat;
  QAinvQADATE.AsDateTime := DATE;
  QAinvOfficcod.AsString := SFMain.XOffCod;
  QAinvFlag.AsString := '1';
  if Condpay.Fieldbyname('Vattype').Asstring <> '' then
    QAinvVATTYPE.Asstring := Condpay.Fieldbyname('Vattype').Asstring
  else
    QAinvVATTYPE.Asstring := '2';
end;

procedure TFmDmic01.QaTranNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QATran);
  QATranQAno.Asstring := QAinvQAno.Asstring;
  QATranQAlocat.asstring := QAinvQAlocat.Asstring;
  QATranQAdate.Asstring := QAinvQAdate.Asstring;
  QATranREDU1.AsFloat := QAinvDisct.AsFloat;
end;

procedure TFmDmic01.QaTranAfterPost(DataSet: TDataSet);
var
  TotPrc2, Smnettot, XNetamt, Netamt: double;
  SNetAmt: string;
  bk: Tbookmark;
begin
  QAtran.DisableControls;
  Smnettot := 0;
  TotPrc2 := 0;
  bk := FmDmic01.Qatran.GetBookmark;

  FmDmic01.QAtran.first;
  while not FmDmic01.QAtran.Eof do
  begin
    TotPrc2 := TotPrc2 + QAtranQTYOUT.AsFloat * QAtranUprice.AsFloat;
    Smnettot := Smnettot + FmDmic01.QAtranTotPrc.AsFloat;
    FmDmic01.QAtran.Next;
  end;
  FmDmic01.QAinvTotprc.AsFloat := TotPrc2;
  FmDmic01.QAinvDISCAMT.AsFloat := TotPrc2 - Smnettot;
  FmDmic01.QAinvBALANCE.AsFloat := Smnettot;
  if FmDmic01.QAinvVATTYPE.Asstring = '1' then
  begin
    FmDmic01.QAinvNettotal.AsFloat := FmDmic01.QAinvBALANCE.AsFloat;
    XNetamt := FRound((FmDmic01.QAinvBALANCE.AsFloat * 100) / (100 + FmDmic01.QAinvVatrt.AsFloat), 2);
      //SNETAMT := floattostrf(XNETAMT,ffFixed,12,2);
      //NETAMT  := strtofloat(SNETAMT);
    FmDmic01.QAinvNETAMT.AsFloat := XNetamt;
    FmDmic01.QAinvVatAmt.AsFloat := FmDmic01.QAinvBALANCE.AsFloat - FmDmic01.QAinvNETAMT.AsFloat;
  end
  else if FmDmic01.QAinvVATTYPE.Asstring = '2' then
  begin
    FmDmic01.QAinvNETAMT.AsFloat := FmDmic01.QAinvBALANCE.AsFloat;
    FmDmic01.QAinvVatAmt.AsFloat := FRound(FmDmic01.QAinvNETAMT.AsFloat * (FmDmic01.QAinvVatrt.AsFloat / 100), 2);
    FmDmic01.QAinvNettotal.AsFloat := FmDmic01.QAinvNETAMT.AsFloat + FmDmic01.QAinvVatAmt.AsFloat;
  end;
  QAtran.EnableControls;

  FmDmic01.Qatran.GotoBookMark(bk);
  FmDmic01.Qatran.FreeBookmark(bk);
end;

procedure TFmDmic01.AdjinvADJDATEValidate(Sender: TField);
var
  HF, LF, LV, Sqltxt: string;
  DV: TdateTime;
begin
  FormatSettings.ShortDateFormat := '/dd/mm/yyyy';
  if datetostr(Adjinv.Fieldbyname('ADJdate').asDatetime) < datetostr(Now) then
  begin
    FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
    SFmain.RaiseException('ห้าม Adjust ยอดสินค้า ย้อนวันปัจจุบัน จะกระทบต้นทุนเฉลี่ย');
  end;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';

  HF := 'H_ADJ';
  LF := 'L_ADJ';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := Adjinv.Fieldbyname('ADJLOC').asstring;
    DV := Adjinv.Fieldbyname('ADJdate').asDatetime;
    if AdjinvUpdatestatus.Value = 'Inserted' then
    begin
      Sqltxt := 'SELECT MAX(ADJNO) AS MAXNO FROM ADJ_INVOI WHERE ADJLOC=:EDIT1 AND ' +
        'SUBSTR(ADJNO,2,2)=:EDIT2 AND SUBSTR(ADJNO,5,2)=:EDIT3 AND SUBSTR(ADJNO,7,2)=:EDIT4';
      if Duplicate then
        AdjinvADJNO.Asstring := MAXNO(HF, LF, LV, Sqltxt, DV)
      else
        AdjinvADJNO.Asstring := RunNo01(HF, LF, LV, DV);
    end;
  end;
end;

procedure TFmDmic01.AdjTranAfterPost(DataSet: TDataSet);
var
  sum1: double;
  bk: Tbookmark;
begin
   //AdjTran.DisableControls;
  sum1 := 0;
   //Bk := FmDmic01.Adjtran.GetBookmark;

  AdjTran.first;
  while not AdjTran.Eof do
  begin
    sum1 := sum1 + AdjTranNetcost.AsFloat;
    AdjTran.Next;
  end;
  AdjinvTotcost.AsFloat := sum1;
   //AdjTran.EnableControls;

   //FmDmic01.Adjtran.GotoBookMark(Bk);
   //FmDmic01.Adjtran.FreeBookmark(Bk);
end;

procedure TFmDmic01.AdjinvAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := AdjinvADJNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Adjinv.Active then
      if (Adjinv.ApplyUpdates = 0) then
        Adjinv.CommitUpdates
      else
        raise Exception.Create(Adjinv.RowError.Message);
    if Adjtran.Active then
      if (Adjtran.ApplyUpdates = 0) then
        Adjtran.CommitUpdates
      else
        raise Exception.Create(Adjtran.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
     //AdjinvBeforeCancel(Adjinv);
    Adjinv.Edit;
    raise;
  end;
  //
  with FmDmic01.ADJinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ADJ_INVOI WHERE ADJNO =:XADJNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
  with FmDmic01.ADJtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ADJ_TRANS WHERE ADJNO =:XADJNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TFmDmic01.AdjinvBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
  //**** Delete Adjtran ****
  AdjTran.AfterDelete := Nil;
  Adjtran.first;
  while not Adjtran.Eof do
    Adjtran.delete;
end;

procedure TFmDmic01.RttranBeforePost(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := RttranRTNDT.AsdateTime;
  Xord := RttranQTYRTN.AsFloat;
  Xqty := RttranQTYRTN.AsFloat;
  Xpart := RttranPARTNO.Asstring;
  Xlocat := RttranRTNLOC.Asstring;
  Xflag := RttranFLAG.Asstring;
  Xcost := RTtrancost.AsFloat;

  if RttranUpdateStatus.Value = 'Inserted' then
  begin
     //IF RtinvFLAG.Asstring = '6' THEN
     //UpdStock(XQty,Xcost,XPART,XLOCAT,'3','-',XDATE);

    if RtinvFLAG.Asstring = '7' then
    begin
      Avgcost(Xqty, Xcost, Xpart, Xlocat, XDATE);
      RttranAvgCost.Asfloat := TmpAvgcost;
      //UpdStock(XQty,Xcost,XPART,XLOCAT,'3','+',XDATE);
    end;
  end;
end;

procedure TFmDmic01.IcinvFLAGValidate(Sender: TField);
begin
  if (Datetimetostr(IcinvINVDATE.AsDateTime) <> '30/12/1899') and
    (IcinvINVLOC.AsString <> '') then
    IcinvINVDATEValidate(Sender);
end;

procedure TFmDmic01.MvInvMOVFRMValidate(Sender: TField);
begin
  if MvInvMOVDT.Asstring <> '' then
    MvInvMOVDTValidate(Sender);
end;

procedure TFmDmic01.RtinvRTNLOCValidate(Sender: TField);
begin
  if RtinvRTNDT.Asstring <> '' then
    RtinvRTNDTValidate(Sender);
end;

procedure TFmDmic01.QainvQALOCATValidate(Sender: TField);
begin
  if Datetimetostr(QainvQADATE.AsDateTime) <> '30/12/1899' then
    QainvQADATEValidate(Sender);
end;

procedure TFmDmic01.AdjinvADJLOCValidate(Sender: TField);
begin
  if Datetimetostr(AdjinvADJDATE.AsDateTime) <> '30/12/1899' then
    AdjinvADJDATEValidate(Sender);
end;

procedure TFmDmic01.RcinvFLAGValidate(Sender: TField);
begin
  if (Datetimetostr(RcinvRECVDT.AsDateTime) <> '30/12/1899') and
    (RcinvRECVLOC.AsString <> '') then
    RcinvRECVDTValidate(Sender);
end;

procedure TFmDmic01.RtinvFLAGValidate(Sender: TField);
begin
  if (Datetimetostr(RtinvRTNDT.AsDateTime) <> '30/12/1899') and
    (RtinvRTNLOC.AsString <> '') then
    RtinvRTNDTValidate(Sender);
end;

procedure TFmDmic01.AdjTranBeforePost(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := AdjTranADJDATE.AsdateTime;
  Xord := AdjTranQTYOUT.AsFloat;
  Xqty := AdjTranQTYOUT.AsFloat;
  Xpart := AdjTranPARTNO.Asstring;
  Xlocat := AdjTranADJLOC.Asstring;
  Xflag := AdjTranFLAG.Asstring;
  Xcost := AdjTranUCOST.Asfloat;

  if AdjTranUpdateStatus.Value = 'Inserted' then
  begin
    if AdjinvFLAG.Asstring <> 'B' then
    begin
      if Xqty > 0 then
      begin
        Avgcost(Xqty, Xcost, Xpart, Xlocat, XDATE);
        AdjTranAvgCost.Asfloat := TmpAvgcost;
      end;
       //UpdStock(XQty,Xcost,XPART,XLOCAT,'3','+',XDATE);
    end;
  end;
end;

procedure TFmDmic01.AdjTranBeforeDelete(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := AdjTranADJDATE.AsdateTime;
  Xord := AdjTranQTYOUT.AsFloat;
  Xqty := AdjTranQTYOUT.AsFloat;
  Xpart := AdjTranPARTNO.Asstring;
  Xlocat := AdjTranADJLOC.Asstring;
  Xflag := AdjTranFLAG.Asstring;
end;

procedure TFmDmic01.MvInvBeforePost(DataSet: TDataSet);
begin
  Mvtran.First;

  if MvInvUpdatestatus.Value = 'Inserted' then
  begin
    // Rerun
    if Duplicate then
    begin
      MvInvMOVDTValidate(MvInvMOVDT);

      Mvtran.DisableControls;
      Mvtran.AfterPost := Nil;
      Mvtran.First;
      while not Mvtran.Eof do
      begin
        Mvtran.Edit;
        MvtranMOVNO.Asstring := MvInvMOVNO.Asstring;
        Mvtran.Next
      end;
      Mvtran.AfterPost := MvtranAfterPost;
      Mvtran.EnableControls;
    end;
  end;
end;

procedure TFmDmic01.CloseAll;
var
  N: Word;
begin

  for N := 0 to ComponentCount - 1 do
  begin
    if (Components[N] is TFDQuery) and (TFDQuery(Components[N]).Active) and (TFDQuery(Components[N]).Name <> 'Condpay') then
      TFDQuery(Components[N]).Active := False
    else if (Components[N] is TFDTable) and (TFDTable(Components[N]).Active) then
      TFDTable(Components[N]).Active := False;
  end;
  //Condpay.Open;
end;

procedure TFmDmic01.RcinvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
        'Inserted', 'Deleted');
begin
  if Rcinv.CachedUpdates then
    RcinvUpdateStatus.Value := UpdateStatusStr[Rcinv.UpdateStatus];
end;

procedure TFmDmic01.RtinvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Rtinv.CachedUpdates then
    RtinvUpdateStatus.Value := UpdateStatusStr[Rtinv.UpdateStatus];
end;

procedure TFmDmic01.PkinvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Pkinv.CachedUpdates then
    PkinvUpdateStatus.Value := UpdateStatusStr[Pkinv.UpdateStatus];
end;

procedure TFmDmic01.IcinvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Icinv.CachedUpdates then
    IcinvUpdateStatus.Value := UpdateStatusStr[Icinv.UpdateStatus];
end;

procedure TFmDmic01.AdjinvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Adjinv.CachedUpdates then
    AdjinvUpdateStatus.Value := UpdateStatusStr[Adjinv.UpdateStatus];
end;

procedure TFmDmic01.Rcinv1RECVDTValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  FormatSettings.ShortDateFormat := 'yyyy/mm/dd';
  if datetostr(Rcinv1.Fieldbyname('RECVDT').asDatetime) < datetostr(Now) then
  begin
    FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
    SFmain.RaiseException('ห้ามรับสินค้า ย้อนวันปัจจุบัน จะกระทบต้นทุนเฉลี่ย');
  end;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';

  HF := 'H_TRA';
  LF := 'L_TRA';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := Rcinv1.Fieldbyname('RECVLOC').asstring;
    DV := Rcinv1.Fieldbyname('RECVDT').asDatetime;
    if Rcinv1Updatestatus.Value = 'Inserted' then
      Rcinv1RECVNO.Asstring := RunNo01(HF, LF, LV, DV);
  end;
end;

procedure TFmDmic01.Rcinv1RECVLOCValidate(Sender: TField);
begin
  if Datetimetostr(Rcinv1RECVDT.AsDateTime) <> '30/12/1899' then
    Rcinv1RECVDTValidate(Sender);
end;

procedure TFmDmic01.Rcinv1AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := Rcinv1RECVNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Rcinv1.Active then
      if (Rcinv1.ApplyUpdates = 0) then
        Rcinv1.CommitUpdates
      else
        raise Exception.Create(Rcinv1.RowError.Message);
    if Rctrn1.Active then
      if (Rctrn1.ApplyUpdates = 0) then
        Rctrn1.CommitUpdates
      else
        raise Exception.Create(Rctrn1.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    //Rcinv1BeforeCancel(Rcinv1);
    Rcinv1.Edit;
    raise;
  end;
  //
  with FmDmic01.Rcinv1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO =:XRECVNO ');
    Params[0].AsString := S;
    OPEN;
  end;
  with FmDmic01.Rctrn1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO =:XRECVNO ');
    Params[0].AsString := S;
    OPEN;
  end;
end;

procedure TFmDmic01.Rctrn1BeforePost(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := MvinvMovDt.AsdateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);

  XDate := Rctrn1RECVDATE.AsdateTime;
  Xord := Rctrn1QTYRECV.AsFloat;
  Xqty := Rctrn1QTYRECV.AsFloat;
  Xpart := Rctrn1PARTNO.Asstring;
  Xlocat := Rctrn1RECVLOC.Asstring;
  Xflag := Rctrn1FLAG.Asstring;
  Xcost := Rctrn1NETCOST.Asfloat;

  if Rctrn1UpdateStatus.Value = 'Inserted' then
  begin
    Avgcost(Xqty, Xcost, Xpart, Xlocat, XDATE);
    Rctrn1AvgCost.Asfloat := TmpAvgcost;
     //UpdStock(XQty,Xcost,XPART,XLOCAT,'3','+',XDATE);
  end;
end;

procedure TFmDmic01.Rcinv1BeforePost(DataSet: TDataSet);
begin

  if Rcinv1Updatestatus.Value = 'Inserted' then
  begin
    if Duplicate then
    begin
      Rcinv1RECVDTValidate(Rcinv1RECVDT);

      Rctrn1.DisableControls;
      Rctrn1.First;
      while not Rctrn1.Eof do
      begin
        Rctrn1.Edit;
        Rctrn1RECVNO.Asstring := Rcinv1RECVNO.Asstring;
        Rctrn1.Next
      end;
      Rctrn1.EnableControls;
    end;
  end;
end;

procedure TFmDmic01.Rcinv1BeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

  {TMvinv.Edit;
  TMvinv.FieldByName('Flag').AsString    := 'T';
  TMvinv.FieldByName('Recvcod').AsString := '';
  TMvinv.Post;
  }
  Rctrn1.AfterDelete := Nil;
  Rctrn1.first;
  while not (Rctrn1.Bof and Rctrn1.Eof) do
    Rctrn1.delete;
end;

procedure TFmDmic01.Rctrn1BeforeDelete(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := MvinvMovDt.AsdateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);

  XDate := Rctrn1RECVDATE.AsdateTime;
  Xord := Rctrn1QTYRECV.AsFloat;
  Xqty := Rctrn1QTYRECV.AsFloat;
  Xpart := Rctrn1PARTNO.Asstring;
  Xlocat := Rctrn1RECVLOC.Asstring;
  Xflag := Rctrn1FLAG.Asstring;
  Xcost := Rctrn1NETCOST.Asfloat;

   //UpdStock(XQty,Xcost,XPART,XLOCAT,'3','-',XDATE);
end;

procedure TFmDmic01.PkTranAfterOpen(DataSet: TDataSet);
begin
  FmDmic01.Qinvmst2.Open;
end;

procedure TFmDmic01.PkinvAfterCancel(DataSet: TDataSet);
begin
  if Pkinv.Active then
    Pkinv.CancelUpdates;
  if Pktran.Active then
    Pktran.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TFmDmic01.PkTranBeforeDelete(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag: string;
  Xord, Xqty, Xcost, AvCost: Double;
begin
  if PkinvREFNO.Asstring <> '' then
    SFmain.RaiseException('ออกใบกำกับแล้ว');

  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT PKNO,PARTNO,RTNPK,FLAG FROM PK_TRANS ' +
      'WHERE PARTNO=:EDIT1 AND RTNPK=:EDIT2');
    params[0].asstring := PkTranPARTNO.Asstring;
    params[1].asstring := PkTranPKNO.Asstring;
    Open;
    if not (Bof and Eof) and (Query1.Fieldbyname('Flag').Asstring = 'S') then
      SFmain.RaiseException('มีรายการรับคืนจากศูนย์ เลขที่รับคืน' + Query1.Fieldbyname('PKNO').Asstring + #13#13 + 'ไม่สามารถลบรายการนี้ ');
  end;

  XDate := PkinvPKDATE.AsdateTime;
  Xord := PktranQTYORD.AsFloat;
  Xqty := PktranQTYOUT.AsFloat;
  Xpart := PktranPartno.Asstring;
  Xlocat := PktranPkLocat.Asstring;
  Xflag := PktranFlag.Asstring;
  Xcost := PktranAvgcost.AsFloat;

  if (Xflag = '1') or (Xflag = '2') or (Xflag = '3') or (Xflag = 'B') then
  begin
    UpdDemn(Xord, Xqty, Xpart, Xlocat, '-', XDATE);
  end;

  if (Xflag = 'R') or (Xflag = 'S') then
  begin
    UpdDemn(Xord, Xqty, Xpart, Xlocat, '+', XDATE);
  end;
end;

procedure TFmDmic01.RctranAfterOpen(DataSet: TDataSet);
begin
  Qinvmst1.Open;
end;

procedure TFmDmic01.IcTranAfterOpen(DataSet: TDataSet);
begin
  Qinvmst3.Open;
end;

procedure TFmDmic01.RcinvAfterCancel(DataSet: TDataSet);
begin
  if Rcinv.Active then
    Rcinv.CancelUpdates;
  if Rctran.Active then
    Rctran.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TFmDmic01.RttranAfterOpen(DataSet: TDataSet);
begin
  Qinvmst4.Open;
end;

procedure TFmDmic01.QainvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QAinv.CachedUpdates then
    QAinvUpdateStatus.Value := UpdateStatusStr[QAinv.UpdateStatus];
end;

procedure TFmDmic01.MvInvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Mvinv.CachedUpdates then
    MvinvUpdateStatus.Value := UpdateStatusStr[Mvinv.UpdateStatus];
end;

procedure TFmDmic01.Rcinv1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Rcinv1.CachedUpdates then
    Rcinv1UpdateStatus.Value := UpdateStatusStr[Rcinv1.UpdateStatus];
end;

procedure TFmDmic01.MvInvNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  if not CondPay.Active then
    CondPay.Open;

  MvinvFlag.AsString := 'T';
  MvinvMOVFRM.AsString := SFMain.XLocat;
  MvinvMOVDT.AsDateTime := Now;
  MvInvUSERID.AsString := SFMain.XUser_ID;
  MvInvtime1.AsDateTime := now;
  MvinvOfficcod.AsString := SFMain.XOffCod;
end;

procedure TFmDmic01.MvtranAfterOpen(DataSet: TDataSet);
begin
  FmDmic01.Qinvmst5.Open;
end;

procedure TFmDmic01.MvInvAfterCancel(DataSet: TDataSet);
begin
  if Mvinv.Active then
    Mvinv.CancelUpdates;
  if Mvtran.Active then
    Mvtran.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TFmDmic01.RtinvAfterCancel(DataSet: TDataSet);
begin
  if RTinv.Active then
    RTinv.CancelUpdates;
  if RTtran.Active then
    RTtran.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
  if TaxSal.Active then
    TaxSal.CancelUpdates;
end;

procedure TFmDmic01.Rctrn1AfterOpen(DataSet: TDataSet);
begin
  FmDmic01.Qinvmst6.Open;
end;

procedure TFmDmic01.Rcinv1AfterCancel(DataSet: TDataSet);
begin
  if Rcinv1.Active then
    Rcinv1.CancelUpdates;
  if Rctrn1.Active then
    Rctrn1.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TFmDmic01.QaTranAfterOpen(DataSet: TDataSet);
begin
  Qinvmst9.Open;
end;

procedure TFmDmic01.QainvBeforePost(DataSet: TDataSet);
var
  I: Integer;
  Lb, Code: string;
begin
  Lb := 'XX-';
  I := 0;

  if QAinvUpdateStatus.Value = 'Inserted' then
  begin
    //Rerun
    QainvQADATEValidate(QainvQADATE);
    //
    Qatran.DisableControls;
    Qatran.First;
    while not Qatran.Eof do
    begin
      Qatran.Edit;
      QaTranQANO.Asstring := QainvQANO.Asstring;
      if QaTranPARTNO.AsString = '' then
      begin
        I := I + 1;
        Code := Lb + sfMain.ZeroLead(InttoStr(I), 3);
        QATran.FieldByName('PARTNO').Asstring := Code;
      end;
      Qatran.Next;
    end;
    Qatran.EnableControls;
  end;
end;

procedure TFmDmic01.AdjinvBeforePost(DataSet: TDataSet);
begin
  AdjTran.First;
  if AdjinvUpdateStatus.Value = 'Inserted' then
  begin
    //
    if Duplicate then   //Key ซ้ำ
      AdjinvADJDATEValidate(AdjinvADJDATE);
      //
    AdjTran.DisableControls;
    AdjTran.AfterPost := Nil;
    AdjTran.First;
    while not AdjTran.Eof do
    begin
      Adjtran.Edit;
      AdjTranADJNO.Asstring := AdjinvADJNO.Asstring;
      AdjTranADJLOC.Asstring := AdjinvADJLOC.Asstring;
      AdjTranADJDATE.Asdatetime := AdjinvADJDATE.Asdatetime;
      AdjTran.Next;
    end;
    AdjTran.AfterPost := AdjTranAfterPost;
    AdjTran.EnableControls;
  end;
end;

procedure TFmDmic01.AdjTranAfterOpen(DataSet: TDataSet);
begin
  Qinvmst8.Open;
end;

procedure TFmDmic01.AdjinvNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(Adjinv);
  if not CondPay.Active then
    CondPay.Open;

  ADJinvFlag.AsString := '9';
  ADJinvADJLOC.AsString := SFMain.XLocat;
  ADJinvADJDATE.AsDateTime := Now;
  AdjinvUSERID.AsString := SFMain.XUser_ID;
  Adjinvtime1.AsDateTime := now;
  AdjinvOfficcod.AsString := SFMain.XOffCod;
end;

procedure TFmDmic01.AdjinvAfterCancel(DataSet: TDataSet);
begin
  if Adjinv.Active then
    Adjinv.CancelUpdates;
  if Adjtran.Active then
    Adjtran.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TFmDmic01.PkinvJOBNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XJOB ');
    Params[0].Asstring := Pkinv.FieldByName('JOBNO').Asstring;
    Open;
    if Query1.Bof and Query1.eof then
      SFmain.RaiseException('ไม่มีข้อมูล ');
  end;
  if Query1.Fieldbyname('Status').Asstring <> 'W' then
    SFmain.RaiseException('ปิด Job แล้ว');
end;

procedure TFmDmic01.TmpAjIvNewRecord(DataSet: TDataSet);
begin
  if TmpAjiv.State = Dsinsert then
  begin
    ClearAsFloat(TmpAjIv);
    TmpAjIvUSERID.AsString := SFMain.XUser_ID;
    TmpAjIvtime1.AsDateTime := now;
    TmpAjIvOfficcod.AsString := SFMain.XOffCod;
    TmpAjivFlag.AsString := 'B';
    TmpAjivEXPTYP.AsString := '3';
    TmpAjivADJLOC.AsString := SFMain.XLocat;
    TmpAjivADJDATE.AsDateTime := Now;
  end;
end;

procedure TFmDmic01.TmpAjIvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TFmDmic01.TmpAjIvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if TmpAjIv.CachedUpdates then
    TmpAjIvUpdateStatus.Value := UpdateStatusStr[TmpAjIv.UpdateStatus];
end;

procedure TFmDmic01.TmpAjIvADJDATEValidate(Sender: TField);
var
  HF, LF, LV: string;
  DV: TdateTime;
begin
  HF := 'H_AJTM';
  LF := 'L_AJTM';
  LV := TmpAjIv.Fieldbyname('ADJLOC').asstring;
  DV := TmpAjIv.Fieldbyname('ADJdate').asDatetime;
  if TmpAjIvUpdatestatus.Value = 'Inserted' then
    TmpAjIvADJNO.Asstring := RunNo01(HF, LF, LV, DV);
end;

procedure TFmDmic01.TmpAjIvADJLOCValidate(Sender: TField);
begin
  if Datetimetostr(TmpAjIvADJDATE.AsDateTime) <> '30/12/1899' then
    TmpAjIvADJDATEValidate(Sender);
end;

procedure TFmDmic01.TmpAjIvAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := TmpAjIvADJNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if TmpAjIv.Active then
      if (TmpAjIv.ApplyUpdates = 0) then
        TmpAjIv.CommitUpdates
      else
        raise Exception.Create(TmpAjIv.RowError.Message);
    if TmpAjTr.Active then
      if (TmpAjTr.ApplyUpdates = 0) then
        TmpAjTr.CommitUpdates
      else
        raise Exception.Create(TmpAjTr.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    TmpAjiv.edit;
    raise;
  end;
  //
  with FmDmic01.TmpAjIv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TMPAJIV WHERE ADJNO =:XADJNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TFmDmic01.Tmpajtr1NewRecord(DataSet: TDataSet);
begin
  if Tmpajtr.State = Dsinsert then
  begin
    XDate := FmDmic01.TmpajIvAdjDATE.AsdateTime;
    DecodeDate(XDate, XYear, XMonth, XDay);

    TmpajtrAdjno.Asstring := TmpajIvAdjno.Asstring;
    TmpajtrAdjloc.asstring := TmpajIvAdjloc.Asstring;
    TmpajtrAdjdate.Asstring := TmpajIvAdjdate.Asstring;
    TmpajtrYear1.Asstring := FloatTostr(Xyear);
    TmpajtrUSERID.AsString := SFMain.XUser_ID;
    Tmpajtrtime1.AsDateTime := now;
    TmpajtrFLAG.Asstring := TmpajIvFLAG.Asstring;
    ClearAsFloat(Tmpajtr);
  end;
end;

procedure TFmDmic01.TmpAjIvBeforePost(DataSet: TDataSet);
var
  sum1: double;
begin
  sum1 := 0;

  if TmpAjIvUpdateStatus.Value = 'Inserted' then
  begin
    if Duplicate then
      TmpAjIvADJDATEValidate(TmpAjIvADJDATE);
    Tmpajtr.DisableControls;
    Tmpajtr.AfterPost := Nil;
    Tmpajtr.first;
    while not Tmpajtr.Eof do
    begin
      Tmpajtr.Edit;
      tmpajtrADJNO.AsString := TmpAjIvADJNO.AsString;
      sum1 := sum1 + TmpajtrNetcost.AsFloat;
      Tmpajtr.Next;
    end;
    TmpajivTotcost.AsFloat := sum1;
    Tmpajtr.EnableControls;
  end;
end;

procedure TFmDmic01.Rcinv1NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(Rcinv1);
  if not CondPay.Active then
    CondPay.Open;
  Rcinv1Flag.AsString := 'R';
  Rcinv1RECVLOC.AsString := SFMain.XLocat;
  Rcinv1RECVDT.AsDateTime := Date;
  Rcinv1USERID.AsString := SFMain.XUser_ID;
  Rcinv1time1.AsDateTime := Now;
  Rcinv1Officcod.AsString := SFMain.XOffCod;
end;

procedure TFmDmic01.QArpaytrn1BILLDTValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  if ICinvFLAG.ASstring = '1' then
  begin
    if not QDBConfig.Active then
      QDBConfig.Open;
    if QDBConfig.Fieldbyname('C_BLCS').asstring <> 'Y' then
    begin
      HF := 'H_BLNO';
      LF := 'L_BLNO';
      LV := QArpaytrn1LOCAT.asstring;
      DV := QArpaytrn1BILLDT.asDatetime;
      if QArpaytrn1UpdateStatus.Value = 'Inserted' then
      begin
        sqltxt := 'SELECT MAX(BILLNO) AS MAXNO FROM ARPAYTRN WHERE LOCAT=:EDIT1 AND ' +
          'SUBSTR(BILLNO,2,2)=:EDIT2 AND SUBSTR(BILLNO,5,2)=:EDIT3 AND SUBSTR(BILLNO,7,2)=:EDIT4';

        if Duplicate then
          QArpaytrn1BILLNO.Asstring := MAXNO(HF, LF, LV, sqltxt, DV)
        else
          QArpaytrn1BILLNO.Asstring := RunNo01(HF, LF, LV, DV);
      end;
    end
    else
      QArpaytrn1BILLNO.Asstring := QArpaytrn1INVNO.Asstring;
  end;
end;

procedure TFmDmic01.QArpaytrn1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
        'Inserted', 'Deleted');
begin
  if QArpaytrn1.CachedUpdates then
    QArpaytrn1UpdateStatus.Value := UpdateStatusStr[QArpaytrn1.UpdateStatus];
end;

procedure TFmDmic01.QArpaytrn1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QArpaytrn1);
  QArpaytrn1LOCAT.Asstring := IcinvINVLOC.Asstring;
  QArpaytrn1.Fieldbyname('UserID').Asstring := SFMain.XUser_id;
  QArpaytrn1.Fieldbyname('Time1').Asdatetime := Now;
  QArpaytrn1.Fieldbyname('SYSTM').Asstring := 'IC';
  QArpaytrn1Flag.Asstring := '1';
  QArpaytrn1BILLDT.Asdatetime := IcinvINVDATE.Asdatetime;
  QArpaytrn1PAYTYP.Asstring := '01';
  QArpaytrn1CUSCODE.Asstring := IcinvCUSCOD.Asstring;
  if (IcinvDEPOSTAX.Asstring = '') and (IcinvDeposamt.AsFloat > 0) then
    QArpaytrn1CSHAMT.Asfloat := IcinvNETPRC.Asfloat - IcinvDeposamt.AsFloat
  else
    QArpaytrn1CSHAMT.Asfloat := IcinvNETPRC.Asfloat;
  QArpaytrn1INVNO.Asstring := IcinvINVNO.Asstring;
  QArpaytrn1PAYCONT.Asstring := '1';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname('C_BLCS').asstring = 'Y' then
    QArpaytrn1BILLNO.Asstring := QArpaytrn1INVNO.Asstring;
end;

procedure TFmDmic01.QArpaytrn1CSHAMTValidate(Sender: TField);
var
  V1, V2: Double;
begin
  with FmDmic01.Qtmpicinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT INVNO,PAID,TAXREFNO,NETPRC,DEPOSTNO,DEPOSTAX FROM IC_INVOI WHERE INVNO =:XINVNO');
    PARAMS[0].ASSTRING := FmDmic01.IcinvINVNO.Asstring;
    OPEN;
  end;

  if FRound(FmDmic01.QArpaytrn1.FieldByName('CSHAMT').AsFloat +
    FmDmic01.QArpaytrn1.FieldByName('CHQAMT').AsFloat + FmDmic01.QArpaytrn1.FieldByName('BANKAMT').AsFloat +
    FmDmic01.QArpaytrn1.FieldByName('CREDITAMT').AsFloat, 2) > FmDmic01.Qtmpicinv.FieldByName('NETPRC').AsFloat then
    sfmain.RaiseException('ยอดรวมมากกว่ายอดที่ต้องชำระจริง..!');

  FmDmic01.QArpaytrn1.FieldByName('TOTAL').AsFloat := FRound(FmDmic01.QArpaytrn1.FieldByName('CSHAMT').AsFloat +
    FmDmic01.QArpaytrn1.FieldByName('CHQAMT').AsFloat + FmDmic01.QArpaytrn1.FieldByName('BANKAMT').AsFloat +
    FmDmic01.QArpaytrn1.FieldByName('CREDITAMT').AsFloat, 2);

  FmDmic01.QArpaytrn1.FieldByName('NETTOT').AsFloat := FmDmic01.QArpaytrn1.FieldByName('TOTAL').AsFloat;
  V2 := FmDmic01.ICINV.FieldByName('NETPRC').AsFloat - IcinvDeposamt.AsFloat;
  V1 := V2 - FmDmic01.QArpaytrn1.FieldByName('TOTAL').AsFloat;
  if (V1 > 0) then
  begin
    FmDmic01.QArpaytrn1.FieldByName('DISAMT').AsFloat := V1;
    FmDmic01.QArpaytrn1.FieldByName('ADDAMT').AsFloat := 0;
  end
  else
  begin
    FmDmic01.QArpaytrn1.FieldByName('ADDAMT').AsFloat := ABS(V1);
    FmDmic01.QArpaytrn1.FieldByName('DISAMT').AsFloat := 0;
  end;
end;

procedure TFmDmic01.QArpaytrn1CHQAMTValidate(Sender: TField);
begin
  QArpaytrn1CSHAMTValidate(QArpaytrn1CHQAMT);
end;

procedure TFmDmic01.QArpaytrn1AfterPost(DataSet: TDataSet);
begin
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
    if QTmpICInv.Active then
      if (QTmpICInv.ApplyUpdates = 0) then
        QTmpICInv.CommitUpdates
      else
        raise Exception.Create(QTmpICInv.RowError.Message);
    if QArChq.Active then
      if (QArChq.ApplyUpdates = 0) then
        QArChq.CommitUpdates
      else
        raise Exception.Create(QArChq.RowError.Message);
    if QArpaytrn_Typ.Active then
      if (QArpaytrn_Typ.ApplyUpdates = 0) then
        QArpaytrn_Typ.CommitUpdates
      else
        raise Exception.Create(QArpaytrn_Typ.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QArpaytrn1.Edit;
    raise;
  end;
  //
  with QArpaytrn1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  *  FROM  ARPAYTRN WHERE BILLNO=:0');
    Params[0].AsString := SHWBILL;
    Open;
  end;
  with QArpaytrn_Typ do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT  *  FROM  ARPAYTRN_TYP WHERE BILLNO=:0');
    Params[0].AsString := SHWBILL;
    Open;
  end;
end;

procedure TFmDmic01.QArpaytrn1BeforePost(DataSet: TDataSet);
begin
  SHWBILL := QArpaytrn1BILLNO.Asstring;
  if QArpaytrn1Updatestatus.Value = 'Inserted' then
  begin
    //
    if Duplicate then
      QArpaytrn1BILLDTValidate(QArpaytrn1BILLDT);
    //
    FmDmic01.Qtmpicinv.Edit;
    FmDmic01.Qtmpicinv.Fieldbyname('PAID').Asfloat := FmDmic01.Qtmpicinv.Fieldbyname('NETPRC').Asfloat;
    FmDmic01.Qtmpicinv.Fieldbyname('TAXREFNO').Asstring := QArpaytrn1BILLNO.Asstring;
    FmDmic01.Qtmpicinv.Post;
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

 { If FmDmic01.QArpaytrn1CancelId.AsString<>'' Then
  Begin
    FmDmic01.Qtmpicinv.Edit;
    FmDmic01.Qtmpicinv.Fieldbyname('PAID').Asfloat      := 0;
    FmDmic01.Qtmpicinv.Fieldbyname('TAXREFNO').Asstring := '';
    FmDmic01.Qtmpicinv.Post;
  end;
  }
end;

procedure TFmDmic01.PkinvBeforeDelete(DataSet: TDataSet);
var
  Xflag: string;
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

  //***** Delete Pktran*****
  Pktran.AfterDelete := Nil;
  Pktran.first;
  while not Pktran.Eof do
    Pktran.delete;
end;

procedure TFmDmic01.IcTranBeforeDelete(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := IcTranINVDATE.AsdateTime;
  Xord := IcTranQTYORD.AsFloat;
  Xqty := IcTranQTYOUT.AsFloat;
  Xpart := IcTranPARTNO.Asstring;
  Xlocat := IcTranINVLOC.Asstring;
  Xflag := IcTranFLAG.Asstring;

   //UpdStock(XQty,Xcost,XPART,XLOCAT,'1','+',XDATE);
end;

procedure TFmDmic01.QIctrnBeforeDelete(DataSet: TDataSet);
begin
  //***** Move Delete Record *To CanicTr ****

end;

procedure TFmDmic01.PkinvOFFICCODValidate(Sender: TField);
begin
  with QValid do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CODE FROM OFFICER WHERE CODE =:XEdit');
    PARAMS[0].ASSTRING := FmDmic01.PkinvOFFICCOD.asstring;
    Open;
  end;
  if QValid.Bof and QValid.Eof then
    SFmain.RaiseException('ไม่พบรหัสพนักงานรหัสนี้');
end;

procedure TFmDmic01.PkinvCUSCODValidate(Sender: TField);
begin
  with QValid do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTMAST WHERE CUSCOD =:XEdit');
    PARAMS[0].ASSTRING := FmDmic01.PkinvCUSCOD.asstring;
    Open;
    if QValid.Bof and QValid.Eof then
      SFmain.RaiseException('ไม่พบรหัสลูกค้านี้');
  end;
  FmDmic01.PkinvSallev.asstring := QValid.Fieldbyname('Sallev').Asstring;
  CheckCrdt := 'Y';
end;

procedure TFmDmic01.RcinvAPCODEValidate(Sender: TField);
begin
  with QValid do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT APCODE FROM APMAST WHERE APCODE =:XEdit');
    PARAMS[0].ASSTRING := RcinvAPCODE.asstring;
    Open;
  end;
  if QValid.Bof and QValid.Eof then
    SFmain.RaiseException('ไม่พบข้อมูลนี้');
end;

procedure TFmDmic01.RcinvPONOValidate(Sender: TField);
begin
  with QValid do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PONO FROM PO_INVOI WHERE PONO =:XPONO');
    PARAMS[0].ASSTRING := RcinvPONO.Asstring;
    Open;
  end;
  if (QValid.Bof) and (QValid.Eof) then
    SFmain.RaiseException('ไม่มีข้อมูล');
end;

procedure TFmDmic01.QainvCUSCODValidate(Sender: TField);
begin
  with QValid do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CUSCOD FROM CUSTMAST WHERE CUSCOD =:XEdit');
    PARAMS[0].ASSTRING := QainvCUSCOD.asstring;
    Open;
  end;
  if QValid.Bof and QValid.Eof then
    SFmain.RaiseException('ไม่พบข้อมูลนี้');
end;

procedure TFmDmic01.TmpajtrAfterOpen(DataSet: TDataSet);
begin
  Qinvmst10.Open;
end;

procedure TFmDmic01.AdjTranNewRecord(DataSet: TDataSet);
begin
  XDate := FmDmic01.ADJinvAdjDATE.AsdateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  ClearAsFloat(AdjTran);
  AdjTranAdjno.Asstring := AdjinvAdjno.Asstring;
  AdjTranAdjloc.asstring := AdjinvAdjloc.Asstring;
  AdjTranAdjdate.Asstring := AdjinvAdjdate.Asstring;
  AdjTranQTYOUT.AsFloat := 0;
  AdjtranYear1.Asstring := FloatTostr(Xyear);
  AdjTranUSERID.AsString := SFMain.XUser_ID;
  AdjTrantime1.AsDateTime := now;
  AdjTranFLAG.Asstring := AdjinvFLAG.Asstring;
end;

procedure TFmDmic01.PkTranBeforeClose(DataSet: TDataSet);
begin
  FmDmic01.Qinvmst2.Close;
end;

procedure TFmDmic01.PkinvBeforeClose(DataSet: TDataSet);
begin
  if Pktran.Active then
    Pktran.Close;
  if QLastno.Active then
    QLastno.Close;
end;

procedure TFmDmic01.RcinvBeforeClose(DataSet: TDataSet);
begin
  if Rctran.Active then
    Rctran.Close;
  if QLastno.Active then
    QLastno.Close;
end;

procedure TFmDmic01.RctranBeforeClose(DataSet: TDataSet);
begin
  Qinvmst1.Close;
end;

procedure TFmDmic01.AdjinvBeforeClose(DataSet: TDataSet);
begin
  if Adjtran.Active then
    Adjtran.Close;
  if QLastno.Active then
    QLastno.Close;
end;

procedure TFmDmic01.AdjTranBeforeClose(DataSet: TDataSet);
begin
  Qinvmst8.Close;
end;

procedure TFmDmic01.RttranBeforeClose(DataSet: TDataSet);
begin
  Qinvmst4.Close;
end;

procedure TFmDmic01.RtinvBeforeClose(DataSet: TDataSet);
begin
  if RTtran.Active then
    RTtran.Close;
  if QLastno.Active then
    QLastno.Close;
  if TaxSal.Active then
    TaxSal.Close;
  if Qarinvoi.Active then
    Qarinvoi.Close;
end;

procedure TFmDmic01.MvtranBeforeClose(DataSet: TDataSet);
begin
  FmDmic01.Qinvmst5.Close;
end;

procedure TFmDmic01.MvInvBeforeClose(DataSet: TDataSet);
begin
  if Mvtran.Active then
    Mvtran.Close;
  if QLastno.Active then
    QLastno.Close;
end;

procedure TFmDmic01.RcinvCREDTMValidate(Sender: TField);
begin
  RcinvINVDUE.Asdatetime := RcinvINVDATE.Asdatetime + RcinvCREDTM.Asfloat;
end;

procedure TFmDmic01.IcinvAfterCancel(DataSet: TDataSet);
begin
  if Icinv.Active then
    Icinv.CancelUpdates;
  if Ictran.Active then
    Ictran.CancelUpdates;
  if TaxSal.Active then
    TaxSal.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
  if QPkinv.Active then
    QPkinv.CancelUpdates;
end;

procedure TFmDmic01.QArpaytrn1AfterCancel(DataSet: TDataSet);
begin
  if QArpaytrn1.Active then
    QArpaytrn1.CancelUpdates;
  if QLastNo.Active then
    QLastNo.CancelUpdates;
  if QTmpICInv.Active then
    QTmpICInv.CancelUpdates;
  if QArChq.Active then
    QArChq.CancelUpdates;
  if QArpaytrn_Typ.Active then
    QArpaytrn_Typ.CancelUpdates;
end;

procedure TFmDmic01.IcinvCREDTMValidate(Sender: TField);
begin
  IcinvINVDUE.Asdatetime := IcinvINVDATE.Asdatetime + IcinvCREDTM.Asfloat;
end;

procedure TFmDmic01.Rcinv1BeforeClose(DataSet: TDataSet);
begin
  if Rctrn1.Active then
    Rctrn1.Close;
  if QLastno.Active then
    QLastno.Close;
end;

procedure TFmDmic01.RctranBeforePost(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost, XBAR: string;
  Xord, Xqty, Xcost: Double;
  temp: string;
begin
{  If FmDmic01.RctranAPCODE.Asstring = '' Then
    SFmain.RaiseException('กรุณากรอกรหัสเจ้าหนี้'); }
  if FmDmic01.RctranQTYRECV.AsFloat = 0 then
    SFmain.RaiseException('จำนวนรับเป็น 0');
  if (FmDmic01.RctranQTYORD.AsFloat< FmDmic01.RctranQTYRECV.AsFloat)
    and (FmDmic01.Rctranpono.Asstring <> '') then
    SFmain.RaiseException('จำนวนที่รับมากกว่าจำนวนที่สั่ง');

  XDate := RctranRECVDATE.AsdateTime;
  Xord := RctranQTYORD.AsFloat;
  Xqty := RctranQTYRECV.AsFloat;
  Xpart := RctranPARTNO.Asstring;
  Xlocat := RctranRECVLOC.Asstring;
  Xflag := RctranFLAG.Asstring;
  Xcost := RctranNETCOST.Asfloat - (RctranVatCOST.Asfloat / RctranQTYRECV.AsFloat);

  if RctranUpdateStatus.Value = 'Inserted' then
   //If ((RctranUpdateStatus.Value='Inserted') or (RctranUpdateStatus.Value='Modified')) Then
  begin
    Avgcost(Xqty, Xcost, Xpart, Xlocat, XDATE);
    RctranAvgCost.Asfloat := TmpAvgcost;
  end;

  if FmDmic01.RcinvVATTYPE.Asstring = '1' then
  begin
    Net := Fround(FmDmic01.RctranNettot.AsFloat * (100 / (100 + FmDmic01.RcinvVatrt.AsFloat)), 2);
    FmDmic01.RctranVatcost.AsFloat := (FmDmic01.RctranNettot.AsFloat - Net) / RctranQTYRECV.AsFloat;
  end;
end;

procedure TFmDmic01.QaTranBeforeClose(DataSet: TDataSet);
begin
  Qinvmst9.Close;
end;

procedure TFmDmic01.RcinvINVNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT INVNO FROM VIEW_AP WHERE INVNO=:EDIT ');
    Params[0].Asstring := RcinvINVNO.Asstring;
    Open;
    if not (Bof and Eof) then
      SFmain.RaiseException('มีเลขที่ใบส่งของนี้แล้วในระบบเจ้าหนี้');
  end;
end;

procedure TFmDmic01.IcinvBeforeClose(DataSet: TDataSet);
begin
  if Ictran.Active then
    Ictran.Close;
  if TaxSal.Active then
    TaxSal.Close;
  if QLastno.Active then
    QLastno.Close;
end;

procedure TFmDmic01.PkinvRTNPKValidate(Sender: TField);
begin
  if ((PkinvFLAG.Asstring = 'S') or (PkinvFLAG.Asstring = 'R')) and (PkinvRTNPK.Asstring <> '') then
  begin
    with Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PK_INVOI WHERE PKNO = :XPKNO');
      Params[0].Asstring := PkinvRTNPK.Asstring;
      Open;
      if Bof and Eof then
        SFmain.RaiseException('ไม่พบใบจ่ายใบนี้');
    end;
    if FmDmic01.Pkinv.FieldByName('Pklocat').Asstring <> Query2.FieldByName('Pklocat').Asstring then
      SFmain.RaiseException('รหัสสาขาที่รับคืนไม่ตรงกับใบเบิก');
    if FmDmic01.Query2.FieldByName('REFNO').Asstring <> '' then
      SFmain.RaiseException('ออกใบกำกับภาษีแล้ว ให้ทำใบลดหนี้แทน');

    FmDmic01.Pkinv.FieldByName('CUSCOD').Asstring := FmDmic01.Query2.FieldByName('CUSCOD').Asstring;
    FmDmic01.Pkinv.FieldByName('VATTYPE').Asstring := FmDmic01.Query2.FieldByName('VATTYPE').Asstring;
    FmDmic01.Pkinv.FieldByName('SALLEV').Asstring := FmDmic01.Query2.FieldByName('SALLEV').Asstring;
    FmDmic01.Pkinv.FieldByName('DISCT').AsFloat := FmDmic01.Query2.FieldByName('DISCT').AsFloat;

    if PkinvFLAG.Asstring = 'S' then
    begin
      FmDmic01.Pkinv.FieldByName('JOBNO').Asstring := FmDmic01.Query2.FieldByName('JOBNO').Asstring;
      FmDmic01.Pkinv.FieldByName('SVCOLOR').Asstring := FmDmic01.Query2.FieldByName('SVCOLOR').Asstring;
    end;
    {
    If PkinvFLAG.Asstring = 'R' Then
    Begin
      FmDmic01.Pkinv.FieldByName('REFNO').Asstring   := 'RETPART';
      FmDmic01.Pkinv.FieldByName('REFDAT').Asdatetime := PkinvPKDATE.AsDateTime;
    end
    }
  end;
end;

procedure TFmDmic01.RtinvAfterEdit(DataSet: TDataSet);
begin
  RtinvTOTPRC.Asfloat := RtinvTOTPRC.Asfloat;
end;

procedure TFmDmic01.IcTranBeforeClose(DataSet: TDataSet);
begin
  Qinvmst3.Close;
end;

procedure TFmDmic01.PkTranCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if PkTran.CachedUpdates then
    PkTranUpdateStatus.Value := UpdateStatusStr[PkTran.UpdateStatus];
end;

procedure TFmDmic01.UpdStock(Xqty, Newcost: Double; XPART, XLOCAT, XType, Stat: string; XDATE: Tdatetime);
var
  Mon, I: word;
begin
 { DecodeDate(XDate, XYear, XMonth, XDay);
  Mon := XMonth;

  For I:=1 to Mon Do
    Qty[I]:= 0;

  While Mon <= 12 do
  Begin
    If Stat='+' Then
      Qty[mon]:= Xqty
    Else
      Qty[mon]:= -Xqty;
    Mon := Mon + 1;
  end;

  With QInvanls Do
  Begin
    Close;
    Sql.Clear;
    If Xtype='1' Then
     Sql.Add('UPDATE INVANLS SET ONHN_1=ONHN_1+:1,ONHN_2=ONHN_2+:2,ONHN_3=ONHN_3+:3,'+
     'ONHN_4=ONHN_4+:4,ONHN_5=ONHN_5+:5,ONHN_6=ONHN_6+:6,ONHN_7=ONHN_7+:7,ONHN_8=ONHN_8+:8,'+
     'ONHN_9=ONHN_9+:9,ONHN_10=ONHN_10+:10,ONHN_11=ONHN_11+:11,ONHN_12=ONHN_12+:12 '+
     'WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');

    If Xtype='2' Then
     Sql.Add('UPDATE INVANLS SET ALLO_1=ALLO_1+:1,ALLO_2=ALLO_2+:2,ALLO_3=ALLO_3+:3,'+
     'ALLO_4=ALLO_4+:4,ALLO_5=ALLO_5+:5,ALLO_6=ALLO_6+:6,ALLO_7=ALLO_7+:7,ALLO_8=ALLO_8+:8,'+
     'ALLO_9=ALLO_9+:9,ALLO_10=ALLO_10+:10,ALLO_11=ALLO_11+:11,ALLO_12=ALLO_12+:12 '+
     'WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');

    If Xtype='3' Then
      Sql.Add('UPDATE INVANLS SET ONHN_1=ONHN_1+:1,ONHN_2=ONHN_2+:2,ONHN_3=ONHN_3+:3,'+
      'ONHN_4=ONHN_4+:4,ONHN_5=ONHN_5+:5,ONHN_6=ONHN_6+:6,ONHN_7=ONHN_7+:7,ONHN_8=ONHN_8+:8,'+
      'ONHN_9=ONHN_9+:9,ONHN_10=ONHN_10+:10,ONHN_11=ONHN_11+:11,ONHN_12=ONHN_12+:12, '+
      'ALLO_1=ALLO_1+:13,ALLO_2=ALLO_2+:14,ALLO_3=ALLO_3+:15,'+
      'ALLO_4=ALLO_4+:16,ALLO_5=ALLO_5+:17,ALLO_6=ALLO_6+:18,ALLO_7=ALLO_7+:19,ALLO_8=ALLO_8+:20,'+
      'ALLO_9=ALLO_9+:21,ALLO_10=ALLO_10+:22,ALLO_11=ALLO_11+:23,ALLO_12=ALLO_12+:24 '+
      'WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');

    If Xtype='3' Then
    Begin
      Params[0].Asfloat  := Qty[1];
      Params[1].Asfloat  := Qty[2];
      Params[2].Asfloat  := Qty[3];
      Params[3].Asfloat  := Qty[4];
      Params[4].Asfloat  := Qty[5];
      Params[5].Asfloat  := Qty[6];
      Params[6].Asfloat  := Qty[7];
      Params[7].Asfloat  := Qty[8];
      Params[8].Asfloat  := Qty[9];
      Params[9].Asfloat  := Qty[10];
      Params[10].Asfloat := Qty[11];
      Params[11].Asfloat := Qty[12];

      Params[12].Asfloat  := Qty[1];
      Params[13].Asfloat  := Qty[2];
      Params[14].Asfloat  := Qty[3];
      Params[15].Asfloat  := Qty[4];
      Params[16].Asfloat  := Qty[5];
      Params[17].Asfloat  := Qty[6];
      Params[18].Asfloat  := Qty[7];
      Params[19].Asfloat  := Qty[8];
      Params[20].Asfloat  := Qty[9];
      Params[21].Asfloat  := Qty[10];
      Params[22].Asfloat := Qty[11];
      Params[23].Asfloat := Qty[12];

      Params[24].Asstring:= XPart;
      Params[25].Asstring:= XLocat;
      Params[26].Asstring:= Floattostr(XYEAR);
    end
    Else
    begin
      Params[0].Asfloat  := Qty[1];
      Params[1].Asfloat  := Qty[2];
      Params[2].Asfloat  := Qty[3];
      Params[3].Asfloat  := Qty[4];
      Params[4].Asfloat  := Qty[5];
      Params[5].Asfloat  := Qty[6];
      Params[6].Asfloat  := Qty[7];
      Params[7].Asfloat  := Qty[8];
      Params[8].Asfloat  := Qty[9];
      Params[9].Asfloat  := Qty[10];
      Params[10].Asfloat := Qty[11];
      Params[11].Asfloat := Qty[12];

      Params[12].Asstring:= XPart;
      Params[13].Asstring:= XLocat;
      Params[14].Asstring:= Floattostr(XYEAR);
    end;
    If Not QInvanls.Prepared then QInvanls.Prepare;
    ExecSql;
  end;
  }
end;

procedure TFmDmic01.PkinvBeforeCancel(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag: string;
  Xord, Xqty, Xcost, AvCost: Double;
begin
{  Pktran.DisableControls;
  PkTran.First;
  While Not Pktran.Eof Do
  Begin
    XDate   := PkinvPKDATE.AsdateTime;
    XOrd    := PktranQTYORD.AsFloat;
    XQty    := PktranQTYOut.AsFloat;
    XPart   := PktranPartno.Asstring;
    XFlag   := PktranFlag.Asstring;
    XLocat  := PktranPkLocat.Asstring;

    If PktranUpdateStatus.Value='Inserted' Then
    Begin
     if (XFlag='1')Or(XFlag='2')Or(XFlag='3')Or(XFlag = 'B') Then
     Begin
       //UpdStock(XQty,Xcost,XPART,XLOCAT,'2','+',XDATE);
       UpdDemn(XOrd,XQty,XPART,XLOCAT,'-',XDATE);
     End;
     if (XFlag='R') Or (XFlag='S') Then
     Begin
       //UpdStock(XQty,Xcost,XPART,XLOCAT,'2','-',XDATE);
       UpdDemn(XOrd,XQty,XPART,XLOCAT,'+',XDATE);
     End;
    End;
    PkTran.Next;
  End;
  Pktran.EnableControls;
  }
end;

procedure TFmDmic01.UpdDemn(XOrd, XQty: Double; XPART, XLOCAT, Stat: string; XDATE: Tdatetime);
var
  Mon, I: word;
begin
  DecodeDate(XDATE, XYear, XMonth, XDay);
  Mon := XMonth;

  for I := 1 to 12 do
  begin
    Ord[I] := 0;
    Qty[I] := 0;
  end;

  if Stat = '+' then
  begin
    Ord[Mon] := XOrd;
    Qty[Mon] := XQty;
  end
  else
  begin
    Ord[Mon] := -XOrd;
    Qty[Mon] := -XQty;
  end;

  with QInvanls do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE INVANLS SET DEMN_1=DEMN_1+:1,DEMN_2=DEMN_2+:2,DEMN_3=DEMN_3+:3,' +
      'DEMN_4=DEMN_4+:4,DEMN_5=DEMN_5+:5,DEMN_6=DEMN_6+:6,DEMN_7=DEMN_7+:7,DEMN_8=DEMN_8+:8,' +
      'DEMN_9=DEMN_9+:9,DEMN_10=DEMN_10+:10,DEMN_11=DEMN_11+:11,DEMN_12=DEMN_12+:12, ' +
      'SALE_1=SALE_1+:13,SALE_2=SALE_2+:14,SALE_3=SALE_3+:15,' +
      'SALE_4=SALE_4+:16,SALE_5=SALE_5+:17,SALE_6=SALE_6+:18,SALE_7=SALE_7+:19,SALE_8=SALE_8+:20,' +
      'SALE_9=SALE_9+:21,SALE_10=SALE_10+:22,SALE_11=SALE_11+:23,SALE_12=SALE_12+:24 ' +
      'WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');

    Params[0].Asfloat := Ord[1];
    Params[1].Asfloat := Ord[2];
    Params[2].Asfloat := Ord[3];
    Params[3].Asfloat := Ord[4];
    Params[4].Asfloat := Ord[5];
    Params[5].Asfloat := Ord[6];
    Params[6].Asfloat := Ord[7];
    Params[7].Asfloat := Ord[8];
    Params[8].Asfloat := Ord[9];
    Params[9].Asfloat := Ord[10];
    Params[10].Asfloat := Ord[11];
    Params[11].Asfloat := Ord[12];

    Params[12].Asfloat := Qty[1];
    Params[13].Asfloat := Qty[2];
    Params[14].Asfloat := Qty[3];
    Params[15].Asfloat := Qty[4];
    Params[16].Asfloat := Qty[5];
    Params[17].Asfloat := Qty[6];
    Params[18].Asfloat := Qty[7];
    Params[19].Asfloat := Qty[8];
    Params[20].Asfloat := Qty[9];
    Params[21].Asfloat := Qty[10];
    Params[22].Asfloat := Qty[11];
    Params[23].Asfloat := Qty[12];

    Params[24].Asstring := XPART;
    Params[25].Asstring := XLOCAT;
    Params[26].Asstring := Floattostr(XYEAR);
    if not QInvanls.Prepared then
      QInvanls.Prepare;
    ExecSql;
  end;
end;

procedure TFmDmic01.RctranCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Rctran.CachedUpdates then
    RctranUpdateStatus.Value := UpdateStatusStr[Rctran.UpdateStatus];
end;

procedure TFmDmic01.RcinvBeforeCancel(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
 { Rctran.DisableControls;
  Rctran.First;
  While Not Rctran.Eof Do
  Begin
   XDate   := RctranRECVDATE.AsdateTime;
   XOrd    := RctranQTYORD.AsFloat;
   XQty    := RctranQTYRECV.AsFloat;
   XPart   := RctranPARTNO.Asstring;
   XLocat  := RctranRECVLOC.Asstring;
   XFlag   := RctranFLAG.Asstring;

   If RctranUpdateStatus.Value='Inserted' Then
   begin
     //UpdStock(XQty,Xcost,XPART,XLOCAT,'3','-',XDATE);
   end;

   Rctran.Next;
  End;
  Rctran.EnableControls;
  }
end;

procedure TFmDmic01.IcTranCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if IcTran.CachedUpdates then
    IcTranUpdateStatus.Value := UpdateStatusStr[IcTran.UpdateStatus];
end;

procedure TFmDmic01.IcinvBeforeCancel(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
 { Ictran.DisableControls;
  IcTran.First;
  While Not IcTran.Eof Do
  Begin
   XDate   := IcTranINVDATE.AsdateTime;
   XOrd    := IcTranQTYORD.AsFloat;
   XQty    := IcTranQTYOUT.AsFloat;
   XPart   := IcTranPARTNO.Asstring;
   XLocat  := IcTranINVLOC.Asstring;
   XFlag   := IcTranFLAG.Asstring;

   If IcTranUpdateStatus.Value='Inserted' Then
   begin
     //UpdStock(XQty,Xcost,XPART,XLOCAT,'1','+',XDATE);
   end;
   IcTran.Next;
  End;
  Ictran.EnableControls;
  }
end;

procedure TFmDmic01.RttranCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Rttran.CachedUpdates then
    RttranUpdateStatus.Value := UpdateStatusStr[Rttran.UpdateStatus];
end;

procedure TFmDmic01.RtinvBeforeCancel(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
 { Rttran.DisableControls;
  Rttran.First;
  While Not Rttran.Eof Do
  Begin
   XDate   := RttranRTNDT.AsdateTime;
   XOrd    := RttranQTYRTN.AsFloat;
   XQty    := RttranQTYRTN.AsFloat;
   XPart   := RttranPARTNO.Asstring;
   XLocat  := RttranRTNLOC.Asstring;
   XFlag   := RttranFLAG.Asstring;

   If RttranUpdateStatus.Value='Inserted' Then
   begin
     IF RtinvFLAG.Asstring = '6' THEN
     UpdStock(XQty,Xcost,XPART,XLOCAT,'3','+',XDATE);
     IF RtinvFLAG.Asstring = '7' THEN
     UpdStock(XQty,Xcost,XPART,XLOCAT,'3','-',XDATE);

   end;

   Rttran.Next;
  End;
  Rttran.EnableControls;
  }
end;

procedure TFmDmic01.AdjTranCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if AdjTran.CachedUpdates then
    AdjTranUpdateStatus.Value := UpdateStatusStr[AdjTran.UpdateStatus];
end;

procedure TFmDmic01.AdjinvBeforeCancel(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
{  AdjTran.DisableControls;
  AdjTran.First;
  While Not AdjTran.Eof Do
  Begin
   XDate   := AdjTranADJDATE.AsdateTime;
   XOrd    := AdjTranQTYOUT.AsFloat;
   XQty    := AdjTranQTYOUT.AsFloat;
   XPart   := AdjTranPARTNO.Asstring;
   XLocat  := AdjTranADJLOC.Asstring;
   XFlag   := AdjTranFLAG.Asstring;

   If AdjTranUpdateStatus.Value='Inserted' Then
   begin
     If AdjinvFLAG.Asstring <>'B' Then
     UpdStock(XQty,Xcost,XPART,XLOCAT,'3','-',XDATE);

   end;
   AdjTran.Next;
  End;
  AdjTran.EnableControls;
  }
end;

procedure TFmDmic01.Avgcost(XQty, Newcost: Double; XPART, XLOCAT: string; XDATE: Tdatetime);
var
  Mon, I: word;
  Oldcst, Oldqty: Double;
  Xoldc, Xoldq: string;
begin
  DecodeDate(XDATE, XYear, XMonth, XDay);
  Mon := XMonth;

  for I := 1 to Mon do
  begin
    Cst[I] := 0;
  end;

  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVANLS WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
    Params[0].Asstring := XPART;
    Params[1].Asstring := XLOCAT;
    Params[2].Asstring := Floattostr(XYEAR);
    Open;
  end;

  if not (Query1.Bof and Query1.Eof) then
  begin
    Xoldc := 'COST_' + inttostr(XMonth);
    Xoldq := 'AllO_' + inttostr(XMonth);
    Oldcst := Query1.Fieldbyname(Xoldc).asfloat;
    Oldqty := Query1.Fieldbyname(Xoldq).asfloat;

    if Oldqty > 0 then
      TmpAvgcost := ((Oldcst * Oldqty) + (XQty * Newcost)) / (Oldqty + XQty)
    else
      TmpAvgcost := Newcost;
  end;
end;

procedure TFmDmic01.MvtranCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
        'Inserted', 'Deleted');
begin
  if Mvtran.CachedUpdates then
    MvtranUpdateStatus.Value := UpdateStatusStr[Mvtran.UpdateStatus];
end;

procedure TFmDmic01.Rctrn1BeforeClose(DataSet: TDataSet);
begin
  FmDmic01.Qinvmst6.Close;
end;

procedure TFmDmic01.Rctrn1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if Rctrn1.CachedUpdates then
    Rctrn1UpdateStatus.Value := UpdateStatusStr[Rctrn1.UpdateStatus];
end;

procedure TFmDmic01.Rctrn1NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(Rctrn1);
  Rctrn1USERID.AsString := SFMain.XUser_ID;
  Rctrn1time1.AsDateTime := now;
end;

procedure TFmDmic01.IcinvDISCTValidate(Sender: TField);
var
  Pric1, SmPric1: Double;
begin
  if (FmDmic01.Icinv.State in Dseditmodes) and (FmDmic01.IcTran.Active) then
  begin
    FmDmic01.IcTran.DisableControls;
    FmDmic01.IcTran.first;
    while not FmDmic01.IcTran.Eof do
    begin
      IcTran.Edit;
      IcTranREDU1.Asfloat := IcinvDISCT.Asfloat;
      Pric1 := FRound(FmDmic01.IcTranUPRICE.Asfloat * (FmDmic01.IcTranREDU1.Asfloat / 100), 2);
      SmPric1 := FmDmic01.IcTranUPRICE.Asfloat - Pric1;
      FmDmic01.IcTranNETPRC.AsFloat := SmPric1;
      FmDmic01.IcTranTOTPRC.AsFloat := FRound((FmDmic01.IcTranNETPRC.AsFloat * IcTranQTYOUT.AsFloat), 2);
      FmDmic01.IcTran.Next;
    end;
    FmDmic01.IcTran.EnableControls;
    IcTranAfterPost(IcTran);
  end;
end;

procedure TFmDmic01.TmpAjIvBeforeDelete(DataSet: TDataSet);
begin
  Tmpajtr.AfterDelete := Nil;
  Tmpajtr.First;
  while not Tmpajtr.Eof do
    Tmpajtr.Delete;
end;

procedure TFmDmic01.FmDmic01Create(Sender: TObject);
begin
  CondPay.Open;
  QDBConfig.Open;
  FActive := False;
end;

procedure TFmDmic01.PkinvSALTYPEValidate(Sender: TField);
begin
  {With QValid Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SALTYPE WHERE SLCODE =:XEdit');
    PARAMS[0].ASSTRING := FmDmic01.PkinvSALTYPE.asstring;
    Open;
    If QValid.Bof and QValid.Eof Then
    SFmain.RaiseException('ไม่พบรหัสประเภทการขาย');
    FmDmic01.PkinvDisct.asfloat   := QValid.Fieldbyname('SLDISC').Asfloat;
  end;}
end;

procedure TFmDmic01.PkinvEXDISAMTValidate(Sender: TField);
begin
  if PkTran.Active then
    PkTranAfterPost(PkTran);
end;

procedure TFmDmic01.IcinvEXDISAMTValidate(Sender: TField);
begin
  if IcTran.Active then
    IcTranAfterPost(IcTran);
end;

procedure TFmDmic01.RcinvEXDISAMTValidate(Sender: TField);
begin
  if RcTran.Active then
    RctranAfterPost(RcTran);
end;

procedure TFmDmic01.QIcothinvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QIcothinv.CachedUpdates then
    QIcothinvUpdateStatus.Value := UpdateStatusStr[QIcothinv.UpdateStatus];
end;

procedure TFmDmic01.QIcothinvNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QIcothinv);

  if not CondPay.Active then
    CondPay.Open;
  QIcothinvPAYTYPE.asstring := 'S';
  QIcothinvVatrt.AsFloat := Condpay.Fieldbyname('VatRt').Asfloat;
  QIcothinvLOCAT.AsString := SFMain.XLocat;
  QIcothinvOTHDATE.AsDateTime := Now;
  QIcothinvUSERID.AsString := SFMain.XUser_ID;
  QIcothinvtime1.AsDateTime := now;
  QIcothinvOfficcod.AsString := SFMain.XOffCod;
  QIcothinvFlag.asstring := Flag_A;
  QIcothinvTERM.Asfloat := 0;

  if Condpay.Fieldbyname('Vattype').Asstring <> '' then
    QIcothinvVATTYPE.Asstring := Condpay.Fieldbyname('Vattype').Asstring
  else
    QIcothinvVATTYPE.Asstring := '2';

  if Condpay.Fieldbyname('Disbath').Asstring <> '' then
    QIcothinvDISBATH.asstring := Condpay.Fieldbyname('Disbath').Asstring
  else
    QIcothinvDISBATH.asstring := 'N';
end;

procedure TFmDmic01.QIcothinvOTHDATEValidate(Sender: TField);
var
  HF, LF, HT, LT, LV, SQLTXT: string;
  DV: TDatetime;
begin
  LV := QIcothinv.FieldByName('LOCAT').Asstring;
  DV := QIcothinv.FieldByName('OTHDate').Asdatetime;

  if QIcothinvPAYTYPE.ASstring = 'S' then
  begin
    HF := 'H_OTHC';
    LF := 'L_OTHC';
  end;
  if QIcothinvPAYTYPE.ASstring = 'C' then
  begin
    HF := 'H_OTHD';
    LF := 'L_OTHD';
  end;
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    if QIcothinvUpdatestatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(OTHIVNO) AS MAXNO FROM ICOTHINV WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(OTHIVNO,2,2)=:EDIT2 AND SUBSTR(OTHIVNO,5,2)=:EDIT3 AND SUBSTR(OTHIVNO,7,2)=:EDIT4 ';
      if Duplicate then
        QIcothinvOTHIVNO.Asstring := MAXNO(HF, LF, LV, SQLTXT, DV)
      else
        QIcothinvOTHIVNO.Asstring := RunNo01(HF, LF, LV, DV);
    end;
  end;
end;

procedure TFmDmic01.QIcothinvLOCATValidate(Sender: TField);
begin
  QIcothinvOTHDATEValidate(QIcothinvOTHDATE);
end;

procedure TFmDmic01.QIcothinvOFFICCODValidate(Sender: TField);
begin
  with QValid do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CODE FROM OFFICER WHERE CODE =:XEdit');
    PARAMS[0].ASSTRING := QIcothinvOFFICCOD.asstring;
    Open;
  end;
  if QValid.Bof and QValid.Eof then
    SFmain.RaiseException('ไม่พบรหัสพนักงานรหัสนี้');
end;

procedure TFmDmic01.QIcothinvCUSCODValidate(Sender: TField);
begin
  with QValid do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTMAST WHERE CUSCOD =:XEdit');
    PARAMS[0].ASSTRING := QIcothinvCUSCOD.asstring;
    Open;
    if QValid.Bof and QValid.Eof then
      SFmain.RaiseException('ไม่พบรหัสลูกค้านี้');
  end;
  QIcothinvSallev.asstring := QValid.Fieldbyname('Sallev').Asstring;
end;

procedure TFmDmic01.QIcothinvAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QIcothinvOTHIVNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QIcothinv.Active then
      if (QIcothinv.ApplyUpdates = 0) then
        QIcothinv.CommitUpdates
      else
        raise Exception.Create(QIcothinv.RowError.Message);
    if QIcothtrn.Active then
      if (QIcothtrn.ApplyUpdates = 0) then
        QIcothtrn.CommitUpdates
      else
        raise Exception.Create(QIcothtrn.RowError.Message);
    if TaxSal.Active then
      if (TaxSal.ApplyUpdates = 0) then
        TaxSal.CommitUpdates
      else
        raise Exception.Create(TaxSal.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    if QArpaytrn.Active then
      if (QArpaytrn.ApplyUpdates = 0) then
        QArpaytrn.CommitUpdates
      else
        raise Exception.Create(QArpaytrn.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QIcothinv.Edit;
    raise;
  end;
  //
  with QIcothinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ICOTHINV WHERE OTHIVNO =:XPKNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
  with QIcothtrn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ICOTHTRN WHERE OTHIVNO =:XNO');
    PARAMS[0].ASSTRING := QIcothinvOthivno.Asstring;
    OPEN;
  end;
end;

procedure TFmDmic01.QIcothtrnNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QIcothtrn);
  QIcothtrnOTHIVNO.Asstring := QIcothinvOTHIVNO.Asstring;
  QIcothtrnLOCAT.Asstring := QIcothinvLOCAT.Asstring;
  QIcothtrnOTHDATE.Asdatetime := QIcothinvOTHDATE.Asdatetime;
  QIcothtrnFLAG.Asstring := QIcothinvFLAG.Asstring;
end;

procedure TFmDmic01.QIcothinvBeforePost(DataSet: TDataSet);
begin

  if QIcothinvUpdateStatus.Value = 'Inserted' then
  begin
    QIcothtrn.First;
    //Rerun
    if Duplicate then
    begin
      QIcothinvOTHDATEValidate(QIcothinvOTHDATE);
      //
      QIcothtrn.DisableControls;
      QIcothtrn.AfterPost := Nil;
      QIcothtrn.First;
      while not QIcothtrn.Eof do
      begin
        QIcothtrn.Edit;
        if QIcothtrnPARTNO.Asstring = '' then
          QIcothtrn.Delete
        else
          QIcothtrnOTHIVNO.Asstring := QIcothinvOTHIVNO.Asstring;
        QIcothtrn.Next;
      end;
      QIcothtrn.AfterPost := QIcothtrnAfterPost;
      QIcothtrn.EnableControls;
    end;
    if QIcothinvPaytype.Asstring = 'S' then
    begin
      QIcothinvBILLNO.Asstring := QIcothinvOTHIVNO.Asstring;
      QIcothinvBILLDT.Asdatetime := QIcothinvOTHDATE.Asdatetime;
    end;
  end;
end;

procedure TFmDmic01.QIcothtrnAfterPost(DataSet: TDataSet);
var
  XNetAmt, NetAmt, Totprc2, Smnettot: double;
  SNetAmt: string;
  bk: Tbookmark;
begin
  FmDmic01.QIcothtrn.DisableControls;
  Smnettot := 0;
  Totprc2 := 0;
  bk := FmDmic01.QIcothtrn.GetBookmark;

  FmDmic01.QIcothtrn.first;
  while not FmDmic01.QIcothtrn.Eof do
  begin
    Totprc2 := Totprc2 + FRound((QIcothtrnUprice.AsFloat * QIcothtrnQTYOUT.AsFloat), 2);
    Smnettot := Smnettot + FmDmic01.QIcothtrnTotPrc.AsFloat;
    FmDmic01.QIcothtrn.Next;
  end;
  if QIcothinv.state = Dsbrowse then
    QIcothinv.edit;
  FmDmic01.QIcothinvTotprc.AsFloat := Totprc2;
  FmDmic01.QIcothinvDISCAMT.AsFloat := Totprc2 - Smnettot + QIcothinvEXDISAMT.Asfloat;
  FmDmic01.QIcothinvBALANCE.AsFloat := Smnettot - QIcothinvEXDISAMT.Asfloat;

  if FmDmic01.QIcothinvVATTYPE.Asstring = '1' then
  begin
    FmDmic01.QIcothinvNettotal.AsFloat := FmDmic01.QIcothinvBALANCE.AsFloat;
    XNetAmt := FRound((FmDmic01.QIcothinvBALANCE.AsFloat * 100) / (100 + FmDmic01.QIcothinvVatrt.AsFloat), 2);
      //SNETAMT := floattostrf(XNETAMT,ffFixed,12,2);
      //NETAMT  := strtofloat(SNETAMT);
    FmDmic01.QIcothinvNETAMT.AsFloat := XNetAmt;
    FmDmic01.QIcothinvVatAmt.AsFloat := FmDmic01.QIcothinvBALANCE.AsFloat - FmDmic01.QIcothinvNETAMT.AsFloat;
  end
  else if FmDmic01.QIcothinvVATTYPE.Asstring = '2' then
  begin
    FmDmic01.QIcothinvNETAMT.AsFloat := FmDmic01.QIcothinvBALANCE.AsFloat;
      //SNETAMT := floattostrf((FmDmic01.QIcothinvNETAMT.AsFloat * (FmDmic01.QIcothinvVatrt.AsFloat/100)),ffFixed,12,2);
    FmDmic01.QIcothinvVatAmt.AsFloat := FRound((FmDmic01.QIcothinvNETAMT.AsFloat * (FmDmic01.QIcothinvVatrt.AsFloat / 100)), 2);
    FmDmic01.QIcothinvNettotal.AsFloat := FmDmic01.QIcothinvNETAMT.AsFloat + FmDmic01.QIcothinvVatAmt.AsFloat;
  end;
  QIcothtrn.EnableControls;
  FmDmic01.QIcothtrn.GotoBookMark(bk);
  FmDmic01.QIcothtrn.FreeBookmark(bk);
end;

procedure TFmDmic01.QIcothinvAfterCancel(DataSet: TDataSet);
begin
  if QIcothinv.Active then
    QIcothinv.CancelUpdates;
  if QIcothtrn.Active then
    QIcothtrn.CancelUpdates;
  if TaxSal.Active then
    TaxSal.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
  if QArpaytrn.Active then
    QArpaytrn.CancelUpdates;
end;

procedure TFmDmic01.QIcothinvTERMValidate(Sender: TField);
begin
  QIcothinvINVDUE.Asdatetime := QIcothinvOTHDATE.Asdatetime + QIcothinvTERM.Asfloat;
end;

procedure TFmDmic01.TmpajtrBeforeClose(DataSet: TDataSet);
begin
  Qinvmst10.Close;
end;

procedure TFmDmic01.QainvAfterCancel(DataSet: TDataSet);
begin
  if QAinv.Active then
    QAinv.CancelUpdates;
  if QAtran.Active then
    QAtran.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TFmDmic01.RtinvOFFICCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT1');
    Params[0].Asstring := RtinvOFFICCOD.Asstring;
    Open;
    if Bof and Eof then
      SFmain.RaiseException('ไม่พบรหัสพนักงาน');
  end;
end;

procedure TFmDmic01.QArchqNewRecord(DataSet: TDataSet);
begin
  FmDmic01.QArchq.FieldByName('BILLNO').Asstring := FmDmic01.QArpaytrn1.FieldByName('BILLNO').Asstring;
  FmDmic01.QArchq.FieldByName('LOCAT').Asstring := FmDmic01.QArpaytrn1.FieldByName('LOCAT').Asstring;
end;

procedure TFmDmic01.QArpaytrn1VAT3Validate(Sender: TField);
begin
  if Icinv.Active then
  begin
    QArpaytrn1VAT3AMT.Asfloat := FRound(IcinvNETAMT.Asfloat * QArpaytrn1VAT3.AsFloat / 100, 2);
    FmDmic01.QArpaytrn1.FieldByName('NETTOT').AsFloat := FRound((FmDmic01.QArpaytrn1.FieldByName('TOTAL').AsFloat -
      FmDmic01.QArpaytrn1VAT3AMT.Asfloat - QArpaytrn1DISAMT.AsFloat) + FmDmic01.QArpaytrn1ADDAMT.Asfloat, 2);
  end;
end;

procedure TFmDmic01.RcinvVATAMTValidate(Sender: TField);
begin
  RcinvTOTCOST.AsFloat := RcinvBALANCE.Asfloat + RcinvVATAMT.AsFloat;
end;

procedure TFmDmic01.PkTranCUSCODValidate(Sender: TField);
begin
  if PkTranCUSCOD.Asstring <> '' then
    with QValid do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CUSCOD FROM CUSTMAST WHERE CUSCOD =:XEdit');
      PARAMS[0].ASSTRING := FmDmic01.PkTranCUSCOD.asstring;
      Open;
      if QValid.Bof and QValid.Eof then
        SFmain.RaiseException('ไม่พบรหัสลูกค้านี้ในแฟ้มลูกค้า');
    end;
end;

procedure TFmDmic01.PkinvDISCTValidate(Sender: TField);
var
  Pric1, SmPric1: Double;
begin
  if (Pkinv.State in Dseditmodes) and (PkTran.Active) then
  begin
    PkTran.DisableControls;
    PKTran.first;
    while not PkTran.Eof do
    begin
      PkTran.Edit;
      if FmDmic01.PKtranNETFL.Asstring = 'N' then
        FmDmic01.PkTranREDU1.AsFloat := 0
      else
        PkTranREDU1.Asfloat := PkinvDISCT.Asfloat;
      Pric1 := FRound(PkTranUPRICE.Asfloat * (PkTranREDU1.Asfloat / 100), 2);
      SmPric1 := PkTranUPRICE.Asfloat - Pric1;
      PkTranNETPRC.AsFloat := SmPric1;
      PkTranTOTPRC.AsFloat := FRound((PKTranNETPRC.AsFloat * PKTranQTYOUT.AsFloat), 2);
      PkTran.Next;
    end;
    PkTran.EnableControls;

    PkTranAfterPost(PkTran);
  end;
end;

procedure TFmDmic01.QainvDISCTValidate(Sender: TField);
var
  Pric1, SmPric1: Double;
begin
  if (QaInv.State in Dseditmodes) and (QaTran.Active) then
  begin
    QaTran.DisableControls;
    QaTran.first;
    while not QaTran.Eof do
    begin
      QaTran.Edit;
      QaTranREDU1.Asfloat := QainvDISCT.Asfloat;
      Pric1 := FRound(QaTranUPRICE.Asfloat * (QaTranREDU1.Asfloat / 100), 2);
      SmPric1 := QaTranUPRICE.Asfloat - Pric1;
      QaTranNETPRC.AsFloat := SmPric1;
      QaTranTOTPRC.AsFloat := FRound((QaTranNETPRC.AsFloat * QaTranQTYOUT.AsFloat), 2);
      QaTran.Next;
    end;
    QaTran.EnableControls;

    QaTranAfterPost(QaTran);
  end;
end;

procedure TFmDmic01.IcinvDEPOSTNOValidate(Sender: TField);
begin
  if IcinvDEPOSTNO.Asstring <> '' then
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM APINVOI WHERE INVNO=:NO');
      Params[0].Asstring := IcinvDEPOSTNO.Asstring;
      Open;
      if Bof and Eof then
        SFmain.RaiseException('ไม่พบเลขที่มัดจำ');
      if Query1.Fieldbyname('Kang').Asfloat = 0 then
        SFmain.RaiseException('เงินมัดจำถูกล้างหนี้แล้ว');
      if Query1.Fieldbyname('VATTYPE').AsString = '1' then
        Icinv.Fieldbyname('Deposamt').AsFloat := Query1.Fieldbyname('NETTOTAL').Asfloat
      else
        Icinv.Fieldbyname('Deposamt').AsFloat := Query1.Fieldbyname('Balance').Asfloat;
      Icinv.Fieldbyname('DeposVAT').AsFloat := Query1.Fieldbyname('Vatamt').Asfloat;
      Icinv.Fieldbyname('DeposTax').Asstring := Query1.Fieldbyname('Taxno').Asstring;
    end;
  IcTranAfterPost(IcTran);
end;

procedure TFmDmic01.RctranAfterDelete(DataSet: TDataSet);
var
  Smnettot, Totprc2, Xvat: double;
  bk: Tbookmark;
begin
  Rctran.DisableControls;
  Xvat := FmDmic01.RcinvVatrt.AsFloat;
  Smnettot := 0;
  Totprc2 := 0;
  bk := FmDmic01.Rctran.GetBookmark;

  Rctran.first;
  while not Rctran.Eof do
  begin
    Totprc2 := Totprc2 + (RctranUcost.AsFloat * RctranQTYRECV.AsFloat);
    Smnettot := Smnettot + RctranNettot.AsFloat;
    FmDmic01.Rctran.Next;
  end;
  if Rcinv.State = Dsbrowse then
    Rcinv.Edit;

  FmDmic01.RcinvTOTAL.AsFloat := Smnettot; //Totprc2;
  FmDmic01.RcinvBALANCE.AsFloat := Smnettot - RcinvEXDISAMT.Asfloat;
  FmDmic01.RcinvDISCAMT.AsFloat := RcinvEXDISAMT.Asfloat; // (Totprc2 - Smnettot)+RcinvEXDISAMT.Asfloat;

  if FmDmic01.RcinvVATTYPE.Asstring = '1' then
  begin
    FmDmic01.RcinvVatAmt.AsFloat := FRound(FmDmic01.RcinvBALANCE.AsFloat * (Xvat / (100 + Xvat)), 2);
    FmDmic01.RcinvNETAMT.AsFloat := FmDmic01.RcinvBALANCE.AsFloat - FmDmic01.RcinvVatAmt.AsFloat;
    FmDmic01.RcinvTOTcost.AsFloat := FmDmic01.RcinvBALANCE.AsFloat;
  end
  else if FmDmic01.RcinvVATTYPE.Asstring = '2' then
  begin
    FmDmic01.RcinvNETAMT.AsFloat := FmDmic01.RcinvBALANCE.AsFloat;
    FmDmic01.RcinvVatAmt.AsFloat := FRound((FmDmic01.RcinvBALANCE.AsFloat * (Xvat / 100)), 2);
    FmDmic01.RcinvTOTcost.AsFloat := FmDmic01.RcinvNETAMT.AsFloat + FmDmic01.RcinvVatAmt.AsFloat;
  end;
  Rctran.EnableControls;
  Rctran.GotoBookMark(bk);
  Rctran.FreeBookmark(bk);
end;

procedure TFmDmic01.SoRctranStateChange(Sender: TObject);
begin
  if SoRctran.DataSet.State = dsbrowse then
  begin
    FmSTIn00.boo1 := false;
  end;
end;

procedure TFmDmic01.RtinvINVNOValidate(Sender: TField);
begin
  if RtinvINVNO.Asstring <> '' then
  begin
    if RtinvFlag.AsString = '7' then
    begin
      with Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('Select * from Taxsal where TAXNO=:edit1');
        Params[0].Asstring := RtinvINVNO.Asstring;
        Open;
        if not (bof and Eof) then
        begin
          if Query1.FieldByname('LOCAT').Asstring <> RtinvRTNLOC.AsString then
            SFmain.RaiseException('สาขาที่รับคืนไม่ตรงกับที่ออก ใบกำกับ');

          FmDmic01.RtinvTaxDt.AsdateTime := Query1.FieldByname('TaxDate').AsdateTime;
          FmDmic01.RtinvTAXREFNO.Asstring := Query1.FieldByname('TAXNO').Asstring;
          FmDmic01.RtinvJobno.Asstring := Query1.FieldByname('JOBNO').Asstring;
          FmDmic01.RtinvApcode.Asstring := Query1.FieldByname('Cuscod').Asstring;
          FmDmic01.RtinvPaytype.Asstring := Query1.FieldByname('Paytyp').Asstring;
          FmDmic01.RtinvInvDt.AsdateTime := Query1.FieldByname('TAXDATE').AsdateTime;
        end
        else
          SFmain.RaiseException('ไม่พบใบกำกับภาษี');
      end;
      //
      with Query2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('Select Invno,Invdue from IC_INVOI where INVNO=:edit1');
        Params[0].Asstring := RtinvInvno.Asstring;
        Open;
        if not (bof and eof) then
          FmDmic01.RtinvDuedate.AsdateTime := Query2.FieldByname('INVDUE').AsdateTime
        else
          FmDmic01.RtinvDuedate.AsdateTime := FmDmic01.RtinvRTNDT.AsdateTime;
      end;
    end;
    //
    if RtinvFlag.AsString = '6' then
    begin
      with FmDmic01.Query1 do
      begin
        close;
        sql.clear;
        sql.add('SELECT * FROM RC_INVOI WHERE INVNO =:0');
        Params[0].AsString := RtinvINVNO.Asstring;
        OPEN;
        if Bof and Eof then
          SFmain.RaiseException('ไม่พบเลขที่ใบรับสินค้า Taxno ' + RtinvINVNO.Asstring);
        if Query1.FieldByname('RECVLOC').Asstring <> RtinvRTNLOC.AsString then
          SFmain.RaiseException('สาขาที่ส่งคืนไม่ตรงกับที่รับสินค้า');
        FmDmic01.RtinvTaxDt.AsdateTime := FmDmic01.Query1.FieldByname('TaxDate').AsdateTime;
        FmDmic01.RtinvVattyp.Asstring := FmDmic01.Query1.FieldByname('Vattype').Asstring;
        FmDmic01.RtinvTAXREFNO.Asstring := FmDmic01.Query1.FieldByname('TAXNO').Asstring;
        FmDmic01.RtinvAPCODE.Asstring := FmDmic01.Query1.FieldByname('APCODE').Asstring;
        FmDmic01.RtinvInvDt.AsdateTime := FmDmic01.Query1.FieldByname('InvDate').AsdateTime;
        FmDmic01.RtinvDuedate.AsdateTime := FmDmic01.Query1.FieldByname('INVDUE').AsdateTime;
      end;
    end;
  end;
end;

procedure TFmDmic01.RcinvBeforeEdit(DataSet: TDataSet);
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * from PREPAYTRN where INVNO=:0 and PRECANFL <> ''C'' ');
    params[0].AsString := RcinvINVNO.Asstring;
    open;
    if RcinvINVNO.Asstring <> '' then
    begin
      if not (Eof and Bof) then
        sfmain.RaiseException('วางบิลเตรียมจ่ายแล้ว..แก้ไขไม่ได้!');
    end;
  end;

  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * from APPAYTRNGL where INVNO=:0 and APCANFL <> ''C'' ');
    params[0].AsString := RcinvINVNO.Asstring;
    open;
    if RcinvINVNO.Asstring <> '' then
    begin
      if not (Eof and Bof) then
        sfmain.RaiseException('จ่ายเจ้าหนี้แล้ว..แก้ไขไม่ได้!');
    end;
  end;
end;

procedure TFmDmic01.MvInvMOVTOValidate(Sender: TField);
begin
  if MvInvMOVTO.AsString = MvInvMOVFRM.AsString then
    SFmain.RaiseException('ไม่สามารถโอนภายใต้สาขาเดียวกันได้');
end;

procedure TFmDmic01.RctranPARTNOValidate(Sender: TField);
begin
  if FmDmic01.RcTranPartno.asstring = '' then
    sfmain.raiseException('ยังไม่บันทึกรหัสสินค้า');

   {   With FmDmic01.Query1 Do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC' );
        PARAMS[0].ASSTRING := FmDmic01.RcTranPartno.asstring;
        PARAMS[1].ASSTRING := FmDmic01.RcTranRecvloc.asstring;
        Open;
      end;

      If FmDmic01.Query1.Bof and FmDmic01.Query1.Eof Then
      Begin
        Application.CreateForm(TFsvmast,Fsvmast);
        With Fsvmast.Hquery1 Do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO LIKE :XPARTNO AND LOCAT=:Xloc' );
          PARAMS[0].ASSTRING := FmDmic01.RcTranPartno.asstring+'%';
          PARAMS[1].ASSTRING := FmDmic01.RcTranRecvloc.asstring;
          Open;
        end;

        If (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) Then
        begin
          Fsvmast.Close;
          sfmain.raiseException('ไม่พบรหัสสินค้า');
        end  Else
        begin
          If Fsvmast.Showmodal=mrok Then
             FmDmic01.RctranPARTNO.Asstring := Fsvmast.Hquery1.Fieldbyname('PARTNO').asstring;
             Fsvmast.Close;
        end;
      end;   }

  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT I.GROUP1,I.PARTNO,I.DESC1,G.PURDISC ,I.STDBUY,I.PRICE1,I.LSTBUY ' +
      'FROM INVENTOR I,GROUPMST G ' +
      'WHERE I.GROUP1=G.GROUPCOD AND I.PARTNO =:0 AND ' +
      'I.LOCAT = :1');
    PARAMS[0].ASSTRING := FmDmic01.RcTranPartno.asstring;
    PARAMS[1].ASSTRING := FmDmic01.RctranRECVLOC.asstring;
    Open;
    if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
      sfmain.raiseException('ไม่พบรหัสสินค้า');
  end;
      //
  if FmSTIn00.CheckBox1.Checked then
    FmDmic01.Rctran.FieldByname('UCOST').AsFloat := FmDmic01.Query1.Fieldbyname('PRICE1').Asfloat
  else
  begin
    if FmDmic01.Query1.Fieldbyname('STDBUY').Asfloat > 0 then
      FmDmic01.Rctran.FieldByname('UCOST').AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').Asfloat
    else
      FmDmic01.Rctran.FieldByname('UCOST').AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').Asfloat;
  end;
  FmDmic01.RctranREDU1.ASFloat := FmDmic01.Query1.Fieldbyname('PURDISC').Asfloat;

  //  เช็ครหัสซ่ำ
  if (Qtemp.Active) then
  begin
    cc := 0;
    Qtemp.First;
    while not (Qtemp.Eof) do
    begin
      if (Qtemp.FieldByName('PARTNO').AsString = Rctran.FieldByName('PARTNO').AsString)
        and (Qtemp.FieldByName('PONO').AsString = Rctran.FieldByName('PONO').AsString)
        and (Rctran.State = DsInsert) then
      begin
        cc := 1;
        sfmain.raiseException('รหัสสินค้า ' + rctran.FieldByName('PARTNO').AsString + ' ซ้ำ' +
          #13 + 'ถ้าต้องการแก้ไขให้ลบรหัสสินค้าแล้วเพิ่มใหม่');
      end
      else
        cc := 0;
      Qtemp.Next;
    end;
    val := cc;
  end;
  //
end;

procedure TFmDmic01.RctranUCOSTValidate(Sender: TField);
begin
  Ucost1 := (FmDmic01.RctranUcost.Asfloat * (FmDmic01.Rctranredu1.Asfloat / 100));
  SmUcost1 := FmDmic01.RctranUcost.Asfloat - Ucost1;
  Ucost2 := SmUcost1 * (FmDmic01.Rctranredu2.Asfloat / 100);
  SmUcost2 := SmUcost1 - Ucost2;
  Ucost3 := SmUcost2 * (FmDmic01.Rctranredu3.Asfloat / 100);
  SmUcost3 := SmUcost2 - Ucost3;
  FmDmic01.Rctran.FieldByname('Netcost').AsFloat := SmUcost3;
  FmDmic01.RctranNettot.AsFloat := StrTofloat(FloattostrF((FmDmic01.RctranNetCost.AsFloat * FmDmic01.RcTranQtyRecv.AsFloat), ffFixed, 15, 2));
  //
  if FmDmic01.RcinvVATTYPE.Asstring = '1' then
  begin
    Net := Fround(FmDmic01.RctranNettot.AsFloat * (100 / (100 + FmDmic01.RcinvVatrt.AsFloat)), 2);
    FmDmic01.RctranVatcost.AsFloat := FmDmic01.RctranNettot.AsFloat - Net;
  end;
end;

procedure TFmDmic01.RctranQTYORDValidate(Sender: TField);
begin
  FmDmic01.RctranQTYRECV.AsFloat := FmDmic01.RctranQTYORD.AsFloat;
end;

procedure TFmDmic01.RctranQTYRECVValidate(Sender: TField);
begin
  Ucost1 := (FmDmic01.RctranUcost.Asfloat * (FmDmic01.Rctranredu1.Asfloat / 100));
  SmUcost1 := FmDmic01.RctranUcost.Asfloat - Ucost1;
  Ucost2 := SmUcost1 * (FmDmic01.Rctranredu2.Asfloat / 100);
  SmUcost2 := SmUcost1 - Ucost2;
  Ucost3 := SmUcost2 * (FmDmic01.Rctranredu3.Asfloat / 100);
  SmUcost3 := SmUcost2 - Ucost3;
  FmDmic01.Rctran.FieldByname('Netcost').AsFloat := SmUcost3;
  FmDmic01.RctranNettot.AsFloat := StrTofloat(FloattostrF((FmDmic01.RctranNetCost.AsFloat * FmDmic01.RcTranQtyRecv.AsFloat), ffFixed, 15, 2));
  //
  if FmDmic01.RcinvVATTYPE.Asstring = '1' then
  begin
    Net := Fround(FmDmic01.RctranNettot.AsFloat * (100 / (100 + FmDmic01.RcinvVatrt.AsFloat)), 2);
    FmDmic01.RctranVatcost.AsFloat := FmDmic01.RctranNettot.AsFloat - Net;
  end;
end;

procedure TFmDmic01.RctranREDU1Validate(Sender: TField);
begin
  RctranUCOSTValidate(Sender);
end;

procedure TFmDmic01.RctranREDU2Validate(Sender: TField);
begin
  RctranUCOSTValidate(Sender);
end;

procedure TFmDmic01.RctranREDU3Validate(Sender: TField);
begin
  RctranUCOSTValidate(Sender);
end;

procedure TFmDmic01.RctranPONOValidate(Sender: TField);
begin
  if FmDmic01.RctranPONO.Asstring <> '' then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM PO_TRANS WHERE POLOCAT = :Edit1 AND PONO =:EDIT2 AND PARTNO=:Edit3');
      PARAMS[0].ASSTRING := FmDmic01.RctranRECVLOC.Asstring;
      PARAMS[1].ASSTRING := FmDmic01.RctranPONO.Asstring;
      PARAMS[2].ASSTRING := FmDmic01.RctranPARTNO.asstring;
      Open;
      if Bof and Eof then
        sfmain.raiseException('ไม่พบรหัสนี้ในแฟ้มข้อมูลสั่งซื้อ');
    end;
    FmDmic01.RctranQTYORD.AsFloat := FmDmic01.Query1.Fieldbyname('Balance').Asfloat;
    FmDmic01.RctranUCOST.AsFloat := FmDmic01.Query1.Fieldbyname('ORDCOST').AsFloat;
    FmDmic01.RctranRedu1.AsFloat := FmDmic01.Query1.Fieldbyname('REDU').AsFloat;
  end;
end;

procedure TFmDmic01.RctranDISCAMTValidate(Sender: TField);
begin
  FmDmic01.RctranNetcost.AsFloat := FmDmic01.RctranUcost.Asfloat - FmDmic01.RctranDiscamt.AsFloat;
  FmDmic01.RctranNettot.AsFloat := StrTofloat(FloattostrF((FmDmic01.RctranNetCost.AsFloat * FmDmic01.RcTranQtyRecv.AsFloat), ffFixed, 15, 2));
end;

procedure TFmDmic01.RttranPARTNOValidate(Sender: TField);
begin
  XDATE := FmDmic01.RtinvRTNDT.AsDateTime;
  DecodeDate(XDATE, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);

  if RtinvFlag.ASstring = '7' then
  begin
    if FmDmic01.RtinvJOBNO.Asstring = '' then
    begin
      with FmDmic01.Query1 do
      begin
        Close;
        SQL.Clear;
        if FmSTIn05.Buffree = '' then
        begin
          SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:0 ' +
            'AND INVLOC=:1 AND PARTNO=:2 ');
          Params[0].AsString := FmDmic01.RtinvInvno.Asstring;
          Params[1].AsString := FmDmic01.RtinvRTNLOC.Asstring;
          Params[2].AsString := FmDmic01.RttranPARTNO.Asstring;
        end
        else
        begin
          SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:0 ' +
            'AND INVLOC=:1 AND PARTNO=:2 AND FREE=:3');
          Params[0].AsString := FmDmic01.RtinvInvno.Asstring;
          Params[1].AsString := FmDmic01.RtinvRTNLOC.Asstring;
          Params[2].AsString := FmDmic01.RttranPARTNO.Asstring;
          Params[3].Asstring := FmSTIn05.Buffree;
        end;
        Open;
      end;
      FmSTIn05.Buffree := '';
      if not (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
      begin
//        FmDmic01.RttranPartno.Asstring := FmDmic01.Query1.Fieldbyname('Partno').Asstring;
        FmDmic01.RttranQtyinv.Asfloat := FmDmic01.Query1.Fieldbyname('QTYOUT').AsFloat;

        if FmDmic01.Query1.Fieldbyname('FREE').Asstring = 'Y' then
          FmDmic01.RttranUPRICE.Asfloat := 0
        else
          FmDmic01.RttranUPRICE.Asfloat := FmDmic01.Query1.Fieldbyname('Netprc').AsFloat;
        FmDmic01.Rttrancost.Asfloat := FmDmic01.Query1.Fieldbyname('Avgcost').AsFloat;
      end
      else
        sfmain.raiseException('ไม่พบรหัสสินค้า ในใบกำกับใบนี้');
    end;
  //
    if FmDmic01.RtinvJOBNO.Asstring <> '' then
    begin
      with FmDmic01.Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM PARTTRAN WHERE JOBNO =:XJOB AND ' +
          'PARTNO=:EDIT2 ');
        Params[0].AsString := FmDmic01.RtinvJOBNO.Asstring;
        Params[1].AsString := FmDmic01.RttranPARTNO.Asstring;
        Open;
      end;
      if not (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
      begin
//        FmDmic01.RttranPartno.Asstring := FmDmic01.Query1.Fieldbyname('Partno').Asstring;
        FmDmic01.RttranQtyinv.Asfloat := FmDmic01.Query1.Fieldbyname('QTY').AsFloat;
        FmDmic01.RttranUPRICE.Asfloat := FmDmic01.Query1.Fieldbyname('Netprc').AsFloat;
        FmDmic01.Rttrancost.Asfloat := FmDmic01.Query1.Fieldbyname('Avgcost').AsFloat;
      end
      else
        sfmain.raiseException('ไม่พบรหัสสินค้า ในใบกำกับใบนี้');
    end;

    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + cost + ',' + allo + ' FROM INVANLS WHERE ' +
        'PARTNO=:0 AND LOCAT=:1 AND YEAR1=:2');
      Params[0].Asstring := FmDmic01.RttranPartno.Asstring;
      Params[1].Asstring := FmDmic01.RttranRtnloc.Asstring;
      Params[2].Asstring := Inttostr(Xyear);
      if not FmDmic01.Query2.Prepared then
        FmDmic01.Query2.Prepare;
      Open;
    end;
    FmDmic01.RttranAvgCost.Asfloat := FmDmic01.Query2.Fieldbyname(Cost).Asfloat;
  end
  else if RtinvFlag.ASstring = '6' then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO IN ' +
        '(SELECT RECVNO FROM RC_INVOI WHERE INVNO=:edit1) ' +
        'AND PARTNO=:EDIT2 ');
      Params[0].AsString := FmDmic01.RttranTaxrefno.Asstring;
      Params[1].AsString := FmDmic01.RttranPARTNO.Asstring;
      Open;
    end;
    if not (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
    begin
      FmDmic01.RttranYear1.Asstring := FmDmic01.Query1.Fieldbyname('Year1').Asstring;
//      FmDmic01.RttranPartno.Asstring := FmDmic01.Query1.Fieldbyname('Partno').Asstring;
      FmDmic01.RttranQtyinv.Asfloat := FmDmic01.Query1.Fieldbyname('QTYRECV').AsFloat;
      FmDmic01.RttranUPRICE.Asfloat := FmDmic01.Query1.Fieldbyname('NETCOST').AsFloat;
      FmDmic01.RttranCOST.Asfloat := FmDmic01.Query1.Fieldbyname('NETCOST').AsFloat;
    end
    else
      sfmain.raiseException('รหัสสินค้าไม่มีใน Invoice นี้');
  //
    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + cost + ',' + allo + ' FROM INVANLS WHERE ' +
        'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
      Params[0].Asstring := FmDmic01.RttranPartno.Asstring;
      Params[1].Asstring := FmDmic01.RttranRtnloc.Asstring;
      Params[2].Asstring := Inttostr(Xyear);
      if not FmDmic01.Query2.Prepared then
        FmDmic01.Query2.Prepare;
      Open;
    end;
    FmDmic01.RttranAvgCost.Asfloat := FmDmic01.Query2.Fieldbyname(Cost).Asfloat;
  end;
end;

procedure TFmDmic01.RttranUPRICEValidate(Sender: TField);
begin
  FmDmic01.RttranNetprc.AsFloat := (FmDmic01.RttranUPrice.Asfloat * FmDmic01.RttranQTYRTN.Asfloat);
end;

procedure TFmDmic01.RttranQTYRTNValidate(Sender: TField);
begin
  if RtinvFlag.ASstring = '7' then
  begin

    if FmDmic01.RttranQTYINV.Asfloat < FmDmic01.RttranQTYRTN.Asfloat then
      sfmain.raiseException('ยอดจำนวนที่คืนมากกว่าจำนวนใน Invoice');
    FmDmic01.RttranNetprc.AsFloat := (FmDmic01.RttranUPrice.Asfloat * FmDmic01.RttranQTYRTN.Asfloat);
  end
  else if RtinvFlag.ASstring = '6' then
  begin
    if (NAllow = 'Y') and (FmDmic01.RttranQTYRTN.AsFloat > FmDmic01.Query2.FieldByName(Allo).AsFloat) then
      sfmain.raiseException('ในระบบ Setup ไม่อนุญาตให้สต็อกติดลบ');
  end;

  FmDmic01.RttranNETPRC.AsFloat := FRound(FmDmic01.RttranQTYRTN.AsFloat * FmDmic01.RttranUPRICE.AsFloat, 2);
end;

procedure TFmDmic01.MvtranPARTNOValidate(Sender: TField);
begin
  XDATE := FmDmic01.MvinvMovDT.AsdateTime;
  DecodeDate(XDATE, XYear, XMonth, XDay);
  COST := 'COST_' + inttostr(XMonth);
  Allo := 'Allo_' + inttostr(XMonth);

  if FmDmic01.MvtranPARTNO.asstring = '' then
    sfmain.raiseException('ยังไม่บันทึกรหัสสินค้า');

  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
    PARAMS[0].ASSTRING := FmDmic01.MvtranPARTNO.asstring;
    PARAMS[1].ASSTRING := FmDmic01.MvInvMOVFRM.asstring;
    Open;
  end;

  if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
  begin
    Application.CreateForm(TFsvmast, Fsvmast);
    with Fsvmast.Hquery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO LIKE :XPARTNO AND LOCAT=:XLOC');
      PARAMS[0].ASSTRING := FmDmic01.MvtranPARTNO.asstring + '%';
      PARAMS[1].ASSTRING := FmDmic01.MvInvMOVFRM.asstring;
      Open;
    end;
    if (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) then
    begin
      Fsvmast.Close;
      sfmain.raiseException('ไม่พบรหัสสินค้าในแฟ้มหลัก');
    end
    else
    begin
      if Fsvmast.Showmodal = mrok then
        FmDmic01.MvtranPARTNO.asstring := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
      Fsvmast.Close;
    end;
  end;

  with FmDmic01.Query3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,COST,STDBUY,LSTBUY  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
      'LOCAT = :Edit2');
    PARAMS[0].ASSTRING := FmDmic01.MvtranPARTNO.asstring;
    PARAMS[1].ASSTRING := FmDmic01.MvInvMOVFRM.asstring;
    Open;
    if (Bof and Eof) then
      sfmain.raiseException('ไม่พบรหัสสินค้าในสาขาที่จะโอนไปให้ ->' + FmDmic01.MvInvMOVTO.asstring + #13#13 + ' กรุณาไปสร้างรหัสสินค้าก่อน');
  end;

  with FmDmic01.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + cost + ',' + allo + ' FROM INVANLS WHERE ' +
      'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
    Params[0].Asstring := FmDmic01.MvtranPartno.asstring;
    Params[1].Asstring := FmDmic01.MvInvMOVFRM.asstring;
    Params[2].Asstring := Inttostr(Xyear);
    Open;
  end;

  FmDmic01.MvTranYear1.Asstring := IntToStr(XYear);
    {FmDmic01.MvTranUPRICE.Asfloat  := FmDmic01.Query2.Fieldbyname(cost).Asfloat;
    FmDmic01.MvTranAvgcost.Asfloat := FmDmic01.Query2.Fieldbyname(cost).Asfloat;}
  if FmDmic01.Query3.Fieldbyname('STDBUY').Asfloat > 0 then
  begin
    FmDmic01.MvTranUPRICE.Asfloat := FmDmic01.Query3.Fieldbyname('STDBUY').Asfloat;
  end
  else
  begin
    FmDmic01.MvTranUPRICE.Asfloat := FmDmic01.Query3.Fieldbyname('LSTBUY').Asfloat;
  end;
  FmDmic01.MvTranAvgcost.Asfloat := FmDmic01.MvTranUPRICE.Asfloat;
end;

procedure TFmDmic01.MvtranUPRICEValidate(Sender: TField);
begin
  FmDmic01.MvTranTotprc.AsFloat := FmDmic01.MvTranUPrice.Asfloat * FmDmic01.MvTranQTYMov.Asfloat;
end;

procedure TFmDmic01.MvtranQTYMOVValidate(Sender: TField);
begin
  FmDmic01.CondPay.Close;
  FmDmic01.CondPay.Open;
  NAllow := FmDmic01.CondPay.Fieldbyname('NStkLob').Asstring; {ไม่ยอมให้สต็อกติดลบ?}

  XDATE := FmDmic01.MvinvMovDT.AsdateTime;
  DecodeDate(XDATE, XYear, XMonth, XDay);
  COST := 'COST_' + inttostr(XMonth);
  Allo := 'Allo_' + inttostr(XMonth);

  with FmDmic01.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + cost + ',' + allo + ' FROM INVANLS WHERE ' +
      'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
    Params[0].Asstring := FmDmic01.MvtranPartno.asstring;
    Params[1].Asstring := FmDmic01.MvInvMOVFRM.asstring;
    Params[2].Asstring := Inttostr(Xyear);
    Open;
  end;

  if (NAllow = 'Y') and (FmDmic01.Query2.Fieldbyname(Allo).AsFloat < FmDmic01.MvTranQTYMov.Asfloat) then
    sfmain.raiseException('ในระบบ Setup ไม่อนุญาตให้สต็อกติดลบ');
  FmDmic01.MvTranTotprc.AsFloat := FmDmic01.MvTranUPrice.Asfloat * FmDmic01.MvTranQTYMov.Asfloat;
end;

procedure TFmDmic01.AdjTranUCOSTValidate(Sender: TField);
begin
  FmDmic01.AdjTranNetcost.AsFloat := FmDmic01.AdjTranQtyOut.AsFloat * FmDmic01.AdjTranUcost.AsFloat;
end;

procedure TFmDmic01.AdjTranQTYOUTValidate(Sender: TField);
begin
  FmDmic01.AdjTranNetcost.AsFloat := FmDmic01.AdjTranQtyOut.AsFloat * FmDmic01.AdjTranUcost.AsFloat;
end;

procedure TFmDmic01.RcinvINVDATEChange(Sender: TField);
begin
  RcinvCREDTMValidate(Sender);
end;

procedure TFmDmic01.PkTranQTYORDValidate(Sender: TField);
var
  Allo, Cost, LVPrice, NmPart: string;
  Xyear, Xmonth, XDay: Word;
begin
  XDATE := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDATE, Xyear, Xmonth, XDay);
  Allo := 'Allo_' + inttostr(Xmonth);
  Cost := 'Cost_' + inttostr(Xmonth);

  if FmDmic01.PkTranUpdateStatus.Value = 'Inserted' then
  begin
    if PkTranQTYORD.AsFloat > 0 then
    begin
      with FmDmic01.Query2 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
          'LOCAT = :Edit2');
        PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
        PARAMS[1].ASSTRING := SFMain.Xlocat;
        if not FmDmic01.Query2.Prepared then
          FmDmic01.Query2.Prepare;
        Open;
        if Bof and Eof then
          SFMain.RaiseException('ไม่พบรหัสสินค้า');
      end;

      with FmDmic01.Query6 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
          'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
        Params[0].Asstring := FmDmic01.PkTranPartno.asstring;
        Params[1].Asstring := FmDmic01.PkTranPkLocat.asstring;
        Params[2].Asstring := Inttostr(Xyear);
        if not FmDmic01.Query6.Prepared then
          FmDmic01.Query6.Prepare;
        Open;
      end;

      if (FmDmic01.Query2.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.PkinvNETADD.AsFloat > 0) then
      begin
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query2.Fieldbyname('STDBUY').AsFloat +
          (FmDmic01.Query2.Fieldbyname('STDBUY').AsFloat *
          (FmDmic01.PkinvNETADD.AsFloat / 100));
      end
      else
      begin
        LVPrice := 'Price' + FmDmic01.PkinvSALLEV.Value;
         //FmDmic01.PktranUPRICE.AsFloat  := FmDmic01.Query2.Fieldbyname(LvPrice).AsFloat;
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query2.Fieldbyname('STDBUY').AsFloat;
      end;

      //FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query6.FieldByName(Cost).AsFloat;
      FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query2.Fieldbyname('STDBUY').AsFloat;

      {if FmDmic01.PktranAvgcost.AsFloat = 0 Then
      begin
        SFMain.RaiseException('ต้นทุนเฉลี่ยเป็น 0 กรุณาแก้ไขให้ถูกต้องก่อน<br/>'+
                              'หากเป็นการ Set รหัสใหม่ ต้อง Adjust ยอดที่มีต้นทุนด้วย ');
      end;}
    end;
  end;
end;

procedure TFmDmic01.QArpaytrn1CREDITAMTValidate(Sender: TField);
begin
  QArpaytrn1CSHAMTValidate(QArpaytrn1CREDITAMT);
end;

procedure TFmDmic01.QArpaytrn1BANKAMTValidate(Sender: TField);
begin
  QArpaytrn1CSHAMTValidate(QArpaytrn1BANKAMT);
end;

procedure TFmDmic01.QArpaytrn1PAYTYPValidate(Sender: TField);
begin
  sfmain.Findnoexist('PAYTYP', 'PAYCODE', QArpaytrn1PAYTYP.AsString);

  if ((QArpaytrn1PAYTYP.AsString = '01') or (QArpaytrn1PAYTYP.AsString = '55')) then
  begin
    QArpaytrn1CHQAMT.AsFloat := 0;
    QArpaytrn1CREDITAMT.AsFloat := 0;
    QArpaytrn1BANKAMT.AsFloat := 0;
    QArpaytrn1CSHAMT.AsFloat := IcinvNETPRC.Asfloat;
  end
  else if QArpaytrn1PAYTYP.AsString = '02' then
  begin
    QArpaytrn1CSHAMT.AsFloat := 0;
    QArpaytrn1CREDITAMT.AsFloat := 0;
    QArpaytrn1BANKAMT.AsFloat := 0;
    QArpaytrn1CHQAMT.AsFloat := IcinvNETPRC.AsFloat;
  end
  else if QArpaytrn1PAYTYP.AsString = '10' then
  begin
    QArpaytrn1CSHAMT.AsFloat := 0;
    QArpaytrn1CHQAMT.AsFloat := 0;
    QArpaytrn1CREDITAMT.AsFloat := 0;
    QArpaytrn1BANKAMT.AsFloat := IcinvNETPRC.AsFloat;
  end
  else if QArpaytrn1PAYTYP.AsString = '90' then
  begin
    QArpaytrn1CSHAMT.AsFloat := 0;
    QArpaytrn1CHQAMT.AsFloat := 0;
    QArpaytrn1BANKAMT.AsFloat := 0;
    QArpaytrn1CREDITAMT.AsFloat := IcinvNETPRC.AsFloat;
  end
  else
  begin
    QArpaytrn1CSHAMT.AsFloat := QArpaytrn1NETTOT.AsFloat;
    QArpaytrn1CHQAMT.AsFloat := 0;
    QArpaytrn1CREDITAMT.AsFloat := 0;
    QArpaytrn1BANKAMT.AsFloat := 0;
  end;
end;

procedure TFmDmic01.QArpaytrn1DISAMTValidate(Sender: TField);
begin
  FmDmic01.QArpaytrn1.FieldByName('NETTOT').AsFloat := FRound((FmDmic01.QArpaytrn1.FieldByName('TOTAL').AsFloat -
    FmDmic01.QArpaytrn1VAT3AMT.Asfloat - QArpaytrn1DISAMT.AsFloat) + FmDmic01.QArpaytrn1ADDAMT.Asfloat, 2);
end;

procedure TFmDmic01.QArpaytrn1VAT3AMTValidate(Sender: TField);
begin
  FmDmic01.QArpaytrn1.FieldByName('NETTOT').AsFloat := FRound((FmDmic01.QArpaytrn1.FieldByName('TOTAL').AsFloat -
    FmDmic01.QArpaytrn1VAT3AMT.Asfloat - QArpaytrn1DISAMT.AsFloat) + FmDmic01.QArpaytrn1ADDAMT.Asfloat, 2);
end;

procedure TFmDmic01.QArpaytrn1ADDAMTValidate(Sender: TField);
begin
  FmDmic01.QArpaytrn1.FieldByName('NETTOT').AsFloat := FRound((FmDmic01.QArpaytrn1.FieldByName('TOTAL').AsFloat -
    FmDmic01.QArpaytrn1VAT3AMT.Asfloat - QArpaytrn1DISAMT.AsFloat) + FmDmic01.QArpaytrn1ADDAMT.Asfloat, 2);
end;

procedure TFmDmic01.IcinvBeforeEdit(DataSet: TDataSet);
begin
  if IcinvTAXREFNO.AsString <> '' then
    sfmain.RaiseException('Ref.No. : ' + IcinvTAXREFNO.AsString + '<br/>หากต้องการแก้ไขรายการให้ยกเลิกการรับชำระก่อน.');
end;

procedure TFmDmic01.QArpaytrn1BeforeEdit(DataSet: TDataSet);
begin
  sfmain.Do_Chk_DatainGL('ACCGLMST', 'REFDOCNO', QArpaytrn1INVNO.AsString);
end;

procedure TFmDmic01.PkTranPARTNOChange(Sender: TField);
begin
  with FmDmic01.Query7 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := FmDmic01.PkTran.FieldByName('PARTNO').Asstring;
    PARAMS[1].ASSTRING := FmDmic01.PkTran.FieldByName('Pklocat').Asstring;
    Open;
    FmDmic01.PkTran.FieldByName('PARTDESC').Asstring := FmDmic01.Query7.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFmDmic01.IcTranPARTNOChange(Sender: TField);
begin
  with FmDmic01.Query7 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := FmDmic01.IcTran.FieldByName('PARTNO').Asstring;
    PARAMS[1].ASSTRING := FmDmic01.IcTran.FieldByName('INVLOC').Asstring;
    Open;
    FmDmic01.IcTran.FieldByName('PARTDESC').Asstring := FmDmic01.Query7.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFmDmic01.RttranPARTNOChange(Sender: TField);
begin
  with FmDmic01.Query7 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := FmDmic01.Rttran.FieldByName('PARTNO').Asstring;
    PARAMS[1].ASSTRING := FmDmic01.Rttran.FieldByName('RTNLOC').Asstring;
    Open;
    FmDmic01.Rttran.FieldByName('PARTDESC').Asstring := FmDmic01.Query7.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFmDmic01.QaTranPARTNOChange(Sender: TField);
begin
  if copy(FmDmic01.QaTran.FieldByName('PARTNO').Asstring, 1, 3) <> 'XX-' then
  begin
    with FmDmic01.Query7 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
      PARAMS[0].ASSTRING := FmDmic01.QaTran.FieldByName('PARTNO').Asstring;
      PARAMS[1].ASSTRING := FmDmic01.QaTran.FieldByName('QALOCAT').Asstring;
      Open;
      FmDmic01.QaTran.FieldByName('PARTDESC').Asstring := FmDmic01.Query7.fieldbyname('DESC1').AsString;
    end;
  end;
end;

procedure TFmDmic01.QaTranPARTNOValidate(Sender: TField);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  LVPrice: string;
begin
  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
      'LOCAT = :Edit2');
    PARAMS[0].ASSTRING := FmDmic01.QATranPartno.asstring;
    PARAMS[1].ASSTRING := FmDmic01.QainvQALOCAT.asstring;
    Open;
  end;
  if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
  begin
    Application.CreateForm(TFsvmast, Fsvmast);
    with Fsvmast.Hquery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO LIKE :XPARTNO AND LOCAT=:XLOC');
      PARAMS[0].ASSTRING := FmDmic01.QATranPartno.asstring + '%';
      PARAMS[1].ASSTRING := FmDmic01.QainvQALOCAT.asstring;
      Open;
    end;
    {If (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) Then
    begin
      Fsvmast.Close;
      SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end Else
    begin
     If Fsvmast.Showmodal=mrok Then
     if FmDmic01.QAtran.State = DSBrowse then
        FmDmic01.QAtran.Edit;

        FmDmic01.QATranPartno.asstring := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
        Fsvmast.Close;
    end;}
  end;
end;

procedure TFmDmic01.QaTranQTYORDValidate(Sender: TField);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  LVPrice: string;
begin
  FmDmic01.QATranQTYOUT.AsFloat := FmDmic01.QAtranQTYORD.AsFloat;

  if FmDmic01.QAtranQTYORD.AsFloat < FmDmic01.QATranQTYOUT.AsFloat then
    SFMain.RaiseException('จำนวนที่รับมากกว่าจำนวนที่สั่ง');

  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
      'LOCAT = :Edit2');
    PARAMS[0].ASSTRING := FmDmic01.QATranPartno.asstring;
    PARAMS[1].ASSTRING := FmDmic01.QATranQalocat.asstring;
    Open;
  end;

  if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.QAinvNETADD.AsFloat > 0) then
  begin
    FmDmic01.QAtranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
      (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
      (FmDmic01.QAinvNETADD.AsFloat / 100));
  end
  else
  begin
    LVPrice := 'Price' + FmDmic01.QAinvSALLEV.Asstring;
    FmDmic01.QAtranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
  end;
  {FmDmic01.QAtranNetFl.Asstring    := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
  FmDmic01.QAtranPARTNO.Asstring   := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;}


  if FmDmic01.QAtranNETFL.Asstring = 'N' then
  begin
    FmDmic01.QATranREDU1.AsFloat := 0;
    FmDmic01.QATranREDU2.AsFloat := 0;
    FmDmic01.QATranREDU3.AsFloat := 0;
  end;

  Pric1 := (FmDmic01.QAtranUPrice.value * (FmDmic01.QAtranRedu1.value / 100));
  SmPric1 := FmDmic01.QAtranUPrice.value - Pric1;
  Pric2 := SmPric1 * (FmDmic01.QAtranredu2.value / 100);
  SmPric2 := SmPric1 - Pric2;
  Pric3 := SmPric2 * (FmDmic01.QAtranredu3.value / 100);
  SmPric3 := SmPric2 - Pric3;
  FmDmic01.QAtranNetprc.AsFloat := SmPric3;
  FmDmic01.QAtranTotPrc.AsFloat := FmDmic01.QAtranNetprc.AsFloat * FmDmic01.QATranQTYOUT.AsFloat;
end;

procedure TFmDmic01.QaTranUPRICEValidate(Sender: TField);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  LVPrice: string;
begin
  LVPrice := 'Price' + FmDmic01.QAinvSALLEV.Asstring;

  Pric1 := (FmDmic01.QAtranUPrice.value * (FmDmic01.QAtranRedu1.value / 100));
  SmPric1 := FmDmic01.QAtranUPrice.value - Pric1;
  Pric2 := SmPric1 * (FmDmic01.QAtranredu2.value / 100);
  SmPric2 := SmPric1 - Pric2;
  Pric3 := SmPric2 * (FmDmic01.QAtranredu3.value / 100);
  SmPric3 := SmPric2 - Pric3;
  FmDmic01.QAtranNetprc.AsFloat := SmPric3;
  FmDmic01.QAtranTotPrc.AsFloat := FmDmic01.QAtranNetprc.AsFloat * FmDmic01.QATranQTYOUT.AsFloat;
end;

procedure TFmDmic01.QaTranREDU1Validate(Sender: TField);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  LVPrice: string;
begin
  LVPrice := 'Price' + FmDmic01.QAinvSALLEV.Asstring;

  Pric1 := (FmDmic01.QAtranUPrice.value * (FmDmic01.QAtranRedu1.value / 100));
  SmPric1 := FmDmic01.QAtranUPrice.value - Pric1;
  Pric2 := SmPric1 * (FmDmic01.QAtranredu2.value / 100);
  SmPric2 := SmPric1 - Pric2;
  Pric3 := SmPric2 * (FmDmic01.QAtranredu3.value / 100);
  SmPric3 := SmPric2 - Pric3;
  FmDmic01.QAtranNetprc.AsFloat := SmPric3;
  FmDmic01.QAtranTotPrc.AsFloat := FmDmic01.QAtranNetprc.AsFloat * FmDmic01.QATranQTYOUT.AsFloat;
end;

procedure TFmDmic01.QaTranREDU2Validate(Sender: TField);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  LVPrice: string;
begin
  LVPrice := 'Price' + FmDmic01.QAinvSALLEV.Asstring;

  Pric1 := (FmDmic01.QAtranUPrice.value * (FmDmic01.QAtranRedu1.value / 100));
  SmPric1 := FmDmic01.QAtranUPrice.value - Pric1;
  Pric2 := SmPric1 * (FmDmic01.QAtranredu2.value / 100);
  SmPric2 := SmPric1 - Pric2;
  Pric3 := SmPric2 * (FmDmic01.QAtranredu3.value / 100);
  SmPric3 := SmPric2 - Pric3;
  FmDmic01.QAtranNetprc.AsFloat := SmPric3;
  FmDmic01.QAtranTotPrc.AsFloat := FmDmic01.QAtranNetprc.AsFloat * FmDmic01.QATranQTYOUT.AsFloat;
end;

procedure TFmDmic01.QaTranREDU3Validate(Sender: TField);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  LVPrice: string;
begin
  LVPrice := 'Price' + FmDmic01.QAinvSALLEV.Asstring;

  Pric1 := (FmDmic01.QAtranUPrice.value * (FmDmic01.QAtranRedu1.value / 100));
  SmPric1 := FmDmic01.QAtranUPrice.value - Pric1;
  Pric2 := SmPric1 * (FmDmic01.QAtranredu2.value / 100);
  SmPric2 := SmPric1 - Pric2;
  Pric3 := SmPric2 * (FmDmic01.QAtranredu3.value / 100);
  SmPric3 := SmPric2 - Pric3;
  FmDmic01.QAtranNetprc.AsFloat := SmPric3;
  FmDmic01.QAtranTotPrc.AsFloat := FmDmic01.QAtranNetprc.AsFloat * FmDmic01.QATranQTYOUT.AsFloat;
end;

procedure TFmDmic01.QaTranBeforePost(DataSet: TDataSet);
begin
  if FmDmic01.QAtranQTYORD.AsFloat = 0 then
    SFMain.RaiseException('ยังไม่ได้บันทึกจำนวน');
end;

procedure TFmDmic01.RctranPARTNOChange(Sender: TField);
begin
  with Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := RctranPARTNO.Asstring;
    PARAMS[1].ASSTRING := RctranRECVLOC.Asstring;
    Open;
    Rctran.FieldByName('PARTDESC').Asstring := Query2.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFmDmic01.MvtranPARTNOChange(Sender: TField);
begin
  with Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := MvtranPARTNO.Asstring;
    PARAMS[1].ASSTRING := MvtranMOVFRM.Asstring;
    Open;
    Mvtran.FieldByName('PARTDESC').Asstring := Query2.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFmDmic01.Rctrn1PARTNOChange(Sender: TField);
begin
  with Query7 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := Rctrn1PARTNO.Asstring;
    PARAMS[1].ASSTRING := Rctrn1RECVLOC.Asstring;
    Open;
    Rctrn1.FieldByName('PARTDESC').Asstring := Query7.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFmDmic01.AdjTranPARTNOChange(Sender: TField);
begin
  with Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1,COST,STDBUY  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := AdjTranPARTNO.Asstring;
    PARAMS[1].ASSTRING := AdjTranADJLOC.Asstring;
    Open;
    AdjTran.FieldByName('PARTDESC').Asstring := Query2.fieldbyname('DESC1').AsString;
    //AdjTran.FieldByName('UCOST').AsFloat     := Query2.Fieldbyname('COST').AsFloat;
    AdjTran.FieldByName('UCOST').AsFloat := Query2.Fieldbyname('STDBUY').AsFloat;
  end;
end;

procedure TFmDmic01.AdjTranPARTNOValidate(Sender: TField);
begin
  if FmDmic01.AdjTranPartno.asstring = '' then
    sfmain.raiseException('ยังไม่บันทึกรหัสสินค้า');

  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT I.GROUP1,I.PARTNO,I.DESC1 ,I.STDBUY,I.PRICE1,I.LSTBUY ' +
      'FROM INVENTOR I ' +
      'WHERE I.PARTNO =:0 AND I.LOCAT = :1');
    PARAMS[0].ASSTRING := FmDmic01.AdjTranPartno.asstring;
    PARAMS[1].ASSTRING := FmDmic01.AdjTranADJLOC.asstring;
    Open;
    if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
      sfmain.raiseException('ไม่พบรหัสสินค้า');
  end;

  FmDmic01.AdjTran.FieldByname('UCOST').AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').Asfloat;
end;

procedure TFmDmic01.QaTranBeforeInsert(DataSet: TDataSet);
begin
  if QainvCUSCOD.AsString = '' then
    sfmain.RaiseException('กรุณาเลือกรหัสลูกค้าก่อนทำรายการ..!');
end;

procedure TFmDmic01.PkinvCUSCODChange(Sender: TField);
begin
  with QValid do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTMAST WHERE CUSCOD =:XEdit');
    PARAMS[0].ASSTRING := FmDmic01.PkinvCUSCOD.asstring;
    Open;
    if QValid.Bof and QValid.Eof then
      SFmain.RaiseException('ไม่พบรหัสลูกค้านี้');
    FmDmic01.PkinvSallev.asstring := QValid.Fieldbyname('Sallev').Asstring;
  end;

  CheckCrdt := 'Y';
end;

procedure TFmDmic01.RcinvPAYTYPChange(Sender: TField);
begin
  if RcinvPAYTYP.AsString = 'A' then
    RcinvUPD.AsString := 'Y'
  else
    RcinvUPD.AsString := 'N';
end;

procedure TFmDmic01.Rcinv2AfterCancel(DataSet: TDataSet);
begin
  if Rcinv2.Active then
    Rcinv2.CancelUpdates;
  if Rctran2.Active then
    Rctran2.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TFmDmic01.Rcinv2AfterDelete(DataSet: TDataSet);
var
  S: string;
begin
  S := RcInv2RECVNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if RcInv2.Active then
      if (RcInv2.ApplyUpdates = 0) then
        RcInv2.CommitUpdates
      else
        raise Exception.Create(RcInv2.RowError.Message);
    if Rctran2.Active then
      if (Rctran2.ApplyUpdates = 0) then
        Rctran2.CommitUpdates
      else
        raise Exception.Create(Rctran2.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    Rcinv2.Edit;
    raise;
  end;
  //
  with FmDmic01.Rcinv2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO =:XRECVNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
  with FmDmic01.Rctran2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO =:XRECVNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TFmDmic01.Rcinv2AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := Rcinv2RECVNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Rcinv2.Active then
      if (Rcinv2.ApplyUpdates = 0) then
        Rcinv2.CommitUpdates
      else
        raise Exception.Create(Rcinv2.RowError.Message);
    if Rctran2.Active then
      if (Rctran2.ApplyUpdates = 0) then
        Rctran2.CommitUpdates
      else
        raise Exception.Create(Rctran2.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    Rcinv2.Edit;
    raise;
  end;
  //
  with FmDmic01.Rcinv2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO =:XRECVNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
  with FmDmic01.Rctran2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO =:XRECVNO');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TFmDmic01.Rcinv2BeforeClose(DataSet: TDataSet);
begin
  if Rctran2.Active then
    Rctran2.Close;
  if QLastno.Active then
    QLastno.Close;
end;

procedure TFmDmic01.Rcinv2BeforeDelete(DataSet: TDataSet);
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * from PREPAYTRN where INVNO=:0 and PRECANFL <> ''C'' ');
    params[0].AsString := Rcinv2INVNO.Asstring;
    open;
    if Rcinv2INVNO.Asstring <> '' then
    begin
      if not (Eof and Bof) then
        sfmain.RaiseException('วางบิลเตรียมจ่ายแล้ว..ลบไม่ได้!');
    end;
  end;

  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * from APPAYTRNGL where INVNO=:0 and APCANFL <> ''C'' ');
    params[0].AsString := Rcinv2INVNO.Asstring;
    open;
    if Rcinv2INVNO.Asstring <> '' then
    begin
      if not (Eof and Bof) then
        sfmain.RaiseException('จ่ายเจ้าหนี้แล้ว..ลบไม่ได้!');
    end;
  end;

  Rctran2.AfterDelete := Nil;
  Rctran2.first;
  while not (Rctran2.Bof and Rctran2.Eof) do
    Rctran2.delete;
end;

procedure TFmDmic01.Rcinv2BeforeEdit(DataSet: TDataSet);
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * from PREPAYTRN where INVNO=:0 and PRECANFL <> ''C'' ');
    params[0].AsString := Rcinv2INVNO.Asstring;
    open;
    if Rcinv2INVNO.Asstring <> '' then
    begin
      if not (Eof and Bof) then
        sfmain.RaiseException('วางบิลเตรียมจ่ายแล้ว..แก้ไขไม่ได้!');
    end;
  end;

  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * from APPAYTRNGL where INVNO=:0 and APCANFL <> ''C'' ');
    params[0].AsString := Rcinv2INVNO.Asstring;
    open;
    if Rcinv2INVNO.Asstring <> '' then
    begin
      if not (Eof and Bof) then
        sfmain.RaiseException('จ่ายเจ้าหนี้แล้ว..แก้ไขไม่ได้!');
    end;
  end;
end;

procedure TFmDmic01.Rcinv2BeforePost(DataSet: TDataSet);
begin
  if Rcinv2OFFICCOD.Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกรหัสพนักงาน');
  Rctran2.First;
  if Rcinv2UpdateStatus.Value = 'Inserted' then
  begin
    if Duplicate then   //Key ซ้ำ
      Rcinv2RECVDTValidate(RcinvRECVDT);
    Rctran2.DisableControls;
    Rctran2.AfterPost := Nil;
    Rctran2.First;
    while not Rctran2.Eof do
    begin
      Rctran2.Edit;
      Rctran2RECVNO.Asstring := Rcinv2RECVNO.Asstring;
      Rctran2RECVLOC.Asstring := Rcinv2RECVLOC.Asstring;
      Rctran2RECVDATE.Asdatetime := Rcinv2RECVDT.Asdatetime;
      Rctran2APCODE.Asstring := Rcinv2APCODE.Asstring;
        //
      Rctran2.Next;
    end;
    Rctran2.AfterPost := RctranAfterPost;
    Rctran2.EnableControls;
  end;
end;

procedure TFmDmic01.Rcinv2CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Rcinv2.CachedUpdates then
    Rcinv2UpdateStatus.Value := UpdateStatusStr[Rcinv2.UpdateStatus];
end;

procedure TFmDmic01.Rcinv2NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;

  if Qtemp.Active then
    Qtemp.Close;

  ClearAsFloat(Rcinv2);
  if not CondPay.Active then
    CondPay.Open;

  if Condpay.Fieldbyname('Vattype').asstring <> '' then
    Rcinv2.FieldByName('VATTYPE').Asstring := Condpay.Fieldbyname('Vattype').asstring
  else
    Rcinv2.FieldByName('VATTYPE').Asstring := '2';
  if Condpay.Fieldbyname('Disbath').Asstring <> '' then
    Rcinv2DISBATH.asstring := Condpay.Fieldbyname('Disbath').Asstring
  else
    Rcinv2DISBATH.asstring := 'N';

  Rcinv2VATRT.AsFloat := Condpay.Fieldbyname('VatRt').Asfloat;
  Rcinv2RECVLOC.AsString := SFMain.XLocat;
  Rcinv2USERID.AsString := SFMain.XUser_ID;
  Rcinv2time1.AsDateTime := now;
  Rcinv2Recvdt.AsDateTime := now;
  Rcinv2INVDUE.AsDateTime := now;
  Rcinv2INVDATE.AsDateTime := now;
  RCinv2Officcod.AsString := SFMain.XOffCod;
  Rcinv2FLAG.Asstring := '5';
  Rcinv2UPD.AsString := 'N';
  Rcinv2PAYTYP.AsString := 'B';
  Rcinv2APCODE.AsString := 'APM-0017';
end;

procedure TFmDmic01.Rcinv2RECVDTValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  FormatSettings.ShortDateFormat := 'YYYY/MM/DD';
  if datetostr(Rcinv2.Fieldbyname('RECVDT').asDatetime) < datetostr(Now) then
  begin
    FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
    SFmain.RaiseException('ห้ามรับสินค้า ย้อนวันปัจจุบัน จะกระทบต้นทุนเฉลี่ย');
  end;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';

  if VHF = '' then
  begin
    HF := 'H_STIN';
    LF := 'L_STIN';
  end
  else
  begin
    HF := VHF;
    LF := VLF;
  end;

  if not (QDBConfig.Active) then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := Rcinv2.Fieldbyname('RECVLOC').asstring;
    DV := Rcinv2.Fieldbyname('RECVDT').asDatetime;

    if Rcinv2UpdateStatus.Value = 'Inserted' then
    begin
      sqltxt := 'SELECT MAX(RECVNO) AS MAXNO FROM RC_INVOI WHERE RECVLOC=:EDIT1 AND ' +
        'SUBSTR(RECVNO,2,2)=:EDIT2 AND SUBSTR(RECVNO,5,2)=:EDIT3 AND SUBSTR(RECVNO,7,2)=:EDIT4 ';
      if Duplicate then
        Rcinv2RECVNO.Asstring := Maxno(HF, LF, LV, sqltxt, DV)
      else
        Rcinv2RECVNO.Asstring := RunNo01(HF, LF, LV, DV);
    end;
  end;
  //
  DecodeDate(DV, Xyear, Xmonth, XDay);
end;

procedure TFmDmic01.Rcinv2RECVLOCValidate(Sender: TField);
begin
  if Rcinv2.Fieldbyname('Recvdt').Asstring <> '' then
    Rcinv2RECVDTValidate(Sender);
end;

procedure TFmDmic01.Rcinv2INVNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT INVNO FROM APINVOI WHERE YEAR1=:1 AND INVNO=:EDIT AND LOCAT=:EDIT2');
    Params[0].Asstring := Floattostr(Xyear);
    Params[1].Asstring := Rcinv2INVNO.Asstring;
    Params[2].Asstring := Rcinv2RECVLOC.Asstring;
    Open;
    if not (Bof and Eof) then
      SFmain.RaiseException('มีเลขที่ใบส่งของนี้แล้วในระบบเจ้าหนี้');
  end;
end;

procedure TFmDmic01.Rcinv2INVDATEChange(Sender: TField);
begin
  Rcinv2CREDTMValidate(Sender);
end;

procedure TFmDmic01.Rcinv2CREDTMValidate(Sender: TField);
begin
  Rcinv2INVDUE.Asdatetime := Rcinv2INVDATE.Asdatetime + Rcinv2CREDTM.Asfloat;
end;

procedure TFmDmic01.Rcinv2APCODEValidate(Sender: TField);
begin
  with QValid do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT APCODE FROM APMAST WHERE APCODE =:XEdit');
    PARAMS[0].ASSTRING := Rcinv2APCODE.asstring;
    Open;
  end;
  if QValid.Bof and QValid.Eof then
    SFmain.RaiseException('ไม่พบข้อมูลนี้');
end;

procedure TFmDmic01.Rcinv2VATAMTValidate(Sender: TField);
begin
  Rcinv2TOTCOST.AsFloat := Rcinv2BALANCE.Asfloat + Rcinv2VATAMT.AsFloat;
end;

procedure TFmDmic01.Rcinv2FLAGValidate(Sender: TField);
begin
  if (Datetimetostr(Rcinv2RECVDT.AsDateTime) <> '30/12/1899') and
    (Rcinv2RECVLOC.AsString <> '') then
    Rcinv2RECVDTValidate(Sender);
end;

procedure TFmDmic01.Rcinv2EXDISAMTValidate(Sender: TField);
begin
  if RcTran2.Active then
    Rctran2AfterPost(RcTran);
end;

procedure TFmDmic01.Rctran2AfterDelete(DataSet: TDataSet);
var
  Smnettot, Totprc2, Xvat: double;
  bk: Tbookmark;
begin
  Rctran2.DisableControls;
  Xvat := FmDmic01.Rcinv2Vatrt.AsFloat;
  Smnettot := 0;
  Totprc2 := 0;
  bk := FmDmic01.Rctran2.GetBookmark;

  Rctran2.first;
  while not Rctran2.Eof do
  begin
    Totprc2 := Totprc2 + (Rctran2Ucost.AsFloat * Rctran2QTYRECV.AsFloat);
    Smnettot := Smnettot + Rctran2Nettot.AsFloat;
    FmDmic01.Rctran2.Next;
  end;
  if Rcinv2.State = Dsbrowse then
    Rcinv2.Edit;

  FmDmic01.Rcinv2TOTAL.AsFloat := Totprc2;
  FmDmic01.Rcinv2BALANCE.AsFloat := Smnettot - Rcinv2EXDISAMT.Asfloat;
  FmDmic01.Rcinv2DISCAMT.AsFloat := (Totprc2 - Smnettot) + Rcinv2EXDISAMT.Asfloat;

  if FmDmic01.Rcinv2VATTYPE.Asstring = '1' then
  begin
    FmDmic01.Rcinv2VatAmt.AsFloat := FRound(FmDmic01.Rcinv2BALANCE.AsFloat * (Xvat / (100 + Xvat)), 2);
    FmDmic01.Rcinv2NETAMT.AsFloat := FmDmic01.Rcinv2BALANCE.AsFloat - FmDmic01.Rcinv2VatAmt.AsFloat;
    FmDmic01.Rcinv2TOTcost.AsFloat := FmDmic01.Rcinv2BALANCE.AsFloat;
  end
  else if FmDmic01.Rcinv2VATTYPE.Asstring = '2' then
  begin
    FmDmic01.Rcinv2NETAMT.AsFloat := FmDmic01.Rcinv2BALANCE.AsFloat;
    FmDmic01.Rcinv2VatAmt.AsFloat := FRound((FmDmic01.Rcinv2BALANCE.AsFloat * (Xvat / 100)), 2);
    FmDmic01.Rcinv2TOTcost.AsFloat := FmDmic01.Rcinv2NETAMT.AsFloat + FmDmic01.Rcinv2VatAmt.AsFloat;
  end;
  Rctran2.EnableControls;
  Rctran2.GotoBookMark(bk);
  Rctran2.FreeBookmark(bk);
end;

procedure TFmDmic01.Rctran2AfterOpen(DataSet: TDataSet);
begin
  Qinvmst7.Open;
end;

procedure TFmDmic01.Rctran2AfterPost(DataSet: TDataSet);
var
  Smnettot, Totprc2, Xvat: double;
  bk: Tbookmark;
begin
 //  Showmessage('in Rctran2');
  Rctran2.DisableControls;
  Xvat := FmDmic01.Rcinv2Vatrt.AsFloat;
  Smnettot := 0;
  Totprc2 := 0;
  bk := FmDmic01.Rctran2.GetBookmark;

  Rctran2.first;
  while not Rctran2.Eof do
  begin
    Totprc2 := Totprc2 + (Rctran2Ucost.AsFloat * Rctran2QTYRECV.AsFloat);
    Smnettot := Smnettot + Rctran2Nettot.AsFloat;
    FmDmic01.Rctran2.Next;
  end;
  if Rcinv2.State = Dsbrowse then
    Rcinv2.Edit;

  FmDmic01.Rcinv2TOTAL.AsFloat := Totprc2;
  FmDmic01.Rcinv2BALANCE.AsFloat := Smnettot - Rcinv2EXDISAMT.Asfloat;
  FmDmic01.Rcinv2DISCAMT.AsFloat := (Totprc2 - Smnettot) + Rcinv2EXDISAMT.Asfloat;

  if FmDmic01.Rcinv2VATTYPE.Asstring = '1' then
  begin
    FmDmic01.Rcinv2VatAmt.AsFloat := FRound(FmDmic01.Rcinv2BALANCE.AsFloat * (Xvat / (100 + Xvat)), 2);
    FmDmic01.Rcinv2NETAMT.AsFloat := FmDmic01.Rcinv2BALANCE.AsFloat - FmDmic01.Rcinv2VatAmt.AsFloat;
    FmDmic01.Rcinv2TOTcost.AsFloat := FmDmic01.Rcinv2BALANCE.AsFloat;
  end
  else if FmDmic01.Rcinv2VATTYPE.Asstring = '2' then
  begin
    FmDmic01.Rcinv2NETAMT.AsFloat := FmDmic01.Rcinv2BALANCE.AsFloat;
    FmDmic01.Rcinv2VatAmt.AsFloat := FRound((FmDmic01.Rcinv2BALANCE.AsFloat * (Xvat / 100)), 2);
    FmDmic01.Rcinv2TOTcost.AsFloat := FmDmic01.Rcinv2NETAMT.AsFloat + FmDmic01.Rcinv2VatAmt.AsFloat;
  end;
  Rctran2.EnableControls;
  Rctran2.GotoBookMark(bk);
  Rctran2.FreeBookmark(bk);
end;

procedure TFmDmic01.Rctran2BeforeClose(DataSet: TDataSet);
begin
  Qinvmst7.Close;
end;

procedure TFmDmic01.Rctran2BeforeDelete(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDATE := Rctran2RECVDATE.AsdateTime;
  Xord := Rctran2QTYORD.AsFloat;
  Xqty := Rctran2QTYRECV.AsFloat;
  Xpart := Rctran2PARTNO.Asstring;
  Xlocat := Rctran2RECVLOC.Asstring;
  Xflag := Rctran2FLAG.Asstring;
end;

procedure TFmDmic01.Rctran2BeforePost(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost, XBAR: string;
  Xord, Xqty, Xcost: Double;
  temp: string;
begin
{  If FmDmic01.Rctran2APCODE.Asstring = '' Then
    SFmain.RaiseException('กรุณากรอกรหัสเจ้าหนี้'); }
  if FmDmic01.Rctran2QTYRECV.AsFloat = 0 then
    SFmain.RaiseException('จำนวนรับเป็น 0');
  if (FmDmic01.Rctran2QTYORD.AsFloat< FmDmic01.Rctran2QTYRECV.AsFloat)
    and (FmDmic01.Rctran2pono.Asstring <> '') then
    SFmain.RaiseException('จำนวนที่รับมากกว่าจำนวนที่สั่ง');

  XDATE := Rctran2RECVDATE.AsdateTime;
  Xord := Rctran2QTYORD.AsFloat;
  Xqty := Rctran2QTYRECV.AsFloat;
  Xpart := Rctran2PARTNO.Asstring;
  Xlocat := Rctran2RECVLOC.Asstring;
  Xflag := Rctran2FLAG.Asstring;
  Xcost := Rctran2NETCOST.Asfloat - (Rctran2VatCOST.Asfloat / Rctran2QTYRECV.AsFloat);

  if Rctran2UpdateStatus.Value = 'Inserted' then
   //If ((Rctran2UpdateStatus.Value='Inserted') or (Rctran2UpdateStatus.Value='Modified')) Then
  begin
    Avgcost(Xqty, Xcost, Xpart, Xlocat, XDATE);
    Rctran2AvgCost.Asfloat := TmpAvgcost;
  end;

  if FmDmic01.Rcinv2VATTYPE.Asstring = '1' then
  begin
    Net := Fround(FmDmic01.Rctran2Nettot.AsFloat * (100 / (100 + FmDmic01.Rcinv2Vatrt.AsFloat)), 2);
    FmDmic01.Rctran2Vatcost.AsFloat := (FmDmic01.Rctran2Nettot.AsFloat - Net) / Rctran2QTYRECV.AsFloat;
  end;
end;

procedure TFmDmic01.Rctran2CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Rctran2.CachedUpdates then
    Rctran2UpdateStatus.Value := UpdateStatusStr[Rctran2.UpdateStatus];
end;

procedure TFmDmic01.Rctran2NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(Rctran2);

  //FmSTIn00.Label15.Caption := 'new';

  if not CondPay.Active then
    CondPay.Open;

  XDATE := Rcinv2RecvDt.AsdateTime;
  DecodeDate(XDATE, Xyear, Xmonth, XDay);

  Rctran2Recvno.ASstring := Rcinv2Recvno.ASstring;
  Rctran2Apcode.ASstring := Rcinv2ApCode.ASstring;
  //RctranPono.ASstring      := RcinvPono.ASstring;
  Rctran2RecvLoc.ASstring := Rcinv2RecvLoc.ASstring;
  Rctran2RecvDATE.AsdateTime := Rcinv2RECVDT.AsdateTime;
  //RctranREDU1.ASFloat      := RcinvDisct.ASFloat;
  Rctran2USERID.AsString := SFMain.XUser_ID;
  Rctran2time1.AsDateTime := now;
  Rctran2FLAG.Asstring := Rcinv2FLAG.Asstring;
  Rctran2Year1.AsString := FloatTostr(Xyear);
end;

procedure TFmDmic01.Rctran2PARTNOValidate(Sender: TField);
begin
  if FmDmic01.Rctran2Partno.asstring = '' then
    sfmain.raiseException('ยังไม่บันทึกรหัสสินค้า');

   {   With FmDmic01.Query1 Do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC' );
        PARAMS[0].ASSTRING := FmDmic01.Rctran2Partno.asstring;
        PARAMS[1].ASSTRING := FmDmic01.Rctran2Recvloc.asstring;
        Open;
      end;

      If FmDmic01.Query1.Bof and FmDmic01.Query1.Eof Then
      Begin
        Application.CreateForm(TFsvmast,Fsvmast);
        With Fsvmast.Hquery1 Do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO LIKE :XPARTNO AND LOCAT=:Xloc' );
          PARAMS[0].ASSTRING := FmDmic01.Rctran2Partno.asstring+'%';
          PARAMS[1].ASSTRING := FmDmic01.Rctran2Recvloc.asstring;
          Open;
        end;

        If (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) Then
        begin
          Fsvmast.Close;
          sfmain.raiseException('ไม่พบรหัสสินค้า');
        end  Else
        begin
          If Fsvmast.Showmodal=mrok Then
             FmDmic01.Rctran2PARTNO.Asstring := Fsvmast.Hquery1.Fieldbyname('PARTNO').asstring;
             Fsvmast.Close;
        end;
      end;   }

  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT I.GROUP1,I.PARTNO,I.DESC1,G.PURDISC ,I.STDBUY,I.PRICE1,I.LSTBUY ' +
      'FROM INVENTOR I,GROUPMST G ' +
      'WHERE I.GROUP1=G.GROUPCOD AND I.PARTNO =:0 AND ' +
      'I.LOCAT = :1');
    PARAMS[0].ASSTRING := FmDmic01.Rctran2Partno.asstring;
    PARAMS[1].ASSTRING := FmDmic01.Rctran2RECVLOC.asstring;
    Open;
    if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
      sfmain.raiseException('ไม่พบรหัสสินค้า');
  end;
      //
  if FmSTIn01.CheckBox1.Checked then
    FmDmic01.Rctran2.FieldByname('UCOST').AsFloat := FmDmic01.Query1.Fieldbyname('PRICE1').Asfloat
  else
  begin
    if FmDmic01.Query1.Fieldbyname('STDBUY').Asfloat > 0 then
      FmDmic01.Rctran2.FieldByname('UCOST').AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').Asfloat
    else
      FmDmic01.Rctran2.FieldByname('UCOST').AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').Asfloat;
  end;
  FmDmic01.Rctran2REDU1.ASFloat := FmDmic01.Query1.Fieldbyname('PURDISC').Asfloat;

  //  เช็ครหัสซ่ำ
  if (Qtemp.Active) then
  begin
    cc := 0;
    Qtemp.First;
    while not (Qtemp.Eof) do
    begin
      if (Qtemp.FieldByName('PARTNO').AsString = Rctran2.FieldByName('PARTNO').AsString)
        and (Qtemp.FieldByName('PONO').AsString = Rctran2.FieldByName('PONO').AsString)
        and (Rctran2.State = DsInsert) then
      begin
        cc := 1;
        sfmain.raiseException('รหัสสินค้า ' + Rctran2.FieldByName('PARTNO').AsString + ' ซ้ำ' +
          #13 + 'ถ้าต้องการแก้ไขให้ลบรหัสสินค้าแล้วเพิ่มใหม่');
      end
      else
        cc := 0;
      Qtemp.Next;
    end;
    val := cc;
  end;
end;

procedure TFmDmic01.Rctran2PARTNOChange(Sender: TField);
begin
  with Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := Rctran2PARTNO.Asstring;
    PARAMS[1].ASSTRING := Rctran2RECVLOC.Asstring;
    Open;
    Rctran2.FieldByName('PARTDESC').Asstring := Query2.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFmDmic01.Rctran2QTYORDValidate(Sender: TField);
begin
  FmDmic01.Rctran2QTYRECV.AsFloat := FmDmic01.Rctran2QTYORD.AsFloat;
end;

procedure TFmDmic01.Rctran2QTYRECVValidate(Sender: TField);
begin
  Ucost1 := (FmDmic01.Rctran2Ucost.Asfloat * (FmDmic01.Rctran2redu1.Asfloat / 100));
  SmUcost1 := FmDmic01.Rctran2Ucost.Asfloat - Ucost1;
  Ucost2 := SmUcost1 * (FmDmic01.Rctran2redu2.Asfloat / 100);
  SmUcost2 := SmUcost1 - Ucost2;
  Ucost3 := SmUcost2 * (FmDmic01.Rctran2redu3.Asfloat / 100);
  SmUcost3 := SmUcost2 - Ucost3;
  FmDmic01.Rctran2.FieldByname('Netcost').AsFloat := SmUcost3;
  FmDmic01.Rctran2Nettot.AsFloat := StrTofloat(FloattostrF((FmDmic01.Rctran2NetCost.AsFloat * FmDmic01.Rctran2QtyRecv.AsFloat), ffFixed, 15, 2));
  //
  if FmDmic01.RcInv2VATTYPE.Asstring = '1' then
  begin
    Net := Fround(FmDmic01.Rctran2Nettot.AsFloat * (100 / (100 + FmDmic01.RcInv2Vatrt.AsFloat)), 2);
    FmDmic01.Rctran2Vatcost.AsFloat := FmDmic01.Rctran2Nettot.AsFloat - Net;
  end;
end;

procedure TFmDmic01.Rctran2REDU1Validate(Sender: TField);
begin
  Rctran2UCOSTValidate(Sender);
end;

procedure TFmDmic01.Rctran2REDU2Validate(Sender: TField);
begin
  Rctran2UCOSTValidate(Sender);
end;

procedure TFmDmic01.Rctran2REDU3Validate(Sender: TField);
begin
  Rctran2UCOSTValidate(Sender);
end;

procedure TFmDmic01.Rctran2DISCAMTValidate(Sender: TField);
begin
  FmDmic01.RcTran2Netcost.AsFloat := FmDmic01.RcTran2Ucost.Asfloat - FmDmic01.RcTran2Discamt.AsFloat;
  FmDmic01.RcTran2Nettot.AsFloat := StrTofloat(FloattostrF((FmDmic01.RcTran2NetCost.AsFloat * FmDmic01.RcTran2QtyRecv.AsFloat), ffFixed, 15, 2));
end;

procedure TFmDmic01.Rctran2UCOSTValidate(Sender: TField);
begin
  Ucost1 := (FmDmic01.Rctran2Ucost.Asfloat * (FmDmic01.Rctran2redu1.Asfloat / 100));
  SmUcost1 := FmDmic01.Rctran2Ucost.Asfloat - Ucost1;
  Ucost2 := SmUcost1 * (FmDmic01.Rctran2redu2.Asfloat / 100);
  SmUcost2 := SmUcost1 - Ucost2;
  Ucost3 := SmUcost2 * (FmDmic01.Rctran2redu3.Asfloat / 100);
  SmUcost3 := SmUcost2 - Ucost3;
  FmDmic01.Rctran2.FieldByname('Netcost').AsFloat := SmUcost3;
  FmDmic01.Rctran2Nettot.AsFloat := StrTofloat(FloattostrF((FmDmic01.Rctran2NetCost.AsFloat * FmDmic01.Rctran2QtyRecv.AsFloat), ffFixed, 15, 2));
  //
  if FmDmic01.Rcinv2VATTYPE.Asstring = '1' then
  begin
    Net := Fround(FmDmic01.Rctran2Nettot.AsFloat * (100 / (100 + FmDmic01.Rcinv2Vatrt.AsFloat)), 2);
    FmDmic01.Rctran2Vatcost.AsFloat := FmDmic01.Rctran2Nettot.AsFloat - Net;
  end;
end;

procedure TFmDmic01.Rctran2NETCOSTValidate(Sender: TField);
begin
  //FmDmic01.Rctran2ucost.AsFloat  := FRound(FmDmic01.Rctran2NETCOST.AsFloat/FmDmic01.Rctran2QTYORD.AsFloat,2);
end;

procedure TFmDmic01.TmpajtrQTYBODValidate(Sender: TField);
begin
  TmpajtrQTYOUT.AsFloat := FRound(TmpajtrQTYBOD.AsFloat - TmpajtrQTYORD.AsFloat, 2);
end;

procedure TFmDmic01.QArpaytrn1RECV_MONEYValidate(Sender: TField);
begin
  if QArpaytrn1RECV_MONEY.AsFloat < QArpaytrn1NETTOT.AsFloat then
    sfmain.RaiseException('จำนวนเงินที่รับ น้อยกว่า ยอดที่ต้องชำระ!');
  if QArpaytrn1RECV_MONEY.AsFloat = 0 then
    QArpaytrn1CHANGE.AsFloat := 0
  else
    QArpaytrn1CHANGE.AsFloat := QArpaytrn1RECV_MONEY.AsFloat - QArpaytrn1NETTOT.AsFloat;
end;

procedure TFmDmic01.RtinvCREDNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT INVNO FROM APINVOI WHERE INVNO=:EDIT');
    Params[0].Asstring := RtinvCREDNO.Asstring;
    Open;
    if not (Bof and Eof) then
      SFmain.RaiseException('มีเลขที่ใบส่งของนี้แล้วในระบบเจ้าหนี้');
  end;
end;

procedure TFmDmic01.Rcinv2REFNOValidate(Sender: TField);
begin
  sfmain.Fieldexist('RC_INVOI', 'REFNO', Rcinv2REFNO.AsString);
end;

procedure TFmDmic01.Rcinv2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TFmDmic01.Rcinv2LCNOValidate(Sender: TField);
begin
  sfmain.Fieldexist('RC_INVOI', 'LCNO', Rcinv2LCNO.AsString);
end;

procedure TFmDmic01.Rcinv2REFNO3Validate(Sender: TField);
begin
  sfmain.Fieldexist('RC_INVOI', 'REFNO3', Rcinv2REFNO3.AsString);
end;

procedure TFmDmic01.Rcinv2REFNO4Validate(Sender: TField);
begin
  sfmain.Fieldexist('RC_INVOI', 'REFNO4', Rcinv2REFNO4.AsString);
end;

end.

