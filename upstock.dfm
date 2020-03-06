object Fupstock: TFupstock
  Left = 538
  Top = 98
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3611#3619#3633#3610#3611#3619#3640#3591#3626#3636#3609#3588#3657#3634#3588#3591#3648#3627#3621#3639#3629
  ClientHeight = 239
  ClientWidth = 519
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 51
    Width = 519
    Height = 188
    Align = alClient
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = THAI_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
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
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Styler = SFMain.AdvPanelStyler1
    Text = ''
    FullHeight = 200
    object Gauge1: TGauge
      Left = 0
      Top = 168
      Width = 519
      Height = 20
      Align = alBottom
      ForeColor = clBlue
      Progress = 0
      ExplicitLeft = 1
      ExplicitTop = 167
      ExplicitWidth = 517
    end
    object Label4: TLabel
      Left = 66
      Top = 100
      Width = 68
      Height = 13
      Caption = 'Successful...'
      Font.Charset = THAI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 12
      Top = 37
      Width = 50
      Height = 16
      Alignment = taRightJustify
      Caption = #3619#3627#3633#3626#3626#3634#3586#3634
      Color = clBtnFace
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 206
      Top = 35
      Width = 8
      Height = 16
      Alignment = taRightJustify
      Caption = #3611#3637
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 295
      Top = 36
      Width = 47
      Height = 16
      Alignment = taRightJustify
      Caption = #3603'. '#3648#3604#3639#3629#3609
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 12
      Top = 61
      Width = 52
      Height = 16
      Alignment = taRightJustify
      Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      Color = clBtnFace
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object SpinEdit2: TcxSpinEdit
      Left = 219
      Top = 32
      ParentFont = False
      Properties.MaxValue = 2030.000000000000000000
      Properties.MinValue = 2008.000000000000000000
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clBlue
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
      Value = 2017
      Width = 71
    end
    object SpinEdit1: TcxSpinEdit
      Left = 350
      Top = 32
      ParentFont = False
      Properties.MaxValue = 12.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnChange = SpinEdit1PropertiesChange
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clBlue
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
      Value = 12
      Width = 41
    end
    object CheckBox3: TcxCheckBox
      Left = 216
      Top = 60
      Caption = #3611#3619#3633#3610#3611#3619#3640#3591#3607#3640#3585#3619#3634#3618#3585#3634#3619' ('#3651#3594#3657#3605#3629#3609' Setup '#3619#3632#3610#3610' '#3648#3619#3636#3656#3617#3605#3657#3609')'
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
      TabOrder = 2
      Transparent = True
    end
    object CheckBox4: TcxCheckBox
      Left = 216
      Top = 103
      Caption = #3611#3619#3633#3610#3611#3619#3640#3591#3607#3640#3585#3626#3634#3586#3634#3629#3633#3605#3650#3609#3617#3633#3605#3636
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
      TabOrder = 3
      Transparent = True
      OnClick = CheckBox4Click
    end
    object CheckBox1: TcxCheckBox
      Left = 63
      Top = 144
      Caption = #3611#3619#3633#3610#3611#3619#3640#3591#3626#3605#3655#3629#3585#3585#3634#3619#3660#3604#3651#3627#3617#3656
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
      TabOrder = 4
      Transparent = True
      Visible = False
      OnClick = CheckBox1Click
    end
    object CheckBox2: TcxCheckBox
      Left = 63
      Top = 120
      Caption = #3611#3619#3633#3610#3611#3619#3640#3591#3618#3629#3604#3586#3634#3618
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
      TabOrder = 5
      Transparent = True
      Visible = False
    end
    object CheckBox5: TcxCheckBox
      Left = 216
      Top = 81
      Caption = #3611#3619#3633#3610#3611#3619#3640#3591#3605#3656#3629#3648#3609#3639#3656#3629#3591#3606#3638#3591#3648#3604#3639#3629#3609' 12'
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
      TabOrder = 6
      Transparent = True
    end
    object edLocat: TcxButtonEdit
      Left = 64
      Top = 33
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = edLocatPropertiesButtonClick
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
      TabOrder = 7
      Width = 121
    end
    object cxButtonEdit2: TcxButtonEdit
      Left = 64
      Top = 57
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
      TabOrder = 8
      Width = 121
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
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
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
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
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Styler = SFMain.AdvPanelStyler1
    Text = ''
    FullHeight = 51
    object AdvToolBar2: TAdvToolBar
      Left = 0
      Top = -1
      Width = 210
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
      object AdvToolBarSeparator3: TAdvToolBarSeparator
        Left = 128
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object AdvToolBarSeparator7: TAdvToolBarSeparator
        Left = 138
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator8: TAdvToolBarSeparator
        Left = 118
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object AdvGlowButton1: TAdvGlowButton
        Left = 2
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Caption = 'Adj.Stock'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 13
        Images = SFMain.cxImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
      object SaveBtn: TAdvGlowButton
        Left = 60
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Caption = 'Adj.Price'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 13
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
      object CloseBtn: TAdvGlowButton
        Left = 148
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
        TabOrder = 2
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
    end
  end
  object QInvanls: TFDQuery
    AfterPost = QInvanlsAfterPost
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 417
    Top = 13
  end
  object DataSource1: TDataSource
    DataSet = Qpart
    Left = 117
    Top = 9
  end
  object QStkcard: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 189
    Top = 5
  end
  object Query1: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    Left = 221
    Top = 5
  end
  object Qlocat: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 253
    Top = 5
  end
  object Qpart: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 89
    Top = 9
  end
  object Rctran: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM RC_TRANS')
    Left = 245
    Top = 293
    object RctranRECVNO: TStringField
      FieldName = 'RECVNO'
      Size = 12
    end
    object RctranRECVLOC: TStringField
      FieldName = 'RECVLOC'
      Size = 5
    end
    object RctranPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
    end
    object RctranUNIT: TStringField
      FieldName = 'UNIT'
      Size = 10
    end
    object RctranUCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '#,##0.00'
    end
    object RctranQTYORD: TFloatField
      FieldName = 'QTYORD'
      DisplayFormat = '#,##0.00'
    end
    object RctranQTYRECV: TFloatField
      FieldName = 'QTYRECV'
      DisplayFormat = '#,##0.00'
    end
    object RctranNETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '#,##0.00'
    end
    object RctranREDU1: TFloatField
      FieldName = 'REDU1'
      DisplayFormat = '#,##0.00'
    end
    object RctranREDU2: TFloatField
      FieldName = 'REDU2'
      DisplayFormat = '#,##0.00'
    end
    object RctranREDU3: TFloatField
      FieldName = 'REDU3'
      DisplayFormat = '#,##0.00'
    end
    object RctranNETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '#,##0.00'
    end
    object RctranACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object RctranRECVDATE: TDateField
      FieldName = 'RECVDATE'
    end
    object RctranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object RctranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object RctranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object RctranPONO: TStringField
      FieldName = 'PONO'
      Size = 12
    end
    object RctranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object RctranCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object RctranCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object RctranPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object RctranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
    object RctranVATCOST: TFloatField
      FieldName = 'VATCOST'
    end
  end
  object SoRctran: TDataSource
    DataSet = Rctran
    Left = 274
    Top = 293
  end
  object Rcinv: TFDTable
    AutoCalcFields = False
    IndexFieldNames = 'RECVNO;RECVLOC'
    MasterSource = SoRctran
    MasterFields = 'RECVNO;RECVLOC'
    ConnectionName = 'Hi_dbms'
    UpdateOptions.UpdateTableName = 'RC_INVOI'
    TableName = 'RC_INVOI'
    Left = 301
    Top = 293
    object RcinvRECVNO: TStringField
      FieldName = 'RECVNO'
      Required = True
      Size = 12
    end
    object RcinvRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object RcinvRECVLOC: TStringField
      FieldName = 'RECVLOC'
      Required = True
      Size = 5
    end
    object RcinvPONO: TStringField
      FieldName = 'PONO'
      Size = 12
    end
    object RcinvINVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object RcinvINVDATE: TDateField
      FieldName = 'INVDATE'
    end
    object RcinvCREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object RcinvINVDUE: TDateField
      FieldName = 'INVDUE'
    end
    object RcinvVATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object RcinvAPCODE: TStringField
      FieldName = 'APCODE'
      Required = True
      Size = 12
    end
    object RcinvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object RcinvTNOPAY: TFloatField
      FieldName = 'TNOPAY'
    end
    object RcinvTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object RcinvDISCT: TFloatField
      FieldName = 'DISCT'
    end
    object RcinvDISCAMT: TFloatField
      FieldName = 'DISCAMT'
    end
    object RcinvNETAMT: TFloatField
      FieldName = 'NETAMT'
    end
    object RcinvBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object RcinvVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object RcinvVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object RcinvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object RcinvPAID: TFloatField
      FieldName = 'PAID'
    end
    object RcinvTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object RcinvTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object RcinvTAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object RcinvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object RcinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object RcinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object RcinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object RcinvCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object RcinvCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object RcinvPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
  end
  object Rttran: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM RT_TRAN')
    Left = 245
    Top = 321
    object RttranRTNLOC: TStringField
      FieldName = 'RTNLOC'
      Size = 5
    end
    object RttranRTNNO: TStringField
      FieldName = 'RTNNO'
      Size = 12
    end
    object RttranRTNDT: TDateField
      FieldName = 'RTNDT'
    end
    object RttranPARTNO: TStringField
      FieldName = 'PARTNO'
    end
    object RttranUPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '#,##0.00'
    end
    object RttranQTYINV: TFloatField
      FieldName = 'QTYINV'
      DisplayFormat = '#,##0.00'
    end
    object RttranQTYRTN: TFloatField
      FieldName = 'QTYRTN'
      DisplayFormat = '#,##0.00'
    end
    object RttranNETFL: TStringField
      FieldName = 'NETFL'
      Size = 1
    end
    object RttranNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object RttranTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object RttranACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object RttranSERIALNO: TStringField
      FieldName = 'SERIALNO'
    end
    object RttranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object RttranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object RttranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object RttranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object RttranCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object RttranCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object RttranPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object RttranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
    object RttranCOST: TFloatField
      FieldName = 'COST'
    end
    object RttranTAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
  end
  object SoRttran: TDataSource
    DataSet = Rttran
    Left = 274
    Top = 321
  end
  object Rtinv: TFDTable
    IndexFieldNames = 'RTNLOC;RTNNO'
    MasterSource = SoRttran
    MasterFields = 'RTNLOC;RTNNO'
    ConnectionName = 'Hi_dbms'
    UpdateOptions.UpdateTableName = 'RT_INVOI'
    TableName = 'RT_INVOI'
    Left = 301
    Top = 321
    object RtinvRTNLOC: TStringField
      FieldName = 'RTNLOC'
      Required = True
      Size = 5
    end
    object RtinvRTNNO: TStringField
      FieldName = 'RTNNO'
      Required = True
      Size = 12
    end
    object RtinvRTNDT: TDateField
      FieldName = 'RTNDT'
    end
    object RtinvTAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      Size = 12
    end
    object RtinvTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object RtinvINVNO: TStringField
      FieldName = 'INVNO'
      Size = 12
    end
    object RtinvINVDT: TDateField
      FieldName = 'INVDT'
    end
    object RtinvCREDNO: TStringField
      FieldName = 'CREDNO'
      Size = 12
    end
    object RtinvCREDDT: TDateField
      FieldName = 'CREDDT'
    end
    object RtinvAPCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object RtinvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object RtinvVATTYP: TStringField
      FieldName = 'VATTYP'
      Size = 1
    end
    object RtinvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
    end
    object RtinvVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object RtinvVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object RtinvNETPRC: TFloatField
      FieldName = 'NETPRC'
    end
    object RtinvTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object RtinvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object RtinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object RtinvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object RtinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object RtinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object RtinvCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object RtinvCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object RtinvPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
  end
  object AdjTran: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM ADJ_TRANS')
    Left = 374
    Top = 309
    object AdjTranADJNO: TStringField
      FieldName = 'ADJNO'
      Size = 12
    end
    object AdjTranADJLOC: TStringField
      FieldName = 'ADJLOC'
      Size = 5
    end
    object AdjTranADJDATE: TDateField
      FieldName = 'ADJDATE'
    end
    object AdjTranPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
    end
    object AdjTranUCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '#,##0.00'
    end
    object AdjTranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
      DisplayFormat = '#,##0.00'
    end
    object AdjTranQTYORD: TFloatField
      FieldName = 'QTYORD'
      DisplayFormat = '#,##0.00'
    end
    object AdjTranQTYOUT: TFloatField
      FieldName = 'QTYOUT'
      DisplayFormat = '#,##0.00'
    end
    object AdjTranQTYBOD: TFloatField
      FieldName = 'QTYBOD'
      DisplayFormat = '#,##0.00'
    end
    object AdjTranNETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '#,##0.00'
    end
    object AdjTranTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object AdjTranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object AdjTranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object AdjTranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object AdjTranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
  end
  object SoAdjTran: TDataSource
    DataSet = AdjTran
    Left = 403
    Top = 309
  end
  object Adjinv: TFDTable
    IndexFieldNames = 'ADJNO;ADJLOC'
    MasterSource = SoAdjTran
    MasterFields = 'ADJNO;ADJLOC'
    ConnectionName = 'Hi_dbms'
    UpdateOptions.UpdateTableName = 'ADJ_INVOI'
    TableName = 'ADJ_INVOI'
    Left = 430
    Top = 309
    object AdjinvADJNO: TStringField
      FieldName = 'ADJNO'
      Required = True
      Size = 12
    end
    object AdjinvADJLOC: TStringField
      FieldName = 'ADJLOC'
      Required = True
      Size = 5
    end
    object AdjinvADJDATE: TDateField
      FieldName = 'ADJDATE'
    end
    object AdjinvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object AdjinvTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object AdjinvTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object AdjinvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object AdjinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object AdjinvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object AdjinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object AdjinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
  end
  object PkTran: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM PK_TRANS')
    Left = 374
    Top = 337
    object PkTranPKNO: TStringField
      FieldName = 'PKNO'
      Size = 12
    end
    object PkTranPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
    end
    object PkTranUPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '#,##0.00'
    end
    object PkTranQTYORD: TFloatField
      FieldName = 'QTYORD'
      DisplayFormat = '#,##0.00'
    end
    object PkTranQTYOUT: TFloatField
      FieldName = 'QTYOUT'
      DisplayFormat = '#,##0.00'
    end
    object PkTranQTYBOD: TFloatField
      FieldName = 'QTYBOD'
      DisplayFormat = '#,##0.00'
    end
    object PkTranNETFL: TStringField
      FieldName = 'NETFL'
      Size = 1
    end
    object PkTranREDU1: TFloatField
      FieldName = 'REDU1'
      DisplayFormat = '#,##0.00'
    end
    object PkTranREDU2: TFloatField
      FieldName = 'REDU2'
      DisplayFormat = '#,##0.00'
    end
    object PkTranREDU3: TFloatField
      FieldName = 'REDU3'
      DisplayFormat = '#,##0.00'
    end
    object PkTranNETPRC: TFloatField
      FieldName = 'NETPRC'
      DisplayFormat = '#,##0.00'
    end
    object PkTranTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object PkTranACCTNO: TStringField
      FieldName = 'ACCTNO'
      Size = 12
    end
    object PkTranJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object PkTranSERIALNO: TStringField
      FieldName = 'SERIALNO'
    end
    object PkTranPKDATE: TDateField
      FieldName = 'PKDATE'
    end
    object PkTranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object PkTranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object PkTranPKLOCAT: TStringField
      FieldName = 'PKLOCAT'
      Size = 5
    end
    object PkTranSERVCOD: TStringField
      FieldName = 'SERVCOD'
      Size = 5
    end
    object PkTranFRT: TFloatField
      FieldName = 'FRT'
    end
    object PkTranRTNPK: TStringField
      FieldName = 'RTNPK'
      Size = 12
    end
    object PkTranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object PkTranSVCOLOR: TStringField
      FieldName = 'SVCOLOR'
      Size = 1
    end
    object PkTranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object PkTranCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object PkTranBACKFLG: TStringField
      FieldName = 'BACKFLG'
      Size = 1
    end
    object PkTranCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object PkTranPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object PkTranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
    object PkTranREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object PkTranREFDAT: TDateField
      FieldName = 'REFDAT'
    end
  end
  object SoPkTran: TDataSource
    DataSet = PkTran
    Left = 403
    Top = 337
  end
  object Pkinv: TFDTable
    IndexFieldNames = 'PKNO;PKLOCAT'
    MasterSource = SoPkTran
    MasterFields = 'PKNO;PKLOCAT'
    ConnectionName = 'Hi_dbms'
    UpdateOptions.UpdateTableName = 'PK_INVOI'
    TableName = 'PK_INVOI'
    Left = 429
    Top = 337
    object PkinvPKNO: TStringField
      FieldName = 'PKNO'
      Required = True
      Size = 12
    end
    object PkinvPKLOCAT: TStringField
      FieldName = 'PKLOCAT'
      Required = True
      Size = 5
    end
    object PkinvPKDATE: TDateField
      FieldName = 'PKDATE'
    end
    object PkinvSALLEV: TStringField
      FieldName = 'SALLEV'
      Size = 1
    end
    object PkinvVATTYPE: TStringField
      FieldName = 'VATTYPE'
      Size = 1
    end
    object PkinvCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Required = True
      Size = 12
    end
    object PkinvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object PkinvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
    end
    object PkinvDISCT: TFloatField
      FieldName = 'DISCT'
    end
    object PkinvDISCAMT: TFloatField
      FieldName = 'DISCAMT'
    end
    object PkinvNETAMT: TFloatField
      FieldName = 'NETAMT'
    end
    object PkinvBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object PkinvVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object PkinvVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object PkinvNETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
    end
    object PkinvREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object PkinvSVORD: TStringField
      FieldName = 'SVORD'
      Size = 12
    end
    object PkinvRTNPK: TStringField
      FieldName = 'RTNPK'
      Size = 12
    end
    object PkinvREFDAT: TDateField
      FieldName = 'REFDAT'
    end
    object PkinvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object PkinvSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object PkinvJOBNO: TStringField
      FieldName = 'JOBNO'
      Size = 15
    end
    object PkinvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object PkinvTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object PkinvSVCOLOR: TStringField
      FieldName = 'SVCOLOR'
      Size = 1
    end
    object PkinvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object PkinvTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object PkinvCANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object PkinvCANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object PkinvPOSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
  end
  object Mvtran: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM MV_TRANS')
    Left = 310
    Top = 65533
    object MvtranMOVNO: TStringField
      FieldName = 'MOVNO'
      Size = 12
    end
    object MvtranMOVFRM: TStringField
      FieldName = 'MOVFRM'
      Size = 5
    end
    object MvtranMOVTO: TStringField
      FieldName = 'MOVTO'
      Size = 5
    end
    object MvtranPARTNO: TStringField
      DisplayWidth = 20
      FieldName = 'PARTNO'
    end
    object MvtranUPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '#,##0.00'
    end
    object MvtranQTYMOV: TFloatField
      FieldName = 'QTYMOV'
      DisplayFormat = '#,##0.00'
    end
    object MvtranTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
    end
    object MvtranUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object MvtranTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object MvtranYEAR1: TStringField
      FieldName = 'YEAR1'
      Size = 4
    end
    object MvtranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
    end
  end
  object SoMvTran: TDataSource
    DataSet = Mvtran
    Left = 339
    Top = 65533
  end
  object MvInv: TFDTable
    IndexFieldNames = 'MOVFRM;MOVNO'
    MasterSource = SoMvTran
    MasterFields = 'MOVFRM;MOVNO'
    ConnectionName = 'Hi_dbms'
    UpdateOptions.UpdateTableName = 'MV_INVOI'
    TableName = 'MV_INVOI'
    Left = 364
    Top = 65533
    object MvInvMOVFRM: TStringField
      FieldName = 'MOVFRM'
      Required = True
      Size = 5
    end
    object MvInvMOVTO: TStringField
      FieldName = 'MOVTO'
      Required = True
      Size = 5
    end
    object MvInvMOVDT: TDateField
      FieldName = 'MOVDT'
    end
    object MvInvMOVNO: TStringField
      FieldName = 'MOVNO'
      Required = True
      Size = 12
    end
    object MvInvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object MvInvAPPROVCD: TStringField
      FieldName = 'APPROVCD'
      Size = 5
    end
    object MvInvRECVCOD: TStringField
      FieldName = 'RECVCOD'
      Size = 5
    end
    object MvInvRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object MvInvTOTPRC: TFloatField
      FieldName = 'TOTPRC'
    end
    object MvInvMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object MvInvFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object MvInvUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object MvInvTIME1: TDateTimeField
      FieldName = 'TIME1'
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
    Top = 48
  end
end
