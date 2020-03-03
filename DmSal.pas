unit DmSal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Math,
  Db, FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDm_Sal = class(TDataModule)
    Query1: TFDQuery;
    SoArresv: TDataSource;
    QInvResv: TFDQuery;
    SoInvResv: TDataSource;
    QVatmast: TFDQuery;
    QArresv: TFDQuery;
    QArresvRESVNO: TStringField;
    QArresvLOCAT: TStringField;
    QArresvRESVDT: TDateField;
    QArresvCUSCOD: TStringField;
    QArresvGRPCOD: TStringField;
    QArresvTYPE: TStringField;
    QArresvBAAB: TStringField;
    QArresvMODEL: TStringField;
    QArresvCOLOR: TStringField;
    QArresvCC: TFloatField;
    QArresvSTAT: TStringField;
    QArresvSALCOD: TStringField;
    QArresvVATRT: TFloatField;
    QArresvPRICE: TFloatField;
    QArresvRESPAY: TFloatField;
    QArresvBALANCE: TFloatField;
    QArresvSMPAY: TFloatField;
    QArresvSMCHQ: TFloatField;
    QArresvRECVDUE: TDateField;
    QArresvSTRNO: TStringField;
    QArresvISSUNO: TStringField;
    QArresvRECVDT: TDateField;
    QArresvRECVCD: TStringField;
    QArresvSDATE: TDateField;
    QArresvTAXNO: TStringField;
    QArresvTAXDT: TDateField;
    QArresvMEMO1: TMemoField;
    QArresvREQNO: TStringField;
    QArresvREQLOCAT: TStringField;
    QArresvPOSTDT: TDateField;
    QArresvINPDT: TDateField;
    QArresvUSERID: TStringField;
    QCustRes: TFDQuery;
    QTaxtran: TFDQuery;
    SoTaxtran: TDataSource;
    QTaxtranLOCAT: TStringField;
    QTaxtranTAXNO: TStringField;
    QTaxtranTAXDT: TDateField;
    QTaxtranTSALE: TStringField;
    QTaxtranCONTNO: TStringField;
    QTaxtranCUSCOD: TStringField;
    QTaxtranSNAM: TStringField;
    QTaxtranNAME1: TStringField;
    QTaxtranNAME2: TStringField;
    QTaxtranSTRNO: TStringField;
    QTaxtranREFNO: TStringField;
    QTaxtranREFDT: TDateField;
    QTaxtranVATRT: TFloatField;
    QTaxtranNETAMT: TFloatField;
    QTaxtranVATAMT: TFloatField;
    QTaxtranTOTAMT: TFloatField;
    QTaxtranDESCP: TStringField;
    QTaxtranFPAR: TStringField;
    QTaxtranFPAY: TFloatField;
    QTaxtranLPAR: TStringField;
    QTaxtranLPAY: TFloatField;
    QTaxtranINPDT: TDateField;
    QTaxtranFLAG: TStringField;
    QTaxtranCANDT: TDateField;
    QTaxtranTAXTYP: TStringField;
    QTaxtranTAXFLG: TStringField;
    QTaxtranUSERID: TStringField;
    QTaxtranFLCANCL: TStringField;
    QDbConfig: TFDQuery;
    QArresvUpdateStatus: TStringField;
    QTaxtranUpdateStatus: TStringField;
    QResvUpd: TFDQuery;
    SoResvUpd: TDataSource;
    QResvUpdRESVNO: TStringField;
    QResvUpdLOCAT: TStringField;
    QResvUpdRESVDT: TDateField;
    QResvUpdCUSCOD: TStringField;
    QResvUpdGRPCOD: TStringField;
    QResvUpdTYPE: TStringField;
    QResvUpdBAAB: TStringField;
    QResvUpdMODEL: TStringField;
    QResvUpdCOLOR: TStringField;
    QResvUpdCC: TFloatField;
    QResvUpdSTAT: TStringField;
    QResvUpdSALCOD: TStringField;
    QResvUpdVATRT: TFloatField;
    QResvUpdPRICE: TFloatField;
    QResvUpdRESPAY: TFloatField;
    QResvUpdBALANCE: TFloatField;
    QResvUpdSMPAY: TFloatField;
    QResvUpdSMCHQ: TFloatField;
    QResvUpdRECVDUE: TDateField;
    QResvUpdSTRNO: TStringField;
    QResvUpdISSUNO: TStringField;
    QResvUpdRECVDT: TDateField;
    QResvUpdRECVCD: TStringField;
    QResvUpdSDATE: TDateField;
    QResvUpdTAXNO: TStringField;
    QResvUpdTAXDT: TDateField;
    QResvUpdMEMO1: TMemoField;
    QResvUpdREQNO: TStringField;
    QResvUpdREQLOCAT: TStringField;
    QResvUpdPOSTDT: TDateField;
    QResvUpdINPDT: TDateField;
    QResvUpdUSERID: TStringField;
    QCshSale: TFDQuery;
    SoCshsale: TDataSource;
    QCshSaleCONTNO: TStringField;
    QCshSaleLOCAT: TStringField;
    QCshSaleRESVNO: TStringField;
    QCshSaleCUSCOD: TStringField;
    QCshSaleSTRNO: TStringField;
    QCshSaleINCLVAT: TStringField;
    QCshSaleSDATE: TDateField;
    QCshSaleVATRT: TFloatField;
    QCshSaleSTDPRC: TFloatField;
    QCshSaleDSCPRC: TFloatField;
    QCshSaleNPRICE: TFloatField;
    QCshSaleVATPRC: TFloatField;
    QCshSaleTOTPRC: TFloatField;
    QCshSaleNPAYRES: TFloatField;
    QCshSaleVATPRES: TFloatField;
    QCshSaleSMPAY: TFloatField;
    QCshSaleSMCHQ: TFloatField;
    QCshSaleNCARCST: TFloatField;
    QCshSaleVCARCST: TFloatField;
    QCshSaleTAXNO: TStringField;
    QCshSaleTAXDT: TDateField;
    QCshSaleOPTCST: TFloatField;
    QCshSaleOPTCVT: TFloatField;
    QCshSaleOPTCTOT: TFloatField;
    QCshSaleOPTPRC: TFloatField;
    QCshSaleOPTPVT: TFloatField;
    QCshSaleOPTPTOT: TFloatField;
    QCshSaleCREDTM: TFloatField;
    QCshSaleDUEDT: TDateField;
    QCshSaleSALCOD: TStringField;
    QCshSaleCOMITN: TFloatField;
    QCshSaleISSUNO: TStringField;
    QCshSaleISSUDT: TDateField;
    QCshSaleLPAYDT: TDateField;
    QCshSaleTSALE: TStringField;
    QCshSaleMEMO1: TMemoField;
    QCshSaleUSERID: TStringField;
    QCshSaleINPDT: TDateTimeField;
    QCshSaleDELID: TStringField;
    QCshSaleDELDT: TDateTimeField;
    QCshSalePOSTDT: TDateTimeField;
    QInvtran: TFDQuery;
    SoInvtran: TDataSource;
    QCshSaleUpdateStatus: TStringField;
    QResv: TFDQuery;
    SoResv: TDataSource;
    QCshSaleTOTPRES: TFloatField;
    QCshSaleTCARCST: TFloatField;
    QCshSaleNKANG: TFloatField;
    QCshSaleVKANG: TFloatField;
    QCshSaleTKANG: TFloatField;
    QCshSUpd: TFDQuery;
    SoCshSupd: TDataSource;
    QCshTax: TFDQuery;
    SoCshTax: TDataSource;
    QCshTaxLOCAT: TStringField;
    QCshTaxTAXNO: TStringField;
    QCshTaxTAXDT: TDateField;
    QCshTaxTSALE: TStringField;
    QCshTaxCONTNO: TStringField;
    QCshTaxCUSCOD: TStringField;
    QCshTaxSNAM: TStringField;
    QCshTaxNAME1: TStringField;
    QCshTaxNAME2: TStringField;
    QCshTaxSTRNO: TStringField;
    QCshTaxREFNO: TStringField;
    QCshTaxREFDT: TDateField;
    QCshTaxVATRT: TFloatField;
    QCshTaxNETAMT: TFloatField;
    QCshTaxVATAMT: TFloatField;
    QCshTaxTOTAMT: TFloatField;
    QCshTaxDESCP: TStringField;
    QCshTaxFPAR: TStringField;
    QCshTaxFPAY: TFloatField;
    QCshTaxLPAR: TStringField;
    QCshTaxLPAY: TFloatField;
    QCshTaxINPDT: TDateField;
    QCshTaxFLAG: TStringField;
    QCshTaxCANDT: TDateField;
    QCshTaxTAXTYP: TStringField;
    QCshTaxTAXFLG: TStringField;
    QCshTaxUSERID: TStringField;
    QCshTaxFLCANCL: TStringField;
    QCshSUpdCONTNO: TStringField;
    QCshSUpdLOCAT: TStringField;
    QCshSUpdRESVNO: TStringField;
    QCshSUpdCUSCOD: TStringField;
    QCshSUpdSTRNO: TStringField;
    QCshSUpdINCLVAT: TStringField;
    QCshSUpdSDATE: TDateField;
    QCshSUpdVATRT: TFloatField;
    QCshSUpdSTDPRC: TFloatField;
    QCshSUpdDSCPRC: TFloatField;
    QCshSUpdKEYIN: TFloatField;
    QCshSUpdNPRICE: TFloatField;
    QCshSUpdVATPRC: TFloatField;
    QCshSUpdTOTPRC: TFloatField;
    QCshSUpdNPAYRES: TFloatField;
    QCshSUpdVATPRES: TFloatField;
    QCshSUpdTOTPRES: TFloatField;
    QCshSUpdSMPAY: TFloatField;
    QCshSUpdSMCHQ: TFloatField;
    QCshSUpdNKANG: TFloatField;
    QCshSUpdVKANG: TFloatField;
    QCshSUpdTKANG: TFloatField;
    QCshSUpdNCARCST: TFloatField;
    QCshSUpdVCARCST: TFloatField;
    QCshSUpdTCARCST: TFloatField;
    QCshSUpdTAXNO: TStringField;
    QCshSUpdTAXDT: TDateField;
    QCshSUpdOPTCST: TFloatField;
    QCshSUpdOPTCVT: TFloatField;
    QCshSUpdOPTCTOT: TFloatField;
    QCshSUpdOPTPRC: TFloatField;
    QCshSUpdOPTPVT: TFloatField;
    QCshSUpdOPTPTOT: TFloatField;
    QCshSUpdCREDTM: TFloatField;
    QCshSUpdDUEDT: TDateField;
    QCshSUpdSALCOD: TStringField;
    QCshSUpdCOMITN: TFloatField;
    QCshSUpdISSUNO: TStringField;
    QCshSUpdISSUDT: TDateField;
    QCshSUpdLPAYDT: TDateField;
    QCshSUpdTSALE: TStringField;
    QCshSUpdMEMO1: TMemoField;
    QCshSUpdUSERID: TStringField;
    QCshSUpdINPDT: TDateTimeField;
    QCshSUpdDELID: TStringField;
    QCshSUpdDELDT: TDateTimeField;
    QCshSUpdPOSTDT: TDateTimeField;
    QCshTaxUpdateStatus: TStringField;
    QCshOpt: TFDQuery;
    SoCshOpt: TDataSource;
    QCshOptTSALE: TStringField;
    QCshOptCONTNO: TStringField;
    QCshOptLOCAT: TStringField;
    QCshOptOPTCODE: TStringField;
    QCshOptUPRICE: TFloatField;
    QCshOptUCOST: TFloatField;
    QCshOptQTY: TFloatField;
    QCshOptTOTPRC: TFloatField;
    QCshOptTOTVAT: TFloatField;
    QCshOptNPRICE: TFloatField;
    QCshOptOPTCST: TFloatField;
    QCshOptOPTCVT: TFloatField;
    QCshOptOPTCTOT: TFloatField;
    QCshOptCONFIR: TStringField;
    QCshOptUSERID: TStringField;
    QCshOptINPDT: TDateField;
    QCshOptPOSTDT: TDateField;
    QCshOptUpdateStatus: TStringField;
    QCshOptM: TFDQuery;
    SoOptMCsh: TDataSource;
    QCustmast: TFDQuery;
    SoCustmas: TDataSource;
    QFinSale: TFDQuery;
    SoFinSal: TDataSource;
    QFinOpt: TFDQuery;
    SoFinOpt: TDataSource;
    QFinSaleCONTNO: TStringField;
    QFinSaleLOCAT: TStringField;
    QFinSaleRESVNO: TStringField;
    QFinSaleCUSCOD: TStringField;
    QFinSaleSTRNO: TStringField;
    QFinSaleINCLVAT: TStringField;
    QFinSaleVATRT: TFloatField;
    QFinSaleSTDPRC: TFloatField;
    QFinSaleDSCPRC: TFloatField;
    QFinSaleSDATE: TDateField;
    QFinSaleNPRICE: TFloatField;
    QFinSaleTOTPRC: TFloatField;
    QFinSaleNPAYRES: TFloatField;
    QFinSaleVATPRES: TFloatField;
    QFinSaleNDAWN: TFloatField;
    QFinSaleKEYINDWN: TFloatField;
    QFinSaleVATDWN: TFloatField;
    QFinSaleNKANG: TFloatField;
    QFinSaleVKANG: TFloatField;
    QFinSaleNFINAN: TFloatField;
    QFinSaleVATFIN: TFloatField;
    QFinSalePAYDWN: TFloatField;
    QFinSalePAYFIN: TFloatField;
    QFinSaleSMPAY: TFloatField;
    QFinSaleSMCHQ: TFloatField;
    QFinSaleTAXNO: TStringField;
    QFinSaleTAXDT: TDateField;
    QFinSaleTAXCRD: TStringField;
    QFinSaleNCARCST: TFloatField;
    QFinSaleVCARCST: TFloatField;
    QFinSaleOPTCST: TFloatField;
    QFinSaleOPTCVT: TFloatField;
    QFinSaleOPTCTOT: TFloatField;
    QFinSaleOPTPRC: TFloatField;
    QFinSaleOPTPVT: TFloatField;
    QFinSaleOPTPTOT: TFloatField;
    QFinSaleFINCOM: TFloatField;
    QFinSaleFINCOD: TStringField;
    QFinSaleSALCOD: TStringField;
    QFinSaleCOMITN: TFloatField;
    QFinSaleLPAYD: TDateField;
    QFinSaleLPAYA: TFloatField;
    QFinSaleISSUNO: TStringField;
    QFinSaleISSUDT: TDateField;
    QFinSaleTSALE: TStringField;
    QFinSaleMEMO1: TMemoField;
    QFinSaleUSERID: TStringField;
    QFinSaleINPDT: TDateTimeField;
    QFinSaleDELID: TStringField;
    QFinSaleDELDT: TDateTimeField;
    QFinSalePOSTDT: TDateTimeField;
    QFinSaleUpdateStatus: TStringField;
    QFinSaleTOTPRES: TFloatField;
    QFinSaleTOTDWN: TFloatField;
    QFinSaleTKANG: TFloatField;
    QFinSaleTOTFIN: TFloatField;
    QFinSaleTCARCST: TFloatField;
    QFinSaleCONFIR: TStringField;
    QFinSaleCONFIRID: TStringField;
    QFinSaleCONFIRDT: TDateField;
    QFinSUpd: TFDQuery;
    SoFinFUpd: TDataSource;
    QFinSUpdCONTNO: TStringField;
    QFinSUpdLOCAT: TStringField;
    QFinSUpdRESVNO: TStringField;
    QFinSUpdCUSCOD: TStringField;
    QFinSUpdSTRNO: TStringField;
    QFinSUpdINCLVAT: TStringField;
    QFinSUpdVATRT: TFloatField;
    QFinSUpdSTDPRC: TFloatField;
    QFinSUpdDSCPRC: TFloatField;
    QFinSUpdSDATE: TDateField;
    QFinSUpdKEYIN: TFloatField;
    QFinSUpdNPRICE: TFloatField;
    QFinSUpdVATPRC: TFloatField;
    QFinSUpdTOTPRC: TFloatField;
    QFinSUpdNPAYRES: TFloatField;
    QFinSUpdVATPRES: TFloatField;
    QFinSUpdTOTPRES: TFloatField;
    QFinSUpdKEYINDWN: TFloatField;
    QFinSUpdNDAWN: TFloatField;
    QFinSUpdVATDWN: TFloatField;
    QFinSUpdTOTDWN: TFloatField;
    QFinSUpdNKANG: TFloatField;
    QFinSUpdVKANG: TFloatField;
    QFinSUpdTKANG: TFloatField;
    QFinSUpdNFINAN: TFloatField;
    QFinSUpdVATFIN: TFloatField;
    QFinSUpdTOTFIN: TFloatField;
    QFinSUpdPAYDWN: TFloatField;
    QFinSUpdPAYFIN: TFloatField;
    QFinSUpdSMPAY: TFloatField;
    QFinSUpdSMCHQ: TFloatField;
    QFinSUpdTAXNO: TStringField;
    QFinSUpdTAXDT: TDateField;
    QFinSUpdTAXCRD: TStringField;
    QFinSUpdNCARCST: TFloatField;
    QFinSUpdVCARCST: TFloatField;
    QFinSUpdTCARCST: TFloatField;
    QFinSUpdOPTCST: TFloatField;
    QFinSUpdOPTCVT: TFloatField;
    QFinSUpdOPTCTOT: TFloatField;
    QFinSUpdOPTPRC: TFloatField;
    QFinSUpdOPTPVT: TFloatField;
    QFinSUpdOPTPTOT: TFloatField;
    QFinSUpdFINCOM: TFloatField;
    QFinSUpdFINCOD: TStringField;
    QFinSUpdSALCOD: TStringField;
    QFinSUpdCOMITN: TFloatField;
    QFinSUpdLPAYD: TDateField;
    QFinSUpdLPAYA: TFloatField;
    QFinSUpdISSUNO: TStringField;
    QFinSUpdISSUDT: TDateField;
    QFinSUpdTSALE: TStringField;
    QFinSUpdCONFIR: TStringField;
    QFinSUpdCONFIRID: TStringField;
    QFinSUpdCONFIRDT: TDateField;
    QFinSUpdMEMO1: TMemoField;
    QFinSUpdUSERID: TStringField;
    QFinSUpdINPDT: TDateTimeField;
    QFinSUpdDELID: TStringField;
    QFinSUpdDELDT: TDateTimeField;
    QFinSUpdPOSTDT: TDateTimeField;
    QFinOptTSALE: TStringField;
    QFinOptCONTNO: TStringField;
    QFinOptLOCAT: TStringField;
    QFinOptOPTCODE: TStringField;
    QFinOptUPRICE: TFloatField;
    QFinOptUCOST: TFloatField;
    QFinOptQTY: TFloatField;
    QFinOptTOTPRC: TFloatField;
    QFinOptTOTVAT: TFloatField;
    QFinOptNPRICE: TFloatField;
    QFinOptOPTCST: TFloatField;
    QFinOptOPTCVT: TFloatField;
    QFinOptOPTCTOT: TFloatField;
    QFinOptCONFIR: TStringField;
    QFinOptUSERID: TStringField;
    QFinOptINPDT: TDateField;
    QFinOptPOSTDT: TDateField;
    QFinOptUpdateStatus: TStringField;
    QDiscTax: TFDQuery;
    SoDiscTax: TDataSource;
    QDiscTaxLOCAT: TStringField;
    QDiscTaxTAXNO: TStringField;
    QDiscTaxTAXDT: TDateField;
    QDiscTaxTSALE: TStringField;
    QDiscTaxCONTNO: TStringField;
    QDiscTaxCUSCOD: TStringField;
    QDiscTaxSNAM: TStringField;
    QDiscTaxNAME1: TStringField;
    QDiscTaxNAME2: TStringField;
    QDiscTaxSTRNO: TStringField;
    QDiscTaxREFNO: TStringField;
    QDiscTaxREFDT: TDateField;
    QDiscTaxVATRT: TFloatField;
    QDiscTaxNETAMT: TFloatField;
    QDiscTaxVATAMT: TFloatField;
    QDiscTaxTOTAMT: TFloatField;
    QDiscTaxDESCP: TStringField;
    QDiscTaxFPAR: TStringField;
    QDiscTaxFPAY: TFloatField;
    QDiscTaxLPAR: TStringField;
    QDiscTaxLPAY: TFloatField;
    QDiscTaxINPDT: TDateField;
    QDiscTaxFLAG: TStringField;
    QDiscTaxCANDT: TDateField;
    QDiscTaxTAXTYP: TStringField;
    QDiscTaxTAXFLG: TStringField;
    QDiscTaxUSERID: TStringField;
    QDiscTaxFLCANCL: TStringField;
    QDiscTaxUpdateStatus: TStringField;
    QOptSale: TFDQuery;
    SoOptSal: TDataSource;
    QOptSalT: TFDQuery;
    SoOptSalT: TDataSource;
    QOptSUpd: TFDQuery;
    SoOptSUpd: TDataSource;
    QOptSaleCONTNO: TStringField;
    QOptSaleLOCAT: TStringField;
    QOptSaleCUSCOD: TStringField;
    QOptSaleINCLVAT: TStringField;
    QOptSaleVATRT: TFloatField;
    QOptSaleSDATE: TDateField;
    QOptSaleSMPAY: TFloatField;
    QOptSaleSMCHQ: TFloatField;
    QOptSaleKANG: TFloatField;
    QOptSaleCOST: TFloatField;
    QOptSaleTAXNO: TStringField;
    QOptSaleTAXDT: TDateField;
    QOptSaleOPTCST: TFloatField;
    QOptSaleOPTCVT: TFloatField;
    QOptSaleOPTCTOT: TFloatField;
    QOptSaleOPTPRC: TFloatField;
    QOptSaleOPTPVT: TFloatField;
    QOptSaleOPTPTOT: TFloatField;
    QOptSaleCREDTM: TFloatField;
    QOptSaleDUEDT: TDateField;
    QOptSaleSALCOD: TStringField;
    QOptSaleCOMITN: TFloatField;
    QOptSaleLPAYDT: TDateField;
    QOptSaleTSALE: TStringField;
    QOptSaleMEMO1: TMemoField;
    QOptSaleUSERID: TStringField;
    QOptSaleINPDT: TDateTimeField;
    QOptSaleDELID: TStringField;
    QOptSaleDELDT: TDateTimeField;
    QOptSalePOSTDT: TDateTimeField;
    QOptSalTTSALE: TStringField;
    QOptSalTCONTNO: TStringField;
    QOptSalTLOCAT: TStringField;
    QOptSalTOPTCODE: TStringField;
    QOptSalTUPRICE: TFloatField;
    QOptSalTUCOST: TFloatField;
    QOptSalTQTY: TFloatField;
    QOptSalTTOTPRC: TFloatField;
    QOptSalTTOTVAT: TFloatField;
    QOptSalTNPRICE: TFloatField;
    QOptSalTOPTCST: TFloatField;
    QOptSalTOPTCVT: TFloatField;
    QOptSalTOPTCTOT: TFloatField;
    QOptSalTCONFIR: TStringField;
    QOptSalTUSERID: TStringField;
    QOptSalTINPDT: TDateField;
    QOptSalTPOSTDT: TDateField;
    QOptSaleUpdateStatus: TStringField;
    QOptSUpdCONTNO: TStringField;
    QOptSUpdLOCAT: TStringField;
    QOptSUpdCUSCOD: TStringField;
    QOptSUpdINCLVAT: TStringField;
    QOptSUpdVATRT: TFloatField;
    QOptSUpdSDATE: TDateField;
    QOptSUpdSMPAY: TFloatField;
    QOptSUpdSMCHQ: TFloatField;
    QOptSUpdKANG: TFloatField;
    QOptSUpdCOST: TFloatField;
    QOptSUpdTAXNO: TStringField;
    QOptSUpdTAXDT: TDateField;
    QOptSUpdOPTCST: TFloatField;
    QOptSUpdOPTCVT: TFloatField;
    QOptSUpdOPTCTOT: TFloatField;
    QOptSUpdOPTPRC: TFloatField;
    QOptSUpdOPTPVT: TFloatField;
    QOptSUpdOPTPTOT: TFloatField;
    QOptSUpdCREDTM: TFloatField;
    QOptSUpdDUEDT: TDateField;
    QOptSUpdSALCOD: TStringField;
    QOptSUpdCOMITN: TFloatField;
    QOptSUpdLPAYDT: TDateField;
    QOptSUpdTSALE: TStringField;
    QOptSUpdMEMO1: TMemoField;
    QOptSUpdUSERID: TStringField;
    QOptSUpdINPDT: TDateTimeField;
    QOptSUpdDELID: TStringField;
    QOptSUpdDELDT: TDateTimeField;
    QOptSUpdPOSTDT: TDateTimeField;
    Query2: TFDQuery;
    QCshSaleNKEYIN: TFloatField;
    QCshSaleVKEYIN: TFloatField;
    QCshSaleTKEYIN: TFloatField;
    QCshSaleCRDTXNO: TStringField;
    QCshSaleCRDAMT: TFloatField;
    QFinSaleNKEYIN: TFloatField;
    QFinSaleVKEYIN: TFloatField;
    QFinSaleTKEYIN: TFloatField;
    QFinSaleCRDTXNO: TStringField;
    QFinSaleCRDAMT: TFloatField;
    QCshSUpdNKEYIN: TFloatField;
    QCshSUpdVKEYIN: TFloatField;
    QCshSUpdTKEYIN: TFloatField;
    QCshSUpdCRDTXNO: TStringField;
    QCshSUpdCRDAMT: TFloatField;
    QFinSUpdNKEYIN: TFloatField;
    QFinSUpdVKEYIN: TFloatField;
    QFinSUpdTKEYIN: TFloatField;
    QFinSUpdCRDTXNO: TStringField;
    QFinSUpdCRDAMT: TFloatField;
    QCshTaxTMBILL: TStringField;
    QCshTaxRTNSTK: TStringField;
    QCshTaxFINCOD: TStringField;
    QArClose: TFDQuery;
    SoArClose: TDataSource;
    SoClsInvT: TDataSource;
    QClsInvT: TFDQuery;
    QArSale: TFDQuery;
    SoArSale: TDataSource;
    QArCloseLOCAT: TStringField;
    QArCloseCONTNO: TStringField;
    QArCloseTSALE: TStringField;
    QArCloseRESVNO: TStringField;
    QArCloseCUSCOD: TStringField;
    QArCloseSNAM: TStringField;
    QArCloseNAME1: TStringField;
    QArCloseNAME2: TStringField;
    QArCloseSTRNO: TStringField;
    QArCloseREGNO: TStringField;
    QArCloseSDATE: TDateField;
    QArCloseTOTPRC: TFloatField;
    QArCloseNPRICE: TFloatField;
    QArCloseVATPRC: TFloatField;
    QArCloseNDAWN: TFloatField;
    QArCloseVATDWN: TFloatField;
    QArCloseTOTDWN: TFloatField;
    QArCloseNKANG: TFloatField;
    QArCloseVKANG: TFloatField;
    QArCloseTKANG: TFloatField;
    QArCloseN_NETCST: TFloatField;
    QArCloseN_NETVAT: TFloatField;
    QArCloseN_NETTOT: TFloatField;
    QArCloseCLDATE: TDateField;
    QArCloseBILLCOLL: TStringField;
    QArCloseCHECKER: TStringField;
    QArCloseCGRADE: TStringField;
    QArCloseFLAG: TStringField;
    QArCloseMEMO1: TMemoField;
    QArCloseUpdateStatus: TStringField;
    QArCloseUSERID: TStringField;
    QArCloseINPDT: TDateTimeField;
    QFinSaleKEYIN: TFloatField;
    QCshSaleKEYIN: TFloatField;
    QSetargar: TFDQuery;
    SoSetargar: TDataSource;
    QCshSaleFLCANCL: TStringField;
    QFinSaleFLCANCL: TStringField;
    QCondpay: TFDQuery;
    QCshOptSDATE: TDateField;
    QFinOptSDATE: TDateField;
    QOptSalTSDATE: TDateField;
    QCshSaleAPPVNO: TStringField;
    QCshSalePAYTYP: TStringField;
    QFinSaleAPPVNO: TStringField;
    QCshSaleADDRNO: TStringField;
    QFinSaleADDRNO: TStringField;
    QCshSaleCOMEXT: TFloatField;
    QCshSaleCOMOPT: TFloatField;
    QCshSaleCOMOTH: TFloatField;
    QFinSaleCOMEXT: TFloatField;
    QFinSaleCOMOPT: TFloatField;
    QFinSaleCOMOTH: TFloatField;
    QCshSaleRECOMCOD: TStringField;
    QCshSaleACTICOD: TStringField;
    QFinSaleRECOMCOD: TStringField;
    QFinSaleACTICOD: TStringField;
    QClosMast: TFDQuery;
    qCusDeTFin: TFDQuery;
    SoCusDeTFin: TDataSource;
    QFinSalePERCOM: TFloatField;
    QCshOptRTNFLAG: TStringField;
    QCshOptOPTNAME: TStringField;
    QFinOptRTNFLAG: TStringField;
    QFinOptOPTNAME: TStringField;
    QFinSalePAYTYP: TStringField;
    QFinSaleTOT_UPAY: TFloatField;
    QFinSaleKEYIN_UPAY: TFloatField;
    QFinSaleTNOPAY: TFloatField;
    QFinSaleVATPRC: TFloatField;
    QArresvFLCANCLE: TStringField;
    QArresvFLID: TStringField;
    QArresvFLDT: TDateTimeField;
    QArresvFLRESON: TStringField;
    QArresvTRESVNO: TStringField;
    QAgnSale: TFDQuery;
    SoAgnSale: TDataSource;
    QAgnSaleCONTNO: TStringField;
    QAgnSaleLOCAT: TStringField;
    QAgnSaleCUSCOD: TStringField;
    QAgnSaleINCLVAT: TStringField;
    QAgnSaleSDATE: TDateField;
    QAgnSaleVATRT: TFloatField;
    QAgnSaleKEYIN: TFloatField;
    QAgnSaleNKEYIN: TFloatField;
    QAgnSaleVKEYIN: TFloatField;
    QAgnSaleTKEYIN: TFloatField;
    QAgnSaleNPRICE: TFloatField;
    QAgnSaleVATPRC: TFloatField;
    QAgnSaleTOTPRC: TFloatField;
    QAgnSaleSMPAY: TFloatField;
    QAgnSaleSMCHQ: TFloatField;
    QAgnSaleTAXNO: TStringField;
    QAgnSaleTAXDT: TDateField;
    QAgnSaleCRDTXNO: TStringField;
    QAgnSaleCRDAMT: TFloatField;
    QAgnSaleCREDTM: TFloatField;
    QAgnSaleDUEDT: TDateField;
    QAgnSaleSALCOD: TStringField;
    QAgnSaleCOMITN: TFloatField;
    QAgnSaleISSUNO: TStringField;
    QAgnSaleISSUDT: TDateField;
    QAgnSaleLPAYDT: TDateField;
    QAgnSaleTSALE: TStringField;
    QAgnSaleMEMO1: TMemoField;
    QAgnSaleUSERID: TStringField;
    QAgnSaleINPDT: TDateTimeField;
    QAgnSaleDELID: TStringField;
    QAgnSaleDELDT: TDateTimeField;
    QAgnSalePOSTDT: TDateTimeField;
    QAgnSaleFLCANCL: TStringField;
    QAgnSaleAPPVNO: TStringField;
    QAgnSalePAYTYP: TStringField;
    QAgnSaleADDRNO: TStringField;
    QAgnSaleRECOMCOD: TStringField;
    QAgnSaleACTICOD: TStringField;
    SoAgnSalT: TDataSource;
    QAgnSalT: TFDQuery;
    QAgnSalTCONTNO: TStringField;
    QAgnSalTLOCAT: TStringField;
    QAgnSalTSTRNO: TStringField;
    QAgnSalTVATRT: TFloatField;
    QAgnSalTKEYIN: TFloatField;
    QAgnSalTNKEYIN: TFloatField;
    QAgnSalTVKEYIN: TFloatField;
    QAgnSalTTKEYIN: TFloatField;
    QAgnSalTNPRICE: TFloatField;
    QAgnSalTVATPRC: TFloatField;
    QAgnSalTTOTPRC: TFloatField;
    QAgnSalTSMPAY: TFloatField;
    QAgnSalTSMCHQ: TFloatField;
    QAgnSalTISSUNO: TStringField;
    QAgnSalTISSUDT: TDateField;
    QAgnSalTLPAYDT: TDateField;
    QAgnSalTTSALE: TStringField;
    QAgnSalTCRDTXNO: TStringField;
    QAgnSalTCRDAMT: TFloatField;
    QAgnSalTMEMO1: TMemoField;
    QAgnSalTUSERID: TStringField;
    QAgnSalTINPDT: TDateTimeField;
    QAgnSalTDELID: TStringField;
    QAgnSalTDELDT: TDateTimeField;
    QAgnSalTPOSTDT: TDateTimeField;
    QAgnSalTNCARCST: TFloatField;
    QAgnSUpd: TFDQuery;
    SoQAgnSUpd: TDataSource;
    QAgnSUpdCONTNO: TStringField;
    QAgnSUpdLOCAT: TStringField;
    QAgnSUpdCUSCOD: TStringField;
    QAgnSUpdINCLVAT: TStringField;
    QAgnSUpdSDATE: TDateField;
    QAgnSUpdVATRT: TFloatField;
    QAgnSUpdKEYIN: TFloatField;
    QAgnSUpdNKEYIN: TFloatField;
    QAgnSUpdVKEYIN: TFloatField;
    QAgnSUpdTKEYIN: TFloatField;
    QAgnSUpdNPRICE: TFloatField;
    QAgnSUpdVATPRC: TFloatField;
    QAgnSUpdTOTPRC: TFloatField;
    QAgnSUpdSMPAY: TFloatField;
    QAgnSUpdSMCHQ: TFloatField;
    QAgnSUpdTAXNO: TStringField;
    QAgnSUpdTAXDT: TDateField;
    QAgnSUpdCRDTXNO: TStringField;
    QAgnSUpdCRDAMT: TFloatField;
    QAgnSUpdCREDTM: TFloatField;
    QAgnSUpdDUEDT: TDateField;
    QAgnSUpdSALCOD: TStringField;
    QAgnSUpdCOMITN: TFloatField;
    QAgnSUpdISSUNO: TStringField;
    QAgnSUpdISSUDT: TDateField;
    QAgnSUpdLPAYDT: TDateField;
    QAgnSUpdTSALE: TStringField;
    QAgnSUpdMEMO1: TMemoField;
    QAgnSUpdUSERID: TStringField;
    QAgnSUpdINPDT: TDateTimeField;
    QAgnSUpdDELID: TStringField;
    QAgnSUpdDELDT: TDateTimeField;
    QAgnSUpdPOSTDT: TDateTimeField;
    QAgnSUpdFLCANCL: TStringField;
    QAgnSUpdAPPVNO: TStringField;
    QAgnSUpdPAYTYP: TStringField;
    QAgnSUpdADDRNO: TStringField;
    QAgnSUpdRECOMCOD: TStringField;
    QAgnSUpdACTICOD: TStringField;
    QAgnSaleUpdateStatus: TStringField;
    QArresvRLCODE: TStringField;
    QFinSaleNETDWN: TFloatField;
    QOptSalTUpdateStatus: TStringField;
    QAgnSaleTYPESAL: TStringField;
    QCshSaleTYPESAL: TStringField;
    QCshSalePOSTGL: TStringField;
    QFinSalePOSTGL: TStringField;
    QCshSaleLOGREG: TStringField;
    QFinSaleLOGREG: TStringField;
    QResvRESVNO: TStringField;
    QResvLOCAT: TStringField;
    QResvRESVDT: TDateField;
    QResvCUSCOD: TStringField;
    QResvGRPCOD: TStringField;
    QResvTYPE: TStringField;
    QResvBAAB: TStringField;
    QResvMODEL: TStringField;
    QResvCOLOR: TStringField;
    QResvCC: TFloatField;
    QResvSTAT: TStringField;
    QResvSALCOD: TStringField;
    QResvVATRT: TFloatField;
    QResvPRICE: TFloatField;
    QResvRESPAY: TFloatField;
    QResvBALANCE: TFloatField;
    QResvSMPAY: TFloatField;
    QResvSMCHQ: TFloatField;
    QResvRECVDUE: TDateField;
    QResvSTRNO: TStringField;
    QResvISSUNO: TStringField;
    QResvRECVDT: TDateField;
    QResvRECVCD: TStringField;
    QResvSDATE: TDateField;
    QResvTAXNO: TStringField;
    QResvTAXDT: TDateField;
    QResvREQNO: TStringField;
    QResvREQLOCAT: TStringField;
    QResvMEMO1: TMemoField;
    QResvPOSTDT: TDateField;
    QResvINPDT: TDateField;
    QResvUSERID: TStringField;
    QResvFLCANCLE: TStringField;
    QResvFLID: TStringField;
    QResvFLDT: TDateTimeField;
    QResvFLRESON: TStringField;
    QResvTRESVNO: TStringField;
    QResvRLCODE: TStringField;
    QResvADDRESDT: TDateField;
    QResvADDRESPAY: TFloatField;
    QResvOLDRESPAY: TFloatField;
    QArresvTSALE: TStringField;
    QArresvFINCOD: TStringField;
    QAgnSalePOSTGL: TStringField;
    QArresvOFFCODE: TStringField;
    QArresvCALLSTAT: TStringField;
    QArresvDATING: TDateField;
    QArresvDOCSTAT: TStringField;
    QArresvCRDTXNO: TStringField;
    QArresvCRDTXDT: TDateField;
    QArresvCRDAMT: TFloatField;
    QArresvTOTPRC: TFloatField;
    QArresvREFRESVNO: TStringField;
    procedure QArresvAfterPost(DataSet: TDataSet);
    procedure QArresvNewRecord(DataSet: TDataSet);
    procedure QArresvRESVDTValidate(Sender: TField);
    procedure QArresvAfterCancel(DataSet: TDataSet);
    procedure QArresvRESPAYValidate(Sender: TField);
    procedure QArresvBeforeDelete(DataSet: TDataSet);
    procedure QArresvBeforePost(DataSet: TDataSet);
    procedure QArresvCalcFields(DataSet: TDataSet);
    procedure QArresvRESVNOValidate(Sender: TField);
    procedure QTaxtranNewRecord(DataSet: TDataSet);
    procedure QTaxtranBeforePost(DataSet: TDataSet);
    procedure QTaxtranCalcFields(DataSet: TDataSet);
    procedure QResvUpdAfterPost(DataSet: TDataSet);
    procedure QCshSaleAfterCancel(DataSet: TDataSet);
    procedure QCshSaleNewRecord(DataSet: TDataSet);
    procedure QCshSaleBeforePost(DataSet: TDataSet);
    procedure QCshSaleAfterPost(DataSet: TDataSet);
    procedure QCshSaleBeforeDelete(DataSet: TDataSet);
    procedure QCshSaleLOCATValidate(Sender: TField);
    procedure QCshSaleCalcFields(DataSet: TDataSet);
    procedure QCshSaleSDATEValidate(Sender: TField);
    procedure QCshSaleRESVNOValidate(Sender: TField);
    procedure QCshSaleCUSCODValidate(Sender: TField);
    procedure QCshSaleSTRNOValidate(Sender: TField);
    procedure QCshSaleINCLVATChange(Sender: TField);
    procedure QCshSaleKEYINValidate(Sender: TField);
    procedure QCshSaleCREDTMValidate(Sender: TField);
    procedure QCshSaleSALCODValidate(Sender: TField);
    procedure QCshSaleCONTNOValidate(Sender: TField);
    procedure QCshTaxTAXNOValidate(Sender: TField);
    procedure QCshTaxBeforePost(DataSet: TDataSet);
    procedure QCshTaxCalcFields(DataSet: TDataSet);
    procedure QCshTaxNewRecord(DataSet: TDataSet);
    procedure QCshSUpdAfterPost(DataSet: TDataSet);
    procedure QCshOptCalcFields(DataSet: TDataSet);
    procedure QCshOptNewRecord(DataSet: TDataSet);
    procedure QCshOptBeforePost(DataSet: TDataSet);
    procedure QCshOptAfterPost(DataSet: TDataSet);
    procedure QHirSaleRESVNOValidate(Sender: TField);
    procedure QFinSaleLOCATValidate(Sender: TField);
    procedure QFinSaleCONTNOValidate(Sender: TField);
    procedure QFinSaleRESVNOValidate(Sender: TField);
    procedure QFinSaleCUSCODValidate(Sender: TField);
    procedure QFinSaleSTRNOValidate(Sender: TField);
    procedure QFinSaleINCLVATChange(Sender: TField);
    procedure QFinSaleSDATEValidate(Sender: TField);
    procedure QFinSaleNewRecord(DataSet: TDataSet);
    procedure QFinSaleCalcFields(DataSet: TDataSet);
    procedure QFinSaleKEYINValidate(Sender: TField);
    procedure QFinSaleKEYINDWNValidate(Sender: TField);
    procedure QFinSaleSALCODValidate(Sender: TField);
    procedure QFinSaleFINCODValidate(Sender: TField);
    procedure QFinSaleBeforePost(DataSet: TDataSet);
    procedure QFinSaleAfterPost(DataSet: TDataSet);
    procedure QFinSaleAfterCancel(DataSet: TDataSet);
    procedure QFinSaleBeforeDelete(DataSet: TDataSet);
    procedure QFinSUpdAfterPost(DataSet: TDataSet);
    procedure QFinOptNewRecord(DataSet: TDataSet);
    procedure QFinOptCalcFields(DataSet: TDataSet);
    procedure QFinOptBeforePost(DataSet: TDataSet);
    procedure QFinOptAfterPost(DataSet: TDataSet);
    procedure QDiscTaxNewRecord(DataSet: TDataSet);
    procedure QDiscTaxCalcFields(DataSet: TDataSet);
    procedure QDiscTaxBeforePost(DataSet: TDataSet);
    procedure QDiscTaxTAXNOValidate(Sender: TField);
    procedure QDiscTaxAfterPost(DataSet: TDataSet);
    procedure QAgnSaleCalcFields(DataSet: TDataSet);
    procedure QOptSaleCONTNOValidate(Sender: TField);
    procedure QOptSaleLOCATValidate(Sender: TField);
    procedure QOptSaleSDATEValidate(Sender: TField);
    procedure QOptSaleCREDTMValidate(Sender: TField);
    procedure QOptSaleSALCODValidate(Sender: TField);
    procedure QOptSaleNewRecord(DataSet: TDataSet);
    procedure QOptSaleCalcFields(DataSet: TDataSet);
    procedure QOptSaleBeforePost(DataSet: TDataSet);
    procedure QOptSaleAfterPost(DataSet: TDataSet);
    procedure QOptSalTNewRecord(DataSet: TDataSet);
    procedure QOptSaleAfterCancel(DataSet: TDataSet);
    procedure QOptSaleBeforeDelete(DataSet: TDataSet);
    procedure QOptSalTBeforePost(DataSet: TDataSet);
    procedure QOptSUpdAfterPost(DataSet: TDataSet);
    procedure QArCloseNewRecord(DataSet: TDataSet);
    procedure QArCloseCalcFields(DataSet: TDataSet);
    procedure QArCloseBeforePost(DataSet: TDataSet);
    procedure QArCloseAfterPost(DataSet: TDataSet);
    procedure QArCloseAfterCancel(DataSet: TDataSet);
    procedure QArresvCUSCODValidate(Sender: TField);
    procedure QArresvLOCATValidate(Sender: TField);
    procedure QArresvRECVCDValidate(Sender: TField);
    procedure QArresvSALCODValidate(Sender: TField);
    procedure QArresvTYPEValidate(Sender: TField);
    procedure QArresvMODELValidate(Sender: TField);
    procedure QArresvBAABValidate(Sender: TField);
    procedure QArresvCOLORValidate(Sender: TField);
    procedure QArresvGRPCODValidate(Sender: TField);
    procedure QArresvSTATValidate(Sender: TField);
    procedure QHirGothAfterOpen(DataSet: TDataSet);
    procedure QHirGothBeforeClose(DataSet: TDataSet);
    procedure QOptSalTAfterPost(DataSet: TDataSet);
    procedure QArresvSTRNOValidate(Sender: TField);
    procedure QTaxtranTAXNOValidate(Sender: TField);
    procedure QFinSaleSTDPRCValidate(Sender: TField);
    procedure QOptSaleCUSCODValidate(Sender: TField);
    procedure QFinSaleKEYIN_UPAYValidate(Sender: TField);
    procedure QFinSaleTOT_UPAYValidate(Sender: TField);
    procedure QFinSaleDSCPRCValidate(Sender: TField);
    procedure QAgnSaleAfterCancel(DataSet: TDataSet);
    procedure QAgnSaleAfterPost(DataSet: TDataSet);
    procedure QAgnSaleNewRecord(DataSet: TDataSet);
    procedure QAgnSaleBeforePost(DataSet: TDataSet);
    procedure QAgnSaleSDATEValidate(Sender: TField);
    procedure QAgnSaleBeforeDelete(DataSet: TDataSet);
    procedure QAgnSalTAfterPost(DataSet: TDataSet);
    procedure QAgnSalTBeforePost(DataSet: TDataSet);
    procedure QAgnSalTNewRecord(DataSet: TDataSet);
    procedure QAgnSUpdAfterPost(DataSet: TDataSet);
    procedure QAgnSalTSTRNOValidate(Sender: TField);
    procedure QAgnSaleSALCODValidate(Sender: TField);
    procedure QAgnSaleLOCATValidate(Sender: TField);
    procedure QAgnSaleCUSCODValidate(Sender: TField);
    procedure QAgnSaleCONTNOValidate(Sender: TField);
    procedure QAgnSaleCREDTMValidate(Sender: TField);
    procedure QAgnSalTKEYINChange(Sender: TField);
    procedure QArresvRLCODEValidate(Sender: TField);
    procedure QCshOptOPTCODEChange(Sender: TField);
    procedure QFinOptOPTCODEChange(Sender: TField);
    procedure QOptSalTOPTCODEChange(Sender: TField);
    procedure QOptSalTQTYChange(Sender: TField);
    procedure QCshOptQTYChange(Sender: TField);
    procedure QFinOptQTYChange(Sender: TField);
    procedure QAgnSalTVATRTValidate(Sender: TField);
    procedure QFinSUpdTAXNOValidate(Sender: TField);
    procedure QCshSUpdTAXNOValidate(Sender: TField);
    procedure QAgnSUpdTAXNOValidate(Sender: TField);
    procedure QArresvFINCODValidate(Sender: TField);
    procedure QArresvOFFCODEValidate(Sender: TField);
    procedure QFinOptUPRICEValidate(Sender: TField);
    procedure QCshOptUPRICEValidate(Sender: TField);
    procedure QArresvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QTaxtranUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QCshSaleUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QCshTaxUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QFinSaleUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QDiscTaxUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QAgnSaleUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QOptSaleUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QArCloseUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }

  public
    { Public declarations }
    XRunResv, XRunCont, Xruntax, Xrunapp, Xcontno: string;
    Ldt: Tdatetime;
    IRR: Double;
    YLocat, XRunCus: string;
  end;

