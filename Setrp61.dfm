object Setrp_61: TSetrp_61
  Left = 95
  Top = 97
  Width = 812
  Height = 411
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3605#3619#3623#3592#3648#3594#3655#3588#3605#3634#3617#3619#3632#3618#3632
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
  object Tarmast: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM TABSERV')
    Left = 13
    Top = 19
  end
end
