object FmSTRpA21: TFmSTRpA21
  Left = 130
  Top = 159
  Width = 1050
  Height = 540
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3626#3619#3640#3611#3618#3629#3604#3586#3634#3618#3626#3641#3591#3626#3640#3604
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 14
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from Scondpay')
    Left = 68
    Top = 12
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
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select A.Invloc,A.Partno,A.Year1,Sum(A.Qtyout*A.UPRICE) As tot, '
      'Sum(A.Qtyout*B.Cost) As tot1,Sum(A.Qtyout) As Qty,B.desc1, '
      'b.group1,((Sum(A.Qtyout*B.Cost))/(Sum(A.Qtyout))) as cost, '
      '((Sum(A.Qtyout*A.UPRICE))/(Sum(A.Qtyout))) as Price '
      'from Ic_trans A,Inventor B'
      'Group By A.Invloc,A.Partno,A.Year1,B.Desc1,b.group1')
    Left = 96
    Top = 12
  end
  object QTopsal: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT *  FROM TOPSAL')
    Left = 128
    Top = 12
    object QTopsalLOCAT: TStringField
      FieldName = 'LOCAT'

      Size = 5
    end
    object QTopsalPARTNO: TStringField
      FieldName = 'PARTNO'

    end
    object QTopsalDESC1: TStringField
      FieldName = 'DESC1'

      Size = 50
    end
    object QTopsalGROUP1: TStringField
      FieldName = 'GROUP1'

      Size = 5
    end
    object QTopsalQTY: TFloatField
      FieldName = 'QTY'

    end
    object QTopsalCOST: TFloatField
      FieldName = 'COST'

    end
    object QTopsalTOTCOST: TFloatField
      FieldName = 'TOTCOST'

    end
    object QTopsalPRICE1: TFloatField
      FieldName = 'PRICE1'

    end
    object QTopsalTOTSAL: TFloatField
      FieldName = 'TOTSAL'

    end
  end
end
