object FmRpCust21: TFmRpCust21
  Left = 169
  Top = 113
  Width = 832
  Height = 634
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609
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
  object QCust10: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'Select J.JOBNO,J.Cuscod,J.Recvdate,J.RLKILOMT,J.Strno,A.Snam,A.N' +
        'ame1,A.Name2,A.Addr1,A.Addr2, '
      'A.Tumb,A.Aump,A.Prov,A.Zip,A.Telp From Joborder J,Armast A')
    Left = 280
    Top = 8
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from condpay')
    Left = 312
    Top = 8
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
  end
  object QOrder: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = DataSource1
    SQL.Strings = (
      'SELECT * FROM ORDREP WHERE JOBNO=:JOBNO')
    Left = 280
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'JOBNO'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = QCust10
    Left = 325
    Top = 49
  end
  object QParttran: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = DataSource2
    SQL.Strings = (
      'SELECT A.PARTNO,B.DESC1 FROM PARTTRAN A,INVENTOR B'
      ' WHERE A.LOCAT=B.LOCAT AND A.PARTNO=B.PARTNO AND  A.JOBNO=:JOBNO')
    Left = 280
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'JOBNO'
        ParamType = ptUnknown
      end>
  end
  object DataSource2: TDataSource
    DataSet = QCust10
    Left = 325
    Top = 83
  end
  object QServtran: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = DataSource3
    SQL.Strings = (
      'SELECT DESC1 FROM SERVTRAN WHERE JOBNO=:JOBNO')
    Left = 280
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'JOBNO'
        ParamType = ptUnknown
      end>
  end
  object DataSource3: TDataSource
    DataSet = QCust10
    Left = 325
    Top = 114
  end
end
