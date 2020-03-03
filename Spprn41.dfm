object FSpprn41: TFSpprn41
  Left = 65
  Top = 158
  Width = 652
  Height = 331
  HorzScrollBar.Position = 8
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 296
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3626#3656#3591#3626#3636#3609#3588#3657#3634' Invoice '#3648#3626#3619#3636#3617
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
  object QPnsp21: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.JOBNO,A.INVNO,A.INVDATE,A.CUSCOD,A.STRNO, '
      'A.TAXNO,A.TAXDT,A.BALANE,A.VATAMT,A.NETPRC,A.LOCAT,'
      'C.SNAM,C.NAME1,C.NAME2,C.ADDR1,C.ADDR2,C.TUMB,C.AUMP, '
      'C.PROV,C.ZIP,C.TELP,C.FAX,A.LOCAT,B.PAYDESC '
      'FROM OTHINVOI A,ARMAST C,PAYTYP B')
    Left = 156
    Top = 12
  end
  object QPnsp22: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * FROM OTHTRAN')
    Left = 192
    Top = 16
    object QPnsp22INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QPnsp22JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QPnsp22LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QPnsp22CODE: TStringField
      FieldName = 'CODE'
    end
    object QPnsp22DESC1: TStringField
      FieldName = 'DESC1'
      Size = 55
    end
    object QPnsp22UCOST: TFloatField
      FieldName = 'UCOST'
    end
    object QPnsp22UPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '#,##0.00'
    end
    object QPnsp22QTY: TFloatField
      FieldName = 'QTY'
    end
    object QPnsp22TOTPRIC: TFloatField
      FieldName = 'TOTPRIC'
      DisplayFormat = '#,##0.00'
    end
    object QPnsp22REDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '#,##0.00'
    end
    object QPnsp22NETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '#,##0.00'
    end
    object QPnsp22TOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object QPnsp22SERVCOD: TStringField
      FieldName = 'SERVCOD'
      Size = 5
    end
    object QPnsp22SERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QPnsp22OTTIME: TFloatField
      FieldName = 'OTTIME'
    end
    object QPnsp22JOBTYP: TStringField
      FieldName = 'JOBTYP'
      Size = 5
    end
    object QPnsp22FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QPnsp22USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QPnsp22TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
  end
  object Condpay: TFDTable
    ConnectionName = 'HI_DBMS'
    TableName = 'CONDPAY'
    Left = 120
    Top = 12
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 228
    Top = 16
  end
end
