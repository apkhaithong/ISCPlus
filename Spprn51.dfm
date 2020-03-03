object FSpprn51: TFSpprn51
  Left = 38
  Top = 254
  Width = 748
  Height = 441
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 281
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3648#3626#3619#3655#3592#3619#3633#3610#3648#3591#3636#3609
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
  object QJobord2: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT A.JOBNO,A.BILLNO,A.BILLDT,A.CUSCODE,C.SNAM,A.DISAMT, A.NE' +
        'TTOT,'
      
        '           C.NAME1,C.NAME2,C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,' +
        ' '
      
        '           C.ZIP,C.TELP,C.FAX,A.LOCAT,B.BALANCE,B.VAT,B.TOTTAX, ' +
        'B.TEMPTAX,'
      
        '           A.IDCARD,A.IDEXPDT FROM  ARPAYTRN A, ARMAST C, AR_SER' +
        'V  B  '
      
        '           WHERE A.BILLNO='#39'1BL-99080005 '#39'  AND  A.CUSCODE=C.CUSC' +
        'OD '
      '          AND A.BILLNO=B.TAXNO')
    Left = 143
    Top = 21
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 43
    Top = 25
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from temptb2')
    Left = 75
    Top = 25
  end
  object QJobtrn: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'Select A.Jobno,A.Partno,'#39#39' AS desc1,A.QTY,A.UPRICE,A.TOTPRC AS T' +
        'OT,REDU1 AS REDU,Claim,'#39'A'#39' as Ord '
      '             From PartTran A,Inventor B ')
    Left = 111
    Top = 25
  end
  object Condpay: TFDTable
    ConnectionName = 'HI_DBMS'
    TableName = 'CONDPAY'
    Left = 11
    Top = 25
  end
end
