object QRFPo21: TQRFPo21
  Left = 99
  Top = 96
  Width = 640
  Height = 297
  HorzScrollBar.Position = 384
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3585#3634#3619#3626#3633#3656#3591#3595#3639#3657#3629#3605#3634#3617#3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Query2: TFDQuery
    AfterOpen = Query2AfterOpen
    AfterClose = Query2AfterClose
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT POLOCAT,APCODE,PARTNO,SUM(ORDQTY) AS SUM1,'
      'SUM(RECQTY) AS SUM2,SUM(ORDQTY-RECQTY) AS SUM3,NETCOST,'
      'SUM((ORDQTY-RECQTY )*NETCOST) AS SUM4 '
      'FROM PO_TRANS GROUP BY POLOCAT,APCODE,PARTNO,NETCOST         ')
    Left = 12
    Top = 63
    object Query2POLOCAT: TStringField
      FieldName = 'POLOCAT'
      Size = 5
    end
    object Query2APCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object Query2PARTNO: TStringField
      FieldName = 'PARTNO'
    end
    object Query2SUM1: TFloatField
      FieldName = 'SUM1'
      DisplayFormat = '#,##0.00'
    end
    object Query2SUM2: TFloatField
      FieldName = 'SUM2'
      DisplayFormat = '#,##0.00'
    end
    object Query2SUM3: TFloatField
      FieldName = 'SUM3'
      DisplayFormat = '#,##0.00'
    end
    object Query2SUM4: TFloatField
      FieldName = 'SUM4'
      DisplayFormat = '#,##0.00'
    end
    object Query2NETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '#,##0.00'
    end
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 273
    Top = 14
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
    object CondpayCOMP_ADR1: TStringField
      FieldName = 'COMP_ADR1'
      Size = 60
    end
    object CondpayCOMP_ADR2: TStringField
      FieldName = 'COMP_ADR2'
      Size = 60
    end
    object CondpayTELP: TStringField
      FieldName = 'TELP'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query2
    Left = 74
    Top = 68
  end
  object TInventor: TFDTable
    ConnectionName = 'HI_DBMS'
    IndexFieldNames = 'PARTNO;LOCAT'
    MasterFields = 'PARTNO;POLOCAT'
    MasterSource = DataSource1
    TableName = 'INVENTOR'
    Left = 22
    Top = 106
  end
end