var
  Dm_Sal: TDm_Sal;
  Duplicate, Duplicate2: Boolean;

implementation

uses
  Dmsec, Dm1, Functn01, Ucshsal, UArresv, USoftFirm, FinSal10, OptSal10,
  AgnSal10;

{$R *.DFM}

procedure TDm_Sal.QArresvAfterPost(DataSet: TDataSet);
var
  Sresv: string;
begin
  Sresv := QArresv.FieldByName('Resvno').Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QArresv.Active then
      if (QArresv.ApplyUpdates = 0) then
        QArresv.CommitUpdates
      else
        raise Exception.Create(QArresv.RowError.Message);
    if QInvResv.Active then
      if (QInvResv.ApplyUpdates = 0) then
        QInvResv.CommitUpdates
      else
        raise Exception.Create(QInvResv.RowError.Message);
    if QTaxtran.Active then
      if (QTaxtran.ApplyUpdates = 0) then
        QTaxtran.CommitUpdates
      else
        raise Exception.Create(QTaxtran.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QArresv.Edit;
    raise;
  end;
end;

procedure TDm_Sal.QArresvNewRecord(DataSet: TDataSet);
begin
  QCondpay.Open;
  ClearAsFloat(QArresv);
  //XRunResv:='Y';
  QArresv.Fieldbyname('lOCAT').Asstring := SFMain.XLocat;
  QArresv.Fieldbyname('Resvdt').Asdatetime := SFMain.CR_DATE;
  QArresv.Fieldbyname('INPDT').Asdatetime := Now;
  QArresv.Fieldbyname('Userid').Asstring := SFMain.Xuser_id;
  QArresvFLCANCLE.AsString := '';

  QArresv.Fieldbyname('STAT').Asstring := 'N';
  QArresv.Fieldbyname('Smpay').AsFloat := 0;
  QArresv.Fieldbyname('Smchq').AsFloat := 0;

  QVatmast.First;
  while not QVatmast.eof do
  begin
    if (QArresv.Fieldbyname('Resvdt').Asdatetime >= QVatmast.FieldByName('Frmdate').Asdatetime) and
      (QArresv.Fieldbyname('Resvdt').Asdatetime <= QVatmast.FieldByName('Todate').Asdatetime) then
      Break;
    QVatmast.Next;
  end;
 // QArresv.Fieldbyname('Vatrt').Asfloat := QVatmast.FieldByname('VATRT').Asfloat
  if (QCondpay.Fieldbyname('RESVTX').Asstring = 'Y') and
    (not QVatmast.eof) then
    QArresv.Fieldbyname('Vatrt').Asfloat := QVatmast.FieldByname('VATRT').Asfloat
  else
    QArresv.Fieldbyname('Vatrt').Asfloat := 0;
end;

procedure TDm_Sal.QArresvRESVDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  with QVatmast do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM Vatmast ' +
      'WHERE :Var between Frmdate and Todate ');
    Params[0].asdate := QArresv.Fieldbyname('Resvdt').Asdatetime;
    open;
  end;
  if QCondpay.Fieldbyname('RESVTX').Asstring = 'Y' then
    QArresv.Fieldbyname('Vatrt').Asfloat := QVatmast.FieldByname('VATRT').Asfloat
  else
    QArresv.Fieldbyname('Vatrt').Asfloat := 0;

  if QArresvUpdateStatus.Value = 'Inserted' then
  begin
    LV := QArresv.FieldByName('Locat').Asstring;
    DV := QArresv.FieldByName('RESVDT').Asdatetime;
    HF := 'H_RESV';
    LF := 'L_RESV';
    if QArresvRESVDT.AsDateTime > Date then
      SFMain.RaiseException('ระบุวันที่ก่อนวันที่ปัจจุบัน...!');
    if XRunresv = 'Y' then
    begin
      SQLTXT := 'SELECT MAX(RESVNO) AS MAXNO FROM ARRESV WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(RESVNO,2,2)=:EDIT2 AND SUBSTR(RESVNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(RESVNO,7,2)=:EDIT4';
      QArresvRESVNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV);
    end;
  end;
