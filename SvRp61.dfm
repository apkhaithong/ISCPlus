object QRpSv61: TQRpSv61
  Left = 115
  Top = 129
  Width = 1101
  Height = 456
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 91
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609
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
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from condpay')
    Left = 200
    Top = 12
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
  end
  object Query6: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT J.JOBNO,J.RECVDATE,J.REPCOD,J.RFINSHDT,J.REPBAY, '
      '              J.RFINSHTM,J.REPTYPE,J.INSPECT,J.STATUS,S.REGNO '
      '              FROM JOBORDER J,SVMAST S')
    Left = 227
    Top = 14
  end
  object DataSource1: TDataSource
    DataSet = Query6
    Left = 330
    Top = 66
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = DataSource1
    SQL.Strings = (
      'SELECT * FROM TYPEMST WHERE TYPECOD=:TYPE')
    Left = 361
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TYPE'
        ParamType = ptUnknown
      end>
  end
end
