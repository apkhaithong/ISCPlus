object FPrnjob21: TFPrnjob21
  Left = 47
  Top = 161
  Width = 574
  Height = 365
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 318
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3649#3592#3657#3591#3595#3656#3629#3617'(Memo)'
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
  object QJobord: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT J.JOBNO,J.RECVDATE,J.LOCAT,J.STRNO,J.CUSCOD,M.SDATE,J.MEM' +
        'O1,'
      
        'J.FINSDATE,J.FINSTIME,J.RLKILOMT,J.RECVCOD,J.RECVTIME,J.TOPNO,J.' +
        'RUNNO,'
      
        'M.REGNO,M.ENGNO,M.MDLCOD,M.BAAB,M.COLOR,M.CC,M.VIPCARD,C.SNAM,C.' +
        'NAME1,C.NAME2,'
      
        'C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,C.ZIP,C.TELP,C.FAX,C.CONTAC' +
        'T,'
      'F.OFFICNAM,M.STRNO,L.LOCATNAM,S.TYPNAME,J.REPTYPE,D.DESC   '
      'FROM JOBORDER J,SVMAST M,ARMAST C,OFFICER F,LOCATMST L,'
      'SVTYPE S,MODELMST D'
      'WHERE J.STRNO=M.STRNO AND J.CUSCOD=C.CUSCOD '
      'AND J.RECVCOD=F.OFFICCOD')
    FetchOptions.Unidirectional = True
    Left = 83
    Top = 73
    object QJobordJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object QJobordRECVDATE: TDateField
      FieldName = 'RECVDATE'
    end
    object QJobordLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QJobordSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QJobordCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QJobordFINSDATE: TDateField
      FieldName = 'FINSDATE'
    end
    object QJobordFINSTIME: TStringField
      FieldName = 'FINSTIME'
      Size = 8
    end
    object QJobordRLKILOMT: TFloatField
      FieldName = 'RLKILOMT'
      DisplayFormat = '#,##0'
    end
    object QJobordRECVCOD: TStringField
      FieldName = 'RECVCOD'
      Size = 5
    end
    object QJobordRECVTIME: TStringField
      FieldName = 'RECVTIME'
      Size = 8
    end
    object QJobordREGNO: TStringField
      FieldName = 'REGNO'
      Size = 15
    end
    object QJobordENGNO: TStringField
      FieldName = 'ENGNO'
    end
    object QJobordMDLCOD: TStringField
      FieldName = 'MDLCOD'
    end
    object QJobordCOLOR: TStringField
      FieldName = 'COLOR'
    end
    object QJobordCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object QJobordSNAM: TStringField
      FieldName = 'SNAM'
      Size = 8
    end
    object QJobordNAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object QJobordNAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object QJobordADDR1: TStringField
      FieldName = 'ADDR1'
      Size = 60
    end
    object QJobordADDR2: TStringField
      FieldName = 'ADDR2'
      Size = 60
    end
    object QJobordTUMB: TStringField
      FieldName = 'TUMB'
      Size = 60
    end
    object QJobordAUMP: TStringField
      FieldName = 'AUMP'
      Size = 60
    end
    object QJobordPROV: TStringField
      FieldName = 'PROV'
      Size = 60
    end
    object QJobordZIP: TStringField
      FieldName = 'ZIP'
      Size = 8
    end
    object QJobordTELP: TStringField
      FieldName = 'TELP'
    end
    object QJobordFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object QJobordOFFICNAM: TStringField
      FieldName = 'OFFICNAM'
      Size = 40
    end
    object QJobordSTRNO_1: TStringField
      FieldName = 'STRNO_1'
    end
    object QJobordLOCATNAM: TStringField
      FieldName = 'LOCATNAM'

      Size = 70
    end
    object QJobordTYPNAME: TStringField
      FieldName = 'TYPNAME'

      Size = 30
    end
    object QJobordREPTYPE: TStringField
      FieldName = 'REPTYPE'

      Size = 5
    end
    object QJobordDESC: TStringField
      FieldName = 'DESC'
      Size = 70
    end
    object QJobordSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QJobordBAAB: TStringField
      FieldName = 'BAAB'
    end
    object QJobordVIPCARD: TStringField
      FieldName = 'VIPCARD'
    end
    object QJobordCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 50
    end
    object QJobordTOPNO: TStringField
      FieldName = 'TOPNO'
      Size = 5
    end
    object QJobordRUNNO: TStringField
      FieldName = 'RUNNO'
      Size = 5
    end
    object QJobordMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
  end
  object QOrdrep: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT O.JOBNO,O.NO,O.REPDESC'
      'FROM ORDREP O')
    FetchOptions.Unidirectional = True
    Left = 145
    Top = 74
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 83
    Top = 21
  end
end