end;

procedure TDm_Sal.QArresvAfterCancel(DataSet: TDataSet);
begin
  if QArresv.Active then
    QArresv.cancelUpdates;
  if QInvResv.Active then
    QInvResv.CancelUpdates;
  if QTaxtran.Active then
    QTaxtran.CancelUpdates;
end;

procedure TDm_Sal.QArresvRESPAYValidate(Sender: TField);
begin
  Dm_sal.QArresv.Fieldbyname('BALANCE').AsFloat := Dm_sal.QArresv.Fieldbyname('Price').AsFloat -
    Dm_sal.QArresv.Fieldbyname('Respay').AsFloat;
end;

procedure TDm_Sal.QArresvBeforeDelete(DataSet: TDataSet);
begin
  if QArresvSmpay.Asfloat + QArresvSmchq.Asfloat > 0 then
    SFMain.RaiseException('มีการรับชำระเงินแล้ว');
  with QinvResv do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM INVTRAN WHERE STRNO = :S ');
    params[0].asstring := QArresvStrno.Asstring;
    open;
  end;
  if not (QinvResv.Eof and QinvResv.Bof) then
  begin
    if QinvResv.Fieldbyname('Flag').asstring = 'C' then
      SFMain.RaiseException('รถคันนี้ถูกขายไปแล้ว');

    QinvResv.Edit;
    QinvResv.Fieldbyname('Curstat').asstring := '';
    QinvResv.Fieldbyname('Resvdt').asstring := '';
    QinvResv.Fieldbyname('Resvno').asstring := '';
    QinvResv.Post;
  end;

  with QTaxtran do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM TAXTRAN WHERE LOCAT = :LOCAT AND TAXNO = :TAXNO ');
    params[0].asstring := QArresvLocat.Asstring;
    params[1].asstring := QArresvTaxno.Asstring;
    open;
  end;

  if not (QTaxtran.Eof and QTaxtran.Bof) then
  begin
    QTaxtran.Edit;
    QTaxtranFlag.Asstring := 'C';
    QTaxtranCanDt.AsdateTime := Now;
    QTaxtranFlcancl.Asstring := SFMain.XUser_id;
    QTaxtranSNAM.AsString := '';
    QTaxtranNAME1.AsString := '';
    QTaxtranNAME2.AsString := '';
    QTaxtranVATRT.AsFloat := 0;
    QTaxtranNETAMT.AsFloat := 0;
    QTaxtranVATAMT.AsFloat := 0;
    QTaxtranTOTAMT.AsFloat := 0;
    QTaxtran.Post;
  end;
end;

procedure TDm_Sal.QArresvBeforePost(DataSet: TDataSet);
begin
  ClearAsString(QArresv);

  if (QArresvUpdateStatus.Value = 'Inserted') then
  begin
    QArresvRESVDTValidate(QArresvRESVDT);
  end;
  FArresv.S := Dm_sal.QArresv.FieldByName('Resvno').Asstring;
  FArresv.XTaxno := Dm_sal.QArresv.FieldByName('Taxno').Asstring;

  //--Update Strno In Taxtran---
  with Dm_sal.QTaxtran do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM TAXTRAN WHERE LOCAT = :LOCAT AND TAXNO = :TAXNO ');
    params[0].asstring := Dm_sal.QArresvLocat.Asstring;
    params[1].asstring := Dm_sal.QArresvTaxno.Asstring;
    open;
  end;
  if not (Dm_sal.QTaxtran.Eof and Dm_sal.QTaxtran.Bof) then
  begin
    Dm_sal.QTaxtran.Edit;
    Dm_sal.QTaxtranSTRNO.Asstring := Dm_sal.QArresvsTRNO.Asstring;
    Dm_sal.QTaxtran.Post;
  end
  else
    Dm_sal.QTaxtran.Close;
  //
  if (QArresv.state in [Dsinsert, DsEdit]) and
    (QArresv.FieldByName('Strno').Asstring <> '') then
  begin
    with Dm_sal.QInvResv do
    begin
      close;
      sql.clear;
      sql.add('SELECT RESVDT,RESVNO,STRNO,TYPE,MODEL,BAAB,COLOR,CC,STAT, ' +
        'FLAG,CRLOCAT,CURSTAT FROM INVTRAN ' +
        'WHERE STRNO = :XSTRNO');
      Params[0].asstring := QArresvSTRNO.Asstring;
      OPEN;
      if not (Dm_sal.QInvResv.eof and Dm_sal.QInvResv.bof) then
      begin
           // If Dm_sal.QInvResv.FieldByName('CURSTAT').Asstring='R' Then
          //  SFMain.RaiseException('รถคันนี้ถูกจองแล้ว');
        if Dm_sal.QInvResv.FieldByName('CRLOCAT').Asstring <>
          Dm_sal.QArresv.FieldByName('LOCAT').Asstring then
          SFMain.RaiseException('ระบุรถที่จองต่างสาขาไม่ได้');
        if Dm_sal.QInvResv.FieldByName('FLAG').Asstring = 'C' then
          SFMain.RaiseException('รถคันนี้ถูกขายไปแล้ว');

        if (Dm_sal.QArresvType.Asstring = Dm_sal.QInvResv.FieldByName('TYPE').Asstring) and
          (Dm_sal.QArresvModel.Asstring = Dm_sal.QInvResv.FieldByName('Model').Asstring) and
          (Dm_sal.QArresvBaab.Asstring = Dm_sal.QInvResv.FieldByName('Baab').Asstring) and
          (Dm_sal.QArresvColor.Asstring = Dm_sal.QInvResv.FieldByName('Color').Asstring) and
          (Dm_sal.QArresvStat.Asstring = Dm_sal.QInvResv.FieldByName('Stat').Asstring) then
        begin
          Dm_sal.QInvResv.Edit;
          Dm_sal.QInvResv.Fieldbyname('Curstat').asstring := 'R';
          Dm_sal.QInvResv.Fieldbyname('Resvdt').asDatetime := Dm_sal.QArresvResvdt.Asdatetime;
          Dm_sal.QInvResv.Fieldbyname('ResvNo').asstring := Dm_sal.QArresvResvNo.Asstring;
          Dm_sal.QInvResv.Post;

          if Dm_sal.QArresv.State = DsBrowse then
            Dm_sal.QArresv.Edit;
          Dm_sal.QArresvStrno.Asstring := Dm_sal.QInvResv.Fieldbyname('STRNO').Asstring;
        end
        else
        begin
          Messagebeep(0);
          SFMain.RaiseException('ยี่ห้อ รุ่น สถานะไม่ตรงกับที่จองไว้');
        end;
      end;
    end;
  end;
end;

procedure TDm_Sal.QArresvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
            'Inserted', 'Deleted');
begin
  if QArresv.CachedUpdates then
    QArresvUpdateStatus.Value := UpdateStatusStr[QArresv.UpdateStatus];
end;

procedure TDm_Sal.QArresvRESVNOValidate(Sender: TField);
var
  HF, LF, LV: string;
begin
  if QArresvUpdateStatus.Value = 'Inserted' then
  begin
    LV := QArresv.FieldByName('Locat').Asstring;
    HF := 'H_RESV';
    LF := 'L_RESV';

    if XRunresv = 'N' then
      if Copy(QArresvRESVNO.Asstring, 1, 3) = Dm01.ChkDupRun(HF, LF, LV) then
        SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');
  end;
end;

procedure TDm_Sal.QTaxtranNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QTaxtran);
  Duplicate2 := False;
end;

procedure TDm_Sal.QTaxtranBeforePost(DataSet: TDataSet);
begin
  if (QTaxtranUpdateStatus.Value = 'Inserted') then
    if Duplicate2 then
      QTaxtranTaxNoValidate(QTaxtranTaxNo);
end;

procedure TDm_Sal.QTaxtranCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
        'Inserted', 'Deleted');
begin
  if QTaxtran.CachedUpdates then
    QTaxtranUpdateStatus.Value := UpdateStatusStr[QTaxtran.UpdateStatus];
end;

procedure TDm_Sal.QResvUpdAfterPost(DataSet: TDataSet);
begin
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QResvUpd.Active then
      if (QResvUpd.ApplyUpdates = 0) then
        QResvUpd.CommitUpdates
      else
        raise Exception.Create(QResvUpd.RowError.Message);
    if QTaxtran.Active then
      if (QTaxtran.ApplyUpdates = 0) then
        QTaxtran.CommitUpdates
      else
        raise Exception.Create(QTaxtran.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QResvUpd.Edit;
    raise;
  end;
end;

procedure TDm_Sal.QCshSaleAfterCancel(DataSet: TDataSet);
begin
  if QCshSale.Active then
    QCshSale.cancelUpdates;
  if QInvTran.Active then
    QInvTran.CancelUpdates;
  if QCshTax.Active then
    QCshTax.CancelUpdates;
  if QResv.Active then
    QResv.CancelUpdates;
  if QCshOpt.Active then
    QCshOpt.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDm_Sal.QCshSaleNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QCshSale);
  Duplicate := False;
  QCshSale.Fieldbyname('LOCAT').Asstring := SFMain.Xlocat;
  QCshSale.Fieldbyname('SDATE').Asdatetime := SFMain.CR_DATE;
  QCshSale.Fieldbyname('ADDRNO').Asstring := '1';
  QCshSale.Fieldbyname('INCLVAT').Asstring := 'Y';
  QCshSale.Fieldbyname('Tsale').Asstring := 'C' {C = ขายสดหรือเชื่อ};
  QCshSale.FieldByName('TYPESAL').AsString := 'A'; //ประเภทการขาย  ลูกค้าขายสด/ หน่วยงานราชการ
  QCshSale.FieldByName('LOGREG').AsString := '1';
  QCshSale.Fieldbyname('Vatrt').Asfloat := QCondpay.FieldByname('VAT').Asfloat;
  QCshSaleUserId.Asstring := SFMain.Xuser_Id;
  QCshSaleInpDt.AsDatetime := Now;
end;

procedure TDm_Sal.QCshSaleBeforePost(DataSet: TDataSet);
var
  S1, S2: string;
begin
  ClearAsString(QCshSale);
  QCshSale.FieldByName('KEYIN').AsFloat := QCshSale.FieldByName('KEYIN').AsFloat; //+
                                        //    QCshSale.FieldByName('OPTPTOT').AsFloat;
  if QCshSaleCuscod.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
  //Check พนักงานขาย
  if QCshSaleSalcod.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสพนักงานขาย');
  //ตรวจสอบยอดเงินจองกับราคาขาย
  if QCshSaleTotpres.Asfloat > QCshSaleTotprc.Asfloat then
    SFMain.RaiseException('ยอดจองมากกว่าราคาขาย');
  if QCshSaleContno.Asstring = '' then
  begin
    MessageBeep(0);
    SFMain.RaiseException('ไม่มีข้อมูลที่จะบันทึก ยกเลิกการจัดเก็บ');
  end;

  if QCshSaleUpdateStatus.Value = 'Inserted' then
  begin
    QCshSaleSDateValidate(QCshSaleSDate);

    FCshSal.S := Dm_sal.QCshSale.FieldByName('Contno').Asstring;
    FCshSal.Svtax := Dm_sal.QCshSale.FieldByName('Taxno').Asstring;

    QCshOpt.First;
    while not QCshOpt.Eof do
    begin
      QCshOpt.Edit;
      QCshOptCONTNO.Asstring := QCshSaleCONTNO.Asstring;
      QCshOptSdate.AsDatetime := QCshSaleSdate.AsDatetime;
      QCshOpt.Next;
    end;

    if not (QCshSaleRESVNO.Asstring = '') then
    begin
      with QResv do
      begin
        if not (QResv.bof and QResv.eof) then
        begin
          S1 := FloattostrF(QResv.FieldByName('Smpay').Asfloat + QResv.FieldByName('SmChq').Asfloat, ffFixed, 15, 2);
          S2 := FloattostrF(QResv.FieldByName('Respay').Asfloat, ffFixed, 15, 2);
          if (StrToFloat(S1) < StrToFloat(S2)) then
            SFMain.RaiseException('ชำระเงินจองยังไม่ครบ');
          QCshSaleSmpay.Asfloat := QResv.FieldByName('Smpay').Asfloat + QResv.FieldByName('Smchq').Asfloat;
        end;
      end;
    end;
    if not (QCshSaleRESVNO.Asstring = '') then
    begin
      QResv.Edit;
      QResv.Fieldbyname('Issuno').asstring := QCshSaleIssuno.Asstring;
      QResv.Fieldbyname('Recvdt').asdatetime := QCshSaleIssudt.asdatetime;
      QResv.Fieldbyname('Sdate').asdatetime := QCshSaleSdate.asdatetime;
      QResv.Post;
    end;
  end;
end;

procedure TDm_Sal.QCshSaleAfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QCshSale.FieldByName('Contno').Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QCshSale.Active then
      if (QCshSale.ApplyUpdates = 0) then
        QCshSale.CommitUpdates
      else
        raise Exception.Create(QCshSale.RowError.Message);
    if QInvTran.Active then
      if (QInvTran.ApplyUpdates = 0) then
        QInvTran.CommitUpdates
      else
        raise Exception.Create(QInvTran.RowError.Message);
    if QResv.Active then
      if (QResv.ApplyUpdates = 0) then
        QResv.CommitUpdates
      else
        raise Exception.Create(QResv.RowError.Message);
    if QCshOpt.Active then
      if (QCshOpt.ApplyUpdates = 0) then
        QCshOpt.CommitUpdates
      else
        raise Exception.Create(QCshOpt.RowError.Message);
    if QCshTax.Active then
      if (QCshTax.ApplyUpdates = 0) then
        QCshTax.CommitUpdates
      else
        raise Exception.Create(QCshTax.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QCshSale.Edit;
    raise;
  end;
end;

procedure TDm_Sal.QCshSaleBeforeDelete(DataSet: TDataSet);
begin
  if (QCshSaleSmpay.Asfloat + QCshSaleSmchq.Asfloat) >
    (QCshSaleNPAYRES.Asfloat + QCshSaleVATPRES.Asfloat) then
    SFMain.RaiseException('มีการรับชำระเงินแล้ว');

  if QCshSaleCrdAmt.Asfloat > 0 then
    SFMain.RaiseException('มีการออกใบลดหนี้แล้ว');

   {ทำขั้นตอนยกเลิกรายการต่างๆ Arcred invtran taxtran areesv}
{   WITH Dm_Sal.QInvtran DO
   begin
       close;
       sql.clear;
       sql.add('SELECT STRNO,ENGNO,SDATE,FLAG,CONTNO,TSALE,PRICE,'+
               'TYPE,MODEL,BAAB,COLOR,CC,STAT FROM INVTRAN '+
               'WHERE STRNO=:XSTRNO');
       Params[0].asstring := QCshSaleStrno.Asstring;
       open;
   end;

   if NOT (QInvtran.bof and QInvtran.eof) then
   begin
      QInvtran.Edit;
      QInvtran.FieldByname('Sdate').Asstring   := '';
      QInvtran.FieldByname('TSale').Asstring   := '';
      QInvtran.FieldByname('Flag').Asstring    := 'D';
      QInvtran.FieldByname('Contno').Asstring  := '';
      QInvtran.FieldByname('Price').Asfloat    := 0;
      QInvtran.Post;
   END ;  }
   //delete อุปกรณ์เสริม
  with QCshOpt do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM ARINOPT ' +
      'WHERE TSALE =''C'' AND CONTNO=:XCONTNO ');
    Params[0].asstring := QCshSaleCONTNO.Asstring;
    open;
    First;
  end;
  while not (QCshOpt.Eof and QCshOpt.bof) do
    QCshOpt.Delete;

   {Mark Calcel TaxTran}
  with QCshTax do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM TAXTRAN ' +
      'WHERE LOCAT=:XLOCAT AND TAXNO=:XTAXNO');
    Params[0].asstring := QCshSale.FieldByname('LOCAT').Asstring;
    Params[1].asstring := QCshSale.FieldByName('TAXNO').Asstring;
    open;
    if not (QCshTax.bof and QCshTax.eof) then
    begin
      QCshTax.Edit;
      QCshTax.FieldByName('Flag').Asstring := 'C';
      QCshTax.FieldByName('CanDt').AsdateTime := Now;
      QCshTax.FieldByName('Flcancl').Asstring := SFMain.XUser_id;
       {QCshTaxSNAM.AsString := '';
       QCshTaxNAME1.AsString := '';
       QCshTaxNAME2.AsString := '';
       QCshTaxVATRT.AsFloat :=0;
       QCshTaxNETAMT.AsFloat :=0;
       QCshTaxVATAMT.AsFloat :=0;
       QCshTaxTOTAMT.AsFloat :=0;}
      QCshTax.Post;
    end;
  end;
  {การจองรถ}

  with QResv do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM ARRESV ' +
      'WHERE RESVNO=:XRESVNO');
    Params[0].asstring := QCshSale.FieldByname('RESVNO').Asstring;
    open;
    if not (QResv.eof and QResv.bof) then
    begin
      Edit;
      Fieldbyname('Issuno').asstring := '';
      Fieldbyname('Recvdt').asstring := '';
      Fieldbyname('Sdate').asstring := '';
      Post;
    end;
  end;
end;

procedure TDm_Sal.QCshSaleLOCATValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT LOCATCD,FLSALE FROM INVLOCAT WHERE LOCATCD = :VAR');
    Params[0].asstring := QCshSaleLOCAT.Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;

  if Query1.FieldByName('FLSale').Asstring <> 'T' then
    SFMain.RaiseException('สถานที่เก็บนี้ไม่อนุญาตให้มีการขาย');

  if QCshSaleSdate.Asstring <> '' then
    QCshSaleSDATEValidate(Sender);
end;

procedure TDm_Sal.QCshSaleCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QCshSale.CachedUpdates then
    QCshSaleUpdateStatus.Value := UpdateStatusStr[QCshSale.UpdateStatus];
end;

procedure TDm_Sal.QCshSaleSDATEValidate(Sender: TField);
var
  HF, LF, HP, LP, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if not QCondPay.Active then
    QCondPay.Open;
  QCshSale.Fieldbyname('Vatrt').Asfloat := QCondPay.FieldByname('VAT').Asfloat;
  if QCshSaleUpdateStatus.Value = 'Inserted' then
  begin
    LV := QCshSale.FieldByName('Locat').Asstring;
    DV := QCshSale.FieldByName('Sdate').Asdatetime;
    HF := 'H_CASHNO';
    LF := 'L_CASHNO';
    if QCshSaleSDATE.AsDateTime > Date then
      SFMain.RaiseException('ระบุวันที่ก่อนวันปัจุบัน...!');

    if XRunCont = 'Y' then
    begin
      SQLTXT := 'SELECT MAX(CONTNO) AS MAXNO FROM ARCRED WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(CONTNO,2,2)=:EDIT2 AND SUBSTR(CONTNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(CONTNO,7,2)=:EDIT4';
      QCshSaleCONTNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV);
    end;
    QCshSaleIssudt.Asdatetime := QCshSaleSdate.AsDatetime;
    QCshSaleCredtm.AsFloat := 0;
    QCshSaleDuedt.Asdatetime := QCshSaleSdate.AsDatetime;
  end;
end;

procedure TDm_Sal.QCshSaleRESVNOValidate(Sender: TField);
var
  S: string;
  D, D1, D2: Double;
