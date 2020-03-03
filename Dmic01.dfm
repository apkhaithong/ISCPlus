object FmDmic01: TFmDmic01
  OldCreateOrder = True
  OnCreate = FmDmic01Create
  Height = 637
  Width = 692
  object Rcinv: TFDQuery
    BeforeClose = RcinvBeforeClose
    BeforeEdit = RcinvBeforeEdit
    BeforePost = RcinvBeforePost
    AfterPost = RcinvAfterPost
    BeforeCancel = RcinvBeforeCancel
    AfterCancel = RcinvAfterCancel
    BeforeDelete = RcinvBeforeDelete
    AfterDelete = RcinvAfterPost
    OnCalcFields = RcinvCalcFields
    OnNewRecord = RcinvNewRecord
    CachedUpdates = True
    OnUpdateError = RcinvUpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM RC_INVOI')
    Left = 18
    Top = 12
    object RcinvRECVNO: TStringField
      FieldName = 'RECVNO'
      Size = 12
    end
    object RcinvRECVDT: TDateField
      FieldName = 'RECVDT'
      OnValidate = RcinvRECVDTValidate
    end
    object RcinvRECVLOC: TStringField
      FieldName = 'RECVLOC'
      OnValidate = RcinvRECVLOCValidate
      Size = 5
    end
    object RcinvPONO: TStringField
      FieldName = 'PONO'
      OnValidate = RcinvPONOValidate
      Size = 12
    end
    object RcinvINVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = RcinvINVNOValidate
      Size = 12
    end
    object RcinvINVDATE: TDateField
      FieldName = 'INVDATE'
      OnChange = RcinvINVDATEChange
    end
    object RcinvCREDTM: TFloatField
      FieldName = 'CREDTM'
      OnValidate = RcinvCREDTMValidate
    end
    object RcinvINVDUE: TDateField
      FieldName = 'INVDUE'
    end
    object RcinvVATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object RcinvAPCODE: TStringField
      FieldName = 'APCODE'
      OnValidate = RcinvAPCODEValidate
      Size = 12
    end
    object RcinvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object RcinvTNOPAY: TFloatField
      FieldName = 'TNOPAY'
    end
    object RcinvTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object RcinvDISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object RcinvDISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '#,##0.00'
    end
    object RcinvNETAMT: TFloatField
      FieldName = 'NETAMT'
      OnValidate = RcinvVATAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object RcinvBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object RcinvVATAMT: TFloatField
      FieldName = 'VATAMT'
      OnValidate = RcinvVATAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object RcinvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '#,##0.00'
    end
    object RcinvVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object RcinvPAID: TFloatField
      FieldName = 'PAID'
      DisplayFormat = '#,##0.00'
    end
    object RcinvTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object RcinvTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object RcinvTAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object RcinvFLAG: TStringField
      FieldName = 'FLAG'
      OnValidate = RcinvFLAGValidate
      Size = 1
    end
    object RcinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object RcinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object RcinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object RcinvUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Size = 25
      Calculated = True
    end
    object RcinvEXDISAMT: TFloatField
      FieldName = 'EXDISAMT'
      OnValidate = RcinvEXDISAMTValidate
    end
    object RcinvDISBATH: TStringField
      FieldName = 'DISBATH'
      Size = 1
    end
    object RcinvUPD: TStringField
      FieldName = 'UPD'
      Size = 1
    end
    object RcinvPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object RcinvPAYTYP: TStringField
      FieldName = 'PAYTYP'
      OnChange = RcinvPAYTYPChange
      Size = 2
    end
    object RcinvREFNO: TStringField
      FieldName = 'REFNO'
      Size = 15
    end
    object RcinvPOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object RcinvLCNO: TStringField
      FieldName = 'LCNO'
      Size = 15
    end
  end
  object SoRcinv: TDataSource
    DataSet = Rcinv
    Left = 65
    Top = 12
  end
  object Rctran: TFDQuery
    AfterOpen = RctranAfterOpen
    BeforeClose = RctranBeforeClose
    BeforePost = RctranBeforePost
    AfterPost = RctranAfterPost
    BeforeDelete = RctranBeforeDelete
    AfterDelete = RctranAfterDelete
    OnCalcFields = RctranCalcFields
    OnNewRecord = RctranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM RC_TRANS')
    Left = 12
    Top = 60
    object RctranRECVNO: TStringField
      FieldName = 'RECVNO'
      Size = 12
    end
    object RctranRECVLOC: TStringField
      FieldName = 'RECVLOC'
      Size = 5
    end
    object RctranPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
      OnChange = RctranPARTNOChange
      OnValidate = RctranPARTNOValidate
    end
    object RctranUNIT: TStringField
      FieldName = 'UNIT'
      Size = 10
    end
    object RctranUCOST: TFloatField
      FieldName = 'UCOST'
      OnValidate = RctranUCOSTValidate
      DisplayFormat = '#,##0.00'
    end
    object RctranQTYORD: TFloatField
      FieldName = 'QTYORD'
      OnValidate = RctranQTYORDValidate
      DisplayFormat = '#,##0.0000'
    end
    object RctranQTYRECV: TFloatField
      FieldName = 'QTYRECV'
      OnValidate = RctranQTYRECVValidate
      DisplayFormat = '#,##0.0000'
    end
    object RctranNETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '#,##0.00'
    end
    object RctranREDU1: TFloatField
      FieldName = 'REDU1'
      OnValidate = RctranREDU1Validate
      DisplayFormat = '#,##0.00'
    end
    object RctranREDU2: TFloatField
      FieldName = 'REDU2'
      OnValidate = RctranREDU2Validate
      DisplayFormat = '#,##0.00'
    end
    object RctranREDU3: TFloatField
      FieldName = 'REDU3'
      OnValidate = RctranREDU3Validate
      DisplayFormat = '#,##0.00'
    end
    object RctranACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object RctranRECVDATE: TDateField
      FieldName = 'RECVDATE'
    end
    object RctranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object RctranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object RctranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object RctranPONO: TStringField
      FieldName = 'PONO'
      OnValidate = RctranPONOValidate
      Size = 12
    end
    object RctranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object RctranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
    object RctranDISCAMT: TFloatField
      FieldName = 'DISCAMT'
      OnValidate = RctranDISCAMTValidate
    end
    object RctranUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object RctranVATCOST: TFloatField
      FieldName = 'VATCOST'
    end
    object RctranAPCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object RctranPARTDESC: TStringField
      FieldName = 'PARTDESC'
      Size = 50
    end
    object RctranGROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
    object RctranLOTNO: TStringField
      FieldName = 'LOTNO'
      Size = 50
    end
    object RctranNETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '#,##0.0000'
    end
  end
  object SoRctran: TDataSource
    DataSet = Rctran
    OnStateChange = SoRctranStateChange
    Left = 65
    Top = 60
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TMPAJTR')
    Left = 113
    Top = 12
  end
  object Pkinv: TFDQuery
    BeforeClose = PkinvBeforeClose
    BeforePost = PkinvBeforePost
    AfterPost = PkinvAfterPost
    BeforeCancel = PkinvBeforeCancel
    AfterCancel = PkinvAfterCancel
    BeforeDelete = PkinvBeforeDelete
    AfterDelete = PkinvAfterPost
    OnCalcFields = PkinvCalcFields
    OnNewRecord = PkinvNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM PK_INVOI')
    Left = 113
    Top = 56
    object PkinvPKNO: TStringField
      FieldName = 'PKNO'
      Size = 12
    end
    object PkinvSALLEV: TStringField
      FieldName = 'SALLEV'
      Size = 1
    end
    object PkinvVATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object PkinvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      OnValidate = PkinvOFFICCODValidate
      Size = 5
    end
    object PkinvPKDATE: TDateField
      FieldName = 'PKDATE'
      OnValidate = PkinvPKDATEValidate
    end
    object PkinvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object PkinvDISCT: TFloatField
      FieldName = 'DISCT'
      OnValidate = PkinvDISCTValidate
      DisplayFormat = '#,##0.00'
    end
    object PkinvDISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '#,##0.00'
    end
    object PkinvNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '#,##0.00'
    end
    object PkinvBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object PkinvVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object PkinvVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object PkinvNETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object PkinvREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object PkinvREFDAT: TDateField
      FieldName = 'REFDAT'
    end
    object PkinvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object PkinvSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object PkinvJOBNO: TStringField
      FieldName = 'JOBNO'
      OnValidate = PkinvJOBNOValidate
      Size = 15
    end
    object PkinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object PkinvCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnChange = PkinvCUSCODChange
      OnValidate = PkinvCUSCODValidate
      Size = 12
    end
    object PkinvSVCOLOR: TStringField
      FieldName = 'SVCOLOR'
      Size = 1
    end
    object PkinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object PkinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object PkinvPKLOCAT: TStringField
      FieldName = 'PKLOCAT'
      OnValidate = PkinvPKLOCATValidate
      Size = 5
    end
    object PkinvUpdatestatus: TStringField
      DisplayWidth = 25
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Size = 25
      Calculated = True
    end
    object PkinvCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object PkinvCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object PkinvPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object PkinvSVORD: TStringField
      FieldName = 'SVORD'
      Size = 12
    end
    object PkinvRTNPK: TStringField
      FieldName = 'RTNPK'
      OnValidate = PkinvRTNPKValidate
      Size = 12
    end
    object PkinvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object PkinvSALTYPE: TStringField
      FieldName = 'SALTYPE'
      OnValidate = PkinvSALTYPEValidate
      Size = 5
    end
    object PkinvDISCTYP: TStringField
      FieldName = 'DISCTYP'
      Size = 1
    end
    object PkinvEXDISAMT: TFloatField
      FieldName = 'EXDISAMT'
      OnValidate = PkinvEXDISAMTValidate
      DisplayFormat = '##,##0.00'
      EditFormat = '###0.00'
    end
    object PkinvDISBATH: TStringField
      FieldName = 'DISBATH'
      Size = 1
    end
    object PkinvCAMPNO: TStringField
      FieldName = 'CAMPNO'
      Size = 5
    end
    object PkinvTRANTO: TStringField
      FieldName = 'TRANTO'
      Size = 12
    end
    object PkinvNETADD: TFloatField
      FieldName = 'NETADD'
      DisplayFormat = '#,##0.00'
    end
    object PkinvCUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
    object PkinvKITCODE: TStringField
      FieldName = 'KITCODE'
    end
    object PkinvPOSTGL: TStringField
      FieldName = 'POSTGL'
      Size = 1
    end
  end
  object SoPkinv: TDataSource
    DataSet = Pkinv
    Left = 162
    Top = 60
  end
  object SoPkTran: TDataSource
    DataSet = PkTran
    Left = 162
    Top = 108
  end
  object PkTran: TFDQuery
    AfterOpen = PkTranAfterOpen
    BeforeClose = PkTranBeforeClose
    BeforePost = PkTranBeforePost
    AfterPost = PkTranAfterPost
    BeforeDelete = PkTranBeforeDelete
    AfterDelete = PkTranAfterPost
    OnCalcFields = PkTranCalcFields
    OnNewRecord = PkTranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM PK_TRANS')
    Left = 113
    Top = 108
    object PkTranPKNO: TStringField
      FieldName = 'PKNO'
      Size = 12
    end
    object PkTranPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
      OnChange = PkTranPARTNOChange
    end
    object PkTranUPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '#,##0.00'
    end
    object PkTranQTYORD: TFloatField
      FieldName = 'QTYORD'
      OnValidate = PkTranQTYORDValidate
      DisplayFormat = '#,##0.000'
    end
    object PkTranQTYOUT: TFloatField
      FieldName = 'QTYOUT'
      DisplayFormat = '#,##0.000'
    end
    object PkTranQTYBOD: TFloatField
      FieldName = 'QTYBOD'
      DisplayFormat = '#,##0.000'
    end
    object PkTranNETFL: TStringField
      FieldName = 'NETFL'
      Size = 1
    end
    object PkTranREDU1: TFloatField
      FieldName = 'REDU1'
      DisplayFormat = '#,##0.00'
    end
    object PkTranREDU2: TFloatField
      FieldName = 'REDU2'
      DisplayFormat = '#,##0.00'
    end
    object PkTranREDU3: TFloatField
      FieldName = 'REDU3'
      DisplayFormat = '#,##0.00'
    end
    object PkTranNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object PkTranTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object PkTranACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object PkTranJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object PkTranSERIALNO: TStringField
      FieldName = 'SERIALNO'
    end
    object PkTranPKDATE: TDateField
      FieldName = 'PKDATE'
    end
    object PkTranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object PkTranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object PkTranPKLOCAT: TStringField
      FieldName = 'PKLOCAT'
      Size = 5
    end
    object PkTranSERVCOD: TStringField
      FieldName = 'SERVCOD'
      Size = 5
    end
    object PkTranFRT: TFloatField
      FieldName = 'FRT'
    end
    object PkTranRTNPK: TStringField
      FieldName = 'RTNPK'
      Size = 12
    end
    object PkTranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object PkTranSVCOLOR: TStringField
      FieldName = 'SVCOLOR'
      Size = 1
    end
    object PkTranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object PkTranCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object PkTranBACKFLG: TStringField
      FieldName = 'BACKFLG'
      Size = 1
    end
    object PkTranCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object PkTranPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object PkTranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
    object PkTranFREE: TStringField
      FieldName = 'FREE'
      Size = 1
    end
    object PkTranGROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
    object PkTranDISCAMT: TFloatField
      FieldName = 'DISCAMT'
    end
    object PkTranUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object PkTranCAMPNO: TStringField
      FieldName = 'CAMPNO'
      Size = 5
    end
    object PkTranCAMFLG: TStringField
      FieldName = 'CAMFLG'
      Size = 1
    end
    object PkTranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = PkTranCUSCODValidate
      Size = 12
    end
    object PkTranREFPO: TStringField
      FieldName = 'REFPO'
      Size = 12
    end
    object PkTranREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object PkTranREFDAT: TDateField
      FieldName = 'REFDAT'
    end
    object PkTranCUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
    object PkTranSESFLAG: TStringField
      FieldName = 'SESFLAG'
      FixedChar = True
      Size = 1
    end
    object PkTranPARTDESC: TStringField
      FieldName = 'PARTDESC'
      FixedChar = True
      Size = 50
    end
    object PkTranWAREHOUSECOD: TStringField
      FieldName = 'WAREHOUSECOD'
      Size = 12
    end
  end
  object Icinv: TFDQuery
    BeforeClose = IcinvBeforeClose
    BeforeEdit = IcinvBeforeEdit
    BeforePost = IcinvBeforePost
    AfterPost = IcinvAfterPost
    BeforeCancel = IcinvBeforeCancel
    AfterCancel = IcinvAfterCancel
    OnCalcFields = IcinvCalcFields
    OnNewRecord = IcinvNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM IC_INVOI')
    Left = 16
    Top = 204
    object IcinvINVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object IcinvINVLOC: TStringField
      DisplayWidth = 5
      FieldName = 'INVLOC'
      OnValidate = IcinvINVLOCValidate
      Size = 5
    end
    object IcinvINVDATE: TDateField
      FieldName = 'INVDATE'
      OnValidate = IcinvINVDATEValidate
    end
    object IcinvCREDTM: TFloatField
      FieldName = 'CREDTM'
      OnValidate = IcinvCREDTMValidate
    end
    object IcinvINVDUE: TDateField
      FieldName = 'INVDUE'
    end
    object IcinvPKNO: TStringField
      FieldName = 'PKNO'
      Size = 12
    end
    object IcinvVATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object IcinvCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object IcinvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object IcinvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object IcinvDISCT: TFloatField
      FieldName = 'DISCT'
      OnValidate = IcinvDISCTValidate
      DisplayFormat = '#,##0.00'
    end
    object IcinvDISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '#,##0.00'
    end
    object IcinvNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '#,##0.00'
    end
    object IcinvBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object IcinvVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object IcinvVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object IcinvNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object IcinvPAID: TFloatField
      FieldName = 'PAID'
    end
    object IcinvTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object IcinvTAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object IcinvFLAG: TStringField
      FieldName = 'FLAG'
      OnValidate = IcinvFLAGValidate
      Size = 1
    end
    object IcinvJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object IcinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object IcinvTNOPAY: TFloatField
      FieldName = 'TNOPAY'
    end
    object IcinvTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object IcinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object IcinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object IcinvUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object IcinvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object IcinvCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object IcinvCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object IcinvPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object IcinvEXDISAMT: TFloatField
      FieldName = 'EXDISAMT'
      OnValidate = IcinvEXDISAMTValidate
    end
    object IcinvDISBATH: TStringField
      FieldName = 'DISBATH'
      Size = 1
    end
    object IcinvTRANTO: TStringField
      FieldName = 'TRANTO'
      Size = 12
    end
    object IcinvDEPOSTNO: TStringField
      FieldName = 'DEPOSTNO'
      OnValidate = IcinvDEPOSTNOValidate
      Size = 12
    end
    object IcinvDEPOSAMT: TFloatField
      FieldName = 'DEPOSAMT'
      DisplayFormat = '#,##0.00'
    end
    object IcinvDEPOSVAT: TFloatField
      FieldName = 'DEPOSVAT'
    end
    object IcinvDEPOSTAX: TStringField
      FieldName = 'DEPOSTAX'
      Size = 12
    end
    object IcinvRTNAMT: TFloatField
      FieldName = 'RTNAMT'
    end
    object IcinvRTNDATE: TDateField
      FieldName = 'RTNDATE'
    end
    object IcinvRTNNO: TStringField
      FieldName = 'RTNNO'
      FixedChar = True
      Size = 12
    end
    object IcinvCAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object IcinvPTYPE: TStringField
      FieldName = 'PTYPE'
      FixedChar = True
      Size = 2
    end
    object IcinvKITCODE: TStringField
      FieldName = 'KITCODE'
      FixedChar = True
    end
  end
  object SoIcinv: TDataSource
    DataSet = Icinv
    Left = 65
    Top = 204
  end
  object IcTran: TFDQuery
    AfterOpen = IcTranAfterOpen
    BeforeClose = IcTranBeforeClose
    BeforePost = IcTranBeforePost
    AfterPost = IcTranAfterPost
    BeforeDelete = IcTranBeforeDelete
    AfterDelete = IcTranAfterPost
    OnCalcFields = IcTranCalcFields
    OnNewRecord = IcTranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM IC_TRANS')
    Left = 16
    Top = 252
    object IcTranINVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object IcTranINVLOC: TStringField
      FieldName = 'INVLOC'
      Size = 5
    end
    object IcTranINVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object IcTranPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
      OnChange = IcTranPARTNOChange
    end
    object IcTranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object IcTranUPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '#,##0.00'
    end
    object IcTranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
      DisplayFormat = '#,##0.00'
    end
    object IcTranQTYORD: TFloatField
      FieldName = 'QTYORD'
      DisplayFormat = '#,##0.0000'
    end
    object IcTranQTYOUT: TFloatField
      FieldName = 'QTYOUT'
      DisplayFormat = '#,##0.0000'
    end
    object IcTranQTYBOD: TFloatField
      FieldName = 'QTYBOD'
      DisplayFormat = '#,##0.0000'
    end
    object IcTranNETFL: TStringField
      FieldName = 'NETFL'
      Size = 1
    end
    object IcTranREDU1: TFloatField
      FieldName = 'REDU1'
      DisplayFormat = '#,##0.00'
    end
    object IcTranREDU2: TFloatField
      FieldName = 'REDU2'
      DisplayFormat = '#,##0.00'
    end
    object IcTranREDU3: TFloatField
      FieldName = 'REDU3'
      DisplayFormat = '#,##0.00'
    end
    object IcTranNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object IcTranTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object IcTranACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object IcTranJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object IcTranSERIALNO: TStringField
      FieldName = 'SERIALNO'
    end
    object IcTranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object IcTranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object IcTranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object IcTranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object IcTranCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object IcTranCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object IcTranPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object IcTranSESFLAG: TStringField
      FieldName = 'SESFLAG'
      Size = 1
    end
    object IcTranUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object IcTranFREE: TStringField
      FieldName = 'FREE'
      Size = 1
    end
    object IcTranGROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
    object IcTranDISCAMT: TFloatField
      FieldName = 'DISCAMT'
    end
    object IcTranREFPO: TStringField
      FieldName = 'REFPO'
      Size = 12
    end
    object IcTranCAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object IcTranPARTDESC: TStringField
      FieldName = 'PARTDESC'
      FixedChar = True
      Size = 50
    end
  end
  object SoIcTran: TDataSource
    DataSet = IcTran
    Left = 65
    Top = 252
  end
  object Condpay: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SCONDPAY')
    Left = 267
    Top = 253
  end
  object SoRtinv: TDataSource
    DataSet = Rtinv
    Left = 65
    Top = 108
  end
  object SoRttran: TDataSource
    DataSet = Rttran
    Left = 65
    Top = 156
  end
  object MvInv: TFDQuery
    BeforeClose = MvInvBeforeClose
    BeforePost = MvInvBeforePost
    AfterPost = MvInvAfterPost
    AfterCancel = MvInvAfterCancel
    BeforeDelete = MvInvBeforeDelete
    AfterDelete = MvInvAfterPost
    OnCalcFields = MvInvCalcFields
    OnNewRecord = MvInvNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM MV_INVOI')
    Left = 213
    Top = 12
    object MvInvMOVFRM: TStringField
      FieldName = 'MOVFRM'
      OnValidate = MvInvMOVFRMValidate
      Size = 5
    end
    object MvInvMOVTO: TStringField
      FieldName = 'MOVTO'
      OnValidate = MvInvMOVTOValidate
      Size = 5
    end
    object MvInvMOVDT: TDateField
      FieldName = 'MOVDT'
      OnValidate = MvInvMOVDTValidate
    end
    object MvInvMOVNO: TStringField
      FieldName = 'MOVNO'
      Size = 12
    end
    object MvInvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object MvInvAPPROVCD: TStringField
      FieldName = 'APPROVCD'
      Size = 5
    end
    object MvInvRECVCOD: TStringField
      FieldName = 'RECVCOD'
      Size = 5
    end
    object MvInvRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object MvInvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object MvInvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object MvInvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object MvInvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object MvInvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object MvInvUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Size = 25
      Calculated = True
    end
    object MvInvCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 13
    end
  end
  object SoMvInv: TDataSource
    DataSet = MvInv
    Left = 267
    Top = 12
  end
  object SoMvTran: TDataSource
    DataSet = Mvtran
    Left = 267
    Top = 60
  end
  object Mvtran: TFDQuery
    AfterOpen = MvtranAfterOpen
    BeforeClose = MvtranBeforeClose
    BeforePost = MvtranBeforePost
    AfterPost = MvtranAfterPost
    BeforeDelete = MvtranBeforeDelete
    AfterDelete = MvtranAfterPost
    OnCalcFields = MvtranCalcFields
    OnNewRecord = MvtranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM MV_TRANS')
    Left = 213
    Top = 60
    object MvtranMOVNO: TStringField
      FieldName = 'MOVNO'
      Size = 12
    end
    object MvtranMOVFRM: TStringField
      FieldName = 'MOVFRM'
      Size = 5
    end
    object MvtranMOVTO: TStringField
      FieldName = 'MOVTO'
      Size = 5
    end
    object MvtranPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
      OnChange = MvtranPARTNOChange
      OnValidate = MvtranPARTNOValidate
    end
    object MvtranUPRICE: TFloatField
      FieldName = 'UPRICE'
      OnValidate = MvtranUPRICEValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '#####'
    end
    object MvtranQTYMOV: TFloatField
      FieldName = 'QTYMOV'
      OnValidate = MvtranQTYMOVValidate
      DisplayFormat = '#,##0.0000'
    end
    object MvtranTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object MvtranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object MvtranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object MvtranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object MvtranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
    object MvtranUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object MvtranPARTDESC: TStringField
      FieldName = 'PARTDESC'
      Size = 50
    end
    object MvtranWAREHOUSECOD: TStringField
      FieldName = 'WAREHOUSECOD'
      Size = 12
    end
  end
  object Rttran: TFDQuery
    AfterOpen = RttranAfterOpen
    BeforeClose = RttranBeforeClose
    BeforePost = RttranBeforePost
    AfterPost = RttranAfterPost
    BeforeDelete = RttranBeforeDelete
    AfterDelete = RttranAfterPost
    OnCalcFields = RttranCalcFields
    OnNewRecord = RttranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM RT_TRAN')
    Left = 16
    Top = 156
    object RttranRTNLOC: TStringField
      FieldName = 'RTNLOC'
      Size = 5
    end
    object RttranRTNNO: TStringField
      FieldName = 'RTNNO'
      Size = 12
    end
    object RttranRTNDT: TDateField
      FieldName = 'RTNDT'
    end
    object RttranPARTNO: TStringField
      FieldName = 'PARTNO'
      OnChange = RttranPARTNOChange
      OnValidate = RttranPARTNOValidate
    end
    object RttranUPRICE: TFloatField
      FieldName = 'UPRICE'
      OnValidate = RttranUPRICEValidate
      DisplayFormat = '#,##0.00'
    end
    object RttranQTYINV: TFloatField
      FieldName = 'QTYINV'
      DisplayFormat = '#,##0.0000'
    end
    object RttranQTYRTN: TFloatField
      FieldName = 'QTYRTN'
      OnValidate = RttranQTYRTNValidate
      DisplayFormat = '#,##0.0000'
    end
    object RttranNETFL: TStringField
      FieldName = 'NETFL'
      Size = 1
    end
    object RttranNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object RttranTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object RttranACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object RttranJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object RttranSERIALNO: TStringField
      FieldName = 'SERIALNO'
    end
    object RttranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object RttranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object RttranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object RttranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object RttranCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object RttranCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object RttranPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object RttranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
    object RttranCOST: TFloatField
      FieldName = 'COST'
    end
    object RttranTAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object RttranUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object RttranPARTDESC: TStringField
      FieldName = 'PARTDESC'
      FixedChar = True
      Size = 50
    end
  end
  object Rtinv: TFDQuery
    BeforeClose = RtinvBeforeClose
    AfterEdit = RtinvAfterEdit
    BeforePost = RtinvBeforePost
    AfterPost = RtinvAfterPost
    BeforeCancel = RtinvBeforeCancel
    AfterCancel = RtinvAfterCancel
    BeforeDelete = RtinvBeforeDelete
    AfterDelete = RtinvAfterPost
    OnCalcFields = RtinvCalcFields
    OnNewRecord = RtinvNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM RT_INVOI')
    Left = 16
    Top = 108
    object RtinvRTNLOC: TStringField
      FieldName = 'RTNLOC'
      OnValidate = RtinvRTNLOCValidate
      Size = 5
    end
    object RtinvRTNNO: TStringField
      FieldName = 'RTNNO'
      Size = 12
    end
    object RtinvRTNDT: TDateField
      FieldName = 'RTNDT'
      OnValidate = RtinvRTNDTValidate
    end
    object RtinvTAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object RtinvTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object RtinvINVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = RtinvINVNOValidate
      Size = 12
    end
    object RtinvINVDT: TDateField
      FieldName = 'INVDT'
    end
    object RtinvCREDNO: TStringField
      FieldName = 'CREDNO'
      OnValidate = RtinvCREDNOValidate
      Size = 12
    end
    object RtinvCREDDT: TDateField
      FieldName = 'CREDDT'
    end
    object RtinvAPCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object RtinvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      OnValidate = RtinvOFFICCODValidate
      Size = 5
    end
    object RtinvVATTYP: TStringField
      FieldName = 'VATTYP'
      Size = 1
    end
    object RtinvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object RtinvVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object RtinvVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object RtinvNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object RtinvFLAG: TStringField
      FieldName = 'FLAG'
      OnValidate = RtinvFLAGValidate
      Size = 1
    end
    object RtinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object RtinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object RtinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object RtinvTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object RtinvUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object RtinvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object RtinvCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object RtinvCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object RtinvJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object RtinvPAYTYPE: TStringField
      FieldName = 'PAYTYPE'
      Size = 1
    end
    object RtinvDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object RtinvPOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object RtinvPOSTGL0: TStringField
      FieldName = 'POSTGL0'
      FixedChar = True
      Size = 1
    end
  end
  object QaTran: TFDQuery
    AfterOpen = QaTranAfterOpen
    BeforeClose = QaTranBeforeClose
    BeforeInsert = QaTranBeforeInsert
    BeforePost = QaTranBeforePost
    AfterPost = QaTranAfterPost
    AfterDelete = QaTranAfterPost
    OnNewRecord = QaTranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM QATRANS')
    Left = 213
    Top = 204
    object QaTranQANO: TStringField
      FieldName = 'QANO'
      Size = 12
    end
    object QaTranQADATE: TDateField
      FieldName = 'QADATE'
    end
    object QaTranPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
      OnChange = QaTranPARTNOChange
      OnValidate = QaTranPARTNOValidate
    end
    object QaTranUPRICE: TFloatField
      FieldName = 'UPRICE'
      OnValidate = QaTranUPRICEValidate
      DisplayFormat = '#,##0.00'
    end
    object QaTranQTYORD: TFloatField
      FieldName = 'QTYORD'
      OnValidate = QaTranQTYORDValidate
      DisplayFormat = '#,##0.0000'
    end
    object QaTranQTYOUT: TFloatField
      FieldName = 'QTYOUT'
      DisplayFormat = '#,##0.0000'
    end
    object QaTranQTYBOD: TFloatField
      FieldName = 'QTYBOD'
      DisplayFormat = '#,##0.0000'
    end
    object QaTranNETFL: TStringField
      FieldName = 'NETFL'
      Size = 1
    end
    object QaTranREDU1: TFloatField
      FieldName = 'REDU1'
      OnValidate = QaTranREDU1Validate
      DisplayFormat = '#,##0.00'
    end
    object QaTranREDU2: TFloatField
      FieldName = 'REDU2'
      OnValidate = QaTranREDU2Validate
      DisplayFormat = '#,##0.00'
    end
    object QaTranREDU3: TFloatField
      FieldName = 'REDU3'
      OnValidate = QaTranREDU3Validate
      DisplayFormat = '#,##0.00'
    end
    object QaTranNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object QaTranTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object QaTranACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object QaTranJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QaTranSERIALNO: TStringField
      FieldName = 'SERIALNO'
    end
    object QaTranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QaTranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QaTranQALOCAT: TStringField
      FieldName = 'QALOCAT'
      Size = 5
    end
    object QaTranPARTDESC: TStringField
      FieldName = 'PARTDESC'
      FixedChar = True
      Size = 50
    end
  end
  object SoQainv: TDataSource
    DataSet = Qainv
    Left = 267
    Top = 156
  end
  object SoQaTran: TDataSource
    DataSet = QaTran
    OnStateChange = FmDmic01Create
    Left = 267
    Top = 204
  end
  object Adjinv: TFDQuery
    BeforeClose = AdjinvBeforeClose
    BeforePost = AdjinvBeforePost
    AfterPost = AdjinvAfterPost
    BeforeCancel = AdjinvBeforeCancel
    AfterCancel = AdjinvAfterCancel
    BeforeDelete = AdjinvBeforeDelete
    AfterDelete = AdjinvAfterPost
    OnCalcFields = AdjinvCalcFields
    OnNewRecord = AdjinvNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ADJ_INVOI')
    Left = 113
    Top = 156
    object AdjinvADJNO: TStringField
      FieldName = 'ADJNO'
      Size = 12
    end
    object AdjinvADJLOC: TStringField
      DisplayWidth = 5
      FieldName = 'ADJLOC'
      OnValidate = AdjinvADJLOCValidate
      Size = 5
    end
    object AdjinvADJDATE: TDateField
      FieldName = 'ADJDATE'
      OnValidate = AdjinvADJDATEValidate
    end
    object AdjinvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object AdjinvTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object AdjinvTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object AdjinvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object AdjinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object AdjinvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '#,##0.00'
    end
    object AdjinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object AdjinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object AdjinvUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Size = 25
      Calculated = True
    end
    object AdjinvCANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object AdjinvCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object AdjinvPOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
  end
  object AdjTran: TFDQuery
    AfterOpen = AdjTranAfterOpen
    BeforeClose = AdjTranBeforeClose
    BeforePost = AdjTranBeforePost
    AfterPost = AdjTranAfterPost
    BeforeDelete = AdjTranBeforeDelete
    AfterDelete = AdjTranAfterPost
    OnCalcFields = AdjTranCalcFields
    OnNewRecord = AdjTranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ADJ_TRANS')
    Left = 113
    Top = 204
    object AdjTranADJNO: TStringField
      FieldName = 'ADJNO'
      Size = 12
    end
    object AdjTranADJLOC: TStringField
      FieldName = 'ADJLOC'
      Size = 5
    end
    object AdjTranADJDATE: TDateField
      FieldName = 'ADJDATE'
    end
    object AdjTranPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
      OnChange = AdjTranPARTNOChange
      OnValidate = AdjTranPARTNOValidate
    end
    object AdjTranUCOST: TFloatField
      FieldName = 'UCOST'
      OnValidate = AdjTranUCOSTValidate
      DisplayFormat = '#,##0.00'
    end
    object AdjTranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
      DisplayFormat = '#,##0.00'
    end
    object AdjTranQTYORD: TFloatField
      FieldName = 'QTYORD'
      DisplayFormat = '#,##0.0000'
    end
    object AdjTranQTYOUT: TFloatField
      FieldName = 'QTYOUT'
      OnValidate = AdjTranQTYOUTValidate
      DisplayFormat = '#,##0.0000'
    end
    object AdjTranQTYBOD: TFloatField
      FieldName = 'QTYBOD'
      DisplayFormat = '#,##0.0000'
    end
    object AdjTranNETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '#,##0.00'
    end
    object AdjTranTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object AdjTranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object AdjTranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object AdjTranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object AdjTranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object AdjTranUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object AdjTranPARTDESC: TStringField
      FieldName = 'PARTDESC'
      Size = 50
    end
  end
  object SoAdjinv: TDataSource
    DataSet = Adjinv
    Left = 162
    Top = 156
  end
  object SoAdjTran: TDataSource
    DataSet = AdjTran
    Left = 162
    Top = 204
  end
  object Taxsal: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM TAXSAL')
    Left = 162
    Top = 252
    object TaxsalTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object TaxsalTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object TaxsalTAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object TaxsalDESC1: TStringField
      FieldName = 'DESC1'
      Size = 55
    end
    object TaxsalCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object TaxsalVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object TaxsalAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object TaxsalREDU: TFloatField
      FieldName = 'REDU'
    end
    object TaxsalBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object TaxsalVAT: TFloatField
      FieldName = 'VAT'
    end
    object TaxsalTOTTAX: TFloatField
      FieldName = 'TOTTAX'
    end
    object TaxsalFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object TaxsalUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object TaxsalTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object TaxsalCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object TaxsalCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object TaxsalCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object TaxsalPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object TaxsalPAYTYP: TStringField
      FieldName = 'PAYTYP'
      Size = 1
    end
    object TaxsalLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object TaxsalFRSV: TStringField
      FieldName = 'FRSV'
      Size = 1
    end
    object TaxsalPOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
  end
  object SoRcinv1: TDataSource
    DataSet = Rcinv1
    Left = 367
    Top = 12
  end
  object SoRcTrn1: TDataSource
    DataSet = Rctrn1
    Left = 371
    Top = 56
  end
  object Rcinv1: TFDQuery
    BeforeClose = Rcinv1BeforeClose
    BeforePost = Rcinv1BeforePost
    AfterPost = Rcinv1AfterPost
    AfterCancel = Rcinv1AfterCancel
    BeforeDelete = Rcinv1BeforeDelete
    AfterDelete = Rcinv1AfterPost
    OnCalcFields = Rcinv1CalcFields
    OnNewRecord = Rcinv1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM RC_INVOI')
    Left = 318
    Top = 12
    object Rcinv1RECVNO: TStringField
      FieldName = 'RECVNO'
      Size = 12
    end
    object Rcinv1RECVDT: TDateField
      FieldName = 'RECVDT'
      OnValidate = Rcinv1RECVDTValidate
    end
    object Rcinv1RECVLOC: TStringField
      FieldName = 'RECVLOC'
      OnValidate = Rcinv1RECVLOCValidate
      Size = 5
    end
    object Rcinv1PONO: TStringField
      FieldName = 'PONO'
      Size = 12
    end
    object Rcinv1INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object Rcinv1INVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object Rcinv1CREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object Rcinv1INVDUE: TDateField
      FieldName = 'INVDUE'
    end
    object Rcinv1VATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object Rcinv1APCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object Rcinv1OFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object Rcinv1TNOPAY: TFloatField
      FieldName = 'TNOPAY'
    end
    object Rcinv1TOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Rcinv1DISCT: TFloatField
      FieldName = 'DISCT'
    end
    object Rcinv1DISCAMT: TFloatField
      FieldName = 'DISCAMT'
    end
    object Rcinv1NETAMT: TFloatField
      FieldName = 'NETAMT'
    end
    object Rcinv1BALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object Rcinv1VATRT: TFloatField
      FieldName = 'VATRT'
    end
    object Rcinv1VATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object Rcinv1TOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '#,##0.00'
    end
    object Rcinv1PAID: TFloatField
      FieldName = 'PAID'
    end
    object Rcinv1TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object Rcinv1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object Rcinv1TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object Rcinv1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object Rcinv1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object Rcinv1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object Rcinv1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object Rcinv1Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Size = 25
      Calculated = True
    end
    object Rcinv1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object Rcinv1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object Rcinv1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object Rcinv1EXDISAMT: TFloatField
      FieldName = 'EXDISAMT'
    end
    object Rcinv1DISBATH: TStringField
      FieldName = 'DISBATH'
      FixedChar = True
      Size = 1
    end
    object Rcinv1UPD: TStringField
      FieldName = 'UPD'
      FixedChar = True
      Size = 1
    end
    object Rcinv1PAYTYP: TStringField
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 2
    end
    object Rcinv1REFNO: TStringField
      FieldName = 'REFNO'
      FixedChar = True
      Size = 15
    end
    object Rcinv1BKCODE: TStringField
      FieldName = 'BKCODE'
      FixedChar = True
      Size = 5
    end
    object Rcinv1LCNO: TStringField
      FieldName = 'LCNO'
      FixedChar = True
      Size = 15
    end
    object Rcinv1CHCODE: TStringField
      FieldName = 'CHCODE'
      FixedChar = True
      Size = 5
    end
    object Rcinv1CHRATE: TFloatField
      FieldName = 'CHRATE'
    end
    object Rcinv1TOTHCOS1: TFloatField
      FieldName = 'TOTHCOS1'
    end
    object Rcinv1FOTHCOS: TFloatField
      FieldName = 'FOTHCOS'
    end
    object Rcinv1TOTHCOS2: TFloatField
      FieldName = 'TOTHCOS2'
    end
    object Rcinv1TOTHTOT: TFloatField
      FieldName = 'TOTHTOT'
    end
    object Rcinv1TNETCOST: TFloatField
      FieldName = 'TNETCOST'
    end
    object Rcinv1TTAXAMT: TFloatField
      FieldName = 'TTAXAMT'
    end
    object Rcinv1APTYPE: TStringField
      FieldName = 'APTYPE'
      FixedChar = True
      Size = 2
    end
    object Rcinv1POSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
  end
  object Rctrn1: TFDQuery
    AfterOpen = Rctrn1AfterOpen
    BeforeClose = Rctrn1BeforeClose
    BeforePost = Rctrn1BeforePost
    BeforeDelete = Rctrn1BeforeDelete
    OnCalcFields = Rctrn1CalcFields
    OnNewRecord = Rctrn1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM RC_TRANS')
    Left = 318
    Top = 60
    object Rctrn1RECVNO: TStringField
      FieldName = 'RECVNO'
      Size = 12
    end
    object Rctrn1RECVLOC: TStringField
      FieldName = 'RECVLOC'
      Size = 5
    end
    object Rctrn1RECVDATE: TDateField
      FieldName = 'RECVDATE'
    end
    object Rctrn1PARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
      OnChange = Rctrn1PARTNOChange
    end
    object Rctrn1UNIT: TStringField
      FieldName = 'UNIT'
      Size = 10
    end
    object Rctrn1UCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '#,##0.00'
    end
    object Rctrn1QTYORD: TFloatField
      FieldName = 'QTYORD'
      DisplayFormat = '#,##0.0000'
    end
    object Rctrn1QTYRECV: TFloatField
      FieldName = 'QTYRECV'
      DisplayFormat = '#,##0.0000'
    end
    object Rctrn1NETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '#,##0.00'
    end
    object Rctrn1REDU1: TFloatField
      FieldName = 'REDU1'
    end
    object Rctrn1REDU2: TFloatField
      FieldName = 'REDU2'
    end
    object Rctrn1REDU3: TFloatField
      FieldName = 'REDU3'
    end
    object Rctrn1NETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '#,##0.00'
    end
    object Rctrn1ACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object Rctrn1YEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object Rctrn1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object Rctrn1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object Rctrn1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object Rctrn1AVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
    object Rctrn1PONO: TStringField
      FieldName = 'PONO'
      Size = 12
    end
    object Rctrn1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object Rctrn1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object Rctrn1Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object Rctrn1DISCAMT: TFloatField
      FieldName = 'DISCAMT'
    end
    object Rctrn1VATCOST: TFloatField
      FieldName = 'VATCOST'
    end
    object Rctrn1APCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object Rctrn1PARTDESC: TStringField
      FieldName = 'PARTDESC'
      Size = 50
    end
  end
  object Tinven9: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'PARTNO;YEAR1;GROUP1'
    MasterSource = SoInvmst9
    MasterFields = 'PARTNO;YEAR1;GROUP1'
    ConnectionName = 'Hi_dbms'
    UpdateOptions.UpdateTableName = 'INVENTOR'
    TableName = 'INVENTOR'
    Left = 480
    Top = 204
  end
  object QLastno: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      'SELECT * FROM SLASTNO')
    Left = 217
    Top = 108
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TMPAJTR')
    Left = 162
    Top = 12
  end
  object InvMst9: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM INVMAST')
    Left = 322
    Top = 108
  end
  object SoInvmst9: TDataSource
    DataSet = InvMst9
    Left = 371
    Top = 108
  end
  object QDbconfig: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SDBCONFIG')
    Left = 216
    Top = 252
  end
  object TmpAjIv: TFDQuery
    BeforePost = TmpAjIvBeforePost
    AfterPost = TmpAjIvAfterPost
    BeforeDelete = TmpAjIvBeforeDelete
    AfterDelete = TmpAjIvAfterPost
    OnCalcFields = TmpAjIvCalcFields
    OnNewRecord = TmpAjIvNewRecord
    CachedUpdates = True
    OnUpdateError = TmpAjIvUpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM TMPAJIV')
    Left = 318
    Top = 156
    object TmpAjIvADJNO: TStringField
      FieldName = 'ADJNO'
      Size = 12
    end
    object TmpAjIvADJLOC: TStringField
      FieldName = 'ADJLOC'
      OnValidate = TmpAjIvADJLOCValidate
      Size = 5
    end
    object TmpAjIvSHELF: TStringField
      FieldName = 'SHELF'
      Size = 15
    end
    object TmpAjIvGROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
    object TmpAjIvADJDATE: TDateField
      FieldName = 'ADJDATE'
      OnValidate = TmpAjIvADJDATEValidate
    end
    object TmpAjIvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object TmpAjIvPARTNO1: TStringField
      FieldName = 'PARTNO1'
    end
    object TmpAjIvPARTNO2: TStringField
      FieldName = 'PARTNO2'
    end
    object TmpAjIvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object TmpAjIvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object TmpAjIvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object TmpAjIvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object TmpAjIvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object TmpAjIvEXPTYP: TStringField
      FieldName = 'EXPTYP'
      Size = 1
    end
    object TmpAjIvUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
  end
  object SoTmpajiv: TDataSource
    DataSet = TmpAjIv
    Left = 367
    Top = 156
  end
  object SoTmpajtr: TDataSource
    DataSet = Tmpajtr
    Left = 367
    Top = 204
  end
  object QArpaytrn1: TFDQuery
    BeforeEdit = QArpaytrn1BeforeEdit
    BeforePost = QArpaytrn1BeforePost
    AfterPost = QArpaytrn1AfterPost
    AfterCancel = QArpaytrn1AfterCancel
    OnCalcFields = QArpaytrn1CalcFields
    OnNewRecord = QArpaytrn1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  ARPAYTRN')
    Left = 17
    Top = 304
    object QArpaytrn1BILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
    end
    object QArpaytrn1LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QArpaytrn1BILLDT: TDateField
      FieldName = 'BILLDT'
      OnValidate = QArpaytrn1BILLDTValidate
    end
    object QArpaytrn1CUSCODE: TStringField
      FieldName = 'CUSCODE'
      Size = 12
    end
    object QArpaytrn1PAYCONT: TStringField
      FieldName = 'PAYCONT'
      Size = 1
    end
    object QArpaytrn1IDCARD: TStringField
      FieldName = 'IDCARD'
    end
    object QArpaytrn1IDEXPDT: TDateField
      FieldName = 'IDEXPDT'
    end
    object QArpaytrn1CHQNUM: TFloatField
      FieldName = 'CHQNUM'
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1DISAMT: TFloatField
      FieldName = 'DISAMT'
      OnValidate = QArpaytrn1DISAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1VAT3: TFloatField
      FieldName = 'VAT3'
      OnValidate = QArpaytrn1VAT3Validate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1VAT3AMT: TFloatField
      FieldName = 'VAT3AMT'
      OnValidate = QArpaytrn1VAT3AMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1NETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1ADDAMT: TFloatField
      FieldName = 'ADDAMT'
      OnValidate = QArpaytrn1ADDAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QArpaytrn1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QArpaytrn1SYSTM: TStringField
      FieldName = 'SYSTM'
      Size = 8
    end
    object QArpaytrn1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QArpaytrn1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QArpaytrn1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QArpaytrn1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QArpaytrn1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QArpaytrn1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QArpaytrn1Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QArpaytrn1BKCODE: TStringField
      FieldName = 'BKCODE'
      FixedChar = True
      Size = 8
    end
    object QArpaytrn1TAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn1BOOKNO: TStringField
      FieldName = 'BOOKNO'
      FixedChar = True
      Size = 15
    end
    object QArpaytrn1PAYFOR: TStringField
      FieldName = 'PAYFOR'
      FixedChar = True
      Size = 2
    end
    object QArpaytrn1CLAIMTYP: TStringField
      FieldName = 'CLAIMTYP'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn1POSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn1PAYTYP: TStringField
      FieldName = 'PAYTYP'
      OnValidate = QArpaytrn1PAYTYPValidate
      Size = 2
    end
    object QArpaytrn1INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QArpaytrn1CSHAMT: TFloatField
      FieldName = 'CSHAMT'
      OnValidate = QArpaytrn1CSHAMTValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QArpaytrn1CHQAMT: TFloatField
      FieldName = 'CHQAMT'
      OnValidate = QArpaytrn1CHQAMTValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QArpaytrn1CREDITAMT: TFloatField
      FieldName = 'CREDITAMT'
      OnValidate = QArpaytrn1CREDITAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1BANKAMT: TFloatField
      FieldName = 'BANKAMT'
      OnValidate = QArpaytrn1BANKAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1RECV_MONEY: TFloatField
      FieldName = 'RECV_MONEY'
      OnValidate = QArpaytrn1RECV_MONEYValidate
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn1CHANGE: TFloatField
      FieldName = 'CHANGE'
      DisplayFormat = '##,##0.00'
    end
  end
  object Soarpaytrn1: TDataSource
    DataSet = QArpaytrn1
    Left = 73
    Top = 300
  end
  object QArchq: TFDQuery
    OnNewRecord = QArchqNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARCHQ')
    Left = 114
    Top = 300
  end
  object SoArchq: TDataSource
    DataSet = QArchq
    Left = 162
    Top = 300
  end
  object QStkcard: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM STKCARD  WHERE PARTNO='#39#39)
    Left = 213
    Top = 300
  end
  object QEnqBk: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 116
    Top = 346
  end
  object SoEnqBk: TDataSource
    DataSet = QEnqBk
    Left = 162
    Top = 346
  end
  object QEnqMv: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 213
    Top = 346
  end
  object SoEnqMv: TDataSource
    DataSet = QEnqMv
    Left = 268
    Top = 346
  end
  object QValid: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 372
    Top = 302
  end
  object Tmpajtr: TFDQuery
    AfterOpen = TmpajtrAfterOpen
    BeforeClose = TmpajtrBeforeClose
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM TMPAJTR')
    Left = 316
    Top = 204
    object TmpajtrADJNO: TStringField
      FieldName = 'ADJNO'
      Size = 12
    end
    object TmpajtrADJLOC: TStringField
      FieldName = 'ADJLOC'
      Size = 5
    end
    object TmpajtrPARTNO: TStringField
      FieldName = 'PARTNO'
    end
    object TmpajtrSHELF: TStringField
      FieldName = 'SHELF'
      Size = 15
    end
    object TmpajtrGROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
    object TmpajtrADJDATE: TDateField
      FieldName = 'ADJDATE'
    end
    object TmpajtrUCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '##,##0.00'
    end
    object TmpajtrAVGCOST: TFloatField
      FieldName = 'AVGCOST'
      DisplayFormat = '##,##0.00'
    end
    object TmpajtrQTYORD: TFloatField
      FieldName = 'QTYORD'
      DisplayFormat = '##,##0'
    end
    object TmpajtrQTYOUT: TFloatField
      FieldName = 'QTYOUT'
      DisplayFormat = '##,##0'
    end
    object TmpajtrQTYBOD: TFloatField
      FieldName = 'QTYBOD'
      OnValidate = TmpajtrQTYBODValidate
      DisplayFormat = '##,##0'
    end
    object TmpajtrNETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '##,##0.00'
    end
    object TmpajtrTOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '##,##0.00'
    end
    object TmpajtrYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object TmpajtrFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object TmpajtrUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object TmpajtrTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object TmpajtrITEMNO: TFloatField
      FieldName = 'ITEMNO'
    end
  end
  object Qtmpicinv: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM IC_INVOI')
    Left = 16
    Top = 346
  end
  object Qarinvoi: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 68
    Top = 346
  end
  object QInvmst1: TFDQuery
    MasterSource = SoRctran
    MasterFields = 'PARTNO;RECVLOC'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      
        'SELECT DESC1 FROM  INVENTOR WHERE PARTNO=:PARTNO AND LOCAT=:RECV' +
        'LOC')
    Left = 424
    Top = 60
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'RECVLOC'
        DataType = ftString
        Size = 5
        Value = Null
      end>
  end
  object QInvmst2: TFDQuery
    CachedUpdates = True
    MasterSource = SoPkTran
    MasterFields = 'PARTNO;PKLOCAT'
    Connection = DM_SEC.HI_DBMS
    FetchOptions.AssignedValues = [evUnidirectional]
    FetchOptions.Unidirectional = True
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      
        'SELECT DESC1,GROUP1  FROM  INVENTOR  WHERE PARTNO=:PARTNO AND LO' +
        'CAT=:PKLOCAT')
    Left = 424
    Top = 108
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'PKLOCAT'
        DataType = ftString
        Size = 5
        Value = Null
      end>
  end
  object QInvmst3: TFDQuery
    MasterSource = SoIcTran
    MasterFields = 'PARTNO;INVLOC'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      
        'SELECT DESC1 FROM  INVENTOR WHERE PARTNO=:PARTNO AND LOCAT=:INVL' +
        'OC')
    Left = 424
    Top = 156
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'INVLOC'
        DataType = ftString
        Size = 5
        Value = Null
      end>
  end
  object QInvmst4: TFDQuery
    MasterSource = SoRttran
    MasterFields = 'PARTNO;RTNLOC'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      
        'SELECT DESC1 FROM  INVENTOR WHERE PARTNO=:PARTNO AND LOCAT=:RTNL' +
        'OC')
    Left = 424
    Top = 204
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'RTNLOC'
        DataType = ftString
        Size = 5
        Value = Null
      end>
  end
  object QInvmst8: TFDQuery
    MasterSource = SoAdjTran
    MasterFields = 'PARTNO;ADJLOC'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      
        'SELECT DESC1 FROM  INVENTOR  WHERE PARTNO=:PARTNO AND LOCAT=:ADJ' +
        'LOC')
    Left = 424
    Top = 252
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'ADJLOC'
        DataType = ftString
        Size = 5
        Value = Null
      end>
  end
  object QInvanls: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    Left = 318
    Top = 252
  end
  object Query3: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TMPAJTR')
    Left = 322
    Top = 354
  end
  object QInvmst5: TFDQuery
    MasterSource = SoMvTran
    MasterFields = 'PARTNO;MOVFRM'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      
        'SELECT DESC1 FROM  INVENTOR WHERE PARTNO=:PARTNO AND LOCAT=:MOVF' +
        'RM')
    Left = 480
    Top = 60
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'MOVFRM'
        DataType = ftString
        Size = 5
        Value = Null
      end>
  end
  object QInvmst6: TFDQuery
    MasterSource = SoRcTrn1
    MasterFields = 'PARTNO;RECVLOC'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      
        'SELECT DESC1 FROM  INVENTOR WHERE PARTNO=:PARTNO AND LOCAT=:RECV' +
        'LOC')
    Left = 480
    Top = 108
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'RECVLOC'
        DataType = ftString
        Size = 5
        Value = Null
      end>
  end
  object QPkinv: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 372
    Top = 348
  end
  object Query4: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 480
    Top = 156
  end
  object QIcothinv: TFDQuery
    BeforePost = QIcothinvBeforePost
    AfterPost = QIcothinvAfterPost
    AfterCancel = QIcothinvAfterCancel
    OnCalcFields = QIcothinvCalcFields
    OnNewRecord = QIcothinvNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ICOTHINV')
    Left = 424
    Top = 300
    object QIcothinvOTHIVNO: TStringField
      FieldName = 'OTHIVNO'
      Size = 12
    end
    object QIcothinvLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QIcothinvLOCATValidate
      Size = 5
    end
    object QIcothinvOTHDATE: TDateField
      FieldName = 'OTHDATE'
      OnValidate = QIcothinvOTHDATEValidate
    end
    object QIcothinvSALLEV: TStringField
      FieldName = 'SALLEV'
      Size = 1
    end
    object QIcothinvVATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object QIcothinvCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = QIcothinvCUSCODValidate
      Size = 12
    end
    object QIcothinvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      OnValidate = QIcothinvOFFICCODValidate
      Size = 5
    end
    object QIcothinvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '##,###.00'
    end
    object QIcothinvDISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '##,###.00'
    end
    object QIcothinvDISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '##,###.00'
    end
    object QIcothinvNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '##,###.00'
    end
    object QIcothinvBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '##,###.00'
    end
    object QIcothinvVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '##,###.00'
    end
    object QIcothinvVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '##,###.00'
    end
    object QIcothinvNETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
      DisplayFormat = '##,###.00'
    end
    object QIcothinvBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
    end
    object QIcothinvBILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object QIcothinvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QIcothinvPAYTYPE: TStringField
      FieldName = 'PAYTYPE'
      Size = 1
    end
    object QIcothinvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object QIcothinvDISCTYP: TStringField
      FieldName = 'DISCTYP'
      Size = 1
    end
    object QIcothinvEXDISAMT: TFloatField
      FieldName = 'EXDISAMT'
    end
    object QIcothinvDISBATH: TStringField
      FieldName = 'DISBATH'
      Size = 1
    end
    object QIcothinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QIcothinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QIcothinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QIcothinvCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QIcothinvCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QIcothinvPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QIcothinvUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QIcothinvTERM: TFloatField
      FieldName = 'TERM'
      OnValidate = QIcothinvTERMValidate
    end
    object QIcothinvINVDUE: TDateField
      FieldName = 'INVDUE'
    end
  end
  object QIcothtrn: TFDQuery
    AfterPost = QIcothtrnAfterPost
    OnNewRecord = QIcothtrnNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ICOTHTRN')
    Left = 424
    Top = 348
    object QIcothtrnOTHIVNO: TStringField
      FieldName = 'OTHIVNO'
      Size = 12
    end
    object QIcothtrnLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QIcothtrnOTHDATE: TDateField
      FieldName = 'OTHDATE'
    end
    object QIcothtrnPARTNO: TStringField
      FieldName = 'PARTNO'
    end
    object QIcothtrnDESC1: TStringField
      FieldName = 'DESC1'
      Size = 50
    end
    object QIcothtrnUPRICE: TFloatField
      FieldName = 'UPRICE'
    end
    object QIcothtrnQTYOUT: TFloatField
      FieldName = 'QTYOUT'
      DisplayFormat = '#,##0.0000'
    end
    object QIcothtrnREDU1: TFloatField
      FieldName = 'REDU1'
    end
    object QIcothtrnREDU2: TFloatField
      FieldName = 'REDU2'
    end
    object QIcothtrnREDU3: TFloatField
      FieldName = 'REDU3'
    end
    object QIcothtrnNETPRC: TFloatField
      FieldName = 'NETPRC'
    end
    object QIcothtrnTOTPRC: TFloatField
      FieldName = 'TOTPRC'
    end
    object QIcothtrnCOST: TFloatField
      FieldName = 'COST'
    end
    object QIcothtrnDISCAMT: TFloatField
      FieldName = 'DISCAMT'
    end
    object QIcothtrnFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QIcothtrnUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QIcothtrnTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QIcothtrnCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QIcothtrnCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QIcothtrnPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
  end
  object Soicothinv: TDataSource
    DataSet = QIcothinv
    Left = 480
    Top = 300
  end
  object SoIcothtrn: TDataSource
    DataSet = QIcothtrn
    Left = 480
    Top = 348
  end
  object Qarpaytrn: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARPAYTRN')
    Left = 476
    Top = 12
  end
  object Qinvmst9: TFDQuery
    MasterSource = SoQaTran
    MasterFields = 'PARTNO;QALOCAT'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      
        'SELECT DESC1 FROM  INVENTOR  WHERE PARTNO=:PARTNO AND LOCAT=:QAL' +
        'OCAT')
    Left = 480
    Top = 252
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'QALOCAT'
        DataType = ftString
        Size = 5
        Value = Null
      end>
  end
  object QInvmst10: TFDQuery
    MasterSource = SoTmpajtr
    MasterFields = 'PARTNO;ADJLOC'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      
        'SELECT DESC1 FROM  INVENTOR  WHERE PARTNO=:PARTNO AND LOCAT=:ADJ' +
        'LOC')
    Left = 372
    Top = 252
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'ADJLOC'
        DataType = ftString
        Size = 5
        Value = Null
      end>
  end
  object QTemp: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 268
    Top = 112
  end
  object Qainv: TFDQuery
    BeforePost = QainvBeforePost
    AfterPost = QainvAfterPost
    AfterCancel = QainvAfterCancel
    BeforeDelete = QainvBeforeDelete
    AfterDelete = QainvAfterPost
    OnCalcFields = QainvCalcFields
    OnNewRecord = QainvNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM QAINVOI')
    Left = 213
    Top = 156
    object QainvQANO: TStringField
      FieldName = 'QANO'
      Size = 12
    end
    object QainvQADATE: TDateField
      FieldName = 'QADATE'
      OnValidate = QainvQADATEValidate
    end
    object QainvSALLEV: TStringField
      FieldName = 'SALLEV'
      Size = 1
    end
    object QainvVATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object QainvCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = QainvCUSCODValidate
      Size = 12
    end
    object QainvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object QainvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
      EditFormat = '###.00'
    end
    object QainvDISCT: TFloatField
      FieldName = 'DISCT'
      OnValidate = QainvDISCTValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '###.00'
    end
    object QainvDISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###.00'
    end
    object QainvNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###.00'
    end
    object QainvBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
      EditFormat = '###.00'
    end
    object QainvVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###.00'
    end
    object QainvVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###.00'
    end
    object QainvNETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '###.00'
    end
    object QainvREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QainvREFDAT: TDateField
      FieldName = 'REFDAT'
    end
    object QainvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QainvSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object QainvJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QainvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QainvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QainvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QainvQALOCAT: TStringField
      FieldName = 'QALOCAT'
      OnValidate = QainvQALOCATValidate
      Size = 5
    end
    object QainvUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Size = 25
      Calculated = True
    end
    object QainvCANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object QainvCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QainvPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QainvNETADD: TFloatField
      FieldName = 'NETADD'
      DisplayFormat = '###.00'
      EditFormat = '###.00'
    end
  end
  object Query5: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 320
    Top = 308
  end
  object Query6: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 272
    Top = 308
  end
  object QArpaytrn_Typ: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARPAYTRN_TYP')
    Left = 22
    Top = 440
    object QArpaytrn_TypPAYCODE: TStringField
      FieldName = 'PAYCODE'
      FixedChar = True
      Size = 2
    end
    object QArpaytrn_TypBANKCOD: TStringField
      FieldName = 'BANKCOD'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn_TypCHQNO: TStringField
      FieldName = 'CHQNO'
      FixedChar = True
      Size = 8
    end
    object QArpaytrn_TypDTONCHQ: TDateField
      FieldName = 'DTONCHQ'
    end
    object QArpaytrn_TypBANKBOOKCOD: TStringField
      FieldName = 'BANKBOOKCOD'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn_TypDTONBANK: TDateField
      FieldName = 'DTONBANK'
    end
    object QArpaytrn_TypBANKLOCAT: TStringField
      FieldName = 'BANKLOCAT'
      Size = 50
    end
    object QArpaytrn_TypAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn_TypCANFL: TStringField
      FieldName = 'CANFL'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn_TypCANDT: TDateTimeField
      FieldName = 'CANDT'
    end
    object QArpaytrn_TypBILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn_TypBILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object QArpaytrn_TypCREDIT_CARD: TStringField
      FieldName = 'CREDIT_CARD'
      FixedChar = True
    end
  end
  object SoChqtran_Typ: TDataSource
    DataSet = QArpaytrn_Typ
    Left = 99
    Top = 440
  end
  object Query7: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TMPAJTR')
    Left = 170
    Top = 452
  end
  object QCondpay: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SCONDPAY')
    Left = 275
    Top = 405
  end
  object Rcinv2: TFDQuery
    BeforeClose = Rcinv2BeforeClose
    BeforeEdit = Rcinv2BeforeEdit
    BeforePost = Rcinv2BeforePost
    AfterPost = Rcinv2AfterPost
    AfterCancel = Rcinv2AfterCancel
    BeforeDelete = Rcinv2BeforeDelete
    AfterDelete = Rcinv2AfterDelete
    OnCalcFields = Rcinv2CalcFields
    OnNewRecord = Rcinv2NewRecord
    CachedUpdates = True
    OnUpdateError = Rcinv2UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM RC_INVOI')
    Left = 418
    Top = 452
    object Rcinv2RECVNO: TStringField
      FieldName = 'RECVNO'
      FixedChar = True
      Size = 12
    end
    object Rcinv2RECVDT: TDateField
      FieldName = 'RECVDT'
      OnValidate = Rcinv2RECVDTValidate
    end
    object Rcinv2RECVLOC: TStringField
      FieldName = 'RECVLOC'
      OnValidate = Rcinv2RECVLOCValidate
      FixedChar = True
      Size = 5
    end
    object Rcinv2PONO: TStringField
      FieldName = 'PONO'
      FixedChar = True
      Size = 12
    end
    object Rcinv2INVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = Rcinv2INVNOValidate
      FixedChar = True
      Size = 12
    end
    object Rcinv2INVDATE: TDateField
      FieldName = 'INVDATE'
      OnChange = Rcinv2INVDATEChange
    end
    object Rcinv2CREDTM: TFloatField
      FieldName = 'CREDTM'
      OnValidate = Rcinv2CREDTMValidate
    end
    object Rcinv2INVDUE: TDateField
      FieldName = 'INVDUE'
    end
    object Rcinv2VATTYPE: TStringField
      FieldName = 'VATTYPE'
      FixedChar = True
      Size = 1
    end
    object Rcinv2APCODE: TStringField
      FieldName = 'APCODE'
      OnValidate = Rcinv2APCODEValidate
      FixedChar = True
      Size = 12
    end
    object Rcinv2OFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      FixedChar = True
      Size = 8
    end
    object Rcinv2TNOPAY: TFloatField
      FieldName = 'TNOPAY'
    end
    object Rcinv2TOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Rcinv2DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '##,##0.00'
    end
    object Rcinv2DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '##,##0.00'
    end
    object Rcinv2NETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '##,##0.00'
    end
    object Rcinv2BALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object Rcinv2VATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '##,##0.00'
    end
    object Rcinv2VATAMT: TFloatField
      FieldName = 'VATAMT'
      OnValidate = Rcinv2VATAMTValidate
      DisplayFormat = '##,##0.00'
    end
    object Rcinv2TOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '##,##0.00'
    end
    object Rcinv2PAID: TFloatField
      FieldName = 'PAID'
    end
    object Rcinv2TAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object Rcinv2TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object Rcinv2TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      FixedChar = True
      Size = 12
    end
    object Rcinv2FLAG: TStringField
      FieldName = 'FLAG'
      OnValidate = Rcinv2FLAGValidate
      FixedChar = True
      Size = 1
    end
    object Rcinv2MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object Rcinv2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object Rcinv2TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object Rcinv2CANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object Rcinv2CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object Rcinv2POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object Rcinv2Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object Rcinv2EXDISAMT: TFloatField
      FieldName = 'EXDISAMT'
      OnValidate = Rcinv2EXDISAMTValidate
    end
    object Rcinv2DISBATH: TStringField
      FieldName = 'DISBATH'
      FixedChar = True
      Size = 1
    end
    object Rcinv2UPD: TStringField
      FieldName = 'UPD'
      FixedChar = True
      Size = 1
    end
    object Rcinv2PAYTYP: TStringField
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 2
    end
    object Rcinv2BKCODE: TStringField
      FieldName = 'BKCODE'
      FixedChar = True
      Size = 5
    end
    object Rcinv2CHCODE: TStringField
      FieldName = 'CHCODE'
      FixedChar = True
      Size = 5
    end
    object Rcinv2CHRATE: TFloatField
      FieldName = 'CHRATE'
    end
    object Rcinv2TOTHCOS1: TFloatField
      FieldName = 'TOTHCOS1'
    end
    object Rcinv2FOTHCOS: TFloatField
      FieldName = 'FOTHCOS'
    end
    object Rcinv2TOTHCOS2: TFloatField
      FieldName = 'TOTHCOS2'
    end
    object Rcinv2TOTHTOT: TFloatField
      FieldName = 'TOTHTOT'
    end
    object Rcinv2TNETCOST: TFloatField
      FieldName = 'TNETCOST'
    end
    object Rcinv2TTAXAMT: TFloatField
      FieldName = 'TTAXAMT'
    end
    object Rcinv2APTYPE: TStringField
      FieldName = 'APTYPE'
      FixedChar = True
      Size = 2
    end
    object Rcinv2POSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object Rcinv2REFNO: TStringField
      FieldName = 'REFNO'
      OnValidate = Rcinv2REFNOValidate
      FixedChar = True
      Size = 15
    end
    object Rcinv2LCNO: TStringField
      FieldName = 'LCNO'
      OnValidate = Rcinv2LCNOValidate
      FixedChar = True
      Size = 15
    end
    object Rcinv2REFNO3: TStringField
      FieldName = 'REFNO3'
      OnValidate = Rcinv2REFNO3Validate
      FixedChar = True
      Size = 15
    end
    object Rcinv2REFNO4: TStringField
      FieldName = 'REFNO4'
      OnValidate = Rcinv2REFNO4Validate
      FixedChar = True
      Size = 15
    end
  end
  object SoRcinv2: TDataSource
    DataSet = Rcinv2
    Left = 473
    Top = 452
  end
  object Rctran2: TFDQuery
    AfterOpen = Rctran2AfterOpen
    BeforeClose = Rctran2BeforeClose
    BeforePost = Rctran2BeforePost
    AfterPost = Rctran2AfterPost
    BeforeDelete = Rctran2BeforeDelete
    AfterDelete = Rctran2AfterDelete
    OnCalcFields = Rctran2CalcFields
    OnNewRecord = Rctran2NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM RC_TRANS')
    Left = 412
    Top = 504
    object Rctran2RECVNO: TStringField
      FieldName = 'RECVNO'
      FixedChar = True
      Size = 12
    end
    object Rctran2RECVLOC: TStringField
      FieldName = 'RECVLOC'
      FixedChar = True
      Size = 5
    end
    object Rctran2RECVDATE: TDateField
      FieldName = 'RECVDATE'
    end
    object Rctran2PARTNO: TStringField
      FieldName = 'PARTNO'
      OnChange = Rctran2PARTNOChange
      OnValidate = Rctran2PARTNOValidate
      FixedChar = True
    end
    object Rctran2UCOST: TFloatField
      FieldName = 'UCOST'
      OnValidate = Rctran2UCOSTValidate
      DisplayFormat = '##,##0.00'
    end
    object Rctran2UNIT: TStringField
      FieldName = 'UNIT'
      FixedChar = True
      Size = 10
    end
    object Rctran2QTYRECV: TFloatField
      FieldName = 'QTYRECV'
      OnValidate = Rctran2QTYRECVValidate
      DisplayFormat = '##,##0.00'
    end
    object Rctran2REDU1: TFloatField
      FieldName = 'REDU1'
      OnValidate = Rctran2REDU1Validate
      DisplayFormat = '##,##0.00'
    end
    object Rctran2REDU2: TFloatField
      FieldName = 'REDU2'
      OnValidate = Rctran2REDU2Validate
      DisplayFormat = '##,##0.00'
    end
    object Rctran2REDU3: TFloatField
      FieldName = 'REDU3'
      OnValidate = Rctran2REDU3Validate
      DisplayFormat = '##,##0.00'
    end
    object Rctran2ACCTNO: TStringField
      FieldName = 'ACCTNO'
      FixedChar = True
      Size = 12
    end
    object Rctran2FLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object Rctran2YEAR1: TStringField
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object Rctran2AVGCOST: TFloatField
      FieldName = 'AVGCOST'
      DisplayFormat = '##,##0.00'
    end
    object Rctran2PONO: TStringField
      FieldName = 'PONO'
      FixedChar = True
      Size = 12
    end
    object Rctran2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object Rctran2TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object Rctran2CANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object Rctran2CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object Rctran2POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object Rctran2Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object Rctran2DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      OnValidate = Rctran2DISCAMTValidate
      DisplayFormat = '##,##0.00'
    end
    object Rctran2VATCOST: TFloatField
      FieldName = 'VATCOST'
    end
    object Rctran2TAXCODE: TStringField
      FieldName = 'TAXCODE'
      FixedChar = True
      Size = 5
    end
    object Rctran2FTAXRT: TFloatField
      FieldName = 'FTAXRT'
    end
    object Rctran2FUNIT: TStringField
      FieldName = 'FUNIT'
      FixedChar = True
      Size = 10
    end
    object Rctran2FUCOST: TFloatField
      FieldName = 'FUCOST'
      DisplayFormat = '##,##0.00'
    end
    object Rctran2FTOTCOST: TFloatField
      FieldName = 'FTOTCOST'
      DisplayFormat = '##,##0.00'
    end
    object Rctran2FDISAMT: TFloatField
      FieldName = 'FDISAMT'
      DisplayFormat = '##,##0.00'
    end
    object Rctran2FNETCOST: TFloatField
      FieldName = 'FNETCOST'
      DisplayFormat = '##,##0.00'
    end
    object Rctran2TNETCOST: TFloatField
      FieldName = 'TNETCOST'
      DisplayFormat = '##,##0.00'
    end
    object Rctran2TTAXAMT: TFloatField
      FieldName = 'TTAXAMT'
    end
    object Rctran2TTOTCOST: TFloatField
      FieldName = 'TTOTCOST'
      DisplayFormat = '##,##0.00'
    end
    object Rctran2TOTHCOST: TFloatField
      FieldName = 'TOTHCOST'
      DisplayFormat = '##,##0.00'
    end
    object Rctran2WEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object Rctran2APCODE: TStringField
      FieldName = 'APCODE'
      FixedChar = True
      Size = 12
    end
    object Rctran2PARTDESC: TStringField
      FieldName = 'PARTDESC'
      FixedChar = True
      Size = 50
    end
    object Rctran2GROUP1: TStringField
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 5
    end
    object Rctran2LOTNO: TStringField
      FieldName = 'LOTNO'
      FixedChar = True
      Size = 50
    end
    object Rctran2QTYORD: TFloatField
      FieldName = 'QTYORD'
      OnValidate = Rctran2QTYORDValidate
      DisplayFormat = '##,##0.000'
    end
    object Rctran2NETCOST: TFloatField
      FieldName = 'NETCOST'
      OnValidate = Rctran2NETCOSTValidate
      DisplayFormat = '##,##0.00'
    end
    object Rctran2NETTOT: TFloatField
      FieldName = 'NETTOT'
    end
  end
  object SoRctran2: TDataSource
    DataSet = Rctran2
    Left = 457
    Top = 500
  end
  object QInvmst7: TFDQuery
    MasterSource = SoRctran2
    MasterFields = 'PARTNO;RECVLOC'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      
        'SELECT DESC1 FROM  INVENTOR WHERE PARTNO=:PARTNO AND LOCAT=:RECV' +
        'LOC')
    Left = 348
    Top = 508
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftFixedChar
        Size = 20
        Value = Null
      end
      item
        Name = 'RECVLOC'
        DataType = ftFixedChar
        Size = 5
        Value = Null
      end>
  end
end
