object FmPoPrn11: TFmPoPrn11
  Left = 267
  Top = 324
  Width = 652
  Height = 452
  HorzScrollBar.Position = 259
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 22
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3626#3633#3656#3591#3595#3639#3657#3629#3626#3636#3609#3588#3657#3634
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
  object QPrn10: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.PONO,A.POLOCAT,A.APCODE,A.PODATE,A.COSTFLG,A.REFNO, '
      
        '            A.TRANF,A.NETCOST,A.VATAMT,A.TOTCOST,B.APNAME,B.ADDR' +
        '1,B.PURCODE, '
      '            B.ADDR2,B.APTELP,C.LOCATNAM,D.PODESC '
      '            FROM PO_INVOI A,APMAST B,LOCATMST C,POTYPE D '
      '            WHERE  A.APCODE = B.APCODE AND '
      '            A.POLOCAT = C.LOCATCOD AND A.POTYPE = D.POCODE ')
    Left = 32
    Top = 81
  end
  object QPrn11: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.PONO,A.PARTNO,A.ORDQTY,A.ORDCOST, '
      'A.REDU,A.NETCOST,A.TOTCOST,B.DESC1,A.BO '
      'FROM PO_TRANS A,INVMAST B ')
    Left = 64
    Top = 77
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 95
    Top = 69
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
    object CondpayCOMP_ADR1: TStringField
      FieldName = 'COMP_ADR1'
      Size = 60
    end
    object CondpayCOMP_ADR2: TStringField
      FieldName = 'COMP_ADR2'
      Size = 60
    end
    object CondpayTELP: TStringField
      FieldName = 'TELP'
      Size = 50
    end
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.PONO,A.PARTNO,A.ORDQTY,A.ORDCOST, '
      'A.REDU,A.NETCOST,A.TOTCOST,B.DESC1,A.BO '
      'FROM PO_TRANS A,INVMAST B ')
    Left = 180
    Top = 41
  end
end