begin
  S := QCshSaleResvno.Asstring;
  if S <> '' then
  begin
    with QRESV do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM ARRESV WHERE RESVNO=:XRESVNO AND LOCAT=:1');
      Params[0].asstring := QCshSaleResvno.Asstring;
      Params[1].asstring := QCshSaleLocat.Asstring;
      open;
      if (QRESV.eof and QRESV.bof) then
        SFMain.RaiseException('ไม่พบเลขที่ใบจองนี้หรือสาขาไม่ตรงกัน...!')
      else           {Check หมายเลขถัง}
  //         If QResv.FieldByname('Strno').Asstring='' Then
  //            SFMain.RaiseException('ใบจองนี้ยังไม่ระบุเลขตัวถัง ');
           {Check ใบจองถูกตัดขาย}
if QResv.FieldByname('Sdate').Asstring <> '' then
        SFMain.RaiseException('ใบจองนี้รับรถไปแล้ว ');
           {Check วันขายกับวันจอง}
      if QResv.FieldByname('Resvdt').Asdatetime > QCshSaleSdate.Asdatetime then
        SFMain.RaiseException('วันขายต้องมากกว่าวันจอง');
           {Check การชำระเงินจอง}
      if QCshSaleResvno.Asstring <> '' then
      begin
        D1 := FRound(QResv.FieldByName('Smpay').Asfloat + QResv.FieldByName('SmChq').Asfloat, 2);
        D2 := FRound(QResv.FieldByName('Respay').Asfloat, 2);
        if (D1 < D2) then
          SFMain.RaiseException('ชำระเงินจองยังไม่ครบ')
        else if FRound(QResv.FieldByName('Smpay').Asfloat, 2) <> FRound(QResv.FieldByName('Respay').Asfloat, 2) then
          SFMain.RaiseException('เช็คเงินจองยังไม่ผ่าน');
      end;

           {รับค่าเงินจองและรหัสผู้จอง}
      D := FRound(QResv.FieldByname('Respay').Asfloat * QResv.FieldByName('Vatrt').Asfloat / (100 + QResv.FieldByName('Vatrt').Asfloat), 2);
      QCshSaleVatpres.Asfloat := D;
      QCshSaleNpayres.Asfloat := QResv.FieldByname('Respay').Asfloat - QCshSaleVatpres.Asfloat;
      QCshSaleTotPres.Asfloat := QResv.FieldByname('Respay').Asfloat;
      QCshSaleCuscod.Asstring := QResv.FieldByname('Cuscod').Asstring;
           //
      QCshSaleSmpay.Asfloat := QResv.FieldByname('Smpay').Asfloat;
      QCshSaleSmChq.Asfloat := 0;

      if QResv.FieldByname('Strno').Asstring <> '' then
        QCshSaleStrno.Asstring := QResv.FieldByname('Strno').Asstring;
    end;
  end;
end;

procedure TDm_Sal.QCshSaleCUSCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT CUSCOD FROM CUSTMAST WHERE CUSCOD = :VAR');
    Params[0].asstring := QCshSaleCUSCOD.Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสลูกค้า');
  end;

  if QCshSale.FieldByName('Resvno').Asstring <> '' then
    if QResv.FieldByName('Cuscod').Asstring <> QCshSaleCuscod.Asstring then
      MessageDlg('ผู้จองและผู้ซื้อรถไม่ใช่คนเดียวกัน ', mtconfirmation, [mbok], 0);
end;

procedure TDm_Sal.QCshSaleSTRNOValidate(Sender: TField);
begin
  with QInvtran do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM INVTRAN ' +
      'WHERE STRNO=:XSTRNO');
    Params[0].asstring := QCshSaleStrno.Asstring;
    open;
    if (QInvtran.eof and QInvtran.bof) then
      SFMain.RaiseException('ไม่พบรถหมายเลขถังนี้')
    else
    begin
      if QInvtran.Fieldbyname('CRLocat').Asstring <> QCshSaleLocat.Asstring then
        SFMain.RaiseException('สถานที่เปิดขายกับสถานที่เก็บรถไม่ใช่ที่เดียวกัน');
      {Check เลขถังใบจอง=การขาย}
//      if (QCshSaleResvno.Asstring<>'') Then
//      If (QCshSaleStrno.Asstring<>QResv.FieldByName('Strno').Asstring) Then
//         SFMain.RaiseException('เป็นรถคนละคันกับใเลขที่บจอง');
      {Check รถยึด}
      if QInvtran.Fieldbyname('CurStat').Asstring = 'Y' then
        SFMain.RaiseException('รถหมายเลขถังนี้เป็นรถยึด ');
      {Check ต้นทุน}
   //   If QInvtran.Fieldbyname('Netcost').asfloat =0 Then
   //      SFMain.RaiseException('ยังไม่บันทึกราคาต้นทุน '#13#10+'กรุณาไปบันทึกในระบบเจ้าหนี้');
      {Check การจอง}
      if QInvtran.Fieldbyname('Curstat').Asstring = 'R' then
        if QInvtran.Fieldbyname('Resvno').Asstring <> QCshSaleResvno.Asstring then
          SFMain.RaiseException('รถหมายเลขถังนี้ถูกจองแล้ว ');
      {Check วันรับกับวันขาย}
     // If QInvtran.Fieldbyname('RECVDT').AsDatetime>QCshSaleSdate.AsDatetime Then
      //   SFMain.RaiseException('วันรับรถมากกว่าวันขาย');
      {Check สถานะขาย}
      if QInvtran.Fieldbyname('Flag').Asstring = 'C' then
        SFMain.RaiseException('รถหมายเลขถังนี้ถูกขายไปแล้ว '#13#13#10 + 'เลขสัญญา ' +
          QInvtran.Fieldbyname('Contno').Asstring)
      else
      begin
        QCshSaleNcarcst.asfloat := QInvtran.Fieldbyname('Netcost').asfloat +
          QInvtran.Fieldbyname('Naddcost').asfloat;
        QCshSaleVcarcst.asfloat := QInvtran.Fieldbyname('Crvat').asfloat +
          QInvtran.Fieldbyname('Vaddcost').asfloat;
        QCshSaleTcarcst.asfloat := QInvtran.Fieldbyname('TOTCOST').asfloat +
          QInvtran.Fieldbyname('Taddcost').asfloat;
        QCshSaleStdPrc.asfloat := QInvtran.Fieldbyname('Stdprc').asfloat;
        QCshSaleKeyin.AsFloat := QInvtran.Fieldbyname('Stdprc').asfloat;
      end;
    end;
  end;
end;

procedure TDm_Sal.QCshSaleUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Sal.QCshSaleINCLVATChange(Sender: TField);
var
  S: string;
  E: Extended;
begin
  if QCshSaleInclvat.Asstring = 'Y' then
  begin
    E := FRound(QCshSaleKeyin.Asfloat * QCshSaleVatrt.Asfloat / (100 + QCshSaleVatrt.Asfloat), 2);
    QCshSaleVatPrc.Asfloat := E;
    QCshSaleNprice.Asfloat := QCshSaleKeyin.Asfloat - E;
    QCshSaleTotPrc.Asfloat := QCshSaleVatPrc.Asfloat + QCshSaleNPrice.Asfloat;
  end
  else
  begin
    {S := FloatToStrF(QCshSaleKeyin.Asfloat*(QCshSaleVatrt.Asfloat)/100,ffFixed,15,2);
    E := StrToFloat(S);}
    E := FRound(QCshSaleKeyin.Asfloat * (QCshSaleVatrt.Asfloat) / 100, 2);
    QCshSaleVatPrc.Asfloat := E;
    QCshSaleNprice.Asfloat := QCshSaleKeyin.Asfloat;
    QCshSaleTotPrc.Asfloat := QCshSaleNPrice.Asfloat + QCshSaleVatPrc.Asfloat;
  end;
  QCshSaleTKang.Asfloat := QCshSaleTotPrc.Asfloat - QCshSaleTOTPRES.Asfloat;
  QCshSaleNKang.Asfloat := QCshSaleNPrice.Asfloat - QCshSaleNpayres.Asfloat;
  QCshSaleVKang.Asfloat := QCshSaleVatprc.Asfloat - QCshSaleVATPRES.Asfloat;
end;

procedure TDm_Sal.QCshSaleKEYINValidate(Sender: TField);
var
  S: string;
  E: Extended;
begin
  if QCshSaleInclvat.Asstring = 'Y' then
  begin
    E := FRound(QCshSaleKeyin.Asfloat * QCshSaleVatrt.Asfloat / (100 + QCshSaleVatrt.Asfloat), 2);
    QCshSaleNKeyin.Asfloat := QCshSaleKeyin.Asfloat - E;
    QCshSaleVKeyin.Asfloat := E;
    QCshSaleTKeyin.Asfloat := QCshSaleVKeyin.Asfloat + QCshSaleNKeyin.Asfloat;
    QCshSaleVatPrc.Asfloat := E;
    QCshSaleNprice.Asfloat := QCshSaleKeyin.Asfloat - E;
    QCshSaleTotPrc.Asfloat := QCshSaleVatPrc.Asfloat + QCshSaleNPrice.Asfloat;
  end
  else
  begin
    E := FRound(QCshSaleKeyin.Asfloat * (QCshSaleVatrt.Asfloat) / 100, 2);
    QCshSaleVKeyin.Asfloat := E;
    QCshSaleNKeyin.Asfloat := QCshSaleKeyin.Asfloat;
    QCshSaleTKeyin.Asfloat := QCshSaleNKeyin.Asfloat + QCshSaleVKeyin.Asfloat;
    QCshSaleVatPrc.Asfloat := E;
    QCshSaleNprice.Asfloat := QCshSaleKeyin.Asfloat;
    QCshSaleTotPrc.Asfloat := QCshSaleNPrice.Asfloat + QCshSaleVatPrc.Asfloat;
  end;
  QCshSaleTKang.Asfloat := QCshSaleTotPrc.Asfloat - QCshSaleTOTPRES.Asfloat;
  QCshSaleNKang.Asfloat := QCshSaleNPrice.Asfloat - QCshSaleNpayres.Asfloat;
  QCshSaleVKang.Asfloat := QCshSaleVatprc.Asfloat - QCshSaleVATPRES.Asfloat;
end;

procedure TDm_Sal.QCshSaleCREDTMValidate(Sender: TField);
begin
  QCshSaleDuedt.Asfloat := QCshSaleSdate.Asfloat + QCshSaleCredtm.Asfloat;
end;

procedure TDm_Sal.QCshSaleSALCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM OFFICER WHERE CODE=:XCODE');
    Params[0].asstring := QCshSaleSalcod.Asstring;
    open;
    if (Query1.eof and Query1.bof) then
      SFMain.RaiseException('ไม่พบรหัสพนักงานขาย');
  end;
end;

procedure TDm_Sal.QCshSaleCONTNOValidate(Sender: TField);
var
  HF, LF, LV: string;
begin
  if QCshSaleUpdateStatus.Value = 'Inserted' then
  begin
    LV := QCshSale.FieldByName('Locat').Asstring;
    HF := 'H_CASHNO';
    LF := 'L_CASHNO';

    if XRunCont = 'N' then
      if Copy(QCshSaleCONTNO.Asstring, 1, 3) = Dm01.ChkDupRun(HF, LF, LV) then
        SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');

    with Query1 do
    begin
      Close;
      sql.clear;
      sql.add('SELECT LOCAT,CONTNO FROM HARCRED WHERE LOCAT=:0 AND CONTNO=:1');
      Params[0].asstring := QCshSaleLOCAT.Asstring;
      Params[1].asstring := QCshSaleCONTNO.Asstring;
      OPEN;
      if not (Bof and Eof) then
        SFMain.RaiseException('มีเลขที่สัญญานี้ในระบบแล้ว');
    end;
  end;
end;

procedure TDm_Sal.QCshTaxTAXNOValidate(Sender: TField);
var
  Lv, HF, LF: string;
begin
  if QCshTaxUpdateStatus.Value = 'Inserted' then
  begin
    if QCshTax.FieldByName('Tsale').Asstring = 'C' then
    begin
      if QCshSale.FieldByName('Locat').Asstring = '' then
        Lv := QCshSUpd.FieldByName('Locat').Asstring
      else
        Lv := QCshSale.FieldByName('Locat').Asstring;
      HF := 'H_TXCASH';
      LF := 'L_TXCASH';
      if XRunTax = 'N' then
      begin
        if Copy(QCshSaleTAXNO.Asstring, 1, 3) = Dm01.ChkDupRun(HF, LF, Lv) then
          SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');
      end;
    end;
    if QCshTax.FieldByName('TSALE').Asstring = 'F' then
    begin
      if QFinSale.FieldByName('Locat').Asstring = '' then
        Lv := QFinSUpd.FieldByName('Locat').Asstring
      else
        Lv := QFinSale.FieldByName('Locat').Asstring;
      HF := 'H_TXFINC';
      LF := 'L_TXFINC';
      if XRunTax = 'N' then
      begin
        if Copy(QFinSaleTAXNO.Asstring, 1, 3) = Dm01.ChkDupRun(HF, LF, Lv) then
          SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');
      end;
    end;
  end;
end;

procedure TDm_Sal.QCshTaxUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate2 := True;
end;

procedure TDm_Sal.QCshTaxBeforePost(DataSet: TDataSet);
begin
  if (QCshTaxUpdateStatus.Value = 'Inserted') then
    if Duplicate2 then
      QCshTaxTaxNoValidate(QCshTaxTaxNo);
end;

procedure TDm_Sal.QCshTaxCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
        'Inserted', 'Deleted');
begin
  if QCshTax.CachedUpdates then
    QCshTaxUpdateStatus.Value := UpdateStatusStr[QCshTax.UpdateStatus];
end;

procedure TDm_Sal.QCshTaxNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QCshTax);
  Duplicate2 := False;
end;

procedure TDm_Sal.QCshSUpdAfterPost(DataSet: TDataSet);
begin
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QCshSUpd.Active then
      if (QCshSUpd.ApplyUpdates = 0) then
        QCshSUpd.CommitUpdates
      else
        raise Exception.Create(QCshSUpd.RowError.Message);
    if QCshTax.Active then
      if (QCshTax.ApplyUpdates = 0) then
        QCshTax.CommitUpdates
      else
        raise Exception.Create(QCshTax.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QCshSUpd.Edit;
    raise;
  end;
end;

procedure TDm_Sal.QCshOptCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  QCshOptUpdateStatus.Value := UpdateStatusStr[QCshOpt.UpdateStatus];
end;

procedure TDm_Sal.QCshOptNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QCshOpt);
  QCSHOPT.Fieldbyname('Tsale').Asstring := QCshSaleTsale.Asstring;
  QCSHOPT.Fieldbyname('Locat').Asstring := QCshSaleLocat.Asstring;
  QCSHOPT.Fieldbyname('Contno').Asstring := QCshSaleContno.Asstring;
  QCshOpt.Fieldbyname('Sdate').AsDatetime := QCshSaleSdate.AsDatetime;
  QCSHOPT.Fieldbyname('Qty').Asfloat := 0;
  QCshOptUserId.Asstring := SFMain.Xuser_Id;
  QCshOptInpDt.AsDatetime := Now;
end;

procedure TDm_Sal.QCshOptBeforePost(DataSet: TDataSet);
var
  Optc, V: Double;
  S: string;
begin
  if QCSHOPT.FieldByName('CONTNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่สัญญา');
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT * FROM OPTMAST WHERE OPTCODE=:0 AND LOCAT=:1');
    Params[0].asstring := QCshoptOptcode.Asstring;
    Params[1].asstring := QCshSaleLOCAT.Asstring;
    open;
    if (Bof and Eof) then
      SFMain.RaiseException('ไม่มีรหัสสินค้านี้ในแฟ้มข้อมูล...!');
  end;
  //If Query1.FieldByName('ONHAND').Asfloat < QCSHOPT.FieldByName('QTY').AsFloat Then
  //   if MessageDlg('จำนวนที่เบิกมากกว่ายอดคงเหลือต้องการทำรายการต่อ ',mtConfirmation, [mbYes, mbNo],0) = mrNo then
  //   SFMain.RaiseException('ยอดคงเหลือติดลบ');
end;

procedure TDm_Sal.QCshOptAfterPost(DataSet: TDataSet);
var
  XNetcst, XNetvat, XTotcst, XNprice, Xtotvat, Xtotprc: double;
  bk: Tbookmark;
begin
  QCshOpt.DisableControls;
  bk := QCshOpt.GetBookmark;
  XNprice := 0;
  Xtotvat := 0;
  Xtotprc := 0;
  XNetcst := 0;
  XNetvat := 0;
  XTotcst := 0;
  QCshOpt.first;
  while not QCshOpt.Eof do
  begin
    XNprice := XNprice + QCshOptNPrice.Asfloat;
    Xtotvat := Xtotvat + QCshOptTotvat.Asfloat;
    Xtotprc := Xtotprc + QCshOptTotprc.Asfloat;
    XNetcst := XNetcst + QCshOptOptcst.Asfloat;
    XNetvat := XNetvat + QCshOptOptcvt.Asfloat;
    XTotcst := XTotcst + QCshOptOptctot.Asfloat;
    QCshOpt.Next;
  end;
  if QCshSale.state = Dsbrowse then
    QCshSale.edit;
  QCshSale.FieldByName('OPTPRC').AsFloat := XNprice;
  QCshSale.FieldByName('OPTPVT').AsFloat := Xtotvat;
  QCshSale.FieldByName('OPTPTOT').AsFloat := Xtotprc;
  QCshSale.FieldByName('OPTCST').AsFloat := XNetcst;
  QCshSale.FieldByName('OPTCVT').AsFloat := XNetvat;
  QCshSale.FieldByName('OPTCTOT').AsFloat := XTotcst;
  QCshOpt.EnableControls;
  QCshOpt.GotoBookMark(bk);
  QCshOpt.FreeBookmark(bk);
end;

procedure TDm_Sal.QHirSaleRESVNOValidate(Sender: TField);
var
  S: string;
  D, D1, D2: Extended;
begin
end;

procedure TDm_Sal.QFinSaleLOCATValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT LOCATCD,FLSALE FROM INVLOCAT WHERE LOCATCD = :VAR');
    Params[0].asstring := QFinSaleLOCAT.Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;

  if Query1.FieldByName('FLSale').Asstring <> 'T' then
    SFMain.RaiseException('สถานที่เก็บนี้ไม่อนุญาตให้มีการขาย');
  if QFinSaleSdate.Asstring <> '' then
    QFinSaleSDATEValidate(Sender);
end;

procedure TDm_Sal.QFinSaleCONTNOValidate(Sender: TField);
var
  HF, LF, LV: string;
begin
  if QFinSaleUpdateStatus.Value = 'Inserted' then
  begin
    LV := QFinSale.FieldByName('Locat').Asstring;
    HF := 'H_FINCNO';
    LF := 'L_FINCNO';

    if XRunCont = 'N' then
      if Copy(QFinSaleCONTNO.Asstring, 1, 3) = Dm01.ChkDupRun(HF, LF, LV) then
        SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');

    with Query1 do
    begin
      Close;
      sql.clear;
      sql.add('SELECT LOCAT,CONTNO FROM HARFINC WHERE LOCAT=:0 AND CONTNO=:1');
      Params[0].asstring := QFinSaleLOCAT.Asstring;
      Params[1].asstring := QFinSaleCONTNO.Asstring;
      OPEN;
      if not (Bof and Eof) then
        SFMain.RaiseException('มีเลขที่สัญญานี้ในระบบแล้ว');
    end;
  end;
end;

procedure TDm_Sal.QFinSaleRESVNOValidate(Sender: TField);
var
  S: string;
  D, D1, D2: Extended;
begin
  S := QFinSaleResvno.Asstring;
  if S <> '' then
  begin
    with QRESV do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM ARRESV WHERE RESVNO=:XRESVNO');
      Params[0].asstring := QFinSaleResvno.Asstring;
      open;

      if (QRESV.eof and QRESV.bof) then
        SFMain.RaiseException('ไม่พบเลขที่ใบจองนี้')
      else           {Check หมายเลขถัง}
       //    If QResv.FieldByname('Strno').Asstring='' Then
        //      SFMain.RaiseException('ใบจองนี้ยังไม่ระบุเลขตัวถัง ');
           {Check ใบจองถูกตัดขาย}
if QResv.FieldByname('Sdate').Asstring <> '' then
        SFMain.RaiseException('ใบจองนี้รับรถไปแล้ว ');
           {Check วันขายกับวันจอง}
      if QResv.FieldByname('Resvdt').Asdatetime > QFinSaleSdate.Asdatetime then
        SFMain.RaiseException('วันขายต้องมากกว่าวันจอง');
           {Check การชำระเงินจอง}
      if QFinSaleResvno.Asstring <> '' then
      begin
        D1 := FRound(QResv.FieldByName('Smpay').Asfloat + QResv.FieldByName('SmChq').Asfloat, 2);
        D2 := FRound(QResv.FieldByName('Respay').Asfloat, 2);
        if (D1 < D2) then
          SFMain.RaiseException('ชำระเงินจองยังไม่ครบ')
        else if FRound(QResv.FieldByName('Smpay').Asfloat, 2) <> FRound(QResv.FieldByName('Respay').Asfloat, 2) then
          SFMain.RaiseException('เช็คเงินจองยังไม่ผ่าน');
      end;

           {รับค่าเงินจองและรหัสผู้จอง}
      D := FRound(QResv.FieldByname('Respay').Asfloat * QResv.FieldByName('Vatrt').Asfloat / (100 + QResv.FieldByName('Vatrt').Asfloat), 2);
      QFinSaleVatpres.Asfloat := D;
      QFinSaleNpayres.Asfloat := QResv.FieldByname('Respay').Asfloat - QFinSaleVatpres.Asfloat;
      QFinSaleTotPres.Asfloat := QResv.FieldByname('Respay').Asfloat;
      QFinSaleCuscod.Asstring := QResv.FieldByname('Cuscod').Asstring;
           //
      QFinSaleSmpay.Asfloat := QResv.FieldByname('Smpay').Asfloat;
      QFinSaleSmChq.Asfloat := 0;
      QFinSalePaydwn.Asfloat := QResv.FieldByname('Smpay').Asfloat;
      if QResv.FieldByname('Strno').Asstring <> '' then
        QFinSaleStrno.Asstring := QResv.FieldByname('Strno').Asstring;
    end;
  end;
end;

procedure TDm_Sal.QFinSaleCUSCODValidate(Sender: TField);
begin
  if QFinSale.FieldByName('Resvno').Asstring <> '' then
  begin
    if QResv.FieldByName('Cuscod').Asstring <> QFinSaleCuscod.Asstring then
      MessageDlg('ผู้จองและผู้ซื้อรถไม่ใช่คนเดียวกัน ', mtconfirmation, [mbok], 0);
  end
  else
  begin
    with Query1 do
    begin
      close;
      sql.clear;
      sql.add('SELECT CUSCOD FROM CUSTMAST WHERE CUSCOD=:V0');
      Params[0].asstring := QFinSaleCuscod.Asstring;
      open;
      if (Eof and Bof) then
        SFMain.RaiseException('ไม่พบรหัสลูกค้าในแฟ้มประวัติ');
    end;
  end;
end;

