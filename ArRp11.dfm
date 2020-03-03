object QArRp_11: TQArRp_11
  Left = 24
  Top = 146
  Width = 1090
  Height = 474
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
      'Select * from Scondpay')
    Left = 357
    Top = 12
  end
  object QArinv1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT  A.LOCAT,A.CUSCODE,A.INVNO,A.INVDATE,A.INVDUE,A.NETTOTAL,' +
        'A.TAXNO, '
      
        '              (A.SMPAY+A.SMCHQ) AS PAYAMT,A.KANG,B.NAME1,B.NAME2' +
        '  FROM ARINVOI A,ARMAST B  '
      '              WHERE A.CUSCODE=B.CUSCOD')
    Left = 304
    Top = 12
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 267
    Top = 14
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 295
    Top = 46
  end
end
