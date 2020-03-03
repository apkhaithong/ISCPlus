object QArRp_41: TQArRp_41
  Left = 38
  Top = 41
  Width = 652
  Height = 379
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
  object QInvpay1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.INVNO,A.CUSCODE,A.LOCAT,A.INVDATE,A.INVDUE,A.NETTOTAL, '
      
        '       (A.SMPAY+A.SMCHQ) AS PAYAMT  ,A.TNOPAY,(A.NETTOTAL-A.SMPA' +
        'Y-A.SMCHQ) AS BALANCE ,'
      '     (A.NETTOTAL-A.SMPAY-A.SMCHQ) AS OVERAMT,B.NAME1,B.NAME2  '
      '      FROM ARINVOI A,ARMAST B WHERE A.CUSCODE=B.CUSCOD')
    Left = 107
    Top = 10
  end
  object QCondpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 141
    Top = 12
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 176
    Top = 8
  end
end