procedure TDm_Sal.QFinSaleSTRNOValidate(Sender: TField);
begin
  with QInvtran do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM INVTRAN ' +
      'WHERE STRNO=:XSTRNO');
    Params[0].asstring := QFinSaleStrno.Asstring;
    open;
    if (QInvtran.eof and QInvtran.bof) then
      SFMain.RaiseException('ไม่พบรถหมายเลขถังนี้')
    else
    begin
      if QInvtran.Fieldbyname('CRLocat').Asstring <> QFinSaleLocat.Asstring then
        SFMain.RaiseException('สถานที่เปิดขายกับสถานที่เก็บรถไม่ใช่ที่เดียวกัน');
         {Check เลขถังใบจอง=การขาย}
       //  if (QFinSaleResvno.Asstring<>'') Then
      //      If (QFinSaleStrno.Asstring<>QResv.FieldByName('Strno').Asstring) Then
      //      SFMain.RaiseException('เป็นรถคนละคันกับใบจอง');
         {Check รถยึด}
      if QInvtran.Fieldbyname('CurStat').Asstring = 'Y' then
        SFMain.RaiseException('รถหมายเลขถังนี้เป็นรถยึด ');
         {Check ต้นทุน}
     //    If QInvtran.Fieldbyname('Netcost').asfloat =0 Then
     //       SFMain.RaiseException('ยังไม่บันทึกราคาต้นทุน '#13#10+'กรุณาไปบันทึกในระบบเจ้าหนี้');
         {Check การจอง}
      if QInvtran.Fieldbyname('Curstat').Asstring = 'R' then
        if QInvtran.Fieldbyname('Resvno').Asstring <> QFinSaleResvno.Asstring then
          SFMain.RaiseException('รถหมายเลขถังนี้ถูกจองแล้ว ');
         {Check วันรับกับวันขาย}
      //   If QInvtran.Fieldbyname('RECVDT').Asdatetime>QFinSaleSdate.Asdatetime Then
       //  SFMain.RaiseException('วันรับรถมากกว่าวันขาย');
         {Check สถานะขาย}
      if QInvtran.Fieldbyname('Flag').Asstring = 'C' then
        SFMain.RaiseException('รถหมายเลขถังนี้ถูกขายไปแล้ว '#13#13#10 + 'เลขสัญญา ' +
          QInvtran.Fieldbyname('Contno').Asstring)
      else
      begin
        QFinSaleNcarcst.asfloat := QInvtran.Fieldbyname('Netcost').asfloat +
          QInvtran.Fieldbyname('Naddcost').asfloat;
        QFinSaleVcarcst.asfloat := QInvtran.Fieldbyname('Crvat').asfloat +
          QInvtran.Fieldbyname('Vaddcost').asfloat;
        QFinSaleTcarcst.asfloat := QInvtran.Fieldbyname('TOTCOST').asfloat +
          QInvtran.Fieldbyname('Taddcost').asfloat;
        QFinSaleStdPrc.asfloat := QInvtran.Fieldbyname('Stdprc').asfloat;
      end;
    end;
  end;
end;

procedure TDm_Sal.QFinSaleINCLVATChange(Sender: TField);
var
  S: string;
  E, F: Extended;
begin
  if QFinSaleInclvat.Asstring = 'Y' then
  begin
    E := FRound(QFinSaleKeyin.Asfloat * QFinSaleVatrt.Asfloat / (100 + QFinSaleVatrt.Asfloat), 2);
    QFinSaleVatPrc.Asfloat := E;
    QFinSaleNprice.Asfloat := QFinSaleKeyin.Asfloat - E;
    QFinSaleTotPrc.Asfloat := QFinSaleVatPrc.Asfloat + QFinSaleNPrice.Asfloat;
    F := QFinSaleKeyinDwn.AsFloat;
    E := FRound(F * QFinSaleVatrt.Asfloat / (100 + QFinSaleVatrt.Asfloat), 2);
    QFinSaleVatDwn.Asfloat := E;
    QFinSaleNdawn.Asfloat := F - E;
    QFinSaleTotDwn.Asfloat := QFinSaleVatDwn.Asfloat + QFinSaleNdawn.Asfloat;
  end
  else
  begin
    E := FRound(QFinSaleKeyin.Asfloat * (QFinSaleVatrt.Asfloat) / 100, 2);
    QFinSaleVatPrc.Asfloat := E;
    QFinSaleNprice.Asfloat := QFinSaleKeyin.Asfloat;
    QFinSaleTotPrc.Asfloat := QFinSaleNPrice.Asfloat + QFinSaleVatPrc.Asfloat;
    F := QFinSaleKeyinDwn.AsFloat;
    E := Fround(F * (QFinSaleVatrt.Asfloat) / 100, 2);
    QFinSaleVatDwn.Asfloat := E;
    QFinSaleNdawn.Asfloat := F;
    QFinSaleTotDwn.Asfloat := QFinSaleNdawn.Asfloat + QFinSaleVatDwn.Asfloat;
  end;
  QFinSaleTKang.Asfloat := QFinSaleTotPrc.Asfloat - QFinSaleTOTPRES.Asfloat;
  QFinSaleNKang.Asfloat := QFinSaleNPrice.Asfloat - QFinSaleNpayres.Asfloat;
  QFinSaleVKang.Asfloat := QFinSaleVatprc.Asfloat - QFinSaleVATPRES.Asfloat;
  QFinSaleTotFin.Asfloat := QFinSaleTotPrc.Asfloat - QFinSaleTotDwn.Asfloat;
  QFinSaleNFinan.Asfloat := QFinSaleNPrice.Asfloat - QFinSaleNDawn.Asfloat;
  QFinSaleVatFin.Asfloat := QFinSaleVatprc.Asfloat - QFinSaleVatDwn.Asfloat;
end;

procedure TDm_Sal.QFinSaleSDATEValidate(Sender: TField);
var
  HF, LF, HP, LP, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if not QCondPay.Active then
    QCondPay.Open;
  QFinSale.Fieldbyname('Vatrt').Asfloat := QCondPay.FieldByname('VAT').Asfloat;
  if QFinSaleUpdateStatus.Value = 'Inserted' then
  begin
    LV := QFinSale.FieldByName('Locat').Asstring;
    DV := QFinSale.FieldByName('Sdate').Asdatetime;
    HF := 'H_FINCNO';
    LF := 'L_FINCNO';
    if QFinSaleSDATE.AsDateTime > Date then
      SFMain.RaiseException('ระบุวันที่ก่อนวันปัจุบัน...!');

    if XRunCont = 'Y' then
    begin
      SQLTXT := 'SELECT MAX(CONTNO) AS MAXNO FROM ARFINC WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(CONTNO,2,2)=:EDIT2 AND SUBSTR(CONTNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(CONTNO,7,2)=:EDIT4';
      QFinSaleCONTNO.Asstring := Dm01.MAXNo(HF, LF, LV, SQLTXT, DV);
    end;
    QFinSaleIssudt.Asdatetime := QFinSaleSdate.AsDatetime;
  end;
end;

procedure TDm_Sal.QFinSaleNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QFinSale);
  Duplicate := False;

  if not QCondPay.Active then
    QCondPay.Open;
  QFinSale.Fieldbyname('Locat').Asstring := SFMain.XLocat;
  QFinSale.Fieldbyname('Sdate').Asdatetime := SFMain.CR_DATE;
  QFinSale.Fieldbyname('INCLVAT').Asstring := 'Y';
  QFinsale.Fieldbyname('Addrno').asstring := '1';
  QFinSale.Fieldbyname('Tsale').Asstring := 'F' {F = ขายส่งไฟแนนซ์};
  QFinSale.Fieldbyname('LOGREG').Asstring := '1';
  QFinSale.Fieldbyname('Vatrt').Asfloat := QCondPay.FieldByname('VAT').Asfloat;
  QFinSaleUserId.Asstring := SFMain.Xuser_Id;
  QFinSaleInpDt.AsDatetime := Now;
end;

procedure TDm_Sal.QFinSaleCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QFinSale.CachedUpdates then
    QFinSaleUpdateStatus.Value := UpdateStatusStr[QFinSale.UpdateStatus];
end;

procedure TDm_Sal.QFinSaleKEYINValidate(Sender: TField);
var
  S: string;
  E: Extended;
begin
  if QFinSaleInclvat.Asstring = 'Y' then
  begin
    E := FRound(QFinSaleKeyin.Asfloat * QFinSaleVatrt.Asfloat / (100 + QFinSaleVatrt.Asfloat), 2);
    QFinSaleVatPrc.Asfloat := E;
    QFinSaleNprice.Asfloat := QFinSaleKeyin.Asfloat - E;
    QFinSaleTotPrc.Asfloat := QFinSaleVatPrc.Asfloat + QFinSaleNPrice.Asfloat;
  end
  else
  begin
    E := FRound(QFinSaleKeyin.Asfloat * (QFinSaleVatrt.Asfloat) / 100, 2);
    QFinSaleVatPrc.Asfloat := E;
    QFinSaleNprice.Asfloat := QFinSaleKeyin.Asfloat;
    QFinSaleTotPrc.Asfloat := QFinSaleNPrice.Asfloat + QFinSaleVatPrc.Asfloat;
  end;
  QFinSaleTKang.Asfloat := QFinSaleTotPrc.Asfloat - QFinSaleTOTPRES.Asfloat;
  QFinSaleNKang.Asfloat := QFinSaleNPrice.Asfloat - QFinSaleNpayres.Asfloat;
  QFinSaleVKang.Asfloat := QFinSaleVatprc.Asfloat - QFinSaleVATPRES.Asfloat;
  ///QFinSaleDscPrc.Asfloat  := QFinSaleStdprc.Asfloat-QFinSaleTotPrc.Asfloat ;
  QFinSaleTotFin.Asfloat := QFinSaleTotPrc.Asfloat - QFinSaleTotDwn.Asfloat;
  QFinSaleNKEYIN.Asfloat := QFinSaleNprice.Asfloat;
  QFinSaleVKEYIN.Asfloat := QFinSaleVatPrc.Asfloat;
  QFinSaleTKEYIN.Asfloat := QFinSaleTotPrc.Asfloat;
end;

procedure TDm_Sal.QFinSaleKEYINDWNValidate(Sender: TField);
var
  S: string;
  E, F: Extended;
begin
  if QFinSaleKeyinDwn.Asfloat > QFinSaleKeyin.Asfloat then
    SFMain.RaiseException('เงินดาวน์มากกว่าราคาขาย');

  if QFinSaleInclvat.Asstring = 'Y' then
  begin
    F := (QFinSaleKeyinDwn.AsFloat);
    E := FRound(F * QFinSaleVatrt.Asfloat / (100 + QFinSaleVatrt.Asfloat), 2);
    QFinSaleVatDwn.Asfloat := E;
    QFinSaleNdawn.Asfloat := F - E;
    QFinSaleTotDwn.Asfloat := QFinSaleVatDwn.Asfloat + QFinSaleNdawn.Asfloat;
  end
  else
  begin
    F := (QFinSaleKeyinDwn.AsFloat);
    E := FRound(F * (QFinSaleVatrt.Asfloat) / 100, 2);
    QFinSaleVatDwn.Asfloat := E;
    QFinSaleNdawn.Asfloat := F;
    QFinSaleTotDwn.Asfloat := QFinSaleNdawn.Asfloat + QFinSaleVatDwn.Asfloat;
  end;
  QFinSaleTotFin.Asfloat := QFinSaleTotPrc.Asfloat - QFinSaleTotDwn.Asfloat;
  QFinSaleNFinan.Asfloat := QFinSaleNPrice.Asfloat - QFinSaleNDawn.Asfloat;
  QFinSaleVatFin.Asfloat := QFinSaleVatprc.Asfloat - QFinSaleVatDwn.Asfloat;
  QFinSaleNETDWN.AsFloat := QFinSaleKEYINDWN.AsFloat - QFinSaleDSCPRC.AsFloat;
end;

procedure TDm_Sal.QFinSaleSALCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM OFFICER WHERE CODE=:XCODE');
    Params[0].asstring := QFinSaleSalcod.Asstring;
    open;
    if (Query1.eof and Query1.bof) then
      SFMain.RaiseException('ไม่พบรหัสพนักงานขาย');
  end;
end;

procedure TDm_Sal.QFinSaleFINCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM FINMAST WHERE FINCODE=:XCODE');
    Params[0].asstring := QFinSaleFinCod.Asstring;
    open;
    if (Query1.eof and Query1.bof) then
      SFMain.RaiseException('ไม่พบรหัสบริษัทไฟแนนซ์');
  end;
end;

procedure TDm_Sal.QFinSaleBeforePost(DataSet: TDataSet);
var
  S1, S2: string;
begin
  ClearAsString(QFinSale);
  if QFinSaleCuscod.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
  //Check พนักงานขาย
  if QFinSaleSalcod.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสพนักงานขาย');
  //ตรวจสอบยอดเงินจองกับราคาขาย
  {IF QFinSaleTotpres.Asfloat>QFinSaleTotDwn.Asfloat Then
  SFMain.RaiseException('ยอดจองมากกว่าเงินดาวน์');  }

  if QFinSaleContno.Asstring = '' then
  begin
    MessageBeep(0);
    SFMain.RaiseException('ไม่มีเลขที่สัญญา');
  end;

  if (QFinSaleUpdateStatus.Value = 'Inserted') then
  begin
    QFinSaleSDateValidate(QFinSaleSDate);

    FFinSal1.S := Dm_sal.QFinSale.FieldByName('Contno').Asstring;
    QFinSaleTotFin.Asfloat := QFinSaleTotPrc.Asfloat - QFinSaleTotDwn.Asfloat;
    QFinSaleNFinan.Asfloat := QFinSaleNPrice.Asfloat - QFinSaleNDawn.Asfloat;
    QFinSaleVatFin.Asfloat := QFinSaleVatprc.Asfloat - QFinSaleVatDwn.Asfloat;
    // ---Update New Contno---
    QFinOpt.First;
    while not QFinOpt.Eof do
    begin
      QFinOpt.Edit;
      QFinOptCONTNO.Asstring := QFinSaleCONTNO.Asstring;
      QFinOptSdate.AsDatetime := QFinSaleSdate.AsDatetime;
      QFinOpt.Next;
    end;
    //

    if not (QFinSaleRESVNO.Asstring = '') then
    begin
      with QResv do
      begin
        if not (QResv.bof and QResv.eof) then
        begin
          S1 := FloattostrF(QResv.FieldByName('Smpay').Asfloat + QResv.FieldByName('SmChq').Asfloat, ffFixed, 15, 2);
          S2 := FloattostrF(QResv.FieldByName('Respay').Asfloat, ffFixed, 15, 2);
          if (StrToFloat(S1) < StrToFloat(S2)) then
            SFMain.RaiseException('ชำระเงินจองยังไม่ครบ');
          QFinSaleSmpay.Asfloat := QResv.FieldByName('Smpay').Asfloat + QResv.FieldByName('Smchq').Asfloat;
        end;
      end;
    end;
    if not (QFinSaleRESVNO.Asstring = '') then
    begin
      QResv.Edit;
      QResv.Fieldbyname('Issuno').asstring := QFinSaleIssuno.Asstring;
      QResv.Fieldbyname('Recvdt').asdatetime := QFinSaleIssudt.asdatetime;
      QResv.Fieldbyname('Sdate').asdatetime := QFinSaleSdate.asdatetime;
      QResv.Post;
    end;
  end;
end;

procedure TDm_Sal.QFinSaleAfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QFinSale.FieldByName('Contno').Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QFinSale.Active then
      if (QFinSale.ApplyUpdates = 0) then
        QFinSale.CommitUpdates
      else
        raise Exception.Create(QFinSale.RowError.Message);
    if QInvTran.Active then
      if (QInvTran.ApplyUpdates = 0) then
        QInvTran.CommitUpdates
      else
        raise Exception.Create(QInvTran.RowError.Message);
    if QResv.Active then
      if (QResv.ApplyUpdates = 0) then
        QResv.CommitUpdates
      else
        raise Exception.Create(QResv.RowError.Message);
    if QFinOpt.Active then
      if (QFinOpt.ApplyUpdates = 0) then
        QFinOpt.CommitUpdates
      else
        raise Exception.Create(QFinOpt.RowError.Message);
    if QCshTax.Active then
      if (QCshTax.ApplyUpdates = 0) then
        QCshTax.CommitUpdates
      else
        raise Exception.Create(QCshTax.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QFinSale.Edit;
    raise;
  end;
end;

procedure TDm_Sal.QFinSaleAfterCancel(DataSet: TDataSet);
begin
  if QFinSale.Active then
    QFinSale.cancelUpdates;
  if QInvTran.Active then
    QInvTran.CancelUpdates;
  if QResv.Active then
    QResv.CancelUpdates;
  if QFinOpt.Active then
    QFinOpt.CancelUpdates;
  if QCshTax.Active then
    QCshTax.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDm_Sal.QFinSaleBeforeDelete(DataSet: TDataSet);
begin
  { If (QFinSaleSmpay.Asfloat+QFinSaleSmchq.Asfloat)>
      (QFinSaleNPAYRES.Asfloat+QFinSaleVATPRES.Asfloat) Then
   SFMain.RaiseException('มีการรับชำระเงินแล้ว');}

  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT contno,sum(payamt) payamt FROM chqtran where payfor in (''003'',''004'') ' +
      'and flag <> ''C'' and contno =:EDIT1 group by contno ');
    params[0].AsString := Dm_sal.QFinSale.Fieldbyname('CONTNO').asstring;
    open;

    if not (eof and bof) then
      SFMain.RaiseException('มีการรับชำระเงินแล้ว');
  end;

  if QFinSaleCrdAmt.Asfloat > 0 then
    SFMain.RaiseException('มีการออกใบลดหนี้แล้ว');

   {ทำขั้นตอนยกเลิกรายการต่างๆ ArFinc invtran taxtran arresv}
  with Dm_Sal.QInvtran do
  begin
    close;
    sql.clear;
    sql.add('SELECT STRNO,ENGNO,SDATE,FLAG,CONTNO,TSALE,PRICE,' +
      'TYPE,MODEL,BAAB,COLOR,CC,STAT FROM INVTRAN ' +
      'WHERE STRNO=:XSTRNO');
    Params[0].asstring := QFinSaleStrno.Asstring;
    open;
  end;
   //delete อุปกรณ์เสริม
  with QFinOpt do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM ARINOPT ' +
      'WHERE TSALE =''F'' AND CONTNO=:XCONTNO ');
    Params[0].asstring := QFinSaleCONTNO.Asstring;
    open;
    First;
  end;
  while not (QFinOpt.Eof and QFinOpt.bof) do
    QFinOpt.Delete;

          {Mark Calcel TaxTran}
  with QCshTax do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM TAXTRAN ' +
      'WHERE LOCAT=:XLOCAT AND TAXNO=:XTAXNO');
    Params[0].asstring := QFinSale.FieldByname('LOCAT').Asstring;
    Params[1].asstring := QFinSale.FieldByName('TAXNO').Asstring;
    open;
    if not (QCshTax.bof and QCshTax.eof) then
    begin
      QCshTax.Edit;
      QCshTax.FieldByName('Flag').Asstring := 'C';
      QCshTax.FieldByName('CanDt').AsdateTime := Now;
      QCshTax.FieldByName('Flcancl').Asstring := SFMain.XUser_id;
       {QCshTax.FieldByName('SNAM').AsString  := '';
       QCshTax.FieldByName('NAME1').AsString := '';
       QCshTax.FieldByName('NAME2').AsString := '';
       QCshTax.FieldByName('VATRT').AsFloat := 0;
       QCshTax.FieldByName('NETAMT').AsFloat := 0;
       QCshTax.FieldByName('VATAMT').AsFloat := 0;
       QCshTax.FieldByName('TOTAMT').AsFloat := 0;}
      QCshTax.Post;
    end;
  end;
        {การจองรถ}

  with QResv do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM ARRESV ' +
      'WHERE RESVNO=:XRESVNO');
    Params[0].asstring := QFinSale.FieldByname('RESVNO').Asstring;
    open;
    if not (QResv.eof and QResv.bof) then
    begin
      Edit;
      Fieldbyname('Issuno').asstring := '';
      Fieldbyname('Recvdt').asstring := '';
      Fieldbyname('Sdate').asstring := '';
      Post;
    end;
  end;
end;

procedure TDm_Sal.QFinSUpdAfterPost(DataSet: TDataSet);
begin
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QFinSUpd.Active then
      if (QFinSUpd.ApplyUpdates = 0) then
        QFinSUpd.CommitUpdates
      else
        raise Exception.Create(QFinSUpd.RowError.Message);
    if QCshTax.Active then
      if (QCshTax.ApplyUpdates = 0) then
        QCshTax.CommitUpdates
      else
        raise Exception.Create(QCshTax.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QFinSUpd.Edit;
    raise;
  end;
end;

procedure TDm_Sal.QFinOptNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QFinOpt);
  QFinOPT.Fieldbyname('Tsale').Asstring := QFinSaleTsale.Asstring;
  QFinOPT.Fieldbyname('Locat').Asstring := QFinSaleLocat.Asstring;
  QFinOPT.Fieldbyname('Contno').Asstring := QFinSaleContno.Asstring;
  QFinOpt.Fieldbyname('Sdate').AsDatetime := QFinSaleSdate.AsDatetime;
  QFinOPT.Fieldbyname('Qty').Asfloat := 0;
  QFinOPT.Fieldbyname('UserId').Asstring := SFMain.Xuser_Id;
  QFinOPT.Fieldbyname('InpDt').AsDatetime := Now;
end;

procedure TDm_Sal.QFinOptCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  QFinOptUpdateStatus.Value := UpdateStatusStr[QFinOpt.UpdateStatus];
end;

procedure TDm_Sal.QFinOptBeforePost(DataSet: TDataSet);
var
  Optc, V: Double;
  S: string;
begin
  if QFinOPT.FieldByName('CONTNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่สัญญา');
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT OPTCODE,LOCAT,ONHAND FROM OPTMAST WHERE LOCAT=:0 AND OPTCODE=:1');
    Params[0].asstring := QFinSaleLOCAT.Asstring;
    Params[1].asstring := QFinOptOptcode.Asstring;
    OPEN;
    if (Bof and Eof) then
      SFMain.RaiseException('ไม่มีรหัสสินค้านี้ในแฟ้มข้อมูล');
  end;
 {  If Query1.FieldByName('ONHAND').Asfloat < QFinOpt.FieldByName('QTY').AsFloat Then
     if MessageDlg('จำนวนที่เบิกมากกว่ายอดคงเหลือต้องการทำรายการต่อ ',
        mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        SFMain.RaiseException('ยอดคงเหลือติดลบ');     }
end;

procedure TDm_Sal.QFinOptAfterPost(DataSet: TDataSet);
var
  XNetcst, XNetvat, XTotcst, XNprice, Xtotvat, Xtotprc: double;
  bk: Tbookmark;
begin
  QFinOpt.DisableControls;
  bk := QFinOpt.GetBookmark;
  XNprice := 0;
  Xtotvat := 0;
  Xtotprc := 0;
  XNetcst := 0;
  XNetvat := 0;
  XTotcst := 0;
  QFinOpt.first;
  while not QFinOpt.Eof do
  begin
    XNprice := XNprice + QFinOptNPrice.Asfloat;
    Xtotvat := Xtotvat + QFinOptTotvat.Asfloat;
    Xtotprc := Xtotprc + QFinOptTotprc.Asfloat;
    XNetcst := XNetcst + QFinOptOptcst.Asfloat;
    XNetvat := XNetvat + QFinOptOptcvt.Asfloat;
    XTotcst := XTotcst + QFinOptOptctot.Asfloat;
    QFinOpt.Next;
  end;
  if QFinSale.state = Dsbrowse then
    QFinSale.edit;
  QFinSale.FieldByName('OPTPRC').AsFloat := XNprice;
  QFinSale.FieldByName('OPTPVT').AsFloat := Xtotvat;
  QFinSale.FieldByName('OPTPTOT').AsFloat := Xtotprc;
  QFinSale.FieldByName('OPTCST').AsFloat := XNetcst;
  QFinSale.FieldByName('OPTCVT').AsFloat := XNetvat;
  QFinSale.FieldByName('OPTCTOT').AsFloat := XTotcst;

  QFinOpt.EnableControls;
  QFinOpt.GotoBookMark(bk);
  QFinOpt.FreeBookmark(bk);
end;

procedure TDm_Sal.QDiscTaxNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QDiscTax);
  Duplicate2 := False;
