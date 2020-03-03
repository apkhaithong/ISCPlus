object FmApPrn11: TFmApPrn11
  Left = 109
  Top = 35
  Width = 966
  Height = 678
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3623#3634#3591#3610#3636#3621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object TCondpay: TFDTable
    ConnectionName = 'Hi_DBMS'
    TableName = 'CONDPAY'
    Left = 197
    Top = 19
  end
  object QApbill: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM APBILL')
    Left = 230
    Top = 21
  end
  object QAptrn: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM APBILTR')
    Left = 167
    Top = 17
    object QAptrnINVNO: TStringField
      FieldName = 'INVNO'

      Size = 12
    end
    object QAptrnINVDATE: TDateField
      FieldName = 'INVDATE'

    end
    object QAptrnDUEDATE: TDateField
      FieldName = 'DUEDATE'

    end
    object QAptrnBALANCE: TFloatField
      FieldName = 'BALANCE'

    end
  end
end
