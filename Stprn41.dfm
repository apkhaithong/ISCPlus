object FmStprn41: TFmStprn41
  Left = 44
  Top = 119
  Width = 962
  Height = 686
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3619#3633#3610#3626#3636#3609#3588#3657#3634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object QRcinv: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT A.Recvno,A.Recvloc,A.Recvdt,A.Invno,A.Invdate,A.Pono,A.Ap' +
        'code,A.TaxDate,'
      
        'A.Taxno,A.Netamt,A.Vatamt,A.Vatrt,A.Totcost,A.FLAG,B.Apcode,B.Ap' +
        'name,B.Addr1,'
      'B.Addr2,B.Aptelp,A.Credtm,A.Invdue  '
      'FROM RC_INVOI A,APMAST B')
    Left = 274
    Top = 10
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 242
    Top = 10
  end
  object QRctrn: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.Recvno,A.Recvloc,A.Partno,A.Qtyord,A.QtyRecv, '
      '            A.Netcost,A.Nettot,B.Partno,B.Desc1,B.Shelf  '
      '            FROM RC_TRANS A,INVentor B')
    Left = 306
    Top = 12
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 204
    Top = 14
  end
end
