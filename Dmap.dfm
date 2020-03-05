object Dm_Ap1: TDm_Ap1
  OldCreateOrder = True
  OnCreate = Dm_Ap1Create
  Height = 362
  Width = 519
  object QApbill: TFDQuery
    BeforePost = QApbillBeforePost
    AfterPost = QApbillAfterPost
    AfterCancel = QApbillAfterCancel
    BeforeDelete = QApbillBeforeDelete
    AfterDelete = QApbillAfterPost
    OnNewRecord = QApbillNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM APBILL')
    Left = 20
    Top = 11
    object QApbillAPBILNO: TStringField
      FieldName = 'APBILNO'
      Size = 12
    end
    object QApbillLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QApbillLOCATValidate
      Size = 5
    end
    object QApbillBDATE: TDateField
      FieldName = 'BDATE'
      OnValidate = QApbillBDATEValidate
    end
    object QApbillAPCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object QApbillDESC: TStringField
      FieldName = 'DESC'
      Size = 55
    end
    object QApbillITEMS: TFloatField
      FieldName = 'ITEMS'
    end
    object QApbillAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object QApbillPAYAMT: TFloatField
      FieldName = 'PAYAMT'
      DisplayFormat = '#,##0.00'
    end
    object QApbillUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QApbillTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QApbillDATE1: TDateField
      FieldName = 'DATE1'
    end
    object QApbillFDUE: TDateField
      FieldName = 'FDUE'
    end
    object QApbillLDUE: TDateField
      FieldName = 'LDUE'
    end
    object QApbillREFBIL: TStringField
      FieldName = 'REFBIL'
      Size = 12
    end
    object QApbillTYPE: TStringField
      FieldName = 'TYPE'
      Size = 1
    end
  end
  object SoApbill: TDataSource
    DataSet = QApbill
    Left = 81
    Top = 11
  end
  object QLocat: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'select * from INVLOCAT')
    Left = 389
    Top = 164
  end
  object QApinv: TFDQuery
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM APINVOI')
    Left = 81
    Top = 162
  end
  object QApbiltr: TFDQuery
    AfterPost = QApbiltrAfterPost
    AfterDelete = QApbiltrAfterPost
    OnNewRecord = QApbiltrNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM    APBILTR')
    Left = 20
    Top = 111
    object QApbiltrAPBILNO: TStringField
      FieldName = 'APBILNO'
      Size = 12
    end
    object QApbiltrLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QApbiltrINVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QApbiltrINVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object QApbiltrDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QApbiltrBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QApbiltrPAYAMT: TFloatField
      FieldName = 'PAYAMT'
      DisplayFormat = '#,##0.00'
    end
    object QApbiltrNOPAY: TFloatField
      FieldName = 'NOPAY'
    end
  end
  object SoApbiltr: TDataSource
    DataSet = QApbiltr
    Left = 81
    Top = 111
  end
  object QAppay1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 20
    Top = 162
  end
  object QLastno: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    Left = 449
    Top = 61
  end
  object QCondPay: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SCONDPAY')
    Left = 449
    Top = 227
  end
  object QAppaytr: TFDQuery
    BeforePost = QAppaytrBeforePost
    AfterPost = QAppaytrAfterPost
    AfterCancel = QAppaytrAfterCancel
    OnCalcFields = QAppaytrCalcFields
    OnNewRecord = QAppaytrNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM APPAYTRN')
    Left = 142
    Top = 11
    object QAppaytrTCHQ1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TCHQ1'
      Calculated = True
    end
    object QAppaytrBILLNO: TStringField
      FieldName = 'BILLNO'
      OnValidate = QAppaytrBILLNOValidate
      Size = 12
    end
    object QAppaytrLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QAppaytrBILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object QAppaytrAPCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object QAppaytrPAYCONT: TStringField
      FieldName = 'PAYCONT'
      Size = 1
    end
    object QAppaytrCHQNUM: TFloatField
      FieldName = 'CHQNUM'
    end
    object QAppaytrCHQAMT: TFloatField
      FieldName = 'CHQAMT'
      DisplayFormat = '#,##0.00'
    end
    object QAppaytrCSHAMT: TFloatField
      FieldName = 'CSHAMT'
      OnValidate = QAppaytrCSHAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QAppaytrTOTAL: TFloatField
      FieldName = 'TOTAL'
      OnValidate = QAppaytrTOTALValidate
      DisplayFormat = '#,##0.00'
    end
    object QAppaytrDISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object QAppaytrDISAMT: TFloatField
      FieldName = 'DISAMT'
      DisplayFormat = '#,##0.00'
    end
    object QAppaytrADDAMT: TFloatField
      FieldName = 'ADDAMT'
      OnValidate = QAppaytrADDAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QAppaytrNETTOT: TFloatField
      FieldName = 'NETTOT'
      OnValidate = QAppaytrNETTOTValidate
      DisplayFormat = '#,##0.00'
    end
    object QAppaytrINVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = QAppaytrINVNOValidate
      Size = 12
    end
    object QAppaytrUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QAppaytrTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QAppaytrFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QAppaytrPAYTYP: TStringField
      FieldName = 'PAYTYP'
      Size = 2
    end
    object QAppaytrCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QAppaytrCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QAppaytrPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QAppaytrUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QAppaytrSYSTM: TStringField
      FieldName = 'SYSTM'
      Size = 8
    end
    object QAppaytrMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QAppaytrVAT3: TFloatField
      FieldName = 'VAT3'
      OnValidate = QAppaytrVAT3Validate
    end
    object QAppaytrVAT3AMT: TFloatField
      FieldName = 'VAT3AMT'
      OnValidate = QAppaytrVAT3AMTValidate
    end
  end
  object SoAppaytr: TDataSource
    DataSet = QAppaytr
    Left = 203
    Top = 11
  end
  object QApchq: TFDQuery
    BeforePost = QApchqBeforePost
    OnNewRecord = QApchqNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 142
    Top = 61
  end
  object SoApchq: TDataSource
    DataSet = QApchq
    Left = 203
    Top = 61
  end
  object QApbill1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM APBILL')
    Left = 142
    Top = 111
  end
  object SoApbill1: TDataSource
    DataSet = QApbill1
    Left = 203
    Top = 111
  end
  object QAppaytr1: TFDQuery
    AutoCalcFields = False
    BeforePost = QAppaytr1BeforePost
    AfterPost = QAppaytr1AfterPost
    AfterCancel = QAppaytr1AfterCancel
    OnNewRecord = QAppaytr1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM APPAYTRN')
    Left = 268
    Top = 11
    object QAppaytr1BILLNO: TStringField
      FieldName = 'BILLNO'
      OnValidate = QAppaytr1BILLNOValidate
      Size = 12
    end
    object QAppaytr1LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QAppaytr1BILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object QAppaytr1APCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object QAppaytr1PAYTYP: TStringField
      FieldName = 'PAYTYP'
      OnValidate = QAppaytr1PAYTYPValidate
      Size = 2
    end
    object QAppaytr1PAYCONT: TStringField
      FieldName = 'PAYCONT'
      Size = 1
    end
    object QAppaytr1CHQNUM: TFloatField
      FieldName = 'CHQNUM'
      DisplayFormat = '#,##0.00'
    end
    object QAppaytr1CHQAMT: TFloatField
      FieldName = 'CHQAMT'
      DisplayFormat = '#,##0.00'
    end
    object QAppaytr1CSHAMT: TFloatField
      FieldName = 'CSHAMT'
      OnValidate = QAppaytr1CSHAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QAppaytr1TOTAL: TFloatField
      FieldName = 'TOTAL'
      OnValidate = QAppaytr1TOTALValidate
      DisplayFormat = '#,##0.00'
    end
    object QAppaytr1DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object QAppaytr1DISAMT: TFloatField
      FieldName = 'DISAMT'
      OnValidate = QAppaytr1DISAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QAppaytr1ADDAMT: TFloatField
      FieldName = 'ADDAMT'
      OnValidate = QAppaytr1ADDAMTValidate
      DisplayFormat = '#,##0.00'
    end
    object QAppaytr1NETTOT: TFloatField
      FieldName = 'NETTOT'
      OnValidate = QAppaytr1NETTOTValidate
      DisplayFormat = '#,##0.00'
    end
    object QAppaytr1INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QAppaytr1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QAppaytr1SYSTM: TStringField
      FieldName = 'SYSTM'
      Size = 8
    end
    object QAppaytr1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QAppaytr1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QAppaytr1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QAppaytr1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QAppaytr1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QAppaytr1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QAppaytr1VAT3: TFloatField
      FieldName = 'VAT3'
      OnValidate = QAppaytr1VAT3Validate
    end
    object QAppaytr1VAT3AMT: TFloatField
      FieldName = 'VAT3AMT'
      OnValidate = QAppaytr1VAT3AMTValidate
    end
  end
  object SoAppaytr1: TDataSource
    DataSet = QAppaytr1
    Left = 333
    Top = 11
  end
  object QApinv3: TFDQuery
    BeforePost = QApinv3BeforePost
    AfterPost = QApinv3AfterPost
    AfterCancel = QApinv3AfterCancel
    BeforeDelete = QApinv3BeforeDelete
    AfterDelete = QApinv3AfterPost
    OnNewRecord = QApinv3NewRecord
    CachedUpdates = True
    OnUpdateError = QApinv3UpdateError
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'select * from APINVOI')
    Left = 264
    Top = 163
    object QApinv3INVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = QApinv3INVNOValidate
      Size = 12
    end
    object QApinv3LOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QApinv3LOCATValidate
      Size = 5
    end
    object QApinv3RECVDT: TDateField
      FieldName = 'RECVDT'
      OnValidate = QApinv3RECVDTValidate
    end
    object QApinv3RECVNO: TStringField
      FieldName = 'RECVNO'
      OnChange = QApinv3RECVNOChange
      Size = 12
    end
    object QApinv3INVDUE: TDateField
      FieldName = 'INVDUE'
    end
    object QApinv3TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QApinv3OFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      OnValidate = QApinv3OFFICCODValidate
      Size = 5
    end
    object QApinv3INVDATE: TDateField
      FieldName = 'INVDATE'
      OnValidate = QApinv3CREDTMValidate
    end
    object QApinv3DESCRP: TStringField
      FieldName = 'DESCRP'
      Size = 55
    end
    object QApinv3VATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object QApinv3TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object QApinv3DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object QApinv3APCODE: TStringField
      FieldName = 'APCODE'
      FixedChar = True
      Size = 12
    end
    object QApinv3DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '#,##0.00'
    end
    object QApinv3BALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QApinv3NETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object QApinv3TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QApinv3SMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
    end
    object QApinv3SMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
    end
    object QApinv3LPAID: TDateField
      FieldName = 'LPAID'
      DisplayFormat = '#,##0.00'
    end
    object QApinv3KANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
    end
    object QApinv3REDUAFT: TFloatField
      FieldName = 'REDUAFT'
    end
    object QApinv3TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object QApinv3FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QApinv3STAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object QApinv3POST: TStringField
      FieldName = 'POST'
      Size = 1
    end
    object QApinv3MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QApinv3DISC: TFloatField
      FieldName = 'DISC'
    end
    object QApinv3USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QApinv3TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QApinv3CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QApinv3RTNDATE: TDateField
      FieldName = 'RTNDATE'
    end
    object QApinv3CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QApinv3POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QApinv3VATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QApinv3VATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QApinv3DEPOSIT: TStringField
      FieldName = 'DEPOSIT'
      Size = 1
    end
    object QApinv3RTNAMT: TFloatField
      FieldName = 'RTNAMT'
    end
    object QApinv3RTNNO: TStringField
      FieldName = 'RTNNO'
      Size = 12
    end
    object QApinv3PAYCD: TStringField
      FieldName = 'PAYCD'
      Size = 10
    end
    object QApinv3YEAR1: TStringField
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object QApinv3POSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
    object QApinv3BANKBOOKCOD: TStringField
      FieldName = 'BANKBOOKCOD'
      FixedChar = True
      Size = 12
    end
    object QApinv3Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QApinv3CREDTM: TIntegerField
      FieldName = 'CREDTM'
      Origin = 'CREDTM'
      OnValidate = QApinv3CREDTMValidate
    end
    object QApinv3TNOPAY: TIntegerField
      FieldName = 'TNOPAY'
      Origin = 'TNOPAY'
    end
  end
  object SoApinv3: TDataSource
    DataSet = QApinv3
    Left = 333
    Top = 163
  end
  object QOfficer: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM OFFICER')
    Left = 389
    Top = 61
  end
  object QApbiltr1: TFDQuery
    AfterOpen = QApbiltr1AfterOpen
    BeforeClose = QApbiltr1BeforeClose
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM APBILTR')
    Left = 142
    Top = 163
  end
  object SoApbiltr1: TDataSource
    DataSet = QApbiltr1
    Left = 203
    Top = 163
  end
  object QTaxbuy: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 268
    Top = 212
  end
  object QApchq1: TFDQuery
    BeforePost = QApchq1BeforePost
    OnNewRecord = QApchq1NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM APCHQ')
    Left = 268
    Top = 113
  end
  object SoApchq1: TDataSource
    DataSet = QApchq1
    Left = 333
    Top = 113
  end
  object Apinv05: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM APINVOI')
    Left = 20
    Top = 212
    object Apinv05INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object Apinv05LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object Apinv05APCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object Apinv05RECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object Apinv05RECVNO: TStringField
      FieldName = 'RECVNO'
      Size = 12
    end
    object Apinv05CREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object Apinv05INVDUE: TDateField
      FieldName = 'INVDUE'
    end
    object Apinv05TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object Apinv05OFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object Apinv05INVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object Apinv05DESCRP: TStringField
      FieldName = 'DESCRP'
      Size = 55
    end
    object Apinv05VATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object Apinv05TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object Apinv05DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object Apinv05DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '#,##0.00'
    end
    object Apinv05BALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object Apinv05VATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object Apinv05VATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object Apinv05NETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object Apinv05KANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
    end
    object Apinv05TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object Apinv05SMPAY: TFloatField
      FieldName = 'SMPAY'
    end
    object Apinv05SMCHQ: TFloatField
      FieldName = 'SMCHQ'
    end
    object Apinv05LPAID: TDateField
      FieldName = 'LPAID'
    end
    object Apinv05REDUAFT: TFloatField
      FieldName = 'REDUAFT'
    end
    object Apinv05TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object Apinv05TNOPAY: TFloatField
      FieldName = 'TNOPAY'
    end
    object Apinv05L_DUE: TDateField
      FieldName = 'L_DUE'
    end
    object Apinv05BILL: TStringField
      FieldName = 'BILL'
      Size = 12
    end
    object Apinv05JOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object Apinv05FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object Apinv05STAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object Apinv05POST: TStringField
      FieldName = 'POST'
      Size = 1
    end
    object Apinv05MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object Apinv05DISC: TFloatField
      FieldName = 'DISC'
    end
    object Apinv05USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object Apinv05TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object Apinv05CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object Apinv05CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object Apinv05POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
  end
  object SoApinv05: TDataSource
    DataSet = Apinv05
    Left = 81
    Top = 212
  end
  object QApinv1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT  *  FROM  APINVOI')
    Left = 268
    Top = 62
    object QApinv1INVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object QApinv1LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QApinv1APCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object QApinv1RECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object QApinv1RECVNO: TStringField
      FieldName = 'RECVNO'
      Size = 12
    end
    object QApinv1CREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object QApinv1INVDUE: TDateField
      FieldName = 'INVDUE'
    end
    object QApinv1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QApinv1OFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object QApinv1INVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object QApinv1VATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object QApinv1TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1DISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1BALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1VATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1VATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1NETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QApinv1SMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1SMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1LPAID: TDateField
      FieldName = 'LPAID'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1KANG: TFloatField
      FieldName = 'KANG'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1REDUAFT: TFloatField
      FieldName = 'REDUAFT'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object QApinv1TNOPAY: TFloatField
      FieldName = 'TNOPAY'
    end
    object QApinv1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QApinv1STAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object QApinv1POST: TStringField
      FieldName = 'POST'
      Size = 1
    end
    object QApinv1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QApinv1DISC: TFloatField
      FieldName = 'DISC'
    end
    object QApinv1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QApinv1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QApinv1RTNAMT: TFloatField
      FieldName = 'RTNAMT'
      DisplayFormat = '#,##0.00'
    end
    object QApinv1RTNDATE: TDateField
      FieldName = 'RTNDATE'
    end
    object QApinv1RTNNO: TStringField
      FieldName = 'RTNNO'
      Size = 12
    end
    object QApinv1DESCRP: TStringField
      FieldName = 'DESCRP'
      FixedChar = True
      Size = 55
    end
    object QApinv1BILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object QApinv1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QApinv1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QApinv1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QApinv1DEPOSIT: TStringField
      FieldName = 'DEPOSIT'
      FixedChar = True
      Size = 1
    end
    object QApinv1YEAR1: TStringField
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object QApinv1PAYCD: TStringField
      FieldName = 'PAYCD'
      FixedChar = True
      Size = 10
    end
  end
  object SoApinv1: TDataSource
    DataSet = QApinv1
    Left = 333
    Top = 64
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 388
    Top = 12
  end
  object QAppay: TFDQuery
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT APCODE,LOCAT,INVNO,INVDATE,INVDUE,KANG,TNOPAY AS '
      '    NOPAY  FROM APINVOI')
    Left = 20
    Top = 61
  end
  object SoAppay: TDataSource
    DataSet = QAppay
    Left = 81
    Top = 61
  end
  object TApinvoi: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'INVNO'
    MasterSource = SoApbiltr1
    MasterFields = 'INVNO'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    UpdateOptions.UpdateTableName = 'APINVOI'
    TableName = 'APINVOI'
    Left = 144
    Top = 212
  end
  object TAppay: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'INVNO;LOCAT'
    MasterSource = SoApbiltr1
    MasterFields = 'INVNO;LOCAT'
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    UpdateOptions.UpdateTableName = 'APPAY'
    TableName = 'APPAY'
    Left = 203
    Top = 212
    object TAppayINVNO: TStringField
      FieldName = 'INVNO'
      Required = True
      Size = 12
    end
    object TAppayLOCAT: TStringField
      FieldName = 'LOCAT'
      Required = True
      Size = 5
    end
    object TAppayNOPAY: TFloatField
      FieldName = 'NOPAY'
      Required = True
    end
    object TAppayDDATE: TDateField
      FieldName = 'DDATE'
    end
    object TAppayDAMT: TFloatField
      FieldName = 'DAMT'
    end
    object TAppayV_DAMT: TFloatField
      FieldName = 'V_DAMT'
    end
    object TAppayN_DAMT: TFloatField
      FieldName = 'N_DAMT'
    end
    object TAppayDATE1: TDateField
      FieldName = 'DATE1'
    end
    object TAppayPAYMENT: TFloatField
      FieldName = 'PAYMENT'
    end
    object TAppayV_PAYMENT: TFloatField
      FieldName = 'V_PAYMENT'
    end
    object TAppayN_PAYMENT: TFloatField
      FieldName = 'N_PAYMENT'
    end
    object TAppayVATRT: TFloatField
      FieldName = 'VATRT'
    end
  end
  object QDbconfig: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SDBCONFIG')
    Left = 450
    Top = 112
  end
  object QTaxbuy2: TFDQuery
    BeforePost = QTaxbuy2BeforePost
    AfterPost = QTaxbuy2AfterPost
    AfterCancel = QTaxbuy2AfterCancel
    OnNewRecord = QTaxbuy2NewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM TAXBUY')
    Left = 203
    Top = 260
    object QTaxbuy2TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QTaxbuy2TAXDATE: TDateField
      FieldName = 'TAXDATE'
      OnValidate = QTaxbuy2TAXDATEValidate
    end
    object QTaxbuy2TAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      OnValidate = QTaxbuy2TAXREFNOValidate
      Size = 12
    end
    object QTaxbuy2DESC1: TStringField
      FieldName = 'DESC1'
      Size = 55
    end
    object QTaxbuy2CUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QTaxbuy2VATRT: TFloatField
      FieldName = 'VATRT'
      OnValidate = QTaxbuy2REDUValidate
    end
    object QTaxbuy2AMOUNT: TFloatField
      FieldName = 'AMOUNT'
      OnValidate = QTaxbuy2AMOUNTValidate
    end
    object QTaxbuy2REDU: TFloatField
      FieldName = 'REDU'
      OnValidate = QTaxbuy2REDUValidate
    end
    object QTaxbuy2BALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object QTaxbuy2VAT: TFloatField
      FieldName = 'VAT'
    end
    object QTaxbuy2TOTTAX: TFloatField
      FieldName = 'TOTTAX'
    end
    object QTaxbuy2FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QTaxbuy2CANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object QTaxbuy2USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QTaxbuy2TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QTaxbuy2CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QTaxbuy2CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QTaxbuy2POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QTaxbuy2LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
  end
  object SoTaxbuy2: TDataSource
    DataSet = QTaxbuy2
    Left = 268
    Top = 260
  end
  object QApinv2: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 331
    Top = 260
  end
  object Condpay: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM SCONDPAY')
    Left = 450
    Top = 164
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 332
    Top = 212
  end
end
