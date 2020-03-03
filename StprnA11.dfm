object FmSTPrnA11: TFmSTPrnA11
  Left = 294
  Top = 226
  Width = 894
  Height = 523
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3614#3636#3617#3614#3660#3651#3610#3648#3594#3655#3588#3626#3605#3655#3629#3585
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
  object QueryA10: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 168
    Top = 12
  end
  object QueryA11: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 124
    Top = 12
  end
  object Condpay: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'Select * from Condpay')
    Left = 68
    Top = 12
  end
end
