object FmSetRp41: TFmSetRp41
  Left = 33
  Top = 113
  Width = 596
  Height = 318
  HorzScrollBar.Position = 577
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 41
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3626#3636#3609#3588#3657#3634
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
  object Query40: TFDQuery
    ConnectionName = 'SET_DBMS'
    SQL.Strings = (
      'SELECT * From Inventor')
    Left = 120
    Top = 12
  end
  object Condpay: TFDQuery
    ConnectionName = 'SET_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 64
    Top = 12
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
  end
end
