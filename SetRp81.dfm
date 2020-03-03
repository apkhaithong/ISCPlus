object FmSetRp81: TFmSetRp81
  Left = 42
  Top = 207
  Width = 596
  Height = 319
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 56
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3627#3633#3626#3608#3609#3634#3588#3634#3619
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
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 64
    Top = 12
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
  end
  object Query80: TFDQuery
    ConnectionName = 'HI_DBMS'
    UpdateOptions.RequestLive = True
    Left = 100
    Top = 12
  end
end
