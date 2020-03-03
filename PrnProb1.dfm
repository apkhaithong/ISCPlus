object FmPrnProb1: TFmPrnProb1
  Left = 209
  Top = 170
  Width = 707
  Height = 300
  Caption = 'FmPrnProb'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.STRNO,A.JOBNO,A.PBDESC, A.STAR,PRNDATE,B.RSDESC '
      'FROM NEWPROB A,RE_SULT B WHERE (A.RSCODE = B.RSCODE)')
    Left = 76
    Top = 8
  end
  object TCondpay: TFDTable
    ConnectionName = 'HI_DBMS'
    TableName = 'CONDPAY'
    Left = 106
    Top = 8
  end
end
