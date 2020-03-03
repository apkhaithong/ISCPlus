object FmRpPo51: TFmRpPo51
  Left = 293
  Top = 59
  Width = 878
  Height = 696
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3626#3636#3609#3588#3657#3634#3606#3638#3591#3592#3640#3604#3626#3633#3656#3591#3595#3639#3657#3629
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
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 186
    Top = 40
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
    object CondpayCOMP_ADR1: TStringField
      FieldName = 'COMP_ADR1'
      Size = 60
    end
    object CondpayCOMP_ADR2: TStringField
      FieldName = 'COMP_ADR2'
      Size = 60
    end
    object CondpayTELP: TStringField
      FieldName = 'TELP'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 151
    Top = 42
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT t.partno,t.desc1,t.locat,t.max1,t.min1, '
      '              (t.max1) as ord,t.min1 as onhn1 '
      '              From Inventor t,Invanls a')
    Left = 117
    Top = 40
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = DataSource1
    SQL.Strings = (
      'SELECT t.partno,t.desc1,t.locat,t.max1,t.min1, '
      '              (t.max1) as ord,t.min1 as onhn1 '
      '              From Inventor t,Invanls a')
    Left = 118
    Top = 68
  end
  object Query3: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = DataSource1
    SQL.Strings = (
      'SELECT t.partno,t.desc1,t.locat,t.max1,t.min1, '
      '              (t.max1) as ord,t.min1 as onhn1 '
      '              From Inventor t,Invanls a')
    Left = 150
    Top = 72
  end
end
