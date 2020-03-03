object frHistorySV: TfrHistorySV
  Left = 305
  Top = 20
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = #3626#3629#3610#3606#3634#3617#3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3610#3619#3636#3585#3634#3619
  ClientHeight = 771
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 940
    Height = 771
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
    object AdvPanel2: TAdvPanel
      Left = 1
      Top = 1
      Width = 938
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
      TabOrder = 0
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
      object AdvToolBar1: TAdvToolBar
        Left = 2
        Top = -1
        Width = 258
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
        object AdvToolBarSeparator5: TAdvToolBarSeparator
          Left = 128
          Top = 2
          Width = 10
          Height = 47
          SeparatorStyle = ssBlank
          LineColor = clBtnShadow
          Visible = False
        end
        object AdvToolBarSeparator6: TAdvToolBarSeparator
          Left = 118
          Top = 2
          Width = 10
          Height = 47
          SeparatorStyle = ssBlank
          LineColor = clBtnShadow
        end
        object EnqBtn: TAdvGlowButton
          Left = 2
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
          TabOrder = 0
          OnClick = EnqBtnClick
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
          Left = 196
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
          TabOrder = 1
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
        object PrnBtn: TAdvGlowButton
          Left = 60
          Top = 2
          Width = 58
          Height = 47
          Cursor = crHandPoint
          Hint = #3649#3585#3657#3652#3586#3607#3637#3656#3629#3618#3641#3656#3621#3641#3585#3588#3657#3634
          Caption = 'Edit'
          Font.Charset = THAI_CHARSET
          Font.Color = 7485192
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 20
          Images = SFMain.cxImageList1
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = PrnBtnClick
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
        object AdvGlowButton1: TAdvGlowButton
          Left = 138
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
          TabOrder = 3
          OnClick = AdvGlowButton1Click
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
      object cxGroupBox11: TcxGroupBox
        Left = 273
        Top = -6
        ParentFont = False
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = 7485192
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'DarkSide'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'DarkSide'
        TabOrder = 1
        Height = 54
        Width = 384
        object Label70: TLabel
          Left = 2
          Top = 23
          Width = 98
          Height = 16
          Alignment = taRightJustify
          Caption = #3623#3633#3609#3607#3637#3656#3648#3586#3657#3634#3619#3633#3610#3610#3619#3636#3585#3634#3619' :'
          Color = clBtnFace
          Font.Charset = THAI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label71: TLabel
          Left = 232
          Top = 23
          Width = 14
          Height = 16
          Alignment = taRightJustify
          Caption = #3606#3638#3591
          Color = clBtnFace
          Font.Charset = THAI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object cxDateEdit1: TcxDateEdit
          Left = 106
          Top = 20
          TabOrder = 0
          Width = 121
        end
        object cxDateEdit2: TcxDateEdit
          Left = 248
          Top = 20
          TabOrder = 1
          Width = 121
        end
      end
    end
    object PageControl1: TcxPageControl
      Left = 1
      Top = 52
      Width = 938
      Height = 718
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'iMaginary'
      OnChange = PageControl1Change
      ClientRectBottom = 718
      ClientRectRight = 938
      ClientRectTop = 27
      object cxTabSheet1: TcxTabSheet
        Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604'/'#3621#3641#3585#3588#3657#3634
        ImageIndex = 0
        object cxGroupBox7: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = 'Details :'
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'iMaginary'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'iMaginary'
          TabOrder = 0
          Height = 691
          Width = 938
          object Label40: TLabel
            Left = 13
            Top = 27
            Width = 78
            Height = 16
            Alignment = taRightJustify
            Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label43: TLabel
            Left = 31
            Top = 50
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Caption = #3619#3627#3633#3626#3618#3637#3656#3627#3657#3629#3619#3606
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label47: TLabel
            Left = 31
            Top = 102
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Caption = #3586#3609#3634#3604' '#3595#3637'.'#3595#3637'.'
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label41: TLabel
            Left = 319
            Top = 25
            Width = 52
            Height = 16
            Alignment = taRightJustify
            Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label44: TLabel
            Left = 40
            Top = 75
            Width = 50
            Height = 16
            Alignment = taRightJustify
            Caption = #3619#3627#3633#3626#3619#3640#3656#3609#3619#3606
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label46: TLabel
            Left = 608
            Top = 77
            Width = 22
            Height = 16
            Alignment = taRightJustify
            Caption = #3626#3637#3619#3606
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label42: TLabel
            Left = 568
            Top = 26
            Width = 63
            Height = 16
            Caption = #3648#3621#3586#3607#3632#3648#3610#3637#3618#3609
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label45: TLabel
            Left = 602
            Top = 49
            Width = 24
            Height = 16
            Caption = #3649#3610#3610
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label21: TLabel
            Left = 16
            Top = 127
            Width = 75
            Height = 16
            Alignment = taRightJustify
            Caption = #3623#3633#3609#3607#3637#3656#3626#3656#3591#3617#3629#3610#3619#3606
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            Left = 26
            Top = 178
            Width = 65
            Height = 16
            Alignment = taRightJustify
            Caption = #3648#3621#3586#3610#3633#3605#3619' VIP'
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 17
            Top = 152
            Width = 73
            Height = 16
            Alignment = taRightJustify
            Caption = #3619#3627#3633#3626'/'#3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label14: TLabel
            Left = 342
            Top = 178
            Width = 69
            Height = 16
            Alignment = taRightJustify
            Caption = #3623#3633#3609#3607#3637#3656#3629#3629#3585#3610#3633#3605#3619
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label16: TLabel
            Left = 565
            Top = 177
            Width = 68
            Height = 16
            Caption = #3610#3633#3605#3619#3627#3617#3604#3629#3634#3618#3640
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label30: TLabel
            Left = 543
            Top = 150
            Width = 86
            Height = 16
            Alignment = taRightJustify
            Caption = #3621#3604#3588#3656#3634#3610#3619#3636#3585#3634#3619'(%)'
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label29: TLabel
            Left = 331
            Top = 103
            Width = 40
            Height = 16
            Alignment = taRightJustify
            Caption = #3648#3610#3629#3619#3660#3619#3606
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label18: TLabel
            Left = 598
            Top = 103
            Width = 34
            Height = 16
            Alignment = taRightJustify
            Caption = #3649#3619#3591#3617#3657#3634
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label19: TLabel
            Left = 624
            Top = 128
            Width = 8
            Height = 16
            Alignment = taRightJustify
            Caption = #3611#3637
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label69: TLabel
            Left = 336
            Top = 128
            Width = 35
            Height = 16
            Alignment = taRightJustify
            Caption = 'E-Mail'
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object RzDBLabel1: TcxDBTextEdit
            Left = 95
            Top = 23
            DataBinding.DataField = 'STRNO'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = clRed
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 0
            Width = 225
          end
          object RzDBLabel4: TcxDBTextEdit
            Left = 95
            Top = 48
            DataBinding.DataField = 'TYPE'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Properties.OnChange = RzDBLabel4PropertiesChange
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 1
            Width = 121
          end
          object RzDBLabel7: TcxDBTextEdit
            Left = 95
            Top = 99
            DataBinding.DataField = 'CC'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 2
            Width = 121
          end
          object RzDBLabel2: TcxDBTextEdit
            Left = 376
            Top = 23
            DataBinding.DataField = 'ENGNO'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 3
            Width = 161
          end
          object RzDBLabel5: TcxDBTextEdit
            Left = 95
            Top = 73
            DataBinding.DataField = 'MDLCOD'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Properties.OnChange = RzDBLabel5PropertiesChange
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = clRed
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 4
            Width = 121
          end
          object RzDBLabel8: TcxDBTextEdit
            Left = 635
            Top = 73
            DataBinding.DataField = 'COLOR'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = clRed
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 5
            Width = 121
          end
          object RzDBLabel3: TcxDBTextEdit
            Left = 635
            Top = 23
            DataBinding.DataField = 'REGNO'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = clRed
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 6
            Width = 121
          end
          object RzDBLabel6: TcxDBTextEdit
            Left = 635
            Top = 48
            DataBinding.DataField = 'BAAB'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 7
            Width = 121
          end
          object RzDBLabel11: TcxDBTextEdit
            Left = 95
            Top = 124
            DataBinding.DataField = 'SDATE'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 8
            Width = 121
          end
          object RzDBLabel14: TcxDBTextEdit
            Left = 95
            Top = 176
            DataBinding.DataField = 'VIPCARD'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 9
            Width = 121
          end
          object RzDBLabel12: TcxDBTextEdit
            Left = 95
            Top = 150
            DataBinding.DataField = 'CUSCOD'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Properties.OnChange = RzDBLabel12PropertiesChange
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 10
            Width = 121
          end
          object RzDBLabel15: TcxDBTextEdit
            Left = 416
            Top = 176
            DataBinding.DataField = 'VIPISSU'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 11
            Width = 121
          end
          object Edit3: TcxTextEdit
            Left = 215
            Top = 150
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 12
            Width = 322
          end
          object RzDBLabel19: TcxDBTextEdit
            Left = 634
            Top = 149
            DataBinding.DataField = 'SVDISCT'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 13
            Width = 122
          end
          object RzDBLabel16: TcxDBTextEdit
            Left = 635
            Top = 174
            DataBinding.DataField = 'VIPEXP'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 14
            Width = 121
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 376
            Top = 99
            DataBinding.DataField = 'BODYNO'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 15
            Width = 161
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 635
            Top = 99
            DataBinding.DataField = 'HORSEPOWER'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 16
            Width = 121
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 635
            Top = 124
            DataBinding.DataField = 'MODLYEAR'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 17
            Width = 121
          end
          object cxTextEdit1: TcxTextEdit
            Left = 216
            Top = 48
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 18
            Width = 321
          end
          object cxTextEdit2: TcxTextEdit
            Left = 216
            Top = 73
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = clRed
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 19
            Width = 321
          end
          object cxGroupBox9: TcxGroupBox
            Left = 5
            Top = 203
            Caption = #3607#3637#3656#3629#3618#3641#3656' I'
            ParentFont = False
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LondonLiquidSky'
            Style.Shadow = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
            TabOrder = 20
            Height = 242
            Width = 372
            object Label6: TLabel
              Left = 23
              Top = 24
              Width = 54
              Height = 16
              Alignment = taRightJustify
              Caption = #3607#3637#3656#3629#3618#3641#3656#3648#3621#3586#3607#3637#3656
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label8: TLabel
              Left = 53
              Top = 49
              Width = 24
              Height = 16
              Alignment = taRightJustify
              Caption = #3606#3609#3609
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label9: TLabel
              Left = 47
              Top = 75
              Width = 30
              Height = 16
              Alignment = taRightJustify
              Caption = #3605#3635#3610#3621
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label10: TLabel
              Left = 43
              Top = 102
              Width = 34
              Height = 16
              Alignment = taRightJustify
              Caption = #3629#3635#3648#3616#3629
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label11: TLabel
              Left = 42
              Top = 128
              Width = 35
              Height = 16
              Alignment = taRightJustify
              Caption = #3592#3633#3591#3627#3623#3633#3604
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label50: TLabel
              Left = 5
              Top = 153
              Width = 72
              Height = 16
              Alignment = taRightJustify
              Caption = #3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label58: TLabel
              Left = 30
              Top = 180
              Width = 47
              Height = 16
              Alignment = taRightJustify
              Caption = #3650#3607#3619#3624#3633#3614#3607#3660
              Font.Charset = THAI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label76: TLabel
              Left = 210
              Top = 207
              Width = 32
              Height = 16
              Alignment = taRightJustify
              Caption = #3617#3639#3629#3606#3639#3629
              Font.Charset = THAI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label77: TLabel
              Left = 27
              Top = 207
              Width = 48
              Height = 16
              Alignment = taRightJustify
              Caption = #3648#3610#3629#3619#3660#3610#3657#3634#3609
              Font.Charset = THAI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Edit1: TcxTextEdit
              Left = 180
              Top = 99
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
              Style.TextColor = -1
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 0
              Width = 187
            end
            object Edit2: TcxTextEdit
              Left = 180
              Top = 125
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
              Style.TextColor = -1
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 1
              Width = 187
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 80
              Top = 20
              DataBinding.DataField = 'ADDR_I'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = -1
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 2
              Width = 287
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 80
              Top = 46
              DataBinding.DataField = 'RODE_I'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = -1
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 3
              Width = 287
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 80
              Top = 72
              DataBinding.DataField = 'TUMB_I'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = -1
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 4
              Width = 287
            end
            object DBEdit22: TcxDBButtonEdit
              Left = 80
              Top = 99
              DataBinding.DataField = 'AUMPID_I'
              DataBinding.DataSource = Socustmast
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnChange = DBEdit22PropertiesChange
              Style.Color = clWhite
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.TextColor = -1
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 5
              Width = 102
            end
            object cxDBButtonEdit2: TcxDBButtonEdit
              Left = 80
              Top = 125
              DataBinding.DataField = 'PROVID_I'
              DataBinding.DataSource = Socustmast
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnChange = cxDBButtonEdit2PropertiesChange
              Style.Color = clWhite
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.TextColor = -1
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 6
              Width = 102
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 80
              Top = 151
              DataBinding.DataField = 'ZIP_I'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = -1
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 7
              Width = 287
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 80
              Top = 178
              DataBinding.DataField = 'TELP_I'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = clRed
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 8
              Width = 287
            end
            object cxDBTextEdit28: TcxDBTextEdit
              Left = 80
              Top = 204
              DataBinding.DataField = 'TEL_HOME'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = clRed
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 9
              Width = 124
            end
            object cxDBTextEdit29: TcxDBTextEdit
              Left = 243
              Top = 204
              DataBinding.DataField = 'TEL_MOBILE'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = clRed
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 10
              Width = 124
            end
          end
          object cxGroupBox10: TcxGroupBox
            Left = 380
            Top = 203
            Caption = #3607#3637#3656#3629#3618#3641#3656' II'
            ParentFont = False
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LondonLiquidSky'
            Style.Shadow = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
            TabOrder = 21
            Height = 242
            Width = 379
            object Label59: TLabel
              Left = 26
              Top = 25
              Width = 54
              Height = 16
              Alignment = taRightJustify
              Caption = #3607#3637#3656#3629#3618#3641#3656#3648#3621#3586#3607#3637#3656
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label63: TLabel
              Left = 56
              Top = 50
              Width = 24
              Height = 16
              Alignment = taRightJustify
              Caption = #3606#3609#3609
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label64: TLabel
              Left = 50
              Top = 76
              Width = 30
              Height = 16
              Alignment = taRightJustify
              Caption = #3605#3635#3610#3621
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label65: TLabel
              Left = 46
              Top = 102
              Width = 34
              Height = 16
              Alignment = taRightJustify
              Caption = #3629#3635#3648#3616#3629
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label66: TLabel
              Left = 45
              Top = 128
              Width = 35
              Height = 16
              Alignment = taRightJustify
              Caption = #3592#3633#3591#3627#3623#3633#3604
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label67: TLabel
              Left = 8
              Top = 153
              Width = 72
              Height = 16
              Alignment = taRightJustify
              Caption = #3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label68: TLabel
              Left = 18
              Top = 179
              Width = 62
              Height = 16
              Alignment = taRightJustify
              Caption = #3648#3610#3629#3619#3660#3626#3656#3623#3609#3605#3633#3623
              Font.Charset = THAI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label78: TLabel
              Left = 34
              Top = 205
              Width = 44
              Height = 16
              Alignment = taRightJustify
              Caption = #3607#3637#3656#3607#3635#3591#3634#3609
              Font.Charset = THAI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object cxTextEdit5: TcxTextEdit
              Left = 186
              Top = 99
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
              Style.TextColor = clBlack
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 0
              Width = 191
            end
            object cxTextEdit6: TcxTextEdit
              Left = 186
              Top = 125
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
              Style.TextColor = clBlack
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 1
              Width = 191
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 83
              Top = 21
              DataBinding.DataField = 'ADDR_II'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = clBlack
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 2
              Width = 294
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 83
              Top = 47
              DataBinding.DataField = 'RODE_II'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = clBlack
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 3
              Width = 294
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 83
              Top = 73
              DataBinding.DataField = 'TUMB_II'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = clBlack
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 4
              Width = 294
            end
            object cxDBButtonEdit4: TcxDBButtonEdit
              Left = 83
              Top = 99
              DataBinding.DataField = 'AUMPID_II'
              DataBinding.DataSource = Socustmast
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnChange = cxDBButtonEdit4PropertiesChange
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.TextColor = clBlack
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 5
              Width = 102
            end
            object cxDBButtonEdit5: TcxDBButtonEdit
              Left = 83
              Top = 125
              DataBinding.DataField = 'PROVID_II'
              DataBinding.DataSource = Socustmast
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnChange = cxDBButtonEdit5PropertiesChange
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.TextColor = clBlack
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 6
              Width = 102
            end
            object cxDBTextEdit20: TcxDBTextEdit
              Left = 83
              Top = 151
              DataBinding.DataField = 'ZIP_II'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = clBlack
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 7
              Width = 294
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 83
              Top = 177
              DataBinding.DataField = 'TELP_II'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = clRed
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 8
              Width = 294
            end
            object cxDBTextEdit27: TcxDBTextEdit
              Left = 83
              Top = 203
              DataBinding.DataField = 'TEL_OFFICE'
              DataBinding.DataSource = Socustmast
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
              Style.TextColor = clRed
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 9
              Width = 294
            end
          end
          object cxDBTextEdit22: TcxDBTextEdit
            Left = 376
            Top = 124
            DataBinding.DataField = 'EMAIL1'
            DataBinding.DataSource = Socustmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clWhite
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = -1
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 22
            Width = 161
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #3619#3634#3618#3585#3634#3619#3651#3610#3649#3592#3657#3591#3595#3656#3629#3617
        ImageIndex = 1
        object DBGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 938
          Height = 691
          Align = alClient
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'iMaginary'
          object DBGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = SoJoborder3
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end
              item
                Format = '##0.00'
                Kind = skSum
                Position = spFooter
              end
              item
                Format = '##0.00'
                Kind = skSum
                Position = spFooter
              end
              item
                Format = '##0.00'
                Kind = skSum
              end
              item
                Format = '##0.00'
                Kind = skSum
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##,##0.00'
                Kind = skSum
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end
              item
                Format = '##0.00'
                Kind = skSum
              end
              item
                Format = '##0.00'
                Kind = skSum
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end
              item
                Format = '##,##0.00'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnMoving = False
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
            object DBGrid1DBTableView1RECVDATE: TcxGridDBColumn
              Caption = #3623#3633#3609#3607#3637#3656#3648#3586#3657#3634#3610#3619#3636#3585#3634#3619
              DataBinding.FieldName = 'RECVDATE'
              HeaderAlignmentHorz = taCenter
              Width = 111
            end
            object DBGrid1DBTableView1JOBNO: TcxGridDBColumn
              Caption = #3648#3621#3586#3607#3637#3656' JOB'
              DataBinding.FieldName = 'JOBNO'
              HeaderAlignmentHorz = taCenter
            end
            object DBGrid1DBTableView1LOCAT: TcxGridDBColumn
              Caption = #3626#3634#3586#3634#3607#3637#3656#3595#3656#3629#3617
              DataBinding.FieldName = 'LOCAT'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object DBGrid1DBTableView1RLKILOMT: TcxGridDBColumn
              Caption = #3648#3621#3586#3585#3636#3650#3621' '#3603' '#3623#3633#3609#3595#3656#3629#3617
              DataBinding.FieldName = 'RLKILOMT'
              HeaderAlignmentHorz = taCenter
              Width = 108
            end
            object DBGrid1DBTableView1REPTYPE: TcxGridDBColumn
              Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3595#3656#3629#3617
              DataBinding.FieldName = 'REPTYPE'
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object DBGrid1DBTableView1GROUP1: TcxGridDBColumn
              Caption = #3619#3627#3633#3626#3585#3621#3640#3656#3617#3591#3634#3609
              DataBinding.FieldName = 'GROUP1'
              HeaderAlignmentHorz = taCenter
              Width = 97
            end
            object DBGrid1DBTableView1REPCOD: TcxGridDBColumn
              Caption = #3619#3627#3633#3626#3594#3656#3634#3591
              DataBinding.FieldName = 'REPCOD'
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object DBGrid1DBTableView1RECVCOD: TcxGridDBColumn
              Caption = #3614#3609#3633#3585#3591#3634#3609#3619#3633#3610#3619#3606
              DataBinding.FieldName = 'RECVCOD'
              HeaderAlignmentHorz = taCenter
              Width = 84
            end
            object DBGrid1DBTableView1PAYCOD: TcxGridDBColumn
              Caption = #3614#3609#3633#3585#3591#3634#3609#3592#3656#3634#3618#3619#3606
              DataBinding.FieldName = 'PAYCOD'
              HeaderAlignmentHorz = taCenter
              Width = 86
            end
            object DBGrid1DBTableView1CUSCOD: TcxGridDBColumn
              Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
              DataBinding.FieldName = 'CUSCOD'
              HeaderAlignmentHorz = taCenter
              Width = 88
            end
            object DBGrid1DBTableView1RFINSHDT: TcxGridDBColumn
              Caption = #3623#3633#3609#3595#3656#3629#3617#3648#3626#3619#3655#3592
              DataBinding.FieldName = 'RFINSHDT'
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object DBGrid1DBTableView1APP_DATE: TcxGridDBColumn
              Caption = #3623#3633#3609#3609#3633#3604#3588#3619#3633#3657#3591#3605#3656#3629#3652#3611
              DataBinding.FieldName = 'APP_DATE'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object DBGrid1DBTableView1APP_MILE: TcxGridDBColumn
              Caption = #3648#3621#3586#3607#3637#3656#3585#3636#3650#3621#3609#3633#3604#3627#3617#3634#3618
              DataBinding.FieldName = 'APP_MILE'
              HeaderAlignmentHorz = taCenter
              Width = 99
            end
            object DBGrid1DBTableView1INSPECT: TcxGridDBColumn
              Caption = #3605#3619#3623#3592#3626#3629#3610
              DataBinding.FieldName = 'INSPECT'
              HeaderAlignmentHorz = taCenter
              Width = 62
            end
          end
          object DBGrid1Level1: TcxGridLevel
            Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
            GridView = DBGrid1DBTableView1
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619','#3588#3635#3626#3633#3656#3591#3595#3656#3629#3617
        ImageIndex = 2
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = #3619#3634#3618#3585#3634#3619#3588#3656#3634#3610#3619#3636#3585#3634#3619
          ParentFont = False
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'iMaginary'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'iMaginary'
          TabOrder = 0
          Height = 400
          Width = 938
          object DBGrid_Sv: TcxGrid
            Left = 2
            Top = 21
            Width = 934
            Height = 339
            Align = alClient
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'iMaginary'
            object cxGridDBTableView2: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsServTran
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView2PRICE
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView2REDU
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView2NETPRIC
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView2CODE: TcxGridDBColumn
                Caption = #3619#3627#3633#3626#3610#3619#3636#3585#3634#3619
                DataBinding.FieldName = 'CODE'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView2DESC1: TcxGridDBColumn
                Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
                DataBinding.FieldName = 'DESC1'
                HeaderAlignmentHorz = taCenter
                Width = 279
              end
              object cxGridDBTableView2FRT: TcxGridDBColumn
                DataBinding.FieldName = 'FRT'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView2PRICE: TcxGridDBColumn
                Caption = #3619#3634#3588#3634
                DataBinding.FieldName = 'PRICE'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView2REDU: TcxGridDBColumn
                Caption = #3626#3656#3623#3609#3621#3604
                DataBinding.FieldName = 'REDU'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView2NETPRIC: TcxGridDBColumn
                Caption = #3619#3634#3588#3634#3626#3640#3607#3608#3636
                DataBinding.FieldName = 'NETPRIC'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView2CLAIM: TcxGridDBColumn
                Caption = #3648#3588#3621#3617
                DataBinding.FieldName = 'CLAIM'
                HeaderAlignmentHorz = taCenter
                Width = 63
              end
              object cxGridDBTableView2SERVCOD: TcxGridDBColumn
                Caption = #3619#3627#3633#3626#3594#3656#3634#3591
                DataBinding.FieldName = 'SERVCOD'
                HeaderAlignmentHorz = taCenter
                Width = 74
              end
            end
            object cxGridLevel2: TcxGridLevel
              Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
              GridView = cxGridDBTableView2
            end
          end
          object AdvPanel3: TAdvPanel
            Left = 2
            Top = 360
            Width = 934
            Height = 38
            Align = alBottom
            BevelOuter = bvNone
            Color = 16645114
            Font.Charset = THAI_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
            FullHeight = 200
            object Label17: TLabel
              Left = 47
              Top = 14
              Width = 50
              Height = 16
              Caption = #3617#3641#3621#3588#3656#3634#3619#3623#3617
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label25: TLabel
              Left = 275
              Top = 14
              Width = 24
              Height = 16
              Caption = #3616#3634#3625#3637
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label26: TLabel
              Left = 476
              Top = 13
              Width = 44
              Height = 16
              Caption = #3618#3629#3604#3619#3623#3617
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBEdit10: TcxDBTextEdit
              Left = 101
              Top = 11
              DataBinding.DataField = 'SERVNET'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 0
              Width = 121
            end
            object DBEdit27: TcxDBTextEdit
              Left = 310
              Top = 11
              DataBinding.DataField = 'SERVVAT'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 1
              Width = 121
            end
            object DBEdit28: TcxDBTextEdit
              Left = 529
              Top = 11
              DataBinding.DataField = 'SERVTOT'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
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
              Width = 121
            end
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 400
          Align = alClient
          Caption = #3619#3634#3618#3585#3634#3619#3588#3635#3626#3633#3656#3591#3595#3656#3629#3617
          ParentFont = False
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'iMaginary'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'iMaginary'
          TabOrder = 1
          Height = 291
          Width = 938
          object RzDBGrid1: TcxGrid
            Left = 2
            Top = 21
            Width = 934
            Height = 268
            Align = alClient
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'iMaginary'
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsOrdrep
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
              OptionsView.GroupByBox = False
              object cxGridDBTableView1NO: TcxGridDBColumn
                Caption = #3621#3635#3604#3633#3610#3607#3637#3656
                DataBinding.FieldName = 'NO'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView1REPDESC: TcxGridDBColumn
                Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
                DataBinding.FieldName = 'REPDESC'
                HeaderAlignmentHorz = taCenter
                Width = 314
              end
              object cxGridDBTableView1FLAG: TcxGridDBColumn
                Caption = #3626#3606#3634#3609#3632
                DataBinding.FieldName = 'FLAG'
                HeaderAlignmentHorz = taCenter
                Width = 117
              end
            end
            object cxGridLevel1: TcxGridLevel
              Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
              GridView = cxGridDBTableView1
            end
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = #3588#3656#3634#3629#3632#3652#3627#3621#3656','#3609#3657#3635#3617#3633#3609
        ImageIndex = 3
        object cxGroupBox4: TcxGroupBox
          Left = 0
          Top = 385
          Align = alClient
          Caption = #3619#3634#3618#3585#3634#3619#3609#3657#3635#3617#3633#3609
          ParentFont = False
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'iMaginary'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'iMaginary'
          TabOrder = 0
          Height = 306
          Width = 938
          object cxGrid1: TcxGrid
            Left = 2
            Top = 55
            Width = 934
            Height = 216
            Align = alClient
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'iMaginary'
            object cxGridDBTableView4: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsOloTran
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBColumn4
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBColumn5
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBColumn6
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
                DataBinding.FieldName = 'PARTNO'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = #3592#3635#3609#3623#3609
                DataBinding.FieldName = 'QTY'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = #3619#3634#3588#3634#3586#3634#3618
                DataBinding.FieldName = 'UPRICE'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
                DataBinding.FieldName = 'NETPRC'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = #3626#3656#3623#3609#3621#3604
                DataBinding.FieldName = 'REDU1'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = #3618#3629#3604#3626#3640#3607#3608#3636
                DataBinding.FieldName = 'TOTPRC'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = #3619#3627#3633#3626#3594#3656#3634#3591#3595#3656#3629#3617
                DataBinding.FieldName = 'SERVCOD'
                HeaderAlignmentHorz = taCenter
                Width = 105
              end
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = #3594#3633#3656#3623#3650#3617#3591#3607#3635#3591#3634#3609#3592#3619#3629#3591
                DataBinding.FieldName = 'SERTIME'
                HeaderAlignmentHorz = taCenter
                Width = 86
              end
            end
            object cxGridLevel4: TcxGridLevel
              Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
              GridView = cxGridDBTableView4
            end
          end
          object AdvPanel4: TAdvPanel
            Left = 2
            Top = 271
            Width = 934
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            Color = 16645114
            Font.Charset = THAI_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
            FullHeight = 200
            object Label27: TLabel
              Left = 47
              Top = 7
              Width = 50
              Height = 16
              Caption = #3617#3641#3621#3588#3656#3634#3619#3623#3617
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label48: TLabel
              Left = 275
              Top = 8
              Width = 24
              Height = 16
              Caption = #3616#3634#3625#3637
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label49: TLabel
              Left = 476
              Top = 9
              Width = 44
              Height = 16
              Caption = #3618#3629#3604#3619#3623#3617
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBEdit11: TcxDBTextEdit
              Left = 101
              Top = 6
              DataBinding.DataField = 'OILNET'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 0
              Width = 121
            end
            object DBEdit25: TcxDBTextEdit
              Left = 302
              Top = 6
              DataBinding.DataField = 'OILVAT'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 1
              Width = 121
            end
            object DBEdit26: TcxDBTextEdit
              Left = 521
              Top = 6
              DataBinding.DataField = 'OILTOT'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
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
              Width = 121
            end
          end
          object AdvPanel8: TAdvPanel
            Left = 2
            Top = 21
            Width = 934
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            Color = 16645114
            Font.Charset = THAI_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
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
            FullHeight = 200
            object RzDBLabel9: TRzDBLabel
              Left = 159
              Top = 5
              Width = 122
              Height = 24
              AutoSize = True
              Font.Charset = THAI_CHARSET
              Font.Color = 8404992
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              BlinkIntervalOff = 0
              BlinkIntervalOn = 0
              DataField = 'DESC1'
              DataSource = dsDetailOli
            end
            object Label34: TLabel
              Left = 12
              Top = 5
              Width = 136
              Height = 24
              Caption = #3619#3634#3618#3585#3634#3619#3609#3657#3635#3617#3633#3609' :'
              Font.Charset = THAI_CHARSET
              Font.Color = 7485192
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = #3619#3634#3618#3585#3634#3619#3629#3632#3652#3627#3621#3656
          ParentFont = False
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'iMaginary'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'iMaginary'
          TabOrder = 1
          Height = 385
          Width = 938
          object DBGrid_Pt: TcxGrid
            Left = 2
            Top = 55
            Width = 934
            Height = 328
            Align = alClient
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'iMaginary'
            object cxGridDBTableView3: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsParttran
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView3UPRICE
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView3REDU1
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView3NETPRC
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView3TOTPRC
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView3PARTNO: TcxGridDBColumn
                Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
                DataBinding.FieldName = 'PARTNO'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView3QTY: TcxGridDBColumn
                Caption = #3592#3635#3609#3623#3609
                DataBinding.FieldName = 'QTY'
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object cxGridDBTableView3UPRICE: TcxGridDBColumn
                Caption = #3619#3634#3588#3634#3586#3634#3618
                DataBinding.FieldName = 'UPRICE'
                HeaderAlignmentHorz = taCenter
                Width = 87
              end
              object cxGridDBTableView3REDU1: TcxGridDBColumn
                Caption = #3626#3656#3623#3609#3621#3604'1'
                DataBinding.FieldName = 'REDU1'
                HeaderAlignmentHorz = taCenter
                Width = 90
              end
              object cxGridDBTableView3NETPRC: TcxGridDBColumn
                Caption = #3619#3634#3588#3634#3626#3640#3607#3608#3636
                DataBinding.FieldName = 'NETPRC'
                HeaderAlignmentHorz = taCenter
                Width = 86
              end
              object cxGridDBTableView3TOTPRC: TcxGridDBColumn
                Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
                DataBinding.FieldName = 'TOTPRC'
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object cxGridDBTableView3CLAIM: TcxGridDBColumn
                Caption = #3648#3588#3621#3617
                DataBinding.FieldName = 'CLAIM'
                HeaderAlignmentHorz = taCenter
                Width = 58
              end
              object cxGridDBTableView3NETFL: TcxGridDBColumn
                Caption = 'NET'
                DataBinding.FieldName = 'NETFL'
                HeaderAlignmentHorz = taCenter
                Width = 62
              end
              object cxGridDBTableView3SERVCOD: TcxGridDBColumn
                Caption = #3619#3627#3633#3626#3594#3656#3634#3591#3595#3656#3629#3617
                DataBinding.FieldName = 'SERVCOD'
                HeaderAlignmentHorz = taCenter
                Width = 83
              end
              object cxGridDBTableView3FRT: TcxGridDBColumn
                DataBinding.FieldName = 'FRT'
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGridLevel3: TcxGridLevel
              Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
              GridView = cxGridDBTableView3
            end
          end
          object AdvPanel6: TAdvPanel
            Left = 2
            Top = 21
            Width = 934
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            Color = 16645114
            Font.Charset = THAI_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
            FullHeight = 200
            object DBEdit17: TRzDBLabel
              Left = 159
              Top = 5
              Width = 94
              Height = 24
              AutoSize = True
              Font.Charset = THAI_CHARSET
              Font.Color = 8404992
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              BlinkIntervalOff = 0
              BlinkIntervalOn = 0
              DataField = 'DESC1'
              DataSource = DsDetailPt
            end
            object Label33: TLabel
              Left = 12
              Top = 5
              Width = 144
              Height = 24
              Caption = #3619#3634#3618#3585#3634#3619#3629#3632#3652#3627#3621#3656' :'
              Font.Charset = THAI_CHARSET
              Font.Color = 7485192
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = #3588#3656#3634#3591#3634#3609#3609#3629#3585','#3591#3634#3609#3626#3637
        ImageIndex = 4
        object cxGroupBox5: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619#3591#3634#3609#3609#3629#3585
          ParentFont = False
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'iMaginary'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'iMaginary'
          TabOrder = 0
          Height = 417
          Width = 938
          object DBGrid_Ot: TcxGrid
            Left = 2
            Top = 55
            Width = 934
            Height = 327
            Align = alClient
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'iMaginary'
            object cxGridDBTableView5: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsOuttran
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView5UCOST
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView5TOTPRIC
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView5REDU
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView5NETPRIC
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView5CODE: TcxGridDBColumn
                Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
                DataBinding.FieldName = 'CODE'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView5DESC1: TcxGridDBColumn
                Caption = #3619#3634#3618#3585#3634#3619
                DataBinding.FieldName = 'DESC1'
                HeaderAlignmentHorz = taCenter
                Width = 277
              end
              object cxGridDBTableView5QTY: TcxGridDBColumn
                Caption = #3592#3635#3609#3623#3609
                DataBinding.FieldName = 'QTY'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView5UCOST: TcxGridDBColumn
                Caption = #3605#3657#3609#3607#3640#3609#3605#3656#3629#3627#3609#3656#3623#3618
                DataBinding.FieldName = 'UCOST'
                HeaderAlignmentHorz = taCenter
                Width = 85
              end
              object cxGridDBTableView5TOTPRIC: TcxGridDBColumn
                Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618
                DataBinding.FieldName = 'TOTPRIC'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView5REDU: TcxGridDBColumn
                Caption = #3626#3656#3623#3609#3621#3604
                DataBinding.FieldName = 'REDU'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView5NETPRIC: TcxGridDBColumn
                Caption = #3619#3634#3588#3634#3626#3640#3607#3608#3636
                DataBinding.FieldName = 'NETPRIC'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView5SERVCOD: TcxGridDBColumn
                Caption = #3619#3627#3633#3626#3594#3656#3634#3591#3595#3656#3629#3617
                DataBinding.FieldName = 'SERVCOD'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView5SERTIME: TcxGridDBColumn
                Caption = #3594#3633#3656#3623#3650#3617#3591#3607#3635#3591#3634#3609#3592#3619#3636#3591
                DataBinding.FieldName = 'SERTIME'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView5OTTIME: TcxGridDBColumn
                Caption = 'OT'
                DataBinding.FieldName = 'OTTIME'
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGridLevel5: TcxGridLevel
              Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
              GridView = cxGridDBTableView5
            end
          end
          object AdvPanel5: TAdvPanel
            Left = 2
            Top = 382
            Width = 934
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            Color = 16645114
            Font.Charset = THAI_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
            FullHeight = 200
            object Label51: TLabel
              Left = 39
              Top = 9
              Width = 50
              Height = 16
              Caption = #3617#3641#3621#3588#3656#3634#3619#3623#3617
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label52: TLabel
              Left = 267
              Top = 9
              Width = 24
              Height = 16
              Caption = #3616#3634#3625#3637
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label53: TLabel
              Left = 468
              Top = 9
              Width = 44
              Height = 16
              Caption = #3618#3629#3604#3619#3623#3617
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBEdit4: TcxDBTextEdit
              Left = 93
              Top = 7
              DataBinding.DataField = 'OUTJNET'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 0
              Width = 121
            end
            object DBEdit12: TcxDBTextEdit
              Left = 302
              Top = 7
              DataBinding.DataField = 'OUTJVAT'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 1
              Width = 121
            end
            object DBEdit5: TcxDBTextEdit
              Left = 521
              Top = 7
              DataBinding.DataField = 'OUTJTOT'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
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
              Width = 121
            end
          end
          object AdvPanel9: TAdvPanel
            Left = 2
            Top = 21
            Width = 934
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            Color = 16645114
            Font.Charset = THAI_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
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
            FullHeight = 200
            object RzDBLabel10: TRzDBLabel
              Left = 181
              Top = 5
              Width = 135
              Height = 24
              AutoSize = True
              Font.Charset = THAI_CHARSET
              Font.Color = 8404992
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              BlinkIntervalOff = 0
              BlinkIntervalOn = 0
              DataField = 'DESC1'
              DataSource = DsDetailOu
            end
            object Label35: TLabel
              Left = 12
              Top = 5
              Width = 161
              Height = 24
              Caption = #3619#3634#3618#3585#3634#3619#3591#3634#3609#3609#3629#3585' :'
              Font.Charset = THAI_CHARSET
              Font.Color = 7485192
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
          end
        end
        object cxGroupBox6: TcxGroupBox
          Left = 0
          Top = 417
          Align = alClient
          Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619#3591#3634#3609#3626#3637
          ParentFont = False
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'iMaginary'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'iMaginary'
          TabOrder = 1
          Height = 274
          Width = 938
          object DBGrid_Cr: TcxGrid
            Left = 2
            Top = 21
            Width = 934
            Height = 218
            Align = alClient
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'iMaginary'
            object cxGridDBTableView6: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsColrtran
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView6CODE: TcxGridDBColumn
                Caption = #3619#3627#3633#3626#3588#3656#3634#3610#3619#3636#3585#3634#3619
                DataBinding.FieldName = 'CODE'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView6DESC1: TcxGridDBColumn
                Caption = #3619#3634#3618#3585#3634#3619
                DataBinding.FieldName = 'DESC1'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView6PRICE: TcxGridDBColumn
                Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619
                DataBinding.FieldName = 'PRICE'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView6REDU: TcxGridDBColumn
                Caption = #3626#3656#3623#3609#3621#3604
                DataBinding.FieldName = 'REDU'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView6NETPRIC: TcxGridDBColumn
                Caption = #3618#3629#3604#3626#3640#3607#3608#3636
                DataBinding.FieldName = 'NETPRIC'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView6SERVCOD: TcxGridDBColumn
                Caption = #3619#3627#3633#3626#3594#3656#3634#3591#3595#3656#3629#3617
                DataBinding.FieldName = 'SERVCOD'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView6SERTIME: TcxGridDBColumn
                Caption = #3594#3633#3656#3623#3650#3617#3591#3591#3634#3609#3592#3619#3636#3591
                DataBinding.FieldName = 'SERTIME'
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView6OTTIME: TcxGridDBColumn
                Caption = 'OT'
                DataBinding.FieldName = 'OTTIME'
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGridLevel6: TcxGridLevel
              Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
              GridView = cxGridDBTableView6
            end
          end
          object AdvPanel7: TAdvPanel
            Left = 2
            Top = 239
            Width = 934
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            Color = 16645114
            Font.Charset = THAI_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
            FullHeight = 200
            object Label1: TLabel
              Left = 39
              Top = 9
              Width = 50
              Height = 16
              Caption = #3617#3641#3621#3588#3656#3634#3619#3623#3617
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label2: TLabel
              Left = 267
              Top = 9
              Width = 24
              Height = 16
              Caption = #3616#3634#3625#3637
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label3: TLabel
              Left = 468
              Top = 9
              Width = 44
              Height = 16
              Caption = #3618#3629#3604#3619#3623#3617
              Font.Charset = THAI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBEdit7: TcxDBTextEdit
              Left = 93
              Top = 7
              DataBinding.DataField = 'COLORNET'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 0
              Width = 121
            end
            object DBEdit23: TcxDBTextEdit
              Left = 302
              Top = 7
              DataBinding.DataField = 'COLORVAT'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LiquidSky'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LiquidSky'
              TabOrder = 1
              Width = 121
            end
            object DBEdit24: TcxDBTextEdit
              Left = 521
              Top = 7
              DataBinding.DataField = 'COLORTOT'
              DataBinding.DataSource = SoJoborder3
              ParentFont = False
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              Style.Font.Charset = THAI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
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
              Width = 121
            end
          end
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = #3610#3633#3609#3607#3638#3585#3629#3639#3656#3609' '#3654' '#3592#3634#3585#3624#3641#3609#3618#3660#3610#3619#3636#3585#3634#3619
        ImageIndex = 5
        object DBMemo1: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'MEMO1'
          DataBinding.DataSource = SoJoborder3
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'iMaginary'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'iMaginary'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'iMaginary'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'iMaginary'
          TabOrder = 0
          Height = 691
          Width = 938
        end
      end
      object cxTabSheet7: TcxTabSheet
        Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3626#3633#3597#3597#3634
        ImageIndex = 6
        object cxGroupBox8: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3626#3633#3597#3597#3634#3648#3585#3637#3656#3618#3623#3585#3633#3610#3619#3606
          ParentFont = False
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'iMaginary'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'iMaginary'
          TabOrder = 0
          Transparent = True
          Height = 691
          Width = 938
          object Label4: TLabel
            Left = 23
            Top = 29
            Width = 54
            Height = 16
            Alignment = taRightJustify
            Caption = #3623#3633#3609#3607#3637#3656#3595#3639#3657#3629#3619#3606
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 227
            Top = 29
            Width = 72
            Height = 16
            Alignment = taRightJustify
            Caption = #3623#3633#3609#3592#3604#3607#3632#3648#3610#3637#3618#3609
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label12: TLabel
            Left = 5
            Top = 54
            Width = 74
            Height = 16
            Alignment = taRightJustify
            Caption = #3623#3633#3609#3627#3617#3604#3611#3619#3632#3585#3633#3609
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label15: TLabel
            Left = 444
            Top = 29
            Width = 76
            Height = 16
            Alignment = taRightJustify
            Caption = #3619#3632#3618#3632#3619#3633#3610#3611#3619#3632#3585#3633#3609
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label20: TLabel
            Left = 220
            Top = 54
            Width = 80
            Height = 16
            Alignment = taRightJustify
            Caption = #3585#3617'.'#3627#3617#3604#3611#3619#3632#3585#3633#3609
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label22: TLabel
            Left = 453
            Top = 54
            Width = 70
            Height = 16
            Alignment = taRightJustify
            Caption = #3648#3621#3586#3619#3633#3610#3611#3619#3632#3585#3633#3609
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label23: TLabel
            Left = 0
            Top = 79
            Width = 80
            Height = 16
            Alignment = taRightJustify
            Caption = #3585#3617'.'#3619#3632#3618#3632#3651#3594#3657#3591#3634#3609
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 216
            Top = 79
            Width = 84
            Height = 16
            Alignment = taRightJustify
            Caption = #3648#3586#3657#3634#3624#3641#3609#3618#3660#3588#3619#3633#3657#3591#3649#3619#3585
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label28: TLabel
            Left = 4
            Top = 128
            Width = 73
            Height = 16
            Alignment = taRightJustify
            Caption = #3626#3606#3634#3609#3632#3585#3634#3619#3595#3639#3657#3629
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label31: TLabel
            Left = 474
            Top = 178
            Width = 50
            Height = 16
            Alignment = taRightJustify
            Caption = #3626#3606#3634#3609#3632#3619#3606
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label61: TLabel
            Left = 14
            Top = 103
            Width = 64
            Height = 16
            Alignment = taRightJustify
            Caption = #3623#3633#3609#3648#3594#3655#3588#3621#3656#3634#3626#3640#3604
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label36: TLabel
            Left = 224
            Top = 103
            Width = 78
            Height = 16
            Alignment = taRightJustify
            Caption = #3648#3621#3586' '#3585#3617'. '#3621#3656#3634#3626#3640#3604
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label37: TLabel
            Left = 445
            Top = 78
            Width = 81
            Height = 16
            Alignment = taRightJustify
            Caption = #3609#3633#3604#3619#3633#3610#3610#3619#3636#3585#3634#3619#3607#3640#3585
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label38: TLabel
            Left = 653
            Top = 78
            Width = 20
            Height = 16
            Caption = #3585#3617'.'
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label39: TLabel
            Left = 477
            Top = 103
            Width = 49
            Height = 16
            Alignment = taRightJustify
            Caption = #3627#3619#3639#3629#3607#3640#3585' '#3654
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label54: TLabel
            Left = 653
            Top = 103
            Width = 14
            Height = 16
            Caption = #3623#3633#3609
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label55: TLabel
            Left = 24
            Top = 153
            Width = 52
            Height = 16
            Alignment = taRightJustify
            Caption = #3611#3619#3632#3585#3633#3609#3616#3633#3618
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label56: TLabel
            Left = 27
            Top = 177
            Width = 49
            Height = 16
            Alignment = taRightJustify
            Caption = #3652#3615#3649#3609#3609#3595#3660
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label57: TLabel
            Left = 464
            Top = 154
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Caption = #3623#3633#3609#3627#3617#3604#3629#3634#3618#3640
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label60: TLabel
            Left = 226
            Top = 129
            Width = 73
            Height = 16
            Alignment = taRightJustify
            Caption = #3610#3619#3636#3625#3633#3607#3607#3637#3656#3595#3639#3657#3629#3619#3606
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label62: TLabel
            Left = 653
            Top = 28
            Width = 8
            Height = 16
            Caption = #3611#3637
            Font.Charset = THAI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label32: TLabel
            Left = 455
            Top = 129
            Width = 69
            Height = 16
            Alignment = taRightJustify
            Caption = #3648#3621#3586#3585#3619#3617#3608#3619#3619#3617#3660
            Color = clBtnFace
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object DBDateEdit1: TcxDBDateEdit
            Tag = 2
            Left = 83
            Top = 100
            DataBinding.DataField = 'LASTSERV'
            DataBinding.DataSource = Sosvmast
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
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Tag = 2
            Left = 305
            Top = 100
            DataBinding.DataField = 'LASTKILO'
            DataBinding.DataSource = Sosvmast
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
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 1
            Width = 121
          end
          object cxTextEdit3: TcxTextEdit
            Left = 203
            Top = 150
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
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = clWhite
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 2
            Width = 221
          end
          object cxTextEdit4: TcxTextEdit
            Left = 203
            Top = 175
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
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = clWhite
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 3
            Width = 221
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 83
            Top = 25
            DataBinding.DataField = 'SDATE'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 4
            Width = 121
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 305
            Top = 25
            DataBinding.DataField = 'REGDATE'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 5
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 529
            Top = 25
            DataBinding.DataField = 'WARANTY'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
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
          object cxDBDateEdit3: TcxDBDateEdit
            Left = 83
            Top = 50
            DataBinding.DataField = 'EXPWARNT'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 7
            Width = 121
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 305
            Top = 50
            DataBinding.DataField = 'EXPKILO'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 8
            Width = 121
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 529
            Top = 50
            DataBinding.DataField = 'INSURNO'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 9
            Width = 121
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 83
            Top = 75
            DataBinding.DataField = 'ESTUSE'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 10
            Width = 121
          end
          object cxDBDateEdit4: TcxDBDateEdit
            Left = 305
            Top = 75
            DataBinding.DataField = 'FIRSTDT'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 11
            Width = 121
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 529
            Top = 75
            DataBinding.DataField = 'ROUNDKILO'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 12
            Width = 121
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 529
            Top = 100
            DataBinding.DataField = 'ROUNDDAY'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 13
            Width = 121
          end
          object cxDBImageComboBox1: TcxDBImageComboBox
            Left = 83
            Top = 125
            DataBinding.DataField = 'CUSTYPE'
            DataBinding.DataSource = Sosvmast
            Properties.Items = <
              item
                Description = '1 : '#3595#3639#3657#3629#3592#3634#3585#3610#3619#3636#3625#3633#3607' '#3631
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = '2 : '#3595#3639#3657#3629#3592#3634#3585#3607#3637#3656#3629#3639#3656#3609
                Value = '2'
              end>
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 14
            Width = 121
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 304
            Top = 125
            DataBinding.DataField = 'BUYFROM'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = 14540287
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 15
            Width = 121
          end
          object cxDBButtonEdit1: TcxDBButtonEdit
            Left = 83
            Top = 150
            DataBinding.DataField = 'ISCODE'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ClickKey = 112
            Properties.LookupItems.Strings = (
              '')
            Properties.OnChange = cxDBButtonEdit1PropertiesChange
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = clWhite
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 16
            Width = 121
          end
          object cxDBButtonEdit3: TcxDBButtonEdit
            Left = 83
            Top = 175
            DataBinding.DataField = 'PRBISCOD'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ClickKey = 112
            Properties.LookupItems.Strings = (
              '')
            Properties.OnChange = cxDBButtonEdit3PropertiesChange
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.Color = clWhite
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 17
            Width = 121
          end
          object cxDBDateEdit5: TcxDBDateEdit
            Left = 529
            Top = 150
            DataBinding.DataField = 'INSURDT'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 18
            Width = 121
          end
          object cxDBImageComboBox2: TcxDBImageComboBox
            Left = 529
            Top = 175
            DataBinding.DataField = 'EXPTYPE'
            DataBinding.DataSource = Sosvmast
            Properties.Items = <
              item
                Description = 'Y : '#3651#3594#3657#3591#3634#3609#3629#3618#3641#3656
                ImageIndex = 0
                Value = 'Y'
              end
              item
                Description = 'N : '#3648#3611#3621#3637#3656#3618#3609#3612#3641#3657#3651#3594#3657#3591#3634#3609
                Value = 'N'
              end>
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 19
            Width = 121
          end
          object RzDBLabel18: TcxDBTextEdit
            Left = 529
            Top = 125
            DataBinding.DataField = 'INSURNO'
            DataBinding.DataSource = Sosvmast
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = THAI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'LiquidSky'
            Style.TextColor = 8404992
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'LiquidSky'
            TabOrder = 20
            Width = 121
          end
        end
      end
    end
  end
  object QJoborder3: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM JOBORDER')
    Left = 825
    Top = 325
    object QJoborder3JOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QJoborder3LOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QJoborder3STRNO: TStringField
      FieldName = 'STRNO'
      FixedChar = True
    end
    object QJoborder3CUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QJoborder3MDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object QJoborder3RUNNO: TStringField
      FieldName = 'RUNNO'
      FixedChar = True
      Size = 5
    end
    object QJoborder3RECVDATE: TDateField
      FieldName = 'RECVDATE'
    end
    object QJoborder3RECVTIME: TStringField
      FieldName = 'RECVTIME'
      FixedChar = True
      Size = 8
    end
    object QJoborder3FINSDATE: TDateField
      FieldName = 'FINSDATE'
    end
    object QJoborder3FINSTIME: TStringField
      FieldName = 'FINSTIME'
      FixedChar = True
      Size = 8
    end
    object QJoborder3RFINSHDT: TDateField
      FieldName = 'RFINSHDT'
    end
    object QJoborder3RFINSHTM: TStringField
      FieldName = 'RFINSHTM'
      FixedChar = True
      Size = 8
    end
    object QJoborder3RLKILOMT: TFloatField
      FieldName = 'RLKILOMT'
    end
    object QJoborder3KILOMT: TFloatField
      FieldName = 'KILOMT'
    end
    object QJoborder3RECVCOD: TStringField
      FieldName = 'RECVCOD'
      FixedChar = True
      Size = 8
    end
    object QJoborder3CUST_IN: TStringField
      FieldName = 'CUST_IN'
      FixedChar = True
      Size = 45
    end
    object QJoborder3PAYCOD: TStringField
      FieldName = 'PAYCOD'
      FixedChar = True
      Size = 5
    end
    object QJoborder3CUST_OUT: TStringField
      FieldName = 'CUST_OUT'
      FixedChar = True
      Size = 45
    end
    object QJoborder3APP_DATE: TDateField
      FieldName = 'APP_DATE'
    end
    object QJoborder3APP_MILE: TFloatField
      FieldName = 'APP_MILE'
    end
    object QJoborder3REPTYPE: TStringField
      FieldName = 'REPTYPE'
      FixedChar = True
      Size = 8
    end
    object QJoborder3GROUP1: TStringField
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 10
    end
    object QJoborder3REPBAY: TStringField
      FieldName = 'REPBAY'
      FixedChar = True
      Size = 8
    end
    object QJoborder3PAYDATE: TDateField
      FieldName = 'PAYDATE'
    end
    object QJoborder3INSPECT: TStringField
      FieldName = 'INSPECT'
      FixedChar = True
      Size = 5
    end
    object QJoborder3REPCOD: TStringField
      FieldName = 'REPCOD'
      FixedChar = True
      Size = 8
    end
    object QJoborder3VATTYPE: TStringField
      FieldName = 'VATTYPE'
      FixedChar = True
      Size = 1
    end
    object QJoborder3VAT: TFloatField
      FieldName = 'VAT'
    end
    object QJoborder3PARTDISC: TFloatField
      FieldName = 'PARTDISC'
    end
    object QJoborder3PARTNET: TFloatField
      FieldName = 'PARTNET'
    end
    object QJoborder3PARTVAT: TFloatField
      FieldName = 'PARTVAT'
    end
    object QJoborder3PARTTOT: TFloatField
      FieldName = 'PARTTOT'
    end
    object QJoborder3OILDISC: TFloatField
      FieldName = 'OILDISC'
    end
    object QJoborder3OILNET: TFloatField
      FieldName = 'OILNET'
    end
    object QJoborder3OILVAT: TFloatField
      FieldName = 'OILVAT'
    end
    object QJoborder3OILTOT: TFloatField
      FieldName = 'OILTOT'
    end
    object QJoborder3SERVDISC: TFloatField
      FieldName = 'SERVDISC'
    end
    object QJoborder3SERVNET: TFloatField
      FieldName = 'SERVNET'
    end
    object QJoborder3SERVVAT: TFloatField
      FieldName = 'SERVVAT'
    end
    object QJoborder3SERVTOT: TFloatField
      FieldName = 'SERVTOT'
    end
    object QJoborder3OUTJDISC: TFloatField
      FieldName = 'OUTJDISC'
    end
    object QJoborder3OUTJNET: TFloatField
      FieldName = 'OUTJNET'
    end
    object QJoborder3OUTJVAT: TFloatField
      FieldName = 'OUTJVAT'
    end
    object QJoborder3OUTJTOT: TFloatField
      FieldName = 'OUTJTOT'
    end
    object QJoborder3COLORDISC: TFloatField
      FieldName = 'COLORDISC'
    end
    object QJoborder3COLORNET: TFloatField
      FieldName = 'COLORNET'
    end
    object QJoborder3COLORVAT: TFloatField
      FieldName = 'COLORVAT'
    end
    object QJoborder3COLORTOT: TFloatField
      FieldName = 'COLORTOT'
    end
    object QJoborder3OTHERDISC: TFloatField
      FieldName = 'OTHERDISC'
    end
    object QJoborder3OTHERNET: TFloatField
      FieldName = 'OTHERNET'
    end
    object QJoborder3OTHERVAT: TFloatField
      FieldName = 'OTHERVAT'
    end
    object QJoborder3OTHERTOT: TFloatField
      FieldName = 'OTHERTOT'
    end
    object QJoborder3TSV_DISC: TFloatField
      FieldName = 'TSV_DISC'
    end
    object QJoborder3TSV_NET: TFloatField
      FieldName = 'TSV_NET'
    end
    object QJoborder3TSV_VAT: TFloatField
      FieldName = 'TSV_VAT'
    end
    object QJoborder3TSV_TOT: TFloatField
      FieldName = 'TSV_TOT'
    end
    object QJoborder3TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QJoborder3PTAXNO: TStringField
      FieldName = 'PTAXNO'
      FixedChar = True
      Size = 12
    end
    object QJoborder3STAXNO: TStringField
      FieldName = 'STAXNO'
      FixedChar = True
      Size = 12
    end
    object QJoborder3BILDATE: TDateField
      FieldName = 'BILDATE'
    end
    object QJoborder3BILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object QJoborder3FLAGCAN: TStringField
      FieldName = 'FLAGCAN'
      FixedChar = True
      Size = 1
    end
    object QJoborder3CANDATE: TDateField
      FieldName = 'CANDATE'
    end
    object QJoborder3STATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object QJoborder3MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1024
    end
    object QJoborder3SVFLAG: TStringField
      FieldName = 'SVFLAG'
      FixedChar = True
      Size = 1
    end
    object QJoborder3TOPNO: TStringField
      FieldName = 'TOPNO'
      FixedChar = True
      Size = 5
    end
    object QJoborder3PREORDNO: TStringField
      FieldName = 'PREORDNO'
      FixedChar = True
      Size = 15
    end
    object QJoborder3ADDNET: TFloatField
      FieldName = 'ADDNET'
    end
    object QJoborder3ADDVAT: TFloatField
      FieldName = 'ADDVAT'
    end
    object QJoborder3ADDTOT: TFloatField
      FieldName = 'ADDTOT'
    end
    object QJoborder3PARTCOST: TFloatField
      FieldName = 'PARTCOST'
    end
    object QJoborder3USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QJoborder3TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QJoborder3CANCELID: TStringField
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object QJoborder3CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QJoborder3POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QJoborder3INV1_PT: TFloatField
      FieldName = 'INV1_PT'
    end
    object QJoborder3INV1_SV: TFloatField
      FieldName = 'INV1_SV'
    end
    object QJoborder3INV2_PT: TFloatField
      FieldName = 'INV2_PT'
    end
    object QJoborder3INV2_SV: TFloatField
      FieldName = 'INV2_SV'
    end
    object QJoborder3DISCPT: TFloatField
      FieldName = 'DISCPT'
    end
    object QJoborder3DISCSV: TFloatField
      FieldName = 'DISCSV'
    end
    object QJoborder3DISCOL: TFloatField
      FieldName = 'DISCOL'
    end
    object QJoborder3DISCCO: TFloatField
      FieldName = 'DISCCO'
    end
    object QJoborder3OUTADD: TFloatField
      FieldName = 'OUTADD'
    end
    object QJoborder3OILCOST: TFloatField
      FieldName = 'OILCOST'
    end
    object QJoborder3FRRATE: TFloatField
      FieldName = 'FRRATE'
    end
    object QJoborder3FRCODE: TStringField
      FieldName = 'FRCODE'
      FixedChar = True
      Size = 5
    end
    object QJoborder3CAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object QJoborder3REFNO: TFloatField
      FieldName = 'REFNO'
    end
    object QJoborder3FLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object QJoborder3ISCODE: TStringField
      FieldName = 'ISCODE'
      FixedChar = True
      Size = 5
    end
    object QJoborder3STATCOD: TStringField
      FieldName = 'STATCOD'
      FixedChar = True
      Size = 2
    end
    object QJoborder3REDUAMT: TFloatField
      FieldName = 'REDUAMT'
    end
    object QJoborder3CUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
    object QJoborder3SV_TIME: TFloatField
      FieldName = 'SV_TIME'
    end
    object QJoborder3OT_TIME: TFloatField
      FieldName = 'OT_TIME'
    end
    object QJoborder3OUTJOBNO: TStringField
      FieldName = 'OUTJOBNO'
      FixedChar = True
      Size = 12
    end
    object QJoborder3RTPART: TStringField
      FieldName = 'RTPART'
      FixedChar = True
      Size = 1
    end
    object QJoborder3CLCAR: TStringField
      FieldName = 'CLCAR'
      FixedChar = True
      Size = 1
    end
  end
  object SoJoborder3: TDataSource
    DataSet = QJoborder3
    Left = 826
    Top = 353
  end
  object Qsvmast: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from svmast')
    Left = 796
    Top = 325
  end
  object Sosvmast: TDataSource
    DataSet = Qsvmast
    Left = 796
    Top = 353
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 854
    Top = 325
  end
  object QModelmst: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 770
    Top = 317
  end
  object QServtran: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM SERVTRAN')
    Left = 856
    Top = 384
    object QServtranJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QServtranCODE: TStringField
      FieldName = 'CODE'
      FixedChar = True
      Size = 15
    end
    object QServtranLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QServtranJOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QServtranFRT: TFloatField
      FieldName = 'FRT'
    end
    object QServtranPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '##,##0.00'
    end
    object QServtranREDU: TFloatField
      FieldName = 'REDU'
      DisplayFormat = '##,##0.00'
    end
    object QServtranNETPRIC: TFloatField
      FieldName = 'NETPRIC'
      DisplayFormat = '##,##0.00'
    end
    object QServtranSERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object QServtranSERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QServtranOTTIME: TFloatField
      FieldName = 'OTTIME'
    end
    object QServtranJOBTYP: TStringField
      FieldName = 'JOBTYP'
      FixedChar = True
      Size = 5
    end
    object QServtranCLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object QServtranMDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object QServtranUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QServtranDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 70
    end
    object QServtranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QServtranINV1_SV: TFloatField
      FieldName = 'INV1_SV'
    end
    object QServtranINV2_SV: TFloatField
      FieldName = 'INV2_SV'
    end
    object QServtranBILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object QServtranTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QServtranTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QServtranUPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '##,##0.00'
    end
    object QServtranDISCAMT: TFloatField
      FieldName = 'DISCAMT'
      DisplayFormat = '##,##0.00'
    end
    object QServtranCAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object QServtranCAMFLG: TStringField
      FieldName = 'CAMFLG'
      FixedChar = True
      Size = 1
    end
    object QServtranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QServtranCLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object QServtranCLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object QServtranCLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
    object QServtranCUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
  end
  object QOiltran: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      '')
    Left = 644
    Top = 376
    object QOiltranJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QOiltranPARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object QOiltranPKNO: TStringField
      FieldName = 'PKNO'
      FixedChar = True
      Size = 12
    end
    object QOiltranLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QOiltranJOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QOiltranPKDATE: TDateField
      FieldName = 'PKDATE'
    end
    object QOiltranUPRICE: TFloatField
      FieldName = 'UPRICE'
    end
    object QOiltranQTY: TFloatField
      FieldName = 'QTY'
    end
    object QOiltranNETFL: TStringField
      FieldName = 'NETFL'
      FixedChar = True
      Size = 1
    end
    object QOiltranREDU1: TFloatField
      FieldName = 'REDU1'
    end
    object QOiltranREDU2: TFloatField
      FieldName = 'REDU2'
    end
    object QOiltranREDU3: TFloatField
      FieldName = 'REDU3'
    end
    object QOiltranNETPRC: TFloatField
      FieldName = 'NETPRC'
    end
    object QOiltranTOTPRC: TFloatField
      FieldName = 'TOTPRC'
    end
    object QOiltranSERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object QOiltranFRT: TFloatField
      FieldName = 'FRT'
    end
    object QOiltranSERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QOiltranSVCOLOR: TStringField
      FieldName = 'SVCOLOR'
      FixedChar = True
      Size = 1
    end
    object QOiltranCLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object QOiltranSERIALNO: TStringField
      FieldName = 'SERIALNO'
      FixedChar = True
    end
    object QOiltranTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QOiltranYEAR1: TStringField
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object QOiltranTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QOiltranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
    object QOiltranUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QOiltranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOiltranINV1_PT: TFloatField
      FieldName = 'INV1_PT'
    end
    object QOiltranINV2_PT: TFloatField
      FieldName = 'INV2_PT'
    end
    object QOiltranGROUP1: TStringField
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 5
    end
    object QOiltranBILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object QOiltranDISCAMT: TFloatField
      FieldName = 'DISCAMT'
    end
    object QOiltranFREE: TStringField
      FieldName = 'FREE'
      FixedChar = True
      Size = 1
    end
    object QOiltranCAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object QOiltranCAMFLG: TStringField
      FieldName = 'CAMFLG'
      FixedChar = True
      Size = 1
    end
    object QOiltranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QOiltranCLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object QOiltranCLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object QOiltranCLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
    object QOiltranCUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
  end
  object QOuttran: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      '')
    Left = 674
    Top = 376
    object QOuttranJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QOuttranCODE: TStringField
      FieldName = 'CODE'
      FixedChar = True
    end
    object QOuttranLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QOuttranJOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object QOuttranUCOST: TFloatField
      FieldName = 'UCOST'
    end
    object QOuttranUPRICE: TFloatField
      FieldName = 'UPRICE'
    end
    object QOuttranFRT: TFloatField
      FieldName = 'FRT'
    end
    object QOuttranQTY: TFloatField
      FieldName = 'QTY'
    end
    object QOuttranTOTPRIC: TFloatField
      FieldName = 'TOTPRIC'
    end
    object QOuttranREDU: TFloatField
      FieldName = 'REDU'
    end
    object QOuttranNETPRIC: TFloatField
      FieldName = 'NETPRIC'
    end
    object QOuttranTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object QOuttranSERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object QOuttranSERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object QOuttranOTTIME: TFloatField
      FieldName = 'OTTIME'
    end
    object QOuttranJOBTYP: TStringField
      FieldName = 'JOBTYP'
      FixedChar = True
      Size = 5
    end
    object QOuttranUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QOuttranDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 70
    end
    object QOuttranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOuttranTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object QOuttranTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QOuttranCLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object QOuttranBILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object QOuttranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object QOuttranCLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object QOuttranCLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object QOuttranCLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
  end
  object qColrtran: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      '')
    Left = 702
    Top = 376
    object qColrtranJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object qColrtranCODE: TStringField
      FieldName = 'CODE'
      FixedChar = True
      Size = 15
    end
    object qColrtranLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object qColrtranJOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object qColrtranFRT: TFloatField
      FieldName = 'FRT'
    end
    object qColrtranPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object qColrtranREDU: TFloatField
      FieldName = 'REDU'
    end
    object qColrtranNETPRIC: TFloatField
      FieldName = 'NETPRIC'
    end
    object qColrtranSERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object qColrtranSERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object qColrtranOTTIME: TFloatField
      FieldName = 'OTTIME'
    end
    object qColrtranJOBTYP: TStringField
      FieldName = 'JOBTYP'
      FixedChar = True
      Size = 5
    end
    object qColrtranCLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object qColrtranMDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object qColrtranUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object qColrtranDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 70
    end
    object qColrtranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object qColrtranTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object qColrtranTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object qColrtranDISCAMT: TFloatField
      FieldName = 'DISCAMT'
    end
    object qColrtranWARNO: TStringField
      FieldName = 'WARNO'
      FixedChar = True
      Size = 12
    end
    object qColrtranBILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object qColrtranUCOST: TFloatField
      FieldName = 'UCOST'
    end
    object qColrtranTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object qColrtranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object qColrtranCLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object qColrtranCLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object qColrtranCLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
  end
  object qParttran: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 730
    Top = 376
    object qParttranJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object qParttranPARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object qParttranPKNO: TStringField
      FieldName = 'PKNO'
      FixedChar = True
      Size = 12
    end
    object qParttranLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object qParttranJOBDATE: TDateField
      FieldName = 'JOBDATE'
    end
    object qParttranPKDATE: TDateField
      FieldName = 'PKDATE'
    end
    object qParttranUPRICE: TFloatField
      FieldName = 'UPRICE'
    end
    object qParttranQTY: TFloatField
      FieldName = 'QTY'
    end
    object qParttranNETFL: TStringField
      FieldName = 'NETFL'
      FixedChar = True
      Size = 1
    end
    object qParttranREDU1: TFloatField
      FieldName = 'REDU1'
    end
    object qParttranREDU2: TFloatField
      FieldName = 'REDU2'
    end
    object qParttranREDU3: TFloatField
      FieldName = 'REDU3'
    end
    object qParttranNETPRC: TFloatField
      FieldName = 'NETPRC'
    end
    object qParttranTOTPRC: TFloatField
      FieldName = 'TOTPRC'
    end
    object qParttranSERVCOD: TStringField
      FieldName = 'SERVCOD'
      FixedChar = True
      Size = 5
    end
    object qParttranFRT: TFloatField
      FieldName = 'FRT'
    end
    object qParttranSERTIME: TFloatField
      FieldName = 'SERTIME'
    end
    object qParttranSVCOLOR: TStringField
      FieldName = 'SVCOLOR'
      FixedChar = True
      Size = 1
    end
    object qParttranCLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
    object qParttranSERIALNO: TStringField
      FieldName = 'SERIALNO'
      FixedChar = True
    end
    object qParttranTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object qParttranYEAR1: TStringField
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object qParttranTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object qParttranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
    object qParttranUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object qParttranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object qParttranINV1_PT: TFloatField
      FieldName = 'INV1_PT'
    end
    object qParttranINV2_PT: TFloatField
      FieldName = 'INV2_PT'
    end
    object qParttranGROUP1: TStringField
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 5
    end
    object qParttranBILCLAIM: TStringField
      FieldName = 'BILCLAIM'
      FixedChar = True
      Size = 1
    end
    object qParttranDISCAMT: TFloatField
      FieldName = 'DISCAMT'
    end
    object qParttranFREE: TStringField
      FieldName = 'FREE'
      FixedChar = True
      Size = 1
    end
    object qParttranCAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object qParttranCAMFLG: TStringField
      FieldName = 'CAMFLG'
      FixedChar = True
      Size = 1
    end
    object qParttranCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object qParttranCLAIMDT: TDateField
      FieldName = 'CLAIMDT'
    end
    object qParttranCLAIMOK: TStringField
      FieldName = 'CLAIMOK'
      FixedChar = True
      Size = 1
    end
    object qParttranCLAIMTEC: TFloatField
      FieldName = 'CLAIMTEC'
    end
    object qParttranCUPONGNO: TStringField
      FieldName = 'CUPONGNO'
      FixedChar = True
      Size = 10
    end
  end
  object QOrdrep: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 758
    Top = 376
    object QOrdrepJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object QOrdrepNO: TFloatField
      FieldName = 'NO'
    end
    object QOrdrepREPDESC: TStringField
      FieldName = 'REPDESC'
      FixedChar = True
      Size = 60
    end
    object QOrdrepFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 2
    end
    object QOrdrepUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QOrdrepTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QOrdrepCODE: TStringField
      FieldName = 'CODE'
      FixedChar = True
    end
    object QOrdrepFRT: TFloatField
      FieldName = 'FRT'
    end
    object QOrdrepESTPRIC: TFloatField
      FieldName = 'ESTPRIC'
    end
    object QOrdrepGRPHD: TStringField
      FieldName = 'GRPHD'
      FixedChar = True
      Size = 1
    end
    object QOrdrepMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 256
    end
  end
  object dsServTran: TDataSource
    DataSet = QServtran
    Left = 856
    Top = 356
  end
  object dsOloTran: TDataSource
    DataSet = QOiltran
    Left = 646
    Top = 348
  end
  object dsOuttran: TDataSource
    DataSet = QOuttran
    Left = 675
    Top = 348
  end
  object dsColrtran: TDataSource
    DataSet = qColrtran
    Left = 705
    Top = 348
  end
  object dsParttran: TDataSource
    DataSet = qParttran
    Left = 734
    Top = 348
  end
  object dsOrdrep: TDataSource
    DataSet = QOrdrep
    Left = 760
    Top = 348
  end
  object dsDetailOli: TDataSource
    DataSet = qrDetailOli
    Left = 708
    Top = 292
  end
  object qrDetailOli: TFDQuery
    MasterSource = dsOloTran
    ConnectionName = 'HI_DBMS'
    Left = 737
    Top = 292
  end
  object DsDetailPt: TDataSource
    DataSet = qrDetailPt
    Left = 796
    Top = 288
  end
  object qrDetailPt: TFDQuery
    MasterSource = dsParttran
    ConnectionName = 'HI_DBMS'
    Left = 825
    Top = 288
  end
  object QCustmast: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CUSTMAST')
    Left = 329
    Top = 295
    object QCustmastCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QCustmastSNAM: TStringField
      FieldName = 'SNAM'
      Size = 8
    end
    object QCustmastNAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object QCustmastNAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object QCustmastNICKNM: TStringField
      FieldName = 'NICKNM'
      Size = 50
    end
    object QCustmastBIRTHDT: TDateField
      FieldName = 'BIRTHDT'
    end
    object QCustmastADDRNO: TStringField
      FieldName = 'ADDRNO'
      Size = 1
    end
    object QCustmastIDCARD: TStringField
      FieldName = 'IDCARD'
      Size = 40
    end
    object QCustmastIDNO: TStringField
      FieldName = 'IDNO'
    end
    object QCustmastISSUBY: TStringField
      FieldName = 'ISSUBY'
      Size = 40
    end
    object QCustmastISSUDT: TDateField
      FieldName = 'ISSUDT'
    end
    object QCustmastEXPDT: TDateField
      FieldName = 'EXPDT'
    end
    object QCustmastAGE: TFloatField
      FieldName = 'AGE'
    end
    object QCustmastNATION: TStringField
      FieldName = 'NATION'
      Size = 50
    end
    object QCustmastOCCUP: TStringField
      FieldName = 'OCCUP'
      Size = 50
    end
    object QCustmastOFFIC: TStringField
      FieldName = 'OFFIC'
      Size = 50
    end
    object QCustmastGRADE: TStringField
      FieldName = 'GRADE'
      Size = 2
    end
    object QCustmastACPDT: TDateField
      FieldName = 'ACPDT'
    end
    object QCustmastUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QCustmastMINCOME: TFloatField
      FieldName = 'MINCOME'
    end
    object QCustmastMAXCRED: TFloatField
      FieldName = 'MAXCRED'
    end
    object QCustmastUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCustmastMEMBCOD: TStringField
      FieldName = 'MEMBCOD'
      Size = 12
    end
    object QCustmastGRPCUS: TStringField
      FieldName = 'GRPCUS'
      FixedChar = True
      Size = 5
    end
    object QCustmastPICTURE: TStringField
      FieldName = 'PICTURE'
      FixedChar = True
      Size = 25
    end
    object QCustmastCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object QCustmastDISCT: TFloatField
      FieldName = 'DISCT'
    end
    object QCustmastSALLEV: TStringField
      FieldName = 'SALLEV'
      FixedChar = True
      Size = 1
    end
    object QCustmastSINCOME: TFloatField
      FieldName = 'SINCOME'
    end
    object QCustmastADDR_I: TStringField
      FieldName = 'ADDR_I'
      FixedChar = True
      Size = 60
    end
    object QCustmastRODE_I: TStringField
      FieldName = 'RODE_I'
      FixedChar = True
      Size = 40
    end
    object QCustmastTUMB_I: TStringField
      FieldName = 'TUMB_I'
      FixedChar = True
      Size = 40
    end
    object QCustmastAUMPID_I: TStringField
      FieldName = 'AUMPID_I'
      FixedChar = True
      Size = 5
    end
    object QCustmastPROVID_I: TStringField
      FieldName = 'PROVID_I'
      FixedChar = True
      Size = 5
    end
    object QCustmastZIP_I: TStringField
      FieldName = 'ZIP_I'
      FixedChar = True
      Size = 8
    end
    object QCustmastTELP_I: TStringField
      DisplayWidth = 50
      FieldName = 'TELP_I'
      FixedChar = True
      Size = 50
    end
    object QCustmastADDR_II: TStringField
      FieldName = 'ADDR_II'
      FixedChar = True
      Size = 60
    end
    object QCustmastRODE_II: TStringField
      FieldName = 'RODE_II'
      FixedChar = True
      Size = 40
    end
    object QCustmastTUMB_II: TStringField
      FieldName = 'TUMB_II'
      FixedChar = True
      Size = 40
    end
    object QCustmastAUMPID_II: TStringField
      FieldName = 'AUMPID_II'
      FixedChar = True
      Size = 5
    end
    object QCustmastPROVID_II: TStringField
      FieldName = 'PROVID_II'
      FixedChar = True
      Size = 5
    end
    object QCustmastZIP_II: TStringField
      FieldName = 'ZIP_II'
      FixedChar = True
      Size = 8
    end
    object QCustmastTELP_II: TStringField
      FieldName = 'TELP_II'
      FixedChar = True
      Size = 50
    end
    object QCustmastTEXT: TMemoField
      FieldName = 'TEXT'
      BlobType = ftMemo
      Size = 720
    end
    object QCustmastPROSPECT: TStringField
      FieldName = 'PROSPECT'
      FixedChar = True
      Size = 1
    end
    object QCustmastEMAIL1: TStringField
      FieldName = 'EMAIL1'
      FixedChar = True
      Size = 40
    end
    object QCustmastTAXID: TStringField
      FieldName = 'TAXID'
      FixedChar = True
    end
    object QCustmastTEL_MOBILE: TStringField
      FieldName = 'TEL_MOBILE'
      FixedChar = True
      Size = 30
    end
    object QCustmastTEL_HOME: TStringField
      FieldName = 'TEL_HOME'
      FixedChar = True
      Size = 30
    end
    object QCustmastTEL_OFFICE: TStringField
      FieldName = 'TEL_OFFICE'
      FixedChar = True
      Size = 30
    end
  end
  object Socustmast: TDataSource
    DataSet = QCustmast
    Left = 301
    Top = 295
  end
  object qrDetailOu: TFDQuery
    MasterSource = dsOuttran
    ConnectionName = 'HI_DBMS'
    Left = 897
    Top = 292
  end
  object DsDetailOu: TDataSource
    DataSet = qrDetailOu
    Left = 868
    Top = 292
  end
  object ActionList1: TActionList
    Left = 624
    Top = 352
    object actEditPrn: TAction
      Caption = 'actEditPrn'
      ShortCut = 117
      OnExecute = actEditPrnExecute
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 596
    Top = 444
  end
  object frxChartObject1: TfrxChartObject
    Left = 628
    Top = 444
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 660
    Top = 444
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 692
    Top = 444
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
    Left = 724
    Top = 444
  end
  object frxBDEComponents1: TfrxBDEComponents
    DefaultSession = 'Default'
    Left = 768
    Top = 444
  end
  object frxFDComponents1: TfrxFDComponents
    DefaultDatabase = DM_SEC.HI_DBMS
    Left = 628
    Top = 476
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 660
    Top = 476
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 692
    Top = 476
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
    Left = 724
    Top = 476
  end
  object frxReportTableObject1: TfrxReportTableObject
    Left = 628
    Top = 508
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 596
    Top = 476
  end
  object frxRichObject1: TfrxRichObject
    Left = 660
    Top = 508
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = True
    PictureType = gpPNG
    Left = 693
    Top = 509
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
    Left = 596
    Top = 508
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
