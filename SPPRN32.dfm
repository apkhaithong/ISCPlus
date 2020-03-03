object FSpprn32: TFSpprn32
  Left = 76
  Top = 150
  Width = 652
  Height = 398
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 424
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
  object QPnsp21: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.JOBNO,A.INVNO,A.INVDATE,A.CUSCOD,A.STRNO, '
      'A.TAXNO,A.TAXDT,A.BALANE,A.VATAMT,A.NETPRC,A.LOCAT,'
      'C.SNAM,C.NAME1,C.NAME2,C.ADDR1,C.ADDR2,C.TUMB,C.AUMP, '
      'C.PROV,C.ZIP,C.TELP,C.FAX,A.LOCAT,B.PAYDESC '
      'FROM OTHINVOI A,ARMAST C,PAYTYP B')
    Left = 212
    Top = 2
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 176
    Top = 2
  end
  object QPnsp22: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * FROM OTHTRAN')
    Left = 248
    Top = 6
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
  object QJobtrn: TFDQuery
    ConnectionName = 'HI_DBMS'
    UpdateOptions.RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TEMPTB2')
    Left = 284
    Top = 6
    object QJobtrnPARTNO: TStringField
      FieldName = 'PARTNO'
      Size = 12
    end
    object QJobtrnDESC: TStringField
      FieldName = 'DESC'
      Size = 45
    end
    object QJobtrnLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QJobtrnMAX: TFloatField
      FieldName = 'MAX'
    end
    object QJobtrnMIN: TFloatField
      FieldName = 'MIN'
    end
    object QJobtrnONHN: TFloatField
      FieldName = 'ONHN'
    end
    object QJobtrnORDER: TFloatField
      FieldName = 'ORDER'
    end
    object QJobtrnAVGDEMN: TFloatField
      FieldName = 'AVGDEMN'
    end
    object QJobtrnDEMN_1: TFloatField
      FieldName = 'DEMN_1'
      DisplayFormat = '#,##0.00'
    end
    object QJobtrnDEMN_2: TFloatField
      FieldName = 'DEMN_2'
      DisplayFormat = '#,##0.00'
    end
    object QJobtrnDEMN_3: TFloatField
      FieldName = 'DEMN_3'
      DisplayFormat = '#,##0.00'
    end
    object QJobtrnDEMN_4: TFloatField
      FieldName = 'DEMN_4'
    end
    object QJobtrnDEMN_5: TFloatField
      FieldName = 'DEMN_5'
    end
    object QJobtrnDEMN_6: TFloatField
      FieldName = 'DEMN_6'
    end
    object QJobtrnJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QJobtrnMODEL: TStringField
      FieldName = 'MODEL'
      Size = 5
    end
    object QJobtrnGROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
  end
end
