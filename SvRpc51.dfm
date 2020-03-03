object FSvrpc51: TFSvrpc51
  Left = 0
  Top = 158
  Width = 808
  Height = 580
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3585#3634#3619#3618#3585#3648#3621#3636#3585' Invoice '#3648#3626#3619#3636#3617
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
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
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
  object QArmast: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = SoQueryC50
    SQL.Strings = (
      'SELECT SNAM,NAME1,NAME2 FROM ARMAST WHERE CUSCOD=:CUSCOD')
    Left = 236
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CUSCOD'
        ParamType = ptUnknown
      end>
  end
  object QueryC50: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.RECVLOC AS LOC,A.RECVNO AS INV,A.RECVDT AS DAT,'
      'A.APCODE AS AP,A.NETAMT AS NET,A.VATAMT AS VAT,A.TOTCOST AS TOT,'
      'A.CANCELID AS IDC,A.CANDAT AS CDT,B.USERNAME,A.FLAG'
      'FROM CANRCHD A,PASSWRD B')
    Left = 108
    Top = 12
  end
  object SoQueryC50: TDataSource
    DataSet = QueryC50
    Left = 164
    Top = 12
  end
  object QUsernam: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = SoQueryC50
    SQL.Strings = (
      'SELECT USERNAME FROM PASSWRD WHERE USERID=:CANCELID')
    Left = 272
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CANCELID'
        ParamType = ptUnknown
      end>
  end
end
