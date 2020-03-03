object FmSetRp91: TFmSetRp91
  Left = 171
  Top = 239
  Width = 596
  Height = 319
  HorzScrollBar.Position = 241
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3619#3627#3633#3626#3585#3634#3619#3588#3639#3609#3648#3594#3655#3588
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
  object Query90: TFDQuery
    ConnectionName = 'HI_DBMS'
    UpdateOptions.RequestLive = True
    SQL.Strings = (
      'SELECT * FROM RTCHQ')
    Left = 328
    Top = 65530
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 160
    Top = 65530
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
  end
end
