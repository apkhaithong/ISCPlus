object FSpprn42: TFSpprn42
  Left = 306
  Top = 261
  Width = 652
  Height = 393
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 112
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3649#3592#3657#3591#3612#3621#3585#3634#3619#3648#3588#3621#3617
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
      'A.TAXNO,A.TAXDT,A.BALANE,A.VATAMT,A.NETPRC,A.LOCAT,A.FLAG,'
      'C.SNAM,C.NAME1,C.NAME2,C.ADDR1,C.ADDR2,C.TUMB,C.AUMP, '
      'C.PROV,C.ZIP,C.TELP,C.FAX,A.LOCAT,B.PAYDESC '
      'FROM OTHINVOI A,ARMAST C,PAYTYP B')
    Left = 292
    Top = 17
  end
  object QPnsp22: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.INVNO,A.JOBNO,A.DESC1,A.QTY,A.UPRICE,A.REDU,'
      'A.NETPRIC,B.RECVDATE,B.STRNO  FROM OTHTRAN A,JOBORDER B '
      'WHERE A.JOBNO=B.JOBNO ')
    Left = 328
    Top = 17
    object QPnsp22INVNO: TStringField
      FieldName = 'INVNO'

      Size = 12
    end
    object QPnsp22JOBNO: TStringField
      FieldName = 'JOBNO'

      Size = 15
    end
    object QPnsp22DESC1: TStringField
      FieldName = 'DESC1'

      Size = 55
    end
    object QPnsp22QTY: TFloatField
      FieldName = 'QTY'

    end
    object QPnsp22UPRICE: TFloatField
      FieldName = 'UPRICE'

    end
    object QPnsp22REDU: TFloatField
      FieldName = 'REDU'

    end
    object QPnsp22NETPRIC: TFloatField
      FieldName = 'NETPRIC'

    end
    object QPnsp22RECVDATE: TDateField
      FieldName = 'RECVDATE'

    end
    object QPnsp22STRNO: TStringField
      FieldName = 'STRNO'

    end
  end
  object Condpay: TFDTable
    ConnectionName = 'HI_DBMS'
    TableName = 'CONDPAY'
    Left = 260
    Top = 13
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 360
    Top = 13
  end
end
