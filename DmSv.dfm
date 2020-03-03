object Dm_SV: TDm_SV
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 693
  Width = 637
  object QQa_invoi1: TFDQuery
    BeforePost = QQa_invoi1BeforePost
    AfterPost = QQa_invoi1AfterPost
    AfterCancel = QQa_invoi1AfterCancel
    BeforeDelete = QQa_invoi1BeforeDelete
    AfterDelete = QQa_invoi1AfterPost
    OnCalcFields = QQa_invoi1CalcFields
    OnNewRecord = QQa_invoi1NewRecord
    CachedUpdates = True
    OnUpdateError = QQa_invoi1UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT *  FROM  QA_INVOI')
    Left = 26
    Top = 7
    object QQa_invoi1QUOTNO: TStringField
      FieldName = 'QUOTNO'
      Size = 12
    end
    object QQa_invoi1QDATE: TDateField
      FieldName = 'QDATE'
      OnValidate = QQa_invoi1QDATEValidate
    end
    object QQa_invoi1STRNO: TStringField
      FieldName = 'STRNO'
      OnValidate = QQa_invoi1STRNOValidate
      FixedChar = True
    end
    object QQa_invoi1REGNO: TStringField
      FieldName = 'REGNO'
      Size = 15
    end
    object QQa_invoi1ENGNO: TStringField
      FieldName = 'ENGNO'
    end
    object QQa_invoi1ISSUBY: TStringField
      FieldName = 'ISSUBY'
      Size = 5
    end
    object QQa_invoi1INSURTYP: TStringField
      FieldName = 'INSURTYP'
      Size = 1
    end
    object QQa_invoi1LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QQa_invoi1LOCATValidate
      Size = 5
    end
    object QQa_invoi1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QQa_invoi1RECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object QQa_invoi1RETNDT: TDateField
      FieldName = 'RETNDT'
    end
    object QQa_invoi1PHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 1
    end
    object QQa_invoi1GCODE: TStringField
      FieldName = 'GCODE'
      Size = 10
    end
    object QQa_invoi1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QQa_invoi1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QQa_invoi1RKILO: TFloatField
      FieldName = 'RKILO'
    end
    object QQa_invoi1JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QQa_invoi1STATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QQa_invoi1POLICYNO: TStringField
      FieldName = 'POLICYNO'
      OnValidate = QQa_invoi1POLICYNOValidate
      Size = 30
    end
    object QQa_invoi1INFORMNO: TStringField
      DisplayWidth = 30
      FieldName = 'INFORMNO'
      Size = 30
    end
    object QQa_invoi1CLAIMNO: TStringField
      FieldName = 'CLAIMNO'
      OnValidate = QQa_invoi1CLAIMNOValidate
      Size = 30
    end
    object QQa_invoi1EXCEPVAL: TFloatField
      FieldName = 'EXCEPVAL'
    end
    object QQa_invoi1CONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 40
    end
    object QQa_invoi1MEMO2: TMemoField
      FieldName = 'MEMO2'
      BlobType = ftMemo
      Size = 1
    end
    object QQa_invoi1ACCIDATE: TDateField
      FieldName = 'ACCIDATE'
    end
    object QQa_invoi1Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QQa_invoi1VATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object QQa_invoi1VATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object QQa_invoi1REPCOD: TStringField
      FieldName = 'REPCOD'
      Size = 5
    end
    object QQa_invoi1REPTYPE: TStringField
      FieldName = 'REPTYPE'
      Size = 5
    end
    object QQa_invoi1ARCUSCOD: TStringField
      FieldName = 'ARCUSCOD'
      FixedChar = True
      Size = 12
    end
    object QQa_invoi1TIME_NO: TStringField
      FieldName = 'TIME_NO'
      FixedChar = True
      Size = 1
    end
    object QQa_invoi1TYPEINSUR: TStringField
      FieldName = 'TYPEINSUR'
      FixedChar = True
      Size = 12
    end
    object QQa_invoi1INSURSERV: TStringField
      FieldName = 'INSURSERV'
      FixedChar = True
      Size = 12
    end
    object QQa_invoi1COSTINSUR: TFloatField
      FieldName = 'COSTINSUR'
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTSERV: TFloatField
      FieldName = 'TOTSERV'
      OnValidate = QQa_invoi1TOTSERVValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTPART: TFloatField
      FieldName = 'TOTPART'
      OnValidate = QQa_invoi1TOTPARTValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1REDUSERV: TFloatField
      FieldName = 'REDUSERV'
      OnValidate = QQa_invoi1REDUSERVValidate
    end
    object QQa_invoi1REDUPART: TFloatField
      FieldName = 'REDUPART'
      OnValidate = QQa_invoi1REDUPARTValidate
    end
    object QQa_invoi1TOTOTH: TFloatField
      FieldName = 'TOTOTH'
      OnValidate = QQa_invoi1TOTOTHValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTREDU: TFloatField
      FieldName = 'TOTREDU'
      OnValidate = QQa_invoi1TOTREDUValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTREDUOTH: TFloatField
      FieldName = 'TOTREDUOTH'
      OnValidate = QQa_invoi1TOTREDUOTHValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTALPRC: TFloatField
      FieldName = 'TOTALPRC'
      DisplayFormat = '#,##0.00'
    end
    object QQa_invoi1TOTALVAT: TFloatField
      FieldName = 'TOTALVAT'
      DisplayFormat = '#,##0.00'
    end
    object QQa_invoi1TOTALALL: TFloatField
      FieldName = 'TOTALALL'
      OnValidate = QQa_invoi1TOTALALLValidate
      DisplayFormat = '#,##0.00'
    end
    object QQa_invoi1TOTSERV_I: TFloatField
      FieldName = 'TOTSERV_I'
      OnValidate = QQa_invoi1TOTSERV_IValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTPART_I: TFloatField
      FieldName = 'TOTPART_I'
      OnValidate = QQa_invoi1TOTPART_IValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTOTH_I: TFloatField
      FieldName = 'TOTOTH_I'
      OnValidate = QQa_invoi1TOTOTH_IValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTREDU_I: TFloatField
      FieldName = 'TOTREDU_I'
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTREDUOTH_I: TFloatField
      FieldName = 'TOTREDUOTH_I'
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTALPRC_I: TFloatField
      FieldName = 'TOTALPRC_I'
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTALVAT_I: TFloatField
      FieldName = 'TOTALVAT_I'
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTALALL_I: TFloatField
      FieldName = 'TOTALALL_I'
      DisplayFormat = '##,##0.00'
    end
    object QQa_invoi1TOTDIF: TFloatField
      FieldName = 'TOTDIF'
      DisplayFormat = '##,##0.00'
    end
  end
  object SoQa_invoi1: TDataSource
    DataSet = QQa_invoi1
    Left = 86
    Top = 7
  end
  object QQa_tran1: TFDQuery
    AfterPost = QQa_tran1AfterPost
    BeforeDelete = QQa_tran1BeforeDelete
    AfterDelete = QQa_tran1AfterPost
    OnNewRecord = QQa_tran1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM   QA_TRAN')
    Left = 26
    Top = 52
    object QQa_tran1QUOTNO: TStringField
      FieldName = 'QUOTNO'
      FixedChar = True
      Size = 12
    end
    object QQa_tran1PARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object QQa_tran1DESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 60
    end
    object QQa_tran1UPRICE: TFloatField
      FieldName = 'UPRICE'
      OnValidate = QQa_tran1UPRICEValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_tran1QTY: TFloatField
      FieldName = 'QTY'
      OnValidate = QQa_tran1QTYValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_tran1REDU: TFloatField
      FieldName = 'REDU'
      OnValidate = QQa_tran1REDUValidate
      DisplayFormat = '##,##0.00'
    end
    object QQa_tran1NETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QQa_tran1TOTALPRC: TFloatField
      FieldName = 'TOTALPRC'
      DisplayFormat = '##,##0.00'
    end
    object QQa_tran1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QQa_tran1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QQa_tran1TRNFLG: TStringField
      FieldName = 'TRNFLG'
      FixedChar = True
      Size = 1
    end
    object QQa_tran1REPAIRTYP: TStringField
      FieldName = 'REPAIRTYP'
      FixedChar = True
      Size = 1
    end
    object QQa_tran1INSAPPRVAMT: TFloatField
      FieldName = 'INSAPPRVAMT'
      DisplayFormat = '##,##0.00'
    end
  end
  object SoQa_tran1: TDataSource
    DataSet = QQa_tran1
    OnDataChange = SoQa_tran1DataChange
    Left = 86
    Top = 52
  end
  object QSvmast: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM  SVMAST')
    Left = 149
    Top = 52
  end
  object SoSvmast: TDataSource
    DataSet = QSvmast
    Left = 212
    Top = 52
  end
  object QLastno: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      'SELECT  *  FROM  SLASTNO')
    Left = 507
    Top = 59
  end
  object QLocat: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 391
    Top = 98
  end
  object QSvstock: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 271
    Top = 98
  end
  object SoSvstock: TDataSource
    DataSet = QSvstock
    Left = 330
    Top = 100
  end
  object QJoborder1: TFDQuery
    BeforePost = QJoborder1BeforePost
    AfterPost = QJoborder1AfterPost
    AfterCancel = QJoborder1AfterCancel
    BeforeDelete = QJoborder1BeforeDelete
    OnCalcFields = QJoborder1CalcFields
    OnNewRecord = QJoborder1NewRecord
    CachedUpdates = True
    OnUpdateError = QJoborder1UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  JOBORDER')
    Left = 26
    Top = 96
    object QJoborder1JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QJoborder1LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QJoborder1LOCATValidate
      Size = 5
    end
    object QJoborder1STRNO: TStringField
      FieldName = 'STRNO'
      OnValidate = QJoborder1STRNOValidate
    end
    object QJoborder1CUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QJoborder1MDLCOD: TStringField
      DisplayWidth = 20
      FieldName = 'MDLCOD'
    end
    object QJoborder1RUNNO: TStringField
      FieldName = 'RUNNO'
      Size = 5
    end
    object QJoborder1RECVDATE: TDateField
      FieldName = 'RECVDATE'
      OnValidate = QJoborder1RECVDATEValidate
    end
    object QJoborder1RECVTIME: TStringField
      FieldName = 'RECVTIME'
      Size = 8
    end
    object QJoborder1FINSDATE: TDateField
      FieldName = 'FINSDATE'
    end
    object QJoborder1FINSTIME: TStringField
      FieldName = 'FINSTIME'
      Size = 8
    end
    object QJoborder1RFINSHDT: TDateField
      FieldName = 'RFINSHDT'
    end
    object QJoborder1RFINSHTM: TStringField
      FieldName = 'RFINSHTM'
      Size = 8
    end
    object QJoborder1RLKILOMT: TFloatField
      FieldName = 'RLKILOMT'
      OnValidate = QJoborder1RLKILOMTValidate
    end
    object QJoborder1KILOMT: TFloatField
      FieldName = 'KILOMT'
    end
    object QJoborder1RECVCOD: TStringField
      FieldName = 'RECVCOD'
      OnValidate = QJoborder1RECVCODValidate
      Size = 5
    end
    object QJoborder1CUST_IN: TStringField
      FieldName = 'CUST_IN'
      Size = 45
    end
    object QJoborder1PAYCOD: TStringField
      FieldName = 'PAYCOD'
      Size = 5
    end
    object QJoborder1CUST_OUT: TStringField
      FieldName = 'CUST_OUT'
      Size = 45
    end
    object QJoborder1APP_DATE: TDateField
      FieldName = 'APP_DATE'
    end
    object QJoborder1APP_MILE: TFloatField
      FieldName = 'APP_MILE'
    end
    object QJoborder1REPTYPE: TStringField
      FieldName = 'REPTYPE'
      OnValidate = QJoborder1REPTYPEValidate
      Size = 5
    end
    object QJoborder1GROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 10
    end
    object QJoborder1REPBAY: TStringField
      FieldName = 'REPBAY'
      Size = 5
    end
    object QJoborder1PAYDATE: TDateField
      FieldName = 'PAYDATE'
    end
    object QJoborder1INSPECT: TStringField
      FieldName = 'INSPECT'
      Size = 5
    end
    object QJoborder1REPCOD: TStringField
      FieldName = 'REPCOD'
      Size = 5
    end
    object QJoborder1VATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object QJoborder1VAT: TFloatField
      FieldName = 'VAT'
    end
    object QJoborder1PARTDISC: TFloatField
      FieldName = 'PARTDISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1PARTNET: TFloatField
      FieldName = 'PARTNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1PARTVAT: TFloatField
      FieldName = 'PARTVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1PARTTOT: TFloatField
      FieldName = 'PARTTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OILDISC: TFloatField
      FieldName = 'OILDISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OILNET: TFloatField
      FieldName = 'OILNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OILVAT: TFloatField
      FieldName = 'OILVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OILTOT: TFloatField
      FieldName = 'OILTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1SERVDISC: TFloatField
      FieldName = 'SERVDISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1SERVNET: TFloatField
      FieldName = 'SERVNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1SERVVAT: TFloatField
      FieldName = 'SERVVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1SERVTOT: TFloatField
      FieldName = 'SERVTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OUTJDISC: TFloatField
      FieldName = 'OUTJDISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OUTJNET: TFloatField
      FieldName = 'OUTJNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OUTJVAT: TFloatField
      FieldName = 'OUTJVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OUTJTOT: TFloatField
      FieldName = 'OUTJTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1COLORDISC: TFloatField
      FieldName = 'COLORDISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1COLORNET: TFloatField
      FieldName = 'COLORNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1COLORVAT: TFloatField
      FieldName = 'COLORVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1COLORTOT: TFloatField
      FieldName = 'COLORTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OTHERDISC: TFloatField
      FieldName = 'OTHERDISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OTHERNET: TFloatField
      FieldName = 'OTHERNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OTHERVAT: TFloatField
      FieldName = 'OTHERVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1OTHERTOT: TFloatField
      FieldName = 'OTHERTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1TSV_DISC: TFloatField
      FieldName = 'TSV_DISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1TSV_NET: TFloatField
      FieldName = 'TSV_NET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1TSV_VAT: TFloatField
      FieldName = 'TSV_VAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1TSV_TOT: TFloatField
      FieldName = 'TSV_TOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder1FLAGCAN: TStringField
      FieldName = 'FLAGCAN'
      Size = 1
    end
    object QJoborder1CANDATE: TDateField
      FieldName = 'CANDATE'
    end
    object QJoborder1STATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QJoborder1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QJoborder1SVFLAG: TStringField
      FieldName = 'SVFLAG'
      Size = 1
    end
    object QJoborder1TOPNO: TStringField
      FieldName = 'TOPNO'
      Size = 5
    end
    object QJoborder1Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QJoborder1PREORDNO: TStringField
      FieldName = 'PREORDNO'
      Size = 15
    end
    object QJoborder1PTAXNO: TStringField
      FieldName = 'PTAXNO'
      Size = 12
    end
    object QJoborder1STAXNO: TStringField
      FieldName = 'STAXNO'
      Size = 12
    end
    object QJoborder1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QJoborder1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QJoborder1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QJoborder1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
      LookupDataSet = Condpay
    end
    object QJoborder1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QJoborder1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QJoborder1BILDATE: TDateField
      FieldName = 'BILDATE'
    end
    object QJoborder1BILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
    end
    object QJoborder1ADDNET: TFloatField
      FieldName = 'ADDNET'
    end
    object QJoborder1ADDVAT: TFloatField
      FieldName = 'ADDVAT'
    end
    object QJoborder1ADDTOT: TFloatField
      FieldName = 'ADDTOT'
    end
    object QJoborder1PARTCOST: TFloatField
      FieldName = 'PARTCOST'
    end
    object QJoborder1CAMPNO: TStringField
      FieldName = 'CAMPNO'
      OnValidate = QJoborder1CAMPNOValidate
      Size = 5
    end
    object QJoborder1DISCPT: TFloatField
      FieldName = 'DISCPT'
    end
    object QJoborder1DISCSV: TFloatField
      FieldName = 'DISCSV'
    end
    object QJoborder1INV1_PT: TFloatField
      FieldName = 'INV1_PT'
    end
    object QJoborder1INV1_SV: TFloatField
      FieldName = 'INV1_SV'
    end
    object QJoborder1INV2_PT: TFloatField
      FieldName = 'INV2_PT'
    end
    object QJoborder1INV2_SV: TFloatField
      FieldName = 'INV2_SV'
    end
    object QJoborder1DISCOL: TFloatField
      FieldName = 'DISCOL'
    end
    object QJoborder1DISCCO: TFloatField
      FieldName = 'DISCCO'
    end
    object QJoborder1OUTADD: TFloatField
      FieldName = 'OUTADD'
    end
    object QJoborder1OILCOST: TFloatField
      FieldName = 'OILCOST'
    end
    object QJoborder1FRRATE: TFloatField
      FieldName = 'FRRATE'
      DisplayFormat = '##,##0.00'
    end
    object QJoborder1FRCODE: TStringField
      FieldName = 'FRCODE'
      Size = 5
    end
    object QJoborder1REFNO: TFloatField
      FieldName = 'REFNO'
    end
    object QJoborder1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QJoborder1STATCOD: TStringField
      FieldName = 'STATCOD'
      Size = 2
    end
    object QJoborder1ISCODE: TStringField
      FieldName = 'ISCODE'
      FixedChar = True
      Size = 5
    end
    object QJoborder1CUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
    object QJoborder1RTPART: TStringField
      FieldName = 'RTPART'
      FixedChar = True
      Size = 1
    end
    object QJoborder1CLCAR: TStringField
      FieldName = 'CLCAR'
      FixedChar = True
      Size = 1
    end
    object QJoborder1REDUAMT: TFloatField
      FieldName = 'REDUAMT'
    end
    object QJoborder1SV_TIME: TFloatField
      FieldName = 'SV_TIME'
    end
    object QJoborder1OT_TIME: TFloatField
      FieldName = 'OT_TIME'
    end
    object QJoborder1OUTJOBNO: TStringField
      FieldName = 'OUTJOBNO'
      FixedChar = True
      Size = 12
    end
    object QJoborder1CALDAY: TFloatField
      FieldName = 'CALDAY'
    end
    object QJoborder1WAITER: TStringField
      FieldName = 'WAITER'
      FixedChar = True
      Size = 1
    end
    object QJoborder1SENDMK: TStringField
      FieldName = 'SENDMK'
      FixedChar = True
      Size = 1
    end
    object QJoborder1REFJOBNO: TStringField
      FieldName = 'REFJOBNO'
      FixedChar = True
      Size = 12
    end
    object QJoborder1CALDATE: TDateField
      FieldName = 'CALDATE'
    end
    object QJoborder1FLCALSV: TStringField
      FieldName = 'FLCALSV'
      FixedChar = True
      Size = 1
    end
    object QJoborder1NPEPAREPT: TFloatField
      FieldName = 'NPEPAREPT'
    end
    object QJoborder1VPEPAREPT: TFloatField
      FieldName = 'VPEPAREPT'
    end
    object QJoborder1TPEPAREPT: TFloatField
      FieldName = 'TPEPAREPT'
    end
    object QJoborder1DPEPAREPT: TFloatField
      FieldName = 'DPEPAREPT'
    end
    object QJoborder1WAITPT: TStringField
      FieldName = 'WAITPT'
      FixedChar = True
      Size = 1
    end
    object QJoborder1JOBFW: TStringField
      FieldName = 'JOBFW'
      FixedChar = True
      Size = 1
    end
    object QJoborder1CARWR: TStringField
      FieldName = 'CARWR'
      FixedChar = True
      Size = 1
    end
    object QJoborder1PKTIME: TStringField
      FieldName = 'PKTIME'
      FixedChar = True
      Size = 5
    end
    object QJoborder1TELTAX: TIntegerField
      FieldName = 'TELTAX'
    end
    object QJoborder1SENDRIP: TIntegerField
      FieldName = 'SENDRIP'
    end
    object QJoborder1STARTTIME: TStringField
      FieldName = 'STARTTIME'
      FixedChar = True
      Size = 5
    end
  end
  object SoJoborder1: TDataSource
    DataSet = QJoborder1
    Left = 86
    Top = 98
  end
  object SoOrdrep1: TDataSource
    DataSet = QOrdrep1
    Left = 212
    Top = 98
  end
  object QChecklis: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 151
    Top = 234
  end
  object QModelmst: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SETMODEL')
    Left = 149
    Top = 7
  end
  object QOthinvoi1: TFDQuery
    BeforePost = QOthinvoi1BeforePost
    AfterPost = QOthinvoi1AfterPost
    AfterCancel = QOthinvoi1AfterCancel
    OnCalcFields = QOthinvoi1CalcFields
    OnNewRecord = QOthinvoi1NewRecord
    CachedUpdates = True
    OnUpdateError = QOthinvoi1UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM OTHINVOI')
    Left = 271
    Top = 52
    object QOthinvoi1INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QOthinvoi1INVDATE: TDateField
      FieldName = 'INVDATE'
      OnValidate = QOthinvoi1INVDATEValidate
    end
    object QOthinvoi1JOBNO: TStringField
      FieldName = 'JOBNO'
      OnValidate = QOthinvoi1JOBNOValidate
      Size = 15
    end
    object QOthinvoi1LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QOthinvoi1LOCATValidate
      Size = 5
    end
    object QOthinvoi1JOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QOthinvoi1STRNO: TStringField
      FieldName = 'STRNO'
    end
    object QOthinvoi1CUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = QOthinvoi1CUSCODValidate
      Size = 12
    end
    object QOthinvoi1TOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvoi1DSCT: TFloatField
      FieldName = 'DSCT'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvoi1DSCAMT: TFloatField
      FieldName = 'DSCAMT'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvoi1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QOthinvoi1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOthinvoi1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QOthinvoi1TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QOthinvoi1TAXDT: TDateField
      FieldName = 'TAXDT'
      OnValidate = QOthinvoi1TAXDTValidate
    end
    object QOthinvoi1PAID: TFloatField
      FieldName = 'PAID'
      OnValidate = QOthinvoi1PAIDValidate
    end
    object QOthinvoi1DTPAID: TDateField
      FieldName = 'DTPAID'
    end
    object QOthinvoi1REDUAFT: TFloatField
      FieldName = 'REDUAFT'
    end
    object QOthinvoi1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QOthinvoi1PAYTYPE: TStringField
      FieldName = 'PAYTYPE'
      Size = 2
    end
    object QOthinvoi1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QOthinvoi1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QOthinvoi1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QOthinvoi1Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QOthinvoi1PTYPE: TStringField
      FieldName = 'PTYPE'
      Size = 1
    end
    object QOthinvoi1DUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QOthinvoi1VATTYPE: TStringField
      FieldName = 'VATTYPE'
      LookupDataSet = Condpay
      Size = 1
    end
    object QOthinvoi1BILLNO: TStringField
      FieldName = 'BILLNO'
      OnValidate = QOthinvoi1BILLNOValidate
      Size = 12
    end
    object QOthinvoi1BILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object QOthinvoi1ISSUTAX: TStringField
      FieldName = 'ISSUTAX'
      Size = 1
    end
    object QOthinvoi1CLAIMNO: TStringField
      FieldName = 'CLAIMNO'
      Size = 12
    end
    object QOthinvoi1CLAIMTYP: TStringField
      FieldName = 'CLAIMTYP'
      Size = 1
    end
    object QOthinvoi1MARK: TStringField
      FieldName = 'MARK'
      FixedChar = True
      Size = 1
    end
    object QOthinvoi1POSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object QOthinvoi1BALANE: TFloatField
      FieldName = 'BALANE'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvoi1VAT: TFloatField
      FieldName = 'VAT'
      OnValidate = QOthinvoi1VATValidate
      DisplayFormat = '#,##0.00'
    end
    object QOthinvoi1VATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvoi1NETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
  end
  object SoOthinvoi1: TDataSource
    DataSet = QOthinvoi1
    Left = 330
    Top = 54
  end
  object QOthtran1: TFDQuery
    AfterPost = QOthtran1AfterPost
    AfterDelete = QOthtran1AfterPost
    OnNewRecord = QOthtran1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  * FROM  OTHTRAN')
    Left = 271
    Top = 7
    object QOthtran1INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QOthtran1INVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object QOthtran1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QOthtran1LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QOthtran1QTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '##,##0.00'
    end
    object QOthtran1REDU: TFloatField
      FieldName = 'REDU'
      OnValidate = QOthtran1REDUValidate
      DisplayFormat = '##,##0'
    end
    object QOthtran1JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QOthtran1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QOthtran1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOthtran1DESC1: TStringField
      FieldName = 'DESC1'
      Size = 55
    end
    object QOthtran1UCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '##,##0.00'
    end
    object QOthtran1UPRICE: TFloatField
      FieldName = 'UPRICE'
      OnValidate = QOthtran1UPRICEValidate
      DisplayFormat = '##,##0.00'
    end
    object QOthtran1TOTPRIC: TFloatField
      FieldName = 'TOTPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QOthtran1NETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QOthtran1TOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '##,##0.00'
    end
    object QOthtran1SERVCOD: TStringField
      FieldName = 'SERVCOD'
      Size = 8
    end
    object QOthtran1OTTIME: TFloatField
      FieldName = 'OTTIME'
    end
    object QOthtran1JOBTYP: TStringField
      FieldName = 'JOBTYP'
      Size = 5
    end
    object QOthtran1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QOthtran1CAMPNO: TStringField
      FieldName = 'CAMPNO'
      Size = 5
    end
    object QOthtran1CLAIM: TStringField
      FieldName = 'CLAIM'
      Size = 1
    end
    object QOthtran1TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QOthtran1TAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QOthtran1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QOthtran1SERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QOthtran1CODE: TStringField
      FieldName = 'CODE'
      OnValidate = QOthtran1CODEValidate
    end
  end
  object SoOthtran1: TDataSource
    DataSet = QOthtran1
    OnDataChange = SoOthtran1DataChange
    Left = 330
    Top = 7
  end
  object QOiltran1: TFDQuery
    AfterOpen = QOiltran1AfterOpen
    BeforeClose = QOiltran1BeforeClose
    AfterPost = QOiltran1AfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM  PARTTRAN WHERE GROUP1='#39'OL'#39)
    Left = 26
    Top = 233
    object QOiltran1JOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QOiltran1PARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object QOiltran1PKNO: TStringField
      FieldName = 'PKNO'
      FixedChar = True
      Size = 12
    end
    object QOiltran1LOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QOiltran1JOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QOiltran1PKDATE: TDateField
      FieldName = 'PKDATE'
    end
    object QOiltran1UPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1QTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1NETFL: TStringField
      FieldName = 'NETFL'
      FixedChar = True
      Size = 1
    end
    object QOiltran1REDU1: TFloatField
      FieldName = 'REDU1'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1REDU2: TFloatField
      FieldName = 'REDU2'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1REDU3: TFloatField
      FieldName = 'REDU3'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1NETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1TOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1SERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object QOiltran1FRT: TFloatField
      FieldName = 'FRT'
    end
    object QOiltran1SERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QOiltran1SVCOLOR: TStringField
      FieldName = 'SVCOLOR'
      FixedChar = True
      Size = 1
    end
    object QOiltran1CLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object QOiltran1SERIALNO: TStringField
      FieldName = 'SERIALNO'
      FixedChar = True
    end
    object QOiltran1TAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QOiltran1YEAR1: TStringField
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object QOiltran1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QOiltran1AVGCOST: TFloatField
      FieldName = 'AVGCOST'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QOiltran1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOiltran1INV1_PT: TFloatField
      FieldName = 'INV1_PT'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1INV2_PT: TFloatField
      FieldName = 'INV2_PT'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1GROUP1: TStringField
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 5
    end
    object QOiltran1BILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object QOiltran1DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '##,##0.00'
    end
    object QOiltran1FREE: TStringField
      FieldName = 'FREE'
      FixedChar = True
      Size = 1
    end
    object QOiltran1CAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object QOiltran1CAMFLG: TStringField
      FieldName = 'CAMFLG'
      FixedChar = True
      Size = 1
    end
    object QOiltran1CUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QOiltran1CLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object QOiltran1CLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object QOiltran1CLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
    object QOiltran1CUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
  end
  object QColrtran1: TFDQuery
    AfterPost = QColrtran1AfterPost
    AfterDelete = QColrtran1AfterPost
    OnNewRecord = QColrtran1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM COLRTRAN')
    Left = 24
    Top = 328
    object QColrtran1JOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QColrtran1CODE: TStringField
      FieldName = 'CODE'
      FixedChar = True
      Size = 15
    end
    object QColrtran1LOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QColrtran1JOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QColrtran1FRT: TFloatField
      FieldName = 'FRT'
      DisplayFormat = '##,##0.00'
    end
    object QColrtran1PRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '##,##0.00'
    end
    object QColrtran1REDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '##,##0.00'
    end
    object QColrtran1NETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QColrtran1SERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object QColrtran1SERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QColrtran1OTTIME: TFloatField
      FieldName = 'OTTIME'
    end
    object QColrtran1JOBTYP: TStringField
      FieldName = 'JOBTYP'
      FixedChar = True
      Size = 5
    end
    object QColrtran1CLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object QColrtran1MDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object QColrtran1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QColrtran1DESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 70
    end
    object QColrtran1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QColrtran1TAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QColrtran1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QColrtran1DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '##,##0.00'
    end
    object QColrtran1WARNO: TStringField
      FieldName = 'WARNO'
      FixedChar = True
      Size = 12
    end
    object QColrtran1BILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object QColrtran1UCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '##,##0.00'
    end
    object QColrtran1TOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '##,##0.00'
    end
    object QColrtran1CUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QColrtran1CLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object QColrtran1CLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object QColrtran1CLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
  end
  object QOuttran1: TFDQuery
    AfterPost = QOuttran1AfterPost
    AfterDelete = QOuttran1AfterPost
    OnNewRecord = QOuttran1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM OUTTRAN')
    Left = 28
    Top = 279
    object QOuttran1JOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QOuttran1CODE: TStringField
      FieldName = 'CODE'
      FixedChar = True
    end
    object QOuttran1LOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QOuttran1JOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QOuttran1UCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '##,##0.00'
    end
    object QOuttran1UPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QOuttran1FRT: TFloatField
      FieldName = 'FRT'
      DisplayFormat = '##,##0.00'
    end
    object QOuttran1QTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '##,##0'
    end
    object QOuttran1TOTPRIC: TFloatField
      FieldName = 'TOTPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QOuttran1REDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '##,##0.00'
    end
    object QOuttran1NETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QOuttran1TOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '##,##0.00'
    end
    object QOuttran1SERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object QOuttran1SERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QOuttran1OTTIME: TFloatField
      FieldName = 'OTTIME'
    end
    object QOuttran1JOBTYP: TStringField
      FieldName = 'JOBTYP'
      FixedChar = True
      Size = 5
    end
    object QOuttran1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QOuttran1DESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 70
    end
    object QOuttran1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOuttran1TAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QOuttran1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QOuttran1CLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object QOuttran1BILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object QOuttran1CUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QOuttran1CLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object QOuttran1CLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object QOuttran1CLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
  end
  object SoOiltran1: TDataSource
    DataSet = QOiltran1
    Left = 86
    Top = 233
  end
  object SoColrtran1: TDataSource
    DataSet = QColrtran1
    Left = 86
    Top = 324
  end
  object SoOuttran1: TDataSource
    DataSet = QOuttran1
    Left = 86
    Top = 279
  end
  object QJoborder2: TFDQuery
    AfterOpen = QJoborder2AfterOpen
    BeforePost = QJoborder2BeforePost
    AfterPost = QJoborder2AfterPost
    AfterCancel = QJoborder2AfterCancel
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM JOBORDER')
    Left = 26
    Top = 143
    object QJoborder2JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QJoborder2LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QJoborder2STRNO: TStringField
      FieldName = 'STRNO'
    end
    object QJoborder2CUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QJoborder2MDLCOD: TStringField
      FieldName = 'MDLCOD'
      Size = 10
    end
    object QJoborder2RUNNO: TStringField
      FieldName = 'RUNNO'
      Size = 5
    end
    object QJoborder2RECVDATE: TDateField
      FieldName = 'RECVDATE'
    end
    object QJoborder2RECVTIME: TStringField
      FieldName = 'RECVTIME'
      Size = 8
    end
    object QJoborder2FINSDATE: TDateField
      FieldName = 'FINSDATE'
    end
    object QJoborder2FINSTIME: TStringField
      FieldName = 'FINSTIME'
      Size = 8
    end
    object QJoborder2RFINSHDT: TDateField
      FieldName = 'RFINSHDT'
      OnValidate = QJoborder2RFINSHDTValidate
    end
    object QJoborder2RFINSHTM: TStringField
      FieldName = 'RFINSHTM'
      Size = 8
    end
    object QJoborder2RLKILOMT: TFloatField
      FieldName = 'RLKILOMT'
    end
    object QJoborder2KILOMT: TFloatField
      FieldName = 'KILOMT'
    end
    object QJoborder2RECVCOD: TStringField
      FieldName = 'RECVCOD'
      Size = 5
    end
    object QJoborder2CUST_IN: TStringField
      FieldName = 'CUST_IN'
      Size = 45
    end
    object QJoborder2PAYCOD: TStringField
      FieldName = 'PAYCOD'
      Size = 5
    end
    object QJoborder2CUST_OUT: TStringField
      FieldName = 'CUST_OUT'
      Size = 45
    end
    object QJoborder2APP_DATE: TDateField
      FieldName = 'APP_DATE'
    end
    object QJoborder2APP_MILE: TFloatField
      FieldName = 'APP_MILE'
    end
    object QJoborder2REPTYPE: TStringField
      FieldName = 'REPTYPE'
      Size = 5
    end
    object QJoborder2GROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 10
    end
    object QJoborder2REPBAY: TStringField
      FieldName = 'REPBAY'
      Size = 5
    end
    object QJoborder2PAYDATE: TDateField
      FieldName = 'PAYDATE'
    end
    object QJoborder2INSPECT: TStringField
      FieldName = 'INSPECT'
      Size = 5
    end
    object QJoborder2REPCOD: TStringField
      FieldName = 'REPCOD'
      OnValidate = QJoborder2REPCODValidate
      Size = 5
    end
    object QJoborder2VATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object QJoborder2VAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0'
    end
    object QJoborder2PARTDISC: TFloatField
      FieldName = 'PARTDISC'
      OnValidate = QJoborder2PARTDISCValidate
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2PARTNET: TFloatField
      FieldName = 'PARTNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2PARTVAT: TFloatField
      FieldName = 'PARTVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2PARTTOT: TFloatField
      FieldName = 'PARTTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OILDISC: TFloatField
      FieldName = 'OILDISC'
      OnValidate = QJoborder2OILDISCValidate
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OILNET: TFloatField
      FieldName = 'OILNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OILVAT: TFloatField
      FieldName = 'OILVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OILTOT: TFloatField
      FieldName = 'OILTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2SERVDISC: TFloatField
      FieldName = 'SERVDISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2SERVNET: TFloatField
      FieldName = 'SERVNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2SERVVAT: TFloatField
      FieldName = 'SERVVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2SERVTOT: TFloatField
      FieldName = 'SERVTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OUTJDISC: TFloatField
      FieldName = 'OUTJDISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OUTJNET: TFloatField
      FieldName = 'OUTJNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OUTJVAT: TFloatField
      FieldName = 'OUTJVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OUTJTOT: TFloatField
      FieldName = 'OUTJTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2COLORDISC: TFloatField
      FieldName = 'COLORDISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2COLORNET: TFloatField
      FieldName = 'COLORNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2COLORVAT: TFloatField
      FieldName = 'COLORVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2COLORTOT: TFloatField
      FieldName = 'COLORTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OTHERDISC: TFloatField
      FieldName = 'OTHERDISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OTHERNET: TFloatField
      FieldName = 'OTHERNET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OTHERVAT: TFloatField
      FieldName = 'OTHERVAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2OTHERTOT: TFloatField
      FieldName = 'OTHERTOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2TSV_DISC: TFloatField
      FieldName = 'TSV_DISC'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2TSV_NET: TFloatField
      FieldName = 'TSV_NET'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2TSV_VAT: TFloatField
      FieldName = 'TSV_VAT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2TSV_TOT: TFloatField
      FieldName = 'TSV_TOT'
      DisplayFormat = '#,##0.00'
    end
    object QJoborder2TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QJoborder2PTAXNO: TStringField
      FieldName = 'PTAXNO'
      Size = 12
    end
    object QJoborder2STAXNO: TStringField
      FieldName = 'STAXNO'
      Size = 12
    end
    object QJoborder2BILDATE: TDateField
      FieldName = 'BILDATE'
    end
    object QJoborder2BILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
    end
    object QJoborder2FLAGCAN: TStringField
      FieldName = 'FLAGCAN'
      Size = 1
    end
    object QJoborder2CANDATE: TDateField
      FieldName = 'CANDATE'
    end
    object QJoborder2STATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QJoborder2MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QJoborder2SVFLAG: TStringField
      FieldName = 'SVFLAG'
      Size = 1
    end
    object QJoborder2TOPNO: TStringField
      FieldName = 'TOPNO'
      Size = 5
    end
    object QJoborder2PREORDNO: TStringField
      FieldName = 'PREORDNO'
      Size = 15
    end
    object QJoborder2ADDNET: TFloatField
      FieldName = 'ADDNET'
    end
    object QJoborder2ADDVAT: TFloatField
      FieldName = 'ADDVAT'
    end
    object QJoborder2ADDTOT: TFloatField
      FieldName = 'ADDTOT'
    end
    object QJoborder2PARTCOST: TFloatField
      FieldName = 'PARTCOST'
    end
    object QJoborder2USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QJoborder2TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QJoborder2CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QJoborder2CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QJoborder2POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QJoborder2INV1_PT: TFloatField
      FieldName = 'INV1_PT'
      DisplayFormat = '##,##0.00'
    end
    object QJoborder2INV2_PT: TFloatField
      FieldName = 'INV2_PT'
      DisplayFormat = '##,##0.00'
    end
    object QJoborder2INV1_SV: TFloatField
      FieldName = 'INV1_SV'
      DisplayFormat = '##,##0.00'
    end
    object QJoborder2INV2_SV: TFloatField
      FieldName = 'INV2_SV'
      DisplayFormat = '##,##0.00'
    end
    object QJoborder2DISCPT: TFloatField
      FieldName = 'DISCPT'
      OnValidate = QJoborder2DISCPTValidate
      DisplayFormat = '##,##0.00'
    end
    object QJoborder2DISCSV: TFloatField
      FieldName = 'DISCSV'
      OnValidate = QJoborder2DISCSVValidate
      DisplayFormat = '##,##0.00'
    end
    object QJoborder2DISCOL: TFloatField
      FieldName = 'DISCOL'
      OnValidate = QJoborder2DISCOLValidate
      DisplayFormat = '##,##0.00'
    end
    object QJoborder2DISCCO: TFloatField
      FieldName = 'DISCCO'
      OnValidate = QJoborder2DISCCOValidate
      DisplayFormat = '##,##0.00'
    end
    object QJoborder2OUTADD: TFloatField
      FieldName = 'OUTADD'
      DisplayFormat = '##,##0.00'
    end
    object QJoborder2FRRATE: TFloatField
      FieldName = 'FRRATE'
      DisplayFormat = '##,##0.00'
    end
    object QJoborder2FRCODE: TStringField
      FieldName = 'FRCODE'
      Size = 5
    end
    object QJoborder2CAMPNO: TStringField
      FieldName = 'CAMPNO'
      Size = 5
    end
    object QJoborder2STATCOD: TStringField
      FieldName = 'STATCOD'
      Size = 2
    end
    object QJoborder2CUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
    object QJoborder2SV_TIME: TFloatField
      FieldName = 'SV_TIME'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
    object QJoborder2OT_TIME: TFloatField
      FieldName = 'OT_TIME'
      DisplayFormat = '##,##0.00'
      EditFormat = '####0.00'
    end
  end
  object SoJoborder2: TDataSource
    DataSet = QJoborder2
    Left = 86
    Top = 143
  end
  object QOfficer: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 391
    Top = 145
  end
  object SoTInvmast: TDataSource
    DataSet = QPartdes
    Left = 330
    Top = 145
  end
  object QSvtype: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 149
    Top = 191
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM JOBORDER')
    Left = 447
    Top = 9
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 447
    Top = 60
  end
  object QParttran1: TFDQuery
    AfterOpen = QParttran1AfterOpen
    BeforeClose = QParttran1BeforeClose
    AfterPost = QParttran1AfterPost
    OnNewRecord = QParttran1NewRecord
    CachedUpdates = True
    OnUpdateError = QParttran1UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM  PARTTRAN')
    Left = 157
    Top = 151
    object QParttran1JOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QParttran1PARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object QParttran1PKNO: TStringField
      FieldName = 'PKNO'
      FixedChar = True
      Size = 12
    end
    object QParttran1LOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QParttran1JOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QParttran1PKDATE: TDateField
      FieldName = 'PKDATE'
    end
    object QParttran1UPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1QTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '##,##0'
    end
    object QParttran1NETFL: TStringField
      FieldName = 'NETFL'
      FixedChar = True
      Size = 1
    end
    object QParttran1REDU1: TFloatField
      FieldName = 'REDU1'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1REDU2: TFloatField
      FieldName = 'REDU2'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1REDU3: TFloatField
      FieldName = 'REDU3'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1NETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1TOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1SERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object QParttran1FRT: TFloatField
      FieldName = 'FRT'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1SERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QParttran1SVCOLOR: TStringField
      FieldName = 'SVCOLOR'
      FixedChar = True
      Size = 1
    end
    object QParttran1CLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object QParttran1SERIALNO: TStringField
      FieldName = 'SERIALNO'
      FixedChar = True
    end
    object QParttran1TAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QParttran1YEAR1: TStringField
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object QParttran1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QParttran1AVGCOST: TFloatField
      FieldName = 'AVGCOST'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QParttran1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QParttran1INV1_PT: TFloatField
      FieldName = 'INV1_PT'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1INV2_PT: TFloatField
      FieldName = 'INV2_PT'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1GROUP1: TStringField
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 5
    end
    object QParttran1BILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object QParttran1DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '##,##0.00'
    end
    object QParttran1FREE: TStringField
      FieldName = 'FREE'
      FixedChar = True
      Size = 1
    end
    object QParttran1CAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object QParttran1CAMFLG: TStringField
      FieldName = 'CAMFLG'
      FixedChar = True
      Size = 1
    end
    object QParttran1CUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QParttran1CLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object QParttran1CLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object QParttran1CLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
    object QParttran1CUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
  end
  object SoParttran1: TDataSource
    DataSet = QParttran1
    Left = 212
    Top = 143
  end
  object SoModelmst: TDataSource
    DataSet = QModelmst
    Left = 212
    Top = 7
  end
  object QJoborder: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 212
    Top = 188
  end
  object QOrdrep1: TFDQuery
    AfterInsert = QOrdrep1AfterEdit
    AfterEdit = QOrdrep1AfterEdit
    AfterPost = QOrdrep1AfterPost
    AfterDelete = QOrdrep1AfterEdit
    OnNewRecord = QOrdrep1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  ORDREP WHERE JOBNO=:JOBNO')
    Left = 149
    Top = 98
    ParamData = <
      item
        Name = 'JOBNO'
      end>
    object QOrdrep1JOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QOrdrep1NO: TFloatField
      Alignment = taLeftJustify
      FieldName = 'NO'
    end
    object QOrdrep1REPDESC: TStringField
      FieldName = 'REPDESC'
      FixedChar = True
      Size = 60
    end
    object QOrdrep1FLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 2
    end
    object QOrdrep1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QOrdrep1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOrdrep1CODE: TStringField
      FieldName = 'CODE'
      FixedChar = True
    end
    object QOrdrep1FRT: TFloatField
      FieldName = 'FRT'
      DisplayFormat = '##,##0.00'
    end
    object QOrdrep1ESTPRIC: TFloatField
      FieldName = 'ESTPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QOrdrep1GRPHD: TStringField
      FieldName = 'GRPHD'
      FixedChar = True
      Size = 1
    end
    object QOrdrep1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 256
    end
  end
  object QOthJobord: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM JOBORDER')
    Left = 271
    Top = 188
  end
  object SoJobTime: TDataSource
    DataSet = QJobTime
    Left = 212
    Top = 324
  end
  object QArpaytrn: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  ARPAYTRN')
    Left = 391
    Top = 191
  end
  object QTaxsal: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  TAXSAL')
    Left = 328
    Top = 191
  end
  object QTopcar: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 271
    Top = 233
  end
  object Query3: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 544
    Top = 276
  end
  object QSvCharg: TFDQuery
    AfterPost = QSvChargAfterPost
    AfterDelete = QSvChargAfterPost
    OnNewRecord = QSvChargNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SVCHARG')
    Left = 271
    Top = 283
  end
  object SoSvcharg: TDataSource
    DataSet = QSvCharg
    Left = 328
    Top = 280
  end
  object QCanjob: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM CANJOB')
    Left = 392
    Top = 280
  end
  object Condpay: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SCONDPAY')
    Left = 503
    Top = 108
  end
  object QArmast: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'select * from armast')
    Left = 149
    Top = 279
  end
  object SoArmast: TDataSource
    DataSet = QArmast
    Left = 212
    Top = 279
  end
  object QDbconfig: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SDBCONFIG')
    Left = 506
    Top = 12
  end
  object QNewprob: TFDQuery
    AfterPost = QNewprobAfterPost
    OnNewRecord = QNewprobNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM NEWPROB')
    Left = 271
    Top = 324
    object QNewprobRSCODE: TStringField
      FieldName = 'RSCODE'
      OnValidate = QNewprobRSCODEValidate
      Size = 3
    end
    object QNewprobNO: TFloatField
      FieldName = 'NO'
    end
    object QNewprobSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QNewprobJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QNewprobPBDESC: TStringField
      FieldName = 'PBDESC'
      Size = 60
    end
    object QNewprobPRNDATE: TDateField
      FieldName = 'PRNDATE'
    end
    object QNewprobSTAR: TStringField
      FieldName = 'STAR'
      Size = 1
    end
    object QNewprobACEPTDT: TDateField
      FieldName = 'ACEPTDT'
    end
  end
  object SoNewprob: TDataSource
    DataSet = QNewprob
    OnStateChange = SoNewprobStateChange
    Left = 328
    Top = 324
  end
  object QJoborder3: TFDQuery
    BeforePost = QJoborder3BeforePost
    AfterPost = QJoborder3AfterPost
    AfterCancel = QJoborder3AfterCancel
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM JOBORDER')
    Left = 393
    Top = 325
  end
  object SoJoborder3: TDataSource
    DataSet = QJoborder3
    Left = 458
    Top = 325
  end
  object QResult: TFDQuery
    AfterPost = QResultAfterPost
    AfterDelete = QResultAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM RE_SULT')
    Left = 447
    Top = 104
  end
  object SoResult: TDataSource
    DataSet = QResult
    Left = 444
    Top = 196
  end
  object SoToildes: TDataSource
    DataSet = QOildesc
    Left = 447
    Top = 240
  end
  object QOildesc: TFDQuery
    MasterSource = SoOiltran1
    MasterFields = 'LOCAT;PARTNO'
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      
        'SELECT  DESC1 FROM INVENTOR WHERE LOCAT=:LOCAT AND PARTNO=:PARTN' +
        'O')
    Left = 447
    Top = 152
    ParamData = <
      item
        Name = 'LOCAT'
        DataType = ftFixedChar
        Size = 5
        Value = Null
      end
      item
        Name = 'PARTNO'
        DataType = ftFixedChar
        Size = 20
        Value = Null
      end>
  end
  object QPartdes: TFDQuery
    MasterSource = SoParttran1
    MasterFields = 'LOCAT;PARTNO'
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      
        'SELECT  DESC1,GROUP1  FROM INVENTOR WHERE LOCAT=:LOCAT AND PARTN' +
        'O=:PARTNO')
    Left = 272
    Top = 144
    ParamData = <
      item
        Name = 'LOCAT'
        DataType = ftFixedChar
        Size = 5
        Value = Null
      end
      item
        Name = 'PARTNO'
        DataType = ftFixedChar
        Size = 20
        Value = Null
      end>
  end
  object QrAppDateKilo: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SVMAST')
    Left = 452
    Top = 280
  end
  object QTabserv: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 212
    Top = 233
  end
  object QJobTime: TFDQuery
    AfterPost = QJobTimeAfterPost
    AfterDelete = QJobTimeAfterPost
    OnNewRecord = QJobTimeNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM JOBTIME')
    Left = 149
    Top = 324
    object QJobTimeJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QJobTimeSERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object QJobTimeSTARTTIM: TFloatField
      FieldName = 'STARTTIM'
      DisplayFormat = '#0.00'
      EditFormat = '####'
    end
    object QJobTimeSTOPTIM: TFloatField
      FieldName = 'STOPTIM'
      DisplayFormat = '#0.00'
      EditFormat = '####'
    end
    object QJobTimeUSETIME: TFloatField
      FieldName = 'USETIME'
      DisplayFormat = '#,#0.00'
    end
    object QJobTimeINPDATE: TDateTimeField
      FieldName = 'INPDATE'
    end
    object QJobTimeDAYLYDT: TDateField
      FieldName = 'DAYLYDT'
      EditMask = '!99/99/00;1;_'
    end
  end
  object qRunNumber: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      'SELECT * FROM RUNNUMBER')
    Left = 503
    Top = 175
  end
  object QJob_tran: TFDQuery
    OnNewRecord = QJob_tranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  JOB_TRAN')
    Left = 362
    Top = 476
    object QJob_tranJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 12
    end
    object QJob_tranPARTNO: TStringField
      FieldName = 'PARTNO'
      OnChange = QJob_tranPARTNOChange
      OnValidate = QJob_tranPARTNOValidate
      FixedChar = True
    end
    object QJob_tranDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 60
    end
    object QJob_tranQTY: TFloatField
      FieldName = 'QTY'
      OnValidate = QJob_tranQTYValidate
    end
    object QJob_tranUPRICE: TFloatField
      FieldName = 'UPRICE'
      OnValidate = QJob_tranUPRICEValidate
      DisplayFormat = '##,##0.00'
    end
    object QJob_tranREDU: TFloatField
      FieldName = 'REDU'
      OnValidate = QJob_tranREDUValidate
      DisplayFormat = '##,##0.00'
    end
    object QJob_tranNETPRIC: TFloatField
      FieldName = 'NETPRIC'
      OnChange = QJob_tranNETPRICChange
      DisplayFormat = '##,##0.00'
    end
    object QJob_tranTOTALPRC: TFloatField
      FieldName = 'TOTALPRC'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tranTRNFLG: TStringField
      FieldName = 'TRNFLG'
      FixedChar = True
      Size = 1
    end
    object QJob_tranREPAIRTYP: TStringField
      FieldName = 'REPAIRTYP'
      FixedChar = True
      Size = 1
    end
    object QJob_tranINSAPPRVAMT: TFloatField
      FieldName = 'INSAPPRVAMT'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tranCHECKLIST: TStringField
      FieldName = 'CHECKLIST'
      FixedChar = True
      Size = 1
    end
    object QJob_tranRE_CHECKLIST: TStringField
      FieldName = 'RE_CHECKLIST'
      FixedChar = True
      Size = 1
    end
    object QJob_tranQUOTNO: TStringField
      FieldName = 'QUOTNO'
      FixedChar = True
      Size = 12
    end
  end
  object SoQJob_tran: TDataSource
    DataSet = QJob_tran
    OnDataChange = SoQa_tran1DataChange
    Left = 446
    Top = 476
  end
  object QJob_tran1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  JOB_TRAN1')
    Left = 362
    Top = 532
    object QJob_tran1JOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 12
    end
    object QJob_tran1PARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object QJob_tran1DESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 60
    end
    object QJob_tran1QTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran1UPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran1REDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran1NETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran1TOTALPRC: TFloatField
      FieldName = 'TOTALPRC'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran1TRNFLG: TStringField
      FieldName = 'TRNFLG'
      FixedChar = True
      Size = 1
    end
    object QJob_tran1REPAIRTYP: TStringField
      FieldName = 'REPAIRTYP'
      FixedChar = True
      Size = 1
    end
    object QJob_tran1INSAPPRVAMT: TFloatField
      FieldName = 'INSAPPRVAMT'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran1CHECKLIST: TStringField
      FieldName = 'CHECKLIST'
      FixedChar = True
      Size = 1
    end
    object QJob_tran1RE_CHECKLIST: TStringField
      FieldName = 'RE_CHECKLIST'
      FixedChar = True
      Size = 1
    end
    object QJob_tran1QUOTNO: TStringField
      FieldName = 'QUOTNO'
      FixedChar = True
      Size = 12
    end
  end
  object SoQJob_tran1: TDataSource
    DataSet = QJob_tran1
    OnDataChange = SoQa_tran1DataChange
    Left = 454
    Top = 524
  end
  object SoQJob_tran2: TDataSource
    DataSet = QJob_tran2
    OnDataChange = SoQa_tran1DataChange
    Left = 454
    Top = 580
  end
  object QJob_tran2: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  JOB_TRAN2')
    Left = 370
    Top = 580
    object QJob_tran2JOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 12
    end
    object QJob_tran2PARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object QJob_tran2DESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 60
    end
    object QJob_tran2QTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran2UPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran2REDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran2NETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran2TOTALPRC: TFloatField
      FieldName = 'TOTALPRC'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran2TRNFLG: TStringField
      FieldName = 'TRNFLG'
      FixedChar = True
      Size = 1
    end
    object QJob_tran2REPAIRTYP: TStringField
      FieldName = 'REPAIRTYP'
      FixedChar = True
      Size = 1
    end
    object QJob_tran2INSAPPRVAMT: TFloatField
      FieldName = 'INSAPPRVAMT'
      DisplayFormat = '##,##0.00'
    end
    object QJob_tran2CHECKLIST: TStringField
      FieldName = 'CHECKLIST'
      FixedChar = True
      Size = 1
    end
    object QJob_tran2RE_CHECKLIST: TStringField
      FieldName = 'RE_CHECKLIST'
      FixedChar = True
      Size = 1
    end
    object QJob_tran2QUOTNO: TStringField
      FieldName = 'QUOTNO'
      FixedChar = True
      Size = 12
    end
  end
  object QServtran1: TFDQuery
    BeforePost = QServtran1BeforePost
    AfterPost = QServtran1AfterPost
    AfterDelete = QServtran1AfterPost
    OnNewRecord = QServtran1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SERVTRAN')
    Left = 26
    Top = 188
    object QServtran1JOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QServtran1CODE: TStringField
      FieldName = 'CODE'
      FixedChar = True
      Size = 15
    end
    object QServtran1LOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QServtran1JOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QServtran1FRT: TFloatField
      FieldName = 'FRT'
      DisplayFormat = '##,##0.00'
    end
    object QServtran1PRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '##,##0.00'
    end
    object QServtran1REDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '##,##0.00'
    end
    object QServtran1NETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QServtran1SERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object QServtran1SERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QServtran1OTTIME: TFloatField
      FieldName = 'OTTIME'
    end
    object QServtran1JOBTYP: TStringField
      FieldName = 'JOBTYP'
      FixedChar = True
      Size = 5
    end
    object QServtran1CLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object QServtran1MDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object QServtran1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QServtran1DESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 70
    end
    object QServtran1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QServtran1INV1_SV: TFloatField
      FieldName = 'INV1_SV'
      DisplayFormat = '##,##0.00'
    end
    object QServtran1INV2_SV: TFloatField
      FieldName = 'INV2_SV'
      DisplayFormat = '##,##0.00'
    end
    object QServtran1BILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object QServtran1TAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QServtran1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QServtran1UPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QServtran1DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '##,##0.00'
    end
    object QServtran1CAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object QServtran1CAMFLG: TStringField
      FieldName = 'CAMFLG'
      FixedChar = True
      Size = 1
    end
    object QServtran1CUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QServtran1CLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object QServtran1CLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object QServtran1CLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
    object QServtran1CUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
  end
  object SoServtran1: TDataSource
    DataSet = QServtran1
    Left = 86
    Top = 188
  end
  object QServtran: TFDQuery
    BeforePost = QServtranBeforePost
    AfterPost = QServtranAfterPost
    AfterDelete = QServtranAfterDelete
    OnNewRecord = QServtranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SERVTRAN')
    Left = 362
    Top = 428
    object QServtranJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QServtranCODE: TStringField
      FieldName = 'CODE'
      OnChange = QServtranCODEChange
      FixedChar = True
      Size = 15
    end
    object QServtranLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QServtranJOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QServtranFRT: TFloatField
      FieldName = 'FRT'
      OnValidate = QServtranFRTValidate
      DisplayFormat = '##,##0.00'
    end
    object QServtranUPRICE: TFloatField
      FieldName = 'UPRICE'
      OnValidate = QServtranUPRICEValidate
      DisplayFormat = '##,##0.00'
    end
    object QServtranPRICE: TFloatField
      FieldName = 'PRICE'
      OnValidate = QServtranPRICEValidate
      DisplayFormat = '##,##0.00'
    end
    object QServtranREDU: TFloatField
      FieldName = 'REDU'
      OnValidate = QServtranREDUValidate
      DisplayFormat = '##,##0.00'
    end
    object QServtranDISCAMT: TFloatField
      FieldName = 'DISCAMT'
      OnValidate = QServtranDISCAMTValidate
      DisplayFormat = '##,##0.00'
    end
    object QServtranNETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QServtranSERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 8
    end
    object QServtranSERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QServtranOTTIME: TFloatField
      FieldName = 'OTTIME'
    end
    object QServtranJOBTYP: TStringField
      FieldName = 'JOBTYP'
      FixedChar = True
      Size = 5
    end
    object QServtranCLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object QServtranMDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object QServtranUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QServtranDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 70
    end
    object QServtranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QServtranINV1_SV: TFloatField
      FieldName = 'INV1_SV'
    end
    object QServtranINV2_SV: TFloatField
      FieldName = 'INV2_SV'
    end
    object QServtranBILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object QServtranTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QServtranTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QServtranCAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object QServtranCAMFLG: TStringField
      FieldName = 'CAMFLG'
      FixedChar = True
      Size = 1
    end
    object QServtranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QServtranCLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object QServtranCLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object QServtranCLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
    object QServtranCUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
  end
  object SoServtran: TDataSource
    DataSet = QServtran
    Left = 446
    Top = 428
  end
  object Query4: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM JOBORDER')
    Left = 543
    Top = 321
  end
end
