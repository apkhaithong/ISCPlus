object SetStat_r: TSetStat_r
  Left = 115
  Top = 230
  Width = 913
  Height = 489
  Caption = 'SetStat_r'
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
  object Tarmast: TFDQuery
    ConnectionName = 'SV_DBMS'
    SQL.Strings = (
      'select * from  INVLOCAT order by LOCATCD')
    Left = 4
    Top = 3
  end
end
