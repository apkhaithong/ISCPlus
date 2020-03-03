object DM01: TDM01
  OldCreateOrder = False
  Height = 347
  Width = 403
  object QMenutrn: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 85
    Top = 12
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 144
    Top = 12
  end
  object QCondpay: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 85
    Top = 69
  end
  object SoCondpay: TDataSource
    DataSet = QCondpay
    Left = 145
    Top = 69
  end
  object QLastno: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      #13'SELECT * FROM LASTNO'#10
      ''
      '')
    Left = 256
    Top = 12
  end
  object QDbconfig: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM DBCONFIG')
    Left = 203
    Top = 69
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 200
    Top = 12
  end
  object Query3: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 257
    Top = 69
  end
  object qrHDRun: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TB_HDRUN')
    Left = 19
    Top = 69
  end
  object qrReport: TFDQuery
    AfterPost = qrReportAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 152
    Top = 124
  end
  object DataSource1: TDataSource
    DataSet = qrReport
    Left = 208
    Top = 120
  end
end
