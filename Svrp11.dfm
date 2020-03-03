object QRpSv11: TQRpSv11
  Left = 194
  Top = 88
  Width = 808
  Height = 580
  HorzScrollBar.Position = 417
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3619#3606#3607#3637#3656#3648#3586#3657#3634#3595#3656#3629#3617#3607#3633#3657#3591#3627#3617#3604
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
    Left = 252
    Top = 16
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
  end
  object QJobord: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT J.JOBNO,J.LOCAT,J.RECVDATE,J.RECVTIME,J.FINSDATE,J.FINSTI' +
        'ME,'
      ' J.REPTYPE,J.REPBAY,J.STRNO,S.REGNO FROM JOBORDER J,SVMAST S ')
    Left = 217
    Top = 15
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
  object DataSource1: TDataSource
    DataSet = QJobord
    Left = 330
    Top = 66
  end
end
