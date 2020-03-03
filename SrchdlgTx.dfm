object SearchDlgTx: TSearchDlgTx
  Left = 589
  Top = 384
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'SearchDlgTx'
  ClientHeight = 306
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 11
    Width = 69
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #3588#3657#3609#3627#3634#3605#3634#3617
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 14
    Top = 40
    Width = 71
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #3586#3657#3629#3588#3623#3634#3617#3607#3637#3656#3592#3632#3588#3657#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SearchButton: TSpeedButton
    Left = 261
    Top = 36
    Width = 20
    Height = 21
    Hint = 'Search'
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000022000000110000000100
      04000000000054010000CE0E0000D80E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333333FBFFF
      FFFFF3333333333333333300000033333333FBBFFFFBF3333333333333333300
      00003333333FBFFFFBFFF333333333333333330000003333333FBFFFFBFBF333
      3333333333333300000033333333FBBFFFFFF333333333333333330000003333
      333444FBFFFBF3333333888333333300000033333344834FBFFFF33333388738
      333333000000333334847F84BFFFF33333878737833333000000333334484F84
      FBBFB333338878378333330000003333348F74483FF3F3333387338873333300
      0000333344FFF743333333333883333833333300000033448F84443333333338
      873388873333330000003448F74333333333338873387773333333000000348F
      77333333333333873337333333333300000034F7743333333333338333873333
      3333330000003444433333333333338888733333333333000000333333333333
      3333333333333333333333000000}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SearchButtonClick
  end
  object SearchEd: TEdit
    Left = 91
    Top = 35
    Width = 168
    Height = 21
    Hint = #3585#3604' <Tab> '#3627#3619#3639#3629' Click '#3611#3640#3656#3617'  '#3648#3614#3639#3656#3629#3607#3635#3585#3634#3619#3588#3657#3609#3627#3634
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnChange = SearchEdChange
  end
  object OrderCombo: TComboBox
    Left = 90
    Top = 8
    Width = 190
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnChange = OrderComboChange
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 61
    Width = 286
    Height = 197
    Color = 12968130
    DataSource = DataSource
    FixedColor = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 257
    Width = 300
    Height = 49
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 10
      Top = 4
      Width = 56
      Height = 41
      Cursor = crHandPoint
      Caption = 'OK'
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
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 210
      Top = 4
      Width = 56
      Height = 41
      Cursor = crHandPoint
      Kind = bkCancel
      Layout = blGlyphTop
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object DataSource: TDataSource
    DataSet = HQuery1
    Left = 72
    Top = 212
  end
  object HQuery1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 36
    Top = 212
  end
end
