object FmSTRp41: TFmSTRp41
  Left = 2
  Top = 111
  Width = 1278
  Height = 626
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3626#3605#3655#3629#3585#3585#3634#3619#3660#3604' '#3605#3634#3617#3618#3629#3604#3592#3656#3634#3618#3652#3604#3657
  Color = clSilver
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
  object Query90: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT PARTNO,LOCAT FROM INVENTOR')
    Left = 116
    Top = 8
  end
  object Query92: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT im.cost as qty1,im.desc1 '
      'From Invanls ia,Invmast im')
    Left = 148
    Top = 8
    object Query92QTY1: TFloatField
      FieldName = 'QTY1'
      DisplayFormat = '#,##0.00'
    end
    object Query92DESC1: TStringField
      FieldName = 'DESC1'
      Size = 45
    end
  end
  object Query93: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT LOC,PARTNO,STKDATE,QTYIN,QTYOUT,PKNO,TAXNO, '
      'TAXDATE,NETCOST,AVGCOST,OFFICCOD,CUSCOD,JOBNO,FLAG,CFLAG,'
      ' (QTYIN+QTYOUT)*AVGCOST AS SUM From STKCARD ')
    Left = 180
    Top = 8
    object Query93LOC: TStringField
      FieldName = 'LOC'
      Size = 5
    end
    object Query93PARTNO: TStringField
      FieldName = 'PARTNO'
    end
    object Query93QTYIN: TFloatField
      FieldName = 'QTYIN'
      DisplayFormat = '#,##0.00'
    end
    object Query93QTYOUT: TFloatField
      FieldName = 'QTYOUT'
      DisplayFormat = '#,##0.00'
    end
    object Query93PKNO: TStringField
      FieldName = 'PKNO'
      Size = 12
    end
    object Query93TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object Query93TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object Query93NETCOST: TFloatField
      FieldName = 'NETCOST'
    end
    object Query93AVGCOST: TFloatField
      FieldName = 'AVGCOST'
      DisplayFormat = '#,##0.00'
    end
    object Query93SUM: TFloatField
      FieldName = 'SUM'
      DisplayFormat = '#,##0.00'
    end
    object Query93OFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object Query93CUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object Query93JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object Query93FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object Query93CFLAG: TStringField
      FieldName = 'CFLAG'
      Size = 1
    end
    object Query93STKDATE: TDateField
      FieldName = 'STKDATE'
    end
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 212
    Top = 8
    object CondpayCURYEAR: TStringField
      FieldName = 'CURYEAR'
      Size = 4
    end
    object CondpayCURMONTH: TStringField
      FieldName = 'CURMONTH'
      Size = 2
    end
    object CondpayLICEN_NO: TStringField
      FieldName = 'LICEN_NO'
      Size = 12
    end
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
    object CondpayTAXID: TStringField
      FieldName = 'TAXID'
    end
    object CondpayVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object CondpayTAXNAME: TStringField
      FieldName = 'TAXNAME'
      Size = 60
    end
    object CondpayTAXADDR: TStringField
      FieldName = 'TAXADDR'
      Size = 60
    end
    object CondpaySVRATE: TFloatField
      FieldName = 'SVRATE'
    end
    object CondpayNEXTKILO: TFloatField
      FieldName = 'NEXTKILO'
    end
    object CondpayNEXTDAY: TFloatField
      FieldName = 'NEXTDAY'
    end
    object CondpaySVFLAG: TStringField
      FieldName = 'SVFLAG'
      Size = 1
    end
    object CondpayCAMTYP: TStringField
      FieldName = 'CAMTYP'
      Size = 1
    end
    object CondpayCAMPART: TFloatField
      FieldName = 'CAMPART'
    end
    object CondpayCAMSERV: TFloatField
      FieldName = 'CAMSERV'
    end
    object CondpayCAMDAT1: TDateField
      FieldName = 'CAMDAT1'
    end
    object CondpayCAMDAT2: TDateField
      FieldName = 'CAMDAT2'
    end
  end
  object SoQuery90: TDataSource
    DataSet = Query90
    Left = 244
    Top = 8
  end
end
