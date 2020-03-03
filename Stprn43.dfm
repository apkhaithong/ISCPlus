object FmStprn43: TFmStprn43
  Left = 35
  Top = 9
  Width = 652
  Height = 435
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3588#3635#3609#3623#3603#3605#3657#3609#3607#3640#3609#3626#3636#3609#3588#3657#3634#3605#3656#3634#3591#3611#3619#3632#3648#3607#3624
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
  object QRcinv: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      
        'SELECT A.Recvno,A.Recvloc,A.Recvdt,A.Invno,A.Invdate,A.Pono,A.Ap' +
        'code,A.TaxDate,'
      
        'A.Taxno,A.Netamt,A.Vatamt,A.Vatrt,A.Totcost,A.FLAG,B.Apcode,B.Ap' +
        'name,B.Addr1,'
      'B.Addr2,B.Aptelp,A.Credtm,A.Invdue  '
      'FROM RC_INVOI A,APMAST B')
    Left = 79
    Top = 42
  end
  object Condpay: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'Select * from Condpay')
    Left = 242
    Top = 10
  end
end
