object Dm_Ar: TDm_Ar
  OldCreateOrder = True
  OnCreate = Dm_ArCreate
  Height = 438
  Width = 471
  object QArbill: TFDQuery
    AutoCalcFields = False
    BeforePost = QArbillBeforePost
    AfterPost = QArbillAfterPost
    AfterCancel = QArbillAfterCancel
    BeforeDelete = QArbillBeforeDelete
    AfterDelete = QArbillAfterDelete
    OnCalcFields = QArbillCalcFields
    OnNewRecord = QArbillNewRecord
    CachedUpdates = True
    OnUpdateError = QArbillUpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARBILL')
    Left = 14
    Top = 58
    object QArbillARBILNO: TStringField
      FieldName = 'ARBILNO'
      Size = 12
    end
    object QArbillLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QArbillLOCATValidate
      Size = 5
    end
    object QArbillBDATE: TDateField
      FieldName = 'BDATE'
      OnValidate = QArbillBDATEValidate
    end
    object QArbillCUSCODE: TStringField
      FieldName = 'CUSCODE'
      OnChange = QArbillCUSCODEChange
      Size = 12
    end
    object QArbillDESC: TStringField
      FieldName = 'DESC'
      Size = 55
    end
    object QArbillDATE1: TDateField
      FieldName = 'DATE1'
    end
    object QArbillITEMS: TFloatField
      FieldName = 'ITEMS'
    end
    object QArbillAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object QArbillPAYAMT: TFloatField
      FieldName = 'PAYAMT'
      DisplayFormat = '#,##0.00'
    end
    object QArbillFDUE: TDateField
      FieldName = 'FDUE'
    end
    object QArbillLDUE: TDateField
      FieldName = 'LDUE'
    end
    object QArbillREFBIL: TStringField
      FieldName = 'REFBIL'
      Size = 12
    end
    object QArbillUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QArbillTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QArbillUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QArbillTYPE: TStringField
      FieldName = 'TYPE'
      Size = 1
    end
    object QArbillBF_VAT: TFloatField
      FieldName = 'BF_VAT'
    end
    object QArbillVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QArbillREFCODE: TStringField
      FieldName = 'REFCODE'
      Size = 15
    end
    object QArbillDEPOSIT_NO: TFloatField
      FieldName = 'DEPOSIT_NO'
    end
    object QArbillDEPOSIT_AMNT: TFloatField
      FieldName = 'DEPOSIT_AMNT'
      DisplayFormat = '##,##0.00'
    end
    object QArbillDEPOSIT_DOC: TStringField
      FieldName = 'DEPOSIT_DOC'
      OnValidate = QArbillDEPOSIT_DOCValidate
    end
  end
  object SoArbill: TDataSource
    DataSet = QArbill
    Left = 66
    Top = 58
  end
  object QArbilTr: TFDQuery
    AfterPost = QArbilTrAfterPost
    BeforeDelete = QArbilTrBeforeDelete
    AfterDelete = QArbilTrAfterPost
    OnNewRecord = QArbilTrNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARBILTR')
    Left = 14
    Top = 112
    object QArbilTrARBILNO: TStringField
      FieldName = 'ARBILNO'
      Size = 12
    end
    object QArbilTrLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QArbilTrINVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QArbilTrINVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object QArbilTrDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QArbilTrBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QArbilTrPAYAMT: TFloatField
      FieldName = 'PAYAMT'
      DisplayFormat = '#,##0.00'
    end
    object QArbilTrNOPAY: TFloatField
      FieldName = 'NOPAY'
    end
    object QArbilTrJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QArbilTrTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QArbilTrTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QArbilTrBF_VAT: TFloatField
      FieldName = 'BF_VAT'
    end
    object QArbilTrVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QArbilTrFLGPAY: TStringField
      FieldName = 'FLGPAY'
      Size = 1
    end
    object QArbilTrREFBILLNO: TStringField
      FieldName = 'REFBILLNO'
      Size = 12
    end
  end
  object SoArbilTr: TDataSource
    DataSet = QArbilTr
    Left = 66
    Top = 112
  end
  object QCondpay: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SCONDPAY')
    Left = 403
    Top = 68
  end
  object QLastno: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    Left = 407
    Top = 190
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      
        'SELECT CUSCODE,LOCAT,INVNO,INVDATE,INVDUE,(KANG-RTNAMT) AS KANG,' +
        'TNOPAY AS '
      
        '    NOPAY  FROM ARINVOI WHERE (FLAG='#39'2'#39' OR FLAG='#39'D'#39') AND TNOPAY=' +
        '1 AND KANG>0 ')
    Left = 279
    Top = 54
  end
  object QArPay1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 14
    Top = 163
  end
  object SoArPay1: TDataSource
    DataSet = QArPay1
    Left = 66
    Top = 163
  end
  object QArinv1: TFDQuery
    BeforePost = QArinv1BeforePost
    AfterPost = QArinv1AfterPost
    AfterCancel = QArinv1AfterCancel
    BeforeDelete = QArinv1BeforeDelete
    AfterDelete = QArinv1AfterPost
    OnNewRecord = QArinv1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARINVOI')
    Left = 14
    Top = 5
    object QArinv1INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QArinv1LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QArinv1LOCATValidate
      Size = 5
    end
    object QArinv1CUSCODE: TStringField
      FieldName = 'CUSCODE'
      Size = 12
    end
    object QArinv1OFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object QArinv1INVDATE: TDateField
      FieldName = 'INVDATE'
      OnValidate = QArinv1INVDATEValidate
    end
    object QArinv1DESCRP: TStringField
      FieldName = 'DESCRP'
      Size = 55
    end
    object QArinv1VATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object QArinv1TOTAL: TFloatField
      FieldName = 'TOTAL'
      OnValidate = QArinv1TOTALValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv1DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv1DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv1BALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv1VATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv1VATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv1NETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv1SMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv1SMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv1KANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv1LPAID: TDateField
      FieldName = 'LPAID'
    end
    object QArinv1REDUAFT: TFloatField
      FieldName = 'REDUAFT'
    end
    object QArinv1TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object QArinv1L_DUE: TDateField
      FieldName = 'L_DUE'
    end
    object QArinv1BILL: TStringField
      FieldName = 'BILL'
      Size = 12
    end
    object QArinv1JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QArinv1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QArinv1STAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object QArinv1POST: TStringField
      FieldName = 'POST'
      Size = 1
    end
    object QArinv1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QArinv1CREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object QArinv1TNOPAY: TFloatField
      FieldName = 'TNOPAY'
    end
    object QArinv1TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QArinv1INVDUE: TDateField
      FieldName = 'INVDUE'
    end
    object QArinv1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QArinv1REFINV: TStringField
      FieldName = 'REFINV'
      Size = 12
    end
    object QArinv1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QArinv1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QArinv1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QArinv1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QArinv1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QArinv1RTNAMT: TFloatField
      FieldName = 'RTNAMT'
    end
    object QArinv1RTNDATE: TDateField
      FieldName = 'RTNDATE'
    end
    object QArinv1RTNNO: TStringField
      FieldName = 'RTNNO'
      Size = 12
    end
    object QArinv1PAYFOR: TStringField
      DisplayWidth = 3
      FieldName = 'PAYFOR'
      OnValidate = QArinv1PAYFORValidate
      Size = 3
    end
  end
  object SoArinv1: TDataSource
    DataSet = QArinv1
    Left = 70
    Top = 5
  end
  object QOfficer: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM OFFICER')
    Left = 234
    Top = 58
    object QOfficerOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object QOfficerOFFICNAM: TStringField
      FieldName = 'OFFICNAM'
      Size = 40
    end
  end
  object QArpaytr: TFDQuery
    BeforeEdit = QArpaytrBeforeEdit
    BeforePost = QArpaytrBeforePost
    AfterPost = QArpaytrAfterPost
    AfterCancel = QArpaytrAfterCancel
    OnCalcFields = QArpaytrCalcFields
    OnNewRecord = QArpaytrNewRecord
    CachedUpdates = True
    OnUpdateError = QArpaytrUpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARPAYTRN')
    Left = 16
    Top = 215
    object QArpaytrBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
    end
    object QArpaytrLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QArpaytrLOCATValidate
      Size = 5
    end
    object QArpaytrBILLDT: TDateField
      FieldName = 'BILLDT'
      OnValidate = QArpaytrBILLDTValidate
    end
    object QArpaytrCUSCODE: TStringField
      FieldName = 'CUSCODE'
      Size = 12
    end
    object QArpaytrPAYCONT: TStringField
      FieldName = 'PAYCONT'
      Size = 1
    end
    object QArpaytrCHQNUM: TFloatField
      FieldName = 'CHQNUM'
    end
    object QArpaytrTOTAL: TFloatField
      FieldName = 'TOTAL'
      OnValidate = QArpaytrTOTALValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrDISCT: TFloatField
      FieldName = 'DISCT'
    end
    object QArpaytrINVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = QArpaytrINVNOValidate
      Size = 12
    end
    object QArpaytrUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QArpaytrNETTOT: TFloatField
      FieldName = 'NETTOT'
      OnValidate = QArpaytrNETTOTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QArpaytrDISAMT: TFloatField
      FieldName = 'DISAMT'
      OnValidate = QArpaytrTOTALValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '######.##'
    end
    object QArpaytrTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QArpaytrCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QArpaytrCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QArpaytrPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QArpaytrIDCARD: TStringField
      FieldName = 'IDCARD'
    end
    object QArpaytrIDEXPDT: TDateField
      FieldName = 'IDEXPDT'
    end
    object QArpaytrVAT3: TFloatField
      FieldName = 'VAT3'
      OnValidate = QArpaytrVAT3Validate
    end
    object QArpaytrVAT3AMT: TFloatField
      FieldName = 'VAT3AMT'
      OnValidate = QArpaytrTOTALValidate
    end
    object QArpaytrADDAMT: TFloatField
      FieldName = 'ADDAMT'
      OnValidate = QArpaytrTOTALValidate
      DisplayFormat = '###,##0.00'
      EditFormat = '#######.##'
    end
    object QArpaytrJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QArpaytrSYSTM: TStringField
      FieldName = 'SYSTM'
      Size = 8
    end
    object QArpaytrMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QArpaytrUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QArpaytrBKCODE: TStringField
      FieldName = 'BKCODE'
      Size = 8
    end
    object QArpaytrBOOKNO: TStringField
      FieldName = 'BOOKNO'
      Size = 15
    end
    object QArpaytrPOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object QArpaytrTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QArpaytrPAYFOR: TStringField
      FieldName = 'PAYFOR'
      FixedChar = True
      Size = 2
    end
    object QArpaytrCLAIMTYP: TStringField
      FieldName = 'CLAIMTYP'
      FixedChar = True
      Size = 1
    end
    object QArpaytrPAYTYP: TStringField
      FieldName = 'PAYTYP'
      OnValidate = QArpaytrPAYTYPValidate
      Size = 2
    end
    object QArpaytrCSHAMT: TFloatField
      FieldName = 'CSHAMT'
      OnValidate = QArpaytrCSHAMTValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '######.##'
    end
    object QArpaytrCHQAMT: TFloatField
      FieldName = 'CHQAMT'
      OnValidate = QArpaytrCHQAMTValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '######.##'
    end
    object QArpaytrCREDITAMT: TFloatField
      FieldName = 'CREDITAMT'
      OnValidate = QArpaytrCREDITAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrBANKAMT: TFloatField
      FieldName = 'BANKAMT'
      OnValidate = QArpaytrBANKAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytrBANKFEE: TFloatField
      FieldName = 'BANKFEE'
      OnValidate = QArpaytrBANKFEEValidate
      DisplayFormat = '#,##0.00'
    end
  end
  object SoArpaytr: TDataSource
    DataSet = QArpaytr
    Left = 66
    Top = 215
  end
  object QArbill1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARBILL')
    Left = 122
    Top = 214
  end
  object SoArbill1: TDataSource
    DataSet = QArbill1
    Left = 176
    Top = 214
  end
  object QArchq: TFDQuery
    OnNewRecord = QArchqNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARCHQ')
    Left = 234
    Top = 5
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
      DisplayFormat = '##,##0.00'
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
    Left = 291
    Top = 5
  end
  object QArpaytr1: TFDQuery
    BeforeEdit = QArpaytr1BeforeEdit
    BeforePost = QArpaytr1BeforePost
    AfterPost = QArpaytr1AfterPost
    AfterCancel = QArpaytr1AfterCancel
    OnCalcFields = QArpaytr1CalcFields
    OnNewRecord = QArpaytr1NewRecord
    CachedUpdates = True
    OnUpdateError = QArpaytr1UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARPAYTRN')
    Left = 121
    Top = 112
    object QArpaytr1BILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 12
    end
    object QArpaytr1LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QArpaytr1LOCATValidate
      Size = 5
    end
    object QArpaytr1BILLDT: TDateField
      FieldName = 'BILLDT'
      OnValidate = QArpaytr1BILLDTValidate
    end
    object QArpaytr1CUSCODE: TStringField
      FieldName = 'CUSCODE'
      Size = 12
    end
    object QArpaytr1PAYCONT: TStringField
      FieldName = 'PAYCONT'
      Size = 1
    end
    object QArpaytr1CHQNUM: TFloatField
      FieldName = 'CHQNUM'
    end
    object QArpaytr1TOTAL: TFloatField
      FieldName = 'TOTAL'
      OnValidate = QArpaytr1TOTALValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytr1DISCT: TFloatField
      FieldName = 'DISCT'
    end
    object QArpaytr1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QArpaytr1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QArpaytr1NETTOT: TFloatField
      FieldName = 'NETTOT'
      OnValidate = QArpaytr1NETTOTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytr1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QArpaytr1DISAMT: TFloatField
      FieldName = 'DISAMT'
      OnValidate = QArpaytr1TOTALValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytr1JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QArpaytr1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QArpaytr1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QArpaytr1IDCARD: TStringField
      FieldName = 'IDCARD'
    end
    object QArpaytr1IDEXPDT: TDateField
      FieldName = 'IDEXPDT'
    end
    object QArpaytr1ADDAMT: TFloatField
      FieldName = 'ADDAMT'
      OnValidate = QArpaytr1TOTALValidate
      DisplayFormat = '###,##0.00'
      EditFormat = '#######.##'
    end
    object QArpaytr1VAT3: TFloatField
      FieldName = 'VAT3'
      OnValidate = QArpaytr1VAT3Validate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytr1VAT3AMT: TFloatField
      FieldName = 'VAT3AMT'
      OnValidate = QArpaytr1VAT3AMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytr1SYSTM: TStringField
      FieldName = 'SYSTM'
      Size = 8
    end
    object QArpaytr1UpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QArpaytr1BKCODE: TStringField
      FieldName = 'BKCODE'
      Size = 8
    end
    object QArpaytr1TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QArpaytr1BOOKNO: TStringField
      FieldName = 'BOOKNO'
      Size = 15
    end
    object QArpaytr1PAYFOR: TStringField
      FieldName = 'PAYFOR'
      Size = 2
    end
    object QArpaytr1POSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object QArpaytr1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QArpaytr1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QArpaytr1CLAIMTYP: TStringField
      FieldName = 'CLAIMTYP'
      FixedChar = True
      Size = 1
    end
    object QArpaytr1PAYTYP: TStringField
      DisplayWidth = 2
      FieldName = 'PAYTYP'
      OnValidate = QArpaytr1PAYTYPValidate
      Size = 2
    end
    object QArpaytr1INVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = QArpaytr1INVNOValidate
      Size = 12
    end
    object QArpaytr1CSHAMT: TFloatField
      FieldName = 'CSHAMT'
      OnValidate = QArpaytr1CSHAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytr1CHQAMT: TFloatField
      FieldName = 'CHQAMT'
      OnValidate = QArpaytr1CHQAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytr1CREDITAMT: TFloatField
      FieldName = 'CREDITAMT'
      OnValidate = QArpaytr1CREDITAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QArpaytr1BANKAMT: TFloatField
      FieldName = 'BANKAMT'
      OnValidate = QArpaytr1BANKAMTValidate
      DisplayFormat = '#,##0.00'
    end
  end
  object SoArpaytr1: TDataSource
    DataSet = QArpaytr1
    Left = 176
    Top = 112
  end
  object QArinv2: TFDQuery
    OnCalcFields = QArinv2CalcFields
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARINVOI')
    Left = 121
    Top = 163
    object QArinv2INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QArinv2LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QArinv2CUSCODE: TStringField
      FieldName = 'CUSCODE'
      Size = 12
    end
    object QArinv2INVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object QArinv2NETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv2SMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv2SMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv2KANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv2REDUAFT: TFloatField
      FieldName = 'REDUAFT'
      DisplayFormat = '#,##0.00'
    end
    object QArinv2LPAID: TDateField
      FieldName = 'LPAID'
    end
    object QArinv2VATRT: TFloatField
      FieldName = 'VATRT'
      EditFormat = '##########.##'
    end
    object QArinv2BILL: TStringField
      FieldName = 'BILL'
      Size = 12
    end
    object QArinv2RTNAMT: TFloatField
      FieldName = 'RTNAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '##########.##'
    end
    object QArinv2RTNDATE: TDateField
      FieldName = 'RTNDATE'
    end
    object QArinv2RTNNO: TStringField
      FieldName = 'RTNNO'
      Size = 12
    end
    object QArinv2JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QArinv2REFINV: TStringField
      FieldName = 'REFINV'
      Size = 12
    end
    object QArinv2TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object QArinv2BALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QArinv2VATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object QArinv2TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QArinv2Netamt_a: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Netamt_a'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object QArinv2PAYFOR: TStringField
      FieldName = 'PAYFOR'
      Size = 2
    end
  end
  object SoArinv2: TDataSource
    DataSet = QArinv2
    Left = 176
    Top = 163
  end
  object Arinv05: TFDQuery
    AfterPost = Arinv05AfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARINVOI')
    Left = 125
    Top = 5
    object Arinv05INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object Arinv05LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object Arinv05CUSCODE: TStringField
      FieldName = 'CUSCODE'
      Size = 12
    end
    object Arinv05OFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object Arinv05INVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object Arinv05DESCRP: TStringField
      FieldName = 'DESCRP'
      Size = 55
    end
    object Arinv05VATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object Arinv05TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object Arinv05DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object Arinv05DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '#,##0.00'
    end
    object Arinv05BALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object Arinv05VATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object Arinv05VATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object Arinv05NETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object Arinv05KANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
    end
    object Arinv05SMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
    end
    object Arinv05SMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
    end
    object Arinv05LPAID: TDateField
      FieldName = 'LPAID'
    end
    object Arinv05REDUAFT: TFloatField
      FieldName = 'REDUAFT'
    end
    object Arinv05TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object Arinv05L_DUE: TDateField
      FieldName = 'L_DUE'
    end
    object Arinv05BILL: TStringField
      FieldName = 'BILL'
      Size = 12
    end
    object Arinv05JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object Arinv05FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object Arinv05STAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object Arinv05POST: TStringField
      FieldName = 'POST'
      Size = 1
    end
    object Arinv05MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object Arinv05CREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object Arinv05TNOPAY: TFloatField
      FieldName = 'TNOPAY'
    end
    object Arinv05TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object Arinv05INVDUE: TDateField
      FieldName = 'INVDUE'
    end
    object Arinv05TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object Arinv05REFINV: TStringField
      FieldName = 'REFINV'
      Size = 12
    end
    object Arinv05USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object Arinv05TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
  end
  object SoArinv05: TDataSource
    DataSet = Arinv05
    Left = 177
    Top = 5
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 234
    Top = 165
  end
  object QArbiltr1: TFDQuery
    AfterOpen = QArbiltr1AfterOpen
    BeforeClose = QArbiltr1BeforeClose
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARBILTR')
    Left = 14
    Top = 268
  end
  object SoArbiltr1: TDataSource
    DataSet = QArbiltr1
    Left = 66
    Top = 268
  end
  object QInvbil: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 234
    Top = 112
  end
  object SoInvbil: TDataSource
    DataSet = QInvbil
    Left = 291
    Top = 110
  end
  object TArinvoi: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'INVNO;LOCAT'
    MasterSource = SoArbiltr1
    MasterFields = 'INVNO;LOCAT'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    UpdateOptions.UpdateTableName = 'ARINVOI'
    TableName = 'ARINVOI'
    Left = 120
    Top = 268
  end
  object QTaxsal: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 234
    Top = 216
  end
  object QDbconfig: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SDBCONFIG')
    Left = 403
    Top = 131
  end
  object SoDbconfig: TDataSource
    DataSet = QDbconfig
    Left = 351
    Top = 144
  end
  object QAr_Serv1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 295
    Top = 216
  end
  object QArcred: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 335
    Top = 8
  end
  object QArfinc: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 235
    Top = 272
  end
  object QOthinv: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 331
    Top = 60
  end
  object QPayfor: TFDQuery
    AfterPost = QPayforAfterPost
    AfterDelete = QPayforAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM PAYFOR')
    Left = 291
    Top = 276
  end
  object QVatMast: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM VATMAST')
    Left = 368
    Top = 220
  end
  object SoArOthr: TDataSource
    DataSet = QArOthr
    Left = 188
    Top = 60
  end
  object QArOthr: TFDQuery
    BeforePost = QArOthrBeforePost
    AfterPost = QArOthrAfterPost
    BeforeDelete = QArOthrBeforeDelete
    AfterDelete = QArOthrAfterPost
    OnCalcFields = QArOthrCalcFields
    OnNewRecord = QArOthrNewRecord
    CachedUpdates = True
    OnUpdateError = QArOthrUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM AROTHR')
    Left = 128
    Top = 60
    object QArOthrARCONT: TStringField
      FieldName = 'ARCONT'
      OnValidate = QArOthrARCONTValidate
      Size = 12
    end
    object QArOthrTSALE: TStringField
      FieldName = 'TSALE'
      OnValidate = QArOthrTSALEValidate
      Size = 1
    end
    object QArOthrCONTNO: TStringField
      FieldName = 'CONTNO'
      OnValidate = QArOthrCONTNOValidate
      Size = 12
    end
    object QArOthrCUSCOD: TStringField
      FieldName = 'CUSCOD'
      OnValidate = QArOthrCUSCODValidate
      Size = 12
    end
    object QArOthrLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QArOthrPAYFOR: TStringField
      FieldName = 'PAYFOR'
      OnValidate = QArOthrPAYFORValidate
      Size = 3
    end
    object QArOthrPAYAMT: TFloatField
      FieldName = 'PAYAMT'
      DisplayFormat = '##,##0.00'
    end
    object QArOthrVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QArOthrTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QArOthrARDATE: TDateField
      FieldName = 'ARDATE'
      OnValidate = QArOthrARDATEValidate
    end
    object QArOthrSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '##,##0.00'
    end
    object QArOthrSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '##,##0.00'
    end
    object QArOthrBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '##,##0.00'
    end
    object QArOthrUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QArOthrUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QArOthrDDATE: TDateField
      FieldName = 'DDATE'
    end
    object QArOthrINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QArOthrFOLLOWCODE: TStringField
      FieldName = 'FOLLOWCODE'
      FixedChar = True
      Size = 8
    end
    object QArOthrMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 512
    end
  end
  object QArpaytrn_Typ: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARPAYTRN_TYP')
    Left = 46
    Top = 344
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
    Left = 123
    Top = 344
  end
  object QArpaytrn_Typ1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM ARPAYTRN_TYP')
    Left = 230
    Top = 360
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
    Top = 368
  end
end
