object SvSt_30: TSvSt_30
  Left = 409
  Top = 282
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3619#3627#3633#3626#3595#3656#3629#3617#3607#3635
  ClientHeight = 179
  ClientWidth = 436
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
    Width = 436
    Height = 179
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
    object Label1: TLabel
      Left = 59
      Top = 72
      Width = 63
      Height = 16
      Alignment = taRightJustify
      Caption = #3619#3627#3633#3626#3611#3619#3632#3648#3616#3607
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 98
      Width = 117
      Height = 16
      Alignment = taRightJustify
      Caption = #3594#3639#3656#3629#3611#3619#3632#3648#3616#3607#3585#3634#3619#3595#3656#3629#3617#3607#3635
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit3: TcxDBTextEdit
      Left = 128
      Top = 69
      DataBinding.DataField = 'TYPCOD'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.TextColor = clBlue
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = 14540287
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.TextColor = clBlack
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 0
      Width = 121
    end
    object DBEdit4: TcxDBTextEdit
      Left = 128
      Top = 95
      DataBinding.DataField = 'TYPNAME'
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
      TabOrder = 1
      Width = 263
    end
    object AdvPanel2: TAdvPanel
      Left = 1
      Top = 1
      Width = 434
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
      FullHeight = 51
      object AdvToolBar2: TAdvToolBar
        Left = 2
        Top = -1
        Width = 404
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
          Left = 332
          Top = 2
          Width = 10
          Height = 47
          SeparatorStyle = ssBlank
          LineColor = clBtnShadow
        end
        object AdvToolBarSeparator3: TAdvToolBarSeparator
          Left = 312
          Top = 2
          Width = 10
          Height = 47
          SeparatorStyle = ssBlank
          LineColor = clBtnShadow
          Visible = False
        end
        object AdvToolBarSeparator6: TAdvToolBarSeparator
          Left = 322
          Top = 2
          Width = 10
          Height = 47
          SeparatorStyle = ssBlank
          LineColor = clBtnShadow
          Visible = False
        end
        object AdvToolBarSeparator8: TAdvToolBarSeparator
          Left = 292
          Top = 2
          Width = 10
          Height = 47
          SeparatorStyle = ssBlank
          LineColor = clBtnShadow
        end
        object AdvToolBarSeparator1: TAdvToolBarSeparator
          Left = 302
          Top = 2
          Width = 10
          Height = 47
          SeparatorStyle = ssBlank
          LineColor = clBtnShadow
          Visible = False
        end
        object EnqBtn: TAdvGlowButton
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
          TabOrder = 0
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
        object SavBtn: TAdvGlowButton
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
          TabOrder = 1
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
          TabOrder = 2
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
          Left = 342
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
          TabOrder = 3
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
          TabOrder = 4
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
          TabOrder = 5
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
      end
    end
    object dxStatusBar1: TdxStatusBar
      Left = 1
      Top = 158
      Width = 434
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Text = 'Ready'
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Text = #3585#3635#3627#3609#3604#3649#3615#3657#3617#3595#3656#3629#3617#3607#3635
          Width = 150
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Text = 'SVTYPE'
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
    DataSet = QSvtype
    OnStateChange = DataSource1StateChange
    Left = 12
    Top = 4
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
    Left = 280
    Top = 32
  end
  object QSvtype: TFDQuery
    BeforePost = QSvtypeBeforePost
    AfterPost = QSvtypeAfterPost
    AfterDelete = QSvtypeAfterPost
    OnNewRecord = QSvtypeNewRecord
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM SVTYPE')
    Left = 47
    Top = 5
    object QSvtypeTYPCOD: TStringField
      FieldName = 'TYPCOD'
      OnValidate = QSvtypeTYPCODValidate
      FixedChar = True
      Size = 5
    end
    object QSvtypeTYPNAME: TStringField
      FieldName = 'TYPNAME'
      FixedChar = True
      Size = 30
    end
    object QSvtypeTYPFLG: TStringField
      FieldName = 'TYPFLG'
      FixedChar = True
      Size = 1
    end
    object QSvtypeSNCSET: TStringField
      FieldName = 'SNCSET'
      FixedChar = True
      Size = 1
    end
    object QSvtypeACCSV: TStringField
      FieldName = 'ACCSV'
      FixedChar = True
      Size = 12
    end
    object QSvtypeACCCL: TStringField
      FieldName = 'ACCCL'
      FixedChar = True
      Size = 12
    end
    object QSvtypeACCTC: TStringField
      FieldName = 'ACCTC'
      FixedChar = True
      Size = 12
    end
    object QSvtypeDEPT: TStringField
      FieldName = 'DEPT'
      FixedChar = True
      Size = 2
    end
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 99
    Top = 65533
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
    Left = 192
    Top = 112
  end
end
