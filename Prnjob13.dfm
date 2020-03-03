object FPrnjob13: TFPrnjob13
  Left = 105
  Top = 86
  Width = 569
  Height = 354
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 903
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3649#3592#3657#3591#3595#3656#3629#3617
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
  object QuickRep1: TQuickRep
    Left = 16
    Top = -883
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Default
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
  end
  object QJobord: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT J.JOBNO,J.RECVDATE,J.LOCAT,J.STRNO,J.CUSCOD,M.SDATE,'
      
        'J.FINSDATE,J.FINSTIME,J.RLKILOMT,J.RECVCOD,J.RECVTIME,J.TOPNO,J.' +
        'RUNNO,'
      
        'M.REGNO,M.ENGNO,M.MDLCOD,M.BAAB,M.COLOR,M.CC,M.VIPCARD,C.SNAM,C.' +
        'NAME1,C.NAME2,'
      
        'C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,C.ZIP,C.TELP,C.FAX,C.CONTAC' +
        'T,'
      
        'F.OFFICNAM,M.STRNO,L.LOCATNAM,S.TYPNAME,J.REPTYPE,D.DESC,T.TYPEN' +
        'AM    '
      'FROM JOBORDER J,SVMAST M,ARMAST C,OFFICER F,LOCATMST L,'
      'SVTYPE S,MODELMST D,TYPEMST T '
      'WHERE J.STRNO=M.STRNO AND J.CUSCOD=C.CUSCOD '
      'AND J.RECVCOD=F.OFFICCOD AND M.TYPE=T.TYPECOD')
    FetchOptions.Unidirectional = True
    Left = 64
    Top = 12
  end
  object QOrdrep: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT O.JOBNO,O.NO,O.REPDESC'
      'FROM ORDREP O')
    FetchOptions.Unidirectional = True
    Left = 93
    Top = 12
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 36
    Top = 12
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    FetchOptions.Unidirectional = True
    Left = 124
    Top = 12
  end
end
