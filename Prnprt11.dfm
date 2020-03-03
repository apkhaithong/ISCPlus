object FPrnpart11: TFPrnpart11
  Left = 67
  Top = 143
  Width = 652
  Height = 364
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 36
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3626#3619#3640#3611#3629#3632#3652#3627#3621#3656
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
  object Qparttrn: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'Select A.Jobno,A.PKNO,A.Partno,A.Servcod,A.QTY,A.UPRICE,A.REDU1,' +
        'A.NETPRC, '
      '           A.TOTPRC ,B.Partno,B.Desc1,A.Claim  '
      '           From PartTran A,Invmast B  '
      '           Where (A.Partno = B.Partno) ')
    Left = 284
    Top = 77
  end
  object QJobord: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT J.JOBNO,J.RECVDATE,J.LOCAT,J.STRNO,J.CUSCOD,J.PARTDISC,J.' +
        'PARTNET,J.PARTVAT,J.PARTTOT,'
      
        'J.VAT,J.FINSDATE,J.FINSTIME,J.RLKILOMT,J.RECVCOD,J.RECVTIME,J.TO' +
        'PNO,'
      'M.REGNO,M.ENGNO,M.MDLCOD,M.COLOR,M.CC,C.SNAM,C.NAME1,C.NAME2,'
      'C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,C.ZIP,C.TELP,C.FAX,'
      'F.OFFICNAM,M.STRNO '
      'FROM JOBORDER J,SVMAST M,ARMAST C,OFFICER F '
      'WHERE J.STRNO=M.STRNO AND J.CUSCOD=C.CUSCOD '
      'AND J.RECVCOD=F.OFFICCOD')
    Left = 255
    Top = 77
  end
end
