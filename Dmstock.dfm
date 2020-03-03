object Dmstk: TDmstk
  OldCreateOrder = False
  Height = 250
  Width = 376
  object QInvoi: TFDQuery
    AfterEdit = QInvoiAfterEdit
    BeforePost = QInvoiBeforePost
    AfterPost = QInvoiAfterPost
    AfterCancel = QInvoiAfterCancel
    BeforeDelete = QInvoiBeforeDelete
    AfterDelete = QInvoiAfterPost
    OnCalcFields = QInvoiCalcFields
    OnNewRecord = QInvoiNewRecord
    CachedUpdates = True
    OnUpdateError = QInvoiUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT  * FROM  INVINVO'
      ''
      '')
    Left = 6
    Top = 8
    object QInvoiRECVNO: TStringField
      FieldName = 'RECVNO'
      FixedChar = True
      Size = 12
    end
    object QInvoiRECVDT: TDateField
      FieldName = 'RECVDT'
      OnValidate = QInvoiRECVDTValidate
    end
    object QInvoiLOCAT: TStringField
      FieldName = 'LOCAT'
      OnValidate = QInvoiLOCATValidate
      FixedChar = True
      Size = 5
    end
    object QInvoiINVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = QInvoiINVNOValidate
      FixedChar = True
      Size = 12
    end
    object QInvoiINVDT: TDateField
      FieldName = 'INVDT'
      OnValidate = QInvoiINVDTValidate
    end
    object QInvoiAPCODE: TStringField
      FieldName = 'APCODE'
      OnValidate = QInvoiAPCODEValidate
      FixedChar = True
      Size = 8
    end
    object QInvoiVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QInvoiNETCST: TFloatField
      FieldName = 'NETCST'
      DisplayFormat = '##,##0.00'
    end
    object QInvoiNETVAT: TFloatField
      FieldName = 'NETVAT'
      DisplayFormat = '##,##0.00'
    end
    object QInvoiNETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '##,##0.00'
    end
    object QInvoiTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QInvoiTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QInvoiFLTAX: TStringField
      FieldName = 'FLTAX'
      FixedChar = True
      Size = 1
    end
    object QInvoiVATTYP: TStringField
      FieldName = 'VATTYP'
      FixedChar = True
      Size = 1
    end
    object QInvoiMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QInvoiDESCP: TStringField
      FieldName = 'DESCP'
      FixedChar = True
      Size = 60
    end
    object QInvoiCREDTM: TFloatField
      FieldName = 'CREDTM'
      OnValidate = QInvoiCREDTMValidate
    end
    object QInvoiDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QInvoiINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QInvoiUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QInvoiUPD: TStringField
      FieldName = 'UPD'
      FixedChar = True
      Size = 1
    end
    object QInvoiUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QInvoiPURCHANO: TStringField
      FieldName = 'PURCHANO'
      FixedChar = True
      Size = 12
    end
    object QInvoiPOSTGL: TStringField
      FieldName = 'POSTGL'
      FixedChar = True
      Size = 1
    end
  end
  object SoQinvoi: TDataSource
    DataSet = QInvoi
    Left = 52
    Top = 8
  end
  object QInvtrn: TFDQuery
    BeforePost = QInvtrnBeforePost
    AfterPost = QInvtrnAfterPost
    AfterDelete = QInvtrnAfterPost
    OnNewRecord = QInvtrnNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM INVTRAN')
    Left = 96
    Top = 12
    object QInvtrnRECVNO: TStringField
      FieldName = 'RECVNO'
      FixedChar = True
      Size = 12
    end
    object QInvtrnRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object QInvtrnGCODE: TStringField
      FieldName = 'GCODE'
      OnValidate = QInvtrnGCODEValidate
      FixedChar = True
      Size = 3
    end
    object QInvtrnTYPE: TStringField
      FieldName = 'TYPE'
      OnValidate = QInvtrnTYPEValidate
      FixedChar = True
      Size = 12
    end
    object QInvtrnMODEL: TStringField
      FieldName = 'MODEL'
      OnValidate = QInvtrnMODELValidate
      FixedChar = True
    end
    object QInvtrnBAAB: TStringField
      FieldName = 'BAAB'
      OnValidate = QInvtrnBAABValidate
      FixedChar = True
    end
    object QInvtrnCOLOR: TStringField
      FieldName = 'COLOR'
      OnValidate = QInvtrnCOLORValidate
      FixedChar = True
    end
    object QInvtrnCC: TFloatField
      FieldName = 'CC'
    end
    object QInvtrnSTAT: TStringField
      FieldName = 'STAT'
      FixedChar = True
      Size = 1
    end
    object QInvtrnSTRNO: TStringField
      FieldName = 'STRNO'
      OnValidate = QInvtrnSTRNOValidate
      FixedChar = True
    end
    object QInvtrnENGNO: TStringField
      FieldName = 'ENGNO'
      FixedChar = True
    end
    object QInvtrnREGNO: TStringField
      FieldName = 'REGNO'
      FixedChar = True
      Size = 12
    end
    object QInvtrnKEYNO: TStringField
      FieldName = 'KEYNO'
      FixedChar = True
      Size = 12
    end
    object QInvtrnREFNO: TStringField
      FieldName = 'REFNO'
      FixedChar = True
      Size = 12
    end
    object QInvtrnMILERT: TFloatField
      FieldName = 'MILERT'
    end
    object QInvtrnCRLOCAT: TStringField
      FieldName = 'CRLOCAT'
      FixedChar = True
      Size = 5
    end
    object QInvtrnMOVENO: TStringField
      FieldName = 'MOVENO'
      FixedChar = True
      Size = 12
    end
    object QInvtrnMOVEDT: TDateField
      FieldName = 'MOVEDT'
    end
    object QInvtrnRVCODE: TStringField
      FieldName = 'RVCODE'
      OnValidate = QInvtrnRVCODEValidate
      FixedChar = True
      Size = 8
    end
    object QInvtrnRVLOCAT: TStringField
      FieldName = 'RVLOCAT'
      FixedChar = True
      Size = 5
    end
    object QInvtrnSTDCOST: TFloatField
      FieldName = 'STDCOST'
    end
    object QInvtrnCRCOST: TFloatField
      FieldName = 'CRCOST'
      OnValidate = QInvtrnCRCOSTValidate
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#######.00'
    end
    object QInvtrnDISCT: TFloatField
      FieldName = 'DISCT'
      OnValidate = QInvtrnCRCOSTValidate
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#######.00'
    end
    object QInvtrnNETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#######.00'
    end
    object QInvtrnCRVAT: TFloatField
      FieldName = 'CRVAT'
      OnValidate = QInvtrnCRVATValidate
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#######.00'
    end
    object QInvtrnTOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#######.00'
    end
    object QInvtrnVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QInvtrnNADDCOST: TFloatField
      FieldName = 'NADDCOST'
    end
    object QInvtrnVADDCOST: TFloatField
      FieldName = 'VADDCOST'
    end
    object QInvtrnTADDCOST: TFloatField
      FieldName = 'TADDCOST'
    end
    object QInvtrnSTDPRC: TFloatField
      FieldName = 'STDPRC'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#######.00'
    end
    object QInvtrnSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QInvtrnPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object QInvtrnBONUS: TFloatField
      FieldName = 'BONUS'
    end
    object QInvtrnTSALE: TStringField
      FieldName = 'TSALE'
      FixedChar = True
      Size = 1
    end
    object QInvtrnCONTNO: TStringField
      FieldName = 'CONTNO'
      FixedChar = True
      Size = 12
    end
    object QInvtrnCURSTAT: TStringField
      FieldName = 'CURSTAT'
      FixedChar = True
      Size = 1
    end
    object QInvtrnCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      FixedChar = True
      Size = 12
    end
    object QInvtrnCRDAMT: TFloatField
      FieldName = 'CRDAMT'
    end
    object QInvtrnRESVNO: TStringField
      FieldName = 'RESVNO'
      FixedChar = True
      Size = 12
    end
    object QInvtrnRESVDT: TDateField
      FieldName = 'RESVDT'
    end
    object QInvtrnFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object QInvtrnMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QInvtrnPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QInvtrnINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QInvtrnUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QInvtrnMANUYR: TStringField
      FieldName = 'MANUYR'
      FixedChar = True
      Size = 4
    end
    object QInvtrnTAXIN: TStringField
      FieldName = 'TAXIN'
      FixedChar = True
      Size = 1
    end
    object QInvtrnDORECV: TStringField
      FieldName = 'DORECV'
      FixedChar = True
      Size = 15
    end
    object QInvtrnAPCODE: TStringField
      FieldName = 'APCODE'
      FixedChar = True
      Size = 8
    end
    object QInvtrnLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 100
    end
  end
  object SoQinvtrn: TDataSource
    DataSet = QInvtrn
    Left = 144
    Top = 8
  end
  object TaxBuy: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM TAXBUY')
    Left = 192
    Top = 8
    object TaxBuyTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object TaxBuyTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object TaxBuyTAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      FixedChar = True
      Size = 12
    end
    object TaxBuyDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 55
    end
    object TaxBuyCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object TaxBuyVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object TaxBuyAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object TaxBuyREDU: TFloatField
      FieldName = 'REDU'
    end
    object TaxBuyBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object TaxBuyVAT: TFloatField
      FieldName = 'VAT'
    end
    object TaxBuyTOTTAX: TFloatField
      FieldName = 'TOTTAX'
    end
    object TaxBuyFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object TaxBuyCANCEL: TStringField
      FieldName = 'CANCEL'
      FixedChar = True
      Size = 1
    end
    object TaxBuyUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object TaxBuyTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object TaxBuyCANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object TaxBuyCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object TaxBuyPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object TaxBuyLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object TaxBuyRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object TaxBuyYEAR1: TStringField
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object TaxBuyTAXTYP: TStringField
      FieldName = 'TAXTYP'
      FixedChar = True
      Size = 1
    end
    object TaxBuySTRNO: TStringField
      FieldName = 'STRNO'
      FixedChar = True
    end
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 8
    Top = 60
  end
  object Qinvmovt: TFDQuery
    AfterOpen = QinvmovtAfterOpen
    BeforeClose = QinvmovtBeforeClose
    BeforeDelete = QinvmovtBeforeDelete
    OnNewRecord = QinvmovtNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM  INVMOVT')
    Left = 236
    Top = 8
    object QinvmovtMOVENO: TStringField
      FieldName = 'MOVENO'
      FixedChar = True
      Size = 12
    end
    object QinvmovtSTRNO: TStringField
      FieldName = 'STRNO'
      OnChange = QinvmovtSTRNOChange
      OnValidate = QinvmovtSTRNOValidate
      FixedChar = True
    end
    object QinvmovtMOVEDT: TDateField
      FieldName = 'MOVEDT'
    end
    object QinvmovtMOVEFM: TStringField
      FieldName = 'MOVEFM'
      FixedChar = True
      Size = 5
    end
    object QinvmovtMOVETO: TStringField
      FieldName = 'MOVETO'
      FixedChar = True
      Size = 5
    end
    object QinvmovtINPDATE: TDateTimeField
      FieldName = 'INPDATE'
    end
  end
  object SoInvmovt: TDataSource
    DataSet = Qinvmovt
    Left = 288
    Top = 9
  end
  object Qinvmovm: TFDQuery
    BeforePost = QinvmovmBeforePost
    AfterPost = QinvmovmAfterPost
    AfterCancel = QinvmovmAfterCancel
    BeforeDelete = QinvmovmBeforeDelete
    AfterDelete = QinvmovmAfterPost
    OnCalcFields = QinvmovmCalcFields
    OnNewRecord = QinvmovmNewRecord
    CachedUpdates = True
    OnUpdateError = QinvmovmUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM  INVMOVM')
    Left = 52
    Top = 60
    object QinvmovmMOVENO: TStringField
      FieldName = 'MOVENO'
      FixedChar = True
      Size = 12
    end
    object QinvmovmMOVEDT: TDateField
      FieldName = 'MOVEDT'
      OnValidate = QinvmovmMOVEDTValidate
    end
    object QinvmovmMOVENM: TStringField
      FieldName = 'MOVENM'
      OnValidate = QinvmovmMOVENMValidate
      FixedChar = True
      Size = 8
    end
    object QinvmovmMOVERV: TStringField
      FieldName = 'MOVERV'
      OnValidate = QinvmovmMOVERVValidate
      FixedChar = True
      Size = 8
    end
    object QinvmovmMOVEFM: TStringField
      FieldName = 'MOVEFM'
      OnValidate = QinvmovmMOVEFMValidate
      FixedChar = True
      Size = 5
    end
    object QinvmovmMOVETO: TStringField
      FieldName = 'MOVETO'
      OnValidate = QinvmovmMOVETOValidate
      FixedChar = True
      Size = 5
    end
    object QinvmovmMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QinvmovmUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QinvmovmINPDATE: TDateTimeField
      FieldName = 'INPDATE'
    end
    object QinvmovmUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
  end
  object SoInvmovm: TDataSource
    DataSet = Qinvmovm
    Left = 109
    Top = 60
  end
  object Qinvtran: TFDQuery
    CachedUpdates = True
    MasterSource = SoInvmovt
    MasterFields = 'STRNO'
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM INVTRAN WHERE STRNO=:STRNO')
    Left = 163
    Top = 61
    ParamData = <
      item
        Name = 'STRNO'
        DataType = ftFixedChar
        Size = 20
        Value = Null
      end>
  end
  object QOptinv: TFDQuery
    AfterEdit = QOptinvAfterEdit
    BeforePost = QOptinvBeforePost
    AfterPost = QOptinvAfterPost
    AfterCancel = QOptinvAfterCancel
    BeforeDelete = QOptinvBeforeDelete
    AfterDelete = QOptinvAfterPost
    OnCalcFields = QOptinvCalcFields
    OnNewRecord = QOptinvNewRecord
    CachedUpdates = True
    OnUpdateError = QOptinvUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM OPTINV')
    Left = 208
    Top = 61
    object QOptinvRECVNO: TStringField
      FieldName = 'RECVNO'
      FixedChar = True
      Size = 12
    end
    object QOptinvRVLOCAT: TStringField
      FieldName = 'RVLOCAT'
      OnValidate = QOptinvRVLOCATValidate
      FixedChar = True
      Size = 5
    end
    object QOptinvRECVDT: TDateField
      FieldName = 'RECVDT'
      OnValidate = QOptinvRECVDTValidate
    end
    object QOptinvINVNO: TStringField
      FieldName = 'INVNO'
      OnValidate = QOptinvINVNOValidate
      FixedChar = True
      Size = 12
    end
    object QOptinvINVDT: TDateField
      FieldName = 'INVDT'
      OnValidate = QOptinvINVDTValidate
    end
    object QOptinvAPCODE: TStringField
      FieldName = 'APCODE'
      OnValidate = QOptinvAPCODEValidate
      FixedChar = True
      Size = 8
    end
    object QOptinvVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QOptinvCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object QOptinvDUEDT: TDateField
      FieldName = 'DUEDT'
    end
    object QOptinvTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QOptinvTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QOptinvFLTAX: TStringField
      FieldName = 'FLTAX'
      FixedChar = True
      Size = 1
    end
    object QOptinvDESCP: TStringField
      FieldName = 'DESCP'
      FixedChar = True
      Size = 60
    end
    object QOptinvTSALE: TStringField
      FieldName = 'TSALE'
      FixedChar = True
      Size = 1
    end
    object QOptinvRVCODE: TStringField
      FieldName = 'RVCODE'
      FixedChar = True
      Size = 8
    end
    object QOptinvTOTCST: TFloatField
      FieldName = 'TOTCST'
    end
    object QOptinvDSCRAT: TFloatField
      FieldName = 'DSCRAT'
    end
    object QOptinvDSCAMT: TFloatField
      FieldName = 'DSCAMT'
    end
    object QOptinvNETCST: TFloatField
      FieldName = 'NETCST'
      DisplayFormat = '#,###,##0.00'
    end
    object QOptinvNETVAT: TFloatField
      FieldName = 'NETVAT'
      DisplayFormat = '#,###,##0.00'
    end
    object QOptinvNETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '#,###,##0.00'
    end
    object QOptinvSPAYMT: TFloatField
      FieldName = 'SPAYMT'
    end
    object QOptinvSDISC: TFloatField
      FieldName = 'SDISC'
    end
    object QOptinvFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object QOptinvLPAYDT: TDateField
      FieldName = 'LPAYDT'
    end
    object QOptinvINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QOptinvUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QOptinvUPD: TStringField
      FieldName = 'UPD'
      FixedChar = True
      Size = 1
    end
    object QOptinvUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QOptinvBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 12
    end
  end
  object QOpttran: TFDQuery
    BeforePost = QOpttranBeforePost
    AfterPost = QOpttranAfterPost
    AfterDelete = QOpttranAfterPost
    OnNewRecord = QOpttranNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM OPTTRAN')
    Left = 8
    Top = 110
    object QOpttranOPTCODE: TStringField
      DisplayWidth = 18
      FieldName = 'OPTCODE'
      OnChange = QOpttranOPTCODEChange
      FixedChar = True
      Size = 18
    end
    object QOpttranOPTNAME: TStringField
      DisplayWidth = 60
      FieldName = 'OPTNAME'
      FixedChar = True
      Size = 60
    end
    object QOpttranQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      OnChange = QOpttranQTYChange
    end
    object QOpttranAVGCST: TFloatField
      DisplayWidth = 10
      FieldName = 'AVGCST'
    end
    object QOpttranUNITCST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNITCST'
    end
    object QOpttranTOTCST: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCST'
    end
    object QOpttranDSCAMT: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCAMT'
      OnChange = QOpttranDSCAMTChange
    end
    object QOpttranNETCST: TFloatField
      DisplayWidth = 10
      FieldName = 'NETCST'
    end
    object QOpttranNETVAT: TFloatField
      DisplayWidth = 10
      FieldName = 'NETVAT'
    end
    object QOpttranVATRT: TFloatField
      DisplayWidth = 10
      FieldName = 'VATRT'
    end
    object QOpttranRECVNO: TStringField
      DisplayWidth = 12
      FieldName = 'RECVNO'
      Visible = False
      FixedChar = True
      Size = 12
    end
    object QOpttranRVLOCAT: TStringField
      DisplayWidth = 5
      FieldName = 'RVLOCAT'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object QOpttranINPDT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'INPDT'
      Visible = False
    end
    object QOpttranUSERID: TStringField
      DisplayWidth = 8
      FieldName = 'USERID'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object QOpttranRECVDT: TDateField
      DisplayWidth = 10
      FieldName = 'RECVDT'
      Visible = False
    end
  end
  object SoOptinv: TDataSource
    DataSet = QOptinv
    Left = 254
    Top = 62
  end
  object SoOpttran: TDataSource
    DataSet = QOpttran
    Left = 58
    Top = 110
  end
  object QOptMovm: TFDQuery
    BeforePost = QOptMovmBeforePost
    AfterPost = QOptMovmAfterPost
    AfterCancel = QOptMovmAfterCancel
    BeforeDelete = QOptMovmBeforeDelete
    AfterDelete = QOptMovmAfterPost
    OnCalcFields = QOptMovmCalcFields
    OnNewRecord = QOptMovmNewRecord
    CachedUpdates = True
    OnUpdateError = QOptMovmUpdateError
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM OPTMOVM')
    Left = 116
    Top = 108
    object QOptMovmMOVENO: TStringField
      FieldName = 'MOVENO'
      FixedChar = True
      Size = 12
    end
    object QOptMovmMOVEDT: TDateField
      FieldName = 'MOVEDT'
      OnValidate = QOptMovmMOVEDTValidate
    end
    object QOptMovmMOVENM: TStringField
      FieldName = 'MOVENM'
      OnValidate = QOptMovmMOVENMValidate
      FixedChar = True
      Size = 8
    end
    object QOptMovmMOVERV: TStringField
      FieldName = 'MOVERV'
      OnValidate = QOptMovmMOVERVValidate
      FixedChar = True
      Size = 8
    end
    object QOptMovmMOVEFM: TStringField
      FieldName = 'MOVEFM'
      OnValidate = QOptMovmMOVEFMValidate
      FixedChar = True
      Size = 5
    end
    object QOptMovmMOVETO: TStringField
      FieldName = 'MOVETO'
      OnValidate = QOptMovmMOVETOValidate
      FixedChar = True
      Size = 5
    end
    object QOptMovmMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QOptMovmUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
  end
  object QOptMovt: TFDQuery
    AfterOpen = QOptMovtAfterOpen
    BeforeClose = QOptMovtBeforeClose
    OnNewRecord = QOptMovtNewRecord
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM OPTMOVT')
    Left = 240
    Top = 108
    object QOptMovtMOVENO: TStringField
      FieldName = 'MOVENO'
      FixedChar = True
      Size = 12
    end
    object QOptMovtOPTCODE: TStringField
      FieldName = 'OPTCODE'
      OnValidate = QOptMovtOPTCODEValidate
      FixedChar = True
      Size = 18
    end
    object QOptMovtMOVEDT: TDateField
      FieldName = 'MOVEDT'
    end
    object QOptMovtMOVQTY: TFloatField
      FieldName = 'MOVQTY'
    end
    object QOptMovtMOVEFM: TStringField
      FieldName = 'MOVEFM'
      FixedChar = True
      Size = 5
    end
    object QOptMovtMOVETO: TStringField
      FieldName = 'MOVETO'
      FixedChar = True
      Size = 5
    end
  end
  object SoOptMovm: TDataSource
    DataSet = QOptMovm
    Left = 176
    Top = 108
  end
  object SoOptMovt: TDataSource
    DataSet = QOptMovt
    Left = 296
    Top = 108
  end
  object QOptmst: TFDQuery
    CachedUpdates = True
    MasterSource = SoOptMovt
    MasterFields = 'OPTCODE;MOVEFM'
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT *  FROM OPTMAST WHERE OPTCODE=:OPTCODE AND LOCAT=:MOVEFM')
    Left = 8
    Top = 156
    ParamData = <
      item
        Name = 'OPTCODE'
        DataType = ftFixedChar
        Size = 19
      end
      item
        Name = 'MOVEFM'
        DataType = ftFixedChar
        Size = 6
      end>
  end
  object Query2: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 64
    Top = 160
  end
  object Query3: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 116
    Top = 160
  end
  object Query4: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 160
    Top = 160
  end
end
