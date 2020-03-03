object FmStprn11: TFmStprn11
  Left = 79
  Top = 53
  Width = 652
  Height = 393
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 32
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3614#3636#3617#3614#3660#3651#3610#3648#3626#3609#3629#3619#3634#3588#3634
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
  object Query1: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 196
    Top = 18
  end
  object QQainv: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.QANO,A.QALOCAT,A.QADATE,A.CUSCOD,A.OFFICCOD,A.NETAMT,'
      'A.VATAMT,A.NETTOTAL,B.ADDR1,B.ADDR2,B.TUMB,B.AUMP,B.PROV '
      'FROM QAINVOI A,ARMAST B WHERE A.CUSCOD=B.CUSCOD')
    Left = 228
    Top = 10
  end
  object QQatrn: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.PARTNO,A.QTYORD,A.QTYOUT,A.UPRICE,A.NETPRC,'
      
        '    A.TOTPRC,B.DESC1 FROM QATRANS A,INVENTOR B WHERE A.PARTNO=B.' +
        'PARTNO AND A.QALOCAT=B.LOCAT')
    Left = 256
    Top = 18
  end
end
