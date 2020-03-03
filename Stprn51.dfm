object FmStprn51: TFmStprn51
  Left = 246
  Top = 339
  Width = 606
  Height = 404
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 6
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3648#3610#3636#3585#3626#3636#3609#3588#3657#3634
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
  object QPkinv: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      
        'SELECT A.PKNO,A.PKLOCAT,A.PKDATE,A.CUSCOD,A.OFFICCOD,A.BALANCE,A' +
        '.SVCOLOR,'
      'A.JOBNO,A.SVORD,B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,'
      'C.OFFICCOD,C.OFFICNAM,A.RTNPK '
      'FROM PK_INVOI A,ARMAST B,OFFICER C')
    Left = 168
    Top = 65
  end
  object QPktrn: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.PKNO,A.PARTNO,A.QTYORD,A.QTYOUT, A.REDU1,A.FREE,'
      'A.UPRICE,A.NETPRC,A.TOTPRC,B.PARTNO,B.DESC1 ,B.SHELF '
      'FROM PK_TRANS A,INVENTOR B')
    Left = 226
    Top = 65
  end
  object Condpay: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'Select * from Condpay')
    Left = 136
    Top = 65
  end
  object Query1: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 259
    Top = 65
  end
end
