object QRpAr_31: TQRpAr_31
  Left = 63
  Top = 45
  Width = 580
  Height = 369
  HorzScrollBar.Position = 16
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = 'QuickReport List'
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
  object QCondpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 145
    Top = 8
  end
  object QInvpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.INVNO,A.CUSCODE,A.LOCAT,A.INVDATE,A.INVDUE,A.NETTOTAL,'
      
        '    (A.SMPAY+A.SMCHQ) AS PAYAMT  ,A.TNOPAY,(A.NETTOTAL-A.SMPAY-A' +
        '.SMCHQ) AS BALANCE ,'
      '    (A.NETTOTAL-A.SMPAY-A.SMCHQ) AS DUEAMT ,'
      
        '    B.NAME1,B.NAME2 FROM ARINVOI A,ARMAST B WHERE A.CUSCODE=B.CU' +
        'SCOD')
    Left = 112
    Top = 9
  end
end