end;

procedure TDm_Sal.QDiscTaxCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QDiscTax.CachedUpdates then
    QDiscTaxUpdateStatus.Value := UpdateStatusStr[QDiscTax.UpdateStatus];
end;

procedure TDm_Sal.QDiscTaxBeforePost(DataSet: TDataSet);
begin
  if (QDiscTaxUpdateStatus.Value = 'Inserted') then
    if Duplicate2 then
      QDiscTaxTaxNoValidate(QDiscTaxTaxNo);
end;

procedure TDm_Sal.QDiscTaxTAXNOValidate(Sender: TField);
var
  Lv, HF, LF: string;
  DV: Tdatetime;
begin
  if QDiscTaxUpdateStatus.Value = 'Inserted' then
  begin
    Lv := QFinSUpd.FieldByName('Locat').Asstring;
    DV := QFinSUpd.FieldByName('Sdate').AsDatetime;
    HF := 'H_TCRESV';
    LF := 'L_TCRESV';
  end;
end;

procedure TDm_Sal.QDiscTaxUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate2 := True;
end;

procedure TDm_Sal.QDiscTaxAfterPost(DataSet: TDataSet);
begin
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QDiscTax.Active then
      if (QDiscTax.ApplyUpdates = 0) then
        QDiscTax.CommitUpdates
      else
        raise Exception.Create(QDiscTax.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QDiscTax.Edit;
    raise;
  end;
end;

procedure TDm_Sal.QAgnSaleCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QAgnSale.CachedUpdates then
    QAgnSaleUpdateStatus.Value := UpdateStatusStr[QAgnSale.UpdateStatus];
end;

procedure TDm_Sal.QOptSaleCONTNOValidate(Sender: TField);
var
  HF, LF, LV: string;
begin
  if QOptSaleUpdateStatus.Value = 'Inserted' then
  begin
    LV := QOptSale.FieldByName('Locat').Asstring;
    HF := 'H_OPTCNO';
    LF := 'L_OPTCNO';

    if XRunCont = 'N' then
      if Copy(QOptSaleCONTNO.Asstring, 1, 3) = Dm01.ChkDupRun(HF, LF, LV) then
        SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');
  end;
end;

procedure TDm_Sal.QOptSaleLOCATValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT LOCATCD,FLSALE FROM INVLOCAT WHERE LOCATCD = :VAR');
    Params[0].asstring := QOptSaleLOCAT.Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;

  if Query1.FieldByName('FLSale').Asstring <> 'T' then
    SFMain.RaiseException('สถานที่เก็บนี้ไม่อนุญาตให้มีการขาย');

  if QOptSaleSdate.Asstring <> '' then
    QOptSaleSdateValidate(Sender);
end;

procedure TDm_Sal.QOptSaleSDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  with QVatmast do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM Vatmast ' +
      'WHERE :Var between Frmdate and Todate ');
    Params[0].asdate := QOptSale.Fieldbyname('Sdate').Asdatetime;
    open;
  end;
  QOptSale.Fieldbyname('Vatrt').Asfloat := QVatmast.FieldByname('VATRT').Asfloat;
   //QOptSale.FieldByName('Taxdt').Asdatetime := QOptSale.FieldByName('Sdate').Asdatetime;
  QOptSale.FieldByName('DueDt').Asdatetime := QOptSale.FieldByName('Sdate').Asdatetime;
  if QOptSaleUpdateStatus.Value = 'Inserted' then
  begin
    LV := QOptSale.FieldByName('Locat').Asstring;
    DV := QOptSale.FieldByName('Sdate').Asdatetime;
    HF := 'H_OPTCNO';
    LF := 'L_OPTCNO';
    if XRunCont = 'Y' then
    begin
      SQLTXT := 'SELECT MAX(CONTNO) AS MAXNO FROM ARFINC WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(CONTNO,2,2)=:EDIT2 AND SUBSTR(CONTNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(CONTNO,7,2)=:EDIT4';
      if Duplicate then
        QOptSaleCONTNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV)
      else
        QOptSaleCONTNO.Asstring := Dm01.RunNo01(HF, LF, LV, DV);
    end;
  end;
end;

procedure TDm_Sal.QOptSaleUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Sal.QOptSaleCREDTMValidate(Sender: TField);
begin
  QOptSaleDuedt.Asfloat := QOptSaleSdate.AsDatetime + QOptSaleCredtm.Asfloat;
end;

procedure TDm_Sal.QOptSaleSALCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM OFFICER WHERE CODE=:XCODE');
    Params[0].asstring := QOptSaleSalcod.Asstring;
    open;
    if (Query1.eof and Query1.bof) then
      SFMain.RaiseException('ไม่พบรหัสพนักงานขาย');
  end;
end;

procedure TDm_Sal.QOptSaleNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QOptSale);
  Duplicate := False;
   { WITH QVatmast DO
    begin
       close;
       sql.clear;
       sql.add('SELECT * FROM Vatmast '+
               'WHERE :Var between Frmdate and Todate ');
       Params[0].asdate := Now;
       open;
    End;
    }
  QOptSale.Fieldbyname('Locat').Asstring := SFMain.Xlocat;
  QOptSale.Fieldbyname('Sdate').AsDatetime := SFMain.CR_DATE;
  QOptSale.Fieldbyname('INCLVAT').Asstring := 'Y';
  QOptSale.Fieldbyname('Tsale').Asstring := 'O' {O = ขายอุปกรณ์เสริม};
  QOptSale.Fieldbyname('Vatrt').Asfloat := QVatmast.FieldByname('VATRT').Asfloat;
  QOptSale.Fieldbyname('Userid').Asstring := SFMain.Xuser_id;
  QOptSale.Fieldbyname('Inpdt').Asdatetime := Now;
end;

procedure TDm_Sal.QOptSaleCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QOptSale.CachedUpdates then
    QOptSaleUpdateStatus.Value := UpdateStatusStr[QOptSale.UpdateStatus];
end;

procedure TDm_Sal.QOptSaleBeforePost(DataSet: TDataSet);
begin
  ClearAsString(QOptSale);
  if QOptSaleCuscod.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
   //Check พนักงานขาย
  if QOptSaleSalcod.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสพนักงานขาย');

  if QOptSaleContno.Asstring = '' then
  begin
    MessageBeep(0);
    SFMain.RaiseException('ไม่มีเลขที่สัญญา');
  end;

  QOptSalT.First;
  if (QOptSaleUpdateStatus.Value = 'Inserted') then
  begin
    if Duplicate then
      QOptSaleSDateValidate(QOptSaleSDate);

    QOptSalT.First;
    while not QOptSalT.Eof do
    begin
      QOptSalT.Edit;
      QOptSalT.Fieldbyname('CONTNO').Asstring := QOptSaleCONTNO.Asstring;
      QOptSalT.Fieldbyname('SDATE').AsDateTime := QOptSaleSdate.AsDateTime;
      QOptSalT.Next;
    end;
  end;
end;

procedure TDm_Sal.QOptSaleAfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QOptSale.FieldByName('Contno').Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QOptSale.Active then
      if (QOptSale.ApplyUpdates = 0) then
        QOptSale.CommitUpdates
      else
        raise Exception.Create(QOptSale.RowError.Message);
    if QOptSalT.Active then
      if (QOptSalT.ApplyUpdates = 0) then
        QOptSalT.CommitUpdates
      else
        raise Exception.Create(QOptSalT.RowError.Message);
    if QCshTax.Active then
      if (QCshTax.ApplyUpdates = 0) then
        QCshTax.CommitUpdates
      else
        raise Exception.Create(QCshTax.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QOptSale.Edit;
    raise;
  end;
end;

procedure TDm_Sal.QOptSalTNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QOptSalT);
  QOptSalT.Fieldbyname('Tsale').Asstring := QOptSaleTsale.Asstring;
  QOptSalT.Fieldbyname('Locat').Asstring := QOptSaleLocat.Asstring;
  QOptSalT.Fieldbyname('Contno').Asstring := QOptSaleContno.Asstring;
  QOptSalT.Fieldbyname('QTY').Asfloat := 1;
  QOptsalTUserId.Asstring := SFMain.Xuser_Id;
  QOptSalTInpDt.AsDatetime := Now;
end;

procedure TDm_Sal.QOptSaleAfterCancel(DataSet: TDataSet);
begin
  if QOptSale.Active then
    QOptSale.cancelUpdates;
  if QOptsalT.Active then
    QOptsalT.CancelUpdates;
  //If QCshTax.Active     Then QCshTax.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDm_Sal.QOptSaleBeforeDelete(DataSet: TDataSet);
begin
  if (QOptSaleSmpay.Asfloat + QOptSaleSmchq.Asfloat) > 0 then
    SFMain.RaiseException('มีการรับชำระเงินแล้ว');

  QOptSalT.First;
  while not QOptSalT.Eof do
    QOptSalT.Delete;

  with QCshTax do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM TAXTRAN ' +
      'WHERE LOCAT=:XLOCAT AND TAXNO=:XTAXNO');
    Params[0].asstring := QOptSale.FieldByname('LOCAT').Asstring;
    Params[1].asstring := QOptSale.FieldByName('TAXNO').Asstring;
    open;
    if not (QCshTax.bof and QCshTax.eof) then
    begin
      QCshTax.Edit;
      QCshTax.FieldByName('Flag').Asstring := 'C';
      QCshTax.FieldByName('CanDt').AsdateTime := Now;
      QCshTax.FieldByName('Flcancl').Asstring := SFMain.XUser_id;
       { QCshTax.FieldByName('SNAM').AsString :='';
        QCshTax.FieldByName('NAME1').AsString :='';
        QCshTax.FieldByName('NAME2').AsString := '';
        QCshTax.FieldByName('VATRT').AsFloat :=0;
        QCshTax.FieldByName('NETAMT').AsFloat :=0;
        QCshTax.FieldByName('VATAMT').AsFloat :=0;
        QCshTax.FieldByName('TOTAMT').AsFloat := 0; }
      QCshTax.Post;
    end;
  end;
end;

procedure TDm_Sal.QOptSalTBeforePost(DataSet: TDataSet);
var
  E: Double;
begin
  if QOptSalT.FieldByName('CONTNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่สัญญา');
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT OPTCODE,LOCAT,ONHAND FROM OPTMAST WHERE LOCAT=:0 AND OPTCODE=:1');
    Params[0].asstring := QOptSaleLOCAT.Asstring;
    Params[1].asstring := QOptSalTOptcode.Asstring;
    OPEN;
    if (Bof and Eof) then
      SFMain.RaiseException('ไม่มีรหัสสินค้านี้ในแฟ้มข้อมูล');
  end;
  if Query1.FieldByName('ONHAND').Asfloat < QOPTSalT.FieldByName('QTY').AsFloat then
    if MessageDlg('จำนวนที่เบิกมากกว่ายอดคงเหลือต้องการทำรายการต่อ ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      SFMain.RaiseException('ยอดคงเหลือติดลบ');
end;

procedure TDm_Sal.QOptSUpdAfterPost(DataSet: TDataSet);
begin
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QOptSUpd.Active then
      if (QOptSUpd.ApplyUpdates = 0) then
        QOptSUpd.CommitUpdates
      else
        raise Exception.Create(QOptSUpd.RowError.Message);
    if QCshTax.Active then
      if (QCshTax.ApplyUpdates = 0) then
        QCshTax.CommitUpdates
      else
        raise Exception.Create(QCshTax.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QOptSUpd.Edit;
    raise;
  end;
end;

procedure TDm_Sal.QArCloseNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QArClose);
  QArclose.Fieldbyname('Tsale').Asstring := 'C';
end;

procedure TDm_Sal.QArCloseUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Sal.QArCloseCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QArClose.CachedUpdates then
    QArCloseUpdateStatus.Value := UpdateStatusStr[QArClose.UpdateStatus];
end;

procedure TDm_Sal.QArCloseBeforePost(DataSet: TDataSet);
begin
  ClearAsString(QArClose);


   //ตรวจสอบยอดเงินที่ชำระแล้วกับราคาขาย
  if QArSale.Fieldbyname('Totprc').Asfloat > QArSale.Fieldbyname('Smpay').Asfloat then
    SFMain.RaiseException('ชำระเงินยังไม่ครบย้ายข้อมูลไม่ได้');

  if QArCloseContno.Asstring = '' then
  begin
    MessageBeep(0);
    if MessageDlg('ไม่มีข้อมูลที่จะบันทึก ยกเลิกการจัดเก็บ', mtError, [mbok], 0) = MrOk then
      QArClose.Cancel;
  end;

  if (QArCloseUpdateStatus.Value = 'Inserted') then
  begin
    QArCloseContno.Asstring := QArSale.FieldByName('Contno').Asstring;
    QArCloseLocat.Asstring := QArSale.FieldByName('Locat').Asstring;
    QArCloseTsale.Asstring := QArSale.FieldByName('Tsale').Asstring;
    QArCloseResvno.Asstring := QArSale.FieldByName('Resvno').Asstring;
    QArCloseCuscod.Asstring := QArSale.FieldByName('Cuscod').Asstring;
    QArCloseSnam.Asstring := QArSale.FieldByName('Snam').Asstring;
    QArCloseName1.Asstring := QArSale.FieldByName('Name1').Asstring;
    QArCloseName2.Asstring := QArSale.FieldByName('Name2').Asstring;
    QArCloseStrno.Asstring := QArSale.FieldByName('Strno').Asstring;
    QArCloseSdate.AsdateTime := QArSale.FieldByName('Sdate').AsDateTime;
    QArCloseTotprc.AsFloat := QArSale.FieldByName('TotPrc').AsFloat;
    QArCloseNPrice.AsFloat := QArSale.FieldByName('NPrice').AsFloat;
    QArCloseVatprc.AsFloat := QArSale.FieldByName('VatPrc').AsFloat;
    QArCloseNDawn.AsFloat := QArSale.FieldByName('NDawn').AsFloat;
    QArCloseVatdwn.AsFloat := QArSale.FieldByName('Vatdwn').AsFloat;
    QArCloseTotdwn.AsFloat := QArSale.FieldByName('Totdwn').AsFloat;
    QArCloseNkang.AsFloat := QArSale.FieldByName('NKang').AsFloat;
    QArCloseVKang.AsFloat := QArSale.FieldByName('VKang').AsFloat;
    QArCloseTKang.AsFloat := QArSale.FieldByName('TKang').AsFloat;
    QArCloseN_Netcst.AsFloat := QArSale.FieldByName('N_Netcst').AsFloat;
    QArCloseN_NetVat.AsFloat := QArSale.FieldByName('N_NetVat').AsFloat;
    QArCloseN_NetTot.AsFloat := QArSale.FieldByName('N_NetTot').AsFloat;
    QArCloseBillcoll.Asstring := QArSale.FieldByName('Billcoll').Asstring;
    QArCloseChecker.Asstring := QArSale.FieldByName('Checker').Asstring;
    QArCloseCLDate.AsDateTime := Date;
    QArCloseUserId.Asstring := SFMain.Xuser_Id;
    QArCloseInpDt.AsDatetime := Now;
  end;
end;

procedure TDm_Sal.QArCloseAfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QArClose.FieldByName('Contno').Asstring;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QArClose.Active then
      if (QArClose.ApplyUpdates = 0) then
        QArClose.CommitUpdates
      else
        raise Exception.Create(QArClose.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QArClose.Edit;
    raise;
  end;
  //
  with Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCLOSE WHERE CONTNO=:CONT AND TSALE=''C'' ');
    Params[0].Asstring := SCont;
    Open;
  end;
end;

procedure TDm_Sal.QArCloseAfterCancel(DataSet: TDataSet);
begin
  if QArclose.Active then
    QArclose.cancelUpdates;
  if QArSale.Active then
    QArSale.close;
end;

procedure TDm_Sal.QArresvCUSCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT CUSCOD FROM CUSTMAST WHERE CUSCOD = :VAR');
    Params[0].asstring := QArresvCUSCOD.Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสลูกค้า');
  end;
end;

procedure TDm_Sal.QArresvLOCATValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT LOCATCD,FLSALE FROM INVLOCAT WHERE LOCATCD = :VAR');
    Params[0].asstring := QArresvLOCAT.Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;

  if Query1.FieldByName('FLSale').Asstring <> 'T' then
    SFMain.RaiseException('สถานที่เก็บนี้ไม่อนุญาตให้มีการจอง');

  QArresvRESVDTValidate(Sender);
end;

procedure TDm_Sal.QArresvRECVCDValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT CODE FROM OFFICER WHERE CODE = :VAR');
    Params[0].asstring := QArresvRECVCD.Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสพนักงาน');
  end;
end;

procedure TDm_Sal.QArresvSALCODValidate(Sender: TField);
begin
  sfmain.Findnoexist('OFFICER', 'CODE', QArresvSALCOD.AsString);
end;

procedure TDm_Sal.QArresvTYPEValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT TYPECOD FROM SETTYPE WHERE TYPECOD=:XCOD');
    Params[0].asstring := QArresvTYPE.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสยี่ห้อ');
  end;
end;

procedure TDm_Sal.QArresvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Sal.QArresvMODELValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT MODELCOD FROM SETMODEL WHERE MODELCOD=:XCOD');
    Params[0].asstring := QArresvMODEL.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสรุ่น');
  end;
end;

procedure TDm_Sal.QArresvBAABValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT BAABCOD FROM SETBAAB WHERE BAABCOD=:XCOD');
    Params[0].asstring := QArresvBAAB.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบแบบรถในแฟ้มข้อมูล');
  end;
end;

procedure TDm_Sal.QArresvCOLORValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT COLORCOD FROM SETCOLOR WHERE COLORCOD=:XCOD');
    Params[0].asstring := QArresvCOLOR.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบสีในแฟ้มข้อมูล');
  end;
end;

procedure TDm_Sal.QArresvGRPCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT GCODE FROM SETGROUP WHERE GCODE=:XCOD');
    Params[0].asstring := QArresvGRPCOD.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสประเภทสินค้า');
  end;
end;

procedure TDm_Sal.QArresvSTATValidate(Sender: TField);
begin
  if (QArresvSTAT.Asstring <> 'N') and (QArresvSTAT.Asstring <> 'O') then
    SFMain.RaiseException('N:ใหม่ , O:เก่า');
end;

procedure TDm_Sal.QHirGothAfterOpen(DataSet: TDataSet);
begin
  QSetargar.Open;
end;

procedure TDm_Sal.QHirGothBeforeClose(DataSet: TDataSet);
begin
  QSetargar.Close;
end;

procedure TDm_Sal.QOptSalTAfterPost(DataSet: TDataSet);
var
  XNprice, Xtotvat, Xtotprc, XOptCst, XOptCvt, XOptCtot: double;
  bk: Tbookmark;
begin
  QOptSalT.DisableControls;
  bk := QOptSalT.GetBookmark;
  XNprice := 0;
  Xtotvat := 0;
  Xtotprc := 0;
  QOptSalT.First;
  while not QOptSalT.Eof do
  begin
    XNprice := XNprice + QOptSalT.FieldByName('NPrice').Asfloat;
    Xtotvat := Xtotvat + QOptSalT.FieldByName('TotVat').Asfloat;
    Xtotprc := Xtotprc + QOptSalT.FieldByName('Totprc').Asfloat;
    XOptCst := XOptCst + QOptSalT.FieldByName('Optcst').Asfloat;
    XOptCvt := XOptCvt + QOptSalT.FieldByName('OptCvt').Asfloat;
    XOptCtot := XOptCtot + QOptSalT.FieldByName('OptCtot').Asfloat;
    QOptSalT.Next;
  end;
  QOptSale.FieldByName('OPTPTOT').AsFloat := Xtotprc;
  QOptSale.FieldByName('OPTPVT').AsFloat := Xtotvat;
  QOptSale.FieldByName('OPTPRC').AsFloat := XNprice;
  QOptSale.FieldByName('OPTCST').AsFloat := XOptCst;
  QOptSale.FieldByName('OPTCVT').AsFloat := XOptCvt;
  QOptSale.FieldByName('OPTCTOT').AsFloat := XOptCtot;

  QOptSalT.EnableControls;
  QOptSalT.GotoBookMark(bk);
  QOptSalT.FreeBookmark(bk);
end;

procedure TDm_Sal.QArresvSTRNOValidate(Sender: TField);
begin
  if QArresvSTRNO.Asstring <> '' then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.add('SELECT STRNO FROM INVTRAN WHERE STRNO=:EDIT');
      Params[0].Asstring := QArresvSTRNO.Asstring;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรถหมายเลขถังนี้');
    end;
  end;
end;

procedure TDm_Sal.QTaxtranTAXNOValidate(Sender: TField);
var
  Lv, HF, LF: string;
begin
  if (QArresvUpdateStatus.Value = 'Inserted') and
    (XRunTax = 'N') then
  begin
    Lv := QArresv.FieldByName('Locat').Asstring;
    HF := 'H_TXRESV';
    LF := 'L_TXRESV';
    if Copy(QArresvTAXNO.Asstring, 1, 3) = Dm01.ChkDupRun(HF, LF, Lv) then
      SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');
  end;
end;

procedure TDm_Sal.QTaxtranUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate2 := True;
end;

procedure TDm_Sal.QFinSaleSTDPRCValidate(Sender: TField);
begin
  QFinSaleKEYIN.AsFloat := QFinSaleSTDPRC.AsFloat - QFinSaleKEYIN_UPAY.AsFloat;
end;

procedure TDm_Sal.QOptSaleCUSCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT CUSCOD FROM CUSTMAST WHERE CUSCOD = :VAR');
    Params[0].asstring := QOptSaleCUSCOD.Asstring;
    OPEN;
    if (Bof and Eof) then
      SFMain.RaiseException('ไม่พบรหัสลูกค้าในแฟ้มข้อมูล');
  end;
end;

procedure TDm_Sal.QFinSaleKEYIN_UPAYValidate(Sender: TField);
begin
  QFinSaleKEYIN.AsFloat := QFinSaleSTDPRC.AsFloat - QFinSaleKEYIN_UPAY.AsFloat;
end;

procedure TDm_Sal.QFinSaleTOT_UPAYValidate(Sender: TField);
//Var E: Extended;
begin
 { If QFinSaleInclvat.Asstring ='Y' Then
  begin
    QFinSaleTotFin.AsFloat  := QFinSaleTotPrc.Asfloat-QFinSaleTotDwn.Asfloat-QFinSaleTot_Upay.AsFloat;
    E := FRound(QFinSaleTotFin.AsFloat*QFinSaleVatrt.AsFloat/(100+QFinSaleVatrt.AsFloat),2);
    QFinSaleVatFin.AsFloat  := E;
    QFinSaleNFinan.AsFloat  := QFinSaleTotFin.AsFloat-E;
    QFinSaleTotFin.AsFloat  := QFinSaleNFinan.AsFloat+QFinSaleVatFin.AsFloat;
  end
  Else
  begin
    QFinSaleTotFin.AsFloat  := QFinSaleTotPrc.Asfloat-QFinSaleTotDwn.Asfloat-QFinSaleTot_Upay.AsFloat;
    E := FRound(QFinSaleTotfin.AsFloat*(QFinSaleVatrt.AsFloat)/100,2);
    QFinSaleVatFin.AsFloat  := E;
    QFinSaleNFinan.AsFloat  := QFinSaleTotFin.AsFloat;
    QFinSaleTotFin.AsFloat  := QFinSaleNFinan.AsFloat+QFinSaleVatFin.AsFloat;
  end;  }
end;

procedure TDm_Sal.QFinSaleUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Sal.QFinSaleDSCPRCValidate(Sender: TField);
var
  S: string;
  E, F: Extended;
begin
  if QFinSaleInclvat.Asstring = 'Y' then
  begin
    F := (QFinSaleKeyinDwn.AsFloat);
    E := FRound(F * QFinSaleVatrt.Asfloat / (100 + QFinSaleVatrt.Asfloat), 2);
    QFinSaleVatDwn.Asfloat := E;
    QFinSaleNdawn.Asfloat := F - E;
    QFinSaleTotDwn.Asfloat := QFinSaleVatDwn.Asfloat + QFinSaleNdawn.Asfloat;
  end
  else
  begin
    F := (QFinSaleKeyinDwn.AsFloat);
    E := FRound(F * (QFinSaleVatrt.Asfloat) / 100, 2);
    QFinSaleVatDwn.Asfloat := E;
    QFinSaleNdawn.Asfloat := F;
    QFinSaleTotDwn.Asfloat := QFinSaleNdawn.Asfloat + QFinSaleVatDwn.Asfloat;
  end;
  QFinSaleNETDWN.AsFloat := QFinSaleKEYINDWN.AsFloat - QFinSaleDSCPRC.AsFloat;
end;

procedure TDm_Sal.QAgnSaleAfterCancel(DataSet: TDataSet);
begin
  if QAgnSale.Active then
    QAgnSale.cancelUpdates;
  if QAgnSalT.Active then
    QAgnSalT.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDm_Sal.QAgnSaleAfterPost(DataSet: TDataSet);
var
  SCont, SLocat: string;
  SDT: Tdatetime;
begin
  SCont := QAgnSale.FieldByName('Contno').Asstring;
  SLocat := QAgnSale.FieldByName('Locat').Asstring;
  SDT := QAgnSale.Fieldbyname('sdate').asdatetime;
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QAgnSale.Active then
      if (QAgnSale.ApplyUpdates = 0) then
        QAgnSale.CommitUpdates
      else
        raise Exception.Create(QAgnSale.RowError.Message);
    if QAgnSalT.Active then
      if (QAgnSalT.ApplyUpdates = 0) then
        QAgnSalT.CommitUpdates
      else
        raise Exception.Create(QAgnSalT.RowError.Message);
    if QCshTax.Active then
      if (QCshTax.ApplyUpdates = 0) then
        QCshTax.CommitUpdates
      else
        raise Exception.Create(QCshTax.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QAgnSale.Edit;
    raise;
  end;
  //
  with QAgnSale do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM AR_INVOI WHERE CONTNO =:XCONT');
    params[0].AsString := SCont;
    open;
  end;
  with QAgnSalT do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM AR_TRANS WHERE CONTNO =:XCONT ');
    params[0].AsString := SCont;
    open;
  end;
end;

procedure TDm_Sal.QAgnSaleNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QAgnSale);
  Duplicate := False;
 { WITH QVatmast DO
  begin
     close;
     sql.clear;
     sql.add('SELECT * FROM Vatmast '+
             'WHERE :Var between Frmdate and Todate ');
     Params[0].asdate := Now;
     open;
  End;
   Xruntax :='Y'; }
  QAgnSale.Fieldbyname('LOCAT').Asstring := SFMain.Xlocat;
  QAgnSale.Fieldbyname('Sdate').Asdatetime := SFMain.CR_DATE;
  QAgnSale.Fieldbyname('INCLVAT').Asstring := 'Y';
  QAgnSale.Fieldbyname('ADDRNO').Asstring := '1';
  QAgnSale.Fieldbyname('Tsale').Asstring := 'A' {C = ขายสดหรือเชื่อ};
  QAgnSale.FieldByName('TYPESAL').AsString := 'D';
  QAgnSale.Fieldbyname('Smpay').AsFloat := 0;
  QAgnSale.Fieldbyname('Smchq').AsFloat := 0;
  QAgnSale.Fieldbyname('COMITN').AsFloat := 0;
  QAgnSale.Fieldbyname('Vatrt').Asfloat := QVatmast.FieldByname('VATRT').Asfloat;
  QAgnSaleUserId.Asstring := SFMain.Xuser_Id;
  QAgnSaleInpDt.AsDatetime := Now;
end;

procedure TDm_Sal.QAgnSaleBeforePost(DataSet: TDataSet);
begin
  ClearAsString(QAgnSale);
  if QAgnSaleCuscod.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
  //Check พนักงานขาย
  if QAgnSaleSalcod.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสพนักงานขาย');
  if QAgnSaleContno.Asstring = '' then
  begin
    MessageBeep(0);
    SFMain.RaiseException('ไม่มีเลขที่สัญญา');
  end;

  QAgnSalT.First;
  if (QAgnSaleUpdateStatus.Value = 'Inserted') then
  begin
    QAgnSaleSDateValidate(QAgnSaleSDate);
    //
    FAgnSal1.S := Dm_sal.QAgnSale.FieldByName('Contno').Asstring;
 //   FAgnSal1.Svtax := Dm_sal.QAgnSale.FieldByName('Taxno').Asstring;

    QAgnSalT.First;
    while not QAgnSalT.Eof do
    begin
      QAgnSalT.Edit;
      QAgnSalT.Fieldbyname('CONTNO').Asstring := QAgnSaleCONTNO.Asstring;
      QAgnSalT.Next;
    end;
  end;
end;

procedure TDm_Sal.QAgnSaleSDATEValidate(Sender: TField);
var
  HF, LF, HP, LP, LV, SQLTXT: string;
  DV: TdateTime;
begin
  with QVatmast do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM Vatmast ' +
      'WHERE :Var between Frmdate and Todate ');
    Params[0].asdate := QAgnSale.Fieldbyname('Sdate').Asdatetime;
    open;
  end;
  QAgnSale.Fieldbyname('Vatrt').Asfloat := QVatmast.FieldByname('VATRT').Asfloat;
  if QAgnSaleUpdateStatus.Value = 'Inserted' then
  begin
    LV := QAgnSale.FieldByName('Locat').Asstring;
    DV := QAgnSale.FieldByName('Sdate').Asdatetime;
    HF := 'H_AGENNO';
    LF := 'L_AGENNO';
    if QAgnSaleSDATE.AsDateTime > SFMain.Cr_Date then
      SFMain.RaiseException('ระบุวันที่ก่อนวันปัจุบัน...!');

    if XRunCont = 'Y' then
    begin
      SQLTXT := 'SELECT MAX(CONTNO) AS MAXNO FROM AR_INVOI WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(CONTNO,2,2)=:EDIT2 AND SUBSTR(CONTNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(CONTNO,7,2)=:EDIT4';
      QAgnSaleCONTNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV)
    end;
    QAgnSaleIssudt.Asdatetime := QAgnSaleSdate.AsDatetime;
    QAgnSaleCredtm.AsFloat := 0;
    QAgnSaleDuedt.Asdatetime := QAgnSaleSdate.AsDatetime;
    QAgnSaleLpayDT.Asdatetime := QAgnSaleSdate.AsDatetime;
  end;
