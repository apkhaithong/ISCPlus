object FrpArBill: TFrpArBill
  Left = 590
  Top = 163
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3619#3634#3618#3591#3634#3609#3610#3633#3609#3607#3638#3585#3651#3610#3623#3634#3591#3610#3636#3621
  ClientHeight = 255
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
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
    Width = 420
    Height = 201
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
      Left = 23
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
    object Label20: TLabel
      Left = 183
      Top = 16
      Width = 61
      Height = 16
      Alignment = taRightJustify
      Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
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
    object Label15: TLabel
      Left = 198
      Top = 42
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
    object Edit_Locat: TcxButtonEdit
      Left = 64
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
      TabOrder = 0
      Width = 121
    end
    object Edit2: TcxButtonEdit
      Left = 248
      Top = 14
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = Edit2PropertiesButtonClick
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
      Left = 64
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
      Left = 248
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
    object XOPTION: TAdvOfficeRadioGroup
      Left = 38
      Top = 71
      Width = 216
      Height = 81
      Version = '1.6.1.0'
      Caption = #3648#3591#3639#3656#3629#3609#3652#3586#3619#3634#3618#3591#3634#3609
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 4
      ItemIndex = 0
      Items.Strings = (
        #3648#3593#3614#3634#3632#3651#3610#3623#3634#3591#3610#3636#3621#3607#3637#3656#3618#3633#3591#3652#3617#3656#3652#3604#3657#3619#3633#3610#3648#3591#3636#3609
        #3648#3593#3614#3634#3632#3651#3610#3623#3634#3591#3610#3636#3621#3607#3637#3656#3619#3633#3610#3648#3591#3636#3609#3649#3621#3657#3623
        #3607#3633#3657#3591#3627#3617#3604)
      Ellipsis = False
    end
    object XORDER: TAdvOfficeRadioGroup
      Left = 256
      Top = 71
      Width = 129
      Height = 81
      Version = '1.6.1.0'
      Caption = #3648#3591#3639#3656#3629#3609#3652#3586#3619#3634#3618#3591#3634#3609
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 5
      ItemIndex = 0
      Items.Strings = (
        #3605#3634#3617#3648#3621#3586#3607#3637#3656#3651#3610#3623#3634#3591#3610#3636#3621
        #3605#3634#3617#3619#3627#3633#3626#3621#3641#3585#3588#3657#3634)
      Ellipsis = False
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 420
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
      Left = -8
      Top = 0
      Width = 213
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
        Left = 140
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = 12615680
      end
      object AdvToolBarSeparator6: TAdvToolBarSeparator
        Left = 130
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator8: TAdvToolBarSeparator
        Left = 120
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object CloseBtn: TAdvGlowButton
        Left = 150
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
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 388
    Top = 224
  end
  object frxChartObject1: TfrxChartObject
    Left = 356
    Top = 224
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 324
    Top = 224
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 292
    Top = 224
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
    Left = 260
    Top = 224
  end
  object frxBDEComponents1: TfrxBDEComponents
    DefaultSession = 'Default'
    Left = 388
    Top = 192
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
    Left = 356
    Top = 192
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 324
    Top = 192
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 292
    Top = 192
  end
  object frxFDComponents1: TfrxFDComponents
    DefaultDatabase = DM_SEC.HI_DBMS
    Left = 260
    Top = 192
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 388
    Top = 160
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
    Left = 356
    Top = 160
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxReportTableObject1: TfrxReportTableObject
    Left = 324
    Top = 160
  end
  object frxRichObject1: TfrxRichObject
    Left = 292
    Top = 160
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = True
    PictureType = gpPNG
    Left = 260
    Top = 160
  end
end
