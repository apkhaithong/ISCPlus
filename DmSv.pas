unit DmSv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, DBIErrs, Menus, Math, FireDAC.Phys.Intf, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDm_SV = class(TDataModule)
    QQa_invoi1: TFDQuery;
    SoQa_invoi1: TDataSource;
    QQa_tran1: TFDQuery;
    SoQa_tran1: TDataSource;
    QSvmast: TFDQuery;
    SoSvmast: TDataSource;
    QLastno: TFDQuery;
    QQa_invoi1QUOTNO: TStringField;
    QQa_invoi1QDATE: TDateField;
    QQa_invoi1REGNO: TStringField;
    QQa_invoi1ENGNO: TStringField;
    QQa_invoi1INSURTYP: TStringField;
    QQa_invoi1ISSUBY: TStringField;
    QQa_invoi1TOTALPRC: TFloatField;
    QLocat: TFDQuery;
    QSvstock: TFDQuery;
    QQa_invoi1LOCAT: TStringField;
    SoSvstock: TDataSource;
    QQa_invoi1MEMO1: TMemoField;
    QJoborder1: TFDQuery;
    SoJoborder1: TDataSource;
    SoOrdrep1: TDataSource;
    QChecklis: TFDQuery;
    QModelmst: TFDQuery;
    QOthinvoi1: TFDQuery;
    SoOthinvoi1: TDataSource;
    QOthtran1: TFDQuery;
    SoOthtran1: TDataSource;
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
    QOiltran1: TFDQuery;
    QColrtran1: TFDQuery;
    QOuttran1: TFDQuery;
    SoOiltran1: TDataSource;
    SoColrtran1: TDataSource;
    SoOuttran1: TDataSource;
    QJoborder2: TFDQuery;
    SoJoborder2: TDataSource;
    QOfficer: TFDQuery;
    SoTInvmast: TDataSource;
    QSvtype: TFDQuery;
    Query1: TFDQuery;
    Query2: TFDQuery;
    QParttran1: TFDQuery;
    SoParttran1: TDataSource;
    QQa_invoi1RECVDT: TDateField;
    QQa_invoi1RETNDT: TDateField;
    QQa_invoi1PHOTO: TStringField;
    QQa_invoi1GCODE: TStringField;
    QQa_invoi1USERID: TStringField;
    QQa_invoi1TIME1: TDateTimeField;
    SoModelmst: TDataSource;
    QJoborder: TFDQuery;
    QOrdrep1: TFDQuery;
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
    QJoborder1FLAGCAN: TStringField;
    QJoborder1CANDATE: TDateField;
    QJoborder1STATUS: TStringField;
    QJoborder1MEMO1: TMemoField;
    QJoborder1SVFLAG: TStringField;
    QOthinvoi1FLAG: TStringField;
    QOthJobord: TFDQuery;
    SoJobTime: TDataSource;
    QArpaytrn: TFDQuery;
    QTaxsal: TFDQuery;
    QJoborder1TOPNO: TStringField;
    QTopcar: TFDQuery;
    QJoborder1Updatestatus: TStringField;
    Query3: TFDQuery;
    QQa_invoi1TOTALVAT: TFloatField;
    QQa_invoi1TOTALALL: TFloatField;
    QJoborder1PREORDNO: TStringField;
    QSvCharg: TFDQuery;
    SoSvcharg: TDataSource;
    QJoborder1PTAXNO: TStringField;
    QJoborder1STAXNO: TStringField;
    QJoborder1USERID: TStringField;
    QJoborder1TIME1: TDateTimeField;
    QJoborder1CANCELID: TStringField;
    QJoborder1CANDAT: TDateTimeField;
    QJoborder1POSTGLDT: TDateTimeField;
    QOthinvoi1PAYTYPE: TStringField;
    QOthinvoi1CANCELID: TStringField;
    QOthinvoi1CANDAT: TDateTimeField;
    QOthinvoi1POSTGLDT: TDateTimeField;
    QCanjob: TFDQuery;
    QJoborder1TAXDATE: TDateField;
    QJoborder1BILDATE: TDateField;
    QJoborder1BILLNO: TStringField;
    QJoborder1ADDNET: TFloatField;
    QJoborder1ADDVAT: TFloatField;
    QJoborder1ADDTOT: TFloatField;
    QJoborder1PARTCOST: TFloatField;
    Condpay: TFDQuery;
    QArmast: TFDQuery;
    SoArmast: TDataSource;
    QDbconfig: TFDQuery;
    QNewprob: TFDQuery;
    SoNewprob: TDataSource;
    QJoborder3: TFDQuery;
    SoJoborder3: TDataSource;
    QResult: TFDQuery;
    SoResult: TDataSource;
    QJoborder2JOBNO: TStringField;
    QJoborder2LOCAT: TStringField;
    QJoborder2STRNO: TStringField;
    QJoborder2CUSCOD: TStringField;
    QJoborder2MDLCOD: TStringField;
    QJoborder2RUNNO: TStringField;
    QJoborder2RECVDATE: TDateField;
    QJoborder2RECVTIME: TStringField;
    QJoborder2FINSDATE: TDateField;
    QJoborder2FINSTIME: TStringField;
    QJoborder2RFINSHDT: TDateField;
    QJoborder2RFINSHTM: TStringField;
    QJoborder2RLKILOMT: TFloatField;
    QJoborder2KILOMT: TFloatField;
    QJoborder2RECVCOD: TStringField;
    QJoborder2CUST_IN: TStringField;
    QJoborder2PAYCOD: TStringField;
    QJoborder2CUST_OUT: TStringField;
    QJoborder2APP_DATE: TDateField;
    QJoborder2APP_MILE: TFloatField;
    QJoborder2REPTYPE: TStringField;
    QJoborder2GROUP1: TStringField;
    QJoborder2REPBAY: TStringField;
    QJoborder2PAYDATE: TDateField;
    QJoborder2INSPECT: TStringField;
    QJoborder2REPCOD: TStringField;
    QJoborder2VATTYPE: TStringField;
    QJoborder2VAT: TFloatField;
    QJoborder2PARTDISC: TFloatField;
    QJoborder2PARTNET: TFloatField;
    QJoborder2PARTVAT: TFloatField;
    QJoborder2PARTTOT: TFloatField;
    QJoborder2OILDISC: TFloatField;
    QJoborder2OILNET: TFloatField;
    QJoborder2OILVAT: TFloatField;
    QJoborder2OILTOT: TFloatField;
    QJoborder2SERVDISC: TFloatField;
    QJoborder2SERVNET: TFloatField;
    QJoborder2SERVVAT: TFloatField;
    QJoborder2SERVTOT: TFloatField;
    QJoborder2OUTJDISC: TFloatField;
    QJoborder2OUTJNET: TFloatField;
    QJoborder2OUTJVAT: TFloatField;
    QJoborder2OUTJTOT: TFloatField;
    QJoborder2COLORDISC: TFloatField;
    QJoborder2COLORNET: TFloatField;
    QJoborder2COLORVAT: TFloatField;
    QJoborder2COLORTOT: TFloatField;
    QJoborder2OTHERDISC: TFloatField;
    QJoborder2OTHERNET: TFloatField;
    QJoborder2OTHERVAT: TFloatField;
    QJoborder2OTHERTOT: TFloatField;
    QJoborder2TSV_DISC: TFloatField;
    QJoborder2TSV_NET: TFloatField;
    QJoborder2TSV_VAT: TFloatField;
    QJoborder2TSV_TOT: TFloatField;
    QJoborder2TAXDATE: TDateField;
    QJoborder2PTAXNO: TStringField;
    QJoborder2STAXNO: TStringField;
    QJoborder2BILDATE: TDateField;
    QJoborder2BILLNO: TStringField;
    QJoborder2FLAGCAN: TStringField;
    QJoborder2CANDATE: TDateField;
    QJoborder2STATUS: TStringField;
    QJoborder2MEMO1: TMemoField;
    QJoborder2SVFLAG: TStringField;
    QJoborder2TOPNO: TStringField;
    QJoborder2PREORDNO: TStringField;
    QJoborder2ADDNET: TFloatField;
    QJoborder2ADDVAT: TFloatField;
    QJoborder2ADDTOT: TFloatField;
    QJoborder2PARTCOST: TFloatField;
    QJoborder2USERID: TStringField;
    QJoborder2TIME1: TDateTimeField;
    QJoborder2CANCELID: TStringField;
    QJoborder2CANDAT: TDateTimeField;
    QJoborder2POSTGLDT: TDateTimeField;
    QOthinvoi1Updatestatus: TStringField;
    QJoborder2INV1_PT: TFloatField;
    QJoborder2INV1_SV: TFloatField;
    QJoborder2INV2_PT: TFloatField;
    QJoborder2INV2_SV: TFloatField;
    QJoborder2DISCPT: TFloatField;
    QJoborder2DISCSV: TFloatField;
    QJoborder2DISCOL: TFloatField;
    QJoborder2DISCCO: TFloatField;
    QJoborder2OUTADD: TFloatField;
    SoToildes: TDataSource;
    QOthinvoi1PTYPE: TStringField;
    QOthinvoi1DUEDATE: TDateField;
    QJoborder2FRRATE: TFloatField;
    QJoborder2FRCODE: TStringField;
    QJoborder1CAMPNO: TStringField;
    QJoborder1DISCPT: TFloatField;
    QJoborder1DISCSV: TFloatField;
    QOthinvoi1VATTYPE: TStringField;
    QQa_invoi1RKILO: TFloatField;
    QQa_invoi1JOBNO: TStringField;
    QQa_invoi1STATUS: TStringField;
    QQa_invoi1POLICYNO: TStringField;
    QQa_invoi1INFORMNO: TStringField;
    QQa_invoi1CLAIMNO: TStringField;
    QQa_invoi1EXCEPVAL: TFloatField;
    QQa_invoi1CONTACT: TStringField;
    QQa_invoi1MEMO2: TMemoField;
    QQa_invoi1ACCIDATE: TDateField;
    QQa_invoi1Updatestatus: TStringField;
    QOthinvoi1BILLNO: TStringField;
    QOthinvoi1BILLDT: TDateField;
    QOthinvoi1ISSUTAX: TStringField;
    QQa_invoi1VATTYPE: TStringField;
    QQa_invoi1VATRT: TFloatField;
    QOthinvoi1CLAIMNO: TStringField;
    QOildesc: TFDQuery;
    QPartdes: TFDQuery;
    QJoborder1INV1_PT: TFloatField;
    QJoborder1INV1_SV: TFloatField;
    QJoborder1INV2_PT: TFloatField;
    QJoborder1INV2_SV: TFloatField;
    QJoborder1DISCOL: TFloatField;
    QJoborder1DISCCO: TFloatField;
    QJoborder1OUTADD: TFloatField;
    QJoborder1OILCOST: TFloatField;
    QJoborder1FRRATE: TFloatField;
    QJoborder1FRCODE: TStringField;
    QJoborder1REFNO: TFloatField;
    QJoborder2CAMPNO: TStringField;
    QJoborder1FLAG: TStringField;
    QQa_invoi1REPCOD: TStringField;
    QQa_invoi1REPTYPE: TStringField;
    QJoborder1STATCOD: TStringField;
    QJoborder2STATCOD: TStringField;
    QOthinvoi1CLAIMTYP: TStringField;
    QrAppDateKilo: TFDQuery;
    QJoborder1ISCODE: TStringField;
    QQa_invoi1STRNO: TStringField;
    QJoborder1CUPONGNO: TStringField;
    QJoborder2CUPONGNO: TStringField;
    QJoborder2SV_TIME: TFloatField;
    QJoborder2OT_TIME: TFloatField;
    QTabserv: TFDQuery;
    QJobTime: TFDQuery;
    QJobTimeJOBNO: TStringField;
    QJobTimeSERVCOD: TStringField;
    QJobTimeUSETIME: TFloatField;
    QJobTimeINPDATE: TDateTimeField;
    QJobTimeSTARTTIM: TFloatField;
    QJobTimeSTOPTIM: TFloatField;
    QJobTimeDAYLYDT: TDateField;
    QOrdrep1JOBNO: TStringField;
    QOrdrep1NO: TFloatField;
    QOrdrep1REPDESC: TStringField;
    QOrdrep1FLAG: TStringField;
    QOrdrep1USERID: TStringField;
    QOrdrep1TIME1: TDateTimeField;
    QOrdrep1CODE: TStringField;
    QOrdrep1FRT: TFloatField;
    QOrdrep1ESTPRIC: TFloatField;
    QOrdrep1GRPHD: TStringField;
    QOrdrep1MEMO1: TMemoField;
    QJoborder1RTPART: TStringField;
    QJoborder1CLCAR: TStringField;
    QNewprobRSCODE: TStringField;
    QOthtran1INVNO: TStringField;
    QOthtran1INVDATE: TDateField;
    QOthtran1FLAG: TStringField;
    QOthtran1LOCAT: TStringField;
    QOthtran1QTY: TFloatField;
    QOthtran1REDU: TFloatField;
    QOthtran1JOBNO: TStringField;
    QOthtran1USERID: TStringField;
    QOthtran1TIME1: TDateTimeField;
    QOthtran1DESC1: TStringField;
    QOthtran1UCOST: TFloatField;
    QOthtran1UPRICE: TFloatField;
    QOthtran1TOTPRIC: TFloatField;
    QOthtran1NETPRIC: TFloatField;
    QOthtran1TOTCOST: TFloatField;
    QOthtran1SERVCOD: TStringField;
    QOthtran1OTTIME: TFloatField;
    QOthtran1JOBTYP: TStringField;
    QOthtran1CANDAT: TDateTimeField;
    QOthtran1CAMPNO: TStringField;
    QOthtran1CLAIM: TStringField;
    QOthtran1TAXNO: TStringField;
    QOthtran1TAXDT: TDateField;
    QOthtran1CANCELID: TStringField;
    QOthtran1SERTIME: TFloatField;
    QNewprobNO: TFloatField;
    QNewprobSTRNO: TStringField;
    QNewprobJOBNO: TStringField;
    QNewprobPBDESC: TStringField;
    QNewprobPRNDATE: TDateField;
    QNewprobSTAR: TStringField;
    QNewprobACEPTDT: TDateField;
    QOthtran1CODE: TStringField;
    QOthinvoi1MARK: TStringField;
    QOthinvoi1POSTGL: TStringField;
    QOiltran1JOBNO: TStringField;
    QOiltran1PARTNO: TStringField;
    QOiltran1PKNO: TStringField;
    QOiltran1LOCAT: TStringField;
    QOiltran1JOBDATE: TDateField;
    QOiltran1PKDATE: TDateField;
    QOiltran1UPRICE: TFloatField;
    QOiltran1QTY: TFloatField;
    QOiltran1NETFL: TStringField;
    QOiltran1REDU1: TFloatField;
    QOiltran1REDU2: TFloatField;
    QOiltran1REDU3: TFloatField;
    QOiltran1NETPRC: TFloatField;
    QOiltran1TOTPRC: TFloatField;
    QOiltran1SERVCOD: TStringField;
    QOiltran1FRT: TFloatField;
    QOiltran1SERTIME: TFloatField;
    QOiltran1SVCOLOR: TStringField;
    QOiltran1CLAIM: TStringField;
    QOiltran1SERIALNO: TStringField;
    QOiltran1TAXNO: TStringField;
    QOiltran1YEAR1: TStringField;
    QOiltran1TAXDATE: TDateField;
    QOiltran1AVGCOST: TFloatField;
    QOiltran1USERID: TStringField;
    QOiltran1TIME1: TDateTimeField;
    QOiltran1INV1_PT: TFloatField;
    QOiltran1INV2_PT: TFloatField;
    QOiltran1GROUP1: TStringField;
    QOiltran1BILCLAIM: TStringField;
    QOiltran1DISCAMT: TFloatField;
    QOiltran1FREE: TStringField;
    QOiltran1CAMPNO: TStringField;
    QOiltran1CAMFLG: TStringField;
    QOiltran1CUSCOD: TStringField;
    QOiltran1CLAIMDT: TDateField;
    QOiltran1CLAIMOK: TStringField;
    QOiltran1CLAIMTEC: TFloatField;
    QOiltran1CUPONGNO: TStringField;
    QOuttran1JOBNO: TStringField;
    QOuttran1CODE: TStringField;
    QOuttran1LOCAT: TStringField;
    QOuttran1JOBDATE: TDateField;
    QOuttran1UCOST: TFloatField;
    QOuttran1UPRICE: TFloatField;
    QOuttran1FRT: TFloatField;
    QOuttran1QTY: TFloatField;
    QOuttran1TOTPRIC: TFloatField;
    QOuttran1REDU: TFloatField;
    QOuttran1NETPRIC: TFloatField;
    QOuttran1TOTCOST: TFloatField;
    QOuttran1SERVCOD: TStringField;
    QOuttran1SERTIME: TFloatField;
    QOuttran1OTTIME: TFloatField;
    QOuttran1JOBTYP: TStringField;
    QOuttran1USERID: TStringField;
    QOuttran1DESC1: TStringField;
    QOuttran1TIME1: TDateTimeField;
    QOuttran1TAXNO: TStringField;
    QOuttran1TAXDATE: TDateField;
    QOuttran1CLAIM: TStringField;
    QOuttran1BILCLAIM: TStringField;
    QOuttran1CUSCOD: TStringField;
    QOuttran1CLAIMDT: TDateField;
    QOuttran1CLAIMOK: TStringField;
    QOuttran1CLAIMTEC: TFloatField;
    QColrtran1JOBNO: TStringField;
    QColrtran1CODE: TStringField;
    QColrtran1LOCAT: TStringField;
    QColrtran1JOBDATE: TDateField;
    QColrtran1FRT: TFloatField;
    QColrtran1PRICE: TFloatField;
    QColrtran1REDU: TFloatField;
    QColrtran1NETPRIC: TFloatField;
    QColrtran1SERVCOD: TStringField;
    QColrtran1SERTIME: TFloatField;
    QColrtran1OTTIME: TFloatField;
    QColrtran1JOBTYP: TStringField;
    QColrtran1CLAIM: TStringField;
    QColrtran1MDLCOD: TStringField;
    QColrtran1USERID: TStringField;
    QColrtran1DESC1: TStringField;
    QColrtran1TIME1: TDateTimeField;
    QColrtran1TAXNO: TStringField;
    QColrtran1TAXDATE: TDateField;
    QColrtran1DISCAMT: TFloatField;
    QColrtran1WARNO: TStringField;
    QColrtran1BILCLAIM: TStringField;
    QColrtran1UCOST: TFloatField;
    QColrtran1TOTCOST: TFloatField;
    QColrtran1CUSCOD: TStringField;
    QColrtran1CLAIMDT: TDateField;
    QColrtran1CLAIMOK: TStringField;
    QColrtran1CLAIMTEC: TFloatField;
    QParttran1JOBNO: TStringField;
    QParttran1PARTNO: TStringField;
    QParttran1PKNO: TStringField;
    QParttran1LOCAT: TStringField;
    QParttran1JOBDATE: TDateField;
    QParttran1PKDATE: TDateField;
    QParttran1UPRICE: TFloatField;
    QParttran1QTY: TFloatField;
    QParttran1NETFL: TStringField;
    QParttran1REDU1: TFloatField;
    QParttran1REDU2: TFloatField;
    QParttran1REDU3: TFloatField;
    QParttran1NETPRC: TFloatField;
    QParttran1TOTPRC: TFloatField;
    QParttran1SERVCOD: TStringField;
    QParttran1FRT: TFloatField;
    QParttran1SERTIME: TFloatField;
    QParttran1SVCOLOR: TStringField;
    QParttran1CLAIM: TStringField;
    QParttran1SERIALNO: TStringField;
    QParttran1TAXNO: TStringField;
    QParttran1YEAR1: TStringField;
    QParttran1TAXDATE: TDateField;
    QParttran1AVGCOST: TFloatField;
    QParttran1USERID: TStringField;
    QParttran1TIME1: TDateTimeField;
    QParttran1INV1_PT: TFloatField;
    QParttran1INV2_PT: TFloatField;
    QParttran1GROUP1: TStringField;
    QParttran1BILCLAIM: TStringField;
    QParttran1DISCAMT: TFloatField;
    QParttran1FREE: TStringField;
    QParttran1CAMPNO: TStringField;
    QParttran1CAMFLG: TStringField;
    QParttran1CUSCOD: TStringField;
    QParttran1CLAIMDT: TDateField;
    QParttran1CLAIMOK: TStringField;
    QParttran1CLAIMTEC: TFloatField;
    QParttran1CUPONGNO: TStringField;
    qRunNumber: TFDQuery;
    QQa_tran1QUOTNO: TStringField;
    QQa_tran1PARTNO: TStringField;
    QQa_tran1DESC1: TStringField;
    QQa_tran1QTY: TFloatField;
    QQa_tran1UPRICE: TFloatField;
    QQa_tran1REDU: TFloatField;
    QQa_tran1NETPRIC: TFloatField;
    QQa_tran1TOTALPRC: TFloatField;
    QQa_tran1USERID: TStringField;
    QQa_tran1TIME1: TDateTimeField;
    QQa_tran1TRNFLG: TStringField;
    QQa_invoi1ARCUSCOD: TStringField;
    QQa_tran1REPAIRTYP: TStringField;
    QQa_tran1INSAPPRVAMT: TFloatField;
    QQa_invoi1TIME_NO: TStringField;
    QQa_invoi1TYPEINSUR: TStringField;
    QQa_invoi1INSURSERV: TStringField;
    QQa_invoi1COSTINSUR: TFloatField;
    QQa_invoi1TOTSERV: TFloatField;
    QQa_invoi1TOTPART: TFloatField;
    QQa_invoi1TOTOTH: TFloatField;
    QQa_invoi1TOTREDU: TFloatField;
    QQa_invoi1TOTREDUOTH: TFloatField;
    QQa_invoi1TOTSERV_I: TFloatField;
    QQa_invoi1TOTPART_I: TFloatField;
    QQa_invoi1TOTOTH_I: TFloatField;
    QQa_invoi1TOTREDU_I: TFloatField;
    QQa_invoi1TOTREDUOTH_I: TFloatField;
    QQa_invoi1TOTALPRC_I: TFloatField;
    QQa_invoi1TOTALVAT_I: TFloatField;
    QQa_invoi1TOTALALL_I: TFloatField;
    QQa_invoi1TOTDIF: TFloatField;
    QQa_invoi1REDUSERV: TFloatField;
    QQa_invoi1REDUPART: TFloatField;
    QJob_tran: TFDQuery;
    SoQJob_tran: TDataSource;
    QJob_tran1: TFDQuery;
    SoQJob_tran1: TDataSource;
    SoQJob_tran2: TDataSource;
    QJob_tran2: TFDQuery;
    QJob_tranJOBNO: TStringField;
    QJob_tranPARTNO: TStringField;
    QJob_tranDESC1: TStringField;
    QJob_tranQTY: TFloatField;
    QJob_tranUPRICE: TFloatField;
    QJob_tranREDU: TFloatField;
    QJob_tranNETPRIC: TFloatField;
    QJob_tranTOTALPRC: TFloatField;
    QJob_tranTRNFLG: TStringField;
    QJob_tranREPAIRTYP: TStringField;
    QJob_tranINSAPPRVAMT: TFloatField;
    QJob_tran1JOBNO: TStringField;
    QJob_tran1PARTNO: TStringField;
    QJob_tran1DESC1: TStringField;
    QJob_tran1QTY: TFloatField;
    QJob_tran1UPRICE: TFloatField;
    QJob_tran1REDU: TFloatField;
    QJob_tran1NETPRIC: TFloatField;
    QJob_tran1TOTALPRC: TFloatField;
    QJob_tran1TRNFLG: TStringField;
    QJob_tran1REPAIRTYP: TStringField;
    QJob_tran1INSAPPRVAMT: TFloatField;
    QJob_tran2JOBNO: TStringField;
    QJob_tran2PARTNO: TStringField;
    QJob_tran2DESC1: TStringField;
    QJob_tran2QTY: TFloatField;
    QJob_tran2UPRICE: TFloatField;
    QJob_tran2REDU: TFloatField;
    QJob_tran2NETPRIC: TFloatField;
    QJob_tran2TOTALPRC: TFloatField;
    QJob_tran2TRNFLG: TStringField;
    QJob_tran2REPAIRTYP: TStringField;
    QJob_tran2INSAPPRVAMT: TFloatField;
    QJob_tran1CHECKLIST: TStringField;
    QJob_tran1RE_CHECKLIST: TStringField;
    QJob_tran2CHECKLIST: TStringField;
    QJob_tran2RE_CHECKLIST: TStringField;
    QJob_tranCHECKLIST: TStringField;
    QJob_tranRE_CHECKLIST: TStringField;
    QJob_tranQUOTNO: TStringField;
    QJob_tran1QUOTNO: TStringField;
    QJob_tran2QUOTNO: TStringField;
    QServtran1: TFDQuery;
    QServtran1JOBNO: TStringField;
    QServtran1CODE: TStringField;
    QServtran1LOCAT: TStringField;
    QServtran1JOBDATE: TDateField;
    QServtran1FRT: TFloatField;
    QServtran1PRICE: TFloatField;
    QServtran1REDU: TFloatField;
    QServtran1NETPRIC: TFloatField;
    QServtran1SERVCOD: TStringField;
    QServtran1SERTIME: TFloatField;
    QServtran1OTTIME: TFloatField;
    QServtran1JOBTYP: TStringField;
    QServtran1CLAIM: TStringField;
    QServtran1MDLCOD: TStringField;
    QServtran1USERID: TStringField;
    QServtran1DESC1: TStringField;
    QServtran1TIME1: TDateTimeField;
    QServtran1INV1_SV: TFloatField;
    QServtran1INV2_SV: TFloatField;
    QServtran1BILCLAIM: TStringField;
    QServtran1TAXNO: TStringField;
    QServtran1TAXDATE: TDateField;
    QServtran1UPRICE: TFloatField;
    QServtran1DISCAMT: TFloatField;
    QServtran1CAMPNO: TStringField;
    QServtran1CAMFLG: TStringField;
    QServtran1CUSCOD: TStringField;
    QServtran1CLAIMDT: TDateField;
    QServtran1CLAIMOK: TStringField;
    QServtran1CLAIMTEC: TFloatField;
    QServtran1CUPONGNO: TStringField;
    SoServtran1: TDataSource;
    QServtran: TFDQuery;
    SoServtran: TDataSource;
    QServtranJOBNO: TStringField;
    QServtranCODE: TStringField;
    QServtranLOCAT: TStringField;
    QServtranJOBDATE: TDateField;
    QServtranFRT: TFloatField;
    QServtranPRICE: TFloatField;
    QServtranREDU: TFloatField;
    QServtranNETPRIC: TFloatField;
    QServtranSERVCOD: TStringField;
    QServtranSERTIME: TFloatField;
    QServtranOTTIME: TFloatField;
    QServtranJOBTYP: TStringField;
    QServtranCLAIM: TStringField;
    QServtranMDLCOD: TStringField;
    QServtranUSERID: TStringField;
    QServtranDESC1: TStringField;
    QServtranTIME1: TDateTimeField;
    QServtranINV1_SV: TFloatField;
    QServtranINV2_SV: TFloatField;
    QServtranBILCLAIM: TStringField;
    QServtranTAXNO: TStringField;
    QServtranTAXDATE: TDateField;
    QServtranUPRICE: TFloatField;
    QServtranDISCAMT: TFloatField;
    QServtranCAMPNO: TStringField;
    QServtranCAMFLG: TStringField;
    QServtranCUSCOD: TStringField;
    QServtranCLAIMDT: TDateField;
    QServtranCLAIMOK: TStringField;
    QServtranCLAIMTEC: TFloatField;
    QServtranCUPONGNO: TStringField;
    QJoborder1REDUAMT: TFloatField;
    QJoborder1SV_TIME: TFloatField;
    QJoborder1OT_TIME: TFloatField;
    QJoborder1OUTJOBNO: TStringField;
    QJoborder1CALDAY: TFloatField;
    QJoborder1WAITER: TStringField;
    QJoborder1SENDMK: TStringField;
    QJoborder1REFJOBNO: TStringField;
    QJoborder1CALDATE: TDateField;
    QJoborder1FLCALSV: TStringField;
    QJoborder1NPEPAREPT: TFloatField;
    QJoborder1VPEPAREPT: TFloatField;
    QJoborder1TPEPAREPT: TFloatField;
    QJoborder1DPEPAREPT: TFloatField;
    QJoborder1WAITPT: TStringField;
    QJoborder1JOBFW: TStringField;
    QJoborder1CARWR: TStringField;
    QJoborder1PKTIME: TStringField;
    QJoborder1TELTAX: TIntegerField;
    QJoborder1SENDRIP: TIntegerField;
    QJoborder1STARTTIME: TStringField;
    Query4: TFDQuery;
    procedure QQa_invoi1QDATEValidate(Sender: TField);
    procedure QQa_invoi1AfterPost(DataSet: TDataSet);
    procedure QQa_invoi1BeforeDelete(DataSet: TDataSet);
    procedure QJoborder1RECVDATEValidate(Sender: TField);
    procedure QJoborder1AfterPost(DataSet: TDataSet);
    procedure QJoborder1AfterCancel(DataSet: TDataSet);
    procedure QOthinvoi1INVDATEValidate(Sender: TField);
    procedure QOthinvoi1BeforePost(DataSet: TDataSet);
    procedure QOthinvoi1AfterPost(DataSet: TDataSet);
    procedure QOthinvoi1AfterCancel(DataSet: TDataSet);
    procedure SoOthtran1DataChange(Sender: TObject; Field: TField);
    procedure SoQa_tran1DataChange(Sender: TObject; Field: TField);
    procedure QJoborder2AfterPost(DataSet: TDataSet);
    procedure QJoborder2AfterCancel(DataSet: TDataSet);
    procedure SoOuttran1DataChange(Sender: TObject; Field: TField);
    procedure SoColrtran1DataChange(Sender: TObject; Field: TField);
    procedure QOuttran1Afte(DataSet: TDataSet);
    procedure QOiltran1AfterPost(DataSet: TDataSet);
    procedure QOuttran1AfterPost(DataSet: TDataSet);
    procedure QColrtran1AfterPost(DataSet: TDataSet);
    procedure QColrtran1NewRecord(DataSet: TDataSet);
    procedure QServtran1AfterPost(DataSet: TDataSet);
    procedure QOuttran1NewRecord(DataSet: TDataSet);
    procedure QJoborder1BeforePost(DataSet: TDataSet);
    procedure QOrdrep1NewRecord(DataSet: TDataSet);
    procedure QQa_tran1NewRecord(DataSet: TDataSet);
    procedure QQa_invoi1NewRecord(DataSet: TDataSet);
    procedure QQa_tran1AfterPost(DataSet: TDataSet);
    procedure QJoborder1NewRecord(DataSet: TDataSet);
    procedure QJoborder1LOCATValidate(Sender: TField);
    procedure QParttran1AfterOpen(DataSet: TDataSet);
    procedure QOrdrep1AfterPost(DataSet: TDataSet);
    procedure QJoborder1RECVCODValidate(Sender: TField);
    procedure QJoborder1REPTYPEValidate(Sender: TField);
    procedure QOthinvoi1NewRecord(DataSet: TDataSet);
    procedure QOthtran1NewRecord(DataSet: TDataSet);
    procedure QOthinvoi1CUSCODValidate(Sender: TField);
    procedure QOthinvoi1LOCATValidate(Sender: TField);
    procedure QOthtran1AfterPost(DataSet: TDataSet);
    procedure QOthinvoi1PAIDValidate(Sender: TField);
    procedure QParttran1AfterPost(DataSet: TDataSet);
    procedure QJoborder1CalcFields(DataSet: TDataSet);
    procedure QJoborder1STRNOValidate(Sender: TField);
    procedure QSvChargNewRecord(DataSet: TDataSet);
    procedure QSvChargAfterPost(DataSet: TDataSet);
    procedure QQa_tran1BeforeDelete(DataSet: TDataSet);
    procedure QJoborder1BeforeDelete(DataSet: TDataSet);
    procedure QJoborder2BeforePost(DataSet: TDataSet);
    procedure QServtran1NewRecord(DataSet: TDataSet);
    procedure QOrdrep1AfterEdit(DataSet: TDataSet);
    procedure QNewprobAfterPost(DataSet: TDataSet);
    procedure SoNewprobStateChange(Sender: TObject);
    procedure QJoborder3AfterPost(DataSet: TDataSet);
    procedure QNewprobNewRecord(DataSet: TDataSet);
    procedure QJoborder3AfterCancel(DataSet: TDataSet);
    procedure QJoborder3BeforePost(DataSet: TDataSet);
    procedure QResultAfterPost(DataSet: TDataSet);
    procedure QOthinvoi1CalcFields(DataSet: TDataSet);
    procedure QJoborder2PARTDISCValidate(Sender: TField);
    procedure QQa_invoi1AfterCancel(DataSet: TDataSet);
    procedure QQa_invoi1BeforePost(DataSet: TDataSet);
    procedure QJoborder2DISCSVValidate(Sender: TField);
    procedure QJoborder2DISCPTValidate(Sender: TField);
    procedure QJoborder2DISCCOValidate(Sender: TField);
    procedure QOiltran1AfterOpen(DataSet: TDataSet);
    procedure QOiltran1BeforeClose(DataSet: TDataSet);
    procedure QParttran1BeforeClose(DataSet: TDataSet);
    procedure QJoborder2DISCOLValidate(Sender: TField);
    procedure QJoborder2REPCODValidate(Sender: TField);
    procedure QJoborder2OILDISCValidate(Sender: TField);
    procedure QQa_invoi1LOCATValidate(Sender: TField);
    procedure QQa_invoi1CalcFields(DataSet: TDataSet);
    procedure QParttran1NewRecord(DataSet: TDataSet);
    procedure QJoborder1CAMPNOValidate(Sender: TField);
    procedure QOthinvoi1TAXDTValidate(Sender: TField);
    procedure QServtran1BeforePost(DataSet: TDataSet);
    procedure QJoborder2AfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure QJoborder2RFINSHDTValidate(Sender: TField);
    procedure QQa_invoi1STRNOValidate(Sender: TField);
    procedure QJoborder1RLKILOMTValidate(Sender: TField);
    procedure QJobTimeNewRecord(DataSet: TDataSet);
    procedure QJobTimeAfterPost(DataSet: TDataSet);
    procedure QNewprobRSCODEValidate(Sender: TField);
    procedure QOthtran1CODEValidate(Sender: TField);
    procedure QOthinvoi1JOBNOValidate(Sender: TField);
    procedure QOthtran1REDUValidate(Sender: TField);
    procedure QOthtran1UPRICEValidate(Sender: TField);
    procedure QQa_tran1UPRICEValidate(Sender: TField);
    procedure QQa_tran1QTYValidate(Sender: TField);
    procedure QQa_tran1REDUValidate(Sender: TField);
    procedure QQa_invoi1TOTSERVValidate(Sender: TField);
    procedure QQa_invoi1TOTPARTValidate(Sender: TField);
    procedure QQa_invoi1TOTOTHValidate(Sender: TField);
    procedure QQa_invoi1TOTREDUValidate(Sender: TField);
    procedure QQa_invoi1TOTREDUOTHValidate(Sender: TField);
    procedure QQa_invoi1REDUSERVValidate(Sender: TField);
    procedure QQa_invoi1REDUPARTValidate(Sender: TField);
    procedure QQa_invoi1TOTSERV_IValidate(Sender: TField);
    procedure QQa_invoi1TOTALALLValidate(Sender: TField);
    procedure QQa_invoi1TOTPART_IValidate(Sender: TField);
    procedure QQa_invoi1TOTOTH_IValidate(Sender: TField);
    procedure QQa_invoi1POLICYNOValidate(Sender: TField);
    procedure QQa_invoi1CLAIMNOValidate(Sender: TField);
    procedure QOthinvoi1BILLNOValidate(Sender: TField);
    procedure QJob_tranPARTNOChange(Sender: TField);
    procedure QJob_tranQTYValidate(Sender: TField);
    procedure QJob_tranUPRICEValidate(Sender: TField);
    procedure QJob_tranREDUValidate(Sender: TField);
    procedure QJob_tranNETPRICChange(Sender: TField);
    procedure QServtranAfterDelete(DataSet: TDataSet);
    procedure QServtranAfterPost(DataSet: TDataSet);
    procedure QServtranBeforePost(DataSet: TDataSet);
    procedure QServtranNewRecord(DataSet: TDataSet);
    procedure QServtranCODEChange(Sender: TField);
    procedure QServtranFRTValidate(Sender: TField);
    procedure QServtranUPRICEValidate(Sender: TField);
    procedure QServtranREDUValidate(Sender: TField);
    procedure QServtranDISCAMTValidate(Sender: TField);
    procedure QServtranPRICEValidate(Sender: TField);
    procedure QJob_tranNewRecord(DataSet: TDataSet);
    procedure QJob_tranPARTNOValidate(Sender: TField);
    procedure QOthinvoi1VATValidate(Sender: TField);
    procedure QJoborder1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QOthinvoi1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QQa_invoi1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QParttran1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
    procedure CheckEditRight(XSource: TDataSource);
  public
    { Public declarations }
    No1, SumStarttrn, Vlastkilo, nSumDisServ, nSumDisPart, nSumDisOth, nVat, nSumDiscount: Double;
    CountFound: Integer;
    DoupCode: string;
    function RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function RunNumBer(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
    function MaxNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
    procedure CloseAll;
    procedure Runtaxothinv;
    procedure SumServ;
  end;

var
  Dm_SV: TDm_SV;
  T1, TmpCode: string;
  Duplicate: Boolean;
  DataChang: Boolean;

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
  USoftFirm, Functn01, Dmsec;
{$R *.DFM}

function TDm_SV.RunNumber(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  Zero: string;
  PF, HH, Lc, YY, MM, S2, Y1, DD: string;
  i, LL: integer;
  LN, V1: Double;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  Lc := Lvalue;
  YY := Copy(DateTostr(Dvalue), 7, 4);
  Y1 := Copy(YY, 3, 2);
  MM := Copy(DateTostr(Dvalue), 4, 2);
  DD := Copy(DateTostr(Dvalue), 1, 2);
  with QLocat do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (QLocat.Eof) and (QLocat.Bof) then
      sfmain.raiseException('ไม่พบรหัสสาขา')
    else
      PF := QLocat.FieldByname('SHORTL').Asstring;
  end;

  with qRunNumber do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,CR_DATE,RUNNO FROM RUNNUMBER ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CR_YEAR = :CRY ' +
      ' AND CR_MONTH= :CRM ' +
      ' AND CR_DATE = :CRD ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := MM;
    Params[3].Asstring := DD;
    Open;
    if (qRunNumber.Eof) and (qRunNumber.Bof) then
      with qRunNumber do
      begin
        Insert;
        Fieldbyname('Locat').Asstring := Lc;
        Fieldbyname('Cr_year').Asstring := YY;
        Fieldbyname('Cr_Month').Asstring := MM;
        Fieldbyname('Cr_Date').Asstring := DD;
        Post;
      end;
  end;

  LN := qRunNumber.FieldByname('RUNNO').AsFloat;
  V1 := LN + 1;
  S2 := FloatTostr(V1);
  LL := length(S2);
  Zero := '';
  for i := 1 to (3 - LL) do
    Zero := Zero + '0';
  Result := Zero + S2;

  if V1 > qRunNumber.FieldByname('RUNNO').AsFloat then
  begin
    qRunNumber.Edit;
    qRunNumber.Fieldbyname('RUNNO').AsFloat := V1;
    qRunNumber.Post;
  end;
end;

procedure TDm_SV.CheckEditRight(XSource: TDataSource);
begin
  if sfMain.Xlevel > '1' then
    if (XSource.State in DsEditmodes) and (not sfMain.Edit_right) then
    begin
      XSource.dataset.Cancel;
      MessageDlg('ไม่มีสิทธิ์ในการแก้ไขข้อมูล', mterror, [mbok], 0);
    end;
end;

function TDm_SV.RunNo(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
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

function TDm_SV.MaxNo(HField, LField, Lvalue, SQLTXT: string; Dvalue: TdateTime): string;
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

procedure TDm_SV.QQa_invoi1QDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_QA';
  LF := 'L_QA';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QQa_invoi1.FieldByName('LOCAT').Asstring;
    DV := QQa_invoi1.FieldByName('QDATE').asDateTime;
    if QQa_invoi1UpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(QUOTNO) AS MAXNO FROM QA_INVOI WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(QUOTNO,2,2)=:EDIT2 AND SUBSTR(QUOTNO,5,2)=:EDIT3 AND SUBSTR(QUOTNO,7,2)=:EDIT4';

      if Duplicate then
        QQa_invoi1.FieldByName('QUOTNO').Asstring := MaxNo(HF, LF, LV, SQLTXT, DV)
      else
        QQa_invoi1.FieldByName('QUOTNO').Asstring := RunNo(HF, LF, LV, DV);
    end;
  end;
end;

procedure TDm_SV.QQa_invoi1AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QQa_invoi1QUOTNO.asstring;
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if QQa_invoi1.Active then
      if (QQa_invoi1.ApplyUpdates = 0) then
        QQa_invoi1.CommitUpdates
      else
        raise Exception.Create(QQa_invoi1.RowError.Message);
    if QQa_tran1.Active then
      if (QQa_tran1.ApplyUpdates = 0) then
        QQa_tran1.CommitUpdates
      else
        raise Exception.Create(QQa_tran1.RowError.Message);
    if QLastNo.Active then
      if (QLastNo.ApplyUpdates = 0) then
        QLastNo.CommitUpdates
      else
        raise Exception.Create(QLastNo.RowError.Message);
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.RollBack;
    QQa_invoi1.Edit;
    raise;
  end;
 //
  with Dm_Sv.QQa_invoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM QA_INVOI WHERE QUOTNO = :XQUO ');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_Sv.QQa_tran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM QA_TRAN WHERE QUOTNO = :XQUO ');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TDm_SV.QQa_invoi1BeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
  if QQa_invoi1JOBNO.Asstring <> '' then
    SFmain.RaiseException('มีการเปิด Job โดยอ้างอิงใบประเมินนี้แล้ว #' + QQa_invoi1JOBNO.Asstring);

  QQa_tran1.First;
  while not QQa_tran1.Eof do
  begin
    QQa_tran1.Delete;
  end;
end;

procedure TDm_SV.QJoborder1RECVDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_JOB';
  LF := 'L_JOB';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QJoborder1.FieldByName('LOCAT').Asstring;
    DV := QJoborder1.FieldByName('RECVDATE').asDateTime;

    if QJoborder1UpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(JOBNO) AS MAXNO FROM JOBORDER WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(JOBNO,2,2)=:EDIT2 AND SUBSTR(JOBNO,5,2)=:EDIT3 AND SUBSTR(JOBNO,7,2)=:EDIT4 ';

      if Duplicate then
        QJoborder1.FieldByName('JOBNO').Asstring := MaxNo(HF, LF, LV, SQLTXT, DV)
      else
        QJoborder1.FieldByName('JOBNO').Asstring := RunNo(HF, LF, LV, DV);
    end;

    LV := QJoborder1.FieldByName('LOCAT').Asstring;
    DV := QJoborder1.FieldByName('RECVDATE').asDateTime;
    if QJoborder1UpdateStatus.Value = 'Inserted' then
      QJoborder1.FieldByName('RUNNO').Asstring := Dm_Sv.RunNumber(HF, LF, LV, DV);
  end;
end;

procedure TDm_SV.QJoborder1AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := Dm_Sv.QJoborder1.Fieldbyname('Jobno').Asstring;
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if QJoborder1.Active then
      if (QJoborder1.ApplyUpdates = 0) then
        QJoborder1.CommitUpdates
      else
        raise Exception.Create(QJoborder1.RowError.Message);
    if QLastNo.Active then
      if (QLastNo.ApplyUpdates = 0) then
        QLastNo.CommitUpdates
      else
        raise Exception.Create(QLastNo.RowError.Message);
    if QOrdrep1.Active then
      if (QOrdrep1.ApplyUpdates = 0) then
        QOrdrep1.CommitUpdates
      else
        raise Exception.Create(QOrdrep1.RowError.Message);
    if QServtran.Active then
      if (QServtran.ApplyUpdates = 0) then
        QServtran.CommitUpdates
      else
        raise Exception.Create(QServtran.RowError.Message);
    if QJob_tran.Active then
      if (QJob_tran.ApplyUpdates = 0) then
        QJob_tran.CommitUpdates
      else
        raise Exception.Create(QJob_tran.RowError.Message);
    if QJob_tran1.Active then
      if (QJob_tran1.ApplyUpdates = 0) then
        QJob_tran1.CommitUpdates
      else
        raise Exception.Create(QJob_tran1.RowError.Message);
    if QJob_tran2.Active then
      if (QJob_tran2.ApplyUpdates = 0) then
        QJob_tran2.CommitUpdates
      else
        raise Exception.Create(QJob_tran2.RowError.Message);
    if qRunNumber.Active then
      if (qRunNumber.ApplyUpdates = 0) then
        qRunNumber.CommitUpdates
      else
        raise Exception.Create(qRunNumber.RowError.Message);
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.RollBack;
    QJoborder1.Edit;
    raise;
  end;
  //
  with Dm_Sv.QJoborder1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_Sv.QServtran do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = :JNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_Sv.QOrdrep1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = :JNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_Sv.QJob_tran do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOB_TRAN WHERE JOBNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_Sv.QJob_tran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOB_TRAN1 WHERE JOBNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_Sv.QJob_tran2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOB_TRAN2 WHERE JOBNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with QSvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM View_SVMAST WHERE STRNO = :XQNO ');
    Params[0].Asstring := Dm_Sv.QJoborder1.Fieldbyname('Strno').asstring;
    Open;
  end;
end;

procedure TDm_SV.QJoborder1AfterCancel(DataSet: TDataSet);
begin
  if QJoborder1.Active then
    QJoborder1.CancelUpdates;
  if QOrdrep1.Active then
    QOrdrep1.CancelUpdates;
  if QServtran.Active then
    QServtran.CancelUpdates;
  if QJob_tran.Active then
    QJob_tran.CancelUpdates;
  if QJob_tran1.Active then
    QJob_tran1.CancelUpdates;
  if QJob_tran2.Active then
    QJob_tran2.CancelUpdates;
  if QLastNo.Active then
    QLastNo.CancelUpdates;
  QSvmast.Close;
end;

procedure TDm_SV.QOthinvoi1INVDATEValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  HF := 'H_DVOH';
  LF := 'L_DVOH';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := QOthinvoi1.FieldByName('LOCAT').Asstring;
    DV := QOthinvoi1.FieldByName('INVDATE').AsDateTime;

    if QOthinvoi1UpdateStatus.Value = 'Inserted' then
    begin
      sqltxt := 'SELECT MAX(INVNO) AS MAXNO FROM OTHINVOI WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(INVNO,2,2)=:EDIT2 AND SUBSTR(INVNO,5,2)=:EDIT3 AND SUBSTR(INVNO,7,2)=:EDIT4';
      if Duplicate then
        QOthinvoi1.FieldByName('INVNO').Asstring := MaxNo(HF, LF, LV, sqltxt, DV)
      else
        QOthinvoi1.FieldByName('INVNO').Asstring := RunNo(HF, LF, LV, DV);
    end;
  end;
end;

procedure TDm_SV.QOthinvoi1BeforePost(DataSet: TDataSet);
begin
  QOthtran1.First;

  QOthtran1.last;
  if QOthtran1.Fieldbyname('CODE').Asstring = '' then
    QOthtran1.Delete;

  if QOthinvoi1CUSCOD.Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');

  if QOthinvoi1.FieldByName('JOBNO').Asstring = '' then
  begin
    QOthtran1.First;
    QOthinvoi1.FieldByName('JOBNO').Asstring := QOthtran1.Fieldbyname('JOBNO').Asstring;
  end;

  if QOthinvoi1TAXDT.Asstring <> '' then
  begin
    if QOthinvoi1TAXDT.Asdatetime < QOthinvoi1INVDATE.Asdatetime then
      SFmain.RaiseException('ออกใบกำกับก่อนใบส่งของ');
  end;

  if QOthinvoi1UpdateStatus.Value = 'Inserted' then
  begin
    //
    QOthinvoi1INVDATEValidate(QOthinvoi1INVDATE);
    //
    QOthtran1.DisableControls;
    QOthtran1.AfterPost := Nil;
    QOthtran1.First;
    while not (QOthtran1.eof) do
    begin
      QOthtran1.Edit;
      QOthtran1.FieldByName('INVNO').Asstring := QOthinvoi1.FieldByName('INVNO').Asstring;
      QOthtran1.Next;
    end;
    QOthtran1.AfterPost := QOthtran1AfterPost;
    QOthtran1.EnableControls;
  end;
  //
end;

procedure TDm_SV.QOthinvoi1AfterPost(DataSet: TDataSet);
var
  Flg, S: string;
begin
  Flg := Dm_Sv.QOthinvoi1.FieldByName('Flag').Asstring;
  S := Dm_Sv.QOthinvoi1.FieldByName('INVNO').Asstring;
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if QOthinvoi1.Active then
      if (QOthinvoi1.ApplyUpdates = 0) then
        QOthinvoi1.CommitUpdates
      else
        raise Exception.Create(QOthinvoi1.RowError.Message);
    if QOthtran1.Active then
      if (QOthtran1.ApplyUpdates = 0) then
        QOthtran1.CommitUpdates
      else
        raise Exception.Create(QOthtran1.RowError.Message);
    if QLastNo.Active then
      if (QLastNo.ApplyUpdates = 0) then
        QLastNo.CommitUpdates
      else
        raise Exception.Create(QLastNo.RowError.Message);
    if QOthJobord.Active then
      if (QOthJobord.ApplyUpdates = 0) then
        QOthJobord.CommitUpdates
      else
        raise Exception.Create(QOthJobord.RowError.Message);
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
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.RollBack;
    QOthinvoi1.Edit;
    raise;
  end;
  //
  with Dm_Sv.QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with Dm_Sv.QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHTRAN WHERE INVNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
  if (QOthinvoi1TAXNO.Asstring <> '') and ((QOthinvoi1FLAG.Asstring = '1') or (QOthinvoi1FLAG.Asstring = '3')) then
  begin
    Dm_Sv.QOthtran1.DisableControls;
    Dm_Sv.QOthtran1.First;
    while not Dm_Sv.QOthtran1.Eof do
    begin
      with Query1 do
      begin
        Close;
        Sql.Clear;
        if QOthinvoi1CANCELID.Asstring = '' then
        begin
          Sql.Add('UPDATE PARTTRAN SET TAXNO=:EDIT1,TAXDATE=:EDIT2 WHERE JOBNO=:EDIT3 AND PARTNO=:EDIT4 ' +
            'AND (CLAIM=''I'' OR CLAIM=''Y'')');
          Params[0].Asstring := QOthinvoi1TAXNO.Asstring;
          Params[1].Asdate := QOthinvoi1TAXDT.Asdatetime;
          Params[2].Asstring := QOthtran1.Fieldbyname('Jobno').Asstring;
          Params[3].Asstring := QOthtran1.Fieldbyname('Code').Asstring;
        end
        else
        begin
          Sql.Add('UPDATE PARTTRAN SET TAXNO='''',TAXDATE=Null WHERE JOBNO=:EDIT3 AND PARTNO=:EDIT4 ' +
            'AND (CLAIM=''I'' OR CLAIM=''Y'')');
          Params[0].Asstring := QOthtran1.Fieldbyname('Jobno').Asstring;
          Params[1].Asstring := QOthtran1.Fieldbyname('Code').Asstring;
        end;
        ExecSql;
      end;
      Dm_Sv.QOthtran1.Next;
    end;
    Dm_Sv.QOthtran1.EnableControls;
  end;
end;

procedure TDm_SV.QOthinvoi1AfterCancel(DataSet: TDataSet);
begin
  if QOthinvoi1.Active then
    QOthinvoi1.CancelUpdates;
  if QOthtran1.Active then
    QOthtran1.CancelUpdates;
  if QLastNo.Active then
    QLastNo.CancelUpdates;
  if QOthJobord.Active then
    QOthJobord.CancelUpdates;
  if QTAXSAL.Active then
    QTAXSAL.CancelUpdates;
  if QArpaytrn.Active then
    QArpaytrn.CancelUpdates;
end;

procedure TDm_SV.SoOthtran1DataChange(Sender: TObject; Field: TField);
begin
  with QSvstock do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVSTOCK WHERE CODE= :XCODE  ');
    Params[0].Asstring := QOthtran1.FieldByName('CODE').Asstring;
    Open;
  end;
end;

procedure TDm_SV.SoQa_tran1DataChange(Sender: TObject; Field: TField);
begin
  with Dm_Sv.QSvstock do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVSTOCK WHERE CODE= :XCODE AND LOCAT= :XLOCAT ');
    Params[0].Asstring := Dm_Sv.QQa_tran1.FieldByName('PARTNO').Asstring;
    Params[1].Asstring := Dm_Sv.QQa_invoi1.FieldByName('LOCAT').Asstring;
    Open;
  end;
end;

procedure TDm_SV.QJoborder2AfterPost(DataSet: TDataSet);
begin
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if QJoborder2.Active then
      if (QJoborder2.ApplyUpdates = 0) then
        QJoborder2.CommitUpdates
      else
        raise Exception.Create(QJoborder2.RowError.Message);
    if QServtran1.Active then
      if (QServtran1.ApplyUpdates = 0) then
        QServtran1.CommitUpdates
      else
        raise Exception.Create(QServtran1.RowError.Message);
    if QOuttran1.Active then
      if (QOuttran1.ApplyUpdates = 0) then
        QOuttran1.CommitUpdates
      else
        raise Exception.Create(QOuttran1.RowError.Message);
    if QColrtran1.Active then
      if (QColrtran1.ApplyUpdates = 0) then
        QColrtran1.CommitUpdates
      else
        raise Exception.Create(QColrtran1.RowError.Message);
    if QParttran1.Active then
      if (QParttran1.ApplyUpdates = 0) then
        QParttran1.CommitUpdates
      else
        raise Exception.Create(QParttran1.RowError.Message);
    if QOiltran1.Active then
      if (QOiltran1.ApplyUpdates = 0) then
        QOiltran1.CommitUpdates
      else
        raise Exception.Create(QOiltran1.RowError.Message);
    if QJobTime.Active then
      if (QJobTime.ApplyUpdates = 0) then
        QJobTime.CommitUpdates
      else
        raise Exception.Create(QJobTime.RowError.Message);
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.RollBack;
    if not DataChang then
      QJoborder2.Edit;
    raise;
  end;
  //
  with Dm_Sv.QServtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
    Open;
  end;
  with Dm_Sv.QOuttran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
    Open;
  end;
  with Dm_Sv.QColrtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
    Open;
  end;
end;

procedure TDm_SV.QJoborder2AfterCancel(DataSet: TDataSet);
begin
  if QJoborder2.Active then
    QJoborder2.CancelUpdates;
  if Dm_Sv.QJobTime.Active then
    Dm_Sv.QJobTime.CancelUpdates;
  if Dm_Sv.QParttran1.Active then
    Dm_Sv.QParttran1.CancelUpdates;
  if Dm_Sv.QOiltran1.Active then
    Dm_Sv.QOiltran1.CancelUpdates;
  if Dm_Sv.QOuttran1.Active then
    Dm_Sv.QOuttran1.CancelUpdates;
  if Dm_Sv.QColrtran1.Active then
    Dm_Sv.QColrtran1.CancelUpdates;
end;

procedure TDm_SV.SoOuttran1DataChange(Sender: TObject; Field: TField);
begin
  with QSvStock do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVSTOCK WHERE CODE= :XCODE AND LOCAT= :XLOLAT ');
    Params[0].Asstring := QOuttran1.FieldByName('CODE').Asstring;
    Params[1].Asstring := QJoborder2.FieldByName('LOCAT').Asstring;
    Open;
  end;
end;

procedure TDm_SV.SoColrtran1DataChange(Sender: TObject; Field: TField);
begin
  with QSvStock do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVSTOCK WHERE CODE= :XCODE AND LOCAT= :XLOLAT ');
    Params[0].Asstring := QColrtran1.FieldByName('CODE').Asstring;
    Params[1].Asstring := QJoborder2.FieldByName('LOCAT').Asstring;
    Open;
  end;
end;

procedure TDm_SV.QOuttran1Afte(DataSet: TDataSet);
begin
  if QOuttran1.Active then
    QOuttran1.CancelUpdates;
end;

procedure TDm_SV.QOiltran1AfterPost(DataSet: TDataSet);
var
  XOil, Xvat, XRm, XDisc: Double;
  Bk: Tbookmark;
begin
  {ใช้ Field INV2_SV เก็บ ส่วนลด น้ำมัน}
  Bk := QOiltran1.Getbookmark;
  QOiltran1.Disablecontrols;
  XOil := 0;
  XDisc := 0;
  Xvat := QJoborder2.FieldByName('Vat').AsFloat;
  QOiltran1.First;
  while not (QOiltran1.eof) do
  begin
    XDisc := XDisc + (QOiltran1.FieldByName('Qty').AsFloat * QOiltran1.FieldByName('Uprice').AsFloat - QOiltran1.FieldByName('TOTPRC').AsFloat);
    if QOiltran1.FieldByName('Claim').Asstring = 'N' then
      XOil := XOil + Roundto(QOiltran1.FieldByName('TOTPRC').AsFloat, -2);
    QOiltran1.Next;
  end;
  QOiltran1.enablecontrols;
  QJoborder2.FieldByName('INV2_SV').AsFloat := XDisc;

  if QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    QJoborder2.FieldByName('INV2_PT').AsFloat := XOil;
    QJoborder2.FieldByName('OILNET').AsFloat := XOil;
    QJoborder2.FieldByName('OILVat').AsFloat := Roundto(XOil * Xvat / 100, -2); //Strtofloat(T1);
    QJoborder2.FieldByName('OILTot').AsFloat := XOil + QJoborder2.FieldByName('OILVat').AsFloat;
  end
  else
  begin
    QJoborder2.FieldByName('INV2_PT').AsFloat := XOil;
    XRm := XOil - QJoborder2.FieldByName('OILDISC').AsFloat;
  //  T1 := Floatt(,ffFixed,15,2) ;

    QJoborder2.FieldByName('OILVat').AsFloat := FRound(XRm * Xvat / (100 + Xvat), 2);
    QJoborder2.FieldByName('OILNET').AsFloat := XRm - QJoborder2.FieldByName('OilVat').AsFloat;
    QJoborder2.FieldByName('OILTot').AsFloat := XRm;
  end;

  SumServ;
  QOiltran1.Gotobookmark(Bk);
  QOiltran1.Freebookmark(Bk);
end;

procedure TDm_SV.QOuttran1AfterPost(DataSet: TDataSet);
var
  XOut, Xvat, XDisc, VT: Double;
  Bk: Tbookmark;
begin
  Bk := QOuttran1.Getbookmark;
  XOut := 0;
  XDisc := 0;
  Xvat := QJoborder2.FieldByName('Vat').AsFloat;
  QOuttran1.DisableControls;
  QOuttran1.First;
  while not (QOuttran1.eof) do
  begin
    XDisc := XDisc + (QOuttran1.FieldByName('Qty').AsFloat * QOuttran1.FieldByName('Uprice').AsFloat - QOuttran1.FieldByName('Netpric').AsFloat);
    if QOuttran1.FieldByName('Claim').Asstring = 'N' then
      XOut := XOut + Roundto(QOuttran1.FieldByName('NETPRIC').AsFloat, -2);
    QOuttran1.Next;
  end;
  QOuttran1.EnableControls;
  QJoborder2.FieldByName('OUTJDISC').AsFloat := XDisc;

  if QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    VT := Roundto((XOut * Xvat / 100), -2);
    QJoborder2.FieldByName('OUTJNET').AsFloat := XOut;
    QJoborder2.FieldByName('OUTJVat').AsFloat := VT;
    QJoborder2.FieldByName('OUTJTot').AsFloat := XOut + QJoborder2.FieldByName('OUTJVat').AsFloat;
  end
  else
  begin
    VT := FRound(XOut * (Xvat / (100 + Xvat)), 2);
    QJoborder2.FieldByName('OUTJVat').AsFloat := VT;
    QJoborder2.FieldByName('OUTJNET').AsFloat := XOut - QJoborder2.FieldByName('OUTJVat').AsFloat;
    QJoborder2.FieldByName('OUTJTot').AsFloat := XOut;
  end;
  SumServ;
  QOuttran1.Gotobookmark(Bk);
  QOuttran1.Freebookmark(Bk);
end;

procedure TDm_SV.QColrtran1AfterPost(DataSet: TDataSet);
var
  XCol, Xvat, XDisc: Double;
  Bk: Tbookmark;
begin
  Bk := QColrtran1.Getbookmark;
  XCol := 0;
  XDisc := 0;
  Xvat := QJoborder2.FieldByName('Vat').AsFloat;
  QColrtran1.DisableControls;
  QColrtran1.First;
  while not (QColrtran1.eof) do
  begin
    XDisc := XDisc + (QColrtran1.FieldByName('Price').AsFloat - QColrtran1.FieldByName('NETPRIC').AsFloat);
    if QColrtran1.FieldByName('Claim').Asstring = 'N' then
      XCol := XCol + Roundto(QColrtran1.FieldByName('NETPRIC').AsFloat, -2);
    QColrtran1.Next;
  end;
  QColrtran1.EnableControls;

  QJoborder2.FieldByName('COLORDISC').AsFloat := XDisc;

  if QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    //T1 := FloattostrF((XCol*Xvat/100),ffFixed,15,2) ;
    QJoborder2.FieldByName('COLORNET').AsFloat := XCol;
    QJoborder2.FieldByName('COLORVat').AsFloat := RoundTo((XCol * Xvat / 100), -2);
    QJoborder2.FieldByName('COLORTot').AsFloat := XCol + QJoborder2.FieldByName('COLORVat').AsFloat;
  end
  else
  begin
    //T1 := FloattostrF(XCol*(xvat/(100+xvat)),ffFixed,15,2) ;
    QJoborder2.FieldByName('COLORVat').AsFloat := Roundto(XCol * Xvat / (100 + Xvat), 2);
    QJoborder2.FieldByName('COLORNET').AsFloat := XCol - QJoborder2.FieldByName('COLORVat').AsFloat;
    QJoborder2.FieldByName('COLORTot').AsFloat := XCol;
  end;
  SumServ;
  QColrtran1.Gotobookmark(Bk);
  QColrtran1.Freebookmark(Bk);
end;

procedure TDm_SV.QColrtran1NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QColrtran1);
  QColrtran1.FieldByName('JOBNO').Asstring := QJoborder2.FieldByName('JOBNO').Asstring;
  QColrtran1.FieldByName('JOBDATE').AsDatetime := QJoborder2.FieldByName('RECVdate').AsDatetime;
  QColrtran1.FieldByName('LOCAT').Asstring := QJoborder2.FieldByName('LOCAT').Asstring;
  QColrtran1.FieldByName('JOBTYP').Asstring := QJoborder2.FieldByName('REPTYPE').Asstring;
  QColrtran1.FieldByName('FRT').Asfloat := 1;
  QColrtran1.FieldByName('CLAIM').Asstring := 'N';
  QColrtran1.FieldByName('USERID').Asstring := SFMain.XUser_ID;
  QColrtran1.FieldByName('TIME1').Asdatetime := Now;
end;

procedure TDm_SV.QServtran1AfterPost(DataSet: TDataSet);
var
  XServ, XVat, XDisc: Double;
  BK: Tbookmark;
begin
  BK := QServtran1.Getbookmark;
  XServ := 0;
  XDisc := 0;
  CountFound := 0;

  XVat := QJoborder2.FieldByName('Vat').AsFloat;
  QServtran1.DisableControls;
  QServtran1.First;
  while not (QServtran1.eof) do
  begin
    XDisc := XDisc + (QServtran1.FieldByName('FRT').AsFloat * QServtran1.FieldByName('UPRICE').AsFloat - QServtran1.FieldByName('NETPRIC').AsFloat);
    if QServtran1.FieldByName('Claim').Asstring = 'N' then
      XServ := XServ + FRound(QServtran1.FieldByName('NETPRIC').AsFloat, 2);

    if TmpCode = QServtran1.Fieldbyname('Code').Asstring then
      CountFound := CountFound + 1;

    if CountFound > 1 then
      DoupCode := QServtran1.Fieldbyname('Code').Asstring;

    QServtran1.Next;
  end;
  QServtran1.EnableControls;

  QJoborder2.FieldByName('SERVDISC').AsFloat := XDisc;

  if QJoborder2.FieldByName('VATTYPE').Asstring = '2' then
  begin
    QJoborder2.FieldByName('SERVNET').AsFloat := XServ;
    QJoborder2.FieldByName('SERVVAT').AsFloat := FRound(XServ * XVat / 100, 2);
    QJoborder2.FieldByName('SERVTOT').AsFloat := XServ + QJoborder2.FieldByName('SERVVAT').AsFloat;
  end
  else
  begin
    QJoborder2.FieldByName('SERVVAT').AsFloat := FRound(XServ * XVat / (100 + XVat), 2);
    QJoborder2.FieldByName('SERVNET').AsFloat := XServ - QJoborder2.FieldByName('SERVVAT').AsFloat;
    QJoborder2.FieldByName('SERVTOT').AsFloat := XServ;
  end;
  SumServ;
  QServtran1.Gotobookmark(BK);
  QServtran1.Freebookmark(BK);
end;

procedure TDm_SV.QOuttran1NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QOuttran1);
  QOuttran1.FieldByName('JOBNO').Asstring := QJoborder2.FieldByName('JOBNO').Asstring;
  QOuttran1.FieldByName('JOBDATE').AsDatetime := QJoborder2.FieldByName('RECVdate').AsDatetime;
  QOuttran1.FieldByName('LOCAT').Asstring := QJoborder2.FieldByName('LOCAT').Asstring;
  QOuttran1.FieldByName('JOBTYP').Asstring := QJoborder2.FieldByName('REPTYPE').Asstring;
  QOuttran1.FieldByName('CLAIM').Asstring := 'N';
  QOuttran1.FieldByName('USERID').Asstring := SFMain.XUser_ID;
  QOuttran1.FieldByName('TIME1').Asdatetime := Now;
end;

procedure TDm_SV.QJoborder1BeforePost(DataSet: TDataSet);
begin
  //
  if QJoborder1JOBNO.Asstring = '' then
    SFmain.RaiseException('ไม่มีเลขที่ Job');
  //
  Dm_Sv.QOrdrep1.Last;
  if Trim(Dm_Sv.QOrdrep1.FieldByname('Repdesc').Asstring) = '' then
    Dm_Sv.QOrdrep1.Delete;

  if QJoborder1UpdateStatus.Value = 'Inserted' then
  begin
    // rerun
    if Duplicate then
    begin
      QJoborder1RECVDATEValidate(QJoborder1RECVDATE);
    end;

    Clearasstring(QJoborder1);
  end;
  Dm_Sv.QOrdrep1.AfterPost := Nil;
  Dm_sv.QOrdrep1.AfterEdit := Nil;
  Dm_sv.QOrdrep1.AfterDelete := Nil;
  QOrdrep1.DisableControls;
  QOrdrep1.First;
  while not QOrdrep1.Eof do
  begin
    QOrdrep1.Edit;
    QOrdrep1.Fieldbyname('JOBNO').asstring := QJoborder1.FieldByName('JOBNO').Asstring;
    if Trim(Dm_Sv.QOrdrep1.FieldByname('Repdesc').Asstring) = '' then
      Dm_Sv.QOrdrep1.Delete;
    QOrdrep1.Next;
  end;
  QOrdrep1.EnableControls;
  Dm_Sv.QOrdrep1.AfterPost := QOrdrep1AfterPost;
  Dm_sv.QOrdrep1.AfterEdit := QOrdrep1AfterEdit;
  Dm_sv.QOrdrep1.Afterdelete := QOrdrep1AfterEdit;

  Dm_Sv.QServtran.AfterPost := Nil;
  Dm_sv.QServtran.AfterDelete := Nil;
  QServtran.DisableControls;
  QServtran.First;
  while not QServtran.Eof do
  begin
    QServtran.Edit;
    QServtran.Fieldbyname('JOBNO').asstring := QJoborder1.FieldByName('JOBNO').Asstring;
    QServtran.Next;
  end;
  QServtran.EnableControls;
  Dm_Sv.QServtran.AfterPost := QServtranAfterPost;
  Dm_Sv.QServtran.AfterDelete := QServtranAfterDelete;

  QJob_tran.DisableControls;
  QJob_tran.First;
  while not QJob_tran.Eof do
  begin
    QJob_tran.Edit;
    QJob_tran.Fieldbyname('JOBNO').asstring := QJoborder1.FieldByName('JOBNO').Asstring;
    QJob_tran.Next;
  end;
  QJob_tran.EnableControls;

  {QJob_tran1.DisableControls;
  QJob_tran1.First;
  While not QJob_tran1.Eof Do
  Begin
    QJob_tran1.Edit;
    QJob_tran1.Fieldbyname('JOBNO').asstring :=QJoborder1.FieldByName('JOBNO').Asstring;
    QJob_tran1.Next;
  end;
  QJob_tran1.EnableControls;

  QJob_tran2.DisableControls;
  QJob_tran2.First;
  While not QJob_tran2.Eof Do
  Begin
    QJob_tran2.Edit;
    QJob_tran2.Fieldbyname('JOBNO').asstring :=QJoborder1.FieldByName('JOBNO').Asstring;
    QJob_tran2.Next;
  end;
  QJob_tran2.EnableControls;}
end;

procedure TDm_SV.CloseAll;
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

procedure TDm_SV.QOrdrep1NewRecord(DataSet: TDataSet);
begin
  QOrdrep1.Fieldbyname('Jobno').Asstring := QJoborder1.Fieldbyname('Jobno').Asstring;
  QOrdrep1.Fieldbyname('No').Asfloat := No1;
  QOrdrep1.FieldByName('GRPHD').Asstring := 'A';
  QOrdrep1.FieldByName('FLAG').Asstring := '*';
  QOrdrep1.FieldByName('FRT').AsFloat := 0.00;
  QOrdrep1.FieldByName('USERID').AsString := sfmain.Xuser_ID;
  QOrdrep1.FieldByName('TIME1').AsDateTime := Now;
  QOrdrep1.FieldByName('ESTPRIC').AsFloat := 0;
end;

procedure TDm_SV.QQa_tran1NewRecord(DataSet: TDataSet);
begin
  if QQa_invoi1.FieldByName('QUOTNO').Asstring = '' then
    SFmain.RaiseException('ยังไม่มีเลขที่ใบเสนอราคา');

  ClearasFloat(Dm_Sv.QQa_tran1);
  Dm_Sv.QQa_tran1.FieldByName('QUOTNO').Asstring := Dm_Sv.QQa_invoi1.FieldByName('QUOTNO').Asstring;

  Dm_Sv.QQa_tran1.FieldByName('TIME1').AsDateTime := Now;
  Dm_Sv.QQa_tran1.FieldByName('USERID').Asstring := QQa_invoi1.FieldByName('USERID').Asstring;
end;

procedure TDm_SV.QQa_invoi1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QQa_invoi1);
  QQa_invoi1.FieldByName('LOCAT').Asstring := SFmain.Xlocat;
  QQa_invoi1.FieldByName('INSURTYP').Asstring := '1';
  QQa_invoi1.FieldByName('TIME_NO').Asstring := '1';
  QQa_invoi1QDATE.Asdatetime := Now;
  QQa_invoi1PHOTO.Asstring := 'Y';
  QQa_invoi1VATTYPE.Asstring := '2';
  QQa_invoi1VATRT.Asfloat := Condpay.Fieldbyname('VATRT').asfloat;
  QQa_invoi1STATUS.Asstring := 'A';  // A:เสนอ  J:เปิด JOBซ่อม
  QQa_invoi1.FieldByName('TIME1').AsDateTime := Now;
  QQa_invoi1.FieldByName('USERID').Asstring := SFmain.Xuser_Id;
end;

procedure TDm_SV.QQa_tran1AfterPost(DataSet: TDataSet);
var
  T2, T2_I, XRedu, XVat: Double;
  bk: Tbookmark;
begin
  T2 := 0;
  T2_I := 0;
  XRedu := 0;
  nSumDisServ := 0;
  {Dm_Sv.QQa_Tran1.DisableControls;
  Bk := Dm_Sv.QQa_Tran1.GetBookmark; }
  Dm_Sv.QQa_Tran1.First;
  while not Dm_Sv.QQa_Tran1.Eof do
  begin
    T2 := T2 + Dm_Sv.QQa_Tran1.Fieldbyname('TotalPrc').Asfloat;
    T2_I := T2_I + Dm_Sv.QQa_Tran1.Fieldbyname('INSAPPRVAMT').Asfloat;
    XRedu := XRedu + (Fround(((QQa_tran1NETPRIC.AsFloat * QQa_tran1REDU.AsFloat) / 100), 2));
    Dm_Sv.QQa_Tran1.Next;
  end;
   {QQa_Tran1.EnableControls;

   QQa_Tran1.GotoBookMark(Bk);
   QQa_Tran1.FreeBookmark(Bk);}
   //If Not (Dm_Sv.QQa_invoi1.State In Dseditmodes) Then Dm_Sv.QQa_invoi1.Edit;
  QQa_invoi1.FieldByName('TOTSERV').AsFloat := T2;
  QQa_invoi1.FieldByName('TOTSERV_I').AsFloat := T2_I;

  nSumDisServ := XRedu;

  QQa_invoi1.FieldByName('REDUSERV').AsFloat := nSumDisServ;

  XVat := Dm_sv.QQa_invoi1.Fieldbyname('VATRT').Asfloat;
  if QQa_invoi1.FieldByName('Vattype').Asstring = '2' then
  begin
    QQa_invoi1.FieldByName('TotalPrc').AsFloat := Roundto(T2, -2);
    QQa_invoi1.FieldByName('TotalVAT').AsFloat := Roundto(QQa_invoi1.FieldByName('TotalPrc').AsFloat * XVat / 100, -2);
    ;
    QQa_invoi1.FieldByName('TotalAll').AsFloat := QQa_invoi1.FieldByName('TotalPrc').AsFloat + QQa_invoi1.FieldByName('TotalVAT').AsFloat;
  end
  else
  begin
    QQa_invoi1.FieldByName('TotalVAT').AsFloat := Roundto((T2 * (XVat / (100 + XVat))), -2);
    QQa_invoi1.FieldByName('TotalPrc').AsFloat := T2 - QQa_invoi1.FieldByName('TotalVAT').AsFloat;
    QQa_invoi1.FieldByName('TotalAll').AsFloat := T2;
  end;
end;

procedure TDm_SV.QJoborder1NewRecord(DataSet: TDataSet);
var
  Present: TDateTime;
  Hour, Min, Sec, MSec: Word;
  S: string;
begin
  Duplicate := False;
  ClearAsFloat(QJoborder1);

  Present := Now;
  DecodeTime(Present, Hour, Min, Sec, MSec);
  if Min >= 10 then
    S := IntToStr(Hour) + '.' + IntToStr(Min)
  else
    S := IntToStr(Hour) + '.0' + IntToStr(Min);

  QJoborder1RECVTIME.Asstring := S;
  QJoborder1REPCOD.Asstring := '';
  QJoborder1PAYCOD.Asstring := '';
  QJoborder1LOCAT.Asstring := SFmain.Xlocat;
  QJoborder1RECVDATE.Asdatetime := Date;
  QJoborder1FINSDATE.Asdatetime := Date;
  QJoborder1VATTYPE.Asstring := '2';
  QJoborder1VAT.Asfloat := Condpay.Fieldbyname('VATRT').asfloat;
  QJoborder1Svflag.Asstring := Condpay.Fieldbyname('SVFLAG').asstring;
  QJoborder1FRRATE.AsFloat := Condpay.Fieldbyname('SVRATE').asfloat;
  QJoborder1.FieldByName('STATUS').Asstring := 'W';
  QJoborder1.FieldByName('TIME1').AsDateTime := Now;
  QJoborder1.FieldByName('USERID').Asstring := SFmain.Xuser_Id;
  QJoborder1.FieldByName('FLAG').Asstring := 'N';
  QJoborder1.FieldByName('STATCOD').Asstring := '00';
  if Condpay.Fieldbyname('VATTYPE').asstring <> '' then
    QJoborder1.FieldByName('Vattype').Asstring := Condpay.Fieldbyname('VATTYPE').asstring
  else
    QJoborder1.FieldByName('Vattype').Asstring := '2';
end;

procedure TDm_SV.QJoborder1LOCATValidate(Sender: TField);
begin
  with Dm_Sv.QLocat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD= :0  ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('LOCAT').Asstring;
    Open;
    if Dm_Sv.QLocat.Bof and Dm_Sv.QLocat.eof then
      SFmain.RaiseException('ไม่มีรหัสสาขานี้ในแฟ้มขอ้มูล');
  end;

  QJoborder1RECVDATEValidate(Sender);
end;

procedure TDm_SV.QParttran1AfterOpen(DataSet: TDataSet);
begin
  QPartdes.Open;
end;

procedure TDm_SV.QOrdrep1AfterPost(DataSet: TDataSet);
begin
  Dm_Sv.QOrdrep1.first;
  while not Dm_Sv.QOrdrep1.Eof do
  begin
    No1 := Dm_Sv.QOrdrep1.FieldByname('no').asfloat;
    Dm_Sv.QOrdrep1.Next;
  end;
  if Dm_sv.No1 = 0 then
    Dm_sv.No1 := 1;
  No1 := No1 + 1;
end;

procedure TDm_SV.QJoborder1RECVCODValidate(Sender: TField);
begin
  with Dm_Sv.QOfficer do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE= :XCOD  ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('RECVCOD').Asstring;
    Open;
    if Dm_Sv.QOfficer.Bof and Dm_Sv.QOfficer.eof then
      SFmain.RaiseException('ไม่มีข้อมูลในแฟ้มพนักงาน');
  end;
end;

procedure TDm_SV.QJoborder1REPTYPEValidate(Sender: TField);
begin
  with Dm_Sv.QSvtype do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVTYPE WHERE TYPCOD= :XCOD  ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('REPTYPE').Asstring;
    Open;
    if Dm_Sv.QSvtype.Bof and Dm_Sv.QSvtype.eof then
      SFmain.RaiseException('ไม่มีข้อมูลในแฟ้มประเภทการซ่อมทำ');
  end;
end;

procedure TDm_SV.SumServ;
begin
  QJoborder2.FieldByName('TSV_DISC').AsFloat :=
    QJoborder2.FieldByName('SERVDISC').AsFloat +
    QJoborder2.FieldByName('OILTOT').AsFloat +
    QJoborder2.FieldByName('OUTJDISC').AsFloat +
    QJoborder2.FieldByName('COLORDISC').AsFloat;

  QJoborder2.FieldByName('TSV_NET').AsFloat :=
    QJoborder2.FieldByName('SERVNET').AsFloat +
    QJoborder2.FieldByName('OUTJNET').AsFloat +
    QJoborder2.FieldByName('COLORNET').AsFloat +
    QJoborder2.FieldByName('ADDNET').AsFloat;

  QJoborder2.FieldByName('TSV_VAT').AsFloat :=
    QJoborder2.FieldByName('SERVVAT').AsFloat +
    QJoborder2.FieldByName('OUTJVAT').AsFloat +
    QJoborder2.FieldByName('COLORVAT').AsFloat +
    QJoborder2.FieldByName('ADDVAT').AsFloat;

  QJoborder2.FieldByName('TSV_TOT').AsFloat :=
    QJoborder2.FieldByName('SERVTOT').AsFloat +
    QJoborder2.FieldByName('OUTJTOT').AsFloat +
    QJoborder2.FieldByName('COLORTOT').AsFloat +
    QJoborder2.FieldByName('ADDTOT').AsFloat;
   //
end;

procedure TDm_SV.QOthinvoi1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QOthinvoi1);
  if not CondPay.Active then
    CondPay.Open;

  QOthinvoi1VAT.Asfloat := Condpay.Fieldbyname('VATRT').asfloat;
  QOthinvoi1LOCAT.Asstring := SFmain.Xlocat;
  QOthinvoi1INVDATE.Asdatetime := Date;
  QOthinvoi1DUEDATE.Asdatetime := Date;
  QOthinvoi1Userid.Asstring := SFmain.Xuser_id;
  QOthinvoi1Time1.Asdatetime := Now;
  //QOthinvoi1ISSUTAX.Asstring   := 'Y';
  QOthinvoi1.FieldByName('Flag').Asstring := '1';
  QOthinvoi1.FieldByName('ClaimTyp').Asstring := Condpay.Fieldbyname('FLINVADD').asstring;
  QOthinvoi1.FieldByName('PType').Asstring := 'S';
  QOthinvoi1.FieldByName('ISSUTAX').Asstring := 'N';
  if Condpay.Fieldbyname('VATTYPE').asstring <> '' then
    QOthinvoi1.FieldByName('Vattype').Asstring := Condpay.Fieldbyname('VATTYPE').asstring
  else
    QOthinvoi1.FieldByName('Vattype').Asstring := '2';
end;

procedure TDm_SV.QOthtran1NewRecord(DataSet: TDataSet);
begin
  if Dm_Sv.QOthinvoi1.FieldByName('TAXNO').Asstring <> '' then
  begin
    Dm_Sv.QOthtran1.Cancel;
    SFmain.RaiseException('ออกใบกำกับแล้ว บันทึกไม่ได้');
  end;

  ClearAsFloat(QOthtran1);
  Dm_Sv.QOthtran1.FieldByName('INVNO').Asstring := Dm_Sv.QOthinvoi1.FieldByName('INVNO').Asstring;
  Dm_Sv.QOthtran1.FieldByName('INVDATE').Asdatetime := Dm_Sv.QOthinvoi1.FieldByName('INVDATE').Asdatetime;
  Dm_Sv.QOthtran1.FieldByName('LOCAT').Asstring := Dm_Sv.QOthinvoi1.FieldByName('LOCAT').Asstring;
  Dm_Sv.QOthtran1.FieldByName('Flag').Asstring := Dm_Sv.QOthinvoi1.FieldByName('Flag').Asstring;
  Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat := 1;
  Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat := Dm_Sv.QOthinvoi1.FieldByName('DSCT').AsFloat;
  Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
  Dm_Sv.QOthtran1.FieldByName('USERID').Asstring := SFmain.XUser_ID;
  Dm_Sv.QOthtran1.FieldByName('TIME1').Asdatetime := Now;
end;

procedure TDm_SV.QOthinvoi1CUSCODValidate(Sender: TField);
begin
  with Dm_Sv.Query3 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT Cuscod,Snam,Name1,Name2,Credit FROM CUSTMAST WHERE CUSCOD= :XCUSCOD');
    Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring;
    Open;
    if Dm_Sv.Query3.Bof and Dm_Sv.Query3.eof then
      SFmain.RaiseException('ไม่มีประวัติลูกค้า');

    if Dm_Sv.QOthinvoi1.Fieldbyname('Ptype').Asstring = 'C' then
    begin
      Dm_Sv.QOthinvoi1.FieldByName('DUEDATE').AsDateTime := Dm_Sv.QOthinvoi1.FieldByName('INVDATE').AsDateTime +
        Dm_Sv.Query3.Fieldbyname('Credit').Asfloat;
    end;
  end;
end;

procedure TDm_SV.QOthinvoi1LOCATValidate(Sender: TField);
begin
  with Dm_Sv.QLocat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD= :XLOCAT  ');
    Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('LOCAT').Asstring;
    Open;
    if Dm_Sv.QLocat.Bof and Dm_Sv.QLocat.eof then
      SFmain.RaiseException('ไม่มีรหัสสาขานี้ในแฟ้มขอ้มูล');
  end;

  Dm_SV.QOthinvoi1INVDATEValidate(Sender);
end;

procedure TDm_SV.QOthtran1AfterPost(DataSet: TDataSet);
var
  Xtotprc, Xtotcos, XNetprc, Xvat: Double;
  TT: string;
  bk: Tbookmark;
begin
  Xtotprc := 0;
  Xtotcos := 0;
  XNetprc := 0;
  QOthtran1.DisableControls;
  bk := QOthtran1.GetBookmark;

  QOthtran1.First;
  while not (QOthtran1.eof) do
  begin
    Xtotprc := Xtotprc + QOthtran1.FieldByName('TOTPRIC').AsFloat;
    Xtotcos := Xtotcos + QOthtran1.FieldByName('TOTCOST').AsFloat;
    XNetprc := XNetprc + QOthtran1.FieldByName('NETPRIC').AsFloat;
    QOthtran1.Next;
  end;
  if QOthinvoi1.State = Dsbrowse then
    QOthinvoi1.Edit;

  Xvat := QOthinvoi1VAT.ASfloat;
  if QOthinvoi1.FieldByName('Vattype').Asstring = '2' then
  begin
    //T1 := FloattostrF((XNetprc*Xvat/100),ffFixed,15,2);
    QOthinvoi1.FieldByName('BALANE').AsFloat := XNetprc;
    QOthinvoi1.FieldByName('VATAMT').AsFloat := Roundto(XNetprc * Xvat / 100, -2);
    QOthinvoi1.FieldByName('NETPRC').AsFloat := XNetprc + QOthinvoi1.FieldByName('VATAMT').AsFloat;
  end
  else
  begin
    //T1 := FloattostrF(XNetprc*(xvat/(100+xvat)),ffFixed,15,2) ;
    QOthinvoi1.FieldByName('VATAMT').AsFloat := FRound(XNetprc * Xvat / (100 + Xvat), 2);
    QOthinvoi1.FieldByName('BALANE').AsFloat := XNetprc - QOthinvoi1.FieldByName('VATAMT').AsFloat;
    QOthinvoi1.FieldByName('NETPRC').AsFloat := XNetprc;
  end;
  QOthinvoi1TOTPRC.Asfloat := QOthinvoi1.FieldByName('BALANE').AsFloat;

  QOthtran1.EnableControls;
  QOthtran1.GotoBookMark(bk);
  QOthtran1.FreeBookmark(bk);
end;

procedure TDm_SV.QOthinvoi1PAIDValidate(Sender: TField);
begin
  QOthinvoi1Reduaft.Asfloat := QOthinvoi1Netprc.Asfloat - QOthinvoi1Paid.Asfloat;
end;

procedure TDm_SV.QParttran1AfterPost(DataSet: TDataSet);
var
  XPart, XVat, XRm, XDisc: Double;
  BK: Tbookmark;
begin
  {ใช้ Field INV1_SV เก็บ ส่วนลด อะไหล่}
  BK := QParttran1.Getbookmark;
  QParttran1.DisableControls;
  XPart := 0;
  XDisc := 0;
  XVat := QJoborder2.FieldByName('Vat').AsFloat;
  QParttran1.First;
  while not (QParttran1.eof) do
  begin
    XDisc := XDisc + (QParttran1.FieldByName('QTY').AsFloat * QParttran1.FieldByName('UPRICE').AsFloat - QParttran1.FieldByName('TOTPRC').AsFloat);
    if QParttran1.FieldByName('Claim').Asstring = 'N' then
      XPart := XPart + FRound(QParttran1.FieldByName('TOTPRC').AsFloat, 2);
    QParttran1.Next;
  end;
  QParttran1.enableControls;

  QJoborder2.FieldByName('INV1_SV').AsFloat := XDisc;

  if QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    QJoborder2.FieldByName('INV1_PT').AsFloat := XPart;
    QJoborder2.FieldByName('PartNET').AsFloat := QJoborder2.FieldByName('INV1_PT').AsFloat -
      QJoborder2.FieldByName('Partdisc').AsFloat;

    QJoborder2.FieldByName('PartVat').AsFloat := FRound(XPart * XVat / 100, 2);
    QJoborder2.FieldByName('PartTot').AsFloat := XPart + QJoborder2.FieldByName('PartVat').AsFloat;
  end
  else
  begin
    QJoborder2.FieldByName('INV1_PT').AsFloat := XPart;
    XRm := XPart - QJoborder2.FieldByName('Partdisc').AsFloat;
    QJoborder2.FieldByName('PartVat').AsFloat := FRound(XRm * XVat / (100 + XVat), 2);
    QJoborder2.FieldByName('PartNET').AsFloat := XRm - QJoborder2.FieldByName('Partvat').AsFloat;
    QJoborder2.FieldByName('PartTot').AsFloat := XRm;
  end;

  SumServ;
  QParttran1.Gotobookmark(BK);
  QParttran1.Freebookmark(BK);
end;

procedure TDm_SV.QJoborder1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QJoborder1.CachedUpdates then
    QJoborder1UpdateStatus.Value := UpdateStatusStr[QJoborder1.UpdateStatus];
end;

procedure TDm_SV.QJoborder1STRNOValidate(Sender: TField);
begin
  with Dm_Sv.Qsvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM VIEW_SVMAST WHERE STRNO= :XSTRNO  ');
    Params[0].Asstring := QJoborder1.FieldByName('STRNO').Asstring;
    Open;
    if Dm_Sv.Qsvmast.Eof and Dm_Sv.Qsvmast.Bof then
      SFmain.RaiseException('ไม่พบรถเลขถังนี้ในแฟ้มประวัติ');
  end;
  Dm_Sv.QJoborder1.FieldByName('CUSCOD').Asstring := Dm_Sv.Qsvmast.FieldByName('CUSCOD').Asstring;
  Dm_Sv.QJoborder1.FieldByName('MDLCOD').Asstring := Dm_Sv.Qsvmast.FieldByName('MDLCOD').Asstring;
  Dm_Sv.QJoborder1.FieldByName('MDLCOD').Asstring := Dm_Sv.Qsvmast.FieldByName('MDLCOD').Asstring;

  Vlastkilo := Dm_Sv.Qsvmast.FieldByName('LASTKILO').AsFloat;

  if Condpay.Fieldbyname('Fixjob').asstring = 'N' then
  begin
    if Dm_Sv.Qsvmast.FieldByName('STATUS').Asstring <> '' then
      if Messagedlg('รถคันนี้ยังไม่ปิด Job ต้องการเปิด Job เพิ่มเติม ?', mtconfirmation, [mbok, mbcancel], 0) = mrcancel then
        SFmain.RaiseException('ไม่เปิด Job ');
  end
  else
  begin
    if Dm_Sv.Qsvmast.FieldByName('STATUS').Asstring <> '' then
      SFmain.RaiseException('ยังมี Job ค้างอยู่ กรุณาปิด Job และชำระเงินก่อน '#13#13 +
        'ระบบ Setup : ไม่ให้เปิด Job ซ้ำถ้ายังไม่ปิด Job');
  end;
end;

procedure TDm_SV.QJoborder1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
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

procedure TDm_SV.QSvChargNewRecord(DataSet: TDataSet);
begin
  Qsvcharg.FieldByName('JOBNO').Asstring := QJoborder2.FieldByName('JOBNO').Asstring;
  Qsvcharg.FieldByName('JOBDATE').AsDatetime := QJoborder2.FieldByName('RECVDATE').AsDatetime;
  Qsvcharg.FieldByName('LOCAT').Asstring := QJoborder2.FieldByName('LOCAT').Asstring;
end;

procedure TDm_SV.QSvChargAfterPost(DataSet: TDataSet);
var
  XServ, XVat: Double;
begin
  XServ := 0;
  XVat := QJoborder2.FieldByName('Vat').AsFloat;
  QSvCharg.First;
  while not (QSvCharg.eof) do
  begin
    XServ := XServ + QSvCharg.FieldByName('NETPRIC').AsFloat;
    QSvCharg.Next;
  end;
  if Qjoborder2.State = Dsbrowse then
    Qjoborder2.Edit;

  if Qjoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    Qjoborder2.FieldByName('ADDNET').AsFloat := XServ;
    Qjoborder2.FieldByName('ADDVat').AsFloat := XServ * XVat / 100;
    Qjoborder2.FieldByName('ADDTot').AsFloat := XServ + Qjoborder2.FieldByName('ADDVat').AsFloat;
  end
  else
  begin
    //T1 := FloattostrF(XServ*(xvat/(100+xvat)),ffFixed,15,2) ;
    QJoborder2.FieldByName('ADDVat').AsFloat := FRound(XServ * XVat / (100 + XVat), 2);
    Qjoborder2.FieldByName('ADDNET').AsFloat := XServ - Qjoborder2.FieldByName('ADDVat').AsFloat;
    Qjoborder2.FieldByName('ADDTot').AsFloat := XServ;
  end;
  SumServ;
end;

procedure TDm_SV.QQa_tran1BeforeDelete(DataSet: TDataSet);
begin
  if SFmain.Xlevel <> '1' then
    if not (SFmain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
end;

procedure TDm_SV.QJoborder1BeforeDelete(DataSet: TDataSet);
begin
  if SFmain.Xlevel > '1' then
    if not (SFmain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

    // Open File
  with Dm_Sv.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(QTY) AS TOT1 FROM  PARTTRAN WHERE JOBNO=:XNO GROUP BY JOBNO');
    Params[0].AsString := Dm_Sv.QJOborder1.FieldByName('JOBNO').Asstring;
    Open;
  end;

  if Dm_Sv.Query1.fieldbyname('TOT1').ASFLOAT > 0 then
    SFmain.RaiseException('ยังมีอะไหล่ค้างใน Job '#13#13 +
      'ให้ทำการคืนอะไหล่ก่อนยกเลิก Job');

  with Dm_Sv.QCanJob do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CANJOB WHERE JOBNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;

  with Dm_Sv.QOrdrep1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
    Open;
  end;

  with Dm_Sv.QJob_tran do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOB_TRAN WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
    Open;
  end;

  with Dm_Sv.QJob_tran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOB_TRAN1 WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
    Open;
  end;

  with Dm_Sv.QJob_tran2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOB_TRAN2 WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
    Open;
  end;

  with Dm_Sv.QServtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
    Open;
  end;
  with Dm_Sv.QOiltran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PARTTRAN WHERE JOBNO = :XNO AND GROUP1=''OL'' ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
    Open;
  end;
  with Dm_Sv.QOuttran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
    Open;
  end;
  with Dm_Sv.QColrtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
    Open;
  end;

  with Dm_Sv.QJoborder2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNO ');
    Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
    Open;
  end;

  if Dm_Sv.QJoborder1.State = Dsbrowse then
    Dm_Sv.QJoborder1.Edit;
  Dm_Sv.QJoborder1.FieldByName('Cancelid').Asstring := SFmain.Xuser_Id;
  Dm_sv.QJoborder1.FieldByName('Candat').AsDateTime := Now;

  with Dm_Sv.QTopcar do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TOPCAR WHERE TOPNO =:Edit1 ');
    Params[0].Asstring := Dm_Sv.QJoborder1.Fieldbyname('Topno').asstring;
    Open;
    if not (Dm_Sv.QTopcar.Eof and Dm_Sv.QTopcar.Bof) then
      if Dm_Sv.QTopcar.Fieldbyname('Topno').asstring = Dm_Sv.QJoborder1.Fieldbyname('Topno').asstring then
      begin
        Dm_Sv.QTopcar.Edit;
        Dm_Sv.QTopcar.Fieldbyname('Topno').asstring := '';
        Dm_Sv.QTopcar.Post;
      end;
  end;

  Dm_Sv.QOrdrep1.First;
  while not Dm_Sv.QOrdrep1.Eof do
    Dm_Sv.QOrdrep1.Delete;

  Dm_Sv.QJob_tran.First;
  while not Dm_Sv.QJob_tran.Eof do
    Dm_Sv.QJob_tran.Delete;

  Dm_Sv.QJob_tran1.First;
  while not Dm_Sv.QJob_tran1.Eof do
    Dm_Sv.QJob_tran1.Delete;

  Dm_Sv.QJob_tran2.First;
  while not Dm_Sv.QJob_tran2.Eof do
    Dm_Sv.QJob_tran2.Delete;

  Dm_Sv.QServtran1.First;
  while not Dm_Sv.QServtran1.Eof do
    Dm_Sv.QServtran1.Delete;

  Dm_Sv.QOiltran1.First;
  while not Dm_Sv.QOiltran1.Eof do
    Dm_Sv.QOiltran1.Delete;

  Dm_Sv.QOuttran1.First;
  while not Dm_Sv.QOuttran1.Eof do
    Dm_Sv.QOuttran1.Delete;

  Dm_Sv.QColrtran1.First;
  while not Dm_Sv.QColrtran1.Eof do
    Dm_Sv.QColrtran1.Delete;

  QCanjob.Insert;
  QCanJob.Fieldbyname('Jobno').Asstring := QJoborder1.Fieldbyname('Jobno').asstring;
  QCanJob.Fieldbyname('Locat').Asstring := QJoborder1.Fieldbyname('Locat').asstring;
  QCanJob.Fieldbyname('Strno').Asstring := QJoborder1.Fieldbyname('Strno').asstring;
  QCanJob.Fieldbyname('Cuscod').Asstring := QJoborder1.Fieldbyname('Cuscod').asstring;
  QCanJob.Fieldbyname('Mdlcod').Asstring := QJoborder1.Fieldbyname('Mdlcod').asstring;
  QCanJob.Fieldbyname('Runno').Asstring := QJoborder1.Fieldbyname('Runno').asstring;
  QCanJob.Fieldbyname('Recvdate').AsDatetime := QJoborder1.Fieldbyname('Recvdate').asDatetime;
  QCanJob.Fieldbyname('Recvtime').Asstring := QJoborder1.Fieldbyname('Recvtime').asstring;
  QCanJob.Fieldbyname('Finsdate').AsDatetime := QJoborder1.Fieldbyname('Finsdate').asDatetime;
  QCanJob.Fieldbyname('FinsTime').Asstring := QJoborder1.Fieldbyname('Finstime').asstring;
  QCanJob.Fieldbyname('RFinshdt').AsDatetime := QJoborder1.Fieldbyname('RFinshdt').asDatetime;
  QCanJob.Fieldbyname('RFinshtm').Asstring := QJoborder1.Fieldbyname('RFinshtm').asstring;
  QCanJob.Fieldbyname('Rlkilomt').AsFloat := QJoborder1.Fieldbyname('Rlkilomt').asFloat;
  QCanJob.Fieldbyname('Kilomt').AsFloat := QJoborder1.Fieldbyname('Kilomt').asFloat;
  QCanJob.Fieldbyname('Recvcod').Asstring := QJoborder1.Fieldbyname('Recvcod').asstring;
  QCanJob.Fieldbyname('Cust_in').Asstring := QJoborder1.Fieldbyname('Cust_in').asstring;
  QCanJob.Fieldbyname('Paycod').Asstring := QJoborder1.Fieldbyname('Paycod').asstring;
  QCanJob.Fieldbyname('Cust_out').Asstring := QJoborder1.Fieldbyname('Cust_out').asstring;
  QCanJob.Fieldbyname('App_Date').AsDatetime := QJoborder1.Fieldbyname('App_date').asDatetime;
  QCanJob.Fieldbyname('App_Mile').AsFloat := QJoborder1.Fieldbyname('App_Mile').asFloat;
  QCanJob.Fieldbyname('Reptype').Asstring := QJoborder1.Fieldbyname('Reptype').asstring;
  QCanJob.Fieldbyname('Group1').Asstring := QJoborder1.Fieldbyname('Group1').asstring;
  QCanJob.Fieldbyname('Repbay').Asstring := QJoborder1.Fieldbyname('Repbay').asstring;
  QCanJob.Fieldbyname('Paydate').AsDatetime := QJoborder1.Fieldbyname('Paydate').asDatetime;
  QCanJob.Fieldbyname('Inspect').Asstring := QJoborder1.Fieldbyname('Inspect').asstring;
  QCanJob.Fieldbyname('Repcod').Asstring := QJoborder1.Fieldbyname('Repcod').asstring;
  QCanJob.Fieldbyname('Vattype').Asstring := QJoborder1.Fieldbyname('Vattype').asstring;
  QCanJob.Fieldbyname('Partdisc').AsFloat := QJoborder1.Fieldbyname('Partdisc').asFloat;
  QCanJob.Fieldbyname('Partnet').AsFloat := QJoborder1.Fieldbyname('Partnet').asFloat;
  QCanJob.Fieldbyname('Partvat').AsFloat := QJoborder1.Fieldbyname('Partvat').asFloat;
  QCanJob.Fieldbyname('Parttot').AsFloat := QJoborder1.Fieldbyname('Parttot').asFloat;
  QCanJob.Fieldbyname('Oildisc').AsFloat := QJoborder1.Fieldbyname('Oildisc').asFloat;
  QCanJob.Fieldbyname('Oilnet').AsFloat := QJoborder1.Fieldbyname('Oilnet').asFloat;
  QCanJob.Fieldbyname('Oilvat').AsFloat := QJoborder1.Fieldbyname('Oilvat').asFloat;
  QCanJob.Fieldbyname('Oiltot').AsFloat := QJoborder1.Fieldbyname('Oiltot').asFloat;
  QCanJob.Fieldbyname('Servdisc').AsFloat := QJoborder1.Fieldbyname('Servdisc').asFloat;
  QCanJob.Fieldbyname('servnet').AsFloat := QJoborder1.Fieldbyname('Servnet').asFloat;
  QCanJob.Fieldbyname('Servvat').AsFloat := QJoborder1.Fieldbyname('Servvat').asFloat;
  QCanJob.Fieldbyname('Servtot').AsFloat := QJoborder1.Fieldbyname('Servtot').asFloat;
  QCanJob.Fieldbyname('Outjdisc').AsFloat := QJoborder1.Fieldbyname('Outjdisc').asFloat;
  QCanJob.Fieldbyname('Outjnet').AsFloat := QJoborder1.Fieldbyname('Outjnet').asFloat;
  QCanJob.Fieldbyname('Outjvat').AsFloat := QJoborder1.Fieldbyname('Outjvat').asFloat;
  QCanJob.Fieldbyname('OutjTot').AsFloat := QJoborder1.Fieldbyname('Outjtot').asFloat;
  QCanJob.Fieldbyname('Colordisc').AsFloat := QJoborder1.Fieldbyname('Colordisc').asFloat;
  QCanJob.Fieldbyname('Colornet').AsFloat := QJoborder1.Fieldbyname('Colornet').asFloat;
  QCanJob.Fieldbyname('Colorvat').AsFloat := QJoborder1.Fieldbyname('Colorvat').asFloat;
  QCanJob.Fieldbyname('Colortot').AsFloat := QJoborder1.Fieldbyname('Colortot').asFloat;
  QCanJob.Fieldbyname('Otherdisc').AsFloat := QJoborder1.Fieldbyname('Otherdisc').asFloat;
  QCanJob.Fieldbyname('Othernet').AsFloat := QJoborder1.Fieldbyname('Othernet').asFloat;
  QCanJob.Fieldbyname('Othervat').AsFloat := QJoborder1.Fieldbyname('Othervat').asFloat;
  QCanJob.Fieldbyname('Othertot').AsFloat := QJoborder1.Fieldbyname('Othertot').asFloat;
  QCanJob.Fieldbyname('Tsv_disc').AsFloat := QJoborder1.Fieldbyname('Tsv_Disc').asFloat;
  QCanJob.Fieldbyname('Tsv_net').AsFloat := QJoborder1.Fieldbyname('Tsv_net').asFloat;
  QCanJob.Fieldbyname('Tsv_vat').AsFloat := QJoborder1.Fieldbyname('Tsv_vat').asFloat;
  QCanJob.Fieldbyname('Tsv_tot').AsFloat := QJoborder1.Fieldbyname('Tsv_tot').asFloat;
  QCanJob.Fieldbyname('Addnet').AsFloat := QJoborder1.Fieldbyname('Addnet').asFloat;
  QCanJob.Fieldbyname('Addvat').AsFloat := QJoborder1.Fieldbyname('Addvat').asFloat;
  QCanJob.Fieldbyname('Addtot').AsFloat := QJoborder1.Fieldbyname('Addtot').asFloat;
  QCanJob.Fieldbyname('Partcost').AsFloat := QJoborder1.Fieldbyname('Partcost').asFloat;
  QCanJob.Fieldbyname('Taxdate').AsDatetime := QJoborder1.Fieldbyname('Taxdate').asDatetime;
  QCanJob.Fieldbyname('Ptaxno').Asstring := QJoborder1.Fieldbyname('Ptaxno').asstring;
  QCanJob.Fieldbyname('Staxno').Asstring := QJoborder1.Fieldbyname('Staxno').asstring;
  QCanJob.Fieldbyname('Bildate').AsDatetime := QJoborder1.Fieldbyname('Bildate').asDatetime;
  QCanJob.Fieldbyname('Billno').Asstring := QJoborder1.Fieldbyname('Billno').asstring;
  QCanJob.Fieldbyname('Flagcan').Asstring := QJoborder1.Fieldbyname('Flagcan').asstring;
  QCanJob.Fieldbyname('Svflag').Asstring := QJoborder1.Fieldbyname('Svflag').asstring;
  QCanJob.Fieldbyname('Memo1').Asstring := QJoborder1.Fieldbyname('Memo1').asstring;
  QCanJob.Fieldbyname('Status').Asstring := QJoborder1.Fieldbyname('Status').asstring;
  QCanJob.Fieldbyname('Userid').Asstring := QJoborder1.Fieldbyname('Userid').asstring;
  QCanJob.Fieldbyname('Time1').AsDatetime := QJoborder1.Fieldbyname('Time1').asDatetime;
  QCanJob.Fieldbyname('Cancelid').Asstring := SFmain.Xuser_id;
  QCanJob.Fieldbyname('Candat').AsDatetime := Now;
  QCanJob.Post;
end;

procedure TDm_SV.QJoborder2BeforePost(DataSet: TDataSet);
var
  V1, V2: Double;
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select PARTTOT,OILTOT From JOBORDER Where Jobno =:Job ');
    Params[0].AsString := Dm_Sv.QJoborder2.FieldByName('Jobno').AsString;
    Open;
  end;

  {If SumStarttrn<>(Query1.Fieldbyname('Parttot').Asfloat+Query1.Fieldbyname('Oiltot').Asfloat) Then
  SFmain.RaiseException('มีการจ่ายอะไหล่หรือปรับปรุงรายการอะไหล่<br/>ยอดที่แสดงหน้าจอจะยังไม่ถูกต้อง<br/>กรุณาออกจากโปรแกรมแล้วเข้ามาทำรายการใหม');}

  ClearAsString(QJoborder2);
  ClearAsFloat(QJoborder2);

  if QServtran1.Active then
  begin
    QServtran1.First;
    if not (QServtran1.Bof and QServtran1.Eof) then
    begin
      QServtran1.Last;
      if QServtran1.FieldByName('Code').Asstring = '' then
        QServtran1.FieldByName('Code').Asstring := '-';
         //QServtran1.Delete;
    end;
  end;

  if QParttran1.Active then
  begin
    QParttran1.First;
    if not (QParttran1.Bof and QParttran1.Eof) then
    begin
      QParttran1.Last;
      if QParttran1.FieldByName('PARTNO').Asstring = '' then
        QParttran1.Delete;
    end;
  end;

  if QOiltran1.Active then
  begin
    QOiltran1.First;
    if not (QOiltran1.Bof and QOiltran1.Eof) then
    begin
      QOiltran1.Last;
      if QOiltran1.FieldByName('PARTNO').Asstring = '' then
        QOiltran1.Delete;
    end;
    //
  end;

  if QOuttran1.Active then
  begin
    QOuttran1.First;
    if not (QOuttran1.Bof and QOuttran1.Eof) then
    begin
      QOuttran1.Last;
      if QOuttran1.FieldByName('CODE').Asstring = '' then
        QOuttran1.FieldByName('Code').Asstring := '-';
         //QOuttran1.Delete;
    end;
  end;

  if QColrtran1.Active then
  begin
    QColrtran1.First;
    if not (QColrtran1.Bof and QColrtran1.Eof) then
    begin
      QColrtran1.Last;
      if QColrtran1.FieldByName('CODE').Asstring = '' then
        QColrtran1.FieldByName('Code').Asstring := '-';
         //QColrtran1.Delete;
    end;
  end;
end;

procedure TDm_SV.QServtran1NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QServtran1);
  QServtran1.FieldByName('JOBNO').Asstring := QJoborder2.FieldByName('JOBNO').Asstring;
  QServtran1.FieldByName('JOBDATE').AsDatetime := QJoborder2.FieldByName('RECVdate').AsDatetime;
  QServtran1.FieldByName('JOBTYP').Asstring := QJoborder2.FieldByName('REPTYPE').Asstring;
  QServtran1.FieldByName('LOCAT').Asstring := QJoborder2.FieldByName('LOCAT').Asstring;
  QServtran1.FieldByName('MDLCOD').Asstring := QJoborder2.FieldByName('MDLCOD').Asstring;
  QServtran1.FieldByName('CLAIM').Asstring := 'N';
  QServtran1.FieldByName('CAMFLG').Asstring := 'N';
  QServtran1.FieldByName('USERID').Asstring := SFmain.XUser_ID;
  QServtran1.FieldByName('TIME1').Asdatetime := Now;
end;

procedure TDm_SV.QOrdrep1AfterEdit(DataSet: TDataSet);
begin
  if QJoborder1.state = Dsbrowse then
    QJoborder1.edit;
end;

procedure TDm_SV.QNewprobAfterPost(DataSet: TDataSet);
begin
  Dm_Sv.QNewprob.first;
  while not Dm_Sv.QNewprob.Eof do
  begin
    No1 := Dm_Sv.QNewprob.FieldByname('no').asfloat;
    Dm_Sv.QNewprob.Next;
  end;
  if Dm_sv.No1 = 0 then
    Dm_sv.No1 := 1;
  No1 := No1 + 1;
end;

procedure TDm_SV.SoNewprobStateChange(Sender: TObject);
begin
  //If Dm_Sv.QNewprob.State in DsEditmodes Then
  QJoborder3.Edit;
end;

procedure TDm_SV.QJoborder3AfterPost(DataSet: TDataSet);
begin
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if QJoborder3.Active then
      if (QJoborder3.ApplyUpdates = 0) then
        QJoborder3.CommitUpdates
      else
        raise Exception.Create(QJoborder3.RowError.Message);
    if QNewprob.Active then
      if (QNewprob.ApplyUpdates = 0) then
        QNewprob.CommitUpdates
      else
        raise Exception.Create(QNewprob.RowError.Message);
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.RollBack;
    raise;
  end;
  //
  with Dm_Sv.QNewprob do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM NEWPROB WHERE STRNO = :Edit1 AND JOBNO=:Edit2 ');
    Params[0].Asstring := Dm_Sv.QJoborder3.FieldByName('STRNO').Asstring;
    Params[1].Asstring := Dm_Sv.QJoborder3.FieldByName('JOBNO').Asstring;
    Open;
  end;
end;

procedure TDm_SV.QNewprobNewRecord(DataSet: TDataSet);
begin
  if QJoborder3.Fieldbyname('Jobno').Asstring = '' then
    SFmain.RaiseException('ยังไม่มีเลขที่ Job');
  QNewprob.Fieldbyname('Strno').Asstring := QJoborder3.Fieldbyname('Strno').Asstring;
  QNewprob.Fieldbyname('Jobno').Asstring := QJoborder3.Fieldbyname('Jobno').Asstring;
  QNewprob.Fieldbyname('Prndate').Asdatetime := Date;
  QNewprob.Fieldbyname('No').Asfloat := No1;
end;

procedure TDm_SV.QJoborder3AfterCancel(DataSet: TDataSet);
begin
  if QJoborder3.Active then
    QJoborder3.CancelUpdates;
  if Qnewprob.Active then
    Qnewprob.CancelUpdates;
end;

procedure TDm_SV.QJoborder3BeforePost(DataSet: TDataSet);
begin
  Dm_Sv.Qnewprob.first;
  while not Dm_Sv.Qnewprob.Eof do
  begin
    if Dm_Sv.Qnewprob.FieldByname('Pbdesc').Asstring = '' then
      Dm_Sv.Qnewprob.Delete;
    Dm_Sv.Qnewprob.Next;
  end;
end;

procedure TDm_SV.QResultAfterPost(DataSet: TDataSet);
begin
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if QResult.Active then
      if (QResult.ApplyUpdates = 0) then
        QResult.CommitUpdates
      else
        raise Exception.Create(QResult.RowError.Message);
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.Rollback;
    QResult.Edit;
    raise;
  end;
end;

procedure TDm_SV.QOthinvoi1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QOthinvoi1.CachedUpdates then
    QOthinvoi1UpdateStatus.Value := UpdateStatusStr[QOthinvoi1.UpdateStatus];
end;

procedure TDm_SV.QJoborder2PARTDISCValidate(Sender: TField);
begin
  if QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    QJoborder2PARTNET.Asfloat := QJoborder2INV1_PT.asfloat - QJoborder2PARTDISC.Asfloat;
    QJoborder2PARTVAT.Asfloat := Roundto((QJoborder2PARTNET.Asfloat * QJoborder2VAT.Asfloat / 100), -2);
    QJoborder2PARTTOT.Asfloat := QJoborder2PARTNET.Asfloat + QJoborder2PARTVAT.Asfloat;
  end
  else
  begin
    QJoborder2PARTTOT.Asfloat := QJoborder2INV1_PT.asfloat - QJoborder2PARTDISC.Asfloat;
    QJoborder2PARTVAT.Asfloat := Roundto((QJoborder2PARTTOT.Asfloat * QJoborder2VAT.Asfloat / (100 + QJoborder2VAT.Asfloat)), -2);
    QJoborder2PARTNET.Asfloat := QJoborder2PARTTOT.Asfloat - QJoborder2PARTVAT.Asfloat;
  end
end;

procedure TDm_SV.QQa_invoi1AfterCancel(DataSet: TDataSet);
begin
  if QQa_invoi1.Active then
    QQa_invoi1.CancelUpdates;
  if QQa_tran1.Active then
    QQa_tran1.CancelUpdates;
  if QLastNo.Active then
    QLastNo.CancelUpdates;
end;

procedure TDm_SV.QQa_invoi1BeforePost(DataSet: TDataSet);
var
  I: Integer;
  Lb, Code: string;
begin
  Lb := 'XX-';
  I := 0;

  QQa_tran1.First;
  if QQa_invoi1UpdateStatus.Value = 'Inserted' then
  begin
    if Duplicate then
      QQa_invoi1QDATEValidate(QQa_invoi1QDATE);
  end;

  QQa_tran1.AfterPost := Nil;
  QQa_tran1.DisableControls;
  QQa_tran1.First;
  while not QQa_tran1.Eof do
  begin
    Dm_Sv.QQa_tran1.Edit;
    Dm_Sv.QQa_tran1.FieldByName('QUOTNO').Asstring := Dm_Sv.QQa_invoi1.FieldByName('QUOTNO').Asstring;
    if dm_sv.QQa_tran1.FieldByName('PARTNO').AsString = '' then
    begin
      I := I + 1;
      Code := Lb + sfMain.ZeroLead(InttoStr(I), 3);
      dm_sv.QQa_tran1.FieldByName('PARTNO').AsString := Code;
    end;
    Dm_Sv.QQa_tran1.Next;
  end;
  QQa_tran1.AfterPost := QQa_tran1AfterPost;
  QQa_tran1.EnableControls;
end;

procedure TDm_SV.QJoborder2DISCSVValidate(Sender: TField);
begin
  QServtran1.DisableControls;
  QServtran1.First;
  while not QServtran1.Eof do
  begin
    QServtran1.Edit;
    QServtran1.Fieldbyname('Redu').Asfloat := QJoborder2DISCSV.Asfloat;
    Dm_Sv.QServtran1.FieldByName('NETPRIC').AsFloat := Roundto(Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat * (1 - Dm_Sv.QServtran1.FieldByName('REDU').AsFloat / 100), -2);

    QServtran1.Next;
  end;
  QServTran1.EnableControls;
end;

procedure TDm_SV.QJoborder2DISCPTValidate(Sender: TField);
var
  Amt: Double;
begin
  QParttran1.DisableControls;
  QParttran1.AfterPost := Nil;
  QParttran1.First;
  while not QParttran1.Eof do
  begin
    if QParttran1.Fieldbyname('NETFL').Asstring <> 'N' then
    begin
      QParttran1.Edit;
      QParttran1.Fieldbyname('Redu1').Asfloat := QJoborder2DISCPT.Asfloat;
      QParttran1.FieldByName('Netprc').AsFloat := Roundto((1 - QParttran1.Fieldbyname('Redu1').asfloat / 100) * QParttran1.Fieldbyname('Uprice').asfloat, -2);
      Amt := QParttran1.Fieldbyname('Netprc').asfloat * QParttran1.Fieldbyname('Qty').asfloat;
      QParttran1.Fieldbyname('Totprc').asfloat := Roundto(Amt, -2);
    end;
    QParttran1.Next;
  end;
  QParttran1.AfterPost := QParttran1AfterPost;
  QParttran1.First;
  QParttran1.Edit;
  QParttran1.Post;
  QParttran1.EnableControls;
end;

procedure TDm_SV.QJoborder2DISCCOValidate(Sender: TField);
var
  Amt: Double;
begin
  QColrtran1.DisableControls;
  QColrtran1.AfterPost := Nil;
  QColrtran1.First;
  while not QColrtran1.Eof do
  begin
    QColrtran1.Edit;
    QColrtran1.Fieldbyname('Redu').Asfloat := QJoborder2DISCCO.Asfloat;
    Amt := Dm_Sv.QColrtran1.FieldByName('PRICE').AsFloat * (1 - Dm_Sv.QColrtran1.FieldByName('REDU').AsFloat / 100);
    Dm_Sv.QColrtran1.FieldByName('NETPRIC').AsFloat := Roundto(Amt, -2);
    QColrtran1.Next;
  end;
  QColrtran1.AfterPost := QColrtran1AfterPost;
  QColrtran1.First;
  QColrtran1.Edit;
  QColrtran1.Post;
  QColrtran1.EnableControls;
end;

procedure TDm_SV.QOiltran1AfterOpen(DataSet: TDataSet);
begin
  QOildesc.Open;
end;

procedure TDm_SV.QOiltran1BeforeClose(DataSet: TDataSet);
begin
  QOildesc.Close;
end;

procedure TDm_SV.QParttran1BeforeClose(DataSet: TDataSet);
begin
  QPartdes.Close;
end;

procedure TDm_SV.QJoborder2DISCOLValidate(Sender: TField);
var
  Amt: Double;
begin
  QOiltran1.DisableControls;
  QOiltran1.AfterPost := Nil;
  QOiltran1.First;
  while not QOiltran1.Eof do
  begin
    if QOiltran1.Fieldbyname('NETFL').Asstring <> 'N' then
    begin
      QOiltran1.Edit;
      QOiltran1.Fieldbyname('Redu1').Asfloat := QJoborder2DISCOL.Asfloat;
      QOiltran1.FieldByName('Netprc').AsFloat := Roundto((1 - QOiltran1.Fieldbyname('Redu1').asfloat / 100) * QOiltran1.Fieldbyname('Uprice').asfloat, -2);
      Amt := QOiltran1.Fieldbyname('Netprc').asfloat * QOiltran1.Fieldbyname('Qty').asfloat;
      QOiltran1.Fieldbyname('Totprc').asfloat := Roundto(Amt, -2);
    end;
    QOiltran1.Next;
  end;
  QOiltran1.AfterPost := QOiltran1AfterPost;
  QOiltran1.First;
  QOiltran1.Edit;
  QOiltran1.Post;
  QOiltran1.EnableControls;
end;

procedure TDm_SV.QJoborder2REPCODValidate(Sender: TField);
begin
  if QJoborder2REPCOD.Asstring <> '' then
    with Dm_Sv.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OFFICER WHERE CODE = :XCODE ');
      Params[0].Asstring := QJoborder2REPCOD.Asstring;
      Open;
      if Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
        SFmain.RaiseException('ไม่พบรหัสพนักงาน');
    end;
end;

procedure TDm_SV.QJoborder2OILDISCValidate(Sender: TField);
begin
  if QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    QJoborder2OILNET.Asfloat := QJoborder2INV2_PT.asfloat - QJoborder2OILDISC.Asfloat;
    QJoborder2OILVAT.Asfloat := Roundto((QJoborder2OILNET.Asfloat * QJoborder2VAT.Asfloat / 100), -2);
    QJoborder2OILTOT.Asfloat := QJoborder2OILNET.Asfloat + QJoborder2OILVAT.Asfloat;
  end
  else
  begin
    QJoborder2OILTOT.Asfloat := QJoborder2INV2_PT.asfloat - QJoborder2OILDISC.Asfloat;
    QJoborder2OILVAT.Asfloat := Roundto((QJoborder2OILTOT.Asfloat * QJoborder2VAT.Asfloat / (100 + QJoborder2VAT.Asfloat)), -2);
    QJoborder2OILNET.Asfloat := QJoborder2OILTOT.Asfloat - QJoborder2OILVAT.Asfloat;
  end;
end;

procedure TDm_SV.QQa_invoi1LOCATValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :0 ');
    Params[0].Asstring := QQa_invoi1.FieldByName('LOCAT').Asstring;
    Open;
    if Bof and eof then
      SFmain.RaiseException('ไม่มีรหัสสาขานี้ในแฟ้มข้อมูล');
  end;
end;

procedure TDm_SV.QQa_invoi1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
        'Inserted', 'Deleted');
begin
  if QQa_invoi1.CachedUpdates then
    QQa_invoi1UpdateStatus.Value := UpdateStatusStr[QQa_invoi1.UpdateStatus];
end;

procedure TDm_SV.Runtaxothinv;
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if not Condpay.Active then
    Condpay.Open;

  if QOthinvoi1CLAIMTYP.Asstring = 'Y' then // Y = เก็บเงินจากลูกค้า, N = ค่าใช้จ่ายบริษัท
  begin
    if Condpay.Fieldbyname('SEPOH').Asstring <> 'Y' then
    begin
      HF := 'H_DXOH'; //VO
      LF := 'L_DXOH';
    end
    else
    begin
      if (QOthinvoi1.Fieldbyname('Flag').Asstring = '2') then //ค่าบริการ
      begin
        HF := 'H_SVOH'; //TP
        LF := 'L_SVOH';
      end
      else if QOthinvoi1.Fieldbyname('Flag').Asstring = '3' then // ค่าอะไหล่
      begin
        HF := 'H_PTOH'; //TL
        LF := 'L_PTOH';
      end
      else
      begin
        HF := 'H_DXOH'; //VO  ค่าอื่น ๆ
        LF := 'L_DXOH';
      end;
    end;
  end
  else
  begin
    HF := 'H_FRE';  //FE
    LF := 'L_FRE';
  end;

  LV := QOthinvoi1.FieldByName('LOCAT').Asstring;
  DV := QOthinvoi1.FieldByName('INVDATE').asDateTime;
    //
  with QTaxsal do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
    Params[0].Asstring := QOthinvoi1.FieldByName('TAXNO').Asstring;
    Open;
    if Bof and Eof then
      QTaxsal.Insert
    else
      QTaxsal.Edit;
  end;
    //
  if QTaxsal.State = DsInsert then
  begin
    SQLTXT := 'SELECT MAX(TAXNO) AS MAXNO FROM TAXSAL WHERE LOCAT=:EDIT1 AND ' +
      'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 AND SUBSTR(TAXNO,7,2)=:EDIT4 ';
    QTaxsal.FieldByName('TAXNO').Asstring := MaxNo(HF, LF, LV, SQLTXT, DV);
  end;
  QTaxsal.Fieldbyname('TaxDate').asdatetime := QOthinvoi1Taxdt.AsdateTime;
  QTaxsal.Fieldbyname('LOCAT').asstring := QOthinvoi1LOCAT.Asstring;
  QTaxsal.Fieldbyname('TaxRefno').asstring := QOthinvoi1INVNO.Asstring;
  QTaxsal.Fieldbyname('JOBNO').asstring := QOthinvoi1JOBNO.Asstring;
  QTaxsal.Fieldbyname('DESC1').asstring := 'ใบกำกับภาษีอินวอยส์เสริม';
  QTaxsal.Fieldbyname('CUSCOD').asstring := QOthinvoi1CUSCOD.Asstring;
  QTaxsal.Fieldbyname('VATRT').asFLOAT := QOthinvoi1VAT.asFLOAT;
  QTaxsal.Fieldbyname('AMOUNT').asFLOAT := QOthinvoi1TOTPRC.asFLOAT;
  QTaxsal.Fieldbyname('REDU').asFLOAT := QOthinvoi1DSCAMT.asFLOAT;
  QTaxsal.Fieldbyname('BALANCE').asFLOAT := QOthinvoi1BALANE.asFLOAT;
  QTaxsal.Fieldbyname('VAT').asFLOAT := QOthinvoi1VATAMT.asFLOAT;
  QTaxsal.Fieldbyname('TOTTAX').asFLOAT := QOthinvoi1NETPRC.asFLOAT;
  QTaxsal.Fieldbyname('FLAG').asstring := '1'; {1:ใบกำกับ 2:ใบลดหนี้  }
  QTaxsal.Fieldbyname('Paytyp').asstring := QOthinvoi1PType.Asstring;
  if QOthinvoi1CLAIMTYP.Asstring = 'N' then
    QTaxsal.Fieldbyname('FRSV').asstring := 'N'
  else
    QTaxsal.Fieldbyname('FRSV').asstring := 'S';
  QTaxsal.Fieldbyname('Systm').asstring := 'OTH-' + QOthinvoi1Flag.Asstring;
  QTaxsal.Fieldbyname('USERID').AsString := SFmain.XUser_Id;
  QTaxsal.Fieldbyname('TIME1').AsdateTime := Now;
  if (QOthinvoi1FLAG.Asstring <> '1') and (QOthinvoi1CLAIMTYP.Asstring = 'Y') then
    QTaxsal.Fieldbyname('CLAIM').asstring := 'Y';

  QTaxsal.Post;

  if QOthinvoi1.State = Dsbrowse then
    QOthinvoi1.Edit;
  QOthinvoi1.Fieldbyname('TAXNO').asstring := QTaxsal.FieldByName('TAXNO').Asstring;
  QOthinvoi1.Fieldbyname('TAXDT').asDatetime := QTaxsal.Fieldbyname('TaxDate').asdatetime;
  QOthinvoi1.Post;
end;

procedure TDm_SV.QParttran1NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QParttran1);
end;

procedure TDm_SV.QParttran1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  DataChang := False;
  if (AException is EFDDBEngineException) then
  begin
    if (AException as EFDDBEngineException).Errors[0].Errorcode = eDataChang then
    begin
      DataChang := True;
    end;
  end;
end;

procedure TDm_SV.QJoborder1CAMPNOValidate(Sender: TField);
begin
  if QJoborder1CAMPNO.Asstring <> '' then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('Select * From CampGrp Where Campno=:Camno');
      Params[0].Asstring := QJoborder1CAMPNO.Asstring;
      Open;
      if Bof and Eof then
        SFmain.RaiseException('ไม่พบรหัสแคมเปญ ' + QJoborder1CAMPNO.Asstring + ' ในแฟ้ม Setup');
    end;
    if (Query1.FieldByname('Camtype').Asstring = '2') and
      (Query1.FieldByname('Mdlcod').Asstring <> QJoborder1MDLCOD.Asstring) then
      MessageDlg('รหัสรุ่นรถไม่ตรงกับใน แคมเปญ ต้องการทำต่อ ?', MtConfirmation, [mbYes, mbNo], 0);

    if Dm_SV.QJoborder1RECVDATE.Asdatetime > Query1.Fieldbyname('Enddate').Asdatetime then
      SFmain.RaiseException('หมดช่วงแคมเปญแล้ว');
  end;
end;

procedure TDm_SV.QOthinvoi1TAXDTValidate(Sender: TField);
var
  Year, Month, Day: Word;
begin
  DecodeDate(QOthinvoi1TAXDT.Asdatetime, Year, Month, Day);

  if QOthinvoi1TAXDT.Asdatetime < QOthinvoi1INVDATE.Asdatetime then
    SFmain.RaiseException('ออกใบกำกับก่อนใบส่งของ');

  if (Inttostr(Year) <> CondPay.Fieldbyname('Curyear').Asstring) then
    SFmain.RaiseException('บันทึกปีทำงานผิด ปีทำงานปัจจุบัน คือ' + CondPay.Fieldbyname('Curyear').Asstring);
end;

procedure TDm_SV.QOthinvoi1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  if (AException is EFDDBEngineException) then
    if (AException as EFDDBEngineException).Errors[0].Errorcode = eKeyViol then
    begin
      Duplicate := True;
    end;
end;

procedure TDm_SV.QServtran1BeforePost(DataSet: TDataSet);
begin
  TmpCode := QServtran1.Fieldbyname('Code').Asstring;
end;

procedure TDm_SV.QJoborder2AfterOpen(DataSet: TDataSet);
begin
  SumStarttrn := QJoborder2.Fieldbyname('Parttot').Asfloat + QJoborder2.Fieldbyname('Oiltot').Asfloat;
end;

procedure TDm_SV.DataModuleCreate(Sender: TObject);
begin
  SetRoundMode(rmNearest);
end;

procedure TDm_SV.QJoborder2RFINSHDTValidate(Sender: TField);
var
  Difday, Difkilo, Rkilo, RDay, Lsvdt, Lkilo, Nd, NdR: Real;
begin
  if Dm_Sv.QJoborder2.FieldByName('RFINSHDT').AsDateTime <> 0 then
  begin
    if Dm_Sv.QJoborder2.FieldByName('RFINSHDT').AsDateTime < Dm_Sv.QJoborder2.FieldByName('RECVDATE').AsDateTime then
      SFmain.RaiseException('บันทึกวันที่ซ่อมเสร็จก่อนวันเปิด job...!');
    if QJoborder2RFINSHDT.AsDateTime > Date then
      SFmain.RaiseException('บันทึกวันปิดงานซ่อมมากก่วาวันปัจุบัญ');

    with query2 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT ROUNDKILO,ROUNDDAY,LASTSERV,LASTKILO FROM SVMAST WHERE STRNO=:0');
      Params[0].AsString := QJoborder2STRNO.value;
      Open;
      Rkilo := Fieldbyname('ROUNDKILO').AsFloat;
      RDay := Fieldbyname('ROUNDDAY').AsFloat;
    end;
    with Query2 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT MAX(RFINSHDT) BLASTSERV,MAX(RLKILOMT) BLASTKILO  FROM  JOBORDER  WHERE STRNO=:0 ' +
        'AND RFINSHDT<(SELECT LASTSERV FROM SVMAST WHERE  STRNO=:0)');
      Params[0].AsString := QJoborder2STRNO.value;
      Open;
      if not (Eof and Bof) then
      begin
        Lkilo := Fieldbyname('BLASTKILO').AsFloat;
        Lsvdt := Fieldbyname('BLASTSERV').AsDateTime;
      end
      else
      begin
        Lkilo := 1;
        Lsvdt := Date;
      end;
    end;
    Difday := QJoborder2RFINSHDT.AsDateTime - Lsvdt;
    Difkilo := QJoborder2RLKILOMT.AsFloat - Lkilo;
    if Difday <= 0 then
      Difday := 1;
    if Difkilo <= 0 then
      Difkilo := 1;
    Nd := Fround(Difkilo / Difday, 0);
    if Nd <= 0 then
      Nd := 1;
    NdR := FRound(Rkilo / Nd, 0);
    if NdR > RDay then
      Dm_Sv.QJoborder2.FieldByName('APP_DATE').AsDateTime := QJoborder2RFINSHDT.AsDateTime + RDay
    else
      Dm_Sv.QJoborder2.FieldByName('APP_DATE').AsDateTime := QJoborder2RFINSHDT.AsDateTime + NdR;
    Dm_Sv.QJoborder2.FieldByName('APP_MILE').AsFloat := Dm_Sv.QJoborder2.FieldByName('RLKILOMT').AsFloat + Rkilo;
  end;
end;

procedure TDm_SV.QQa_invoi1STRNOValidate(Sender: TField);
begin
  if QQa_invoi1STRNO.Asstring <> '' then
    with Dm_Sv.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SVMAST WHERE STRNO = :XSTRNO');
      Params[0].Asstring := Dm_Sv.QQa_invoi1.FieldByname('STRNO').Asstring;
      ;
      Open;
      if Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
        SFmain.RaiseException('ไม่มีหมายเลขถังนี้ในแฟ้มข้อมูล');
      Dm_Sv.QQa_invoi1.FieldByName('REGNO').Asstring := Dm_Sv.Query1.FieldByName('REGNO').Asstring;
      Dm_Sv.QQa_invoi1.FieldByName('ENGNO').Asstring := Dm_Sv.Query1.FieldByName('ENGNO').Asstring;

      Dm_Sv.QQa_invoi1.FieldByName('REGNO').Asstring := Dm_Sv.Query1.FieldByName('REGNO').Asstring;
      Dm_Sv.QQa_invoi1.FieldByName('RKILO').Asstring := Dm_Sv.Query1.FieldByName('LASTKILO').Asstring;
      Dm_Sv.QQa_invoi1.FieldByName('POLICYNO').Asstring := Dm_Sv.Query1.FieldByName('INSURNO').Asstring;
    end;
end;

procedure TDm_SV.QJoborder1RLKILOMTValidate(Sender: TField);
begin
    {if QJoborder1RLKILOMT.AsFloat < Vlastkilo Then
    SFmain.RaiseException('กิโลเมตรที่เข้าซ่อมน้อยกว่ากิโลเมตรที่ซ่อมล่าสุดไม่ได้');  }
end;

procedure TDm_SV.QJobTimeNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QJobTime);
  QJobTimeJOBNO.Asstring := QJoborder2.FieldByName('JOBNO').Asstring;
  QJobTimeSERVCOD.Asstring := QJoborder2.FieldByName('REPCOD').Asstring;
  QJobTimeDAYLYDT.AsDateTime := QJoborder2.fieldByName('RECVDATE').AsDateTime;
  QJobTimeINPDATE.Asdatetime := Now;
end;

procedure TDm_SV.QJobTimeAfterPost(DataSet: TDataSet);
var
  BK: Tbookmark;
  TT: Double;
begin
  BK := QJobTime.Getbookmark;
  TT := 0;
  QJobTime.First;
  while not (QJobTime.eof) do
  begin
    TT := TT + QJobTimeUSETIME.AsFloat;
    QJobTime.Next;
  end;
  QJobTime.EnableControls;
  QJoborder2.FieldByName('SV_TIME').AsFloat := TT;
  QJobTime.Gotobookmark(BK);
  QJobTime.Freebookmark(BK);
end;

procedure TDm_SV.QNewprobRSCODEValidate(Sender: TField);
begin
  with Dm_Sv.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM RE_SULT WHERE RSCODE = :EDIT ');
    Params[0].Asstring := Dm_sv.QnewProb.Fieldbyname('RScode').Asstring;
    Open;
    if Dm_Sv.Query1.Bof and Dm_Sv.Query1.eof then
      SFMain.RaiseException('ไม่พบรหัสในแฟ้มเหตุผล');
  end;
end;

procedure TDm_SV.QOthtran1CODEValidate(Sender: TField);
var
  DisTot: Double;
begin
  with Dm_Sv.QSvstock do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVSTOCK WHERE CODE= :XCODE ');
    Params[0].Asstring := Dm_Sv.QOthtran1.FieldByName('CODE').Asstring;
    Open;
  end;
  if not (Dm_Sv.QSvStock.Bof and Dm_Sv.QSVStock.eof) then
  begin
    Dm_Sv.QOthtran1.Edit;
    Dm_Sv.QOthtran1.FieldByName('CODE').Asstring := Dm_Sv.QSvstock.FieldByName('CODE').Asstring;
    Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring := Dm_Sv.QSvstock.FieldByName('DESC1').Asstring;
    Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QSvstock.FieldByName('UPRICE').AsFloat;
    Dm_Sv.QOthtran1.FieldByName('UCOST').AsFloat := Dm_Sv.QSvstock.FieldByName('UCOST').AsFloat;
    Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat := Dm_Sv.QOthinvoi1.FieldByName('Dsct').AsFloat;
  end;

  if Dm_Sv.QOthtran1.State = Dsbrowse then
    Dm_Sv.QOthtran1.Edit;
  Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat * Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat;
  DisTot := FRound(Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat * Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat / 100, 2);
  Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat := Dm_Sv.QOthtran1.FieldByName('UCOST').AsFloat * Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat;
  Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat - DisTot;
end;

procedure TDm_SV.QOthinvoi1JOBNOValidate(Sender: TField);
begin
  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT J.LOCAT,J.JOBNO,J.RECVDATE,J.STRNO,S.REGNO,J.RFINSHDT,J.RLKILOMT,J.CUSCOD, ' +
      'J.VAT,J.VATTYPE,S.BODYNO,S.SDATE FROM JOBORDER J,SVMAST S WHERE J.STRNO=S.STRNO AND J.JOBNO=:0');
    Params[0].AsString := QOthinvoi1JOBNO.AsString;
    Open;
  end;
  if not (query2.Eof and query2.Bof) then
  begin
    QOthinvoi1.FieldByName('STRNO').Asstring := query2.FieldByName('STRNO').Asstring;
    QOthinvoi1.FieldByName('CUSCOD').Asstring := query2.FieldByName('CUSCOD').Asstring;
    QOthinvoi1.FieldByName('VATTYPE').Asstring := query2.FieldByName('VATTYPE').Asstring;
    QOthinvoi1.FieldByName('VAT').AsFloat := query2.FieldByName('VAT').AsFloat;
    QOthinvoi1.FieldByName('JOBDATE').AsDateTime := query2.FieldByName('RECVDATE').AsDateTime;
  end;
end;

procedure TDm_SV.QOthtran1REDUValidate(Sender: TField);
var
  DisTot: Double;
begin
  if Dm_Sv.QOthtran1.State = Dsbrowse then
    Dm_Sv.QOthtran1.Edit;
  Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat * Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat;
  DisTot := FRound(Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat * Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat / 100, 2);
  Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat := Dm_Sv.QOthtran1.FieldByName('UCOST').AsFloat * Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat;
  Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat - DisTot;
end;

procedure TDm_SV.QOthtran1UPRICEValidate(Sender: TField);
var
  DisTot: Double;
begin
  if Dm_Sv.QOthtran1.State = Dsbrowse then
    Dm_Sv.QOthtran1.Edit;
  Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat * Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat;
  DisTot := FRound(Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat * Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat / 100, 2);
  Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat := Dm_Sv.QOthtran1.FieldByName('UCOST').AsFloat * Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat;
  Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat - DisTot;
end;

procedure TDm_SV.QQa_tran1UPRICEValidate(Sender: TField);
var
  Redu: Double;
begin
  QQa_tran1NETPRIC.AsFloat := FRound(QQa_tran1UPRICE.AsFloat * QQa_tran1QTY.AsFloat, 2);
  Redu := Fround(((QQa_tran1NETPRIC.AsFloat * QQa_tran1REDU.AsFloat) / 100), 2);
  QQa_tran1TOTALPRC.AsFloat := FRound((QQa_tran1UPRICE.AsFloat * QQa_tran1QTY.AsFloat) - Redu, 2);
end;

procedure TDm_SV.QQa_tran1QTYValidate(Sender: TField);
var
  Redu: Double;
begin
  QQa_tran1NETPRIC.AsFloat := FRound(QQa_tran1UPRICE.AsFloat * QQa_tran1QTY.AsFloat, 2);
  Redu := Fround(((QQa_tran1NETPRIC.AsFloat * QQa_tran1REDU.AsFloat) / 100), 2);
  QQa_tran1TOTALPRC.AsFloat := FRound((QQa_tran1UPRICE.AsFloat * QQa_tran1QTY.AsFloat) - Redu, 2);
end;

procedure TDm_SV.QQa_tran1REDUValidate(Sender: TField);
var
  Redu: Double;
begin
  QQa_tran1NETPRIC.AsFloat := FRound(QQa_tran1UPRICE.AsFloat * QQa_tran1QTY.AsFloat, 2);
  Redu := Fround(((QQa_tran1NETPRIC.AsFloat * QQa_tran1REDU.AsFloat) / 100), 2);
  QQa_tran1TOTALPRC.AsFloat := FRound((QQa_tran1UPRICE.AsFloat * QQa_tran1QTY.AsFloat) - Redu, 2);
end;

procedure TDm_SV.QQa_invoi1TOTSERVValidate(Sender: TField);
begin
 { QQa_invoi1TOTALPRC.AsFloat := FRound((QQa_invoi1TOTSERV.AsFloat+QQa_invoi1TOTPART.AsFloat+QQa_invoi1TOTOTH.AsFloat) -
                                (QQa_invoi1TOTREDU.AsFloat+QQa_invoi1TOTREDUOTH.AsFloat),2);}
  QQa_invoi1TOTALPRC.AsFloat := FRound((QQa_invoi1TOTSERV.AsFloat + QQa_invoi1TOTPART.AsFloat + QQa_invoi1TOTOTH.AsFloat), 2);

  nVat := Dm_sv.QQa_invoi1.Fieldbyname('VATRT').Asfloat;
  QQa_invoi1.FieldByName('TotalVAT').AsFloat := Roundto(QQa_invoi1.FieldByName('TotalPrc').AsFloat * nVat / 100, -2);
  ;
  QQa_invoi1.FieldByName('TotalAll').AsFloat := QQa_invoi1.FieldByName('TotalPrc').AsFloat + QQa_invoi1.FieldByName('TotalVAT').AsFloat;
end;

procedure TDm_SV.QQa_invoi1TOTPARTValidate(Sender: TField);
begin
  QQa_invoi1TOTALPRC.AsFloat := FRound((QQa_invoi1TOTSERV.AsFloat + QQa_invoi1TOTPART.AsFloat + QQa_invoi1TOTOTH.AsFloat), 2);

  nVat := Dm_sv.QQa_invoi1.Fieldbyname('VATRT').Asfloat;
  QQa_invoi1.FieldByName('TotalVAT').AsFloat := Roundto(QQa_invoi1.FieldByName('TotalPrc').AsFloat * nVat / 100, -2);
  ;
  QQa_invoi1.FieldByName('TotalAll').AsFloat := QQa_invoi1.FieldByName('TotalPrc').AsFloat + QQa_invoi1.FieldByName('TotalVAT').AsFloat;
end;

procedure TDm_SV.QQa_invoi1TOTOTHValidate(Sender: TField);
begin
  QQa_invoi1TOTALPRC.AsFloat := FRound((QQa_invoi1TOTSERV.AsFloat + QQa_invoi1TOTPART.AsFloat + QQa_invoi1TOTOTH.AsFloat), 2);

  nVat := Dm_sv.QQa_invoi1.Fieldbyname('VATRT').Asfloat;
  QQa_invoi1.FieldByName('TotalVAT').AsFloat := Roundto(QQa_invoi1.FieldByName('TotalPrc').AsFloat * nVat / 100, -2);
  ;
  QQa_invoi1.FieldByName('TotalAll').AsFloat := QQa_invoi1.FieldByName('TotalPrc').AsFloat + QQa_invoi1.FieldByName('TotalVAT').AsFloat;
end;

procedure TDm_SV.QQa_invoi1TOTREDUValidate(Sender: TField);
begin
  QQa_invoi1TOTALPRC.AsFloat := FRound((QQa_invoi1TOTSERV.AsFloat + QQa_invoi1TOTPART.AsFloat + QQa_invoi1TOTOTH.AsFloat), 2);

  nVat := Dm_sv.QQa_invoi1.Fieldbyname('VATRT').Asfloat;
  QQa_invoi1.FieldByName('TotalVAT').AsFloat := Roundto(QQa_invoi1.FieldByName('TotalPrc').AsFloat * nVat / 100, -2);
  ;
  QQa_invoi1.FieldByName('TotalAll').AsFloat := QQa_invoi1.FieldByName('TotalPrc').AsFloat + QQa_invoi1.FieldByName('TotalVAT').AsFloat;
end;

procedure TDm_SV.QQa_invoi1TOTREDUOTHValidate(Sender: TField);
begin
  QQa_invoi1TOTALPRC.AsFloat := FRound((QQa_invoi1TOTSERV.AsFloat + QQa_invoi1TOTPART.AsFloat + QQa_invoi1TOTOTH.AsFloat), 2);

  nVat := Dm_sv.QQa_invoi1.Fieldbyname('VATRT').Asfloat;
  QQa_invoi1.FieldByName('TotalVAT').AsFloat := Roundto(QQa_invoi1.FieldByName('TotalPrc').AsFloat * nVat / 100, -2);
  ;
  QQa_invoi1.FieldByName('TotalAll').AsFloat := QQa_invoi1.FieldByName('TotalPrc').AsFloat + QQa_invoi1.FieldByName('TotalVAT').AsFloat;
end;

procedure TDm_SV.QQa_invoi1REDUSERVValidate(Sender: TField);
begin
  QQa_invoi1.FieldByName('TOTREDU').AsFloat := FRound(QQa_invoi1REDUSERV.AsFloat + QQa_invoi1REDUPART.AsFloat, 2);
end;

procedure TDm_SV.QQa_invoi1REDUPARTValidate(Sender: TField);
begin
  QQa_invoi1.FieldByName('TOTREDU').AsFloat := FRound(QQa_invoi1REDUSERV.AsFloat + QQa_invoi1REDUPART.AsFloat, 2);
end;

procedure TDm_SV.QQa_invoi1TOTSERV_IValidate(Sender: TField);
begin
  QQa_invoi1TOTALPRC_I.AsFloat := FRound((QQa_invoi1TOTSERV_I.AsFloat + QQa_invoi1TOTPART_I.AsFloat + QQa_invoi1TOTOTH_I.AsFloat), 2);

  nVat := Dm_sv.QQa_invoi1.Fieldbyname('VATRT').Asfloat;
  QQa_invoi1.FieldByName('TOTALVAT_I').AsFloat := Roundto(QQa_invoi1.FieldByName('TOTALPRC_I').AsFloat * nVat / 100, -2);
  ;
  QQa_invoi1.FieldByName('TOTALALL_I').AsFloat := QQa_invoi1.FieldByName('TOTALPRC_I').AsFloat + QQa_invoi1.FieldByName('TOTALVAT_I').AsFloat;
end;

procedure TDm_SV.QQa_invoi1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
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

procedure TDm_SV.QQa_invoi1TOTALALLValidate(Sender: TField);
begin
  QQa_invoi1TOTDIF.AsFloat := FRound(QQa_invoi1TOTALALL.AsFloat - QQa_invoi1TOTALALL_I.AsFloat, 2);
end;

procedure TDm_SV.QQa_invoi1TOTPART_IValidate(Sender: TField);
begin
  QQa_invoi1TOTALPRC_I.AsFloat := FRound((QQa_invoi1TOTSERV_I.AsFloat + QQa_invoi1TOTPART_I.AsFloat + QQa_invoi1TOTOTH_I.AsFloat), 2);

  nVat := Dm_sv.QQa_invoi1.Fieldbyname('VATRT').Asfloat;
  QQa_invoi1.FieldByName('TOTALVAT_I').AsFloat := Roundto(QQa_invoi1.FieldByName('TOTALPRC_I').AsFloat * nVat / 100, -2);
  ;
  QQa_invoi1.FieldByName('TOTALALL_I').AsFloat := QQa_invoi1.FieldByName('TOTALPRC_I').AsFloat + QQa_invoi1.FieldByName('TOTALVAT_I').AsFloat;
end;

procedure TDm_SV.QQa_invoi1TOTOTH_IValidate(Sender: TField);
begin
  QQa_invoi1TOTALPRC_I.AsFloat := FRound((QQa_invoi1TOTSERV_I.AsFloat + QQa_invoi1TOTPART_I.AsFloat + QQa_invoi1TOTOTH_I.AsFloat), 2);

  nVat := Dm_sv.QQa_invoi1.Fieldbyname('VATRT').Asfloat;
  QQa_invoi1.FieldByName('TOTALVAT_I').AsFloat := Roundto(QQa_invoi1.FieldByName('TOTALPRC_I').AsFloat * nVat / 100, -2);
  ;
  QQa_invoi1.FieldByName('TOTALALL_I').AsFloat := QQa_invoi1.FieldByName('TOTALPRC_I').AsFloat + QQa_invoi1.FieldByName('TOTALVAT_I').AsFloat;
end;

procedure TDm_SV.QQa_invoi1POLICYNOValidate(Sender: TField);
begin
  sfmain.Fieldexist('QA_INVOI', 'POLICYNO', Dm_SV.QQa_invoi1POLICYNO.AsString);
end;

procedure TDm_SV.QQa_invoi1CLAIMNOValidate(Sender: TField);
begin
  sfmain.Fieldexist('QA_INVOI', 'CLAIMNO', Dm_SV.QQa_invoi1CLAIMNO.AsString);
end;

procedure TDm_SV.QOthinvoi1BILLNOValidate(Sender: TField);
begin
  if QOthinvoi1BILLNO.AsString <> '' then
    sfmain.RaiseException('Ref.No. : ' + QOthinvoi1BILLNO.AsString + '<br/>หากต้องการแก้ไขรายการให้ยกเลิกการรับชำระก่อน.');
end;

procedure TDm_SV.QJob_tranPARTNOChange(Sender: TField);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from inventor where partno=:edit1 and locat =:edit2');
    params[0].AsString := QJob_tranPARTNO.AsString;
    params[1].AsString := sfmain.Xlocat;
    open;
    QJob_tranDESC1.AsString := Query1.fieldbyname('DESC1').AsString;
  end;
end;

procedure TDm_SV.QJob_tranQTYValidate(Sender: TField);
var
  Redu_Part: Double;
begin
  Redu_Part := Fround((((QJob_tranUPRICE.AsFloat * QJob_tranQTY.AsFloat) * QJob_tranREDU.AsFloat) / 100), 2);
  QJob_tranNETPRIC.AsFloat := FRound((QJob_tranUPRICE.AsFloat * QJob_tranQTY.AsFloat) - Redu_Part, 2);
end;

procedure TDm_SV.QJob_tranUPRICEValidate(Sender: TField);
var
  Redu_Part: Double;
begin
  Redu_Part := Fround((((QJob_tranUPRICE.AsFloat * QJob_tranQTY.AsFloat) * QJob_tranREDU.AsFloat) / 100), 2);
  QJob_tranNETPRIC.AsFloat := FRound((QJob_tranUPRICE.AsFloat * QJob_tranQTY.AsFloat) - Redu_Part, 2);
end;

procedure TDm_SV.QJob_tranREDUValidate(Sender: TField);
var
  Redu_Part: Double;
begin
  Redu_Part := Fround((((QJob_tranUPRICE.AsFloat * QJob_tranQTY.AsFloat) * QJob_tranREDU.AsFloat) / 100), 2);
  QJob_tranNETPRIC.AsFloat := FRound((QJob_tranUPRICE.AsFloat * QJob_tranQTY.AsFloat) - Redu_Part, 2);
end;

procedure TDm_SV.QJob_tranNETPRICChange(Sender: TField);
begin
  QJob_tranTOTALPRC.AsFloat := QJob_tranNETPRIC.AsFloat;
end;

procedure TDm_SV.QServtranAfterDelete(DataSet: TDataSet);
var
  XServ, XVat, XDisc: Double;
  BK: Tbookmark;
begin
  BK := QServtran.Getbookmark;
  XServ := 0;
  XDisc := 0;
  CountFound := 0;

  XVat := QJoborder1.FieldByName('Vat').AsFloat;
  QServtran.DisableControls;
  QServtran.First;
  while not (QServtran.eof) do
  begin
    XDisc := XDisc + (QServtran.FieldByName('FRT').AsFloat * QServtran.FieldByName('UPRICE').AsFloat - QServtran.FieldByName('NETPRIC').AsFloat);
    if QServtran.FieldByName('Claim').Asstring = 'N' then
      XServ := XServ + FRound(QServtran.FieldByName('NETPRIC').AsFloat, 2);

    if TmpCode = QServtran.Fieldbyname('Code').Asstring then
      CountFound := CountFound + 1;

    if CountFound > 1 then
      DoupCode := QServtran.Fieldbyname('Code').Asstring;

    QServtran.Next;
  end;
  QServtran.EnableControls;

  QJoborder1.FieldByName('SERVDISC').AsFloat := XDisc;

  if QJoborder1.FieldByName('VATTYPE').Asstring = '2' then
  begin
    QJoborder1.FieldByName('SERVNET').AsFloat := XServ;
    QJoborder1.FieldByName('SERVVAT').AsFloat := FRound(XServ * XVat / 100, 2);
    QJoborder1.FieldByName('SERVTOT').AsFloat := XServ + QJoborder1.FieldByName('SERVVAT').AsFloat;
  end
  else
  begin
    QJoborder1.FieldByName('SERVVAT').AsFloat := FRound(XServ * XVat / (100 + XVat), 2);
    QJoborder1.FieldByName('SERVNET').AsFloat := XServ - QJoborder1.FieldByName('SERVVAT').AsFloat;
    QJoborder1.FieldByName('SERVTOT').AsFloat := XServ;
  end;
  //SumServ;
  QServtran.Gotobookmark(BK);
  QServtran.Freebookmark(BK);
end;

procedure TDm_SV.QServtranAfterPost(DataSet: TDataSet);
var
  XServ, XVat, XDisc: Double;
  BK: Tbookmark;
begin
  BK := QServtran.Getbookmark;
  XServ := 0;
  XDisc := 0;
  CountFound := 0;

  XVat := QJoborder1.FieldByName('Vat').AsFloat;
  QServtran.DisableControls;
  QServtran.First;
  while not (QServtran.eof) do
  begin
    XDisc := XDisc + (QServtran.FieldByName('FRT').AsFloat * QServtran.FieldByName('UPRICE').AsFloat - QServtran.FieldByName('NETPRIC').AsFloat);
    if QServtran.FieldByName('Claim').Asstring = 'N' then
      XServ := XServ + FRound(QServtran.FieldByName('NETPRIC').AsFloat, 2);

    if TmpCode = QServtran.Fieldbyname('Code').Asstring then
      CountFound := CountFound + 1;

    if CountFound > 1 then
      DoupCode := QServtran.Fieldbyname('Code').Asstring;

    QServtran.Next;
  end;
  QServtran.EnableControls;

  QJoborder1.FieldByName('SERVDISC').AsFloat := XDisc;

  if QJoborder1.FieldByName('VATTYPE').Asstring = '2' then
  begin
    QJoborder1.FieldByName('SERVNET').AsFloat := XServ;
    QJoborder1.FieldByName('SERVVAT').AsFloat := FRound(XServ * XVat / 100, 2);
    QJoborder1.FieldByName('SERVTOT').AsFloat := XServ + QJoborder1.FieldByName('SERVVAT').AsFloat;
  end
  else
  begin
    QJoborder1.FieldByName('SERVVAT').AsFloat := FRound(XServ * XVat / (100 + XVat), 2);
    QJoborder1.FieldByName('SERVNET').AsFloat := XServ - QJoborder1.FieldByName('SERVVAT').AsFloat;
    QJoborder1.FieldByName('SERVTOT').AsFloat := XServ;
  end;
  //SumServ;
  QServtran.Gotobookmark(BK);
  QServtran.Freebookmark(BK);
end;

procedure TDm_SV.QServtranBeforePost(DataSet: TDataSet);
begin
  TmpCode := QServtran.Fieldbyname('Code').Asstring;
end;

procedure TDm_SV.QServtranNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QServtran);
  QServtran.FieldByName('JOBNO').Asstring := QJoborder1.FieldByName('JOBNO').Asstring;
  QServtran.FieldByName('JOBDATE').AsDatetime := QJoborder1.FieldByName('RECVdate').AsDatetime;
  QServtran.FieldByName('JOBTYP').Asstring := QJoborder1.FieldByName('REPTYPE').Asstring;
  QServtran.FieldByName('LOCAT').Asstring := QJoborder1.FieldByName('LOCAT').Asstring;
  QServtran.FieldByName('MDLCOD').Asstring := QJoborder1.FieldByName('MDLCOD').Asstring;
  QServtran.FieldByName('CLAIM').Asstring := 'N';
  QServtran.FieldByName('CAMFLG').Asstring := 'N';
  QServtran.FieldByName('USERID').Asstring := SFmain.XUser_ID;
  QServtran.FieldByName('TIME1').Asdatetime := Now;
end;

procedure TDm_SV.QServtranCODEChange(Sender: TField);
begin
  sfmain.FindShowDesc('TBLABOR', 'DESCP', 'SVCODE', QServtranCODE.AsString);
end;

procedure TDm_SV.QServtranFRTValidate(Sender: TField);
var
  Redu_Serv, Disc_Serv: Double;
begin
  QServtranPRICE.AsFloat := Fround(QServtranUPRICE.AsFloat * QServtranFRT.AsFloat, 2);
  Redu_Serv := Fround(((QServtranPRICE.AsFloat * QServtranREDU.AsFloat) / 100), 2);
  Disc_Serv := QServtranDISCAMT.AsFloat;
  QServtranNETPRIC.AsFloat := FRound(QServtranPRICE.AsFloat - Redu_Serv - Disc_Serv, 2);
end;

procedure TDm_SV.QServtranUPRICEValidate(Sender: TField);
var
  Redu_Serv, Disc_Serv: Double;
begin
  QServtranPRICE.AsFloat := Fround(QServtranUPRICE.AsFloat * QServtranFRT.AsFloat, 2);
  Redu_Serv := Fround(((QServtranPRICE.AsFloat * QServtranREDU.AsFloat) / 100), 2);
  Disc_Serv := QServtranDISCAMT.AsFloat;
  QServtranNETPRIC.AsFloat := FRound(QServtranPRICE.AsFloat - Redu_Serv - Disc_Serv, 2);
end;

procedure TDm_SV.QServtranREDUValidate(Sender: TField);
var
  Redu_Serv, Disc_Serv: Double;
begin
  QServtranPRICE.AsFloat := Fround(QServtranUPRICE.AsFloat * QServtranFRT.AsFloat, 2);
  Redu_Serv := Fround(((QServtranPRICE.AsFloat * QServtranREDU.AsFloat) / 100), 2);
  Disc_Serv := QServtranDISCAMT.AsFloat;
  QServtranNETPRIC.AsFloat := FRound(QServtranPRICE.AsFloat - Redu_Serv - Disc_Serv, 2);
end;

procedure TDm_SV.QServtranDISCAMTValidate(Sender: TField);
var
  Redu_Serv, Disc_Serv: Double;
begin
  QServtranPRICE.AsFloat := Fround(QServtranUPRICE.AsFloat * QServtranFRT.AsFloat, 2);
  Redu_Serv := Fround(((QServtranPRICE.AsFloat * QServtranREDU.AsFloat) / 100), 2);
  Disc_Serv := QServtranDISCAMT.AsFloat;
  QServtranNETPRIC.AsFloat := FRound(QServtranPRICE.AsFloat - Redu_Serv - Disc_Serv, 2);
end;

procedure TDm_SV.QServtranPRICEValidate(Sender: TField);
var
  Redu_Serv, Disc_Serv: Double;
begin
  Redu_Serv := Fround(((QServtranPRICE.AsFloat * QServtranREDU.AsFloat) / 100), 2);
  Disc_Serv := QServtranDISCAMT.AsFloat;
  QServtranNETPRIC.AsFloat := FRound(QServtranPRICE.AsFloat - Redu_Serv - Disc_Serv, 2);
end;

procedure TDm_SV.QJob_tranNewRecord(DataSet: TDataSet);
begin
  QJob_tranQTY.AsFloat := 0;
  QJob_tranUPRICE.AsFloat := 0;
  QJob_tranREDU.AsFloat := 0;
  QJob_tranNETPRIC.AsFloat := 0;
  QJob_tranTOTALPRC.AsFloat := 0;
end;

procedure TDm_SV.QJob_tranPARTNOValidate(Sender: TField);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from inventor where partno=:edit1 and locat =:edit2');
    params[0].AsString := QJob_tranPARTNO.AsString;
    params[1].AsString := sfmain.Xlocat;
    open;
    QJob_tranQTY.AsFloat := 1;
    QJob_tranUPRICE.AsFloat := Query1.fieldbyname('PRICE1').AsFloat;
    QJob_tranREDU.AsFloat := 0;
    QJob_tranNETPRIC.AsFloat := Query1.fieldbyname('PRICE1').AsFloat;
    QJob_tranTOTALPRC.AsFloat := Query1.fieldbyname('PRICE1').AsFloat;
  end;
end;

procedure TDm_SV.QOthinvoi1VATValidate(Sender: TField);
var
  Xvat: Double;
begin
  Xvat := QOthinvoi1VAT.ASfloat;
  if QOthinvoi1.FieldByName('Vattype').Asstring = '2' then
  begin
    QOthinvoi1.FieldByName('VATAMT').AsFloat := Roundto(QOthinvoi1.FieldByName('BALANE').AsFloat * Xvat / 100, -2);
    QOthinvoi1.FieldByName('NETPRC').AsFloat := QOthinvoi1.FieldByName('BALANE').AsFloat + QOthinvoi1.FieldByName('VATAMT').AsFloat;
  end
  else
  begin
    QOthinvoi1.FieldByName('VATAMT').AsFloat := FRound(QOthinvoi1.FieldByName('BALANE').AsFloat * Xvat / (100 + Xvat), 2);
    QOthinvoi1.FieldByName('NETPRC').AsFloat := QOthinvoi1.FieldByName('BALANE').AsFloat;
  end;
end;

end.

