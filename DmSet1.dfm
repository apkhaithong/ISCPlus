object Dm_set1: TDm_set1
  OldCreateOrder = True
  OnCreate = Dm_set1Create
  Height = 299
  Width = 481
  object SoOfficer: TDataSource
    DataSet = QOfficer
    Left = 76
    Top = 126
  end
  object SoTypemst: TDataSource
    DataSet = QTypemst
    Left = 352
    Top = 123
  end
  object SoGroup: TDataSource
    DataSet = QGroup
    Left = 76
    Top = 68
  end
  object SoCatalog: TDataSource
    DataSet = QCatalog
    Left = 212
    Top = 126
  end
  object SoBkmast: TDataSource
    DataSet = QBkmast
    Left = 280
    Top = 181
  end
  object SoDbconfig: TDataSource
    DataSet = QDbconfig
    Left = 417
    Top = 184
  end
  object SoInventor: TDataSource
    DataSet = Qinventor
    Left = 80
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = QPtStore
    Left = 148
    Top = 236
  end
  object TmpQuery: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'Select * from INVMAST')
    Left = 16
    Top = 16
  end
  object QGroup: TFDQuery
    AfterPost = QGroupAfterPost
    AfterDelete = QGroupAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM GROUPMST')
    Left = 16
    Top = 68
  end
  object Condpay: TFDTable
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.UpdateTableName = 'SCONDPAY'
    TableName = 'SCONDPAY'
    Left = 144
    Top = 68
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'select * from pk_invoi')
    Left = 212
    Top = 68
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'select * from pk_invoi')
    Left = 280
    Top = 68
  end
  object Query3: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'select * from pk_invoi')
    Left = 352
    Top = 68
  end
  object QOfficer: TFDQuery
    AfterPost = QOfficerAfterPost
    AfterDelete = QOfficerAfterPost
    OnNewRecord = QOfficerNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM OFFICER')
    Left = 16
    Top = 128
  end
  object QCatalog: TFDQuery
    AfterPost = QCatalogAfterPost
    AfterCancel = QCatalogAfterCancel
    AfterDelete = QCatalogAfterPost
    OnNewRecord = QCatalogNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM PCATALOG')
    Left = 144
    Top = 128
  end
  object Query4: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'select * from pk_invoi')
    Left = 416
    Top = 68
  end
  object QTypemst: TFDQuery
    AfterPost = QTypemstAfterPost
    AfterDelete = QTypemstAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TYPEMST')
    Left = 280
    Top = 124
  end
  object Qinventor: TFDQuery
    BeforeEdit = QinventorBeforeEdit
    BeforePost = QinventorBeforePost
    AfterPost = QinventorAfterPost
    AfterCancel = QinventorAfterCancel
    BeforeDelete = QinventorBeforeDelete
    AfterDelete = QinventorAfterPost
    OnNewRecord = QinventorNewRecord
    CachedUpdates = True
    OnUpdateError = QinventorUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM INVENTOR')
    Left = 16
    Top = 184
    object QinventorPARTNO: TStringField
      FieldName = 'PARTNO'
      Required = True
      FixedChar = True
    end
    object QinventorLOCAT: TStringField
      FieldName = 'LOCAT'
      Required = True
      FixedChar = True
      Size = 5
    end
    object QinventorYEAR1: TStringField
      FieldName = 'YEAR1'
      Required = True
      FixedChar = True
      Size = 4
    end
    object QinventorDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 45
    end
    object QinventorGROUP1: TStringField
      FieldName = 'GROUP1'
      Required = True
      FixedChar = True
      Size = 5
    end
    object QinventorTYPE: TStringField
      FieldName = 'TYPE'
      FixedChar = True
      Size = 5
    end
    object QinventorMODEL: TStringField
      FieldName = 'MODEL'
      FixedChar = True
    end
    object QinventorUNIT: TStringField
      FieldName = 'UNIT'
      FixedChar = True
      Size = 10
    end
    object QinventorVATCAL: TStringField
      FieldName = 'VATCAL'
      FixedChar = True
      Size = 1
    end
    object QinventorCOST: TCurrencyField
      FieldName = 'COST'
    end
    object QinventorSTDBUY: TCurrencyField
      FieldName = 'STDBUY'
    end
    object QinventorLSTBUY: TCurrencyField
      FieldName = 'LSTBUY'
    end
    object QinventorLSTBDATE: TDateField
      FieldName = 'LSTBDATE'
    end
    object QinventorPRICE1: TCurrencyField
      FieldName = 'PRICE1'
    end
    object QinventorPRICE2: TCurrencyField
      FieldName = 'PRICE2'
    end
    object QinventorPRICE3: TCurrencyField
      FieldName = 'PRICE3'
    end
    object QinventorPRICE4: TCurrencyField
      FieldName = 'PRICE4'
    end
    object QinventorSHELF: TStringField
      FieldName = 'SHELF'
      FixedChar = True
      Size = 15
    end
    object QinventorMOVDATE: TDateField
      FieldName = 'MOVDATE'
    end
    object QinventorCREATDAT: TDateField
      FieldName = 'CREATDAT'
    end
    object QinventorCODE_T: TStringField
      FieldName = 'CODE_T'
      FixedChar = True
    end
    object QinventorMINCAL: TCurrencyField
      FieldName = 'MINCAL'
    end
    object QinventorMIN1: TCurrencyField
      FieldName = 'MIN1'
    end
    object QinventorMAX1: TCurrencyField
      FieldName = 'MAX1'
    end
    object QinventorNETPRC: TStringField
      FieldName = 'NETPRC'
      FixedChar = True
      Size = 1
    end
    object QinventorDISCON: TStringField
      FieldName = 'DISCON'
      FixedChar = True
      Size = 1
    end
    object QinventorBACKORD: TCurrencyField
      FieldName = 'BACKORD'
    end
    object QinventorONORDER: TCurrencyField
      FieldName = 'ONORDER'
    end
    object QinventorEMGCOST: TCurrencyField
      FieldName = 'EMGCOST'
    end
    object QinventorMANUFAC: TStringField
      FieldName = 'MANUFAC'
      FixedChar = True
      Size = 25
    end
    object QinventorSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      FixedChar = True
      Size = 12
    end
    object QinventorCHARGFLG: TStringField
      FieldName = 'CHARGFLG'
      FixedChar = True
      Size = 1
    end
    object QinventorSESFLAG: TStringField
      FieldName = 'SESFLAG'
      FixedChar = True
      Size = 1
    end
    object QinventorLOCK: TStringField
      FieldName = 'LOCK'
      FixedChar = True
      Size = 1
    end
    object QinventorINPLOC: TStringField
      FieldName = 'INPLOC'
      FixedChar = True
      Size = 1
    end
    object QinventorGRADE: TStringField
      FieldName = 'GRADE'
      FixedChar = True
      Size = 3
    end
    object QinventorLABEL: TStringField
      FieldName = 'LABEL'
      FixedChar = True
      Size = 1
    end
    object QinventorPARTCHG: TStringField
      FieldName = 'PARTCHG'
      FixedChar = True
    end
    object QinventorPRIC1CHG: TCurrencyField
      FieldName = 'PRIC1CHG'
    end
    object QinventorLASTCHG: TDateField
      FieldName = 'LASTCHG'
    end
    object QinventorENGDESC: TStringField
      FieldName = 'ENGDESC'
      FixedChar = True
      Size = 45
    end
    object QinventorSHELF2: TStringField
      FieldName = 'SHELF2'
      FixedChar = True
      Size = 15
    end
    object QinventorUNITENG: TStringField
      FieldName = 'UNITENG'
      FixedChar = True
      Size = 10
    end
    object QinventorBARCODE: TStringField
      FieldName = 'BARCODE'
      FixedChar = True
      Size = 30
    end
    object QinventorSALEDATE: TDateField
      FieldName = 'SALEDATE'
    end
    object QinventorSUBGROUP: TStringField
      FieldName = 'SUBGROUP'
      FixedChar = True
      Size = 5
    end
    object QinventorFRT: TFloatField
      FieldName = 'FRT'
      Origin = 'FRT'
    end
    object QinventorMAXDISC: TFloatField
      FieldName = 'MAXDISC'
      Origin = 'MAXDISC'
    end
    object QinventorNUM_UNIT: TFloatField
      FieldName = 'NUM_UNIT'
      Origin = 'NUM_UNIT'
    end
  end
  object Qinvanls: TFDQuery
    OnNewRecord = QinvanlsNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      
        'SELECT LOCAT,PARTNO,YEAR1,ONHN_1  AS ONH,ALLO_1 AS ALO FROM INVA' +
        'NLS')
    Left = 144
    Top = 184
  end
  object QBkmast: TFDQuery
    AfterPost = QBkmastAfterPost
    AfterDelete = QBkmastAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM BKMAST')
    Left = 212
    Top = 184
  end
  object QDbconfig: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SDBCONFIG')
    Left = 352
    Top = 184
  end
  object QLastno: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 16
    Top = 236
  end
  object QPtStore: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM PTSTORE')
    Left = 80
    Top = 236
  end
end
