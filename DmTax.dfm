object Dm_Tax: TDm_Tax
  OldCreateOrder = False
  Height = 408
  Width = 904
  object SoTaxtran: TDataSource
    DataSet = QTaxtran
    Left = 88
    Top = 16
  end
  object QTaxtran: TFDQuery
    AfterPost = QTaxtranAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 24
    Top = 16
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
    object QTaxtranRTNSTK: TStringField
      FieldName = 'RTNSTK'
      Size = 1
    end
    object QTaxtranFINCOD: TStringField
      FieldName = 'FINCOD'
      Size = 8
    end
    object QTaxtranPAYFOR: TStringField
      FieldName = 'PAYFOR'
      Size = 3
    end
    object QTaxtranRESONCD: TStringField
      FieldName = 'RESONCD'
      Size = 5
    end
  end
  object SoLastNo: TDataSource
    DataSet = QLastNo
    Left = 88
    Top = 73
  end
  object QLastNo: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT LOCAT,CR_YEAR,CR_MONTH,L_TXPAY FROM LASTNO')
    Left = 24
    Top = 73
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 224
    Top = 295
  end
  object QArpay: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARPAY')
    Left = 88
    Top = 240
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT A.LOCAT AS LOCAT,A.CONTNO AS CONTNO,'
      ' A.CUSCOD AS CUSCOD,A.STRNO AS STRNO,B.SNAM AS SNAM,'
      ' B.NAME1 AS NAME1,B.NAME2 AS NAME2 FROM ARMAST A,CUSTMAST B '
      ' WHERE  A.CUSCOD=B.CUSCOD ')
    Left = 160
    Top = 295
  end
  object QArmast1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 24
    Top = 240
  end
  object QChqtran: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 156
    Top = 17
  end
  object QCanTxtrn: TFDQuery
    AfterPost = QCanTxtrnAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 24
    Top = 130
  end
  object SoCanTxTrn: TDataSource
    DataSet = QCanTxtrn
    Left = 88
    Top = 130
  end
  object QArStopV: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 24
    Top = 186
  end
  object SoQArStopV: TDataSource
    DataSet = QArStopV
    Left = 88
    Top = 186
  end
  object SoCredSal: TDataSource
    DataSet = QCredSal
    Left = 345
    Top = 15
  end
  object QCredSal: TFDQuery
    BeforePost = QCredSalBeforePost
    AfterPost = QCredSalAfterPost
    AfterCancel = QCredSalAfterCancel
    OnCalcFields = QCredSalCalcFields
    OnNewRecord = QCredSalNewRecord
    CachedUpdates = True
    OnUpdateError = QCredSalUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 280
    Top = 15
    object QCredSalLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QCredSalLOCATValidate
      Size = 5
    end
    object QCredSalTAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QCredSalTAXNOValidate
      Size = 12
    end
    object QCredSalTAXDT: TDateField
      FieldName = 'TAXDT'
      OnValidate = QCredSalTAXDTValidate
    end
    object QCredSalTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QCredSalCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QCredSalCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QCredSalSNAM: TStringField
      FieldName = 'SNAM'
      Size = 12
    end
    object QCredSalNAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object QCredSalNAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object QCredSalSTRNO: TStringField
      FieldName = 'STRNO'
      OnValidate = QCredSalSTRNOValidate
    end
    object QCredSalREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QCredSalREFDT: TDateField
      FieldName = 'REFDT'
    end
    object QCredSalVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '##,##0.00'
    end
    object QCredSalNETAMT: TFloatField
      FieldName = 'NETAMT'
      OnValidate = QCredSalNETAMTValidate
      DisplayFormat = '##,##0.00'
    end
    object QCredSalVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '##,##0.00'
    end
    object QCredSalTOTAMT: TFloatField
      FieldName = 'TOTAMT'
      DisplayFormat = '##,##0.00'
    end
    object QCredSalDESCP: TStringField
      FieldName = 'DESCP'
      Size = 60
    end
    object QCredSalFPAR: TStringField
      FieldName = 'FPAR'
      Size = 1
    end
    object QCredSalFPAY: TFloatField
      FieldName = 'FPAY'
    end
    object QCredSalLPAR: TStringField
      FieldName = 'LPAR'
      Size = 1
    end
    object QCredSalLPAY: TFloatField
      FieldName = 'LPAY'
    end
    object QCredSalINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QCredSalFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QCredSalCANDT: TDateField
      FieldName = 'CANDT'
    end
    object QCredSalTAXTYP: TStringField
      FieldName = 'TAXTYP'
      OnValidate = QCredSalTAXTYPValidate
      Size = 1
    end
    object QCredSalTAXFLG: TStringField
      FieldName = 'TAXFLG'
      Size = 1
    end
    object QCredSalUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QCredSalFLCANCL: TStringField
      FieldName = 'FLCANCL'
      Size = 8
    end
    object QCredSalTMBILL: TStringField
      FieldName = 'TMBILL'
      Size = 12
    end
    object QCredSalUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCredSalRTNSTK: TStringField
      FieldName = 'RTNSTK'
      Size = 1
    end
    object QCredSalFINCOD: TStringField
      FieldName = 'FINCOD'
      Size = 8
    end
    object QCredSalPAYFOR: TStringField
      FieldName = 'PAYFOR'
      Size = 3
    end
    object QCredSalRESONCD: TStringField
      FieldName = 'RESONCD'
      Size = 5
    end
  end
  object SoTaxtrn2: TDataSource
    DataSet = QTaxtrn2
    Left = 345
    Top = 74
  end
  object QTaxtrn2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 280
    Top = 72
  end
  object QDBConfig: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM DBCONFIG')
    Left = 221
    Top = 16
  end
  object QArSaleM: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARCRED')
    Left = 280
    Top = 130
  end
  object SoArSaleM: TDataSource
    DataSet = QArSaleM
    Left = 345
    Top = 129
  end
  object QInvtran1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 282
    Top = 186
  end
  object SoInvtran1: TDataSource
    DataSet = QInvtran1
    Left = 345
    Top = 184
  end
  object QCredAgn: TFDQuery
    BeforePost = QCredAgnBeforePost
    AfterPost = QCredAgnAfterPost
    AfterCancel = QCredAgnAfterCancel
    OnCalcFields = QCredAgnCalcFields
    OnNewRecord = QCredAgnNewRecord
    CachedUpdates = True
    OnUpdateError = QCredAgnUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 160
    Top = 132
    object QCredAgnLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QCredAgnLOCATValidate
      Size = 5
    end
    object QCredAgnTAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QCredAgnTAXNOValidate
      Size = 12
    end
    object QCredAgnTAXDT: TDateField
      FieldName = 'TAXDT'
      OnValidate = QCredAgnTAXDTValidate
    end
    object QCredAgnTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QCredAgnCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QCredAgnCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QCredAgnSNAM: TStringField
      FieldName = 'SNAM'
      Size = 12
    end
    object QCredAgnNAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object QCredAgnNAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object QCredAgnSTRNO: TStringField
      FieldName = 'STRNO'
      OnValidate = QCredAgnSTRNOValidate
    end
    object QCredAgnREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QCredAgnREFDT: TDateField
      FieldName = 'REFDT'
    end
    object QCredAgnVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QCredAgnNETAMT: TFloatField
      FieldName = 'NETAMT'
      OnValidate = QCredAgnNETAMTValidate
      DisplayFormat = '##,##0.00'
    end
    object QCredAgnVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '##,##0.00'
    end
    object QCredAgnTOTAMT: TFloatField
      FieldName = 'TOTAMT'
      DisplayFormat = '##,##0.00'
    end
    object QCredAgnDESCP: TStringField
      FieldName = 'DESCP'
      Size = 60
    end
    object QCredAgnFPAR: TStringField
      FieldName = 'FPAR'
      Size = 1
    end
    object QCredAgnFPAY: TFloatField
      FieldName = 'FPAY'
    end
    object QCredAgnLPAR: TStringField
      FieldName = 'LPAR'
      Size = 1
    end
    object QCredAgnLPAY: TFloatField
      FieldName = 'LPAY'
    end
    object QCredAgnINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QCredAgnFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QCredAgnCANDT: TDateField
      FieldName = 'CANDT'
    end
    object QCredAgnTAXTYP: TStringField
      FieldName = 'TAXTYP'
      OnValidate = QCredAgnTAXTYPValidate
      Size = 1
    end
    object QCredAgnTAXFLG: TStringField
      FieldName = 'TAXFLG'
      Size = 1
    end
    object QCredAgnUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QCredAgnFLCANCL: TStringField
      FieldName = 'FLCANCL'
      Size = 8
    end
    object QCredAgnTMBILL: TStringField
      FieldName = 'TMBILL'
      Size = 12
    end
    object QCredAgnRTNSTK: TStringField
      FieldName = 'RTNSTK'
      Size = 1
    end
    object QCredAgnUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCredAgnFINCOD: TStringField
      FieldName = 'FINCOD'
      Size = 8
    end
    object QCredAgnPAYFOR: TStringField
      FieldName = 'PAYFOR'
      Size = 3
    end
    object QCredAgnRESONCD: TStringField
      FieldName = 'RESONCD'
      Size = 5
    end
  end
  object SoCredAgn: TDataSource
    DataSet = QCredAgn
    Left = 220
    Top = 132
  end
  object QAr_trans: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM AR_TRANS')
    Left = 160
    Top = 190
  end
  object SoAr_Trans: TDataSource
    DataSet = QAr_trans
    Left = 224
    Top = 188
  end
  object QCredSal2: TFDQuery
    BeforePost = QCredSal2BeforePost
    AfterPost = QCredSal2AfterPost
    AfterCancel = QCredSal2AfterCancel
    OnCalcFields = QCredSal2CalcFields
    OnNewRecord = QCredSal2NewRecord
    CachedUpdates = True
    OnUpdateError = QCredSal2UpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 156
    Top = 76
    object QCredSal2LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QCredSal2LOCATValidate
      Size = 5
    end
    object QCredSal2TAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QCredSal2TAXNOValidate
      Size = 12
    end
    object QCredSal2TAXDT: TDateField
      FieldName = 'TAXDT'
      OnValidate = QCredSal2TAXDTValidate
    end
    object QCredSal2TSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QCredSal2CONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QCredSal2CUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QCredSal2SNAM: TStringField
      FieldName = 'SNAM'
      Size = 12
    end
    object QCredSal2NAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object QCredSal2NAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object QCredSal2STRNO: TStringField
      FieldName = 'STRNO'
    end
    object QCredSal2REFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QCredSal2REFDT: TDateField
      FieldName = 'REFDT'
    end
    object QCredSal2VATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QCredSal2NETAMT: TFloatField
      FieldName = 'NETAMT'
      OnValidate = QCredSal2NETAMTValidate
    end
    object QCredSal2VATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QCredSal2TOTAMT: TFloatField
      FieldName = 'TOTAMT'
    end
    object QCredSal2DESCP: TStringField
      FieldName = 'DESCP'
      Size = 60
    end
    object QCredSal2FPAR: TStringField
      FieldName = 'FPAR'
      Size = 1
    end
    object QCredSal2FPAY: TFloatField
      FieldName = 'FPAY'
    end
    object QCredSal2LPAR: TStringField
      FieldName = 'LPAR'
      Size = 1
    end
    object QCredSal2LPAY: TFloatField
      FieldName = 'LPAY'
    end
    object QCredSal2INPDT: TDateField
      FieldName = 'INPDT'
    end
    object QCredSal2FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QCredSal2CANDT: TDateField
      FieldName = 'CANDT'
    end
    object QCredSal2TAXTYP: TStringField
      FieldName = 'TAXTYP'
      Size = 1
    end
    object QCredSal2TAXFLG: TStringField
      FieldName = 'TAXFLG'
      Size = 1
    end
    object QCredSal2USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QCredSal2FLCANCL: TStringField
      FieldName = 'FLCANCL'
      Size = 8
    end
    object QCredSal2TMBILL: TStringField
      FieldName = 'TMBILL'
      Size = 12
    end
    object QCredSal2RTNSTK: TStringField
      FieldName = 'RTNSTK'
      Size = 1
    end
    object QCredSal2FINCOD: TStringField
      FieldName = 'FINCOD'
      Size = 8
    end
    object QCredSal2UpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCredSal2PAYFOR: TStringField
      FieldName = 'PAYFOR'
      Size = 3
    end
    object QCredSal2RESONCD: TStringField
      FieldName = 'RESONCD'
      Size = 5
    end
  end
  object SoCredSal2: TDataSource
    DataSet = QCredSal2
    Left = 220
    Top = 76
  end
  object SoCredBuy1: TDataSource
    DataSet = QCredBuy1
    Left = 472
    Top = 16
  end
  object QCredBuy1: TFDQuery
    BeforePost = QCredBuy1BeforePost
    AfterPost = QCredBuy1AfterPost
    AfterCancel = QCredBuy1AfterCancel
    OnCalcFields = QCredBuy1CalcFields
    OnNewRecord = QCredBuy1NewRecord
    CachedUpdates = True
    OnUpdateError = QCredBuy1UpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXBUY')
    Left = 408
    Top = 16
    object QCredBuy1UpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCredBuy1TAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QCredBuy1TAXNOValidate
      FixedChar = True
      Size = 12
    end
    object QCredBuy1TAXDATE: TDateField
      FieldName = 'TAXDATE'
      OnValidate = QCredBuy1TAXDATEValidate
    end
    object QCredBuy1TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      FixedChar = True
      Size = 12
    end
    object QCredBuy1DESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 55
    end
    object QCredBuy1CUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QCredBuy1VATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QCredBuy1AMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '##,##0.00'
    end
    object QCredBuy1REDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '##,##0.00'
    end
    object QCredBuy1BALANCE: TFloatField
      FieldName = 'BALANCE'
      OnValidate = QCredBuy1BALANCEValidate
      DisplayFormat = '##,##0.00'
    end
    object QCredBuy1VAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '##,##0.00'
    end
    object QCredBuy1TOTTAX: TFloatField
      FieldName = 'TOTTAX'
      DisplayFormat = '##,##0.00'
    end
    object QCredBuy1FLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object QCredBuy1CANCEL: TStringField
      FieldName = 'CANCEL'
      FixedChar = True
      Size = 1
    end
    object QCredBuy1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QCredBuy1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QCredBuy1CANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object QCredBuy1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QCredBuy1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QCredBuy1LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QCredBuy1LOCATValidate
      FixedChar = True
      Size = 5
    end
    object QCredBuy1RECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object QCredBuy1YEAR1: TStringField
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object QCredBuy1TAXTYP: TStringField
      FieldName = 'TAXTYP'
      OnValidate = QCredBuy1TAXTYPValidate
      FixedChar = True
      Size = 1
    end
    object QCredBuy1STRNO: TStringField
      FieldName = 'STRNO'
      OnValidate = QCredBuy1STRNOValidate
      FixedChar = True
    end
  end
  object QCrByInvT1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM INVTRAN WHERE STRNO = :STRNO')
    Left = 414
    Top = 72
    ParamData = <
      item
        Name = 'STRNO'
        DataType = ftString
      end>
  end
  object SoCrByInvT1: TDataSource
    DataSet = QCrByInvT1
    Left = 476
    Top = 76
  end
  object QTaxBuy2: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 412
    Top = 132
  end
  object SoTaxBuy2: TDataSource
    DataSet = QTaxBuy2
    Left = 480
    Top = 132
  end
  object QCredBuy2: TFDQuery
    BeforePost = QCredBuy2BeforePost
    AfterPost = QCredBuy2AfterPost
    AfterCancel = QCredBuy2AfterCancel
    OnCalcFields = QCredBuy2CalcFields
    OnNewRecord = QCredBuy2NewRecord
    CachedUpdates = True
    OnUpdateError = QCredBuy2UpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXBUY')
    Left = 412
    Top = 188
    object QCredBuy2UpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCredBuy2TAXNO: TStringField
      FieldName = 'TAXNO'
      OnValidate = QCredBuy2TAXNOValidate
      FixedChar = True
      Size = 12
    end
    object QCredBuy2TAXDATE: TDateField
      FieldName = 'TAXDATE'
      OnValidate = QCredBuy2TAXDATEValidate
    end
    object QCredBuy2TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      FixedChar = True
      Size = 12
    end
    object QCredBuy2DESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 55
    end
    object QCredBuy2CUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QCredBuy2VATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QCredBuy2AMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '##,##0.00'
    end
    object QCredBuy2REDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '##,##0.00'
    end
    object QCredBuy2BALANCE: TFloatField
      FieldName = 'BALANCE'
      OnValidate = QCredBuy2BALANCEValidate
      DisplayFormat = '##,##0.00'
    end
    object QCredBuy2VAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '##,##0.00'
    end
    object QCredBuy2TOTTAX: TFloatField
      FieldName = 'TOTTAX'
      DisplayFormat = '##,##0.00'
    end
    object QCredBuy2FLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object QCredBuy2CANCEL: TStringField
      FieldName = 'CANCEL'
      FixedChar = True
      Size = 1
    end
    object QCredBuy2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QCredBuy2TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QCredBuy2CANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object QCredBuy2CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QCredBuy2POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QCredBuy2LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QCredBuy2LOCATValidate
      FixedChar = True
      Size = 5
    end
    object QCredBuy2RECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object QCredBuy2YEAR1: TStringField
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object QCredBuy2TAXTYP: TStringField
      FieldName = 'TAXTYP'
      OnValidate = QCredBuy2TAXTYPValidate
      FixedChar = True
      Size = 1
    end
    object QCredBuy2STRNO: TStringField
      FieldName = 'STRNO'
      FixedChar = True
    end
  end
  object SoCredBuy2: TDataSource
    DataSet = QCredBuy2
    Left = 480
    Top = 188
  end
  object QCrByInvT2: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      '')
    Left = 412
    Top = 244
  end
  object SoCrByInvT2: TDataSource
    DataSet = QCrByInvT2
    Left = 480
    Top = 244
  end
  object QCanArpay: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 160
    Top = 246
  end
  object QArresv: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARRESV')
    Left = 228
    Top = 244
  end
  object QCanChqtr: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 90
    Top = 292
  end
  object QArinopt: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARINOPT WHERE CONTNO=:CONTNO')
    Left = 288
    Top = 294
    ParamData = <
      item
        Name = 'CONTNO'
      end>
  end
  object SoArinopt: TDataSource
    DataSet = QArinopt
    Left = 352
    Top = 294
  end
  object QOptMast: TFDQuery
    CachedUpdates = True
    MasterSource = SoArinopt
    Connection = DM_SEC.HI_DBMS
    Left = 284
    Top = 240
  end
  object SoOptmast: TDataSource
    DataSet = QOptMast
    Left = 352
    Top = 240
  end
  object qCredResv: TFDQuery
    BeforePost = qCredResvBeforePost
    AfterPost = qCredResvAfterPost
    AfterCancel = qCredResvAfterCancel
    OnCalcFields = qCredResvCalcFields
    OnNewRecord = qCredResvNewRecord
    CachedUpdates = True
    OnUpdateError = qCredResvUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXTRAN')
    Left = 424
    Top = 304
    object qCredResvUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object qCredResvLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = qCredResvLOCATValidate
      FixedChar = True
      Size = 5
    end
    object qCredResvTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object qCredResvTAXDT: TDateField
      FieldName = 'TAXDT'
      OnValidate = qCredResvTAXDTValidate
    end
    object qCredResvTSALE: TStringField
      FieldName = 'TSALE'
      FixedChar = True
      Size = 1
    end
    object qCredResvCONTNO: TStringField
      FieldName = 'CONTNO'
      FixedChar = True
    end
    object qCredResvCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnChange = qCredResvCUSCODChange
      FixedChar = True
      Size = 12
    end
    object qCredResvSNAM: TStringField
      FieldName = 'SNAM'
      FixedChar = True
      Size = 12
    end
    object qCredResvNAME1: TStringField
      FieldName = 'NAME1'
      FixedChar = True
      Size = 50
    end
    object qCredResvNAME2: TStringField
      FieldName = 'NAME2'
      FixedChar = True
      Size = 50
    end
    object qCredResvSTRNO: TStringField
      FieldName = 'STRNO'
      FixedChar = True
    end
    object qCredResvREFNO: TStringField
      FieldName = 'REFNO'
      OnValidate = qCredResvREFNOValidate
      FixedChar = True
      Size = 12
    end
    object qCredResvREFDT: TDateField
      FieldName = 'REFDT'
    end
    object qCredResvVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '##,##0.00'
    end
    object qCredResvNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '##,##0.00'
    end
    object qCredResvVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '##,##0.00'
    end
    object qCredResvTOTAMT: TFloatField
      FieldName = 'TOTAMT'
      DisplayFormat = '##,##0.00'
    end
    object qCredResvDESCP: TStringField
      FieldName = 'DESCP'
      FixedChar = True
      Size = 60
    end
    object qCredResvFPAR: TStringField
      FieldName = 'FPAR'
      FixedChar = True
      Size = 1
    end
    object qCredResvFPAY: TFloatField
      FieldName = 'FPAY'
    end
    object qCredResvLPAR: TStringField
      FieldName = 'LPAR'
      FixedChar = True
      Size = 1
    end
    object qCredResvLPAY: TFloatField
      FieldName = 'LPAY'
    end
    object qCredResvINPDT: TDateField
      FieldName = 'INPDT'
    end
    object qCredResvFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object qCredResvCANDT: TDateField
      FieldName = 'CANDT'
    end
    object qCredResvTAXTYP: TStringField
      FieldName = 'TAXTYP'
      FixedChar = True
      Size = 1
    end
    object qCredResvTAXFLG: TStringField
      FieldName = 'TAXFLG'
      FixedChar = True
      Size = 1
    end
    object qCredResvUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object qCredResvFLCANCL: TStringField
      FieldName = 'FLCANCL'
      FixedChar = True
      Size = 8
    end
    object qCredResvTMBILL: TStringField
      FieldName = 'TMBILL'
      FixedChar = True
      Size = 12
    end
    object qCredResvRTNSTK: TStringField
      FieldName = 'RTNSTK'
      FixedChar = True
      Size = 1
    end
    object qCredResvFINCOD: TStringField
      FieldName = 'FINCOD'
      FixedChar = True
      Size = 8
    end
    object qCredResvDOSTAX: TStringField
      FieldName = 'DOSTAX'
      FixedChar = True
      Size = 15
    end
    object qCredResvPAYFOR: TStringField
      FieldName = 'PAYFOR'
      FixedChar = True
      Size = 3
    end
    object qCredResvRESONCD: TStringField
      FieldName = 'RESONCD'
      FixedChar = True
      Size = 5
    end
  end
  object SoCredResv: TDataSource
    DataSet = qCredResv
    Left = 496
    Top = 304
  end
end
