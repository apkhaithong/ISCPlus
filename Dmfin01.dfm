object Dmfin: TDmfin
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 556
  Width = 551
  object QChqmast: TFDQuery
    BeforePost = QChqmastBeforePost
    AfterPost = QChqmastAfterPost
    AfterCancel = QChqmastAfterCancel
    OnCalcFields = QChqmastCalcFields
    OnNewRecord = QChqmastNewRecord
    CachedUpdates = True
    OnUpdateError = QChqmastUpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM CHQMAS')
    Left = 32
    Top = 12
    object QChqmastTMBILL: TStringField
      FieldName = 'TMBILL'
      Size = 12
    end
    object QChqmastLOCATRECV: TStringField
      FieldName = 'LOCATRECV'
      OnValidate = QChqmastLOCATRECVValidate
      Size = 5
    end
    object QChqmastTMBILDT: TDateField
      FieldName = 'TMBILDT'
      OnValidate = QChqmastTMBILDTValidate
    end
    object QChqmastBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
    end
    object QChqmastBILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object QChqmastCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = QChqmastCUSCODValidate
      Size = 12
    end
    object QChqmastPAYTYP: TStringField
      FieldName = 'PAYTYP'
      OnChange = QChqmastPAYTYPChange
      Size = 2
    end
    object QChqmastCHQNO: TStringField
      DisplayWidth = 7
      FieldName = 'CHQNO'
      Size = 7
    end
    object QChqmastCHQDT: TDateField
      FieldName = 'CHQDT'
    end
    object QChqmastRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object QChqmastCHQBR: TStringField
      FieldName = 'CHQBR'
      Size = 50
    end
    object QChqmastCHQAMT: TFloatField
      FieldName = 'CHQAMT'
      DisplayFormat = '#,##0.00'
    end
    object QChqmastACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object QChqmastTRAD: TFloatField
      FieldName = 'TRAD'
    end
    object QChqmastPAYINDT: TDateField
      FieldName = 'PAYINDT'
    end
    object QChqmastPAYINACC: TStringField
      FieldName = 'PAYINACC'
      Size = 12
    end
    object QChqmastPAYDT: TDateField
      FieldName = 'PAYDT'
    end
    object QChqmastAMTPAID: TFloatField
      FieldName = 'AMTPAID'
      DisplayFormat = '#,##0.00'
    end
    object QChqmastRVPERCD: TStringField
      FieldName = 'RVPERCD'
      Size = 8
    end
    object QChqmastRCHQDT: TDateField
      FieldName = 'RCHQDT'
    end
    object QChqmastRCHQCD: TStringField
      FieldName = 'RCHQCD'
      Size = 8
    end
    object QChqmastFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QChqmastMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QChqmastCANDT: TDateField
      FieldName = 'CANDT'
    end
    object QChqmastUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QChqmastPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QChqmastTAXFL: TStringField
      FieldName = 'TAXFL'
      Size = 1
    end
    object QChqmastTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QChqmastDOSBILL: TStringField
      FieldName = 'DOSBILL'
      Size = 15
    end
    object QChqmastNOPRNTB: TFloatField
      FieldName = 'NOPRNTB'
    end
    object QChqmastNOPRNBL: TFloatField
      FieldName = 'NOPRNBL'
    end
    object QChqmastCHQBK: TStringField
      FieldName = 'CHQBK'
      Size = 12
    end
    object QChqmastINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QChqmastINPDATE: TDateTimeField
      FieldName = 'INPDATE'
    end
    object QChqmastUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QChqmastPOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object QChqmastREFDOCNO: TStringField
      FieldName = 'REFDOCNO'
      FixedChar = True
    end
    object QChqmastCHQTMP: TFloatField
      FieldName = 'CHQTMP'
      OnValidate = QChqmastCHQTMPValidate
      DisplayFormat = '#,##0.00'
    end
    object QChqmastCHQTMP_OTH: TFloatField
      FieldName = 'CHQTMP_OTH'
      OnValidate = QChqmastCHQTMP_OTHValidate
      DisplayFormat = '##,##0.00'
    end
    object QChqmastCHQTMP_DEC: TFloatField
      FieldName = 'CHQTMP_DEC'
      OnValidate = QChqmastCHQTMP_DECValidate
      DisplayFormat = '##,##0.00'
    end
    object QChqmastCHQTMP_TYP: TFloatField
      FieldName = 'CHQTMP_TYP'
      DisplayFormat = '##,##0.00'
    end
    object QChqmastRLBILL: TStringField
      FieldName = 'RLBILL'
      FixedChar = True
      Size = 1
    end
    object QChqmastTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '##,##0.00'
    end
  end
  object QChqtran: TFDQuery
    BeforePost = QChqtranBeforePost
    AfterPost = QChqtranAfterPost
    OnNewRecord = QChqtranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM CHQTRAN')
    Left = 22
    Top = 64
    object QChqtranTMBILL: TStringField
      FieldName = 'TMBILL'
      Size = 12
    end
    object QChqtranLOCATRECV: TStringField
      FieldName = 'LOCATRECV'
      Size = 5
    end
    object QChqtranTMBILDT: TDateField
      FieldName = 'TMBILDT'
    end
    object QChqtranCHQNO: TStringField
      DisplayWidth = 7
      FieldName = 'CHQNO'
      Size = 7
    end
    object QChqtranCHQDT: TDateField
      FieldName = 'CHQDT'
    end
    object QChqtranTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QChqtranPAYFOR: TStringField
      FieldName = 'PAYFOR'
      OnChange = QChqtranPAYFORChange
      OnValidate = QChqtranPAYFORValidate
      Size = 3
    end
    object QChqtranCONTNO: TStringField
      FieldName = 'CONTNO'
      OnValidate = QChqtranCONTNOValidate
      Size = 12
    end
    object QChqtranLOCATPAY: TStringField
      FieldName = 'LOCATPAY'
      Size = 5
    end
    object QChqtranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QChqtranTAXRT: TFloatField
      FieldName = 'TAXRT'
      OnValidate = QChqtranPAYAMTValidate
    end
    object QChqtranPAYAMT: TFloatField
      FieldName = 'PAYAMT'
      OnChange = QChqtranPAYAMTChange
      OnValidate = QChqtranPAYAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QChqtranPAYAMT_N: TFloatField
      FieldName = 'PAYAMT_N'
      DisplayFormat = '#,##0.00'
    end
    object QChqtranPAYAMT_V: TFloatField
      FieldName = 'PAYAMT_V'
      DisplayFormat = '#,##0.00'
    end
    object QChqtranDISCT: TFloatField
      FieldName = 'DISCT'
      OnValidate = QChqtranDISCTValidate
      DisplayFormat = '#,##0.00'
    end
    object QChqtranPAYINT: TFloatField
      FieldName = 'PAYINT'
      OnValidate = QChqtranPAYINTValidate
      DisplayFormat = '#,##0.00'
    end
    object QChqtranDSCINT: TFloatField
      FieldName = 'DSCINT'
      DisplayFormat = '#,##0.00'
    end
    object QChqtranNETPAY: TFloatField
      FieldName = 'NETPAY'
      DisplayFormat = '#,##0.00'
    end
    object QChqtranPAYDT: TDateField
      FieldName = 'PAYDT'
    end
    object QChqtranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QChqtranYFLAG: TStringField
      FieldName = 'YFLAG'
      Size = 1
    end
    object QChqtranCANDT: TDateField
      FieldName = 'CANDT'
    end
    object QChqtranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QChqtranPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QChqtranUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QChqtranTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QChqtranTAXFL: TStringField
      FieldName = 'TAXFL'
      Size = 1
    end
    object QChqtranPAYTYP: TStringField
      FieldName = 'PAYTYP'
      Size = 2
    end
    object QChqtranNOPAY: TFloatField
      FieldName = 'NOPAY'
    end
    object QChqtranF_PAR: TStringField
      FieldName = 'F_PAR'
      Size = 1
    end
    object QChqtranF_PAY: TFloatField
      FieldName = 'F_PAY'
    end
    object QChqtranL_PAR: TStringField
      FieldName = 'L_PAR'
      Size = 1
    end
    object QChqtranL_PAY: TFloatField
      FieldName = 'L_PAY'
    end
    object QChqtranINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QChqtranINPDATE: TDateTimeField
      FieldName = 'INPDATE'
    end
    object QChqtranDOSBILL: TStringField
      FieldName = 'DOSBILL'
      FixedChar = True
      Size = 15
    end
    object QChqtranVATRTPAY: TFloatField
      FieldName = 'VATRTPAY'
      OnChange = QChqtranVATRTPAYChange
      OnValidate = QChqtranVATRTPAYValidate
    end
    object QChqtranVATAMTPAY: TFloatField
      FieldName = 'VATAMTPAY'
    end
    object QChqtranDIVICOD: TStringField
      FieldName = 'DIVICOD'
      FixedChar = True
      Size = 10
    end
  end
  object Sochqmast: TDataSource
    DataSet = QChqmast
    Left = 91
    Top = 12
  end
  object SoChqtran: TDataSource
    DataSet = QChqtran
    Left = 83
    Top = 60
  end
  object Qarothr: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 23
    Top = 112
  end
  object Soarothr: TDataSource
    DataSet = Qarothr
    Left = 83
    Top = 112
  end
  object Query1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 139
    Top = 12
  end
  object QContno: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 186
    Top = 12
  end
  object QArpay: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARPAY')
    Left = 138
    Top = 60
  end
  object QBillmas: TFDQuery
    BeforePost = QBillmasBeforePost
    AfterPost = QBillmasAfterPost
    OnCalcFields = QBillmasCalcFields
    OnNewRecord = QBillmasNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM BILLMAS')
    Left = 186
    Top = 60
    object QBillmasBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
    end
    object QBillmasLOCATRECV: TStringField
      FieldName = 'LOCATRECV'
      OnValidate = QBillmasLOCATRECVValidate
      Size = 5
    end
    object QBillmasBILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object QBillmasTMBILL: TStringField
      FieldName = 'TMBILL'
      Size = 12
    end
    object QBillmasFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QBillmasINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QBillmasUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QBillmasUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
  end
  object QTaxtran: TFDQuery
    AfterPost = QTaxtranAfterPost
    OnNewRecord = QTaxtranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 138
    Top = 112
    object QTaxtranLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QTaxtranTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QTaxtranTAXDT: TDateField
      FieldName = 'TAXDT'
      OnValidate = QTaxtranTAXDTValidate
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
    object QTaxtranTMBILL: TStringField
      FieldName = 'TMBILL'
      Size = 12
    end
    object QTaxtranFINCOD: TStringField
      FieldName = 'FINCOD'
      FixedChar = True
      Size = 8
    end
  end
  object QChqtrn1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 187
    Top = 112
  end
  object ShwChqtrn: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM CHQTRAN')
    Left = 243
    Top = 60
  end
  object Canchqmst: TFDQuery
    BeforePost = CanchqmstBeforePost
    AfterPost = CanchqmstAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM CHQMAS')
    Left = 243
    Top = 12
  end
  object SoShwChqtrn: TDataSource
    DataSet = ShwChqtrn
    Left = 318
    Top = 60
  end
  object SoCanChqmst: TDataSource
    DataSet = Canchqmst
    Left = 317
    Top = 12
  end
  object CanChqtrn: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM CHQTRAN')
    Left = 243
    Top = 108
  end
  object QArmast: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    Left = 320
    Top = 112
  end
  object Table1: TFDTable
    IndexFieldNames = 'NOPAY'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.UpdateTableName = 'TABLE1'
    TableName = 'TABLE1'
    Left = 24
    Top = 160
  end
  object QIntrMast: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM INTRMAST')
    Left = 322
    Top = 164
  end
  object SoTable1: TDataSource
    DataSet = Table1
    Left = 80
    Top = 160
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 140
    Top = 160
  end
  object Query3: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 192
    Top = 164
  end
  object qrArpayNopay: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 252
    Top = 164
  end
  object SoCRDChqtran: TDataSource
    DataSet = CRdChqtran
    Left = 475
    Top = 76
  end
  object SoCRDchqmast: TDataSource
    DataSet = CRdChqmas
    Left = 467
    Top = 20
  end
  object CRdChqmas: TFDQuery
    BeforePost = CRdChqmasBeforePost
    AfterPost = CRdChqmasAfterPost
    AfterCancel = CRdChqmasAfterCancel
    OnCalcFields = CRdChqmasCalcFields
    OnNewRecord = CRdChqmasNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM CRDCHQMAS')
    Left = 384
    Top = 16
    object CRdChqmasUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object CRdChqmasTMBILL: TStringField
      FieldName = 'TMBILL'
      FixedChar = True
      Size = 12
    end
    object CRdChqmasLOCATRECV: TStringField
      FieldName = 'LOCATRECV'
      OnValidate = CRdChqmasLOCATRECVValidate
      FixedChar = True
      Size = 5
    end
    object CRdChqmasTMBILDT: TDateField
      FieldName = 'TMBILDT'
      OnValidate = CRdChqmasTMBILDTValidate
    end
    object CRdChqmasBILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object CRdChqmasBILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object CRdChqmasCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object CRdChqmasPAYTYP: TStringField
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 2
    end
    object CRdChqmasCHQNO: TStringField
      DisplayWidth = 7
      FieldName = 'CHQNO'
      FixedChar = True
      Size = 7
    end
    object CRdChqmasCHQDT: TDateField
      FieldName = 'CHQDT'
    end
    object CRdChqmasRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object CRdChqmasCHQBK: TStringField
      FieldName = 'CHQBK'
      FixedChar = True
      Size = 12
    end
    object CRdChqmasCHQBR: TStringField
      FieldName = 'CHQBR'
      FixedChar = True
      Size = 50
    end
    object CRdChqmasCHQAMT: TFloatField
      FieldName = 'CHQAMT'
    end
    object CRdChqmasACCTNO: TStringField
      FieldName = 'ACCTNO'
      FixedChar = True
      Size = 12
    end
    object CRdChqmasTRAD: TFloatField
      FieldName = 'TRAD'
    end
    object CRdChqmasPAYINDT: TDateField
      FieldName = 'PAYINDT'
    end
    object CRdChqmasPAYINACC: TStringField
      FieldName = 'PAYINACC'
      FixedChar = True
      Size = 12
    end
    object CRdChqmasPAYDT: TDateField
      FieldName = 'PAYDT'
    end
    object CRdChqmasAMTPAID: TFloatField
      FieldName = 'AMTPAID'
    end
    object CRdChqmasCHQTMP: TFloatField
      FieldName = 'CHQTMP'
    end
    object CRdChqmasTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object CRdChqmasRVPERCD: TStringField
      FieldName = 'RVPERCD'
      FixedChar = True
      Size = 8
    end
    object CRdChqmasRCHQDT: TDateField
      FieldName = 'RCHQDT'
    end
    object CRdChqmasRCHQCD: TStringField
      FieldName = 'RCHQCD'
      FixedChar = True
      Size = 8
    end
    object CRdChqmasFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object CRdChqmasTAXFL: TStringField
      FieldName = 'TAXFL'
      FixedChar = True
      Size = 1
    end
    object CRdChqmasMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 512
    end
    object CRdChqmasINPDT: TDateField
      FieldName = 'INPDT'
    end
    object CRdChqmasCANDT: TDateField
      FieldName = 'CANDT'
    end
    object CRdChqmasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object CRdChqmasPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object CRdChqmasDOSBILL: TStringField
      FieldName = 'DOSBILL'
      FixedChar = True
      Size = 15
    end
    object CRdChqmasNOPRNTB: TFloatField
      FieldName = 'NOPRNTB'
    end
    object CRdChqmasNOPRNBL: TFloatField
      FieldName = 'NOPRNBL'
    end
    object CRdChqmasINPDATE: TDateTimeField
      FieldName = 'INPDATE'
    end
    object CRdChqmasPOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object CRdChqmasREFDOCNO: TStringField
      FieldName = 'REFDOCNO'
      FixedChar = True
    end
  end
  object CRdChqtran: TFDQuery
    AfterPost = CRdChqtranAfterPost
    OnNewRecord = CRdChqtranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM CRDCHQTRAN')
    Left = 392
    Top = 88
    object CRdChqtranUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object CRdChqtranTMBILL: TStringField
      FieldName = 'TMBILL'
      FixedChar = True
      Size = 12
    end
    object CRdChqtranLOCATRECV: TStringField
      FieldName = 'LOCATRECV'
      FixedChar = True
      Size = 5
    end
    object CRdChqtranTMBILDT: TDateField
      FieldName = 'TMBILDT'
    end
    object CRdChqtranCHQNO: TStringField
      DisplayWidth = 7
      FieldName = 'CHQNO'
      FixedChar = True
      Size = 7
    end
    object CRdChqtranCHQDT: TDateField
      FieldName = 'CHQDT'
    end
    object CRdChqtranTSALE: TStringField
      FieldName = 'TSALE'
      FixedChar = True
      Size = 1
    end
    object CRdChqtranPAYFOR: TStringField
      FieldName = 'PAYFOR'
      FixedChar = True
      Size = 3
    end
    object CRdChqtranCONTNO: TStringField
      FieldName = 'CONTNO'
      FixedChar = True
    end
    object CRdChqtranLOCATPAY: TStringField
      FieldName = 'LOCATPAY'
      FixedChar = True
      Size = 5
    end
    object CRdChqtranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object CRdChqtranPAYTYP: TStringField
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 2
    end
    object CRdChqtranTAXRT: TFloatField
      FieldName = 'TAXRT'
    end
    object CRdChqtranPAYAMT: TFloatField
      FieldName = 'PAYAMT'
      DisplayFormat = '##,##0.00'
    end
    object CRdChqtranPAYAMT_N: TFloatField
      FieldName = 'PAYAMT_N'
      DisplayFormat = '##,##0.00'
    end
    object CRdChqtranPAYAMT_V: TFloatField
      FieldName = 'PAYAMT_V'
      DisplayFormat = '##,##0.00'
    end
    object CRdChqtranDISCT: TFloatField
      FieldName = 'DISCT'
      OnChange = CRdChqtranDISCTChange
      DisplayFormat = '##,##0.00'
    end
    object CRdChqtranPAYINT: TFloatField
      FieldName = 'PAYINT'
      OnChange = CRdChqtranPAYINTChange
      DisplayFormat = '##,##0.00'
    end
    object CRdChqtranDSCINT: TFloatField
      FieldName = 'DSCINT'
      DisplayFormat = '##,##0.00'
    end
    object CRdChqtranNETPAY: TFloatField
      FieldName = 'NETPAY'
      DisplayFormat = '##,##0.00'
    end
    object CRdChqtranPAYDT: TDateField
      FieldName = 'PAYDT'
    end
    object CRdChqtranNOPAY: TFloatField
      FieldName = 'NOPAY'
    end
    object CRdChqtranF_PAR: TStringField
      FieldName = 'F_PAR'
      FixedChar = True
      Size = 1
    end
    object CRdChqtranF_PAY: TFloatField
      FieldName = 'F_PAY'
    end
    object CRdChqtranL_PAR: TStringField
      FieldName = 'L_PAR'
      FixedChar = True
      Size = 1
    end
    object CRdChqtranL_PAY: TFloatField
      FieldName = 'L_PAY'
    end
    object CRdChqtranTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object CRdChqtranTAXFL: TStringField
      FieldName = 'TAXFL'
      FixedChar = True
      Size = 1
    end
    object CRdChqtranINPDT: TDateField
      FieldName = 'INPDT'
    end
    object CRdChqtranFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object CRdChqtranYFLAG: TStringField
      FieldName = 'YFLAG'
      FixedChar = True
      Size = 1
    end
    object CRdChqtranCANDT: TDateField
      FieldName = 'CANDT'
    end
    object CRdChqtranUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object CRdChqtranPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object CRdChqtranDOSBILL: TStringField
      FieldName = 'DOSBILL'
      FixedChar = True
      Size = 15
    end
    object CRdChqtranINPDATE: TDateTimeField
      FieldName = 'INPDATE'
    end
    object CRdChqtranVATRTPAY: TFloatField
      FieldName = 'VATRTPAY'
      OnChange = CRdChqtranVATRTPAYChange
      DisplayFormat = '##,##0.00'
    end
    object CRdChqtranVATAMTPAY: TFloatField
      FieldName = 'VATAMTPAY'
      DisplayFormat = '##,##0.00'
    end
    object CRdChqtranDUTYAMT: TFloatField
      FieldName = 'DUTYAMT'
      DisplayFormat = '##,##0.00'
    end
  end
  object SoChqtran_Oth: TDataSource
    DataSet = QChqtran_Oth
    Left = 107
    Top = 241
  end
  object QChqtran_Oth: TFDQuery
    BeforePost = QChqtran_OthBeforePost
    AfterPost = QChqtran_OthAfterPost
    AfterDelete = QChqtran_OthAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM CHQTRAN_OTH')
    Left = 30
    Top = 240
    object QChqtran_OthPAYFOR: TStringField
      FieldName = 'PAYFOR'
      OnChange = QChqtran_OthPAYFORChange
      OnValidate = QChqtran_OthPAYFORValidate
      FixedChar = True
      Size = 12
    end
    object QChqtran_OthDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object QChqtran_OthAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '##,##0.00'
    end
    object QChqtran_OthCANFL: TStringField
      FieldName = 'CANFL'
      FixedChar = True
      Size = 1
    end
    object QChqtran_OthCANDT: TDateTimeField
      FieldName = 'CANDT'
    end
    object QChqtran_OthTMBILL: TStringField
      FieldName = 'TMBILL'
      FixedChar = True
      Size = 12
    end
    object QChqtran_OthTMBILDT: TDateField
      FieldName = 'TMBILDT'
    end
  end
  object SoChqtran_Dec: TDataSource
    DataSet = QChqtran_Dec
    Left = 107
    Top = 296
  end
  object QChqtran_Dec: TFDQuery
    BeforePost = QChqtran_DecBeforePost
    AfterPost = QChqtran_DecAfterPost
    AfterDelete = QChqtran_DecAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM CHQTRAN_DEC')
    Left = 30
    Top = 296
    object QChqtran_DecPAYFOR: TStringField
      FieldName = 'PAYFOR'
      OnChange = QChqtran_DecPAYFORChange
      OnValidate = QChqtran_DecPAYFORValidate
      FixedChar = True
      Size = 12
    end
    object QChqtran_DecDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object QChqtran_DecAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '##,##0.00'
    end
    object QChqtran_DecCANFL: TStringField
      FieldName = 'CANFL'
      FixedChar = True
      Size = 1
    end
    object QChqtran_DecCANDT: TDateTimeField
      FieldName = 'CANDT'
    end
    object QChqtran_DecTMBILL: TStringField
      FieldName = 'TMBILL'
      FixedChar = True
      Size = 12
    end
    object QChqtran_DecTMBILDT: TDateField
      FieldName = 'TMBILDT'
    end
  end
  object SoChqtran_Typ: TDataSource
    DataSet = QChqtran_Typ
    Left = 107
    Top = 360
  end
  object QChqtran_Typ: TFDQuery
    BeforePost = QChqtran_TypBeforePost
    AfterPost = QChqtran_TypAfterPost
    AfterDelete = QChqtran_TypAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM CHQTRAN_TYP')
    Left = 30
    Top = 360
    object QChqtran_TypPAYCODE: TStringField
      FieldName = 'PAYCODE'
      OnValidate = QChqtran_TypPAYCODEValidate
      FixedChar = True
      Size = 2
    end
    object QChqtran_TypBANKCOD: TStringField
      FieldName = 'BANKCOD'
      FixedChar = True
      Size = 12
    end
    object QChqtran_TypCHQNO: TStringField
      DisplayWidth = 8
      FieldName = 'CHQNO'
      OnValidate = QChqtran_TypCHQNOValidate
      FixedChar = True
      Size = 8
    end
    object QChqtran_TypDTONCHQ: TDateField
      FieldName = 'DTONCHQ'
      OnValidate = QChqtran_TypDTONCHQValidate
    end
    object QChqtran_TypBANKBOOKCOD: TStringField
      FieldName = 'BANKBOOKCOD'
      OnValidate = QChqtran_TypBANKBOOKCODValidate
      FixedChar = True
      Size = 12
    end
    object QChqtran_TypDTONBANK: TDateField
      FieldName = 'DTONBANK'
    end
    object QChqtran_TypBANKLOCAT: TStringField
      FieldName = 'BANKLOCAT'
      OnValidate = QChqtran_TypBANKLOCATValidate
      Size = 50
    end
    object QChqtran_TypAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      OnValidate = QChqtran_TypAMOUNTValidate
      DisplayFormat = '##,##0.00'
    end
    object QChqtran_TypCANFL: TStringField
      FieldName = 'CANFL'
      FixedChar = True
      Size = 1
    end
    object QChqtran_TypCANDT: TDateTimeField
      FieldName = 'CANDT'
    end
    object QChqtran_TypTMBILL: TStringField
      FieldName = 'TMBILL'
      FixedChar = True
      Size = 12
    end
    object QChqtran_TypTMBILDT: TDateField
      FieldName = 'TMBILDT'
    end
  end
end
