object FmArPrn11: TFmArPrn11
  Left = 185
  Top = 97
  Width = 828
  Height = 575
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3649#3592#3657#3591#3627#3609#3637#3657
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
  object TCondpay: TFDTable
    ConnectionName = 'Hi_DBMS'
    TableName = 'CONDPAY'
    Left = 70
    Top = 48
  end
  object QArbill: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM ARBILL')
    Left = 99
    Top = 46
  end
  object QArtrn: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT *  FROM ARBILTR')
    Left = 127
    Top = 46
  end
  object QArmast: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = DataSource1
    SQL.Strings = (
      'SELECT * FROM ARMAST WHERE CUSCOD=:CUSCODE')
    Left = 218
    Top = 68
    ParamData = <
      item
        DataType = ftString
        Name = 'CUSCODE'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = QArbill
    Left = 156
    Top = 48
  end
  object QJOB: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = DataSource2
    SQL.Strings = (
      'SELECT A.JOBNO,C.STRNO,D.REGNO '
      'FROM ARBILTR A,JOBORDER C,SVMAST D '
      'WHERE A.JOBNO=C.JOBNO AND C.STRNO=D.STRNO  AND '
      'A.JOBNO=:JOBNO')
    Left = 260
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'JOBNO'
        ParamType = ptUnknown
      end>
  end
  object DataSource2: TDataSource
    DataSet = QArtrn
    Left = 192
    Top = 64
  end
end
