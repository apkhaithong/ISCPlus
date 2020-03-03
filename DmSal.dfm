object Dm_Sal: TDm_Sal
  OldCreateOrder = False
  Height = 450
  Width = 684
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 84
    Top = 279
  end
  object SoArresv: TDataSource
    DataSet = QArresv
    Left = 87
    Top = 9
  end
  object QInvResv: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM INVTRAN')
    Left = 28
    Top = 54
  end
  object SoInvResv: TDataSource
    DataSet = QInvResv
    Left = 84
    Top = 54
  end
  object QVatmast: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'select * from vatmast')
    Left = 28
    Top = 189
  end
  object QArresv: TFDQuery
    BeforePost = QArresvBeforePost
    AfterPost = QArresvAfterPost
    AfterCancel = QArresvAfterCancel
    BeforeDelete = QArresvBeforeDelete
    AfterDelete = QArresvAfterPost
    OnCalcFields = QArresvCalcFields
    OnNewRecord = QArresvNewRecord
    CachedUpdates = True
    OnUpdateError = QArresvUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARRESV WHERE RESVNO='#39#39)
    Left = 28
    Top = 9
    object QArresvRESVNO: TStringField
      FieldName = 'RESVNO'
      OnValidate = QArresvRESVNOValidate
      Size = 12
    end
    object QArresvLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QArresvLOCATValidate
      Size = 5
    end
    object QArresvRESVDT: TDateField
      FieldName = 'RESVDT'
      OnValidate = QArresvRESVDTValidate
    end
    object QArresvSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QArresvCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = QArresvCUSCODValidate
      Size = 12
    end
    object QArresvGRPCOD: TStringField
      FieldName = 'GRPCOD'
      OnValidate = QArresvGRPCODValidate
      Size = 3
    end
    object QArresvTYPE: TStringField
      FieldName = 'TYPE'
      OnValidate = QArresvTYPEValidate
      Size = 12
    end
    object QArresvBAAB: TStringField
      FieldName = 'BAAB'
      OnValidate = QArresvBAABValidate
    end
    object QArresvMODEL: TStringField
      FieldName = 'MODEL'
      OnValidate = QArresvMODELValidate
    end
    object QArresvCOLOR: TStringField
      FieldName = 'COLOR'
      OnValidate = QArresvCOLORValidate
    end
    object QArresvCC: TFloatField
      FieldName = 'CC'
    end
    object QArresvSTAT: TStringField
      FieldName = 'STAT'
      OnValidate = QArresvSTATValidate
      Size = 1
    end
    object QArresvSALCOD: TStringField
      FieldName = 'SALCOD'
      OnValidate = QArresvSALCODValidate
      Size = 8
    end
    object QArresvVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object QArresvPRICE: TFloatField
      FieldName = 'PRICE'
      OnValidate = QArresvRESPAYValidate
      DisplayFormat = '#,##0.00'
    end
    object QArresvRESPAY: TFloatField
      FieldName = 'RESPAY'
      OnValidate = QArresvRESPAYValidate
      DisplayFormat = '#,##0.00'
    end
    object QArresvBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QArresvSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
    end
    object QArresvSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
    end
    object QArresvRECVDUE: TDateField
      FieldName = 'RECVDUE'
    end
    object QArresvSTRNO: TStringField
      FieldName = 'STRNO'
      OnValidate = QArresvSTRNOValidate
    end
    object QArresvISSUNO: TStringField
      FieldName = 'ISSUNO'
      Size = 12
    end
    object QArresvRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object QArresvRECVCD: TStringField
      FieldName = 'RECVCD'
      OnValidate = QArresvRECVCDValidate
      Size = 8
    end
    object QArresvTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QArresvTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QArresvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QArresvREQNO: TStringField
      FieldName = 'REQNO'
      Size = 12
    end
    object QArresvREQLOCAT: TStringField
      FieldName = 'REQLOCAT'
      Size = 5
    end
    object QArresvPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QArresvINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QArresvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QArresvUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QArresvFLCANCLE: TStringField
      FieldName = 'FLCANCLE'
      FixedChar = True
      Size = 1
    end
    object QArresvFLID: TStringField
      FieldName = 'FLID'
      FixedChar = True
      Size = 8
    end
    object QArresvFLDT: TDateTimeField
      FieldName = 'FLDT'
    end
    object QArresvFLRESON: TStringField
      FieldName = 'FLRESON'
      FixedChar = True
      Size = 5
    end
    object QArresvTRESVNO: TStringField
      FieldName = 'TRESVNO'
      FixedChar = True
      Size = 12
    end
    object QArresvRLCODE: TStringField
      FieldName = 'RLCODE'
      OnValidate = QArresvRLCODEValidate
      FixedChar = True
      Size = 5
    end
    object QArresvTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QArresvFINCOD: TStringField
      FieldName = 'FINCOD'
      OnValidate = QArresvFINCODValidate
      Size = 8
    end
    object QArresvOFFCODE: TStringField
      FieldName = 'OFFCODE'
      OnValidate = QArresvOFFCODEValidate
      FixedChar = True
      Size = 12
    end
    object QArresvCALLSTAT: TStringField
      FieldName = 'CALLSTAT'
      FixedChar = True
      Size = 1
    end
    object QArresvDATING: TDateField
      FieldName = 'DATING'
    end
    object QArresvDOCSTAT: TStringField
      FieldName = 'DOCSTAT'
      FixedChar = True
      Size = 1
    end
    object QArresvCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      FixedChar = True
      Size = 12
    end
    object QArresvCRDTXDT: TDateField
      FieldName = 'CRDTXDT'
    end
    object QArresvCRDAMT: TFloatField
      FieldName = 'CRDAMT'
    end
    object QArresvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object QArresvREFRESVNO: TStringField
      FieldName = 'REFRESVNO'
      FixedChar = True
      Size = 12
    end
  end
  object QCustRes: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'select snam,name1,name2,addrno  from custmast')
    Left = 84
    Top = 189
  end
  object QTaxtran: TFDQuery
    BeforePost = QTaxtranBeforePost
    OnCalcFields = QTaxtranCalcFields
    OnNewRecord = QTaxtranNewRecord
    CachedUpdates = True
    OnUpdateError = QTaxtranUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 28
    Top = 99
    object QTaxtranLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QTaxtranTAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QTaxtranTAXNOValidate
      Size = 12
    end
    object QTaxtranTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QTaxtranTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QTaxtranCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QTaxtranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QTaxtranSNAM: TStringField
      FieldName = 'SNAM'
      Size = 12
    end
    object QTaxtranNAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object QTaxtranNAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object QTaxtranSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QTaxtranREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QTaxtranREFDT: TDateField
      FieldName = 'REFDT'
    end
    object QTaxtranVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QTaxtranNETAMT: TFloatField
      FieldName = 'NETAMT'
    end
    object QTaxtranVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QTaxtranTOTAMT: TFloatField
      FieldName = 'TOTAMT'
    end
    object QTaxtranDESCP: TStringField
      FieldName = 'DESCP'
      Size = 60
    end
    object QTaxtranFPAR: TStringField
      FieldName = 'FPAR'
      Size = 1
    end
    object QTaxtranFPAY: TFloatField
      FieldName = 'FPAY'
    end
    object QTaxtranLPAR: TStringField
      FieldName = 'LPAR'
      Size = 1
    end
    object QTaxtranLPAY: TFloatField
      FieldName = 'LPAY'
    end
    object QTaxtranINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QTaxtranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QTaxtranCANDT: TDateField
      FieldName = 'CANDT'
    end
    object QTaxtranTAXTYP: TStringField
      FieldName = 'TAXTYP'
      Size = 1
    end
    object QTaxtranTAXFLG: TStringField
      FieldName = 'TAXFLG'
      Size = 1
    end
    object QTaxtranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QTaxtranFLCANCL: TStringField
      FieldName = 'FLCANCL'
      Size = 8
    end
    object QTaxtranUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
  end
  object SoTaxtran: TDataSource
    DataSet = QTaxtran
    Left = 84
    Top = 99
  end
  object QDbConfig: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM DBCONFIG')
    Left = 28
    Top = 279
  end
  object QResvUpd: TFDQuery
    AfterPost = QResvUpdAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARRESV')
    Left = 28
    Top = 144
    object QResvUpdRESVNO: TStringField
      FieldName = 'RESVNO'
      Size = 12
    end
    object QResvUpdLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QResvUpdRESVDT: TDateField
      FieldName = 'RESVDT'
    end
    object QResvUpdCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QResvUpdGRPCOD: TStringField
      FieldName = 'GRPCOD'
      Size = 3
    end
    object QResvUpdTYPE: TStringField
      FieldName = 'TYPE'
      Size = 12
    end
    object QResvUpdBAAB: TStringField
      FieldName = 'BAAB'
    end
    object QResvUpdMODEL: TStringField
      FieldName = 'MODEL'
    end
    object QResvUpdCOLOR: TStringField
      FieldName = 'COLOR'
    end
    object QResvUpdCC: TFloatField
      FieldName = 'CC'
    end
    object QResvUpdSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object QResvUpdSALCOD: TStringField
      FieldName = 'SALCOD'
      Size = 8
    end
    object QResvUpdVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QResvUpdPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object QResvUpdRESPAY: TFloatField
      FieldName = 'RESPAY'
    end
    object QResvUpdBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object QResvUpdSMPAY: TFloatField
      FieldName = 'SMPAY'
    end
    object QResvUpdSMCHQ: TFloatField
      FieldName = 'SMCHQ'
    end
    object QResvUpdRECVDUE: TDateField
      FieldName = 'RECVDUE'
    end
    object QResvUpdSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QResvUpdISSUNO: TStringField
      FieldName = 'ISSUNO'
      Size = 12
    end
    object QResvUpdRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object QResvUpdRECVCD: TStringField
      FieldName = 'RECVCD'
      Size = 8
    end
    object QResvUpdSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QResvUpdTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QResvUpdTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QResvUpdMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QResvUpdREQNO: TStringField
      FieldName = 'REQNO'
      Size = 12
    end
    object QResvUpdREQLOCAT: TStringField
      FieldName = 'REQLOCAT'
      Size = 5
    end
    object QResvUpdPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QResvUpdINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QResvUpdUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
  end
  object SoResvUpd: TDataSource
    DataSet = QResvUpd
    Left = 84
    Top = 144
  end
  object QCshSale: TFDQuery
    BeforePost = QCshSaleBeforePost
    AfterPost = QCshSaleAfterPost
    AfterCancel = QCshSaleAfterCancel
    BeforeDelete = QCshSaleBeforeDelete
    AfterDelete = QCshSaleAfterPost
    OnCalcFields = QCshSaleCalcFields
    OnNewRecord = QCshSaleNewRecord
    CachedUpdates = True
    OnUpdateError = QCshSaleUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARCRED')
    Left = 146
    Top = 5
    object QCshSaleCONTNO: TStringField
      FieldName = 'CONTNO'
      OnValidate = QCshSaleCONTNOValidate
      Size = 12
    end
    object QCshSaleLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QCshSaleLOCATValidate
      Size = 5
    end
    object QCshSaleRESVNO: TStringField
      FieldName = 'RESVNO'
      OnValidate = QCshSaleRESVNOValidate
      Size = 12
    end
    object QCshSaleCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = QCshSaleCUSCODValidate
      Size = 12
    end
    object QCshSaleSTRNO: TStringField
      FieldName = 'STRNO'
      OnValidate = QCshSaleSTRNOValidate
    end
    object QCshSaleINCLVAT: TStringField
      FieldName = 'INCLVAT'
      OnChange = QCshSaleINCLVATChange
      Size = 1
    end
    object QCshSaleSDATE: TDateField
      FieldName = 'SDATE'
      OnValidate = QCshSaleSDATEValidate
    end
    object QCshSaleVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#0.0'
    end
    object QCshSaleSTDPRC: TFloatField
      FieldName = 'STDPRC'
      DisplayFormat = '#,##0.00'
    end
    object QCshSaleDSCPRC: TFloatField
      FieldName = 'DSCPRC'
      DisplayFormat = '#,##0.00'
    end
    object QCshSaleNPRICE: TFloatField
      FieldName = 'NPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleVATPRC: TFloatField
      FieldName = 'VATPRC'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleNPAYRES: TFloatField
      FieldName = 'NPAYRES'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleVATPRES: TFloatField
      FieldName = 'VATPRES'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleNCARCST: TFloatField
      FieldName = 'NCARCST'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleVCARCST: TFloatField
      FieldName = 'VCARCST'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QCshSaleTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QCshSaleOPTCST: TFloatField
      FieldName = 'OPTCST'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleOPTCVT: TFloatField
      FieldName = 'OPTCVT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleOPTPRC: TFloatField
      FieldName = 'OPTPRC'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleOPTPVT: TFloatField
      FieldName = 'OPTPVT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleOPTPTOT: TFloatField
      FieldName = 'OPTPTOT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleCREDTM: TFloatField
      FieldName = 'CREDTM'
      OnValidate = QCshSaleCREDTMValidate
      DisplayFormat = '##0'
    end
    object QCshSaleDUEDT: TDateField
      FieldName = 'DUEDT'
    end
    object QCshSaleSALCOD: TStringField
      FieldName = 'SALCOD'
      OnValidate = QCshSaleSALCODValidate
      Size = 8
    end
    object QCshSaleCOMITN: TFloatField
      FieldName = 'COMITN'
      DisplayFormat = '#,##0.00'
    end
    object QCshSaleISSUNO: TStringField
      FieldName = 'ISSUNO'
      Size = 12
    end
    object QCshSaleISSUDT: TDateField
      FieldName = 'ISSUDT'
    end
    object QCshSaleLPAYDT: TDateField
      FieldName = 'LPAYDT'
    end
    object QCshSaleTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QCshSaleMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QCshSaleUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QCshSaleINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QCshSaleDELID: TStringField
      FieldName = 'DELID'
      Size = 8
    end
    object QCshSaleDELDT: TDateTimeField
      FieldName = 'DELDT'
    end
    object QCshSalePOSTDT: TDateTimeField
      FieldName = 'POSTDT'
    end
    object QCshSaleUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCshSaleTOTPRES: TFloatField
      FieldName = 'TOTPRES'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleTCARCST: TFloatField
      FieldName = 'TCARCST'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleNKANG: TFloatField
      FieldName = 'NKANG'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleVKANG: TFloatField
      FieldName = 'VKANG'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleTKANG: TFloatField
      FieldName = 'TKANG'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleNKEYIN: TFloatField
      FieldName = 'NKEYIN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleVKEYIN: TFloatField
      FieldName = 'VKEYIN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleTKEYIN: TFloatField
      FieldName = 'TKEYIN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      Size = 12
    end
    object QCshSaleCRDAMT: TFloatField
      FieldName = 'CRDAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleKEYIN: TFloatField
      FieldName = 'KEYIN'
      OnValidate = QCshSaleKEYINValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleFLCANCL: TStringField
      FieldName = 'FLCANCL'
      Size = 1
    end
    object QCshSaleAPPVNO: TStringField
      FieldName = 'APPVNO'
      Size = 12
    end
    object QCshSalePAYTYP: TStringField
      FieldName = 'PAYTYP'
      Size = 2
    end
    object QCshSaleADDRNO: TStringField
      FieldName = 'ADDRNO'
      Size = 1
    end
    object QCshSaleCOMEXT: TFloatField
      FieldName = 'COMEXT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleCOMOPT: TFloatField
      FieldName = 'COMOPT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleCOMOTH: TFloatField
      FieldName = 'COMOTH'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleRECOMCOD: TStringField
      FieldName = 'RECOMCOD'
      Size = 12
    end
    object QCshSaleACTICOD: TStringField
      FieldName = 'ACTICOD'
      Size = 5
    end
    object QCshSaleTYPESAL: TStringField
      FieldName = 'TYPESAL'
      FixedChar = True
      Size = 1
    end
    object QCshSalePOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object QCshSaleLOGREG: TStringField
      FieldName = 'LOGREG'
      FixedChar = True
      Size = 1
    end
  end
  object SoCshsale: TDataSource
    DataSet = QCshSale
    Left = 205
    Top = 9
  end
  object QInvtran: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM INVTRAN')
    Left = 147
    Top = 58
  end
  object SoInvtran: TDataSource
    DataSet = QInvtran
    Left = 206
    Top = 54
  end
  object QResv: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARRESV')
    Left = 147
    Top = 99
    object QResvRESVNO: TStringField
      FieldName = 'RESVNO'
      FixedChar = True
      Size = 12
    end
    object QResvLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QResvRESVDT: TDateField
      FieldName = 'RESVDT'
    end
    object QResvCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QResvGRPCOD: TStringField
      FieldName = 'GRPCOD'
      FixedChar = True
      Size = 3
    end
    object QResvTYPE: TStringField
      FieldName = 'TYPE'
      FixedChar = True
      Size = 12
    end
    object QResvBAAB: TStringField
      FieldName = 'BAAB'
      FixedChar = True
    end
    object QResvMODEL: TStringField
      FieldName = 'MODEL'
      FixedChar = True
    end
    object QResvCOLOR: TStringField
      FieldName = 'COLOR'
      FixedChar = True
    end
    object QResvCC: TFloatField
      FieldName = 'CC'
    end
    object QResvSTAT: TStringField
      FieldName = 'STAT'
      FixedChar = True
      Size = 1
    end
    object QResvSALCOD: TStringField
      FieldName = 'SALCOD'
      FixedChar = True
      Size = 8
    end
    object QResvVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QResvPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object QResvRESPAY: TFloatField
      FieldName = 'RESPAY'
    end
    object QResvBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object QResvSMPAY: TFloatField
      FieldName = 'SMPAY'
    end
    object QResvSMCHQ: TFloatField
      FieldName = 'SMCHQ'
    end
    object QResvRECVDUE: TDateField
      FieldName = 'RECVDUE'
    end
    object QResvSTRNO: TStringField
      FieldName = 'STRNO'
      FixedChar = True
    end
    object QResvISSUNO: TStringField
      FieldName = 'ISSUNO'
      FixedChar = True
      Size = 12
    end
    object QResvRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object QResvRECVCD: TStringField
      FieldName = 'RECVCD'
      FixedChar = True
      Size = 8
    end
    object QResvSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QResvTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QResvTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QResvREQNO: TStringField
      FieldName = 'REQNO'
      FixedChar = True
      Size = 12
    end
    object QResvREQLOCAT: TStringField
      FieldName = 'REQLOCAT'
      FixedChar = True
      Size = 5
    end
    object QResvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 512
    end
    object QResvPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QResvINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QResvUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QResvFLCANCLE: TStringField
      FieldName = 'FLCANCLE'
      FixedChar = True
      Size = 1
    end
    object QResvFLID: TStringField
      FieldName = 'FLID'
      FixedChar = True
      Size = 8
    end
    object QResvFLDT: TDateTimeField
      FieldName = 'FLDT'
    end
    object QResvFLRESON: TStringField
      FieldName = 'FLRESON'
      FixedChar = True
      Size = 5
    end
    object QResvTRESVNO: TStringField
      FieldName = 'TRESVNO'
      FixedChar = True
      Size = 12
    end
    object QResvRLCODE: TStringField
      FieldName = 'RLCODE'
      FixedChar = True
      Size = 5
    end
    object QResvADDRESDT: TDateField
      FieldName = 'ADDRESDT'
    end
    object QResvADDRESPAY: TFloatField
      FieldName = 'ADDRESPAY'
    end
    object QResvOLDRESPAY: TFloatField
      FieldName = 'OLDRESPAY'
    end
  end
  object SoResv: TDataSource
    DataSet = QResv
    Left = 206
    Top = 99
  end
  object QCshSUpd: TFDQuery
    AfterPost = QCshSUpdAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARCRED')
    Left = 147
    Top = 144
    object QCshSUpdCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QCshSUpdLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QCshSUpdRESVNO: TStringField
      FieldName = 'RESVNO'
      Size = 12
    end
    object QCshSUpdCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QCshSUpdSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QCshSUpdINCLVAT: TStringField
      FieldName = 'INCLVAT'
      Size = 1
    end
    object QCshSUpdSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QCshSUpdVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QCshSUpdSTDPRC: TFloatField
      FieldName = 'STDPRC'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdDSCPRC: TFloatField
      FieldName = 'DSCPRC'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdKEYIN: TFloatField
      FieldName = 'KEYIN'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdNPRICE: TFloatField
      FieldName = 'NPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdVATPRC: TFloatField
      FieldName = 'VATPRC'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdNPAYRES: TFloatField
      FieldName = 'NPAYRES'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdVATPRES: TFloatField
      FieldName = 'VATPRES'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdTOTPRES: TFloatField
      FieldName = 'TOTPRES'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdNKANG: TFloatField
      FieldName = 'NKANG'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdVKANG: TFloatField
      FieldName = 'VKANG'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdTKANG: TFloatField
      FieldName = 'TKANG'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdNCARCST: TFloatField
      FieldName = 'NCARCST'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdVCARCST: TFloatField
      FieldName = 'VCARCST'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdTCARCST: TFloatField
      FieldName = 'TCARCST'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdTAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QCshSUpdTAXNOValidate
      Size = 12
    end
    object QCshSUpdTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QCshSUpdOPTCST: TFloatField
      FieldName = 'OPTCST'
    end
    object QCshSUpdOPTCVT: TFloatField
      FieldName = 'OPTCVT'
    end
    object QCshSUpdOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
    end
    object QCshSUpdOPTPRC: TFloatField
      FieldName = 'OPTPRC'
    end
    object QCshSUpdOPTPVT: TFloatField
      FieldName = 'OPTPVT'
    end
    object QCshSUpdOPTPTOT: TFloatField
      FieldName = 'OPTPTOT'
    end
    object QCshSUpdCREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object QCshSUpdDUEDT: TDateField
      FieldName = 'DUEDT'
    end
    object QCshSUpdSALCOD: TStringField
      FieldName = 'SALCOD'
      Size = 8
    end
    object QCshSUpdCOMITN: TFloatField
      FieldName = 'COMITN'
    end
    object QCshSUpdISSUNO: TStringField
      FieldName = 'ISSUNO'
      Size = 12
    end
    object QCshSUpdISSUDT: TDateField
      FieldName = 'ISSUDT'
    end
    object QCshSUpdLPAYDT: TDateField
      FieldName = 'LPAYDT'
    end
    object QCshSUpdTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QCshSUpdMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QCshSUpdUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QCshSUpdINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QCshSUpdDELID: TStringField
      FieldName = 'DELID'
      Size = 8
    end
    object QCshSUpdDELDT: TDateTimeField
      FieldName = 'DELDT'
    end
    object QCshSUpdPOSTDT: TDateTimeField
      FieldName = 'POSTDT'
    end
    object QCshSUpdNKEYIN: TFloatField
      FieldName = 'NKEYIN'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdVKEYIN: TFloatField
      FieldName = 'VKEYIN'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdTKEYIN: TFloatField
      FieldName = 'TKEYIN'
      DisplayFormat = '##,##0.00'
    end
    object QCshSUpdCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      Size = 12
    end
    object QCshSUpdCRDAMT: TFloatField
      FieldName = 'CRDAMT'
    end
  end
  object SoCshSupd: TDataSource
    DataSet = QCshSUpd
    Left = 214
    Top = 144
  end
  object QCshTax: TFDQuery
    BeforePost = QCshTaxBeforePost
    OnCalcFields = QCshTaxCalcFields
    OnNewRecord = QCshTaxNewRecord
    CachedUpdates = True
    OnUpdateError = QCshTaxUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 147
    Top = 189
    object QCshTaxLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QCshTaxTAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QCshTaxTAXNOValidate
      Size = 12
    end
    object QCshTaxTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QCshTaxTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QCshTaxCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QCshTaxCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QCshTaxSNAM: TStringField
      FieldName = 'SNAM'
      Size = 12
    end
    object QCshTaxNAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object QCshTaxNAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object QCshTaxSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QCshTaxREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QCshTaxREFDT: TDateField
      FieldName = 'REFDT'
    end
    object QCshTaxVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '##,##0.00'
    end
    object QCshTaxNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '##,##0.00'
    end
    object QCshTaxVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '##,##0.00'
    end
    object QCshTaxTOTAMT: TFloatField
      FieldName = 'TOTAMT'
      DisplayFormat = '##,##0.00'
    end
    object QCshTaxDESCP: TStringField
      FieldName = 'DESCP'
      Size = 60
    end
    object QCshTaxFPAR: TStringField
      FieldName = 'FPAR'
      Size = 1
    end
    object QCshTaxFPAY: TFloatField
      FieldName = 'FPAY'
    end
    object QCshTaxLPAR: TStringField
      FieldName = 'LPAR'
      Size = 1
    end
    object QCshTaxLPAY: TFloatField
      FieldName = 'LPAY'
    end
    object QCshTaxINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QCshTaxFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QCshTaxCANDT: TDateField
      FieldName = 'CANDT'
    end
    object QCshTaxTAXTYP: TStringField
      FieldName = 'TAXTYP'
      Size = 1
    end
    object QCshTaxTAXFLG: TStringField
      FieldName = 'TAXFLG'
      Size = 1
    end
    object QCshTaxUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QCshTaxFLCANCL: TStringField
      FieldName = 'FLCANCL'
      Size = 8
    end
    object QCshTaxUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCshTaxTMBILL: TStringField
      FieldName = 'TMBILL'
      Size = 12
    end
    object QCshTaxRTNSTK: TStringField
      FieldName = 'RTNSTK'
      Size = 1
    end
    object QCshTaxFINCOD: TStringField
      FieldName = 'FINCOD'
      Size = 8
    end
  end
  object SoCshTax: TDataSource
    DataSet = QCshTax
    Left = 210
    Top = 189
  end
  object QCshOpt: TFDQuery
    BeforePost = QCshOptBeforePost
    AfterPost = QCshOptAfterPost
    AfterDelete = QCshOptAfterPost
    OnCalcFields = QCshOptCalcFields
    OnNewRecord = QCshOptNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARINOPT WHERE TSALE = '#39'C'#39)
    Left = 147
    Top = 234
    object QCshOptTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QCshOptCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QCshOptLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QCshOptOPTCODE: TStringField
      FieldName = 'OPTCODE'
      OnChange = QCshOptOPTCODEChange
      Size = 18
    end
    object QCshOptUPRICE: TFloatField
      FieldName = 'UPRICE'
      OnValidate = QCshOptUPRICEValidate
      DisplayFormat = '##,##0.00'
    end
    object QCshOptUCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '##,##0.00'
    end
    object QCshOptQTY: TFloatField
      FieldName = 'QTY'
      OnChange = QCshOptQTYChange
    end
    object QCshOptTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '##,##0.00'
    end
    object QCshOptTOTVAT: TFloatField
      FieldName = 'TOTVAT'
      DisplayFormat = '##,##0.00'
    end
    object QCshOptNPRICE: TFloatField
      FieldName = 'NPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QCshOptOPTCST: TFloatField
      FieldName = 'OPTCST'
      DisplayFormat = '##,##0.00'
    end
    object QCshOptOPTCVT: TFloatField
      FieldName = 'OPTCVT'
      DisplayFormat = '##,##0.00'
    end
    object QCshOptOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
      DisplayFormat = '##,##0.00'
    end
    object QCshOptCONFIR: TStringField
      FieldName = 'CONFIR'
      Size = 1
    end
    object QCshOptUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QCshOptINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QCshOptPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QCshOptUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCshOptSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QCshOptRTNFLAG: TStringField
      FieldName = 'RTNFLAG'
      FixedChar = True
      Size = 1
    end
    object QCshOptOPTNAME: TStringField
      FieldName = 'OPTNAME'
      FixedChar = True
      Size = 60
    end
  end
  object SoCshOpt: TDataSource
    DataSet = QCshOpt
    Left = 206
    Top = 234
  end
  object QCshOptM: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM OPTMAST')
    Left = 20
    Top = 234
  end
  object SoOptMCsh: TDataSource
    DataSet = QCshOptM
    Left = 84
    Top = 234
  end
  object QCustmast: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST')
    Left = 495
    Top = 343
  end
  object SoCustmas: TDataSource
    DataSet = QCustmast
    Left = 554
    Top = 343
  end
  object QFinSale: TFDQuery
    BeforePost = QFinSaleBeforePost
    AfterPost = QFinSaleAfterPost
    AfterCancel = QFinSaleAfterCancel
    BeforeDelete = QFinSaleBeforeDelete
    AfterDelete = QFinSaleAfterPost
    OnCalcFields = QFinSaleCalcFields
    OnNewRecord = QFinSaleNewRecord
    CachedUpdates = True
    OnUpdateError = QFinSaleUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARFINC')
    Left = 369
    Top = 9
    object QFinSaleCONTNO: TStringField
      FieldName = 'CONTNO'
      OnValidate = QFinSaleCONTNOValidate
      Size = 12
    end
    object QFinSaleLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QFinSaleLOCATValidate
      Size = 5
    end
    object QFinSaleRESVNO: TStringField
      FieldName = 'RESVNO'
      OnValidate = QFinSaleRESVNOValidate
      Size = 12
    end
    object QFinSaleCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = QFinSaleCUSCODValidate
      Size = 12
    end
    object QFinSaleSTRNO: TStringField
      FieldName = 'STRNO'
      OnValidate = QFinSaleSTRNOValidate
    end
    object QFinSaleINCLVAT: TStringField
      FieldName = 'INCLVAT'
      OnChange = QFinSaleINCLVATChange
      Size = 1
    end
    object QFinSaleVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.0'
    end
    object QFinSaleSTDPRC: TFloatField
      FieldName = 'STDPRC'
      OnValidate = QFinSaleSTDPRCValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleDSCPRC: TFloatField
      FieldName = 'DSCPRC'
      OnValidate = QFinSaleDSCPRCValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleSDATE: TDateField
      FieldName = 'SDATE'
      OnValidate = QFinSaleSDATEValidate
    end
    object QFinSaleNPRICE: TFloatField
      FieldName = 'NPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleNPAYRES: TFloatField
      FieldName = 'NPAYRES'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleVATPRES: TFloatField
      FieldName = 'VATPRES'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleNDAWN: TFloatField
      FieldName = 'NDAWN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleKEYINDWN: TFloatField
      FieldName = 'KEYINDWN'
      OnValidate = QFinSaleKEYINDWNValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleVATDWN: TFloatField
      FieldName = 'VATDWN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleNKANG: TFloatField
      FieldName = 'NKANG'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleVKANG: TFloatField
      FieldName = 'VKANG'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleNFINAN: TFloatField
      FieldName = 'NFINAN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleVATFIN: TFloatField
      FieldName = 'VATFIN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSalePAYDWN: TFloatField
      FieldName = 'PAYDWN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSalePAYFIN: TFloatField
      FieldName = 'PAYFIN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QFinSaleTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QFinSaleTAXCRD: TStringField
      FieldName = 'TAXCRD'
      Size = 12
    end
    object QFinSaleNCARCST: TFloatField
      FieldName = 'NCARCST'
    end
    object QFinSaleVCARCST: TFloatField
      FieldName = 'VCARCST'
    end
    object QFinSaleOPTCST: TFloatField
      FieldName = 'OPTCST'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleOPTCVT: TFloatField
      FieldName = 'OPTCVT'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleOPTPRC: TFloatField
      FieldName = 'OPTPRC'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleOPTPVT: TFloatField
      FieldName = 'OPTPVT'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleOPTPTOT: TFloatField
      FieldName = 'OPTPTOT'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleFINCOM: TFloatField
      FieldName = 'FINCOM'
    end
    object QFinSaleFINCOD: TStringField
      FieldName = 'FINCOD'
      OnValidate = QFinSaleFINCODValidate
      Size = 8
    end
    object QFinSaleSALCOD: TStringField
      FieldName = 'SALCOD'
      OnValidate = QFinSaleSALCODValidate
      Size = 8
    end
    object QFinSaleCOMITN: TFloatField
      FieldName = 'COMITN'
      DisplayFormat = '##,##0.00'
      EditFormat = '##,##0.00'
    end
    object QFinSaleLPAYD: TDateField
      FieldName = 'LPAYD'
    end
    object QFinSaleLPAYA: TFloatField
      FieldName = 'LPAYA'
    end
    object QFinSaleISSUNO: TStringField
      FieldName = 'ISSUNO'
      Size = 12
    end
    object QFinSaleISSUDT: TDateField
      FieldName = 'ISSUDT'
    end
    object QFinSaleTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QFinSaleMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QFinSaleUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QFinSaleINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QFinSaleDELID: TStringField
      FieldName = 'DELID'
      Size = 8
    end
    object QFinSaleDELDT: TDateTimeField
      FieldName = 'DELDT'
    end
    object QFinSalePOSTDT: TDateTimeField
      FieldName = 'POSTDT'
    end
    object QFinSaleUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QFinSaleTOTPRES: TFloatField
      FieldName = 'TOTPRES'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleTOTDWN: TFloatField
      FieldName = 'TOTDWN'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleTKANG: TFloatField
      FieldName = 'TKANG'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleTOTFIN: TFloatField
      FieldName = 'TOTFIN'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleTCARCST: TFloatField
      FieldName = 'TCARCST'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleCONFIR: TStringField
      FieldName = 'CONFIR'
      Size = 1
    end
    object QFinSaleCONFIRID: TStringField
      FieldName = 'CONFIRID'
      Size = 8
    end
    object QFinSaleCONFIRDT: TDateField
      FieldName = 'CONFIRDT'
    end
    object QFinSaleNKEYIN: TFloatField
      FieldName = 'NKEYIN'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleVKEYIN: TFloatField
      FieldName = 'VKEYIN'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleTKEYIN: TFloatField
      FieldName = 'TKEYIN'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      Size = 12
    end
    object QFinSaleCRDAMT: TFloatField
      FieldName = 'CRDAMT'
    end
    object QFinSaleKEYIN: TFloatField
      FieldName = 'KEYIN'
      OnValidate = QFinSaleKEYINValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleFLCANCL: TStringField
      FieldName = 'FLCANCL'
      Size = 1
    end
    object QFinSaleAPPVNO: TStringField
      FieldName = 'APPVNO'
      Size = 12
    end
    object QFinSaleADDRNO: TStringField
      FieldName = 'ADDRNO'
      Size = 1
    end
    object QFinSaleCOMEXT: TFloatField
      FieldName = 'COMEXT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleCOMOPT: TFloatField
      FieldName = 'COMOPT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleCOMOTH: TFloatField
      FieldName = 'COMOTH'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleRECOMCOD: TStringField
      FieldName = 'RECOMCOD'
      Size = 12
    end
    object QFinSaleACTICOD: TStringField
      FieldName = 'ACTICOD'
      Size = 5
    end
    object QFinSalePERCOM: TFloatField
      FieldName = 'PERCOM'
    end
    object QFinSalePAYTYP: TStringField
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 2
    end
    object QFinSaleTOT_UPAY: TFloatField
      FieldName = 'TOT_UPAY'
      OnValidate = QFinSaleTOT_UPAYValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QFinSaleKEYIN_UPAY: TFloatField
      FieldName = 'KEYIN_UPAY'
      OnValidate = QFinSaleKEYIN_UPAYValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object QFinSaleTNOPAY: TFloatField
      FieldName = 'TNOPAY'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleVATPRC: TFloatField
      FieldName = 'VATPRC'
      DisplayFormat = '#,##0.00'
    end
    object QFinSaleNETDWN: TFloatField
      FieldName = 'NETDWN'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object QFinSalePOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object QFinSaleLOGREG: TStringField
      FieldName = 'LOGREG'
      FixedChar = True
      Size = 1
    end
  end
  object SoFinSal: TDataSource
    DataSet = QFinSale
    Left = 434
    Top = 9
  end
  object QFinOpt: TFDQuery
    BeforePost = QFinOptBeforePost
    AfterPost = QFinOptAfterPost
    AfterDelete = QFinOptAfterPost
    OnCalcFields = QFinOptCalcFields
    OnNewRecord = QFinOptNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM  ARINOPT WHERE  TSALE = '#39'F'#39)
    Left = 378
    Top = 54
    object QFinOptTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QFinOptCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QFinOptLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QFinOptOPTCODE: TStringField
      FieldName = 'OPTCODE'
      OnChange = QFinOptOPTCODEChange
      Size = 18
    end
    object QFinOptUPRICE: TFloatField
      FieldName = 'UPRICE'
      OnValidate = QFinOptUPRICEValidate
      DisplayFormat = '##,##0.00'
    end
    object QFinOptUCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '##,##0.00'
    end
    object QFinOptQTY: TFloatField
      FieldName = 'QTY'
      OnChange = QFinOptQTYChange
    end
    object QFinOptTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '##,##0.00'
    end
    object QFinOptTOTVAT: TFloatField
      FieldName = 'TOTVAT'
      DisplayFormat = '##,##0.00'
    end
    object QFinOptNPRICE: TFloatField
      FieldName = 'NPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QFinOptOPTCST: TFloatField
      FieldName = 'OPTCST'
      DisplayFormat = '##,##0.00'
    end
    object QFinOptOPTCVT: TFloatField
      FieldName = 'OPTCVT'
      DisplayFormat = '##,##0.00'
    end
    object QFinOptOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
      DisplayFormat = '##,##0.00'
    end
    object QFinOptCONFIR: TStringField
      FieldName = 'CONFIR'
      Size = 1
    end
    object QFinOptUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QFinOptINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QFinOptPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QFinOptUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QFinOptSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QFinOptRTNFLAG: TStringField
      FieldName = 'RTNFLAG'
      FixedChar = True
      Size = 1
    end
    object QFinOptOPTNAME: TStringField
      FieldName = 'OPTNAME'
      FixedChar = True
      Size = 60
    end
  end
  object SoFinOpt: TDataSource
    DataSet = QFinOpt
    Left = 437
    Top = 54
  end
  object QFinSUpd: TFDQuery
    AfterPost = QFinSUpdAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARFINC')
    Left = 378
    Top = 99
    object QFinSUpdCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QFinSUpdLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QFinSUpdRESVNO: TStringField
      FieldName = 'RESVNO'
      Size = 12
    end
    object QFinSUpdCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QFinSUpdSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QFinSUpdINCLVAT: TStringField
      FieldName = 'INCLVAT'
      Size = 1
    end
    object QFinSUpdVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QFinSUpdSTDPRC: TFloatField
      FieldName = 'STDPRC'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdDSCPRC: TFloatField
      FieldName = 'DSCPRC'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QFinSUpdKEYIN: TFloatField
      FieldName = 'KEYIN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdNPRICE: TFloatField
      FieldName = 'NPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdVATPRC: TFloatField
      FieldName = 'VATPRC'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdNPAYRES: TFloatField
      FieldName = 'NPAYRES'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdVATPRES: TFloatField
      FieldName = 'VATPRES'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdTOTPRES: TFloatField
      FieldName = 'TOTPRES'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdKEYINDWN: TFloatField
      FieldName = 'KEYINDWN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdNDAWN: TFloatField
      FieldName = 'NDAWN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdVATDWN: TFloatField
      FieldName = 'VATDWN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdTOTDWN: TFloatField
      FieldName = 'TOTDWN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdNKANG: TFloatField
      FieldName = 'NKANG'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdVKANG: TFloatField
      FieldName = 'VKANG'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdTKANG: TFloatField
      FieldName = 'TKANG'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdNFINAN: TFloatField
      FieldName = 'NFINAN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdVATFIN: TFloatField
      FieldName = 'VATFIN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdTOTFIN: TFloatField
      FieldName = 'TOTFIN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdPAYDWN: TFloatField
      FieldName = 'PAYDWN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdPAYFIN: TFloatField
      FieldName = 'PAYFIN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdTAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QFinSUpdTAXNOValidate
      Size = 12
    end
    object QFinSUpdTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QFinSUpdTAXCRD: TStringField
      FieldName = 'TAXCRD'
      Size = 12
    end
    object QFinSUpdNCARCST: TFloatField
      FieldName = 'NCARCST'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdVCARCST: TFloatField
      FieldName = 'VCARCST'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdTCARCST: TFloatField
      FieldName = 'TCARCST'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdOPTCST: TFloatField
      FieldName = 'OPTCST'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdOPTCVT: TFloatField
      FieldName = 'OPTCVT'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdOPTPRC: TFloatField
      FieldName = 'OPTPRC'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdOPTPVT: TFloatField
      FieldName = 'OPTPVT'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdOPTPTOT: TFloatField
      FieldName = 'OPTPTOT'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdFINCOM: TFloatField
      FieldName = 'FINCOM'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdFINCOD: TStringField
      FieldName = 'FINCOD'
      Size = 8
    end
    object QFinSUpdSALCOD: TStringField
      FieldName = 'SALCOD'
      Size = 8
    end
    object QFinSUpdCOMITN: TFloatField
      FieldName = 'COMITN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdLPAYD: TDateField
      FieldName = 'LPAYD'
    end
    object QFinSUpdLPAYA: TFloatField
      FieldName = 'LPAYA'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdISSUNO: TStringField
      FieldName = 'ISSUNO'
      Size = 12
    end
    object QFinSUpdISSUDT: TDateField
      FieldName = 'ISSUDT'
    end
    object QFinSUpdTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QFinSUpdCONFIR: TStringField
      FieldName = 'CONFIR'
      Size = 1
    end
    object QFinSUpdCONFIRID: TStringField
      FieldName = 'CONFIRID'
      Size = 8
    end
    object QFinSUpdCONFIRDT: TDateField
      FieldName = 'CONFIRDT'
    end
    object QFinSUpdMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QFinSUpdUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QFinSUpdINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QFinSUpdDELID: TStringField
      FieldName = 'DELID'
      Size = 8
    end
    object QFinSUpdDELDT: TDateTimeField
      FieldName = 'DELDT'
    end
    object QFinSUpdPOSTDT: TDateTimeField
      FieldName = 'POSTDT'
    end
    object QFinSUpdNKEYIN: TFloatField
      FieldName = 'NKEYIN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdVKEYIN: TFloatField
      FieldName = 'VKEYIN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdTKEYIN: TFloatField
      FieldName = 'TKEYIN'
      DisplayFormat = '##,##0.00'
    end
    object QFinSUpdCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      Size = 12
    end
    object QFinSUpdCRDAMT: TFloatField
      FieldName = 'CRDAMT'
      DisplayFormat = '##,##0.00'
    end
  end
  object SoFinFUpd: TDataSource
    DataSet = QFinSUpd
    Left = 437
    Top = 99
  end
  object QDiscTax: TFDQuery
    BeforePost = QDiscTaxBeforePost
    AfterPost = QDiscTaxAfterPost
    OnCalcFields = QDiscTaxCalcFields
    OnNewRecord = QDiscTaxNewRecord
    CachedUpdates = True
    OnUpdateError = QDiscTaxUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 378
    Top = 144
    object QDiscTaxLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QDiscTaxTAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QDiscTaxTAXNOValidate
      Size = 12
    end
    object QDiscTaxTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QDiscTaxTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QDiscTaxCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QDiscTaxCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QDiscTaxSNAM: TStringField
      FieldName = 'SNAM'
      Size = 12
    end
    object QDiscTaxNAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object QDiscTaxNAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object QDiscTaxSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QDiscTaxREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QDiscTaxREFDT: TDateField
      FieldName = 'REFDT'
    end
    object QDiscTaxVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QDiscTaxNETAMT: TFloatField
      FieldName = 'NETAMT'
    end
    object QDiscTaxVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QDiscTaxTOTAMT: TFloatField
      FieldName = 'TOTAMT'
    end
    object QDiscTaxDESCP: TStringField
      FieldName = 'DESCP'
      Size = 60
    end
    object QDiscTaxFPAR: TStringField
      FieldName = 'FPAR'
      Size = 1
    end
    object QDiscTaxFPAY: TFloatField
      FieldName = 'FPAY'
    end
    object QDiscTaxLPAR: TStringField
      FieldName = 'LPAR'
      Size = 1
    end
    object QDiscTaxLPAY: TFloatField
      FieldName = 'LPAY'
    end
    object QDiscTaxINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QDiscTaxFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QDiscTaxCANDT: TDateField
      FieldName = 'CANDT'
    end
    object QDiscTaxTAXTYP: TStringField
      FieldName = 'TAXTYP'
      Size = 1
    end
    object QDiscTaxTAXFLG: TStringField
      FieldName = 'TAXFLG'
      Size = 1
    end
    object QDiscTaxUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QDiscTaxFLCANCL: TStringField
      FieldName = 'FLCANCL'
      Size = 8
    end
    object QDiscTaxUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
  end
  object SoDiscTax: TDataSource
    DataSet = QDiscTax
    Left = 437
    Top = 144
  end
  object QOptSale: TFDQuery
    BeforePost = QOptSaleBeforePost
    AfterPost = QOptSaleAfterPost
    AfterCancel = QOptSaleAfterCancel
    BeforeDelete = QOptSaleBeforeDelete
    AfterDelete = QOptSaleAfterPost
    OnCalcFields = QOptSaleCalcFields
    OnNewRecord = QOptSaleNewRecord
    CachedUpdates = True
    OnUpdateError = QOptSaleUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM AROPTMST')
    Left = 493
    Top = 9
    object QOptSaleCONTNO: TStringField
      FieldName = 'CONTNO'
      OnValidate = QOptSaleCONTNOValidate
      Size = 12
    end
    object QOptSaleLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QOptSaleLOCATValidate
      Size = 5
    end
    object QOptSaleCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = QOptSaleCUSCODValidate
      Size = 12
    end
    object QOptSaleINCLVAT: TStringField
      FieldName = 'INCLVAT'
      Size = 1
    end
    object QOptSaleVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#0.0'
    end
    object QOptSaleSDATE: TDateField
      FieldName = 'SDATE'
      OnValidate = QOptSaleSDATEValidate
    end
    object QOptSaleSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
    end
    object QOptSaleSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
    end
    object QOptSaleKANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
    end
    object QOptSaleCOST: TFloatField
      FieldName = 'COST'
    end
    object QOptSaleTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QOptSaleTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QOptSaleOPTCST: TFloatField
      FieldName = 'OPTCST'
      DisplayFormat = '#,##0.00'
    end
    object QOptSaleOPTCVT: TFloatField
      FieldName = 'OPTCVT'
      DisplayFormat = '#,##0.00'
    end
    object QOptSaleOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
      DisplayFormat = '#,##0.00'
    end
    object QOptSaleOPTPRC: TFloatField
      FieldName = 'OPTPRC'
      DisplayFormat = '#,##0.00'
    end
    object QOptSaleOPTPVT: TFloatField
      FieldName = 'OPTPVT'
      DisplayFormat = '#,##0.00'
    end
    object QOptSaleOPTPTOT: TFloatField
      FieldName = 'OPTPTOT'
      DisplayFormat = '#,##0.00'
    end
    object QOptSaleCREDTM: TFloatField
      FieldName = 'CREDTM'
      OnValidate = QOptSaleCREDTMValidate
    end
    object QOptSaleDUEDT: TDateField
      FieldName = 'DUEDT'
    end
    object QOptSaleSALCOD: TStringField
      FieldName = 'SALCOD'
      OnValidate = QOptSaleSALCODValidate
      Size = 8
    end
    object QOptSaleCOMITN: TFloatField
      FieldName = 'COMITN'
    end
    object QOptSaleLPAYDT: TDateField
      FieldName = 'LPAYDT'
    end
    object QOptSaleTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QOptSaleMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QOptSaleUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QOptSaleINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QOptSaleDELID: TStringField
      FieldName = 'DELID'
      Size = 8
    end
    object QOptSaleDELDT: TDateTimeField
      FieldName = 'DELDT'
    end
    object QOptSalePOSTDT: TDateTimeField
      FieldName = 'POSTDT'
    end
    object QOptSaleUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
  end
  object SoOptSal: TDataSource
    DataSet = QOptSale
    Left = 547
    Top = 9
  end
  object QOptSalT: TFDQuery
    BeforePost = QOptSalTBeforePost
    AfterPost = QOptSalTAfterPost
    OnNewRecord = QOptSalTNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARINOPT')
    Left = 493
    Top = 54
    object QOptSalTTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QOptSalTCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QOptSalTLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QOptSalTOPTCODE: TStringField
      FieldName = 'OPTCODE'
      OnChange = QOptSalTOPTCODEChange
      Size = 18
    end
    object QOptSalTUPRICE: TFloatField
      FieldName = 'UPRICE'
    end
    object QOptSalTUCOST: TFloatField
      FieldName = 'UCOST'
    end
    object QOptSalTQTY: TFloatField
      FieldName = 'QTY'
      OnChange = QOptSalTQTYChange
    end
    object QOptSalTTOTPRC: TFloatField
      FieldName = 'TOTPRC'
    end
    object QOptSalTTOTVAT: TFloatField
      FieldName = 'TOTVAT'
    end
    object QOptSalTNPRICE: TFloatField
      FieldName = 'NPRICE'
    end
    object QOptSalTOPTCST: TFloatField
      FieldName = 'OPTCST'
    end
    object QOptSalTOPTCVT: TFloatField
      FieldName = 'OPTCVT'
    end
    object QOptSalTOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
    end
    object QOptSalTCONFIR: TStringField
      FieldName = 'CONFIR'
      Size = 1
    end
    object QOptSalTUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QOptSalTINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QOptSalTPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QOptSalTUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QOptSalTSDATE: TDateField
      FieldName = 'SDATE'
    end
  end
  object SoOptSalT: TDataSource
    DataSet = QOptSalT
    Left = 552
    Top = 54
  end
  object QOptSUpd: TFDQuery
    AfterPost = QOptSUpdAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM AROPTMST')
    Left = 493
    Top = 99
    object QOptSUpdCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QOptSUpdLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QOptSUpdCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QOptSUpdINCLVAT: TStringField
      FieldName = 'INCLVAT'
      Size = 1
    end
    object QOptSUpdVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QOptSUpdSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QOptSUpdSMPAY: TFloatField
      FieldName = 'SMPAY'
    end
    object QOptSUpdSMCHQ: TFloatField
      FieldName = 'SMCHQ'
    end
    object QOptSUpdKANG: TFloatField
      FieldName = 'KANG'
    end
    object QOptSUpdCOST: TFloatField
      FieldName = 'COST'
    end
    object QOptSUpdTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QOptSUpdTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QOptSUpdOPTCST: TFloatField
      FieldName = 'OPTCST'
    end
    object QOptSUpdOPTCVT: TFloatField
      FieldName = 'OPTCVT'
    end
    object QOptSUpdOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
    end
    object QOptSUpdOPTPRC: TFloatField
      FieldName = 'OPTPRC'
    end
    object QOptSUpdOPTPVT: TFloatField
      FieldName = 'OPTPVT'
    end
    object QOptSUpdOPTPTOT: TFloatField
      FieldName = 'OPTPTOT'
    end
    object QOptSUpdCREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object QOptSUpdDUEDT: TDateField
      FieldName = 'DUEDT'
    end
    object QOptSUpdSALCOD: TStringField
      FieldName = 'SALCOD'
      Size = 8
    end
    object QOptSUpdCOMITN: TFloatField
      FieldName = 'COMITN'
    end
    object QOptSUpdLPAYDT: TDateField
      FieldName = 'LPAYDT'
    end
    object QOptSUpdTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QOptSUpdMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QOptSUpdUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QOptSUpdINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QOptSUpdDELID: TStringField
      FieldName = 'DELID'
      Size = 8
    end
    object QOptSUpdDELDT: TDateTimeField
      FieldName = 'DELDT'
    end
    object QOptSUpdPOSTDT: TDateTimeField
      FieldName = 'POSTDT'
    end
  end
  object SoOptSUpd: TDataSource
    DataSet = QOptSUpd
    Left = 552
    Top = 99
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 26
    Top = 336
  end
  object QArClose: TFDQuery
    BeforePost = QArCloseBeforePost
    AfterPost = QArCloseAfterPost
    AfterCancel = QArCloseAfterCancel
    OnCalcFields = QArCloseCalcFields
    OnNewRecord = QArCloseNewRecord
    CachedUpdates = True
    OnUpdateError = QArCloseUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARCLOSE')
    Left = 493
    Top = 146
    object QArCloseLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QArCloseCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QArCloseTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QArCloseRESVNO: TStringField
      FieldName = 'RESVNO'
      Size = 12
    end
    object QArCloseCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QArCloseSNAM: TStringField
      FieldName = 'SNAM'
      Size = 8
    end
    object QArCloseNAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object QArCloseNAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object QArCloseSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QArCloseREGNO: TStringField
      FieldName = 'REGNO'
      Size = 12
    end
    object QArCloseSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QArCloseTOTPRC: TFloatField
      FieldName = 'TOTPRC'
    end
    object QArCloseNPRICE: TFloatField
      FieldName = 'NPRICE'
    end
    object QArCloseVATPRC: TFloatField
      FieldName = 'VATPRC'
    end
    object QArCloseNDAWN: TFloatField
      FieldName = 'NDAWN'
    end
    object QArCloseVATDWN: TFloatField
      FieldName = 'VATDWN'
    end
    object QArCloseTOTDWN: TFloatField
      FieldName = 'TOTDWN'
    end
    object QArCloseNKANG: TFloatField
      FieldName = 'NKANG'
    end
    object QArCloseVKANG: TFloatField
      FieldName = 'VKANG'
    end
    object QArCloseTKANG: TFloatField
      FieldName = 'TKANG'
    end
    object QArCloseN_NETCST: TFloatField
      FieldName = 'N_NETCST'
    end
    object QArCloseN_NETVAT: TFloatField
      FieldName = 'N_NETVAT'
    end
    object QArCloseN_NETTOT: TFloatField
      FieldName = 'N_NETTOT'
    end
    object QArCloseCLDATE: TDateField
      FieldName = 'CLDATE'
    end
    object QArCloseBILLCOLL: TStringField
      FieldName = 'BILLCOLL'
      Size = 8
    end
    object QArCloseCHECKER: TStringField
      FieldName = 'CHECKER'
      Size = 8
    end
    object QArCloseCGRADE: TStringField
      FieldName = 'CGRADE'
      Size = 1
    end
    object QArCloseFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QArCloseMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QArCloseUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QArCloseUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QArCloseINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
  end
  object SoArClose: TDataSource
    DataSet = QArClose
    Left = 552
    Top = 146
  end
  object SoClsInvT: TDataSource
    DataSet = QClsInvT
    Left = 552
    Top = 190
  end
  object QClsInvT: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM INVTRAN')
    Left = 493
    Top = 190
  end
  object QArSale: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT A.TSALE,A.LOCAT,A.CONTNO,A.CUSCOD,A.SDATE,A.TOTPRC,'
      '   A.NPRICE,A.VATPRC,B.SNAM,B.NAME1,B.NAME2 FROM  ARCRED'
      '   A,CUSTMAST B WHERE  A.CUSCOD=B.CUSCOD')
    Left = 493
    Top = 235
  end
  object SoArSale: TDataSource
    DataSet = QArSale
    Left = 552
    Top = 235
  end
  object QSetargar: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SETARGAR WHERE GARCODE=:GARCODE')
    Left = 496
    Top = 279
    ParamData = <
      item
        Name = 'GARCODE'
      end>
  end
  object SoSetargar: TDataSource
    DataSet = QSetargar
    Left = 549
    Top = 279
  end
  object QCondpay: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 84
    Top = 336
  end
  object QClosMast: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 614
    Top = 100
  end
  object qCusDeTFin: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST')
    Left = 143
    Top = 335
  end
  object SoCusDeTFin: TDataSource
    DataSet = qCusDeTFin
    Left = 210
    Top = 335
  end
  object QAgnSale: TFDQuery
    BeforePost = QAgnSaleBeforePost
    AfterPost = QAgnSaleAfterPost
    AfterCancel = QAgnSaleAfterCancel
    BeforeDelete = QAgnSaleBeforeDelete
    AfterDelete = QAgnSaleAfterPost
    OnCalcFields = QAgnSaleCalcFields
    OnNewRecord = QAgnSaleNewRecord
    CachedUpdates = True
    OnUpdateError = QAgnSaleUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM AR_INVOI')
    Left = 310
    Top = 227
    object QAgnSaleCONTNO: TStringField
      FieldName = 'CONTNO'
      OnValidate = QAgnSaleCONTNOValidate
      FixedChar = True
    end
    object QAgnSaleLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QAgnSaleLOCATValidate
      FixedChar = True
      Size = 5
    end
    object QAgnSaleCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = QAgnSaleCUSCODValidate
      FixedChar = True
      Size = 12
    end
    object QAgnSaleINCLVAT: TStringField
      FieldName = 'INCLVAT'
      FixedChar = True
      Size = 1
    end
    object QAgnSaleSDATE: TDateField
      FieldName = 'SDATE'
      OnValidate = QAgnSaleSDATEValidate
    end
    object QAgnSaleVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleKEYIN: TFloatField
      FieldName = 'KEYIN'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QAgnSaleNKEYIN: TFloatField
      FieldName = 'NKEYIN'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleVKEYIN: TFloatField
      FieldName = 'VKEYIN'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleTKEYIN: TFloatField
      FieldName = 'TKEYIN'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleNPRICE: TFloatField
      FieldName = 'NPRICE'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleVATPRC: TFloatField
      FieldName = 'VATPRC'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QAgnSaleTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QAgnSaleCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      FixedChar = True
      Size = 12
    end
    object QAgnSaleCRDAMT: TFloatField
      FieldName = 'CRDAMT'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSaleCREDTM: TFloatField
      FieldName = 'CREDTM'
      OnValidate = QAgnSaleCREDTMValidate
    end
    object QAgnSaleDUEDT: TDateField
      FieldName = 'DUEDT'
    end
    object QAgnSaleSALCOD: TStringField
      FieldName = 'SALCOD'
      OnValidate = QAgnSaleSALCODValidate
      FixedChar = True
      Size = 8
    end
    object QAgnSaleCOMITN: TFloatField
      FieldName = 'COMITN'
    end
    object QAgnSaleISSUNO: TStringField
      FieldName = 'ISSUNO'
      FixedChar = True
      Size = 12
    end
    object QAgnSaleISSUDT: TDateField
      FieldName = 'ISSUDT'
    end
    object QAgnSaleLPAYDT: TDateField
      FieldName = 'LPAYDT'
    end
    object QAgnSaleTSALE: TStringField
      FieldName = 'TSALE'
      FixedChar = True
      Size = 1
    end
    object QAgnSaleMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 512
    end
    object QAgnSaleUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QAgnSaleINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QAgnSaleDELID: TStringField
      FieldName = 'DELID'
      FixedChar = True
      Size = 8
    end
    object QAgnSaleDELDT: TDateTimeField
      FieldName = 'DELDT'
    end
    object QAgnSalePOSTDT: TDateTimeField
      FieldName = 'POSTDT'
    end
    object QAgnSaleFLCANCL: TStringField
      FieldName = 'FLCANCL'
      FixedChar = True
      Size = 1
    end
    object QAgnSaleAPPVNO: TStringField
      FieldName = 'APPVNO'
      FixedChar = True
      Size = 12
    end
    object QAgnSalePAYTYP: TStringField
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 2
    end
    object QAgnSaleADDRNO: TStringField
      FieldName = 'ADDRNO'
      FixedChar = True
      Size = 1
    end
    object QAgnSaleRECOMCOD: TStringField
      FieldName = 'RECOMCOD'
      FixedChar = True
      Size = 12
    end
    object QAgnSaleACTICOD: TStringField
      FieldName = 'ACTICOD'
      FixedChar = True
      Size = 5
    end
    object QAgnSaleTYPESAL: TStringField
      FieldName = 'TYPESAL'
      FixedChar = True
      Size = 1
    end
    object QAgnSalePOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
  end
  object SoAgnSale: TDataSource
    DataSet = QAgnSale
    Left = 384
    Top = 237
  end
  object SoAgnSalT: TDataSource
    DataSet = QAgnSalT
    Left = 384
    Top = 284
  end
  object QAgnSalT: TFDQuery
    BeforePost = QAgnSalTBeforePost
    AfterPost = QAgnSalTAfterPost
    OnNewRecord = QAgnSalTNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM AR_TRANS')
    Left = 309
    Top = 284
    object QAgnSalTCONTNO: TStringField
      FieldName = 'CONTNO'
      FixedChar = True
    end
    object QAgnSalTLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QAgnSalTSTRNO: TStringField
      FieldName = 'STRNO'
      OnValidate = QAgnSalTSTRNOValidate
      FixedChar = True
    end
    object QAgnSalTVATRT: TFloatField
      FieldName = 'VATRT'
      OnValidate = QAgnSalTVATRTValidate
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTKEYIN: TFloatField
      FieldName = 'KEYIN'
      OnChange = QAgnSalTKEYINChange
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTNKEYIN: TFloatField
      FieldName = 'NKEYIN'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTVKEYIN: TFloatField
      FieldName = 'VKEYIN'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTTKEYIN: TFloatField
      FieldName = 'TKEYIN'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTNPRICE: TFloatField
      FieldName = 'NPRICE'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTVATPRC: TFloatField
      FieldName = 'VATPRC'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTISSUNO: TStringField
      FieldName = 'ISSUNO'
      FixedChar = True
      Size = 12
    end
    object QAgnSalTISSUDT: TDateField
      FieldName = 'ISSUDT'
    end
    object QAgnSalTLPAYDT: TDateField
      FieldName = 'LPAYDT'
    end
    object QAgnSalTTSALE: TStringField
      FieldName = 'TSALE'
      FixedChar = True
      Size = 1
    end
    object QAgnSalTCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      FixedChar = True
      Size = 12
    end
    object QAgnSalTCRDAMT: TFloatField
      FieldName = 'CRDAMT'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QAgnSalTMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 512
    end
    object QAgnSalTUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QAgnSalTINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QAgnSalTDELID: TStringField
      FieldName = 'DELID'
      FixedChar = True
      Size = 8
    end
    object QAgnSalTDELDT: TDateTimeField
      FieldName = 'DELDT'
    end
    object QAgnSalTPOSTDT: TDateTimeField
      FieldName = 'POSTDT'
    end
    object QAgnSalTNCARCST: TFloatField
      FieldName = 'NCARCST'
    end
  end
  object QAgnSUpd: TFDQuery
    AfterPost = QAgnSUpdAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM AR_INVOI')
    Left = 311
    Top = 337
    object QAgnSUpdCONTNO: TStringField
      FieldName = 'CONTNO'
      FixedChar = True
    end
    object QAgnSUpdLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QAgnSUpdCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QAgnSUpdINCLVAT: TStringField
      FieldName = 'INCLVAT'
      FixedChar = True
      Size = 1
    end
    object QAgnSUpdSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QAgnSUpdVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QAgnSUpdKEYIN: TFloatField
      FieldName = 'KEYIN'
    end
    object QAgnSUpdNKEYIN: TFloatField
      FieldName = 'NKEYIN'
    end
    object QAgnSUpdVKEYIN: TFloatField
      FieldName = 'VKEYIN'
    end
    object QAgnSUpdTKEYIN: TFloatField
      FieldName = 'TKEYIN'
    end
    object QAgnSUpdNPRICE: TFloatField
      FieldName = 'NPRICE'
    end
    object QAgnSUpdVATPRC: TFloatField
      FieldName = 'VATPRC'
    end
    object QAgnSUpdTOTPRC: TFloatField
      FieldName = 'TOTPRC'
    end
    object QAgnSUpdSMPAY: TFloatField
      FieldName = 'SMPAY'
    end
    object QAgnSUpdSMCHQ: TFloatField
      FieldName = 'SMCHQ'
    end
    object QAgnSUpdTAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QAgnSUpdTAXNOValidate
      FixedChar = True
      Size = 12
    end
    object QAgnSUpdTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QAgnSUpdCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      FixedChar = True
      Size = 12
    end
    object QAgnSUpdCRDAMT: TFloatField
      FieldName = 'CRDAMT'
    end
    object QAgnSUpdCREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object QAgnSUpdDUEDT: TDateField
      FieldName = 'DUEDT'
    end
    object QAgnSUpdSALCOD: TStringField
      FieldName = 'SALCOD'
      FixedChar = True
      Size = 8
    end
    object QAgnSUpdCOMITN: TFloatField
      FieldName = 'COMITN'
    end
    object QAgnSUpdISSUNO: TStringField
      FieldName = 'ISSUNO'
      FixedChar = True
      Size = 12
    end
    object QAgnSUpdISSUDT: TDateField
      FieldName = 'ISSUDT'
    end
    object QAgnSUpdLPAYDT: TDateField
      FieldName = 'LPAYDT'
    end
    object QAgnSUpdTSALE: TStringField
      FieldName = 'TSALE'
      FixedChar = True
      Size = 1
    end
    object QAgnSUpdMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 512
    end
    object QAgnSUpdUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QAgnSUpdINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QAgnSUpdDELID: TStringField
      FieldName = 'DELID'
      FixedChar = True
      Size = 8
    end
    object QAgnSUpdDELDT: TDateTimeField
      FieldName = 'DELDT'
    end
    object QAgnSUpdPOSTDT: TDateTimeField
      FieldName = 'POSTDT'
    end
    object QAgnSUpdFLCANCL: TStringField
      FieldName = 'FLCANCL'
      FixedChar = True
      Size = 1
    end
    object QAgnSUpdAPPVNO: TStringField
      FieldName = 'APPVNO'
      FixedChar = True
      Size = 12
    end
    object QAgnSUpdPAYTYP: TStringField
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 2
    end
    object QAgnSUpdADDRNO: TStringField
      FieldName = 'ADDRNO'
      FixedChar = True
      Size = 1
    end
    object QAgnSUpdRECOMCOD: TStringField
      FieldName = 'RECOMCOD'
      FixedChar = True
      Size = 12
    end
    object QAgnSUpdACTICOD: TStringField
      FieldName = 'ACTICOD'
      FixedChar = True
      Size = 5
    end
  end
  object SoQAgnSUpd: TDataSource
    DataSet = QAgnSUpd
    Left = 384
    Top = 339
  end
end
