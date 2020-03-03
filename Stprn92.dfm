object FmStprn92: TFmStprn92
  Left = 111
  Top = 137
  Width = 838
  Height = 521
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3619#3633#3610#3650#3629#3609#3618#3657#3634#3618#3626#3636#3609#3588#3657#3634
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
  object QRcinv: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT I.RECVLOC,I.RECVNO,RECVDT,I.INVNO,I.PONO,I.INVDATE,'
      'I.APCODE,I.TOTCOST,C.OFFICNAM'
      'FROM RC_INVOI I,OFFICER C '
      'WHERE (I.OFFICCOD = C.OFFICCOD) ')
    Left = 192
    Top = 28
  end
  object QRcTrn: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.RECVNO,A.PARTNO,A.QTYRECV,A.UCOST,A.NETTOT, '
      'B.PARTNO,B.DESC1 FROM RC_TRANS A,Invmast B')
    Left = 236
    Top = 28
  end
end