end;

procedure TDm_Sal.QAgnSaleUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Sal.QAgnSaleBeforeDelete(DataSet: TDataSet);
begin
  if (QAgnSaleSmpay.Asfloat + QAgnSaleSmchq.Asfloat) > 0 then
    SFMain.RaiseException('มีการรับชำระเงินแล้ว');

  if QAgnSaleCrdAmt.Asfloat > 0 then
    SFMain.RaiseException('มีการออกใบลดหนี้แล้ว');

  QAgnSalT.First;
  while not QAgnSalT.Eof do
    QAgnSalT.Delete;
  {Mark Calcel TaxTran}
  with QCshTax do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM TAXTRAN ' +
      'WHERE LOCAT=:XLOCAT AND TAXNO=:XTAXNO');
    Params[0].asstring := QAgnSale.FieldByname('LOCAT').Asstring;
    Params[1].asstring := QAgnSale.FieldByName('TAXNO').Asstring;
    open;
    if not (QCshTax.bof and QCshTax.eof) then
    begin
      QCshTax.Edit;
      QCshTax.FieldByName('Flag').Asstring := 'C';
      QCshTax.FieldByName('CanDt').AsdateTime := Now;
      QCshTax.FieldByName('Flcancl').Asstring := SFMain.XUser_id;
       {QCshTax.FieldByName('SNAM').AsString  :='';
       QCshTax.FieldByName('NAME1').AsString :='';
       QCshTax.FieldByName('NAME2').AsString := '';
       QCshTax.FieldByName('VATRT').AsFloat := 0;
       QCshTax.FieldByName('NETAMT').AsFloat := 0;
       QCshTax.FieldByName('VATAMT').AsFloat :=0;
       QCshTax.FieldByName('TOTAMT').AsFloat := 0;}
      QCshTax.Post;
    end;
  end;
end;

procedure TDm_Sal.QAgnSalTAfterPost(DataSet: TDataSet);
var
  XKeyin, XNKeyin, XVKeyin, XTKeyin, XNprice, Xtotvat, Xtotprc: double;
  bk: Tbookmark;
begin
  QAgnSalT.DisableControls;
  bk := QAgnSalT.GetBookmark;
  XNprice := 0;
  Xtotvat := 0;
  Xtotprc := 0;
  XKeyin := 0;
  XNKeyin := 0;
  XVKeyin := 0;
  XTKeyin := 0;
  QAgnSalT.First;
  while not QAgnSalT.Eof do
  begin
    XNprice := XNprice + QAgnSalT.FieldByName('NPrice').Asfloat;
    Xtotvat := Xtotvat + QAgnSalT.FieldByName('Vatprc').Asfloat;
    Xtotprc := Xtotprc + QAgnSalT.FieldByName('Totprc').Asfloat;
    XKeyin := XKeyin + QAgnSalT.FieldByName('Keyin').Asfloat;
    XNKeyin := XNKeyin + QAgnSalT.FieldByName('NPrice').Asfloat;
    XVKeyin := XVKeyin + QAgnSalT.FieldByName('Vatprc').Asfloat;
    XTKeyin := XTKeyin + QAgnSalT.FieldByName('Totprc').Asfloat;
    QAgnSalT.Next;
  end;
  QAgnSale.FieldByName('TOTPRC').AsFloat := Xtotprc;
  QAgnSale.FieldByName('VATPRC').AsFloat := Xtotvat;
  QAgnSale.FieldByName('NPRICE').AsFloat := XNprice;
  QAgnSale.FieldByName('KEYIN').AsFloat := XKeyin;
  QAgnSale.FieldByName('NKEYIN').AsFloat := XNKeyin;
  QAgnSale.FieldByName('VKEYIN').AsFloat := XVKeyin;
  QAgnSale.FieldByName('TKEYIN').AsFloat := XTKeyin;

  QAgnSalT.EnableControls;
  QAgnSalT.GotoBookMark(bk);
  QAgnSalT.FreeBookmark(bk);
end;

procedure TDm_Sal.QAgnSalTBeforePost(DataSet: TDataSet);
var
  E: Double;
begin
  if QAgnSalT.FieldByName('CONTNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่สัญญา');

  if QAgnSaleInclvat.Asstring = 'Y' then
  begin
    E := FRound(QAgnSalT.Fieldbyname('Keyin').Asfloat * QAgnSale.Fieldbyname('Vatrt').Asfloat / (100 + QAgnSale.Fieldbyname('Vatrt').Asfloat), 2);
    QAgnSalT.Fieldbyname('VatPrc').Asfloat := E;
    QAgnSalT.Fieldbyname('Nprice').Asfloat := QAgnSalT.Fieldbyname('Keyin').Asfloat - E;
    QAgnSalT.Fieldbyname('TotPrc').Asfloat := QAgnSalT.Fieldbyname('VatPrc').Asfloat + QAgnSalT.Fieldbyname('NPrice').Asfloat;
  end
  else
  begin
    E := FRound(QAgnSalT.Fieldbyname('Keyin').Asfloat * (QAgnSale.Fieldbyname('Vatrt').Asfloat) / 100, 2);
    QAgnSalT.Fieldbyname('VatPrc').Asfloat := E;
    QAgnSalT.Fieldbyname('Nprice').Asfloat := QAgnSalT.Fieldbyname('Keyin').Asfloat;
    QAgnSalT.Fieldbyname('TotPrc').Asfloat := QAgnSalT.Fieldbyname('NPrice').Asfloat + QAgnSalT.Fieldbyname('VatPrc').Asfloat;
  end;
  QAgnSalT.Fieldbyname('NKeyin').Asfloat := QAgnSalT.FieldByName('NPrice').Asfloat;
  QAgnSalT.Fieldbyname('VKeyin').Asfloat := QAgnSalT.FieldByName('Vatprc').Asfloat;
  QAgnSalT.Fieldbyname('TKeyin').Asfloat := QAgnSalT.FieldByName('Totprc').Asfloat;
end;

procedure TDm_Sal.QAgnSalTNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QAgnSalT);
  QAgnSalT.Fieldbyname('Tsale').Asstring := QAgnSaleTsale.Asstring;
  QAgnSalT.Fieldbyname('Locat').Asstring := QAgnSaleLocat.Asstring;
  QAgnSalT.Fieldbyname('Contno').Asstring := QAgnSaleContno.Asstring;
  QAgnSalT.Fieldbyname('Vatrt').AsFloat := QAgnSaleVatrt.AsFloat;
  QAgnSalT.Fieldbyname('UserId').Asstring := SFMain.Xuser_Id;
  QAgnSalT.Fieldbyname('InpDt').AsDatetime := Now;
end;

