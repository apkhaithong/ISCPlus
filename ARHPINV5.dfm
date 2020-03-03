object FmHpInv5: TFmHpInv5
  Left = 311
  Top = 188
  Width = 340
  Height = 317
  Caption = #3588#3657#3609#3627#3634#3648#3621#3586#3607#3637#3656' Invoice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 7
    Width = 27
    Height = 13
    Caption = #3588#3657#3609#3627#3634
  end
  object DBGrid2: TDBGrid
    Left = 12
    Top = 38
    Width = 313
    Height = 186
    Color = 8454143
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'INVNO'
        Title.Caption = #3648#3621#3586#3607#3637#3656' Invoice'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INVDATE'
        Title.Caption = #3623#3633#3609#3607#3637#3656' Invoice'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCAT'
        Title.Caption = #3626#3634#3586#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXNO'
        Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 163
    Top = 6
    Width = 131
    Height = 21
    TabOrder = 0
  end
  object BitBtn3: TBitBtn
    Left = 295
    Top = 5
    Width = 24
    Height = 22
    TabOrder = 1
    OnClick = BitBtn3Click
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
  object DBGrid1: TDBGrid
    Left = 12
    Top = 38
    Width = 313
    Height = 186
    Color = 12968130
    Ctl3D = False
    DataSource = DataSource1
    FixedColor = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'INVNO'
        Title.Caption = #3648#3621#3586#3607#3637#3656' Invoice'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INVDATE'
        Title.Caption = #3623#3633#3609#3607#3637#3656' Invoice'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCAT'
        Title.Caption = #3626#3634#3586#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXNO'
        Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610
        Width = 78
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 37
    Top = 6
    Width = 126
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = #3648#3621#3586#3607#3637#3656#3651#3610#3619#3633#3610
    OnChange = ComboBox1Change
    Items.Strings = (
      #3648#3621#3586#3607#3637#3656' Invoice'
      #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637' ')
  end
  object Panel3: TPanel
    Left = 0
    Top = 234
    Width = 332
    Height = 49
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 5
    object BitBtn1: TBitBtn
      Left = 10
      Top = 4
      Width = 56
      Height = 41
      Cursor = crHandPoint
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 266
      Top = 4
      Width = 56
      Height = 41
      Cursor = crHandPoint
      TabOrder = 1
      Kind = bkCancel
      Layout = blGlyphTop
    end
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select *  from Arinvoi')
    Left = 56
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 100
    Top = 112
  end
end
