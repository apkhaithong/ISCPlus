object SvSt_40: TSvSt_40
  Left = 438
  Top = 297
  BorderIcons = []
  Caption = #3619#3640#3656#3609#3626#3636#3609#3588#3657#3634
  ClientHeight = 293
  ClientWidth = 505
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
    Top = 0
    Width = 505
    Height = 293
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
    object Label9: TLabel
      Left = 257
      Top = 66
      Width = 66
      Height = 13
      Caption = '(MSC CODE)'
      Font.Charset = THAI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 81
      Top = 65
      Width = 50
      Height = 16
      Alignment = taRightJustify
      Caption = #3619#3627#3633#3626#3619#3640#3656#3609#3619#3606
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 87
      Top = 91
      Width = 44
      Height = 16
      Alignment = taRightJustify
      Caption = #3594#3639#3656#3629#3619#3640#3656#3609#3619#3606
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 32
      Top = 115
      Width = 98
      Height = 16
      Alignment = taRightJustify
      Caption = #3594#3639#3656#3629#3619#3640#3656#3609#3619#3606'('#3613#3656#3634#3618#3586#3634#3618')'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 18
      Top = 140
      Width = 112
      Height = 16
      Alignment = taRightJustify
      Caption = #3594#3639#3656#3629#3619#3640#3656#3609#3619#3606'('#3624#3641#3609#3618#3660#3610#3619#3636#3585#3634#3619')'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 106
      Top = 165
      Width = 24
      Height = 16
      Alignment = taRightJustify
      Caption = #3618#3637#3656#3627#3657#3629
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 74
      Top = 192
      Width = 55
      Height = 16
      Hint = #3611#3619#3632#3592#3635#3649#3612#3609#3585
      Alignment = taRightJustify
      Caption = #3610#3633#3609#3607#3638#3585#3629#3639#3656#3609#3654
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object DBEdit3: TcxDBTextEdit
      Left = 133
      Top = 62
      DataBinding.DataField = 'MODELCOD'
      DataBinding.DataSource = DataSource1
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
      TabOrder = 0
      Width = 121
    end
    object DBEdit4: TcxDBTextEdit
      Left = 133
      Top = 87
      DataBinding.DataField = 'MODELDES'
      DataBinding.DataSource = DataSource1
      ParentFont = False
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
      TabOrder = 1
      Width = 244
    end
    object DBEdit5: TcxDBTextEdit
      Left = 133
      Top = 112
      DataBinding.DataField = 'SUBMODEL'
      DataBinding.DataSource = DataSource1
      ParentFont = False
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
      TabOrder = 2
      Width = 244
    end
    object DBEdit7: TcxDBTextEdit
      Left = 133
      Top = 137
      DataBinding.DataField = 'MODELSV'
      DataBinding.DataSource = DataSource1
      ParentFont = False
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
      TabOrder = 3
      Width = 244
    end
    object DBEdit6: TcxDBButtonEdit
      Left = 133
      Top = 162
      DataBinding.DataField = 'TYPECOD'
      DataBinding.DataSource = DataSource1
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
      TabOrder = 4
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo
      Left = 133
      Top = 187
      DataBinding.DataField = 'TEXT'
      DataBinding.DataSource = DataSource1
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
      StyleFocused.Color = 14540287
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 5
      OnClick = cxDBMemo1Click
      OnExit = cxDBMemo1Exit
      Height = 58
      Width = 244
    end
    object AdvPanel2: TAdvPanel
      Left = 1
      Top = 1
      Width = 503
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
      TabOrder = 6
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
        Width = 384
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
          Left = 312
          Top = 2
          Width = 10
          Height = 47
          SeparatorStyle = ssBlank
          LineColor = clBtnShadow
        end
        object AdvToolBarSeparator4: TAdvToolBarSeparator
          Left = 302
          Top = 2
          Width = 10
          Height = 51
          SeparatorStyle = ssBlank
          LineColor = clBtnShadow
          Visible = False
        end
        object AdvToolBarSeparator5: TAdvToolBarSeparator
          Left = 292
          Top = 2
          Width = 10
          Height = 51
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
          OnClick = EditBtnClick
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
          Left = 176
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
          Left = 234
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
          Left = 322
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
          OnClick = InsBtnClick
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
      Left = 1
      Top = 272
      Width = 503
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Text = 'Ready'
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Text = #3585#3635#3627#3609#3604#3619#3627#3633#3626#3619#3640#3656#3609
          Width = 170
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Text = 'SETMODEL'
          Width = 100
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
  end
  object DataSource1: TDataSource
    DataSet = QModelmst
    OnStateChange = DataSource1StateChange
    Left = 361
    Top = 9
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
    AllowEditing = True
    AllowInsert = True
    AllowDelete = True
    KeyToEdit = 115
    KeyToInsert = 45
    KeyToSave = 121
    Left = 396
    Top = 9
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 428
    Top = 9
  end
  object QModelmst: TFDQuery
    BeforePost = QModelmstBeforePost
    AfterPost = QModelmstAfterPost
    AfterCancel = QModelmstAfterCancel
    BeforeDelete = QModelmstBeforeDelete
    AfterDelete = QModelmstAfterPost
    OnNewRecord = QModelmstNewRecord
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SETMODEL')
    Left = 333
    Top = 9
    object QModelmstMODELCOD: TStringField
      FieldName = 'MODELCOD'
      OnValidate = QModelmstMODELCODValidate
      FixedChar = True
    end
    object QModelmstMODELDES: TStringField
      FieldName = 'MODELDES'
      FixedChar = True
      Size = 60
    end
    object QModelmstROUNDKILO: TFloatField
      FieldName = 'ROUNDKILO'
    end
    object QModelmstROUNDDAY: TIntegerField
      FieldName = 'ROUNDDAY'
    end
    object QModelmstTEXT: TMemoField
      FieldName = 'TEXT'
      BlobType = ftMemo
      Size = 512
    end
    object QModelmstUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QModelmstINPDATE: TDateTimeField
      FieldName = 'INPDATE'
    end
    object QModelmstSUBMODEL: TStringField
      FieldName = 'SUBMODEL'
      FixedChar = True
    end
    object QModelmstTYPECOD: TStringField
      FieldName = 'TYPECOD'
      FixedChar = True
      Size = 12
    end
    object QModelmstMODELSV: TStringField
      FieldName = 'MODELSV'
      FixedChar = True
    end
  end
  object ActionList1: TActionList
    Left = 392
    Top = 104
    object actEditPrn: TAction
      Caption = 'actEditPrn'
      ShortCut = 117
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
    Left = 104
    Top = 104
  end
end
