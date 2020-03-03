object QArRp_21: TQArRp_21
  Left = 221
  Top = 107
  Width = 858
  Height = 623
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = 'QuickReport List'
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
  object Query20: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT A.LOCAT,A.CUSCODE,COUNT(A.INVNO) AS NUM,SUM(A.NETTOTAL) A' +
        'S NETTOT,'
      
        'SUM(A.SMPAY+A.SMCHQ) AS PAYMNT,SUM(A.KANG) AS KANG  FROM ARINVOI' +
        '  A'
      '  GROUP BY A.LOCAT,A.CUSCODE')
    Left = 56
    object Query20LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object Query20CUSCODE: TStringField
      FieldName = 'CUSCODE'
      Size = 12
    end
    object Query20NUM: TIntegerField
      FieldName = 'NUM'
      DisplayFormat = '#,##0'
    end
    object Query20NETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '#,##0.00'
    end
    object Query20PAYMNT: TFloatField
      FieldName = 'PAYMNT'
      DisplayFormat = '#,##0.00'
    end
    object Query20KANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
    end
  end
  object QCondpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 85
  end
  object QArmast: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = DataSource1
    SQL.Strings = (
      'SELECT CUSCOD,NAME1,NAME2 FROM ARMAST WHERE CUSCOD=:CUSCODE')
    Left = 152
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CUSCODE'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query20
    Left = 124
    Top = 1
  end
end
