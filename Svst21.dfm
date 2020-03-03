object SvSt_21: TSvSt_21
  Left = 112
  Top = 182
  Width = 833
  Height = 552
  Caption = 'SvSt_21'
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
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from  INVLOCAT order by LOCATCD')
    Left = 4
    Top = 3
  end
end
