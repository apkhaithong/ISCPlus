﻿object FPrnquo12: TFPrnquo12
  Left = 38
  Top = 109
  Width = 867
  Height = 496
  HorzScrollBar.Position = 3
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 122
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3614#3636#3617#3614#3660#3651#3610#3611#3619#3632#3648#3617#3636#3609#3619#3634#3588#3634' '
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
  object Condpay: TFDTable
    ConnectionName = 'SV_DBMS'
    TableName = 'CONDPAY'
    Left = 20
    Top = 19
  end
  object QQainv: TFDQuery
    ConnectionName = 'SV_DBMS'
    SQL.Strings = (
      'SELECT A.Quotno,A.Qdate,A.Strno,A.TOTALPRC,A.INSURTYP,A.Memo1, '
      
        '             A.TotalVat,A.TotalAll,B.Regno,B.Engno, B.Type,B.Mdl' +
        'cod,'
      'A.Policyno,A.Informno,A.Accidate,A.Photo,'
      
        '             A.Claimno,A.Excepval,A.Contact,A.RKilo,A.RECVDT,A.R' +
        'ETNDT,'
      
        'B.BaaB,B.Color,B.CC,B.Cuscod,C.Snam,C.Name1,C.Name2,C.Addr1,C.Ad' +
        'dr2, '
      '             C.Tumb,C.Aump,C.Prov,C.Zip,C.Telp,C.Fax '
      
        'FROM Qa_invoi A,Svmast B,Armast C  where (A.strno=B.strno) and (' +
        'B.Cuscod=C.cuscod)')
    Left = 46
    Top = 19
  end
  object QQatrn: TFDQuery
    ConnectionName = 'SV_DBMS'
    SQL.Strings = (
      'SELECT * FROM Qa_Tran')
    Left = 74
    Top = 18
    object QQatrnQUOTNO: TStringField
      FieldName = 'QUOTNO'
      Size = 12
    end
    object QQatrnDESC1: TStringField
      FieldName = 'DESC1'
      Size = 60
    end
    object QQatrnQTY: TFloatField
      FieldName = 'QTY'
    end
    object QQatrnUPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '#,##0.00'
    end
    object QQatrnREDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '#,##0.00'
    end
    object QQatrnNETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '#,##0.00'
    end
    object QQatrnTOTALPRC: TFloatField
      FieldName = 'TOTALPRC'
      DisplayFormat = '#,##0.00'
    end
    object QQatrnUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QQatrnTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QQatrnPARTNO: TStringField
      FieldName = 'PARTNO'
    end
  end
  object Query1: TFDQuery
    ConnectionName = 'SV_DBMS'
    Left = 102
    Top = 17
  end
end
