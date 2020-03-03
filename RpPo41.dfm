object FmRpPo41: TFmRpPo41
  Left = 72
  Top = 127
  Width = 1159
  Height = 580
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3626#3636#3609#3588#3657#3634#3606#3638#3591#3592#3640#3604#3626#3633#3656#3591#3595#3639#3657#3629
  Color = clSilver
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
  object Query810: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT t.partno,t.desc1,t.locat,t.max1,t.min1, '
      '              (t.max1) as ord,t.min1 as onhn1 '
      '              From Inventor t,Invanls a')
    Left = 136
    Top = 16
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 277
    Top = 20
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
end
