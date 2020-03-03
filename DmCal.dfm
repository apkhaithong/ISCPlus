object Dm_Cal: TDm_Cal
  OldCreateOrder = False
  Left = 672
  Top = 210
  Height = 267
  Width = 351
  object QArmast: TFDQuery
    ConnectionName = 'DBSoft'
    UpdateOptions.RequestLive = True
    Left = 20
    Top = 20
  end
  object QArpay: TFDQuery
    ConnectionName = 'DBSoft'
    UpdateOptions.RequestLive = True
    SQL.Strings = (
      'SELECT * FROM ARPAY')
    Left = 16
    Top = 72
    object QArpayNOPAY: TFloatField
      Alignment = taCenter
      FieldName = 'NOPAY'
    end
    object QArpayDDATE: TDateField
      FieldName = 'DDATE'
    end
    object QArpayDAMT: TFloatField
      FieldName = 'DAMT'
      DisplayFormat = '##,##0.00'
    end
    object QArpayDATE1: TDateField
      FieldName = 'DATE1'
    end
    object QArpayPAYMENT: TFloatField
      FieldName = 'PAYMENT'
      DisplayFormat = '##,##0.00'
    end
    object QArpayDELAY: TFloatField
      FieldName = 'DELAY'
      DisplayFormat = '##,##0'
    end
    object QArpayINTAMT: TFloatField
      FieldName = 'INTAMT'
      DisplayFormat = '##,##0.00'
    end
    object QArpayVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QArpayNPROF: TFloatField
      FieldName = 'NPROF'
    end
    object QArpaySTRPROF: TFloatField
      FieldName = 'STRPROF'
    end
    object QArpayINTEFFR: TFloatField
      FieldName = 'INTEFFR'
    end
    object QArpayCONTNO: TStringField
      FieldName = 'CONTNO'
      FixedChar = True
    end
    object QArpayLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QArpayV_DAMT: TFloatField
      FieldName = 'V_DAMT'
    end
    object QArpayN_DAMT: TFloatField
      FieldName = 'N_DAMT'
    end
    object QArpayNINSTAL: TFloatField
      FieldName = 'NINSTAL'
    end
    object QArpayV_PAYMENT: TFloatField
      FieldName = 'V_PAYMENT'
    end
    object QArpayN_PAYMENT: TFloatField
      FieldName = 'N_PAYMENT'
    end
    object QArpayADVDUE: TFloatField
      FieldName = 'ADVDUE'
    end
    object QArpayDISCT: TFloatField
      FieldName = 'DISCT'
    end
    object QArpayINTERT: TFloatField
      FieldName = 'INTERT'
    end
    object QArpayTAXINV: TStringField
      FieldName = 'TAXINV'
      FixedChar = True
      Size = 12
    end
    object QArpayTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QArpayUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QArpayTAXAMT: TFloatField
      FieldName = 'TAXAMT'
    end
    object QArpayGRDCOD: TStringField
      FieldName = 'GRDCOD'
      FixedChar = True
      Size = 2
    end
    object QArpayTAXPAY: TFloatField
      FieldName = 'TAXPAY'
    end
    object QArpayTONEFFR: TFloatField
      FieldName = 'TONEFFR'
    end
    object QArpayTONBALANCE: TFloatField
      FieldName = 'TONBALANCE'
    end
  end
  object Table1: TFDTable
    ConnectionName = 'DBSoft'
    TableName = 'TABLE1'
    Left = 88
    Top = 20
  end
  object Table2: TFDTable
    ConnectionName = 'DBSoft'
    TableName = 'TABLE2'
    Left = 90
    Top = 74
  end
  object QChqmas: TFDQuery
    ConnectionName = 'DBSoft'
    Left = 152
    Top = 20
  end
  object QChqtrn1: TFDQuery
    ConnectionName = 'DBSoft'
    Left = 152
    Top = 76
  end
  object QIntrMast: TFDQuery
    ConnectionName = 'DBSoft'
    Left = 220
    Top = 20
  end
  object Query1: TFDQuery
    ConnectionName = 'DBSoft'
    Left = 220
    Top = 76
  end
  object Qinvtran: TFDQuery
    ConnectionName = 'DBSoft'
    SQL.Strings = (
      'SELECT STRNO,STAT FROM INVTRAN')
    Left = 14
    Top = 122
  end
  object QCondpay: TFDQuery
    CachedUpdates = True
    ConnectionName = 'DBSoft'
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 84
    Top = 124
  end
end
