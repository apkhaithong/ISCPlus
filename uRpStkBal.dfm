object frmRpStkBal: TfrmRpStkBal
  Left = 557
  Top = 223
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3619#3634#3618#3591#3634#3609#3626#3636#3609#3588#3657#3634#3588#3591#3648#3627#3621#3639#3629
  ClientHeight = 272
  ClientWidth = 483
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
    Width = 483
    Height = 218
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
    object Label8: TLabel
      Left = 4
      Top = 67
      Width = 82
      Height = 16
      Alignment = taRightJustify
      Caption = #3592#3634#3585#3619#3627#3633#3626#3626#3636#3609#3588#3657#3634' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 259
      Top = 67
      Width = 23
      Height = 16
      Alignment = taRightJustify
      Caption = #3606#3638#3591' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 23
      Top = 90
      Width = 63
      Height = 16
      Alignment = taRightJustify
      Caption = #3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 49
      Top = 42
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
      Left = 212
      Top = 43
      Width = 70
      Height = 16
      Alignment = taRightJustify
      Caption = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3591#3623#3604' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel1: TRzLabel
      Left = 231
      Top = 91
      Width = 51
      Height = 16
      Alignment = taRightJustify
      Caption = #3603' '#3623#3633#3609#3607#3637#3656' :'
      Font.Charset = THAI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Blinking = True
      BlinkColor = clRed
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object ChkStatus: TcxCheckBox
      Left = 88
      Top = 11
      Caption = #3649#3626#3604#3591#3648#3593#3614#3634#3632#3607#3637#3656#3617#3637#3585#3634#3619#3648#3588#3621#3639#3656#3629#3609#3652#3627#3623#3651#3609#3648#3604#3639#3629#3609
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 0
      Visible = False
    end
    object Edit_Locat: TcxButtonEdit
      Left = 89
      Top = 39
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.IgnoreMaskBlank = True
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
    object cxDateEdit1: TcxDateEdit
      Left = 285
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
    object Edit3: TcxButtonEdit
      Left = 89
      Top = 63
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = Edit3PropertiesButtonClick
      Properties.OnChange = Edit3PropertiesChange
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
    object Edit4: TcxButtonEdit
      Left = 285
      Top = 63
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = Edit4PropertiesButtonClick
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
    object Edit2: TcxButtonEdit
      Left = 89
      Top = 87
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
      TabOrder = 5
      Width = 121
    end
    object Edit_DateTo: TcxDateEdit
      Left = 285
      Top = 87
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
    object cxRadioGroup1: TcxRadioGroup
      Left = 1
      Top = 133
      Align = alBottom
      Caption = 'Report Option :'
      ParentFont = False
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Stock > 0'
        end
        item
          Caption = 'Stock = 0'
        end
        item
          Caption = 'Stock < 0'
        end
        item
          Caption = 'Stock <> 0'
        end
        item
          Caption = '-- Search All --'
        end>
      ItemIndex = 0
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 7
      Height = 84
      Width = 481
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 483
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
      Left = -1
      Top = 0
      Width = 154
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
        Left = 81
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = 12615680
      end
      object AdvToolBarSeparator6: TAdvToolBarSeparator
        Left = 71
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator7: TAdvToolBarSeparator
        Left = 61
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object CloseBtn: TAdvGlowButton
        Left = 91
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
        TabOrder = 1
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
  object qrAccglmst: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'select  V.LOCAT,T.PARTNO,T.DESC1,T.GROUP1,T.UNIT,T.COST,T.STDBUY' +
        ',T.LSTBUY,T.LSTBDATE,T.PRICE1,SUM(V.QTYIN) QTYIN,SUM(V.QTYOUT) Q' +
        'TYOUT,SUM(V.QTYIN)-SUM(V.QTYOUT) BAL'
      'FROM INVMAST T,VIEW_STKCARD_MAYO V '
      'WHERE (T.PARTNO=V.PARTNO) '
      'AND T.PARTNO = '#39'1102'#39
      
        'AND (V.DOCDT >='#39'2017-01-01'#39' AND V.DOCDT <='#39'2017-10-01'#39') AND V.LO' +
        'CAT LIKE '#39'%'#39'                          '
      
        'GROUP BY V.LOCAT,T.PARTNO,T.DESC1,T.GROUP1,T.UNIT,T.COST,T.STDBU' +
        'Y,T.LSTBUY,T.LSTBDATE,T.PRICE1                      '
      'ORDER BY V.LOCAT,T.PARTNO'
      '           ')
    Left = 224
    Top = 29
    object qrAccglmstLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object qrAccglmstPARTNO: TStringField
      FieldName = 'PARTNO'
    end
    object qrAccglmstDESC1: TStringField
      FieldName = 'DESC1'
      Size = 45
    end
    object qrAccglmstGROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
    object qrAccglmstUNIT: TStringField
      FieldName = 'UNIT'
      Size = 10
    end
    object qrAccglmstCOST: TFloatField
      FieldName = 'COST'
      DisplayFormat = '##,##0.00'
    end
    object qrAccglmstSTDBUY: TFloatField
      FieldName = 'STDBUY'
      DisplayFormat = '##,##0.00'
    end
    object qrAccglmstLSTBUY: TFloatField
      FieldName = 'LSTBUY'
      DisplayFormat = '##,##0.00'
    end
    object qrAccglmstLSTBDATE: TDateField
      FieldName = 'LSTBDATE'
    end
    object qrAccglmstPRICE1: TFloatField
      FieldName = 'PRICE1'
      DisplayFormat = '##,##0.00'
    end
    object qrAccglmstQTYIN: TFloatField
      FieldName = 'QTYIN'
      DisplayFormat = '##,##0.00'
    end
    object qrAccglmstQTYOUT: TFloatField
      FieldName = 'QTYOUT'
      DisplayFormat = '##,##0.00'
    end
    object qrAccglmstBAL: TFloatField
      FieldName = 'BAL'
      DisplayFormat = '##,##0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrAccglmst
    Left = 259
    Top = 31
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LOCAT=LOCAT'
      'PARTNO=PARTNO'
      'DESC1=DESC1'
      'GROUP1=GROUP1'
      'UNIT=UNIT'
      'COST=COST'
      'STDBUY=STDBUY'
      'LSTBUY=LSTBUY'
      'LSTBDATE=LSTBDATE'
      'PRICE1=PRICE1'
      'QTYIN=QTYIN'
      'QTYOUT=QTYOUT'
      'BAL=BAL')
    DataSource = DataSource1
    BCDToCurrency = False
    Left = 192
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '6.5.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40767.577191469900000000
    ReportOptions.LastChange = 40767.577191469900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 224
    Top = 56
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object ActionList1: TActionList
    Left = 360
    object AcEdit: TAction
      Caption = 'AcEdit'
      ShortCut = 40968
      OnExecute = AcEditExecute
    end
  end
end
