object FmTXRp30Custom: TFmTXRp30Custom
  Left = 544
  Top = 221
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3619#3634#3618#3591#3634#3609#3616#3634#3625#3637#3586#3634#3618'-'#3629#3632#3652#3627#3621#3656
  ClientHeight = 397
  ClientWidth = 447
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 54
    Width = 447
    Height = 343
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
    object Label6: TLabel
      Left = 47
      Top = 17
      Width = 37
      Height = 16
      Alignment = taRightJustify
      Caption = #3626#3634#3586#3634' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 207
      Top = 43
      Width = 46
      Height = 16
      Alignment = taRightJustify
      Caption = #3606#3638#3591#3623#3633#3609#3607#3637#3656' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 30
      Top = 43
      Width = 53
      Height = 16
      Alignment = taRightJustify
      Caption = #3592#3634#3585#3623#3633#3609#3607#3637#3656' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 224
      Top = 18
      Width = 112
      Height = 16
      Alignment = taRightJustify
      Caption = #3648#3593#3614#3634#3632#3627#3617#3623#3604#3648#3629#3585#3626#3634#3619' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 1
      Top = 68
      Width = 82
      Height = 16
      Alignment = taRightJustify
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 236
      Top = 67
      Width = 14
      Height = 16
      Alignment = taRightJustify
      Caption = #3606#3638#3591
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit4: TcxTextEdit
      Left = 338
      Top = 14
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clRed
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
      Width = 36
    end
    object Edit_Locat: TcxButtonEdit
      Left = 88
      Top = 14
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = Edit_LocatPropertiesButtonClick
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
      TabOrder = 1
      Width = 121
    end
    object Edit_DateFrom: TcxDateEdit
      Left = 88
      Top = 39
      ParentFont = False
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
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
      Width = 121
    end
    object Edit_DateTo: TcxDateEdit
      Left = 253
      Top = 39
      ParentFont = False
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
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
      TabOrder = 3
      Width = 121
    end
    object CheckBox1: TcxCheckBox
      Left = 56
      Top = 146
      Caption = #3652#3617#3656#3605#3657#3629#3591#3619#3634#3618#3591#3634#3609#3585#3621#3640#3656#3617#3652#3617#3656#3588#3636#3604#3617#3641#3621#3588#3656#3634
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
    end
    object RadioGroup1: TAdvOfficeRadioGroup
      Left = 55
      Top = 173
      Width = 144
      Height = 68
      Version = '1.6.1.0'
      Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3594#3635#3619#3632
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 5
      Columns = 2
      ItemIndex = 2
      Items.Strings = (
        #3648#3591#3636#3609#3626#3604
        #3648#3588#3619#3604#3636#3605
        #3607#3633#3657#3591#3627#3617#3604)
      Ellipsis = False
    end
    object RadioGroup2: TAdvOfficeRadioGroup
      Left = 202
      Top = 173
      Width = 186
      Height = 68
      Version = '1.6.1.0'
      Caption = #3585#3621#3640#3656#3617#3648#3629#3585#3626#3634#3619
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 6
      Columns = 2
      ItemIndex = 3
      Items.Strings = (
        #3586#3634#3618#3627#3609#3657#3634#3619#3657#3634#3609
        #3586#3634#3618#3624#3641#3609#3618#3660#3631
        #3652#3617#3656#3588#3636#3604#3617#3641#3621#3588#3656#3634
        #3607#3633#3657#3591#3627#3617#3604)
      Ellipsis = False
    end
    object SortGrp: TAdvOfficeRadioGroup
      Left = 54
      Top = 245
      Width = 334
      Height = 46
      Version = '1.6.1.0'
      Caption = #3592#3633#3604#3648#3619#3637#3618#3591#3586#3657#3629#3617#3641#3621#3651#3609#3619#3634#3618#3591#3634#3609
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 7
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610
        #3623#3633#3609#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610)
      Ellipsis = False
    end
    object cxButtonEdit1: TcxButtonEdit
      Left = 88
      Top = 64
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Properties.OnEditValueChanged = cxButtonEdit1PropertiesEditValueChanged
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
      TabOrder = 8
      Width = 121
    end
    object cxButtonEdit2: TcxButtonEdit
      Left = 253
      Top = 64
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = cxButtonEdit2PropertiesButtonClick
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
      TabOrder = 9
      Width = 121
    end
    object AdvOfficeRadioGroup1: TAdvOfficeRadioGroup
      Left = 56
      Top = 98
      Width = 334
      Height = 42
      Version = '1.6.1.0'
      Caption = #3648#3621#3639#3629#3585#3614#3636#3617#3614#3660
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 10
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #3614#3636#3617#3614#3660#3619#3634#3618#3591#3634#3609
        #3614#3636#3617#3614#3660#3615#3629#3619#3660#3617)
      Ellipsis = False
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 54
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
    FullHeight = 54
    object AdvToolBar1: TAdvToolBar
      Left = 0
      Top = 0
      Width = 282
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
        Left = 209
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = 12615680
      end
      object AdvToolBarSeparator6: TAdvToolBarSeparator
        Left = 199
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator7: TAdvToolBarSeparator
        Left = 189
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator8: TAdvToolBarSeparator
        Left = 179
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object CloseBtn: TAdvGlowButton
        Left = 219
        Top = 2
        Width = 59
        Height = 47
        Cursor = crHandPoint
        Hint = #3611#3636#3604#3627#3609#3657#3634#3592#3629#3649#3621#3632#3585#3621#3633#3610#3627#3609#3657#3634#3627#3621#3633#3585
        Caption = 'Back'
        Font.Charset = THAI_CHARSET
        Font.Color = 4210752
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 3
        Images = SFMain.cxImageList3
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object EditBtn: TAdvGlowButton
        Left = 61
        Top = 2
        Width = 59
        Height = 47
        Cursor = crHandPoint
        Hint = #3649#3585#3657#3652#3586#3619#3634#3618#3591#3634#3609
        Caption = 'Edit'
        Font.Charset = THAI_CHARSET
        Font.Color = 4210752
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 1
        Images = SFMain.cxImageList3
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
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
      object PrevBtn: TAdvGlowButton
        Left = 2
        Top = 2
        Width = 59
        Height = 47
        Cursor = crHandPoint
        Hint = #3649#3626#3604#3591#3612#3621#3619#3634#3618#3591#3634#3609#3605#3634#3617#3648#3591#3639#3656#3629#3609#3652#3586
        Caption = 'Preview'
        Font.Charset = THAI_CHARSET
        Font.Color = 4210752
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 0
        Images = SFMain.cxImageList3
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = PrevBtnClick
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
      object tbExport: TAdvGlowButton
        Left = 120
        Top = 2
        Width = 59
        Height = 47
        Cursor = crHandPoint
        Hint = 'Export data to excel file'
        Caption = 'Export'
        Font.Charset = THAI_CHARSET
        Font.Color = 4210752
        Font.Height = -12
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
        TabOrder = 3
        OnClick = tbExportClick
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
  object SaveDialog1: TSaveDialog
    Filter = '*.XLS'
    Left = 340
    Top = 30
  end
  object qrTaxSale: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'Select  T.locat,T.Jobno,T.Taxno,T.Taxdate,T.cuscod,T.Balance,t.v' +
        'atrt,T.Vat,T.Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, '
      '             C.Snam,C.Name1,C.Name2,t.paytyp '
      '    from TaxSal T,custmast C'
      
        '   Where T.cuscod=C.Cuscod and T.Flag='#39'1'#39'  AND  T.LOCAT like '#39'%'#39 +
        ' and SUBSTR(T.TAXNO,2,2) LIKE '#39'%'#39
      '   Union '
      
        'Select T.locat,T.Jobno,T.Taxno,T.Taxdate,T.cuscod,-T.Balance AS ' +
        'Balance,t.vatrt,-T.Vat as Vat,-T.Tottax As Tottax,T.Desc1,T.flag' +
        ',T.Cancel,T.Cancelid, '
      '             C.Snam,C.Name1,C.Name2,t.paytyp '
      '   from TaxSal T,CUSTMAST C '
      
        '   Where T.cuscod=C.Cuscod and  (t.Flag='#39'2'#39' Or T.Flag='#39'7'#39')  and ' +
        'T.LOCAT like '#39'%'#39'  and SUBSTR(T.TAXNO,2,2) LIKE '#39'%'#39
      '')
    Left = 368
    Top = 14
    object qrTaxSaleLOCAT: TStringField
      DisplayLabel = #3626#3634#3586#3634
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object qrTaxSaleTAXNO: TStringField
      DisplayLabel = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object qrTaxSaleTAXDATE: TDateField
      DisplayLabel = #3623#3633#3609#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610
      FieldName = 'TAXDATE'
    end
    object qrTaxSaleCUSCOD: TStringField
      DisplayLabel = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object qrTaxSaleSNAM: TStringField
      DisplayLabel = #3588#3635#3609#3635
      FieldName = 'SNAM'
      FixedChar = True
      Size = 8
    end
    object qrTaxSaleNAME1: TStringField
      DisplayLabel = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
      FieldName = 'NAME1'
      FixedChar = True
      Size = 50
    end
    object qrTaxSaleNAME2: TStringField
      DisplayLabel = #3609#3634#3617#3626#3585#3640#3621
      FieldName = 'NAME2'
      FixedChar = True
      Size = 50
    end
    object qrTaxSaleBALANCE: TFloatField
      DisplayLabel = #3617#3641#3621#3588#3656#3634#3626#3636#3609#3588#3657#3634
      FieldName = 'BALANCE'
    end
    object qrTaxSaleVATRT: TFloatField
      DisplayLabel = #3629#3633#3605#3619#3634#3616#3634#3625#3637
      FieldName = 'VATRT'
    end
    object qrTaxSaleVAT: TFloatField
      DisplayLabel = #3617#3641#3621#3588#3656#3634#3616#3634#3625#3637
      FieldName = 'VAT'
    end
    object qrTaxSaleTOTTAX: TFloatField
      DisplayLabel = #3617#3641#3621#3588#3656#3634#3619#3623#3617#3616#3634#3625#3637
      FieldName = 'TOTTAX'
    end
    object qrTaxSaleDESC1: TStringField
      DisplayLabel = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
      FieldName = 'DESC1'
      FixedChar = True
      Size = 55
    end
    object qrTaxSaleJOBNO: TStringField
      DisplayLabel = #3648#3621#3586#3607#3637#3656' JOB'
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object qrTaxSaleCANCELID: TStringField
      DisplayLabel = #3612#3641#3657#3618#3585#3648#3621#3636#3585
      FieldName = 'CANCELID'
      FixedChar = True
      Size = 8
    end
    object qrTaxSalePAYTYP: TStringField
      DisplayLabel = #3611#3619#3632#3648#3616#3607#3594#3635#3619#3632
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 1
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
    Left = 8
    Top = 56
  end
end
