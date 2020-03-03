object FmTXDm: TFmTXDm
  OldCreateOrder = True
  OnCreate = FmTXDmRpCreate
  Left = 411
  Top = 272
  Height = 220
  Width = 328
  object Condpay: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 20
    Top = 124
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from temptb1')
    Left = 20
    Top = 16
  end
  object SoQuery1: TDataSource
    DataSet = Query1
    Left = 68
    Top = 16
  end
  object SoQuery2: TDataSource
    DataSet = Query2
    Left = 68
    Top = 68
  end
  object Query5: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 72
    Top = 124
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT RecvNo,RecvLoc,Vatrt,NetAmt,VatAmt,TotCost, '
      '              TaxDate,TaxNo,TaxRefNo,Apcode From Rc_invoi')
    Left = 20
    Top = 68
    object Query2RECVNO: TStringField
      FieldName = 'RECVNO'
      Size = 12
    end
    object Query2RECVLOC: TStringField
      FieldName = 'RECVLOC'
      Size = 5
    end
    object Query2VATRT: TFloatField
      FieldName = 'VATRT'
    end
    object Query2NETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '#,##0.00'
    end
    object Query2VATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object Query2TOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '#,##0.00'
    end
    object Query2TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object Query2TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object Query2TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object Query2APCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
  end
  object Query6: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 140
    Top = 16
  end
  object SoQuery6: TDataSource
    DataSet = Query6
    Left = 192
    Top = 16
  end
  object Query7: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 144
    Top = 72
  end
  object SoQuery7: TDataSource
    DataSet = Query7
    Left = 196
    Top = 72
  end
  object Menutrn: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 252
    Top = 12
  end
end
