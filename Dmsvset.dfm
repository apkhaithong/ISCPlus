object Dm_SvSet: TDm_SvSet
  OldCreateOrder = True
  OnCreate = Dm_SvSetCreate
  Height = 459
  Width = 411
  object SoSvtype1: TDataSource
    DataSet = QSvtype1
    Left = 79
    Top = 100
  end
  object QSvtype1: TFDQuery
    BeforePost = QSvtype1BeforePost
    AfterPost = QSvtype1AfterPost
    AfterCancel = QSvtype1AfterCancel
    BeforeDelete = QSvtype1BeforeDelete
    AfterDelete = QSvtype1AfterDelete
    OnNewRecord = QSvtype1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SVTYPE')
    Left = 20
    Top = 100
    object QSvtype1TYPCOD: TStringField
      FieldName = 'TYPCOD'
      FixedChar = True
      Size = 5
    end
    object QSvtype1TYPNAME: TStringField
      FieldName = 'TYPNAME'
      FixedChar = True
      Size = 30
    end
    object QSvtype1TYPFLG: TStringField
      FieldName = 'TYPFLG'
      FixedChar = True
      Size = 1
    end
    object QSvtype1SNCSET: TStringField
      FieldName = 'SNCSET'
      FixedChar = True
      Size = 1
    end
    object QSvtype1ACCSV: TStringField
      FieldName = 'ACCSV'
      FixedChar = True
      Size = 12
    end
    object QSvtype1ACCCL: TStringField
      FieldName = 'ACCCL'
      FixedChar = True
      Size = 12
    end
    object QSvtype1ACCTC: TStringField
      FieldName = 'ACCTC'
      FixedChar = True
      Size = 12
    end
    object QSvtype1DEPT: TStringField
      FieldName = 'DEPT'
      FixedChar = True
      Size = 2
    end
  end
  object QSvstock: TFDQuery
    BeforePost = QSvstockBeforePost
    AfterPost = QSvstockAfterPost
    AfterCancel = QSvstockAfterCancel
    BeforeDelete = QSvstockBeforeDelete
    AfterDelete = QSvstockAfterDelete
    OnNewRecord = QSvstockNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM  SVSTOCK')
    Left = 20
    Top = 52
    object QSvstockCODE: TStringField
      FieldName = 'CODE'
      FixedChar = True
    end
    object QSvstockLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QSvstockDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 45
    end
    object QSvstockONHAND: TFloatField
      FieldName = 'ONHAND'
    end
    object QSvstockUNIT: TStringField
      FieldName = 'UNIT'
      FixedChar = True
      Size = 10
    end
    object QSvstockUCOST: TFloatField
      FieldName = 'UCOST'
    end
    object QSvstockUPRICE: TFloatField
      FieldName = 'UPRICE'
    end
    object QSvstockSTAT: TStringField
      FieldName = 'STAT'
      FixedChar = True
      Size = 1
    end
    object QSvstockFRT: TFloatField
      FieldName = 'FRT'
    end
    object QSvstockMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QSvstockUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QSvstockTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
  end
  object SoSvstock: TDataSource
    DataSet = QSvstock
    Left = 79
    Top = 52
  end
  object QApmast: TFDQuery
    BeforePost = QApmastBeforePost
    AfterPost = QApmastAfterPost
    AfterCancel = QApmastAfterCancel
    BeforeDelete = QApmastBeforeDelete
    AfterDelete = QApmastAfterDelete
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 16
    Top = 308
  end
  object SoApmast: TDataSource
    DataSet = QApmast
    Left = 79
    Top = 312
  end
  object QSvmast: TFDQuery
    BeforePost = QSvmastBeforePost
    AfterPost = QSvmastAfterPost
    AfterCancel = QSvmastAfterCancel
    BeforeDelete = QSvmastBeforeDelete
    AfterDelete = QSvmastAfterDelete
    OnNewRecord = QSvmastNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM  SVMAST')
    Left = 20
    Top = 4
    object QSvmastSTRNO: TStringField
      FieldName = 'STRNO'
      FixedChar = True
    end
    object QSvmastREGNO: TStringField
      FieldName = 'REGNO'
      FixedChar = True
      Size = 15
    end
    object QSvmastENGNO: TStringField
      FieldName = 'ENGNO'
      FixedChar = True
    end
    object QSvmastTYPE: TStringField
      FieldName = 'TYPE'
      OnValidate = QSvmastTYPEValidate
      FixedChar = True
      Size = 12
    end
    object QSvmastMDLCOD: TStringField
      FieldName = 'MDLCOD'
      OnValidate = QSvmastMDLCODValidate
      FixedChar = True
    end
    object QSvmastBAAB: TStringField
      FieldName = 'BAAB'
      FixedChar = True
    end
    object QSvmastCOLOR: TStringField
      FieldName = 'COLOR'
      FixedChar = True
    end
    object QSvmastCC: TStringField
      FieldName = 'CC'
      FixedChar = True
      Size = 6
    end
    object QSvmastSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QSvmastCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QSvmastLASTSERV: TDateField
      FieldName = 'LASTSERV'
    end
    object QSvmastLASTKILO: TFloatField
      FieldName = 'LASTKILO'
    end
    object QSvmastBUYFROM: TStringField
      FieldName = 'BUYFROM'
      FixedChar = True
      Size = 45
    end
    object QSvmastSVDISCT: TFloatField
      FieldName = 'SVDISCT'
    end
    object QSvmastVIPCARD: TStringField
      FieldName = 'VIPCARD'
      FixedChar = True
    end
    object QSvmastVIPISSU: TDateField
      FieldName = 'VIPISSU'
    end
    object QSvmastVIPEXP: TDateField
      FieldName = 'VIPEXP'
    end
    object QSvmastINSURNO: TStringField
      FieldName = 'INSURNO'
      FixedChar = True
    end
    object QSvmastINSURDT: TDateField
      FieldName = 'INSURDT'
    end
    object QSvmastWARANTY: TFloatField
      FieldName = 'WARANTY'
    end
    object QSvmastREGDATE: TDateField
      FieldName = 'REGDATE'
    end
    object QSvmastEXPWARNT: TDateField
      FieldName = 'EXPWARNT'
    end
    object QSvmastCUSTYPE: TStringField
      FieldName = 'CUSTYPE'
      FixedChar = True
      Size = 1
    end
    object QSvmastFIRSTDT: TDateField
      FieldName = 'FIRSTDT'
    end
    object QSvmastSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object QSvmastMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QSvmastUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QSvmastTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QSvmastCANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object QSvmastCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QSvmastEXPKILO: TFloatField
      FieldName = 'EXPKILO'
    end
    object QSvmastEXPTYPE: TStringField
      FieldName = 'EXPTYPE'
      FixedChar = True
      Size = 1
    end
    object QSvmastPTDISCT: TFloatField
      FieldName = 'PTDISCT'
    end
    object QSvmastINSURTYP: TStringField
      FieldName = 'INSURTYP'
      FixedChar = True
      Size = 1
    end
    object QSvmastISCODE: TStringField
      FieldName = 'ISCODE'
      FixedChar = True
      Size = 5
    end
    object QSvmastPRBTYP: TStringField
      FieldName = 'PRBTYP'
      FixedChar = True
      Size = 1
    end
    object QSvmastPRBISCOD: TStringField
      FieldName = 'PRBISCOD'
      FixedChar = True
      Size = 5
    end
    object QSvmastPRBEXPDT: TDateField
      FieldName = 'PRBEXPDT'
    end
    object QSvmastGEARTYPE: TStringField
      FieldName = 'GEARTYPE'
      FixedChar = True
      Size = 1
    end
    object QSvmastMODLYEAR: TStringField
      FieldName = 'MODLYEAR'
      FixedChar = True
      Size = 4
    end
    object QSvmastESTUSE: TFloatField
      FieldName = 'ESTUSE'
    end
    object QSvmastLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QSvmastBODYNO: TStringField
      FieldName = 'BODYNO'
      FixedChar = True
    end
    object QSvmastGCODE: TStringField
      FieldName = 'GCODE'
      OnValidate = QSvmastGCODEValidate
      FixedChar = True
      Size = 3
    end
    object QSvmastROUNDKILO: TFloatField
      FieldName = 'ROUNDKILO'
    end
    object QSvmastNEXTDTSV: TDateField
      FieldName = 'NEXTDTSV'
    end
    object QSvmastNEXTKLSV: TFloatField
      FieldName = 'NEXTKLSV'
    end
    object QSvmastROUNDDAY: TIntegerField
      FieldName = 'ROUNDDAY'
    end
  end
  object SoSvmast: TDataSource
    DataSet = QSvmast
    Left = 79
    Top = 4
  end
  object SoChecklis: TDataSource
    DataSet = TChecklis
    Left = 79
    Top = 200
  end
  object TmpQuery: TFDQuery
    AutoCalcFields = False
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      '')
    Left = 244
    Top = 168
  end
  object QLocat: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 240
    Top = 220
  end
  object QSvpict: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SVPICT')
    Left = 139
    Top = 201
  end
  object Sosvpict: TDataSource
    DataSet = QSvpict
    Left = 192
    Top = 201
  end
  object Bookserv: TFDQuery
    BeforePost = BookservBeforePost
    AfterPost = BookservAfterPost
    AfterCancel = BookservAfterCancel
    AfterDelete = BookservAfterPost
    OnCalcFields = BookservCalcFields
    OnNewRecord = BookservNewRecord
    CachedUpdates = True
    OnUpdateError = BookservUpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM BOOKSERV')
    Left = 300
    Top = 362
    object BookservLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object BookservBOOKNO: TStringField
      FieldName = 'BOOKNO'
      FixedChar = True
      Size = 12
    end
    object BookservBKDATE: TDateField
      FieldName = 'BKDATE'
      OnValidate = BookservBKDATEValidate
    end
    object BookservBKTIME: TFloatField
      FieldName = 'BKTIME'
      DisplayFormat = '#,##0.00'
    end
    object BookservCFDATE: TDateField
      FieldName = 'CFDATE'
      OnValidate = BookservCFDATEValidate
    end
    object BookservCFTIME: TFloatField
      FieldName = 'CFTIME'
      DisplayFormat = '#,##0.00'
    end
    object BookservBKTYPE: TStringField
      FieldName = 'BKTYPE'
      Size = 1
    end
    object BookservNAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object BookservNAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object BookservMDLCOD: TStringField
      DisplayWidth = 20
      FieldName = 'MDLCOD'
    end
    object BookservREGNO: TStringField
      FieldName = 'REGNO'
      OnValidate = BookservREGNOValidate
      Size = 15
    end
    object BookservCOLOR: TStringField
      FieldName = 'COLOR'
    end
    object BookservKILOMT: TFloatField
      FieldName = 'KILOMT'
      DisplayFormat = '#,###'
    end
    object BookservCUSCODE: TStringField
      FieldName = 'CUSCODE'
      Size = 12
    end
    object BookservUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object BookservREPTYPE: TStringField
      FieldName = 'REPTYPE'
      OnValidate = BookservREPTYPEValidate
      Size = 5
    end
    object BookservFINSDATE: TDateField
      FieldName = 'FINSDATE'
    end
    object BookservFINSTIME: TStringField
      FieldName = 'FINSTIME'
      Size = 8
    end
    object BookservUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object BookservINPDATE: TDateTimeField
      FieldName = 'INPDATE'
    end
    object BookservREMARK: TMemoField
      FieldName = 'REMARK'
      BlobType = ftMemo
      Size = 512
    end
  end
  object SoBookserv: TDataSource
    DataSet = Bookserv
    Left = 240
    Top = 363
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 246
    Top = 4
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 300
    Top = 4
  end
  object TabServ: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM TABSERV')
    Left = 293
    Top = 218
  end
  object Grpmst: TFDQuery
    AfterPost = GrpmstAfterPost
    AfterDelete = GrpmstAfterDelete
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM GRPMST')
    Left = 139
    Top = 4
    object GrpmstGCODE: TStringField
      FieldName = 'GCODE'
      FixedChar = True
      Size = 10
    end
    object GrpmstMDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
      Size = 10
    end
    object GrpmstGDESC: TStringField
      FieldName = 'GDESC'
      FixedChar = True
      Size = 50
    end
    object GrpmstUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object GrpmstTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
  end
  object SoGrppart: TDataSource
    DataSet = TGrppart
    Left = 192
    Top = 152
  end
  object SoGrpOrd: TDataSource
    DataSet = TGrpOrd
    Left = 188
    Top = 256
  end
  object SoGrpmst: TDataSource
    DataSet = Grpmst
    Left = 192
    Top = 4
  end
  object SoGrpServ: TDataSource
    DataSet = TGrpServ
    Left = 140
    Top = 365
  end
  object SoCondpay: TDataSource
    DataSet = Condpay
    Left = 196
    Top = 52
  end
  object QOrdiv: TFDQuery
    BeforeEdit = QOrdivBeforeEdit
    BeforePost = QOrdivBeforePost
    AfterPost = QOrdivAfterPost
    BeforeDelete = QOrdivBeforeDelete
    AfterDelete = QOrdivAfterDelete
    OnNewRecord = QOrdivNewRecord
    CachedUpdates = True
    OnUpdateError = QOrdivUpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SV_ORDIV')
    Left = 246
    Top = 115
    object QOrdivORDNO: TStringField
      FieldName = 'ORDNO'
      Size = 12
    end
    object QOrdivCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QOrdivORDDATE: TDateField
      FieldName = 'ORDDATE'
      OnValidate = QOrdivORDDATEValidate
    end
    object QOrdivVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object QOrdivVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object QOrdivNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '#,##0.00'
    end
    object QOrdivDISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object QOrdivNETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object QOrdivBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QOrdivSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object QOrdivTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object QOrdivFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QOrdivJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QOrdivMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QOrdivORDLOCAT: TStringField
      FieldName = 'ORDLOCAT'
      OnValidate = QOrdivORDLOCATValidate
      Size = 5
    end
    object QOrdivOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object QOrdivUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QOrdivTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOrdivVATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object QOrdivGCODE: TStringField
      FieldName = 'GCODE'
      Size = 10
    end
    object QOrdivCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QOrdivCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QOrdivPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QOrdivCAMPNO: TStringField
      FieldName = 'CAMPNO'
      Size = 5
    end
    object QOrdivUpdatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
  end
  object SoOrdiv: TDataSource
    DataSet = QOrdiv
    Left = 300
    Top = 113
  end
  object SoOrdtn: TDataSource
    DataSet = QOrdtn
    Left = 184
    Top = 316
  end
  object QOrdtn: TFDQuery
    AfterOpen = QOrdtnAfterOpen
    BeforeClose = QOrdtnBeforeClose
    BeforeInsert = QOrdtnBeforeInsert
    BeforePost = QOrdtnBeforePost
    AfterPost = QOrdtnAfterPost
    OnNewRecord = QOrdtnNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SV_ORDTN')
    Left = 135
    Top = 307
    object QOrdtnORDNO: TStringField
      FieldName = 'ORDNO'
      Size = 12
    end
    object QOrdtnORDDATE: TDateField
      FieldName = 'ORDDATE'
    end
    object QOrdtnUPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '#,##0.00'
    end
    object QOrdtnQTYORD: TFloatField
      FieldName = 'QTYORD'
    end
    object QOrdtnQTYOUT: TFloatField
      FieldName = 'QTYOUT'
    end
    object QOrdtnQTYBOD: TFloatField
      FieldName = 'QTYBOD'
    end
    object QOrdtnNETFL: TStringField
      FieldName = 'NETFL'
      Size = 1
    end
    object QOrdtnREDU1: TFloatField
      FieldName = 'REDU1'
      DisplayFormat = '#,##0.00'
    end
    object QOrdtnREDU2: TFloatField
      FieldName = 'REDU2'
      DisplayFormat = '#,##0.00'
    end
    object QOrdtnREDU3: TFloatField
      FieldName = 'REDU3'
      DisplayFormat = '#,##0.00'
    end
    object QOrdtnNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object QOrdtnTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object QOrdtnACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object QOrdtnJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QOrdtnSERIALNO: TStringField
      FieldName = 'SERIALNO'
    end
    object QOrdtnPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
    end
    object QOrdtnORDLOCAT: TStringField
      FieldName = 'ORDLOCAT'
      Size = 5
    end
    object QOrdtnYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object QOrdtnUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QOrdtnTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOrdtnCAMPNO: TStringField
      FieldName = 'CAMPNO'
      Size = 5
    end
    object QOrdtnCAMFLG: TStringField
      FieldName = 'CAMFLG'
      Size = 1
    end
    object QOrdtnGROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
  end
  object Lastno: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      'SELECT * FROM LASTNO')
    Left = 289
    Top = 264
  end
  object QJobord: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM JOBORDER')
    Left = 246
    Top = 59
    object QJobordJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QJobordLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QJobordSTRNO: TStringField
      FieldName = 'STRNO'
      FixedChar = True
    end
    object QJobordCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QJobordMDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
      Size = 10
    end
    object QJobordRUNNO: TStringField
      FieldName = 'RUNNO'
      FixedChar = True
      Size = 5
    end
    object QJobordRECVDATE: TDateField
      FieldName = 'RECVDATE'
    end
    object QJobordRECVTIME: TStringField
      FieldName = 'RECVTIME'
      FixedChar = True
      Size = 8
    end
    object QJobordFINSDATE: TDateField
      FieldName = 'FINSDATE'
    end
    object QJobordFINSTIME: TStringField
      FieldName = 'FINSTIME'
      FixedChar = True
      Size = 8
    end
    object QJobordRFINSHDT: TDateField
      FieldName = 'RFINSHDT'
    end
    object QJobordRFINSHTM: TStringField
      FieldName = 'RFINSHTM'
      FixedChar = True
      Size = 8
    end
    object QJobordRLKILOMT: TFloatField
      FieldName = 'RLKILOMT'
    end
    object QJobordKILOMT: TFloatField
      FieldName = 'KILOMT'
    end
    object QJobordRECVCOD: TStringField
      FieldName = 'RECVCOD'
      FixedChar = True
      Size = 5
    end
    object QJobordCUST_IN: TStringField
      FieldName = 'CUST_IN'
      FixedChar = True
      Size = 45
    end
    object QJobordPAYCOD: TStringField
      FieldName = 'PAYCOD'
      FixedChar = True
      Size = 5
    end
    object QJobordCUST_OUT: TStringField
      FieldName = 'CUST_OUT'
      FixedChar = True
      Size = 45
    end
    object QJobordAPP_DATE: TDateField
      FieldName = 'APP_DATE'
    end
    object QJobordAPP_MILE: TFloatField
      FieldName = 'APP_MILE'
    end
    object QJobordREPTYPE: TStringField
      FieldName = 'REPTYPE'
      FixedChar = True
      Size = 5
    end
    object QJobordGROUP1: TStringField
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 10
    end
    object QJobordREPBAY: TStringField
      FieldName = 'REPBAY'
      FixedChar = True
      Size = 5
    end
    object QJobordPAYDATE: TDateField
      FieldName = 'PAYDATE'
    end
    object QJobordINSPECT: TStringField
      FieldName = 'INSPECT'
      FixedChar = True
      Size = 5
    end
    object QJobordREPCOD: TStringField
      FieldName = 'REPCOD'
      FixedChar = True
      Size = 5
    end
    object QJobordVATTYPE: TStringField
      FieldName = 'VATTYPE'
      FixedChar = True
      Size = 1
    end
    object QJobordVAT: TFloatField
      FieldName = 'VAT'
    end
    object QJobordPARTDISC: TFloatField
      FieldName = 'PARTDISC'
    end
    object QJobordPARTNET: TFloatField
      FieldName = 'PARTNET'
    end
    object QJobordPARTVAT: TFloatField
      FieldName = 'PARTVAT'
    end
    object QJobordPARTTOT: TFloatField
      FieldName = 'PARTTOT'
    end
    object QJobordOILDISC: TFloatField
      FieldName = 'OILDISC'
    end
    object QJobordOILNET: TFloatField
      FieldName = 'OILNET'
    end
    object QJobordOILVAT: TFloatField
      FieldName = 'OILVAT'
    end
    object QJobordOILTOT: TFloatField
      FieldName = 'OILTOT'
    end
    object QJobordSERVDISC: TFloatField
      FieldName = 'SERVDISC'
    end
    object QJobordSERVNET: TFloatField
      FieldName = 'SERVNET'
    end
    object QJobordSERVVAT: TFloatField
      FieldName = 'SERVVAT'
    end
    object QJobordSERVTOT: TFloatField
      FieldName = 'SERVTOT'
    end
    object QJobordOUTJDISC: TFloatField
      FieldName = 'OUTJDISC'
    end
    object QJobordOUTJNET: TFloatField
      FieldName = 'OUTJNET'
    end
    object QJobordOUTJVAT: TFloatField
      FieldName = 'OUTJVAT'
    end
    object QJobordOUTJTOT: TFloatField
      FieldName = 'OUTJTOT'
    end
    object QJobordCOLORDISC: TFloatField
      FieldName = 'COLORDISC'
    end
    object QJobordCOLORNET: TFloatField
      FieldName = 'COLORNET'
    end
    object QJobordCOLORVAT: TFloatField
      FieldName = 'COLORVAT'
    end
    object QJobordCOLORTOT: TFloatField
      FieldName = 'COLORTOT'
    end
    object QJobordOTHERDISC: TFloatField
      FieldName = 'OTHERDISC'
    end
    object QJobordOTHERNET: TFloatField
      FieldName = 'OTHERNET'
    end
    object QJobordOTHERVAT: TFloatField
      FieldName = 'OTHERVAT'
    end
    object QJobordOTHERTOT: TFloatField
      FieldName = 'OTHERTOT'
    end
    object QJobordTSV_DISC: TFloatField
      FieldName = 'TSV_DISC'
    end
    object QJobordTSV_NET: TFloatField
      FieldName = 'TSV_NET'
    end
    object QJobordTSV_VAT: TFloatField
      FieldName = 'TSV_VAT'
    end
    object QJobordTSV_TOT: TFloatField
      FieldName = 'TSV_TOT'
    end
    object QJobordTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QJobordPTAXNO: TStringField
      FieldName = 'PTAXNO'
      FixedChar = True
      Size = 12
    end
    object QJobordSTAXNO: TStringField
      FieldName = 'STAXNO'
      FixedChar = True
      Size = 12
    end
    object QJobordBILDATE: TDateField
      FieldName = 'BILDATE'
    end
    object QJobordBILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object QJobordFLAGCAN: TStringField
      FieldName = 'FLAGCAN'
      FixedChar = True
      Size = 1
    end
    object QJobordCANDATE: TDateField
      FieldName = 'CANDATE'
    end
    object QJobordSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object QJobordMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QJobordSVFLAG: TStringField
      FieldName = 'SVFLAG'
      FixedChar = True
      Size = 1
    end
    object QJobordTOPNO: TStringField
      FieldName = 'TOPNO'
      FixedChar = True
      Size = 5
    end
    object QJobordPREORDNO: TStringField
      FieldName = 'PREORDNO'
      FixedChar = True
      Size = 15
    end
    object QJobordADDNET: TFloatField
      FieldName = 'ADDNET'
    end
    object QJobordADDVAT: TFloatField
      FieldName = 'ADDVAT'
    end
    object QJobordADDTOT: TFloatField
      FieldName = 'ADDTOT'
    end
    object QJobordPARTCOST: TFloatField
      FieldName = 'PARTCOST'
    end
    object QJobordUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QJobordTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QJobordCANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object QJobordCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QJobordPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QJobordINV1_PT: TFloatField
      FieldName = 'INV1_PT'
    end
    object QJobordINV1_SV: TFloatField
      FieldName = 'INV1_SV'
    end
    object QJobordINV2_PT: TFloatField
      FieldName = 'INV2_PT'
    end
    object QJobordINV2_SV: TFloatField
      FieldName = 'INV2_SV'
    end
    object QJobordDISCPT: TFloatField
      FieldName = 'DISCPT'
    end
    object QJobordDISCSV: TFloatField
      FieldName = 'DISCSV'
    end
    object QJobordDISCOL: TFloatField
      FieldName = 'DISCOL'
    end
    object QJobordDISCCO: TFloatField
      FieldName = 'DISCCO'
    end
    object QJobordOUTADD: TFloatField
      FieldName = 'OUTADD'
    end
    object QJobordOILCOST: TFloatField
      FieldName = 'OILCOST'
    end
    object QJobordFRRATE: TFloatField
      FieldName = 'FRRATE'
    end
    object QJobordFRCODE: TStringField
      FieldName = 'FRCODE'
      FixedChar = True
      Size = 5
    end
    object QJobordCAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object QJobordREFNO: TFloatField
      FieldName = 'REFNO'
    end
    object QJobordFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object QJobordISCODE: TStringField
      FieldName = 'ISCODE'
      FixedChar = True
      Size = 5
    end
    object QJobordSTATCOD: TStringField
      FieldName = 'STATCOD'
      FixedChar = True
      Size = 2
    end
    object QJobordREDUAMT: TFloatField
      FieldName = 'REDUAMT'
    end
  end
  object SoJobord: TDataSource
    DataSet = QJobord
    Left = 300
    Top = 60
  end
  object QInvent: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM INVENTOR')
    Left = 292
    Top = 312
  end
  object Query3: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 240
    Top = 262
  end
  object QCondpay: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SCONDPAY')
    Left = 345
    Top = 112
  end
  object TChecklis: TFDTable
    OnNewRecord = TChecklisNewRecord
    CachedUpdates = True
    IndexFieldNames = 'MDLCOD;KILOMT'
    MasterFields = 'MODELCOD'
    ConnectionName = 'HI_DBMS'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    UpdateOptions.UpdateTableName = 'CHECKLIS'
    TableName = 'CHECKLIS'
    Left = 20
    Top = 200
  end
  object TGrpServ: TFDTable
    BeforePost = TGrpServBeforePost
    OnNewRecord = TGrpServNewRecord
    IndexFieldNames = 'GCODE'
    MasterSource = SoGrpmst
    MasterFields = 'GCODE'
    ConnectionName = 'HI_DBMS'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateTableName = 'GRPSERV'
    TableName = 'GRPSERV'
    Left = 187
    Top = 365
  end
  object TGrppart: TFDTable
    BeforePost = TGrppartBeforePost
    OnNewRecord = TGrppartNewRecord
    IndexFieldNames = 'GCODE'
    MasterSource = SoGrpmst
    MasterFields = 'GCODE'
    ConnectionName = 'HI_DBMS'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateTableName = 'GRPPART'
    TableName = 'GRPPART'
    Left = 134
    Top = 151
  end
  object TGrpOrd: TFDTable
    OnNewRecord = TGrpOrdNewRecord
    IndexFieldNames = 'GCODE'
    MasterSource = SoGrpmst
    MasterFields = 'GCODE'
    ConnectionName = 'HI_DBMS'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    UpdateOptions.UpdateTableName = 'GRPORD'
    TableName = 'GRPORD'
    Left = 134
    Top = 252
  end
  object TTopcar: TFDTable
    OnNewRecord = TTopcarNewRecord
    ConnectionName = 'HI_DBMS'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    UpdateOptions.UpdateTableName = 'TOPCAR'
    TableName = 'TOPCAR'
    Left = 238
    Top = 312
  end
  object Condpay: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'select * from SCondpay')
    Left = 138
    Top = 53
    object CondpayCURYEAR: TStringField
      FieldName = 'CURYEAR'
      FixedChar = True
      Size = 4
    end
    object CondpayCURMONTH: TStringField
      FieldName = 'CURMONTH'
      FixedChar = True
      Size = 2
    end
    object CondpayLICEN_NO: TStringField
      FieldName = 'LICEN_NO'
      FixedChar = True
      Size = 12
    end
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      FixedChar = True
      Size = 50
    end
    object CondpayCOMP_ADR1: TStringField
      FieldName = 'COMP_ADR1'
      FixedChar = True
      Size = 60
    end
    object CondpayCOMP_ADR2: TStringField
      FieldName = 'COMP_ADR2'
      FixedChar = True
      Size = 60
    end
    object CondpayTELP: TStringField
      FieldName = 'TELP'
      FixedChar = True
      Size = 50
    end
    object CondpayTAXID: TStringField
      FieldName = 'TAXID'
      FixedChar = True
    end
    object CondpayVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object CondpayTAXNAME: TStringField
      FieldName = 'TAXNAME'
      FixedChar = True
      Size = 60
    end
    object CondpayTAXADDR: TStringField
      FieldName = 'TAXADDR'
      FixedChar = True
      Size = 60
    end
    object CondpaySVRATE: TFloatField
      FieldName = 'SVRATE'
    end
    object CondpayNEXTKILO: TFloatField
      FieldName = 'NEXTKILO'
    end
    object CondpayNEXTDAY: TFloatField
      FieldName = 'NEXTDAY'
    end
    object CondpaySVFLAG: TStringField
      FieldName = 'SVFLAG'
      FixedChar = True
      Size = 1
    end
    object CondpayCAMTYP: TStringField
      FieldName = 'CAMTYP'
      FixedChar = True
      Size = 1
    end
    object CondpayCAMPART: TFloatField
      FieldName = 'CAMPART'
    end
    object CondpayCAMSERV: TFloatField
      FieldName = 'CAMSERV'
    end
    object CondpayCAMDAT1: TDateField
      FieldName = 'CAMDAT1'
    end
    object CondpayCAMDAT2: TDateField
      FieldName = 'CAMDAT2'
    end
    object CondpayH_CSH: TStringField
      FieldName = 'H_CSH'
      FixedChar = True
      Size = 2
    end
    object CondpayH_CRD: TStringField
      FieldName = 'H_CRD'
      FixedChar = True
      Size = 2
    end
    object CondpayH_CSD: TStringField
      FieldName = 'H_CSD'
      FixedChar = True
      Size = 2
    end
    object CondpayH_PUR: TStringField
      FieldName = 'H_PUR'
      FixedChar = True
      Size = 2
    end
    object CondpayH_CRN: TStringField
      FieldName = 'H_CRN'
      FixedChar = True
      Size = 2
    end
    object CondpayH_DBN: TStringField
      FieldName = 'H_DBN'
      FixedChar = True
      Size = 2
    end
    object CondpayH_RCG: TStringField
      FieldName = 'H_RCG'
      FixedChar = True
      Size = 2
    end
    object CondpayH_RTG: TStringField
      FieldName = 'H_RTG'
      FixedChar = True
      Size = 2
    end
    object CondpayH_TRA: TStringField
      FieldName = 'H_TRA'
      FixedChar = True
      Size = 2
    end
    object CondpayH_TRB: TStringField
      FieldName = 'H_TRB'
      FixedChar = True
      Size = 2
    end
    object CondpayH_PO: TStringField
      FieldName = 'H_PO'
      FixedChar = True
      Size = 2
    end
    object CondpayH_PK: TStringField
      FieldName = 'H_PK'
      FixedChar = True
      Size = 2
    end
    object CondpayH_PKSV: TStringField
      FieldName = 'H_PKSV'
      FixedChar = True
      Size = 2
    end
    object CondpayH_RTSV: TStringField
      FieldName = 'H_RTSV'
      FixedChar = True
      Size = 2
    end
    object CondpayH_QA1: TStringField
      FieldName = 'H_QA1'
      FixedChar = True
      Size = 2
    end
    object CondpayH_ADJ: TStringField
      FieldName = 'H_ADJ'
      FixedChar = True
      Size = 2
    end
    object CondpayH_BNO: TStringField
      FieldName = 'H_BNO'
      FixedChar = True
      Size = 2
    end
    object CondpayH_BSNO: TStringField
      FieldName = 'H_BSNO'
      FixedChar = True
      Size = 2
    end
    object CondpayH_OTH: TStringField
      FieldName = 'H_OTH'
      FixedChar = True
      Size = 2
    end
    object CondpayH_RVOTH: TStringField
      FieldName = 'H_RVOTH'
      FixedChar = True
      Size = 2
    end
    object CondpayH_JOB: TStringField
      FieldName = 'H_JOB'
      FixedChar = True
      Size = 2
    end
    object CondpayH_QA: TStringField
      FieldName = 'H_QA'
      FixedChar = True
      Size = 2
    end
    object CondpayH_RQPK: TStringField
      FieldName = 'H_RQPK'
      FixedChar = True
      Size = 2
    end
    object CondpayH_INVOT: TStringField
      FieldName = 'H_INVOT'
      FixedChar = True
      Size = 2
    end
    object CondpayH_DVTX: TStringField
      FieldName = 'H_DVTX'
      FixedChar = True
      Size = 2
    end
    object CondpayH_BLNO: TStringField
      FieldName = 'H_BLNO'
      FixedChar = True
      Size = 2
    end
    object CondpayH_DVPT: TStringField
      FieldName = 'H_DVPT'
      FixedChar = True
      Size = 2
    end
    object CondpayH_DVSV: TStringField
      FieldName = 'H_DVSV'
      FixedChar = True
      Size = 2
    end
    object CondpayH_DVAL: TStringField
      FieldName = 'H_DVAL'
      FixedChar = True
      Size = 2
    end
    object CondpayH_DVOH: TStringField
      FieldName = 'H_DVOH'
      FixedChar = True
      Size = 2
    end
    object CondpayH_TXPT: TStringField
      FieldName = 'H_TXPT'
      FixedChar = True
      Size = 2
    end
    object CondpayH_TXSV: TStringField
      FieldName = 'H_TXSV'
      FixedChar = True
      Size = 2
    end
    object CondpayH_TXAL: TStringField
      FieldName = 'H_TXAL'
      FixedChar = True
      Size = 2
    end
    object CondpayH_TXOH: TStringField
      FieldName = 'H_TXOH'
      FixedChar = True
      Size = 2
    end
    object CondpayH_AJTM: TStringField
      FieldName = 'H_AJTM'
      FixedChar = True
      Size = 2
    end
    object CondpayH_CUS: TStringField
      FieldName = 'H_CUS'
      FixedChar = True
      Size = 2
    end
    object CondpayH_STIN: TStringField
      FieldName = 'H_STIN'
      FixedChar = True
      Size = 2
    end
    object CondpaySVRATE2: TFloatField
      FieldName = 'SVRATE2'
    end
    object CondpayMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object CondpayFIXJOB: TStringField
      FieldName = 'FIXJOB'
      FixedChar = True
      Size = 1
    end
    object CondpayVATTYPE: TStringField
      FieldName = 'VATTYPE'
      FixedChar = True
      Size = 1
    end
    object CondpaySELDB2: TStringField
      FieldName = 'SELDB2'
      FixedChar = True
      Size = 1
    end
    object CondpayPODISC: TStringField
      FieldName = 'PODISC'
      FixedChar = True
      Size = 1
    end
    object CondpayPOCOST: TStringField
      FieldName = 'POCOST'
      FixedChar = True
      Size = 1
    end
    object CondpayMULTIFR: TStringField
      FieldName = 'MULTIFR'
      FixedChar = True
      Size = 1
    end
    object CondpaySALTYPE: TStringField
      FieldName = 'SALTYPE'
      FixedChar = True
      Size = 1
    end
    object CondpayDISCTYP: TStringField
      FieldName = 'DISCTYP'
      FixedChar = True
      Size = 1
    end
    object CondpayCAMPTYP: TStringField
      FieldName = 'CAMPTYP'
      FixedChar = True
      Size = 1
    end
    object CondpayDISBATH: TStringField
      FieldName = 'DISBATH'
      FixedChar = True
      Size = 1
    end
    object CondpayTEMPTAX: TStringField
      FieldName = 'TEMPTAX'
      FixedChar = True
      Size = 1
    end
    object CondpayH_WARTY: TStringField
      FieldName = 'H_WARTY'
      FixedChar = True
      Size = 2
    end
    object CondpayMAPDRV: TStringField
      FieldName = 'MAPDRV'
      FixedChar = True
      Size = 50
    end
    object CondpayH_OTHC: TStringField
      FieldName = 'H_OTHC'
      FixedChar = True
      Size = 2
    end
    object CondpayH_OTHD: TStringField
      FieldName = 'H_OTHD'
      FixedChar = True
      Size = 2
    end
    object CondpayH_FRE: TStringField
      FieldName = 'H_FRE'
      FixedChar = True
      Size = 2
    end
    object CondpayH_DXOH: TStringField
      FieldName = 'H_DXOH'
      FixedChar = True
      Size = 2
    end
    object CondpayH_SLCS: TStringField
      FieldName = 'H_SLCS'
      FixedChar = True
      Size = 2
    end
    object CondpayH_SLCD: TStringField
      FieldName = 'H_SLCD'
      FixedChar = True
      Size = 2
    end
    object CondpayH_SLFI: TStringField
      FieldName = 'H_SLFI'
      FixedChar = True
      Size = 2
    end
    object CondpayH_SLRS: TStringField
      FieldName = 'H_SLRS'
      FixedChar = True
      Size = 2
    end
    object CondpayH_SLRC: TStringField
      FieldName = 'H_SLRC'
      FixedChar = True
      Size = 2
    end
    object CondpayH_SLMV: TStringField
      FieldName = 'H_SLMV'
      FixedChar = True
      Size = 2
    end
    object CondpayH_SLQA: TStringField
      FieldName = 'H_SLQA'
      FixedChar = True
      Size = 2
    end
    object CondpayH_TXCS: TStringField
      FieldName = 'H_TXCS'
      FixedChar = True
      Size = 2
    end
    object CondpayH_TXFI: TStringField
      FieldName = 'H_TXFI'
      FixedChar = True
      Size = 2
    end
    object CondpayH_SLBL: TStringField
      FieldName = 'H_SLBL'
      FixedChar = True
      Size = 2
    end
    object CondpaySEPOH: TStringField
      FieldName = 'SEPOH'
      FixedChar = True
      Size = 1
    end
    object CondpayH_PTOH: TStringField
      FieldName = 'H_PTOH'
      FixedChar = True
      Size = 2
    end
    object CondpayH_SVOH: TStringField
      FieldName = 'H_SVOH'
      FixedChar = True
      Size = 2
    end
    object CondpayNSTKLOB: TStringField
      FieldName = 'NSTKLOB'
      FixedChar = True
      Size = 1
    end
    object CondpayH_TXDV: TStringField
      FieldName = 'H_TXDV'
      FixedChar = True
      Size = 2
    end
    object CondpayISSUTAX: TStringField
      FieldName = 'ISSUTAX'
      FixedChar = True
      Size = 1
    end
    object CondpayH_DBSV: TStringField
      FieldName = 'H_DBSV'
      FixedChar = True
      Size = 2
    end
    object CondpayH_CLMT: TStringField
      FieldName = 'H_CLMT'
      FixedChar = True
      Size = 2
    end
    object CondpayH_RTPT: TStringField
      FieldName = 'H_RTPT'
      FixedChar = True
      Size = 2
    end
    object CondpayADDCHARG: TFloatField
      FieldName = 'ADDCHARG'
    end
  end
  object QDbconfig: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SDBCONFIG')
    Left = 349
    Top = 172
  end
  object TInvmast: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'PARTNO'
    MasterSource = SoOrdtn
    MasterFields = 'PARTNO'
    ConnectionName = 'HI_DBMS'
    UpdateOptions.UpdateTableName = 'INVMAST'
    TableName = 'INVMAST'
    Left = 347
    Top = 4
  end
  object Qinventor: TFDQuery
    MasterSource = SoOrdtn
    MasterFields = 'PARTNO;ORDLOCAT'
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      
        'SELECT DESC1  FROM INVENTOR WHERE PARTNO=:PARTNO AND LOCAT=:ORDL' +
        'OCAT')
    Left = 348
    Top = 64
    ParamData = <
      item
        Name = 'PARTNO'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'ORDLOCAT'
        DataType = ftString
        Size = 5
        Value = Null
      end>
  end
  object SoSetgroup: TDataSource
    DataSet = QSetgroup
    Left = 20
    Top = 364
  end
  object QSetgroup: TFDQuery
    AfterPost = QSetgroupAfterPost
    AfterDelete = QSetgroupAfterDelete
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SETGROUP')
    Left = 84
    Top = 364
  end
  object QModelmst: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM MODELMST')
    Left = 20
    Top = 152
  end
  object dsModelmst: TDataSource
    DataSet = QModelmst
    Left = 83
    Top = 148
  end
end
