object SvSt_921: TSvSt_921
  Left = 84
  Top = 185
  Width = 648
  Height = 460
  Caption = 'SvSt_921'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Tarmast: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from  INVLOCAT order by LOCATCD')
    Left = 4
    Top = 3
  end
end
