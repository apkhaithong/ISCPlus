object FmStprn71: TFmStprn71
  Left = 125
  Top = 64
  Width = 640
  Height = 464
  HorzScrollBar.Position = 96
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 56
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3626#3656#3591#3588#3639#3609#3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
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
    Left = 72
    Top = 28
  end
  object QRtinv: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.RTNNO,A.RTNDT,A.INVNO,A.TAXREFNO,A.TAXDT, A.MEMO1,'
      
        'A.APCODE,A.OFFICCOD,A.CREDNO,A.CREDDT,A.TOTAL,A.VATAMT,A.VATRT, ' +
        'A.TOTPRC,'
      'B.APCODE,B.APNAME,B.ADDR1,B.ADDR2,B.APTELP, '
      'C.OFFICCOD,C.OFFICNAM  '
      'FROM RT_INVOI A,APMAST B,OFFICER C')
    Left = 100
    Top = 12
  end
  object QRttrn: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.RTNNO,A.QTYRTN,A.UPRICE,A.NETPRC,B.Partno,B.Desc1 '
      'FROM RT_TRAN A,Invmast B')
    Left = 132
    Top = 12
    object QRttrnRTNNO: TStringField
      FieldName = 'RTNNO'
      Size = 12
    end
    object QRttrnQTYRTN: TFloatField
      FieldName = 'QTYRTN'
    end
    object QRttrnUPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '#,##0.00'
    end
    object QRttrnNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object QRttrnPARTNO: TStringField
      FieldName = 'PARTNO'
    end
    object QRttrnDESC1: TStringField
      FieldName = 'DESC1'
      Size = 45
    end
  end
end
