object DM_SEC: TDM_SEC
  OldCreateOrder = True
  Height = 276
  Width = 313
  object HI_DBMS: TFDConnection
    ConnectionName = 'HI_DBMS'
    Params.Strings = (
      'Database=DBISC'
      'User_Name=mrp'
      'Password=Bks5j23N'
      'Server=119.59.112.76'
      'Port=50000'
      'DriverID=DB2')
    FormatOptions.AssignedValues = [fvMapRules, fvDefaultParamDataType]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        PrecMax = 18
        PrecMin = 1
        ScaleMax = 4
        ScaleMin = 2
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        PrecMax = 8
        PrecMin = 1
        ScaleMax = 0
        ScaleMin = 0
        SourceDataType = dtBCD
        TargetDataType = dtInt32
      end
      item
        PrecMax = 0
        PrecMin = 0
        ScaleMax = 0
        ScaleMin = 0
        SizeMax = 1024
        SizeMin = 512
        SourceDataType = dtAnsiString
        TargetDataType = dtMemo
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDateTime
      end>
    FormatOptions.DefaultParamDataType = ftVariant
    TxOptions.DisconnectAction = xdRollback
    TxOptions.EnableNested = False
    Connected = True
    LoginPrompt = False
    OnRecover = HI_DBMSRecover
    BeforeStartTransaction = HI_DBMSBeforeStartTransaction
    AfterCommit = HI_DBMSAfterCommit
    AfterRollback = HI_DBMSAfterRollback
    Left = 112
    Top = 8
  end
  object FDPhysDB2DriverLink1: TFDPhysDB2DriverLink
    Left = 204
    Top = 8
  end
  object Query1: TFDQuery
    Connection = HI_DBMS
    Left = 40
    Top = 112
  end
  object Query2: TFDQuery
    Connection = HI_DBMS
    Left = 104
    Top = 112
  end
  object qrRecent: TFDQuery
    CachedUpdates = True
    Connection = HI_DBMS
    Left = 172
    Top = 116
  end
  object Condpay: TFDQuery
    Connection = HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SCONDPAY')
    Left = 236
    Top = 116
  end
  object QMenutrn: TFDQuery
    Connection = HI_DBMS
    SQL.Strings = (
      'SELECT * FROM MENUMST')
    Left = 40
    Top = 160
  end
  object QCondcal: TFDQuery
    Connection = HI_DBMS
    SQL.Strings = (
      'SELECT * FROM CONDCAL')
    Left = 104
    Top = 160
  end
  object QLastno: TFDQuery
    CachedUpdates = True
    Connection = HI_DBMS
    SQL.Strings = (
      'SELECT  *  FROM  TLASTNO')
    Left = 172
    Top = 164
  end
  object qCondpay: TFDQuery
    CachedUpdates = True
    Connection = HI_DBMS
    SQL.Strings = (
      'SELECT * FROM THDDOC')
    Left = 236
    Top = 164
  end
  object QDbconfig: TFDQuery
    CachedUpdates = True
    Connection = HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TRUNDOC')
    Left = 40
    Top = 208
  end
  object Lastno: TFDQuery
    CachedUpdates = True
    Connection = HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SLASTNO')
    Left = 104
    Top = 208
  end
  object QLocat: TFDQuery
    Connection = HI_DBMS
    Left = 172
    Top = 212
  end
  object qrReport: TFDQuery
    AfterPost = qrReportAfterPost
    CachedUpdates = True
    Connection = HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TRUNDOC')
    Left = 236
    Top = 212
  end
end
