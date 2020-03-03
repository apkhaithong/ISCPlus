object PrnCrdPost: TPrnCrdPost
  Left = 272
  Top = 99
  Width = 816
  Height = 568
  Caption = 'PrnCrdPost'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 32
    Top = 24
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM TAXSAL')
    Left = 60
    Top = 24
    object Query2TAXNO: TStringField
      FieldName = 'TAXNO'

      FixedChar = True
      Size = 12
    end
    object Query2TAXDATE: TDateField
      FieldName = 'TAXDATE'

    end
    object Query2TAXREFNO: TStringField
      FieldName = 'TAXREFNO'

      FixedChar = True
      Size = 12
    end
    object Query2JOBNO: TStringField
      FieldName = 'JOBNO'

      FixedChar = True
      Size = 15
    end
    object Query2DESC1: TStringField
      FieldName = 'DESC1'

      FixedChar = True
      Size = 55
    end
    object Query2CUSCOD: TStringField
      FieldName = 'CUSCOD'

      FixedChar = True
      Size = 12
    end
    object Query2VATRT: TFloatField
      FieldName = 'VATRT'

      DisplayFormat = '##,###.00'
    end
    object Query2AMOUNT: TFloatField
      FieldName = 'AMOUNT'

    end
    object Query2REDU: TFloatField
      FieldName = 'REDU'

    end
    object Query2BALANCE: TFloatField
      FieldName = 'BALANCE'

      DisplayFormat = '##,###.00'
    end
    object Query2VAT: TFloatField
      FieldName = 'VAT'

      DisplayFormat = '##,###.00'
    end
    object Query2TOTTAX: TFloatField
      FieldName = 'TOTTAX'

      DisplayFormat = '##,###.00'
    end
    object Query2FLAG: TStringField
      FieldName = 'FLAG'

      FixedChar = True
      Size = 1
    end
    object Query2CANCEL: TStringField
      FieldName = 'CANCEL'

      FixedChar = True
      Size = 1
    end
    object Query2SYSTM: TStringField
      FieldName = 'SYSTM'

      FixedChar = True
      Size = 5
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'

      FixedChar = True
      Size = 8
    end
    object Query2TIME1: TDateTimeField
      FieldName = 'TIME1'

    end
    object Query2CANCELID: TStringField
      FieldName = 'CANCELID'

      FixedChar = True
      Size = 8
    end
    object Query2CANDAT: TDateTimeField
      FieldName = 'CANDAT'

    end
    object Query2POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'

    end
    object Query2PAYTYP: TStringField
      FieldName = 'PAYTYP'

      FixedChar = True
      Size = 1
    end
    object Query2LOCAT: TStringField
      FieldName = 'LOCAT'

      FixedChar = True
      Size = 5
    end
    object Query2FRSV: TStringField
      FieldName = 'FRSV'

      FixedChar = True
      Size = 1
    end
    object Query2MEMO1: TMemoField
      FieldName = 'MEMO1'

      BlobType = ftMemo
      Size = 1
    end
    object Query2CLAIM: TStringField
      FieldName = 'CLAIM'

      FixedChar = True
      Size = 1
    end
  end
  object n2wMoney1: Tn2wMoney
    Language = Thai
    Point = 2
    Left = 88
    Top = 24
  end
end
