object Dm_Po: TDm_Po
  OldCreateOrder = True
  Height = 319
  Width = 413
  object QLocat: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM LOCATMST')
    Left = 18
    Top = 122
  end
  object SoLocat: TDataSource
    DataSet = QLocat
    Left = 73
    Top = 122
  end
  object QApmast: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM APMAST  WHERE APCODE='#39' x'#39)
    Left = 123
    Top = 122
  end
  object SoApmast: TDataSource
    DataSet = QApmast
    Left = 177
    Top = 122
  end
  object QPoTrn: TFDQuery
    AfterOpen = QPoTrnAfterOpen
    BeforeClose = QPoTrnBeforeClose
    BeforePost = QPoTrnBeforePost
    AfterPost = QPoTrnAfterPost
    AfterDelete = QPoTrnAfterPost
    OnNewRecord = QPoTrnNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM PO_TRANS ')
    Left = 18
    Top = 72
    object QPoTrnPONO: TStringField
      FieldName = 'PONO'
      Size = 12
    end
    object QPoTrnPOLOCAT: TStringField
      FieldName = 'POLOCAT'
      Size = 5
    end
    object QPoTrnPODATE: TDateField
      FieldName = 'PODATE'
    end
    object QPoTrnORDQTY: TFloatField
      FieldName = 'ORDQTY'
    end
    object QPoTrnRECQTY: TFloatField
      FieldName = 'RECQTY'
    end
    object QPoTrnBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object QPoTrnNETFL: TStringField
      FieldName = 'NETFL'
      Size = 1
    end
    object QPoTrnORDCOST: TFloatField
      FieldName = 'ORDCOST'
    end
    object QPoTrnREDU: TFloatField
      FieldName = 'REDU'
    end
    object QPoTrnNETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '#,##0.00'
    end
    object QPoTrnTOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '#,##0.00'
    end
    object QPoTrnLRECV: TDateField
      FieldName = 'LRECV'
    end
    object QPoTrnUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QPoTrnTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QPoTrnFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QPoTrnAPCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object QPoTrnYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object QPoTrnPARTNO: TStringField
      FieldName = 'PARTNO'
    end
    object QPoTrnBO: TStringField
      FieldName = 'BO'
      Size = 1
    end
    object QPoTrnGROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
  end
  object SoPotrn: TDataSource
    DataSet = QPoTrn
    Left = 73
    Top = 66
  end
  object QInvt: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT *  FROM INVENTOR')
    Left = 123
    Top = 19
  end
  object SoInvt: TDataSource
    DataSet = QInvt
    Left = 177
    Top = 19
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT *  FROM INVENTOR')
    Left = 123
    Top = 68
  end
  object SoQuery2: TDataSource
    DataSet = Query2
    Left = 177
    Top = 70
  end
  object QLastno: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SLASTNO')
    Left = 264
    Top = 233
  end
  object Condpay: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SCONDPAY')
    Left = 208
    Top = 225
  end
  object QPoinv1: TFDQuery
    AfterInsert = QPoinv1AfterInsert
    BeforePost = QPoinv1BeforePost
    AfterPost = QPoinv1AfterPost
    AfterCancel = QPoinv1AfterCancel
    BeforeDelete = QPoinv1BeforeDelete
    AfterDelete = QPoinv1AfterPost
    OnCalcFields = QPoinv1CalcFields
    OnNewRecord = QPoinv1NewRecord
    CachedUpdates = True
    OnUpdateError = QPoinv1UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM PO_INVOI')
    Left = 18
    Top = 16
    object QPoinv1PONO: TStringField
      FieldName = 'PONO'
      Size = 12
    end
    object QPoinv1APCODE: TStringField
      FieldName = 'APCODE'
      OnValidate = QPoinv1APCODEValidate
      Size = 12
    end
    object QPoinv1PODATE: TDateField
      FieldName = 'PODATE'
    end
    object QPoinv1POLOCAT: TStringField
      FieldName = 'POLOCAT'
      Size = 5
    end
    object QPoinv1TRANF: TStringField
      FieldName = 'TRANF'
      Size = 1
    end
    object QPoinv1VAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1NETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1VATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1TOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1OFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object QPoinv1COSTFLG: TStringField
      FieldName = 'COSTFLG'
      Size = 1
    end
    object QPoinv1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QPoinv1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QPoinv1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QPoinv1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QPoinv1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QPoinv1Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QPoinv1REFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QPoinv1POTYPE: TStringField
      FieldName = 'POTYPE'
      OnValidate = QPoinv1POTYPEValidate
      Size = 2
    end
    object QPoinv1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QPoinv1DISCTYP: TStringField
      FieldName = 'DISCTYP'
      Size = 1
    end
    object QPoinv1DUERECV: TDateField
      FieldName = 'DUERECV'
    end
    object QPoinv1CHCODE: TStringField
      FieldName = 'CHCODE'
      Size = 5
    end
    object QPoinv1CHRATE: TFloatField
      FieldName = 'CHRATE'
    end
    object QPoinv1DUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QPoinv1TPCODE: TStringField
      FieldName = 'TPCODE'
      Size = 5
    end
    object QPoinv1RLCODE: TStringField
      FieldName = 'RLCODE'
      Size = 5
    end
    object QPoinv1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QPoinv1CREDTM: TFloatField
      FieldName = 'CREDTM'
      OnValidate = QPoinv1CREDTMValidate
    end
    object QPoinv1PRCFLG: TStringField
      FieldName = 'PRCFLG'
      Size = 1
    end
  end
  object SoPoinv1: TDataSource
    DataSet = QPoinv1
    Left = 73
    Top = 17
  end
  object SoInventor: TDataSource
    DataSet = QInventor
    Left = 73
    Top = 172
  end
  object Soinventor1: TDataSource
    DataSet = QInventor1
    Left = 296
    Top = 172
  end
  object Qorder1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM PO_TRANS ')
    Left = 123
    Top = 172
  end
  object Soorder1: TDataSource
    DataSet = Qorder1
    Left = 177
    Top = 172
  end
  object QTemp: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TEMPTB2')
    Left = 244
    Top = 120
  end
  object SoQTemp: TDataSource
    DataSet = QTemp
    Left = 300
    Top = 120
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 304
    Top = 68
  end
  object Query26: TFDQuery
    AutoCalcFields = False
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 352
    Top = 120
  end
  object Query20: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 352
    Top = 172
  end
  object SoQuery1: TDataSource
    DataSet = Query1
    Left = 352
    Top = 68
  end
  object DbConfig: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SDBCONFIG')
    Left = 304
    Top = 232
  end
  object QPotype: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM POTYPE')
    Left = 18
    Top = 224
  end
  object SoPotype: TDataSource
    DataSet = QPotype
    Left = 73
    Top = 224
  end
  object Query3: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 123
    Top = 224
  end
  object QInventor: TFDQuery
    MasterSource = SoPotrn
    Connection = DM_SEC.HI_DBMS
    Left = 18
    Top = 172
  end
  object QInventor1: TFDQuery
    MasterSource = Soorder1
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      
        'SELECT DESC1 FROM INVENTOR WHERE PARTNO=:PARTNO AND LOCAT=:POLOC' +
        'AT')
    Left = 244
    Top = 172
  end
end
