object SvRp_10: TSvRp_10
  Left = 332
  Top = 170
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3619#3634#3618#3591#3634#3609#3619#3632#3610#3610#3624#3641#3609#3618#3660#3610#3619#3636#3585#3634#3619
  ClientHeight = 294
  ClientWidth = 434
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 54
    Width = 434
    Height = 240
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
    ExplicitTop = 55
    FullHeight = 200
    object Label4: TLabel
      Left = 23
      Top = 19
      Width = 28
      Height = 16
      Alignment = taRightJustify
      Caption = #3626#3634#3586#3634
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 179
      Top = 19
      Width = 76
      Height = 16
      Alignment = taRightJustify
      Caption = #3648#3592#3657#3634#3627#3609#3657#3634#3607#3637#3656#3619#3633#3610#3619#3606
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 68
      Width = 44
      Height = 16
      Alignment = taRightJustify
      Caption = #3592#3634#3585#3623#3633#3609#3607#3637#3656
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 218
      Top = 69
      Width = 37
      Height = 16
      Alignment = taRightJustify
      Caption = #3606#3638#3591#3623#3633#3609#3607#3637#3656
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 23
      Top = 42
      Width = 28
      Height = 16
      Alignment = taRightJustify
      Caption = #3619#3640#3656#3609#3619#3606
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 219
      Top = 43
      Width = 38
      Height = 16
      Alignment = taRightJustify
      Caption = #3618#3637#3656#3627#3657#3629#3619#3606
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Tag = 1
      Left = 197
      Top = 97
      Width = 58
      Height = 14
      Alignment = taRightJustify
      Caption = 'Job Status'
      Font.Charset = THAI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SortRadio: TAdvOfficeRadioGroup
      Left = 1
      Top = 176
      Width = 432
      Height = 63
      Version = '1.6.1.0'
      Align = alBottom
      Caption = #3648#3619#3637#3618#3591#3621#3635#3604#3633#3610#3586#3657#3629#3617#3641#3621
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 0
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #3648#3621#3586#3607#3637#3656' Job'
        #3611#3619#3632#3648#3616#3607#3585#3634#3619#3595#3656#3629#3617
        #3619#3640#3656#3609#3619#3606)
      Ellipsis = False
    end
    object EDIT_LOCAT: TcxButtonEdit
      Left = 57
      Top = 14
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = EDIT_LOCATPropertiesButtonClick
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
    object edOffice: TcxButtonEdit
      Tag = 1
      Left = 259
      Top = 14
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = edOfficePropertiesButtonClick
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
    object edModel: TcxButtonEdit
      Tag = 1
      Left = 57
      Top = 39
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = edModelPropertiesButtonClick
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
    object edType: TcxButtonEdit
      Tag = 1
      Left = 259
      Top = 39
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = edTypePropertiesButtonClick
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
      TabOrder = 4
      Width = 121
    end
    object Edit_dateFrom: TcxDateEdit
      Left = 56
      Top = 64
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
      TabOrder = 5
      Width = 121
    end
    object Edit_DateTo: TcxDateEdit
      Left = 259
      Top = 64
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
      TabOrder = 6
      Width = 121
    end
    object RadioGp2: TcxComboBox
      Left = 259
      Top = 91
      ParentFont = False
      Properties.Items.Strings = (
        #3585#3635#3621#3633#3591#3595#3656#3629#3617'[W]'
        #3595#3656#3629#3617#3648#3626#3619#3655#3592'[F]'
        #3619#3633#3610#3619#3606#3649#3621#3657#3623'[R]'
        #3618#3585#3648#3621#3636#3585' JOB[C]'
        #3607#3640#3585#3626#3606#3634#3609#3632'[All]')
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 7
      Text = #3607#3640#3585#3626#3606#3634#3609#3632'[All]'
      Width = 120
    end
    object rdGroup: TAdvOfficeRadioGroup
      Left = 1
      Top = 128
      Width = 432
      Height = 48
      Version = '1.6.1.0'
      Align = alBottom
      Caption = #3619#3641#3611#3649#3610#3610#3619#3634#3618#3591#3634#3609
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 8
      OnClick = rdGroupClick
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
        #3626#3619#3640#3611#3605#3634#3617#3619#3640#3656#3609','#3611#3619#3632#3648#3616#3607#3648#3586#3657#3634#3595#3656#3629#3617)
      Ellipsis = False
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 434
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
      Width = 272
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
        Left = 199
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = 12615680
      end
      object AdvToolBarSeparator6: TAdvToolBarSeparator
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
        Left = 209
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
      object AdvGlowButton1: TAdvGlowButton
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
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT J.MDLCOD,M.MODELDES,J.REPTYPE,COUNT(J.MDLCOD) COUNT,'#39#39' DE' +
        'SCRIPTION'
      'FROM JOBORDER J LEFT JOIN SETMODEL M ON (J.MDLCOD=M.MODELCOD)'
      'WHERE (J.LOCAT LIKE '#39'%'#39')'
      'AND (J.RECVDATE >= '#39'2014-03-01'#39')'
      'AND (J.RECVDATE <= '#39'2014-03-31'#39')'
      'GROUP BY J.MDLCOD,M.MODELDES,J.REPTYPE'
      'ORDER BY J.MDLCOD')
    Left = 144
    Top = 152
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT J.JOBNO,J.LOCAT,J.RECVDATE,J.RECVTIME,J.FINSDATE,J.FINSTI' +
        'ME,J.MDLCOD,J.RECVCOD,J.STATUS,S.EXPKILO,S.EXPWARNT,'
      
        '                     J.REPTYPE,J.REPBAY,J.STRNO,S.REGNO,S.TYPE,B' +
        '.SNAM,B.NAME1,B.NAME2,S.LASTKILO,J.RLKILOMT,J.CUPONGNO,J.CANCELI' +
        'D,J.CANDAT,J.TSV_TOT '
      '                     FROM JOBORDER J,SVMAST S,CUSTMAST B '
      '                     WHERE (J.STRNO = S.STRNO) '
      '                     AND (J.CUSCOD=B.CUSCOD) ')
    Left = 112
    Top = 144
    object Query2LOCAT: TStringField
      DisplayLabel = #3619#3627#3633#3626#3626#3634#3586#3634
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object Query2JOBNO: TStringField
      DisplayLabel = #3648#3621#3586#3607#3637#3656' JOB'
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object Query2RECVDATE: TDateField
      DisplayLabel = #3623#3633#3609#3607#3637#3656' JOB'
      FieldName = 'RECVDATE'
    end
    object Query2RECVTIME: TStringField
      DisplayLabel = #3648#3623#3621#3634#3595#3656#3629#3617
      FieldName = 'RECVTIME'
      FixedChar = True
      Size = 8
    end
    object Query2FINSDATE: TDateField
      DisplayLabel = #3623#3633#3609#3607#3637#3656#3595#3656#3629#3617#3648#3626#3619#3655#3592
      FieldName = 'FINSDATE'
    end
    object Query2FINSTIME: TStringField
      DisplayLabel = #3648#3623#3621#3634#3595#3656#3629#3617#3648#3626#3619#3655#3592
      FieldName = 'FINSTIME'
      FixedChar = True
      Size = 8
    end
    object Query2MDLCOD: TStringField
      DisplayLabel = #3619#3627#3633#3626#3619#3640#3656#3609
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object Query2RECVCOD: TStringField
      DisplayLabel = #3619#3627#3633#3626#3594#3656#3634#3591
      FieldName = 'RECVCOD'
      FixedChar = True
      Size = 5
    end
    object Query2STATUS: TStringField
      DisplayLabel = #3626#3606#3634#3609#3632
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object Query2REPTYPE: TStringField
      DisplayLabel = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3595#3656#3629#3617
      FieldName = 'REPTYPE'
      FixedChar = True
      Size = 5
    end
    object Query2STRNO: TStringField
      DisplayLabel = #3648#3621#3586#3605#3633#3623#3606#3633#3591
      FieldName = 'STRNO'
      FixedChar = True
    end
    object Query2REGNO: TStringField
      DisplayLabel = #3648#3621#3586#3607#3632#3648#3610#3637#3618#3609
      FieldName = 'REGNO'
      FixedChar = True
      Size = 15
    end
    object Query2TYPE: TStringField
      DisplayLabel = #3618#3637#3656#3627#3657#3629
      FieldName = 'TYPE'
      FixedChar = True
      Size = 12
    end
    object Query2SNAM: TStringField
      DisplayLabel = #3588#3635#3609#3635#3627#3609#3657#3634
      FieldName = 'SNAM'
      FixedChar = True
      Size = 8
    end
    object Query2NAME1: TStringField
      DisplayLabel = #3594#3639#3656#3629
      FieldName = 'NAME1'
      FixedChar = True
      Size = 50
    end
    object Query2NAME2: TStringField
      DisplayLabel = #3626#3585#3640#3621
      FieldName = 'NAME2'
      FixedChar = True
      Size = 50
    end
    object Query2LASTKILO: TFloatField
      DisplayLabel = #3585#3636#3650#3621#3621#3656#3634#3626#3640#3604
      FieldName = 'LASTKILO'
    end
    object Query2RLKILOMT: TFloatField
      DisplayLabel = #3648#3621#3586#3652#3617#3621
      FieldName = 'RLKILOMT'
    end
    object Query2TSV_TOT: TFloatField
      DisplayLabel = #3592#3635#3609#3623#3609#3648#3591#3636#3609
      FieldName = 'TSV_TOT'
      DisplayFormat = '##,##0.00'
    end
  end
  object QExportXLS1: TQExport4Xlsx
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
    Left = 112
    Top = 174
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
    Left = 344
    Top = 54
  end
  object ExportMenu: TAdvPopupMenu
    AutoHotkeys = maManual
    MenuStyler = SFMain.AdvMenuOfficeStyler1
    Version = '2.6.6.0'
    Left = 184
    Top = 54
    object MenuItem146: TMenuItem
      Caption = 'Excel Workbook'
      OnClick = MenuItem146Click
    end
    object MenuItem147: TMenuItem
      Caption = 'Excel 97-2003 Workbook'
      OnClick = MenuItem147Click
    end
    object WordDocument1: TMenuItem
      Caption = 'Word Document'
      OnClick = WordDocument1Click
    end
    object WordDocument2: TMenuItem
      Caption = 'Word 97-2003 Document'
      OnClick = WordDocument2Click
    end
    object PDF1: TMenuItem
      Caption = 'PDF File'
      OnClick = PDF1Click
    end
    object DBF1: TMenuItem
      Caption = 'DBF File'
      OnClick = DBF1Click
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
    Left = 272
    Top = 6
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
    Left = 304
    Top = 6
  end
  object QExport4Docx1: TQExport4Docx
    DataSet = Query2
    About = '(About EMS AdvancedExport)'
    _Version = '4.1.0.7'
    DocxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.HeaderStyle.Font.Color = clBlack
    DocxOptions.HeaderStyle.Font.Height = -15
    DocxOptions.HeaderStyle.Font.Name = 'Calibri'
    DocxOptions.HeaderStyle.Font.Style = []
    DocxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.CaptionRowStyle.Font.Color = clBlack
    DocxOptions.CaptionRowStyle.Font.Height = -15
    DocxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    DocxOptions.CaptionRowStyle.Font.Style = []
    DocxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.DataStyle.Font.Color = clBlack
    DocxOptions.DataStyle.Font.Height = -15
    DocxOptions.DataStyle.Font.Name = 'Calibri'
    DocxOptions.DataStyle.Font.Style = []
    DocxOptions.StripStylesList = <>
    DocxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.FooterStyle.Font.Color = clBlack
    DocxOptions.FooterStyle.Font.Height = -15
    DocxOptions.FooterStyle.Font.Name = 'Calibri'
    DocxOptions.FooterStyle.Font.Style = []
    Left = 336
    Top = 8
  end
  object QExport4RTF1: TQExport4RTF
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
    Options.CaptionStyle.Font.Charset = DEFAULT_CHARSET
    Options.CaptionStyle.Font.Color = clBlack
    Options.CaptionStyle.Font.Height = -13
    Options.CaptionStyle.Font.Name = 'Arial'
    Options.CaptionStyle.Font.Style = [fsBold]
    Options.CaptionStyle.AllowHighlight = True
    Options.CaptionStyle.Alignment = talCenter
    Options.DataStyle.Font.Charset = DEFAULT_CHARSET
    Options.DataStyle.Font.Color = clBlack
    Options.DataStyle.Font.Height = -13
    Options.DataStyle.Font.Name = 'Arial'
    Options.DataStyle.Font.Style = []
    Options.DataStyle.AllowHighlight = True
    Options.StripStyles = <>
    Options.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    Options.HeaderStyle.Font.Color = clBlack
    Options.HeaderStyle.Font.Height = -13
    Options.HeaderStyle.Font.Name = 'Arial'
    Options.HeaderStyle.Font.Style = []
    Options.HeaderStyle.AllowHighlight = True
    Options.FooterStyle.Font.Charset = DEFAULT_CHARSET
    Options.FooterStyle.Font.Color = clBlack
    Options.FooterStyle.Font.Height = -13
    Options.FooterStyle.Font.Name = 'Arial'
    Options.FooterStyle.Font.Style = []
    Options.FooterStyle.AllowHighlight = True
    Left = 368
    Top = 6
  end
  object QExport4PDF1: TQExport4PDF
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
    Options.PageOptions.MarginLeft = 1.170000000000000000
    Options.PageOptions.MarginRight = 0.570000000000000000
    Options.PageOptions.MarginTop = 0.780000000000000000
    Options.PageOptions.MarginBottom = 0.780000000000000000
    Options.HeaderFont.UserFont.Charset = DEFAULT_CHARSET
    Options.HeaderFont.UserFont.Color = clWindowText
    Options.HeaderFont.UserFont.Height = -13
    Options.HeaderFont.UserFont.Name = 'Arial'
    Options.HeaderFont.UserFont.Style = []
    Options.HeaderFont.Charset = ANSI_CHARSET
    Options.CaptionFont.UserFont.Charset = DEFAULT_CHARSET
    Options.CaptionFont.UserFont.Color = clWindowText
    Options.CaptionFont.UserFont.Height = -13
    Options.CaptionFont.UserFont.Name = 'Arial'
    Options.CaptionFont.UserFont.Style = []
    Options.CaptionFont.Charset = ANSI_CHARSET
    Options.DataFont.UserFont.Charset = DEFAULT_CHARSET
    Options.DataFont.UserFont.Color = clWindowText
    Options.DataFont.UserFont.Height = -13
    Options.DataFont.UserFont.Name = 'Arial'
    Options.DataFont.UserFont.Style = []
    Options.DataFont.Charset = ANSI_CHARSET
    Options.FooterFont.UserFont.Charset = DEFAULT_CHARSET
    Options.FooterFont.UserFont.Color = clWindowText
    Options.FooterFont.UserFont.Height = -13
    Options.FooterFont.UserFont.Name = 'Arial'
    Options.FooterFont.UserFont.Style = []
    Options.FooterFont.Charset = ANSI_CHARSET
    Left = 392
    Top = 6
  end
  object QExport4DBF1: TQExport4DBF
    DataSet = Query2
    About = '(About EMS AdvancedExport)'
    _Version = '4.1.0.7'
    ExportTimeAsStr = False
    NullValue = 'null'
    Left = 424
    Top = 6
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 276
    Top = 196
  end
  object frxChartObject1: TfrxChartObject
    Left = 404
    Top = 260
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 372
    Top = 260
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 340
    Top = 260
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
    Left = 308
    Top = 260
  end
  object frxBDEComponents1: TfrxBDEComponents
    DefaultSession = 'Default'
    Left = 276
    Top = 260
  end
  object frxFDComponents1: TfrxFDComponents
    DefaultDatabase = DM_SEC.HI_DBMS
    Left = 404
    Top = 228
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 372
    Top = 228
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 340
    Top = 228
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
    Left = 308
    Top = 228
  end
  object frxReportTableObject1: TfrxReportTableObject
    Left = 276
    Top = 228
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 404
    Top = 196
  end
  object frxRichObject1: TfrxRichObject
    Left = 372
    Top = 196
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = True
    PictureType = gpPNG
    Left = 340
    Top = 196
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
    Left = 308
    Top = 196
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
