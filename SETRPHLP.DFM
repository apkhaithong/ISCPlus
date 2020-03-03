object FmHpRp: TFmHpRp
  Left = 126
  Top = 94
  Width = 435
  Height = 286
  Caption = 'FmHpRp'
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 48
    Top = 160
    Width = 84
    Height = 14
    Caption = 'Value For Search'
  end
  object DBGrid_Loc: TDBGrid
    Left = 32
    Top = 20
    Width = 377
    Height = 133
    Color = 8454143
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'LOCATCOD'
        Title.Caption = '#+1**22'
      end
      item
        FieldName = 'LOCATNAM'
        Title.Caption = '
7H-*22'
      end
      item
        FieldName = 'LOCATDOC'
        Title.Caption = '#+1*"H-*22'
      end>
  end
  object DBGrid_Ar: TDBGrid
    Left = 32
    Top = 20
    Width = 377
    Height = 133
    Color = 8454143
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'CUSCOD'
        Title.Caption = '#+1*%9+5I'
      end
      item
        FieldName = 'SNAM'
        Title.Caption = '33+I2
7H-'
      end
      item
        FieldName = 'NAME1'
        Title.Caption = '
7H-'
      end
      item
        FieldName = 'NAME2'
        Title.Caption = '2!*8%'
      end>
  end
  object DBGrid_Inv: TDBGrid
    Left = 32
    Top = 20
    Width = 373
    Height = 133
    Color = 8454143
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'PARTNO'
        Title.Caption = '#+1**4I2'
      end
      item
        FieldName = 'DESC1'
        Title.Caption = '
7H-*4I2'
        Width = 84
      end
      item
        FieldName = 'TYPE'
        Title.Caption = '"5H+I-'
      end
      item
        FieldName = 'MODEL'
        Title.Caption = '#8H'
      end>
  end
  object Grid_Group: TDBGrid
    Left = 33
    Top = 20
    Width = 372
    Height = 133
    Color = 7142384
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'GROUPCOD'
        Title.Caption = '#+1*%8H!*4I2'
      end
      item
        FieldName = 'GROUPNAM'
        Title.Caption = '
7H-%8H!*4I2'
      end
      item
        FieldName = 'ACCTNO'
        Title.Caption = '#+1*1
5'
      end>
  end
  object DBGrid_typ: TDBGrid
    Left = 33
    Top = 20
    Width = 376
    Height = 133
    Color = 8454143
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'TYPECOD'
        Title.Caption = '#+1*"5H+I-'
      end
      item
        FieldName = 'TYPENAM'
        Title.Caption = '"5H+I-'
      end>
  end
  object DBGrid_Ap: TDBGrid
    Left = 32
    Top = 20
    Width = 373
    Height = 133
    Color = 8454143
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'APCODE'
        Title.Caption = '#+1*@I2+5I'
      end
      item
        FieldName = 'APNAME'
        Title.Caption = '#4)1@I2+5I'
      end
      item
        FieldName = 'ADDR1'
        Title.Caption = '5H-"9H1'
      end
      item
        FieldName = 'ADDR2'
        Title.Caption = '5H-"9H2'
      end>
  end
  object DBGrid1_Pty: TDBGrid
    Left = 32
    Top = 20
    Width = 377
    Height = 133
    Color = 8454143
    DataSource = DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'PAYCODE'
        Title.Caption = '#+1*'
        Width = 45
      end
      item
        FieldName = 'PAYDESC'
        Title.Caption = '#0@ 2##1
3#0'
        Width = 200
      end>
  end
  object DBGrid1_BK: TDBGrid
    Left = 33
    Top = 20
    Width = 368
    Height = 129
    Color = 8454143
    DataSource = DataSource1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'BKCODE'
        Title.Caption = '#+1*22#'
      end
      item
        FieldName = 'BKNAME'
        Title.Caption = '22#'
      end>
  end
  object DBGrid1_Rt: TDBGrid
    Left = 36
    Top = 20
    Width = 369
    Height = 129
    Color = clYellow
    DataSource = DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'RTCODE'
        Title.Caption = '#+1*2#7'
      end
      item
        FieldName = 'RTNAME'
        Title.Caption = '#2"%0@-5"'
      end>
  end
  object DBGrid1_off: TDBGrid
    Left = 33
    Top = 20
    Width = 372
    Height = 133
    Color = 8454143
    DataSource = DataSource1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'OFFICCOD'
        Title.Caption = '#+1*.'
      end
      item
        FieldName = 'OFFICNAM'
        Title.Caption = '
7H- - *8%'
      end
      item
        FieldName = 'DEPART'
        Title.Caption = 'A'
      end>
  end
  object DBGrid1_Bo: TDBGrid
    Left = 32
    Top = 20
    Width = 369
    Height = 128
    Color = clYellow
    DataSource = DataSource1
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'BKCODE'
        Title.Caption = '#+1*1
5'
        Width = 90
      end
      item
        FieldName = 'BKNAME'
        Title.Caption = '
7H-1
5'
        Width = 250
      end>
  end
  object Edit1: TEdit
    Left = 48
    Top = 180
    Width = 121
    Height = 22
    Color = clWhite
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 176
    Top = 180
    Width = 61
    Height = 25
    Caption = 'I+2'
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
      33003377333337F33377333333333C333300333F333337F33377339333333C33
      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
      3000333333333377377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 240
    Top = 180
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
  object BitBtn3: TBitBtn
    Left = 316
    Top = 180
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkCancel
  end
  object RadioGroup1: TRadioGroup
    Left = 48
    Top = 212
    Width = 185
    Height = 37
    Caption = 'Search By'
    Columns = 2
    Items.Strings = (
      '#+1**4I2'
      '
7H-*4I2')
    TabOrder = 5
    Visible = False
  end
  object Query1: TFDQuery
    ConnectionName = 'SET_DBMS'
    SQL.Strings = (
      'SELECT * FROM book')
    Left = 260
    Top = 212
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 300
    Top = 212
  end
end
