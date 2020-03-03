object Dm_Finc: TDm_Finc
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 579
  Width = 551
  object QJoborder1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM JOBORDER')
    Left = 28
    Top = 52
    object QJoborder1JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QJoborder1LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QJoborder1STRNO: TStringField
      FieldName = 'STRNO'
    end
    object QJoborder1CUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QJoborder1MDLCOD: TStringField
      FieldName = 'MDLCOD'
      Size = 10
    end
    object QJoborder1RUNNO: TStringField
      FieldName = 'RUNNO'
      Size = 5
    end
    object QJoborder1RECVDATE: TDateField
      FieldName = 'RECVDATE'
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
    end
    object QJoborder1KILOMT: TFloatField
      FieldName = 'KILOMT'
    end
    object QJoborder1RECVCOD: TStringField
      FieldName = 'RECVCOD'
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
      DisplayFormat = '#,##0.00'
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
    object QJoborder1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QJoborder1PTAXNO: TStringField
      FieldName = 'PTAXNO'
      Size = 12
    end
    object QJoborder1STAXNO: TStringField
      FieldName = 'STAXNO'
      Size = 12
    end
    object QJoborder1BILDATE: TDateField
      FieldName = 'BILDATE'
    end
    object QJoborder1BILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
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
    object QJoborder1PREORDNO: TStringField
      FieldName = 'PREORDNO'
      Size = 15
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
    end
    object QJoborder1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
  end
  object SoJoborder1: TDataSource
    DataSet = QJoborder1
    Left = 87
    Top = 52
  end
  object QAr_serv1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  AR_SERV')
    Left = 28
    Top = 98
    object QAr_serv1JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QAr_serv1JOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QAr_serv1LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QAr_serv1DEVNO: TStringField
      FieldName = 'DEVNO'
      Size = 12
    end
    object QAr_serv1DEVDATE: TDateField
      FieldName = 'DEVDATE'
    end
    object QAr_serv1DUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QAr_serv1CUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QAr_serv1DESC1: TStringField
      FieldName = 'DESC1'
      Size = 55
    end
    object QAr_serv1VATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_serv1AMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_serv1REDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '#,##0.00'
    end
    object QAr_serv1BALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QAr_serv1VAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_serv1TOTTAX: TFloatField
      FieldName = 'TOTTAX'
      DisplayFormat = '#,##0.00'
    end
    object QAr_serv1SMPAY: TFloatField
      FieldName = 'SMPAY'
      OnValidate = QAr_serv1SMPAYValidate
      DisplayFormat = '#,##0.00'
    end
    object QAr_serv1SMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
    end
    object QAr_serv1LPAID: TDateField
      FieldName = 'LPAID'
    end
    object QAr_serv1REDUAFT: TFloatField
      FieldName = 'REDUAFT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_serv1KANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
    end
    object QAr_serv1TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QAr_serv1TAXDATE: TDateField
      FieldName = 'TAXDATE'
      OnValidate = QAr_serv1TAXDATEValidate
    end
    object QAr_serv1REFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QAr_serv1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QAr_serv1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QAr_serv1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QAr_serv1PAYTYPE: TStringField
      FieldName = 'PAYTYPE'
      Size = 2
    end
    object QAr_serv1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QAr_serv1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QAr_serv1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QAr_serv1PTYPE: TStringField
      FieldName = 'PTYPE'
      Size = 1
    end
    object QAr_serv1CREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object QAr_serv1TEMPTAX: TStringField
      FieldName = 'TEMPTAX'
      Size = 1
    end
    object QAr_serv1DEPOSTNO: TStringField
      FieldName = 'DEPOSTNO'
      FixedChar = True
      Size = 12
    end
    object QAr_serv1DEPOSAMT: TFloatField
      FieldName = 'DEPOSAMT'
    end
    object QAr_serv1DEPOSVAT: TFloatField
      FieldName = 'DEPOSVAT'
    end
    object QAr_serv1DEPOSTAX: TStringField
      FieldName = 'DEPOSTAX'
      FixedChar = True
      Size = 12
    end
  end
  object Soarserv1: TDataSource
    DataSet = QAr_serv1
    Left = 87
    Top = 98
  end
  object QArpaytrn: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  ARPAYTRN')
    Left = 145
    Top = 52
  end
  object Soarpaytrn: TDataSource
    DataSet = QArpaytrn
    Left = 205
    Top = 52
  end
  object QTaxsal: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  TAXSAL')
    Left = 28
    Top = 145
  end
  object SoTaxsal: TDataSource
    DataSet = QTaxsal
    Left = 87
    Top = 145
  end
  object QParttran: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT  *  FROM  PARTTRAN')
    Left = 325
    Top = 99
  end
  object QLastno: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      'SELECT  *  FROM  SLASTNO')
    Left = 472
    Top = 165
  end
  object QLocat: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 265
    Top = 99
  end
  object QSumBill: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT JOBNO,SUM(AMOUNT) AS AMOUNT, SUM(REDU) AS REDU,'
      'SUM(VAT) AS VAT,SUM(TOTTAX) AS TOTTAX,SUM(SMPAY) AS SMPAY,'
      'SUM(REDUAFT) AS REDUAFT  FROM AR_SERV GROUP BY JOBNO')
    Left = 265
    Top = 5
    object QSumBillJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QSumBillAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object QSumBillREDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '#,##0.00'
    end
    object QSumBillVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object QSumBillTOTTAX: TFloatField
      FieldName = 'TOTTAX'
      DisplayFormat = '#,##0.00'
    end
    object QSumBillSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
    end
    object QSumBillREDUAFT: TFloatField
      FieldName = 'REDUAFT'
      DisplayFormat = '#,##0.00'
    end
  end
  object SoSumbill: TDataSource
    DataSet = QSumBill
    Left = 325
    Top = 5
  end
  object QAr_servCP: TFDQuery
    OnNewRecord = QAr_servCPNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  AR_SERV')
    Left = 145
    Top = 99
    object QAr_servCPJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QAr_servCPJOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QAr_servCPLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QAr_servCPDEVNO: TStringField
      FieldName = 'DEVNO'
      Size = 12
    end
    object QAr_servCPDEVDATE: TDateField
      FieldName = 'DEVDATE'
      OnValidate = QAr_servCPDEVDATEValidate
    end
    object QAr_servCPDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QAr_servCPCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QAr_servCPDESC1: TStringField
      FieldName = 'DESC1'
      Size = 55
    end
    object QAr_servCPVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_servCPAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_servCPREDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '#,##0.00'
    end
    object QAr_servCPBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QAr_servCPVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_servCPTOTTAX: TFloatField
      FieldName = 'TOTTAX'
      DisplayFormat = '#,##0.00'
    end
    object QAr_servCPSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
    end
    object QAr_servCPSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
    end
    object QAr_servCPLPAID: TDateField
      FieldName = 'LPAID'
    end
    object QAr_servCPREDUAFT: TFloatField
      FieldName = 'REDUAFT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_servCPKANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
    end
    object QAr_servCPTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QAr_servCPTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QAr_servCPREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QAr_servCPFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QAr_servCPUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QAr_servCPTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QAr_servCPCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QAr_servCPCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QAr_servCPPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QAr_servCPPAYTYPE: TStringField
      FieldName = 'PAYTYPE'
      Size = 2
    end
  end
  object SoArservCP: TDataSource
    DataSet = QAr_servCP
    Left = 205
    Top = 99
  end
  object QAr_ServC2: TFDQuery
    BeforeEdit = QAr_ServC2BeforeEdit
    BeforePost = QAr_ServC2BeforePost
    AfterPost = QAr_ServC2AfterPost
    AfterCancel = QAr_ServC2AfterCancel
    OnCalcFields = QAr_ServC2CalcFields
    OnNewRecord = QAr_ServC2NewRecord
    CachedUpdates = True
    OnUpdateError = QAr_ServC2UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  AR_SERV')
    Left = 263
    Top = 56
    object QAr_ServC2JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QAr_ServC2JOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QAr_ServC2DEVNO: TStringField
      FieldName = 'DEVNO'
      Size = 12
    end
    object QAr_ServC2LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QAr_ServC2DEVDATE: TDateField
      FieldName = 'DEVDATE'
      OnValidate = QAr_ServC2DEVDATEValidate
    end
    object QAr_ServC2DUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QAr_ServC2CUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QAr_ServC2DESC1: TStringField
      FieldName = 'DESC1'
      Size = 55
    end
    object QAr_ServC2VATRT: TFloatField
      FieldName = 'VATRT'
      OnValidate = QAr_ServC2REDUValidate
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2AMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2REDU: TFloatField
      FieldName = 'REDU'
      OnValidate = QAr_ServC2REDUValidate
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2BALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2VAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2TOTTAX: TFloatField
      FieldName = 'TOTTAX'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2SMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2SMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2LPAID: TDateField
      FieldName = 'LPAID'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2REDUAFT: TFloatField
      FieldName = 'REDUAFT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2KANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServC2TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QAr_ServC2TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QAr_ServC2REFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QAr_ServC2FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QAr_ServC2PAYTYPE: TStringField
      FieldName = 'PAYTYPE'
      Size = 2
    end
    object QAr_ServC2USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QAr_ServC2TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QAr_ServC2CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QAr_ServC2CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QAr_ServC2POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QAr_ServC2CREDTM: TFloatField
      FieldName = 'CREDTM'
      OnValidate = QAr_ServC2CREDTMValidate
    end
    object QAr_ServC2PTYPE: TStringField
      FieldName = 'PTYPE'
      OnValidate = QAr_ServC2DEVDATEValidate
      Size = 1
    end
    object QAr_ServC2Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QAr_ServC2TEMPTAX: TStringField
      FieldName = 'TEMPTAX'
      Size = 1
    end
    object QAr_ServC2MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QAr_ServC2DEPOSTNO: TStringField
      FieldName = 'DEPOSTNO'
      OnValidate = QAr_ServC2DEPOSTNOValidate
      FixedChar = True
      Size = 12
    end
    object QAr_ServC2DEPOSAMT: TFloatField
      FieldName = 'DEPOSAMT'
      DisplayFormat = '##,##0.00'
    end
    object QAr_ServC2DEPOSVAT: TFloatField
      FieldName = 'DEPOSVAT'
    end
    object QAr_ServC2DEPOSTAX: TStringField
      FieldName = 'DEPOSTAX'
      FixedChar = True
      Size = 12
    end
  end
  object SoarServC2: TDataSource
    DataSet = QAr_ServC2
    Left = 325
    Top = 52
  end
  object QAr_ServCS: TFDQuery
    BeforePost = QAr_ServCSBeforePost
    AfterPost = QAr_ServCSAfterPost
    AfterCancel = QAr_ServCSAfterCancel
    OnNewRecord = QAr_ServCSNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  AR_SERV')
    Left = 153
    Top = 146
    object QAr_ServCSJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QAr_ServCSJOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QAr_ServCSLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QAr_ServCSDEVNO: TStringField
      FieldName = 'DEVNO'
      Size = 12
    end
    object QAr_ServCSDEVDATE: TDateField
      FieldName = 'DEVDATE'
      OnValidate = QAr_ServCSDEVDATEValidate
    end
    object QAr_ServCSDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QAr_ServCSCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QAr_ServCSDESC1: TStringField
      FieldName = 'DESC1'
      Size = 55
    end
    object QAr_ServCSVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServCSAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServCSREDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServCSBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServCSVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServCSTOTTAX: TFloatField
      FieldName = 'TOTTAX'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServCSSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServCSSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServCSLPAID: TDateField
      FieldName = 'LPAID'
    end
    object QAr_ServCSREDUAFT: TFloatField
      FieldName = 'REDUAFT'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServCSKANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
    end
    object QAr_ServCSTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QAr_ServCSTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QAr_ServCSREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QAr_ServCSFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QAr_ServCSUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QAr_ServCSTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QAr_ServCSPAYTYPE: TStringField
      FieldName = 'PAYTYPE'
      Size = 2
    end
    object QAr_ServCSCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QAr_ServCSCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QAr_ServCSPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
  end
  object SoArservCS: TDataSource
    DataSet = QAr_ServCS
    Left = 213
    Top = 146
  end
  object Qarmast1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 28
    Top = 5
  end
  object SoArmast1: TDataSource
    DataSet = Qarmast1
    Left = 87
    Top = 5
  end
  object QArmast2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 145
    Top = 5
  end
  object SoArmast2: TDataSource
    DataSet = QArmast2
    Left = 205
    Top = 5
  end
  object QOthinvoi1: TFDQuery
    BeforePost = QOthinvoi1BeforePost
    AfterPost = QOthinvoi1AfterPost
    AfterCancel = QOthinvoi1AfterCancel
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM OTHINVOI')
    Left = 28
    Top = 191
    object QOthinvoi1INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QOthinvoi1INVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object QOthinvoi1JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QOthinvoi1LOCAT: TStringField
      FieldName = 'LOCAT'
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
    object QOthinvoi1VAT: TFloatField
      FieldName = 'VAT'
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
    object QOthinvoi1BALANE: TFloatField
      FieldName = 'BALANE'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvoi1TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QOthinvoi1TAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QOthinvoi1DTPAID: TDateField
      FieldName = 'DTPAID'
      OnValidate = QOthinvoi1DTPAIDValidate
    end
    object QOthinvoi1PAID: TFloatField
      FieldName = 'PAID'
      OnValidate = QOthinvoi1PAIDValidate
      DisplayFormat = '#,##0.00'
    end
    object QOthinvoi1REDUAFT: TFloatField
      FieldName = 'REDUAFT'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvoi1FLAGCAN: TStringField
      FieldName = 'FLAGCAN'
      Size = 1
    end
    object QOthinvoi1CANDATE: TDateField
      FieldName = 'CANDATE'
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
  end
  object SoOthinvoi1: TDataSource
    DataSet = QOthinvoi1
    Left = 87
    Top = 191
  end
  object QArpaytrn1: TFDQuery
    AfterOpen = QArpaytrn1AfterOpen
    BeforeEdit = QArpaytrn1BeforeEdit
    BeforePost = QArpaytrn1BeforePost
    AfterPost = QArpaytrn1AfterPost
    AfterCancel = QArpaytrn1AfterCancel
    OnCalcFields = QArpaytrn1CalcFields
    OnNewRecord = QArpaytrn1NewRecord
    CachedUpdates = True
    OnUpdateError = QArpaytrn1UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  ARPAYTRN')
    Left = 145
    Top = 193
    object QArpaytrn1BILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
    end
    object QArpaytrn1LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QArpaytrn1LOCATValidate
      Size = 5
    end
    object QArpaytrn1BILLDT: TDateField
      FieldName = 'BILLDT'
      OnValidate = QArpaytrn1BILLDTValidate
    end
    object QArpaytrn1CUSCODE: TStringField
      FieldName = 'CUSCODE'
      OnValidate = QArpaytrn1CUSCODEValidate
      Size = 12
    end
    object QArpaytrn1PAYCONT: TStringField
      FieldName = 'PAYCONT'
      Size = 1
    end
    object QArpaytrn1IDCARD: TStringField
      FieldName = 'IDCARD'
    end
    object QArpaytrn1IDEXPDT: TDateField
      FieldName = 'IDEXPDT'
    end
    object QArpaytrn1CHQNUM: TFloatField
      FieldName = 'CHQNUM'
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1DISAMT: TFloatField
      FieldName = 'DISAMT'
      OnValidate = QArpaytrn1DISAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1VAT3: TFloatField
      FieldName = 'VAT3'
      OnValidate = QArpaytrn1VAT3Validate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1VAT3AMT: TFloatField
      FieldName = 'VAT3AMT'
      OnValidate = QArpaytrn1VAT3AMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1NETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1ADDAMT: TFloatField
      FieldName = 'ADDAMT'
      OnValidate = QArpaytrn1ADDAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QArpaytrn1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QArpaytrn1SYSTM: TStringField
      FieldName = 'SYSTM'
      Size = 8
    end
    object QArpaytrn1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QArpaytrn1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QArpaytrn1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QArpaytrn1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QArpaytrn1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QArpaytrn1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QArpaytrn1BKCODE: TStringField
      FieldName = 'BKCODE'
      Size = 8
    end
    object QArpaytrn1Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QArpaytrn1POSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn1TAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn1BOOKNO: TStringField
      FieldName = 'BOOKNO'
      FixedChar = True
      Size = 15
    end
    object QArpaytrn1PAYFOR: TStringField
      FieldName = 'PAYFOR'
      FixedChar = True
      Size = 2
    end
    object QArpaytrn1CLAIMTYP: TStringField
      FieldName = 'CLAIMTYP'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn1PAYTYP: TStringField
      FieldName = 'PAYTYP'
      OnValidate = QArpaytrn1PAYTYPValidate
      Size = 2
    end
    object QArpaytrn1INVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = QArpaytrn1INVNOValidate
      Size = 12
    end
    object QArpaytrn1CSHAMT: TFloatField
      FieldName = 'CSHAMT'
      OnValidate = QArpaytrn1CSHAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1CHQAMT: TFloatField
      FieldName = 'CHQAMT'
      OnValidate = QArpaytrn1CHQAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1CREDITAMT: TFloatField
      FieldName = 'CREDITAMT'
      OnValidate = QArpaytrn1CREDITAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn1BANKAMT: TFloatField
      FieldName = 'BANKAMT'
      OnValidate = QArpaytrn1BANKAMTValidate
      DisplayFormat = '#,##0.00'
    end
  end
  object Soarpaytrn1: TDataSource
    DataSet = QArpaytrn1
    Left = 205
    Top = 193
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 380
    Top = 192
  end
  object QArchq: TFDQuery
    OnNewRecord = QArchqNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARCHQ')
    Left = 265
    Top = 193
    object QArchqBILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object QArchqLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QArchqCHQNO: TStringField
      FieldName = 'CHQNO'
      FixedChar = True
      Size = 15
    end
    object QArchqCHQDUE: TDateField
      FieldName = 'CHQDUE'
    end
    object QArchqBKCODE: TStringField
      FieldName = 'BKCODE'
      FixedChar = True
      Size = 5
    end
    object QArchqBKBRAN: TStringField
      FieldName = 'BKBRAN'
      FixedChar = True
      Size = 45
    end
    object QArchqCHQAMT: TFloatField
      FieldName = 'CHQAMT'
    end
    object QArchqPAYINDT: TDateField
      FieldName = 'PAYINDT'
    end
    object QArchqPOSTCHQ: TDateField
      FieldName = 'POSTCHQ'
    end
    object QArchqSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object QArchqUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QArchqTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
  end
  object SoArchq: TDataSource
    DataSet = QArchq
    Left = 325
    Top = 193
  end
  object QArpaytrn2: TFDQuery
    AfterOpen = QArpaytrn2AfterOpen
    BeforeEdit = QArpaytrn2BeforeEdit
    BeforePost = QArpaytrn2BeforePost
    AfterPost = QArpaytrn2AfterPost
    AfterCancel = QArpaytrn2AfterCancel
    OnCalcFields = QArpaytrn2CalcFields
    OnNewRecord = QArpaytrn2NewRecord
    CachedUpdates = True
    OnUpdateError = QArpaytrn2UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARPAYTRN')
    Left = 32
    Top = 248
    object QArpaytrn2BILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn2LOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QArpaytrn2BILLDT: TDateField
      FieldName = 'BILLDT'
      OnValidate = QArpaytrn2BILLDTValidate
    end
    object QArpaytrn2CUSCODE: TStringField
      FieldName = 'CUSCODE'
      OnChange = QArpaytrn2CUSCODEChange
      OnValidate = QArpaytrn2CUSCODEValidate
      FixedChar = True
      Size = 12
    end
    object QArpaytrn2PAYCONT: TStringField
      FieldName = 'PAYCONT'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn2IDCARD: TStringField
      FieldName = 'IDCARD'
      FixedChar = True
    end
    object QArpaytrn2IDEXPDT: TDateField
      FieldName = 'IDEXPDT'
    end
    object QArpaytrn2CHQNUM: TFloatField
      FieldName = 'CHQNUM'
    end
    object QArpaytrn2TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn2DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn2DISAMT: TFloatField
      FieldName = 'DISAMT'
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn2VAT3: TFloatField
      FieldName = 'VAT3'
      OnValidate = QArpaytrn2VAT3Validate
    end
    object QArpaytrn2VAT3AMT: TFloatField
      FieldName = 'VAT3AMT'
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn2ADDAMT: TFloatField
      FieldName = 'ADDAMT'
      OnValidate = QArpaytrn2ADDAMTValidate
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn2NETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn2JOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QArpaytrn2SYSTM: TStringField
      FieldName = 'SYSTM'
      FixedChar = True
      Size = 8
    end
    object QArpaytrn2FLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn2MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QArpaytrn2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QArpaytrn2TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QArpaytrn2CANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object QArpaytrn2CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QArpaytrn2POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QArpaytrn2BKCODE: TStringField
      FieldName = 'BKCODE'
      FixedChar = True
      Size = 8
    end
    object QArpaytrn2TAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn2BOOKNO: TStringField
      FieldName = 'BOOKNO'
      FixedChar = True
      Size = 15
    end
    object QArpaytrn2Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QArpaytrn2PAYFOR: TStringField
      FieldName = 'PAYFOR'
      FixedChar = True
      Size = 2
    end
    object QArpaytrn2CLAIMTYP: TStringField
      FieldName = 'CLAIMTYP'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn2POSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn2PAYTYP: TStringField
      FieldName = 'PAYTYP'
      OnValidate = QArpaytrn2PAYTYPValidate
      FixedChar = True
      Size = 2
    end
    object QArpaytrn2INVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = QArpaytrn2INVNOValidate
      FixedChar = True
      Size = 12
    end
    object QArpaytrn2CHQAMT: TFloatField
      FieldName = 'CHQAMT'
      OnValidate = QArpaytrn2CHQAMTValidate
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn2CSHAMT: TFloatField
      FieldName = 'CSHAMT'
      OnValidate = QArpaytrn2CSHAMTValidate
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn2CREDITAMT: TFloatField
      FieldName = 'CREDITAMT'
      OnValidate = QArpaytrn2CREDITAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrn2BANKAMT: TFloatField
      FieldName = 'BANKAMT'
      OnValidate = QArpaytrn2BANKAMTValidate
      DisplayFormat = '#,##0.00'
    end
  end
  object Soarpaytrn2: TDataSource
    DataSet = QArpaytrn2
    Left = 92
    Top = 244
  end
  object QOthinv: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM OTHINVOI')
    Left = 153
    Top = 244
    object QOthinvINVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QOthinvINVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object QOthinvJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QOthinvLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QOthinvJOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QOthinvSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QOthinvCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QOthinvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvDSCT: TFloatField
      FieldName = 'DSCT'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvDSCAMT: TFloatField
      FieldName = 'DSCAMT'
      OnValidate = QOthinvDSCAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QOthinvBALANE: TFloatField
      FieldName = 'BALANE'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvVATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object QOthinvTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QOthinvTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QOthinvPAID: TFloatField
      FieldName = 'PAID'
    end
    object QOthinvDTPAID: TDateField
      FieldName = 'DTPAID'
    end
    object QOthinvREDUAFT: TFloatField
      FieldName = 'REDUAFT'
    end
    object QOthinvPAYTYPE: TStringField
      FieldName = 'PAYTYPE'
      Size = 2
    end
    object QOthinvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QOthinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QOthinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QOthinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOthinvCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QOthinvCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QOthinvPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QOthinvPTYPE: TStringField
      FieldName = 'PTYPE'
      Size = 1
    end
    object QOthinvDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QOthinvVATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object QOthinvBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
    end
    object QOthinvBILLDT: TDateField
      FieldName = 'BILLDT'
    end
  end
  object SoOthinv: TDataSource
    DataSet = QOthinv
    Left = 205
    Top = 240
  end
  object Condpay: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'select * from SCondpay')
    Left = 428
    Top = 164
  end
  object QDbconfig: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SDBCONFIG')
    Left = 473
    Top = 214
  end
  object QSVMAST: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SVMAST WHERE STRNO='#39#39)
    Left = 265
    Top = 248
  end
  object QArinvoi: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ARINVOI')
    Left = 325
    Top = 240
  end
  object QTaxsal2: TFDQuery
    BeforePost = QTaxsal2BeforePost
    AfterPost = QTaxsal2AfterPost
    AfterCancel = QTaxsal2AfterCancel
    BeforeDelete = QTaxsal2BeforeDelete
    AfterDelete = QTaxsal2AfterPost
    OnCalcFields = QTaxsal2CalcFields
    OnNewRecord = QTaxsal2NewRecord
    CachedUpdates = True
    OnUpdateError = QTaxsal2UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM TAXSAL')
    Left = 376
    Top = 4
    object QTaxsal2TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QTaxsal2TAXDATE: TDateField
      FieldName = 'TAXDATE'
      OnValidate = QTaxsal2TAXDATEValidate
    end
    object QTaxsal2TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      OnValidate = QTaxsal2TAXREFNOValidate
      Size = 12
    end
    object QTaxsal2JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QTaxsal2DESC1: TStringField
      FieldName = 'DESC1'
      Size = 55
    end
    object QTaxsal2CUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QTaxsal2VATRT: TFloatField
      FieldName = 'VATRT'
      OnValidate = QTaxsal2REDUValidate
    end
    object QTaxsal2AMOUNT: TFloatField
      FieldName = 'AMOUNT'
      OnValidate = QTaxsal2REDUValidate
      DisplayFormat = '#,##0.00'
    end
    object QTaxsal2REDU: TFloatField
      FieldName = 'REDU'
      OnValidate = QTaxsal2REDUValidate
      DisplayFormat = '#,##0.00'
    end
    object QTaxsal2BALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QTaxsal2VAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object QTaxsal2TOTTAX: TFloatField
      FieldName = 'TOTTAX'
      DisplayFormat = '#,##0.00'
    end
    object QTaxsal2FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QTaxsal2CANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object QTaxsal2SYSTM: TStringField
      FieldName = 'SYSTM'
      Size = 5
    end
    object QTaxsal2USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QTaxsal2TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QTaxsal2CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QTaxsal2CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QTaxsal2POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QTaxsal2LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QTaxsal2LOCATValidate
      Size = 5
    end
    object QTaxsal2PAYTYP: TStringField
      FieldName = 'PAYTYP'
      Size = 1
    end
    object QTaxsal2FRSV: TStringField
      FieldName = 'FRSV'
      Size = 1
    end
    object QTaxsal2Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QTaxsal2MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
  end
  object SoTaxsal2: TDataSource
    DataSet = QTaxsal2
    Left = 436
    Top = 4
  end
  object QArinvoi2: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'select * from arinvoi')
    Left = 376
    Top = 52
  end
  object SoArinvoi2: TDataSource
    DataSet = QArinvoi2
    Left = 436
    Top = 52
  end
  object Qduedat: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 380
    Top = 144
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 380
    Top = 240
  end
  object QInvanls: TFDQuery
    Connection = DM_SEC.HI_DBMS
    FetchOptions.AssignedValues = [evUnidirectional]
    FetchOptions.Unidirectional = True
    Left = 325
    Top = 146
  end
  object QCN_Serv: TFDQuery
    AfterPost = QCN_ServAfterPost
    AfterDelete = QCN_ServAfterPost
    OnNewRecord = QCN_ServNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 436
    Top = 104
  end
  object QArpaytrn_Typ: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARPAYTRN_TYP')
    Left = 22
    Top = 440
    object QArpaytrn_TypPAYCODE: TStringField
      FieldName = 'PAYCODE'
      FixedChar = True
      Size = 2
    end
    object QArpaytrn_TypBANKCOD: TStringField
      FieldName = 'BANKCOD'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn_TypDTONCHQ: TDateField
      FieldName = 'DTONCHQ'
    end
    object QArpaytrn_TypBANKBOOKCOD: TStringField
      FieldName = 'BANKBOOKCOD'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn_TypDTONBANK: TDateField
      FieldName = 'DTONBANK'
    end
    object QArpaytrn_TypBANKLOCAT: TStringField
      FieldName = 'BANKLOCAT'
      Size = 50
    end
    object QArpaytrn_TypAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn_TypCANFL: TStringField
      FieldName = 'CANFL'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn_TypCANDT: TDateTimeField
      FieldName = 'CANDT'
    end
    object QArpaytrn_TypBILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn_TypBILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object QArpaytrn_TypCHQNO: TStringField
      FieldName = 'CHQNO'
      FixedChar = True
      Size = 8
    end
  end
  object SoChqtran_Typ: TDataSource
    DataSet = QArpaytrn_Typ
    Left = 99
    Top = 440
  end
  object QArpaytrn_Typ1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARPAYTRN_TYP')
    Left = 214
    Top = 440
    object QArpaytrn_Typ1BILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn_Typ1BILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object QArpaytrn_Typ1PAYCODE: TStringField
      FieldName = 'PAYCODE'
      FixedChar = True
      Size = 2
    end
    object QArpaytrn_Typ1BANKCOD: TStringField
      FieldName = 'BANKCOD'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn_Typ1CHQNO: TStringField
      FieldName = 'CHQNO'
      FixedChar = True
      Size = 8
    end
    object QArpaytrn_Typ1DTONCHQ: TDateField
      FieldName = 'DTONCHQ'
    end
    object QArpaytrn_Typ1BANKBOOKCOD: TStringField
      FieldName = 'BANKBOOKCOD'
      FixedChar = True
      Size = 12
    end
    object QArpaytrn_Typ1DTONBANK: TDateField
      FieldName = 'DTONBANK'
    end
    object QArpaytrn_Typ1BANKLOCAT: TStringField
      FieldName = 'BANKLOCAT'
      Size = 50
    end
    object QArpaytrn_Typ1AMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '##,##0.00'
    end
    object QArpaytrn_Typ1CANFL: TStringField
      FieldName = 'CANFL'
      FixedChar = True
      Size = 1
    end
    object QArpaytrn_Typ1CANDT: TDateTimeField
      FieldName = 'CANDT'
    end
  end
  object SoChqtran_Typ1: TDataSource
    DataSet = QArpaytrn_Typ1
    Left = 323
    Top = 440
  end
  object Query3: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 380
    Top = 296
  end
end
