object FExpStock: TFExpStock
  Left = 637
  Top = 302
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Export Data for Check Stock'
  ClientHeight = 441
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 51
    Width = 565
    Height = 370
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.8.0'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = THAI_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object Label4: TLabel
      Left = 33
      Top = 91
      Width = 59
      Height = 16
      Alignment = taRightJustify
      Caption = #3607#3637#3656#3648#3585#3655#3610#3626#3636#3609#3588#3657#3634
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 279
      Top = 92
      Width = 54
      Height = 16
      Alignment = taRightJustify
      Caption = #3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Gauge1: TGauge
      Left = 93
      Top = 274
      Width = 363
      Height = 18
      ForeColor = 8421631
      Progress = 0
    end
    object Label7: TLabel
      Left = 49
      Top = 115
      Width = 43
      Height = 16
      Alignment = taRightJustify
      Caption = #3592#3634#3585#3619#3627#3633#3626
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 297
      Top = 118
      Width = 36
      Height = 16
      Alignment = taRightJustify
      Caption = #3606#3638#3591#3619#3627#3633#3626
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 81
      Top = 300
      Width = 392
      Height = 14
      Caption = '*** '#3588#3623#3619#3607#3635#3585#3634#3619#3611#3619#3633#3610#3611#3619#3640#3591#3626#3605#3655#3629#3585#3588#3591#3648#3627#3621#3639#3629#3585#3656#3629#3609' Export '#3648#3614#3639#3656#3629#3588#3623#3634#3617#3606#3641#3585#3605#3657#3629#3591' ***'
      Font.Charset = THAI_CHARSET
      Font.Color = 8404992
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 240
      Top = 328
      Width = 50
      Height = 16
      Caption = 'Label10'
      Font.Charset = THAI_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 41
      Top = 38
      Width = 50
      Height = 16
      Alignment = taRightJustify
      Caption = #3619#3627#3633#3626#3626#3634#3586#3634
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 68
      Top = 14
      Width = 23
      Height = 16
      Alignment = taRightJustify
      Caption = #3623#3633#3609#3607#3637#3656
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 305
      Top = 15
      Width = 29
      Height = 16
      Alignment = taRightJustify
      Caption = #3648#3621#3586#3607#3637#3656
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 24
      Top = 64
      Width = 67
      Height = 16
      Alignment = taRightJustify
      Caption = #3619#3627#3633#3626#3614#3609#3633#3585#3591#3634#3609
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TcxDBButtonEdit
      Left = 94
      Top = 37
      DataBinding.DataField = 'ADJLOC'
      DataBinding.DataSource = FmDmic01.SoTmpajiv
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.LookupItems.Strings = (
        '')
      Properties.OnButtonClick = DBEdit1PropertiesButtonClick
      Properties.OnChange = DBEdit1PropertiesChange
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 0
      Width = 121
    end
    object Edit1: TcxTextEdit
      Left = 214
      Top = 37
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clWhite
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 1
      Width = 243
    end
    object AdjDate: TcxDBDateEdit
      Left = 94
      Top = 12
      DataBinding.DataField = 'ADJDATE'
      DataBinding.DataSource = FmDmic01.SoTmpajiv
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 2
      OnExit = AdjDateExit
      Width = 121
    end
    object DBEdit2: TcxDBTextEdit
      Left = 336
      Top = 12
      DataBinding.DataField = 'ADJNO'
      DataBinding.DataSource = FmDmic01.SoTmpajiv
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = 14540287
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 3
      Width = 121
    end
    object Edit2: TcxTextEdit
      Left = 214
      Top = 63
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 4
      Width = 243
    end
    object DBEdit11: TcxDBTextEdit
      Left = 94
      Top = 63
      DataBinding.DataField = 'OFFICCOD'
      DataBinding.DataSource = FmDmic01.SoTmpajiv
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnChange = DBEdit11PropertiesChange
      Style.Color = clBtnFace
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = 14540287
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 5
      Width = 121
    end
    object DBEdit3: TcxDBTextEdit
      Left = 94
      Top = 89
      DataBinding.DataField = 'SHELF'
      DataBinding.DataSource = FmDmic01.SoTmpajiv
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = 14540287
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 6
      Width = 121
    end
    object DBEdit5: TcxDBButtonEdit
      Left = 336
      Top = 89
      DataBinding.DataField = 'GROUP1'
      DataBinding.DataSource = FmDmic01.SoTmpajiv
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.LookupItems.Strings = (
        '')
      Properties.OnButtonClick = DBEdit5PropertiesButtonClick
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 7
      Width = 121
    end
    object DBEdit6: TcxDBButtonEdit
      Left = 94
      Top = 114
      DataBinding.DataField = 'PARTNO1'
      DataBinding.DataSource = FmDmic01.SoTmpajiv
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.LookupItems.Strings = (
        '')
      Properties.OnButtonClick = DBEdit6PropertiesButtonClick
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 8
      Width = 121
    end
    object DBEdit7: TcxDBButtonEdit
      Left = 336
      Top = 114
      DataBinding.DataField = 'PARTNO2'
      DataBinding.DataSource = FmDmic01.SoTmpajiv
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.LookupItems.Strings = (
        '')
      Properties.OnButtonClick = DBEdit7PropertiesButtonClick
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 9
      Width = 121
    end
    object RadioGp2: TcxRadioGroup
      Left = 93
      Top = 145
      Caption = #3605#3657#3629#3591#3585#3634#3619#3648#3593#3614#3634#3632
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #3607#3633#3657#3591#3627#3617#3604
        end
        item
          Caption = 'Stock > 0'
        end
        item
          Caption = 'Stock < 0'
        end
        item
          Caption = 'Stock = 0'
        end
        item
          Caption = #3607#3637#3656#3617#3637#3626#3606#3634#3609#3607#3637#3656#3648#3585#3655#3610
        end
        item
          Caption = #3618#3629#3604' Onh<>Allo'
        end
        item
          Caption = #3626#3605#3655#3629#3585' <> 0'
        end>
      ItemIndex = 0
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 10
      Height = 120
      Width = 234
    end
    object DBRadioGroup1: TcxDBRadioGroup
      Left = 328
      Top = 145
      Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619' Export'
      DataBinding.DataField = 'EXPTYP'
      DataBinding.DataSource = FmDmic01.SoTmpajiv
      ParentFont = False
      Properties.Items = <
        item
          Caption = #3605#3634#3617#3607#3637#3656#3648#3585#3655#3610#3626#3636#3609#3588#3657#3634
          Value = '1'
        end
        item
          Caption = #3605#3634#3617#3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634
          Value = '2'
        end
        item
          Caption = #3605#3634#3617#3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          Value = '3'
        end>
      Properties.OnChange = DBRadioGroup1Click
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 11
      OnClick = DBRadioGroup1Click
      Height = 120
      Width = 128
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 565
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    Color = 16645114
    Font.Charset = THAI_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16575452
    Caption.ColorTo = 16571329
    Caption.Font.Charset = THAI_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16643051
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 13542013
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16575452
    StatusBar.ColorTo = 16571329
    StatusBar.GradientDirection = gdVertical
    Styler = SFMain.AdvPanelStyler1
    Text = ''
    FullHeight = 51
    object AdvToolBar2: TAdvToolBar
      Left = 2
      Top = -1
      Width = 559
      Height = 51
      Cursor = crHandPoint
      AllowFloating = True
      Locked = True
      Caption = ''
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      CaptionAlignment = taCenter
      CompactImageIndex = -1
      ShowRightHandle = False
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Option'
      ParentStyler = False
      ToolBarStyler = SFMain.AdvToolBarOfficeStyler1
      ParentOptionPicture = True
      ToolBarIndex = -1
      object AdvToolBarSeparator2: TAdvToolBarSeparator
        Left = 360
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object AdvToolBarSeparator5: TAdvToolBarSeparator
        Left = 370
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator6: TAdvToolBarSeparator
        Left = 350
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object DelBtn: TAdvGlowButton
        Left = 60
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Hint = #3621#3610'/'#3618#3585#3648#3621#3636#3585#3586#3657#3629#3617#3641#3621
        Caption = 'Delete'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 1
        Images = SFMain.cxImageList1
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = DelBtnClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.BorderColorDisabled = 16250613
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 16250613
        Appearance.ColorDisabledTo = clNone
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = clNone
        Appearance.ColorMirrorDisabledTo = clNone
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
      object EditBtn: TAdvGlowButton
        Left = 118
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Hint = #3588#3657#3609#3627#3634#3586#3657#3629#3617#3641#3621
        Caption = 'Search'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 2
        Images = SFMain.cxImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = editBtnClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.BorderColorDisabled = 16250613
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 16250613
        Appearance.ColorDisabledTo = clNone
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = clNone
        Appearance.ColorMirrorDisabledTo = clNone
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
      object SaveBtn: TAdvGlowButton
        Left = 234
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Hint = #3610#3633#3609#3607#3638#3585#3586#3657#3629#3617#3641#3621
        Caption = 'Save'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 3
        Images = SFMain.cxImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = SaveBtnClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.BorderColorDisabled = 16250613
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 16250613
        Appearance.ColorDisabledTo = clNone
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = clNone
        Appearance.ColorMirrorDisabledTo = clNone
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
      object CancBtn: TAdvGlowButton
        Left = 292
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Hint = #3618#3585#3648#3621#3636#3585#3585#3634#3619#3607#3635#3619#3634#3618#3585#3634#3619
        Caption = 'Cancel'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 4
        Images = SFMain.cxImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CancBtnClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.BorderColorDisabled = 16250613
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 16250613
        Appearance.ColorDisabledTo = clNone
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = clNone
        Appearance.ColorMirrorDisabledTo = clNone
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
      object CloseBtn: TAdvGlowButton
        Left = 497
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Hint = #3611#3636#3604#3627#3609#3657#3634#3592#3629#3649#3621#3632#3585#3621#3633#3610#3627#3609#3657#3634#3627#3621#3633#3585
        Caption = 'Back'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 5
        Images = SFMain.cxImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CloseBtnClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.BorderColorDisabled = 16250613
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 16250613
        Appearance.ColorDisabledTo = clNone
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = clNone
        Appearance.ColorMirrorDisabledTo = clNone
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
      object InsBtn: TAdvGlowButton
        Left = 2
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Hint = #3648#3614#3636#3656#3617#3586#3657#3629#3617#3641#3621
        Caption = 'Insert'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 0
        Images = SFMain.cxImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = insBtnClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.BorderColorDisabled = 16250613
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 16250613
        Appearance.ColorDisabledTo = clNone
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = clNone
        Appearance.ColorMirrorDisabledTo = clNone
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
      object PrnBtn: TAdvGlowButton
        Left = 439
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Hint = #3614#3636#3617#3614#3660#3615#3629#3619#3660#3617
        Caption = 'Print'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 6
        Images = SFMain.cxImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = PrnbtnClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.BorderColorDisabled = 16250613
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 16250613
        Appearance.ColorDisabledTo = clNone
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = clNone
        Appearance.ColorMirrorDisabledTo = clNone
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
      object SpeedButton2: TAdvGlowButton
        Left = 176
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Hint = 'Export data to report'
        Caption = 'Export'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 7
        Images = SFMain.cxImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = SpeedButton2Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.BorderColorDisabled = 16250613
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 16250613
        Appearance.ColorDisabledTo = clNone
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = clNone
        Appearance.ColorMirrorDisabledTo = clNone
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
      object ExportBtn: TAdvGlowButton
        Left = 380
        Top = 2
        Width = 59
        Height = 47
        Cursor = crHandPoint
        Hint = 'Export data to excel file'
        Caption = 'Excel'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000002000000020080300000044A48A
          C600000234504C544504AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AE
          DA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04
          AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA
          04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AE
          DA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04
          AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA
          04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AE
          DA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04
          AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA
          04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AE
          DA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04
          AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA
          04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AE
          DA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04
          AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA
          04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AE
          DA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04
          AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDA04AEDACA21CF
          5A000000BB74524E53000701CBFE7DFC2D05A5A859F53558B2A65204A7FAFDA4
          8CD4C58D0AB35E06A26FF820156D7A88EA569703B86C960CBE8AEFD502F9DF09
          3AF48F486BDEA1E3ED947FE932D0B125471A0E218B87A9E2AEF20F0BDD89A3B7
          7943312B39842EB523E03F90F334A0DA861FAC64F644B6CD33388380B0664C30
          61679F0D27B4E67B3B5478769A418555CEE8D9CC1D5153B95C5FE4724E1370E7
          10F11E8E4F08BFBD362FD75B196E7C68296245FB60C31B935D9DF02446BC3722
          81D19B3C75E082DE0000023149444154785E6DD0654F24411804E0DA61DD3974
          611777F7030E77777777CEDDDDDDDDDDDDEACF5D3ACC64E708CF874E2A79934A
          17D4A26A534226AE5EDB978DB5441DF4D17345569701AB359459C9D3C9655B75
          138E31526BDA0935784AA9F5ABDD0B019A43A9F9F48F854A1CD95309959FE1A4
          5303C51632055E9278CEE7D00CD905F272428FBBF93A801BFBDDE65B100AAD3C
          0201774A791473F1642030485229F765C07A08665603D8AC277DA560325D822C
          831B8D002AB59351229E20738BC9B61A283A3A990020958910C28229C4C02B86
          0F00CD18579AD01749B2152A75D6C873D8C44EA39C4748BD016A1769C72E3AE5
          646BA3F8899A8E8D6862B93C7015858890C4612812380F2737404013991B4E46
          FA15D16591575EE24398E583811C0658D0423A8CDB83B7ED71EC10377D4C4706
          5F00407D15E99FBCFBB82801924E9EE281A13C1C662B16D80D400AA7308F6324
          6DB07FCB9ECBF8AE412F0BF088679280E1B33E4239DA03D35D05E866C9EC2800
          372F21F40AA780755091DA8DA341153743117DDBBF01F8CCBB50C0F7DE7D00D3
          459624F4030B74011864661D14C58C0F7A0C5B7340BE2914614FE80100074D50
          A03F2EBEE569ECB3E8E7D569D0314BEC819A49BE8457DEABD7991C290CC39BB7
          5C828077D45BA096667F6FFD60CBE42C641FA9FD84FFA58D7F61B2049994483A
          BF42253A48CFE57A78452C7231F587B2C6C05005D9289297C1A42567FC7EC5A4
          E8A67F935C1EC76A869019CA4AFEFCC55A8C067B6F5C97CE33D501AF7FCF35C3
          773D3A923A0000000049454E44AE42608231333933}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = ExportBtnClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.BorderColorDisabled = 16250613
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 16250613
        Appearance.ColorDisabledTo = clNone
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = clNone
        Appearance.ColorMirrorDisabledTo = clNone
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 421
    Width = 565
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Ready'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = #3610#3633#3609#3607#3638#3585#3648#3614#3639#3656#3629#3605#3619#3623#3592#3626#3629#3610#3626#3636#3609#3588#3657#3634#3588#3591#3648#3627#3621#3639#3629
        Width = 170
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'TMPAJIV,TMPAJTR'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 150
      end>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'LiquidSky'
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ShowHint = False
    ParentShowHint = False
  end
  object DataSource1: TDataSource
    DataSet = FmDmic01.TmpAjIv
    OnStateChange = DataSource1StateChange
    Left = 512
    Top = 76
  end
  object DBkbd1: TDBkbd
    IgNoreUpDown = False
    UseArrowKey = True
    Disable = False
    DataSource = DataSource1
    StatusColor = clBlack
    OnKeyDown = DBkbd1KeyDown
    DeleteMessage = #3649#3609#3656#3651#3592#3627#3619#3639#3629#3652#3617#3656#3607#3637#3656#3592#3632#3621#3610' Record '#3609#3637#3657
    DelTop = 84
    DelLeft = 114
    AllowSpaceBar = False
    AllowEditing = False
    AllowInsert = True
    AllowDelete = True
    KeyToEdit = 115
    KeyToInsert = 45
    KeyToSave = 121
    Left = 484
    Top = 108
  end
  object QInvmast: TFDQuery
    CachedUpdates = True
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'Select * from INVMAST')
    Left = 484
    Top = 76
    object QInvmastPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
    end
    object QInvmastDESC1: TStringField
      FieldName = 'DESC1'
      Size = 45
    end
    object QInvmastGROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
    object QInvmastTYPE: TStringField
      FieldName = 'TYPE'
      Size = 5
    end
    object QInvmastMODEL: TStringField
      FieldName = 'MODEL'
      Size = 15
    end
    object QInvmastUNIT: TStringField
      FieldName = 'UNIT'
      Size = 10
    end
    object QInvmastVATCAL: TStringField
      FieldName = 'VATCAL'
      Size = 1
    end
    object QInvmastCOST: TFloatField
      FieldName = 'COST'
      DisplayFormat = '#,##0.00'
    end
    object QInvmastSTDBUY: TFloatField
      FieldName = 'STDBUY'
      DisplayFormat = '#,##0.00'
    end
    object QInvmastLSTBUY: TFloatField
      FieldName = 'LSTBUY'
      DisplayFormat = '#,##0.00'
    end
    object QInvmastLSTBDATE: TDateField
      FieldName = 'LSTBDATE'
    end
    object QInvmastPRICE1: TFloatField
      FieldName = 'PRICE1'
      DisplayFormat = '#,##0.00'
    end
    object QInvmastPRICE2: TFloatField
      FieldName = 'PRICE2'
      DisplayFormat = '#,##0.00'
    end
    object QInvmastPRICE3: TFloatField
      FieldName = 'PRICE3'
      DisplayFormat = '#,##0.00'
    end
    object QInvmastPRICE4: TFloatField
      FieldName = 'PRICE4'
      DisplayFormat = '#,##0.00'
    end
    object QInvmastMOVDATE: TDateField
      FieldName = 'MOVDATE'
    end
    object QInvmastCREATDAT: TDateField
      FieldName = 'CREATDAT'
    end
    object QInvmastCODE_T: TStringField
      DisplayWidth = 20
      FieldName = 'CODE_T'
    end
    object QInvmastMINCAL: TFloatField
      FieldName = 'MINCAL'
    end
    object QInvmastNETPRC: TStringField
      FieldName = 'NETPRC'
      Size = 1
    end
    object QInvmastDISCON: TStringField
      FieldName = 'DISCON'
      Size = 1
    end
    object QInvmastBACKORD: TFloatField
      FieldName = 'BACKORD'
    end
    object QInvmastONORDER: TFloatField
      FieldName = 'ONORDER'
    end
    object QInvmastFRT: TFloatField
      FieldName = 'FRT'
    end
    object QInvmastEMGCOST: TFloatField
      FieldName = 'EMGCOST'
      DisplayFormat = '#,##0.00'
    end
    object QInvmastMANUFAC: TStringField
      FieldName = 'MANUFAC'
    end
    object QInvmastSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Size = 12
    end
    object QInvmastCHARGFLG: TStringField
      FieldName = 'CHARGFLG'
      Size = 1
    end
    object QInvmastSESFLAG: TStringField
      FieldName = 'SESFLAG'
      Size = 1
    end
    object QInvmastYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object QInvmastMAXDISC: TFloatField
      FieldName = 'MAXDISC'
      DisplayFormat = '#,##0.00'
    end
    object QInvmastMIN1: TFloatField
      FieldName = 'MIN1'
    end
    object QInvmastMAX1: TFloatField
      FieldName = 'MAX1'
    end
    object QInvmastLOCK: TStringField
      FieldName = 'LOCK'
      Size = 1
    end
    object QInvmastUPD: TStringField
      FieldName = 'UPD'
      Size = 1
    end
    object QInvmastLABEL: TStringField
      FieldName = 'LABEL'
      Size = 1
    end
    object QInvmastPARTCHG: TStringField
      FieldName = 'PARTCHG'
    end
    object QInvmastPRIC1CHG: TFloatField
      FieldName = 'PRIC1CHG'
    end
    object QInvmastLASTCHG: TDateField
      FieldName = 'LASTCHG'
    end
    object QInvmastENGDESC: TStringField
      FieldName = 'ENGDESC'
      Size = 45
    end
    object QInvmastUNITENG: TStringField
      FieldName = 'UNITENG'
      Size = 10
    end
    object QInvmastBARCODE: TStringField
      FieldName = 'BARCODE'
      FixedChar = True
      Size = 30
    end
  end
  object ActionList1: TActionList
    Left = 512
    Top = 280
    object actEditPrn: TAction
      Caption = 'actEditPrn'
      ShortCut = 117
      OnExecute = actEditPrnExecute
    end
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    UseRibbon = False
    ShowMDIScrollBars = True
    WindowState = wsNormal
    QuickButtons = <>
    QuickButtonsShowHint = False
    QuickButtonsShowDivider = True
    ClientInActiveEffect = False
    ClientInActiveEffectType = bsieSemiTransparent
    DisableSystemMenu = False
    AlwaysResize = False
    PositionInMonitor = bspDefault
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    HideCloseButton = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    UseSkinFontInCaption = True
    UseSkinSizeInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ShowObjectHint = False
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = SFMain.bsSkinData1
    MinimizeApplication = False
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    MinClientHeight = 0
    MinClientWidth = 0
    MaxClientHeight = 0
    MaxClientWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp, biMinimizeToTray]
    Left = 32
    Top = 96
  end
  object ExportMenu: TAdvPopupMenu
    AutoHotkeys = maManual
    MenuStyler = SFMain.AdvMenuOfficeStyler1
    Version = '2.6.6.0'
    Left = 16
    Top = 350
    object MenuItem146: TMenuItem
      Caption = 'Excel Workbook'
      OnClick = MenuItem146Click
    end
    object MenuItem147: TMenuItem
      Caption = 'Excel 97-2003 Workbook'
      OnClick = MenuItem147Click
    end
  end
  object QExport4Xlsx1: TQExport4Xlsx
    DataSet = Query2
    About = '(About EMS AdvancedExport)'
    _Version = '4.1.0.7'
    Formats.DecimalSeparator = '.'
    Formats.ThousandSeparator = ','
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yyyy'
    Formats.TimeFormat = 'h:mm'
    Formats.DateTimeFormat = 'dd/MM/yyyy h:mm:ss'
    Formats.CurrencyFormat = #3647'#,###,##0.00'
    SheetName = 'sheet1'
    XlsxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.HeaderStyle.Font.Color = clBlack
    XlsxOptions.HeaderStyle.Font.Height = -15
    XlsxOptions.HeaderStyle.Font.Name = 'Calibri'
    XlsxOptions.HeaderStyle.Font.Style = []
    XlsxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.CaptionRowStyle.Font.Color = clBlack
    XlsxOptions.CaptionRowStyle.Font.Height = -15
    XlsxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    XlsxOptions.CaptionRowStyle.Font.Style = []
    XlsxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.DataStyle.Font.Color = clBlack
    XlsxOptions.DataStyle.Font.Height = -15
    XlsxOptions.DataStyle.Font.Name = 'Calibri'
    XlsxOptions.DataStyle.Font.Style = []
    XlsxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.FooterStyle.Font.Color = clBlack
    XlsxOptions.FooterStyle.Font.Height = -15
    XlsxOptions.FooterStyle.Font.Name = 'Calibri'
    XlsxOptions.FooterStyle.Font.Style = []
    XlsxOptions.StripStylesList = <>
    Left = 48
    Top = 350
  end
  object QExport4XLS1: TQExport4XLS
    DataSet = Query2
    About = '(About EMS AdvancedExport)'
    _Version = '4.1.0.7'
    Formats.DecimalSeparator = '.'
    Formats.ThousandSeparator = ','
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yyyy'
    Formats.TimeFormat = 'h:mm'
    Formats.DateTimeFormat = 'dd/MM/yyyy h:mm:ss'
    Formats.CurrencyFormat = #3647'#,###,##0.00'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    Aggregates = <>
    MergedCells = <>
    Left = 80
    Top = 350
  end
  object SaveDialog1: TbsSkinSaveDialog
    ShowThumbnails = True
    ShowHiddenFiles = False
    ToolButtonsTransparent = False
    OverwritePromt = False
    DialogWidth = 0
    DialogHeight = 0
    DialogMinWidth = 0
    DialogMinHeight = 0
    CheckFileExists = True
    MultiSelection = False
    AlphaBlend = False
    AlphaBlendValue = 225
    AlphaBlendAnimation = False
    CtrlAlphaBlend = False
    CtrlAlphaBlendValue = 225
    CtrlAlphaBlendAnimation = False
    LVHeaderSkinDataName = 'resizebutton'
    SkinData = SFMain.bsSkinData1
    CtrlSkinData = SFMain.bsSkinData1
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    Title = 'Save file'
    Filter = 
      'Excel Workbook|*.xlsx|Excel 97-2003 Workbook|*.xls|Word Document' +
      '|*.docx|Word 97-2003 Document|*.doc|PDF File|*.pdf|DBF File|*.db' +
      'f'
    FilterIndex = 1
    Left = 112
    Top = 350
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT A.PARTNO,B.DESC1,B.GROUP1,A.ADJLOC LOCAT,B.SHELF,A.QTYORD' +
        ' ALLO_TOT '
      
        'FROM TMPAJTR A,INVENTOR B WHERE A.PARTNO=B.PARTNO AND A.ADJLOC=B' +
        '.LOCAT AND A.YEAR1=B.YEAR1')
    Left = 232
    Top = 64
    object Query2LOCAT: TStringField
      DisplayLabel = #3619#3627#3633#3626#3626#3634#3586#3634
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object Query2PARTNO: TStringField
      DisplayLabel = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object Query2DESC1: TStringField
      DisplayLabel = #3594#3639#3656#3629'/'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3626#3636#3609#3588#3657#3634
      FieldName = 'DESC1'
      FixedChar = True
      Size = 45
    end
    object Query2GROUP1: TStringField
      DisplayLabel = #3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 5
    end
    object Query2SHELF: TStringField
      DisplayLabel = #3594#3633#3657#3609#3648#3585#3655#3610
      FieldName = 'SHELF'
      FixedChar = True
      Size = 15
    end
    object Query2ALLO_TOT: TFloatField
      DefaultExpression = '##,##0'
      DisplayLabel = #3618#3629#3604#3651#3609#3648#3588#3619#3639#3656#3629#3591
      FieldName = 'ALLO_TOT'
    end
  end
  object frxChartObject1: TfrxChartObject
    Left = 436
    Top = 304
  end
  object frxReport1: TfrxReport
    Version = '6.5.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.AllowPreviewEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43604.676131319440000000
    ReportOptions.LastChange = 43604.676131319440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 404
    Top = 368
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 404
    Top = 336
  end
  object frxBDEComponents1: TfrxBDEComponents
    DefaultSession = 'Default'
    Left = 537
    Top = 304
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 300
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 532
    Top = 336
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ','
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 532
    Top = 304
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 500
    Top = 304
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 500
    Top = 336
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = True
    PictureType = gpPNG
    Left = 501
    Top = 369
  end
  object frxRichObject1: TfrxRichObject
    Left = 468
    Top = 368
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 468
    Top = 336
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 468
    Top = 304
  end
  object frxReportTableObject1: TfrxReportTableObject
    Left = 436
    Top = 368
  end
  object frxFDComponents1: TfrxFDComponents
    DefaultDatabase = DM_SEC.HI_DBMS
    Left = 436
    Top = 336
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 404
    Top = 304
  end
end
