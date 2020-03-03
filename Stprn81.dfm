object FmStprn81: TFmStprn81
  Left = 313
  Top = 124
  Width = 648
  Height = 460
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 5
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3619#3633#3610#3588#3639#3609#3626#3636#3609#3588#3657#3634#3592#3634#3585#3621#3641#3585#3588#3657#3634
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
  object QRtinv1: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      
        'SELECT A.RTNNO,A.RTNDT,A.INVNO,A.TAXREFNO,A.TAXDT,A.JOBNO, A.MEM' +
        'O1,'
      'A.APCODE,A.OFFICCOD,A.CREDNO,A.CREDDT,A.TOTPRC, '
      'B.CUSCOD,A.VATRT,A.VATAMT,A.NETPRC,'
      'B.SNAM,B.NAME1,B.NAME2,C.OFFICCOD,C.OFFICNAM  '
      'FROM RT_INVOI A,ARMAST B,OFFICER C')
    Left = 268
    Top = 329
  end
  object Condpay: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'Select * from Condpay')
    Left = 212
    Top = 329
  end
  object QRttrn: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.RTNNO,A.QTYRTN,A.UPRICE,A.NETPRC,B.Partno,B.Desc1 '
      'FROM RT_TRAN A,Invmast B')
    Left = 300
    Top = 329
  end
  object Query1: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'select * from Taxsal ')
    Left = 338
    Top = 331
  end
end
