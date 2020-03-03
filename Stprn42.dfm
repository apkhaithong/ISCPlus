object FmStprn42: TFmStprn42
  Left = 34
  Top = 70
  Width = 751
  Height = 449
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3619#3633#3610#3592#3634#3585#3585#3634#3619#3595#3639#3657#3629#3605#3656#3634#3591#3611#3619#3632#3648#3607#3624
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
    Left = 246
    Top = 259
  end
  object Condpay: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'Select * from Condpay')
    Left = 214
    Top = 259
  end
  object QRctrn: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.Recvno,A.Recvloc,A.Partno,A.Qtyord,A.QtyRecv, '
      '            A.Netcost,A.Nettot,B.Partno,B.Desc1,B.Shelf  '
      '            FROM RC_TRANS A,INVentor B')
    Left = 274
    Top = 261
  end
  object Query1: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 146
    Top = 257
  end
end
