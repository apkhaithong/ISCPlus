object FmStprn91: TFmStprn91
  Left = 76
  Top = 97
  Width = 872
  Height = 590
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3650#3629#3609#3618#3657#3634#3618#3626#3636#3609#3588#3657#3634
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
  object Condpay: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'Select * from Condpay')
    Left = 68
    Top = 12
  end
  object QMvinv: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.MOVFRM,A.MOVTO,A.MOVNO,A.MOVDT,A.OFFICCOD,A.TOTPRC,'
      'B.LOCATCOD,B.LOCATNAM,C.OFFICCOD,C.OFFICNAM  '
      'FROM  MV_INVOI A,LOCATMST B,OFFICER C')
    Left = 100
    Top = 14
  end
  object QMvtrn: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.MOVNO,A.PARTNO,A.QTYMOV,A.UPRICE,A.TOTPRC,'
      'B.PARTNO,B.DESC1 '
      'FROM MV_TRANS A,INVMAST B')
    Left = 132
    Top = 12
  end
  object Query1: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.MOVNO,A.PARTNO,A.QTYMOV,A.UPRICE,A.TOTPRC,'
      'B.PARTNO,B.DESC1 '
      'FROM MV_TRANS A,INVMAST B')
    Left = 163
    Top = 12
  end
end