procedure TDm_Sal.QAgnSUpdAfterPost(DataSet: TDataSet);
begin
  DM_Sec.HI_DBMS.StartTransaction;
  try
    if QAgnSUpd.Active then
      if (QAgnSUpd.ApplyUpdates = 0) then
        QAgnSUpd.CommitUpdates
      else
        raise Exception.Create(QAgnSUpd.RowError.Message);
    if QCshTax.Active then
      if (QCshTax.ApplyUpdates = 0) then
        QCshTax.CommitUpdates
      else
        raise Exception.Create(QCshTax.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    QAgnSUpd.Edit;
    raise;
  end;
end;

procedure TDm_Sal.QAgnSalTSTRNOValidate(Sender: TField);
begin
  with QInvtran do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM INVTRAN ' +
      'WHERE STRNO=:XSTRNO');
    Params[0].asstring := QAgnSalTStrno.Asstring;
    open;
    if (QInvtran.eof and QInvtran.bof) then
      SFMain.RaiseException('ไม่พบรถหมายเลขถังนี้')
    else
    begin
      if QInvtran.Fieldbyname('CRLocat').Asstring <> QAgnSaleLocat.Asstring then
        SFMain.RaiseException('สถานที่เปิดขายกับสถานที่เก็บรถไม่ใช่ที่เดียวกัน');
      {Check รถยึด}
      if QInvtran.Fieldbyname('CurStat').Asstring = 'Y' then
        SFMain.RaiseException('รถหมายเลขถังนี้เป็นรถยึด ');
      {Check ต้นทุน}
      if QInvtran.Fieldbyname('Netcost').asfloat = 0 then
        SFMain.RaiseException('ยังไม่บันทึกราคาต้นทุน '#13#10 + 'กรุณาไปบันทึกในระบบเจ้าหนี้');
      {Check การจอง}
      if QInvtran.Fieldbyname('Curstat').Asstring = 'R' then
        SFMain.RaiseException('รถหมายเลขถังนี้ถูกจองแล้ว ');
      {Check วันรับกับวันขาย}
    //  If QInvtran.Fieldbyname('RECVDT').AsDatetime>QAgnSaleSdate.AsDatetime Then
      //   SFMain.RaiseException('วันรับรถมากกว่าวันขาย');
      {Check สถานะขาย}
      if QInvtran.Fieldbyname('Flag').Asstring = 'C' then
        SFMain.RaiseException('รถหมายเลขถังนี้ถูกขายไปแล้ว '#13#13#10 + 'เลขสัญญา ' +
          QInvtran.Fieldbyname('Contno').Asstring)
      else
      begin
        QAgnSalTNcarcst.asfloat := QInvtran.Fieldbyname('Netcost').asfloat +
          QInvtran.Fieldbyname('Naddcost').asfloat;
      end;
    end;
  end;
end;

procedure TDm_Sal.QAgnSaleSALCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM OFFICER WHERE CODE=:XCODE');
    Params[0].asstring := QAgnSaleSalcod.Asstring;
    open;
    if (Query1.eof and Query1.bof) then
      SFMain.RaiseException('ไม่พบรหัสพนักงานขาย');
  end;
end;

procedure TDm_Sal.QAgnSaleLOCATValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT LOCATCD,FLSALE FROM INVLOCAT WHERE LOCATCD = :VAR');
    Params[0].asstring := QAgnSaleLOCAT.Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;

  if Query1.FieldByName('FLSale').Asstring <> 'T' then
    SFMain.RaiseException('สถานที่เก็บนี้ไม่อนุญาตให้มีการขาย');

  if QAgnSaleSdate.Asstring <> '' then
    QAgnSaleSdateValidate(Sender);
end;

procedure TDm_Sal.QAgnSaleCUSCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT CUSCOD FROM CUSTMAST WHERE CUSCOD=:V0');
    Params[0].asstring := QAgnSaleCuscod.Asstring;
    open;
    if (Eof and Bof) then
      SFMain.RaiseException('ไม่พบรหัสลูกค้าในแฟ้มประวัติ');
  end;
end;

procedure TDm_Sal.QAgnSaleCONTNOValidate(Sender: TField);
var
  HF, LF, LV: string;
begin
  if QAgnSaleUpdateStatus.Value = 'Inserted' then
  begin
    LV := QAgnSale.FieldByName('Locat').Asstring;
    HF := 'H_AGENNO';
    LF := 'L_AGENNO';

    if XRunCont = 'N' then
      if Copy(QAgnSaleCONTNO.Asstring, 1, 3) = Dm01.ChkDupRun(HF, LF, LV) then
        SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');

    with Query1 do
    begin
      Close;
      sql.clear;
      sql.add('SELECT LOCAT,CONTNO FROM HAR_INVO WHERE LOCAT=:0 AND CONTNO=:1');
      Params[0].asstring := QAgnSaleLOCAT.Asstring;
      Params[1].asstring := QAgnSaleCONTNO.Asstring;
      OPEN;
      if not (Bof and Eof) then
        SFMain.RaiseException('มีเลขที่สัญญานี้ในระบบแล้ว');
    end;
  end;
end;

procedure TDm_Sal.QAgnSaleCREDTMValidate(Sender: TField);
begin
  QAgnSaleDuedt.Asfloat := QAgnSaleSdate.Asdatetime + QAgnSaleCredtm.Asfloat;
end;

procedure TDm_Sal.QAgnSalTKEYINChange(Sender: TField);
var
  E: Double;
begin
  if Dm_Sal.QAgnSaleInclvat.Asstring = 'Y' then
  begin
    E := FRound(Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat * Dm_Sal.QAgnSaleVatrt.Asfloat / (100 + Dm_Sal.QAgnSaleVatrt.Asfloat), 2);
    Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat := E;
    Dm_Sal.QAgnSalT.Fieldbyname('Nprice').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat - E;
    Dm_Sal.QAgnSalT.Fieldbyname('TotPrc').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat + Dm_Sal.QAgnSalT.Fieldbyname('NPrice').Asfloat;
  end
  else
  begin
    E := FRound(Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat * (Dm_Sal.QAgnSaleVatrt.Asfloat) / 100, 2);
    Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat := E;
    Dm_Sal.QAgnSalT.Fieldbyname('Nprice').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat;
    Dm_Sal.QAgnSalT.Fieldbyname('TotPrc').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('NPrice').Asfloat + Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat;
  end;
end;

procedure TDm_Sal.QArresvRLCODEValidate(Sender: TField);
begin
 // Dm01.FindNoExist('REELOCAT','RLCODE',QArresvRLCODE.AsString);
end;

procedure TDm_Sal.QCshOptOPTCODEChange(Sender: TField);
var
  OptC, V, E: Double;
begin
  if (FCshsal.DataSource1.DataSet.State = DsInsert) then
  begin
    with Dm_Sal.Query1 do
    begin
      close;
      sql.Clear;
      sql.add('SELECT * FROM OPTMAST WHERE OPTCODE = :OPTCODE ' +
        'AND LOCAT = :LOCAT ');
      params[0].asstring := Dm_Sal.QCshOpt.Fieldbyname('OPtcode').Asstring;
      params[1].asstring := Dm_Sal.QCshOpt.Fieldbyname('LOCAT').Asstring;
      OPEN;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสอุปกรณ์นี้');
      if Dm_Sal.QCSHOPTUpdateStatus.Value = 'Inserted' then
        Dm_Sal.QCSHOPT.Edit;
      Dm_sal.QCshOpt.FieldByName('OPTNAME').AsString := Dm_sal.Query1.fieldbyname('OPTNAME').AsString;
      Dm_Sal.QCSHOPT.Fieldbyname('UPRICE').Asfloat := Dm_Sal.Query1.Fieldbyname('UNITCST').asfloat;
      Dm_Sal.QCSHOPT.FieldByname('UCOST').Asfloat := Dm_Sal.Query1.FieldByName('UNITCST').Asfloat;
    end;
  //
      {If Dm_Sal.QCshOptQty.Asfloat =0 Then
      SFMain.RaiseException('จำนวนขายเป็น 0');}

    if Dm_Sal.QCshSaleInclvat.Asstring = 'Y' then
    begin
      Dm_Sal.QCshOptTotPrc.Asfloat := Dm_Sal.QCshOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QCshOptQty.Asfloat;
      E := FRound(Dm_Sal.QCshOptTotPrc.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / (100 + Dm_Sal.QCshSaleVatrt.Asfloat), 2);
      Dm_Sal.QCshOptTotVat.Asfloat := E;
      Dm_Sal.QCshOptNPrice.Asfloat := Dm_Sal.QCshOptTotprc.Asfloat - Dm_Sal.QCshOptTotVat.Asfloat;

      Dm_Sal.QCshOptOptCTot.Asfloat := DM_Sal.QCshOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QCshOptQty.Asfloat;
      E := FRound(Dm_Sal.QCshOptOptCTot.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / (100 + Dm_Sal.QCshSaleVatrt.Asfloat), 2);
      Dm_Sal.QCshOptOptCVt.Asfloat := E;
      Dm_Sal.QCshOptOptCst.Asfloat := Dm_Sal.QCshOptOptCTot.Asfloat - Dm_Sal.QCshOptOptCVt.Asfloat;
    end
    else
    begin
      Dm_Sal.QCshOptNPrice.Asfloat := DM_Sal.QCshOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QCshOptQty.Asfloat;
      E := FRound(Dm_Sal.QCshOptNPrice.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / 100, 2);
      Dm_Sal.QCshOptTotVat.Asfloat := E;
      Dm_Sal.QCshOptTotPrc.Asfloat := Dm_Sal.QCshOptTotVat.Asfloat + Dm_Sal.QCshOptNPrice.Asfloat;

      Dm_Sal.QCshOptOptCst.Asfloat := DM_Sal.QCshOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QCshOptQty.Asfloat;
      E := FRound(Dm_Sal.QCshOptOptCst.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / 100, 2);
      Dm_Sal.QCshOptOptCVt.Asfloat := E;
      Dm_Sal.QCshOptOptCTot.Asfloat := Dm_Sal.QCshOptOptCVt.Asfloat + Dm_Sal.QCshOptOptCst.Asfloat;
    end;
  end;
end;

procedure TDm_Sal.QFinOptOPTCODEChange(Sender: TField);
var
  OptC, V, E: Double;
begin
  if (FFinSal1.DataSource1.DataSet.State = DsInsert) then
  begin
    with Dm_Sal.Query1 do
    begin
      CLOSE;
      SQL.CLEAR;
      SQL.ADD('SELECT * FROM OPTMAST WHERE OPTCODE = :OPTCODE ' +
        'AND LOCAT = :LOCAT ');
      PARAMS[0].ASSTRING := Dm_Sal.QFinOpt.Fieldbyname('OPtcode').Asstring;
      PARAMS[1].ASSTRING := Dm_Sal.QFinOpt.Fieldbyname('LOCAT').Asstring;
      OPEN;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสอุปกรณ์นี้');
      if Dm_Sal.QFINOPTUpdateStatus.Value = 'Inserted' then
        Dm_Sal.QFINOPT.Edit;
      Dm_sal.QFinOpt.FieldByName('OPTNAME').AsString := Dm_sal.Query1.fieldbyname('OPTNAME').AsString;
      Dm_Sal.QFINOPT.Fieldbyname('UPRICE').Asfloat := Dm_Sal.Query1.Fieldbyname('UNITCST').asfloat;
      Dm_Sal.QFINOPT.FieldByname('UCOST').Asfloat := Dm_Sal.Query1.FieldByName('UNITCST').Asfloat;
    end;
    //
    {If Dm_Sal.QFinOptQty.Asfloat =0 Then
    SFMain.RaiseException('จำนวนขายเป็น 0'); }
    if Dm_Sal.QFinSaleInclvat.Asstring = 'Y' then
    begin
      Dm_sal.QFinOpt.Edit;
      Dm_Sal.QFinOptTotPrc.Asfloat := Dm_Sal.QFinOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QFinOptQty.Asfloat;
      E := FRound(Dm_Sal.QFinOptTotPrc.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / (100 + Dm_Sal.QFinSaleVatrt.Asfloat), 2);
      Dm_Sal.QFinOptTotVat.Asfloat := E;
      Dm_Sal.QFinOptNPrice.Asfloat := Dm_Sal.QFinOptTotprc.Asfloat - Dm_Sal.QFinOptTotVat.Asfloat;

      Dm_Sal.QFinOptOptCTot.Asfloat := DM_Sal.QFinOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QFinOptQty.Asfloat;
      E := FRound(Dm_Sal.QFinOptOptCTot.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / (100 + Dm_Sal.QFinSaleVatrt.Asfloat), 2);
      Dm_Sal.QFinOptOptCVt.Asfloat := E;
      Dm_Sal.QFinOptOptCst.Asfloat := Dm_Sal.QFinOptOptCTot.Asfloat - Dm_Sal.QFinOptOptCVt.Asfloat;
    end
    else
    begin
      Dm_Sal.QFinOptNPrice.Asfloat := DM_Sal.QFinOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QFinOptQty.Asfloat;
      E := FRound(Dm_Sal.QFinOptNPrice.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / 100, 2);
      Dm_Sal.QFinOptTotVat.Asfloat := E;
      Dm_Sal.QFinOptTotPrc.Asfloat := Dm_Sal.QFinOptTotVat.Asfloat + Dm_Sal.QFinOptNPrice.Asfloat;

      Dm_Sal.QFinOptOptCst.Asfloat := DM_Sal.QFinOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QFinOptQty.Asfloat;
      E := FRound(Dm_Sal.QFinOptOptCst.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / 100, 2);
      Dm_Sal.QFinOptOptCVt.Asfloat := E;
      Dm_Sal.QFinOptOptCTot.Asfloat := Dm_Sal.QFinOptOptCVt.Asfloat + Dm_Sal.QFinOptOptCst.Asfloat;
    end;
  end;
end;

procedure TDm_Sal.QOptSalTOPTCODEChange(Sender: TField);
var
  E: Double;
begin
  if (FOptSal1.DataSource1.DataSet.State = DsInsert) then
  begin
    with Dm_Sal.Query1 do
    begin
      CLOSE;
      SQL.CLEAR;
      SQL.ADD('SELECT * FROM OPTMAST WHERE OPTCODE = :OPTCODE ' +
        'AND LOCAT = :LOCAT ');
      PARAMS[0].ASSTRING := Dm_Sal.QOptSalT.Fieldbyname('OPtcode').Asstring;
      PARAMS[1].ASSTRING := Dm_Sal.QOptSalT.Fieldbyname('LOCAT').Asstring;
      OPEN;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสอุปกรณ์นี้');
      if DM_Sal.QOptSalTUpdateStatus.Value = 'Inserted' then
        DM_Sal.QOptSalT.Edit;
      DM_Sal.QOptSalT.FieldByname('Uprice').AsFloat := Dm_Sal.Query1.fieldbyname('UNITPRC').AsFloat;
      DM_Sal.QOptSalT.FieldByname('UCOST').Asfloat := Dm_Sal.Query1.FieldByName('UNITCST').Asfloat;
    end;
        //
    if Dm_Sal.QOptSalTQty.Asfloat = 0 then
      SFMain.RaiseException('จำนวนขายเป็น 0 ไม่ได้');
    if Dm_Sal.Query1.Fieldbyname('ONHAND').AsFloat < Dm_Sal.QOptSalTQTY.Asfloat then
      if MessageDlg('จำนวนที่เบิกมากกว่ายอดคงเหลือต้องการทำรายการต่อ ',
        mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        SFMain.RaiseException('ยอดคงเหลือติดลบ');
    if Dm_Sal.QOptSaleInclvat.Asstring = 'Y' then
    begin
      Dm_Sal.QOptSalTTotPrc.Asfloat := DM_Sal.QOptSalT.FieldByname('Uprice').AsFloat * Dm_Sal.QOptSalTQty.Asfloat;
      E := FRound(Dm_Sal.QOptSalTTotPrc.Asfloat * Dm_Sal.QOptSaleVatrt.Asfloat / (100 + Dm_Sal.QOptSaleVatrt.Asfloat), 2);
      Dm_Sal.QOptSalTTotVat.Asfloat := E;
      Dm_Sal.QOptSalTNPrice.Asfloat := Dm_Sal.QOptSalTTotprc.Asfloat - Dm_Sal.QOptSalTTotVat.Asfloat;

      Dm_Sal.QOptSalTOptCTot.Asfloat := DM_Sal.QOptSalT.FieldByname('UCOST').Asfloat * Dm_Sal.QOptSalTQty.Asfloat;
      E := FRound(Dm_Sal.QOptSalTOptCTot.Asfloat * Dm_Sal.QOptSaleVatrt.Asfloat / (100 + Dm_Sal.QOptSaleVatrt.Asfloat), 2);
      Dm_Sal.QOptSalTOptCVt.Asfloat := E;
      Dm_Sal.QOptSalTOptCst.Asfloat := Dm_Sal.QOptSalTOptCTot.Asfloat - Dm_Sal.QOptSalTOptCVt.Asfloat;
    end
    else
    begin
      Dm_Sal.QOptSalTNPrice.Asfloat := DM_Sal.QOptSalT.FieldByname('Uprice').AsFloat * Dm_Sal.QOptSalTQty.Asfloat;
      E := FRound(Dm_Sal.QOptSalTNPrice.Asfloat * Dm_Sal.QOptSaleVatrt.Asfloat / 100, 2);
      Dm_Sal.QOptSalTTotVat.Asfloat := E;
      Dm_Sal.QOptSalTTotPrc.Asfloat := Dm_Sal.QOptSalTTotVat.Asfloat + Dm_Sal.QOptSalTNPrice.Asfloat;

      Dm_Sal.QOptSalTOptCst.Asfloat := DM_Sal.QOptSalT.FieldByname('UCOST').Asfloat * Dm_Sal.QOptSalTQty.Asfloat;
      E := FRound(Dm_Sal.QOptSalTOptCst.Asfloat * Dm_Sal.QOptSaleVatrt.Asfloat / 100, 2);
      Dm_Sal.QOptSalTOptCVt.Asfloat := E;
      Dm_Sal.QOptSalTOptCTot.Asfloat := Dm_Sal.QOptSalTOptCVt.Asfloat + Dm_Sal.QOptSalTOptCst.Asfloat;
    end;
  end;
end;

procedure TDm_Sal.QOptSalTQTYChange(Sender: TField);
var
  E: Double;
begin
  if Dm_Sal.QOptSaleInclvat.Asstring = 'Y' then
  begin
    Dm_Sal.QOptSalTTotPrc.Asfloat := DM_Sal.QOptSalT.FieldByname('Uprice').AsFloat * Dm_Sal.QOptSalTQty.Asfloat;
    E := FRound(Dm_Sal.QOptSalTTotPrc.Asfloat * Dm_Sal.QOptSaleVatrt.Asfloat / (100 + Dm_Sal.QOptSaleVatrt.Asfloat), 2);
    Dm_Sal.QOptSalTTotVat.Asfloat := E;
    Dm_Sal.QOptSalTNPrice.Asfloat := Dm_Sal.QOptSalTTotprc.Asfloat - Dm_Sal.QOptSalTTotVat.Asfloat;

    Dm_Sal.QOptSalTOptCTot.Asfloat := DM_Sal.QOptSalT.FieldByname('UCOST').Asfloat * Dm_Sal.QOptSalTQty.Asfloat;
    E := FRound(Dm_Sal.QOptSalTOptCTot.Asfloat * Dm_Sal.QOptSaleVatrt.Asfloat / (100 + Dm_Sal.QOptSaleVatrt.Asfloat), 2);
    Dm_Sal.QOptSalTOptCVt.Asfloat := E;
    Dm_Sal.QOptSalTOptCst.Asfloat := Dm_Sal.QOptSalTOptCTot.Asfloat - Dm_Sal.QOptSalTOptCVt.Asfloat;
  end
  else
  begin
    Dm_Sal.QOptSalTNPrice.Asfloat := DM_Sal.QOptSalT.FieldByname('Uprice').AsFloat * Dm_Sal.QOptSalTQty.Asfloat;
    E := FRound(Dm_Sal.QOptSalTNPrice.Asfloat * Dm_Sal.QOptSaleVatrt.Asfloat / 100, 2);
    Dm_Sal.QOptSalTTotVat.Asfloat := E;
    Dm_Sal.QOptSalTTotPrc.Asfloat := Dm_Sal.QOptSalTTotVat.Asfloat + Dm_Sal.QOptSalTNPrice.Asfloat;

    Dm_Sal.QOptSalTOptCst.Asfloat := DM_Sal.QOptSalT.FieldByname('UCOST').Asfloat * Dm_Sal.QOptSalTQty.Asfloat;
    E := FRound(Dm_Sal.QOptSalTOptCst.Asfloat * Dm_Sal.QOptSaleVatrt.Asfloat / 100, 2);
    Dm_Sal.QOptSalTOptCVt.Asfloat := E;
    Dm_Sal.QOptSalTOptCTot.Asfloat := Dm_Sal.QOptSalTOptCVt.Asfloat + Dm_Sal.QOptSalTOptCst.Asfloat;
  end;
end;

procedure TDm_Sal.QCshOptQTYChange(Sender: TField);
var
  E: Double;
begin
  if Dm_Sal.QCshSaleInclvat.Asstring = 'Y' then
  begin
    Dm_Sal.QCshOptTotPrc.Asfloat := Dm_Sal.QCshOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QCshOptQty.Asfloat;
    E := FRound(Dm_Sal.QCshOptTotPrc.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / (100 + Dm_Sal.QCshSaleVatrt.Asfloat), 2);
    Dm_Sal.QCshOptTotVat.Asfloat := E;
    Dm_Sal.QCshOptNPrice.Asfloat := Dm_Sal.QCshOptTotprc.Asfloat - Dm_Sal.QCshOptTotVat.Asfloat;

    Dm_Sal.QCshOptOptCTot.Asfloat := DM_Sal.QCshOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QCshOptQty.Asfloat;
    E := FRound(Dm_Sal.QCshOptOptCTot.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / (100 + Dm_Sal.QCshSaleVatrt.Asfloat), 2);
    Dm_Sal.QCshOptOptCVt.Asfloat := E;
    Dm_Sal.QCshOptOptCst.Asfloat := Dm_Sal.QCshOptOptCTot.Asfloat - Dm_Sal.QCshOptOptCVt.Asfloat;
  end
  else
  begin
    Dm_Sal.QCshOptNPrice.Asfloat := DM_Sal.QCshOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QCshOptQty.Asfloat;
    E := FRound(Dm_Sal.QCshOptNPrice.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / 100, 2);
    Dm_Sal.QCshOptTotVat.Asfloat := E;
    Dm_Sal.QCshOptTotPrc.Asfloat := Dm_Sal.QCshOptTotVat.Asfloat + Dm_Sal.QCshOptNPrice.Asfloat;

    Dm_Sal.QCshOptOptCst.Asfloat := DM_Sal.QCshOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QCshOptQty.Asfloat;
    E := FRound(Dm_Sal.QCshOptOptCst.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / 100, 2);
    Dm_Sal.QCshOptOptCVt.Asfloat := E;
    Dm_Sal.QCshOptOptCTot.Asfloat := Dm_Sal.QCshOptOptCVt.Asfloat + Dm_Sal.QCshOptOptCst.Asfloat;
  end;
end;

procedure TDm_Sal.QFinOptQTYChange(Sender: TField);
var
  E: Double;
begin
  if Dm_Sal.QFinSaleInclvat.Asstring = 'Y' then
  begin
    Dm_sal.QFinOpt.Edit;
    Dm_Sal.QFinOptTotPrc.Asfloat := Dm_Sal.QFinOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QFinOptQty.Asfloat;
    E := FRound(Dm_Sal.QFinOptTotPrc.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / (100 + Dm_Sal.QFinSaleVatrt.Asfloat), 2);
    Dm_Sal.QFinOptTotVat.Asfloat := E;
    Dm_Sal.QFinOptNPrice.Asfloat := Dm_Sal.QFinOptTotprc.Asfloat - Dm_Sal.QFinOptTotVat.Asfloat;

    Dm_Sal.QFinOptOptCTot.Asfloat := DM_Sal.QFinOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QFinOptQty.Asfloat;
    E := FRound(Dm_Sal.QFinOptOptCTot.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / (100 + Dm_Sal.QFinSaleVatrt.Asfloat), 2);
    Dm_Sal.QFinOptOptCVt.Asfloat := E;
    Dm_Sal.QFinOptOptCst.Asfloat := Dm_Sal.QFinOptOptCTot.Asfloat - Dm_Sal.QFinOptOptCVt.Asfloat;
  end
  else
  begin
    Dm_Sal.QFinOptNPrice.Asfloat := DM_Sal.QFinOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QFinOptQty.Asfloat;
    E := FRound(Dm_Sal.QFinOptNPrice.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / 100, 2);
    Dm_Sal.QFinOptTotVat.Asfloat := E;
    Dm_Sal.QFinOptTotPrc.Asfloat := Dm_Sal.QFinOptTotVat.Asfloat + Dm_Sal.QFinOptNPrice.Asfloat;

    Dm_Sal.QFinOptOptCst.Asfloat := DM_Sal.QFinOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QFinOptQty.Asfloat;
    E := FRound(Dm_Sal.QFinOptOptCst.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / 100, 2);
    Dm_Sal.QFinOptOptCVt.Asfloat := E;
    Dm_Sal.QFinOptOptCTot.Asfloat := Dm_Sal.QFinOptOptCVt.Asfloat + Dm_Sal.QFinOptOptCst.Asfloat;
  end;
end;

procedure TDm_Sal.QAgnSalTVATRTValidate(Sender: TField);
var
  E: Double;
begin
  if Dm_Sal.QAgnSaleInclvat.Asstring = 'Y' then
  begin
    E := FRound(Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat * Dm_Sal.QAgnSaleVatrt.Asfloat / (100 + Dm_Sal.QAgnSaleVatrt.Asfloat), 2);
    Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat := E;
    Dm_Sal.QAgnSalT.Fieldbyname('Nprice').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat - E;
    Dm_Sal.QAgnSalT.Fieldbyname('TotPrc').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat + Dm_Sal.QAgnSalT.Fieldbyname('NPrice').Asfloat;
  end
  else
  begin
    E := FRound(Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat * (Dm_Sal.QAgnSaleVatrt.Asfloat) / 100, 2);
    Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat := E;
    Dm_Sal.QAgnSalT.Fieldbyname('Nprice').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat;
    Dm_Sal.QAgnSalT.Fieldbyname('TotPrc').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('NPrice').Asfloat + Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat;
  end;
end;

procedure TDm_Sal.QFinSUpdTAXNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT LOCAT,TAXNO FROM TAXTRAN WHERE LOCAT=:0 AND TAXNO=:1');
    Params[0].asstring := QFinSUpdLOCAT.Asstring;
    Params[1].asstring := QFinSUpdTAXNO.Asstring;
    OPEN;
    if not (Bof and Eof) then
      SFMain.RaiseException('มีเลขที่ใบกำกับในระบบแล้ว');
  end;
end;

procedure TDm_Sal.QCshSUpdTAXNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT LOCAT,TAXNO FROM TAXTRAN WHERE LOCAT=:0 AND TAXNO=:1');
    Params[0].asstring := QCshSUpdLOCAT.Asstring;
    Params[1].asstring := QCshSUpdTAXNO.Asstring;
    OPEN;
    if not (Bof and Eof) then
      SFMain.RaiseException('มีเลขที่ใบกำกับในระบบแล้ว');
  end;
end;

procedure TDm_Sal.QAgnSUpdTAXNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT LOCAT,TAXNO FROM TAXTRAN WHERE LOCAT=:0 AND TAXNO=:1');
    Params[0].asstring := QAgnSUpdLOCAT.Asstring;
    Params[1].asstring := QAgnSUpdTAXNO.Asstring;
    OPEN;
    if not (Bof and Eof) then
      SFMain.RaiseException('มีเลขที่ใบกำกับในระบบแล้ว');
  end;
end;

procedure TDm_Sal.QArresvFINCODValidate(Sender: TField);
begin
  sfmain.Findnoexist('FINMAST', 'FINCODE', QArresvFINCOD.AsString);
end;

procedure TDm_Sal.QArresvOFFCODEValidate(Sender: TField);
begin
  sfmain.Findnoexist('OFFICER', 'CODE', QArresvOFFCODE.AsString);
end;

procedure TDm_Sal.QFinOptUPRICEValidate(Sender: TField);
var
  E: Double;
begin
  if Dm_Sal.QFinSaleInclvat.Asstring = 'Y' then
  begin
    Dm_sal.QFinOpt.Edit;
    Dm_Sal.QFinOptTotPrc.Asfloat := Dm_Sal.QFinOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QFinOptQty.Asfloat;
    E := FRound(Dm_Sal.QFinOptTotPrc.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / (100 + Dm_Sal.QFinSaleVatrt.Asfloat), 2);
    Dm_Sal.QFinOptTotVat.Asfloat := E;
    Dm_Sal.QFinOptNPrice.Asfloat := Dm_Sal.QFinOptTotprc.Asfloat - Dm_Sal.QFinOptTotVat.Asfloat;

    Dm_Sal.QFinOptOptCTot.Asfloat := DM_Sal.QFinOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QFinOptQty.Asfloat;
    E := FRound(Dm_Sal.QFinOptOptCTot.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / (100 + Dm_Sal.QFinSaleVatrt.Asfloat), 2);
    Dm_Sal.QFinOptOptCVt.Asfloat := E;
    Dm_Sal.QFinOptOptCst.Asfloat := Dm_Sal.QFinOptOptCTot.Asfloat - Dm_Sal.QFinOptOptCVt.Asfloat;
  end
  else
  begin
    Dm_Sal.QFinOptNPrice.Asfloat := DM_Sal.QFinOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QFinOptQty.Asfloat;
    E := FRound(Dm_Sal.QFinOptNPrice.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / 100, 2);
    Dm_Sal.QFinOptTotVat.Asfloat := E;
    Dm_Sal.QFinOptTotPrc.Asfloat := Dm_Sal.QFinOptTotVat.Asfloat + Dm_Sal.QFinOptNPrice.Asfloat;

    Dm_Sal.QFinOptOptCst.Asfloat := DM_Sal.QFinOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QFinOptQty.Asfloat;
    E := FRound(Dm_Sal.QFinOptOptCst.Asfloat * Dm_Sal.QFinSaleVatrt.Asfloat / 100, 2);
    Dm_Sal.QFinOptOptCVt.Asfloat := E;
    Dm_Sal.QFinOptOptCTot.Asfloat := Dm_Sal.QFinOptOptCVt.Asfloat + Dm_Sal.QFinOptOptCst.Asfloat;
  end;
end;

procedure TDm_Sal.QCshOptUPRICEValidate(Sender: TField);
var
  E: Double;
begin
  if Dm_Sal.QCshSaleInclvat.Asstring = 'Y' then
  begin
    Dm_Sal.QCshOptTotPrc.Asfloat := Dm_Sal.QCshOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QCshOptQty.Asfloat;
    E := FRound(Dm_Sal.QCshOptTotPrc.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / (100 + Dm_Sal.QCshSaleVatrt.Asfloat), 2);
    Dm_Sal.QCshOptTotVat.Asfloat := E;
    Dm_Sal.QCshOptNPrice.Asfloat := Dm_Sal.QCshOptTotprc.Asfloat - Dm_Sal.QCshOptTotVat.Asfloat;

    Dm_Sal.QCshOptOptCTot.Asfloat := DM_Sal.QCshOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QCshOptQty.Asfloat;
    E := FRound(Dm_Sal.QCshOptOptCTot.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / (100 + Dm_Sal.QCshSaleVatrt.Asfloat), 2);
    Dm_Sal.QCshOptOptCVt.Asfloat := E;
    Dm_Sal.QCshOptOptCst.Asfloat := Dm_Sal.QCshOptOptCTot.Asfloat - Dm_Sal.QCshOptOptCVt.Asfloat;
  end
  else
  begin
    Dm_Sal.QCshOptNPrice.Asfloat := DM_Sal.QCshOpt.FieldByname('Uprice').AsFloat * Dm_Sal.QCshOptQty.Asfloat;
    E := FRound(Dm_Sal.QCshOptNPrice.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / 100, 2);
    Dm_Sal.QCshOptTotVat.Asfloat := E;
    Dm_Sal.QCshOptTotPrc.Asfloat := Dm_Sal.QCshOptTotVat.Asfloat + Dm_Sal.QCshOptNPrice.Asfloat;

    Dm_Sal.QCshOptOptCst.Asfloat := DM_Sal.QCshOpt.FieldByname('UCOST').Asfloat * Dm_Sal.QCshOptQty.Asfloat;
    E := FRound(Dm_Sal.QCshOptOptCst.Asfloat * Dm_Sal.QCshSaleVatrt.Asfloat / 100, 2);
    Dm_Sal.QCshOptOptCVt.Asfloat := E;
    Dm_Sal.QCshOptOptCTot.Asfloat := Dm_Sal.QCshOptOptCVt.Asfloat + Dm_Sal.QCshOptOptCst.Asfloat;
  end;
end;

end.

