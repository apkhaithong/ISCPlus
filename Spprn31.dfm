object FSpprn31: TFSpprn31
  Left = 40
  Top = 122
  Width = 652
  Height = 404
  HorzScrollBar.Position = 224
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 263
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3626#3656#3591#3586#3629#3591'/'#3651#3610#3585#3635#3585#3633#3610' Invoice '#3648#3626#3619#3636#3617' '#3652#3607#3618#3623#3637#3614#3637
  Color = clBtnFace
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
  object QOthinv: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from othinvoi')
    Left = 80
    Top = 8
  end
  object Query2: TFDQuery
    ConnectionName = 'SV_DBMS'
    Left = 164
    Top = 8
  end
  object QArmast: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = DataSource1
    SQL.Strings = (
      'SELECT * FROM ARMAST WHERE CUSCOD=:CUSCOD')
    Left = 114
    Top = 37
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CUSCOD'
        ParamType = ptUnknown
      end>
  end
  object QOthtrn: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from othtran')
    Left = 112
    Top = 8
  end
  object Condpay: TFDTable
    ConnectionName = 'HI_DBMS'
    TableName = 'CONDPAY'
    Left = 28
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = QOthinv
    Left = 82
    Top = 38
  end
  object QArpaytrn: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from arpaytrn')
    Left = 154
    Top = 40
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 192
    Top = 12
  end
end
