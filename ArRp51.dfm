object QRpAr_51: TQRpAr_51
  Left = 143
  Top = 167
  Width = 959
  Height = 529
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3585#3634#3619#3619#3633#3610#3594#3635#3619#3632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object QArpaytr: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT BILLNO,BILLDT,LOCAT,CUSCODE,TOTAL,DISAMT,NETTOT,VAT3AMT, '
      '           INVNO,PAYCONT,FLAG FROM ARPAYTRN ')
    Left = 322
    Top = 13
  end
  object QCondpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 149
    Top = 12
  end
end
