object frGrpCKList: TfrGrpCKList
  Left = 409
  Top = 282
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #3585#3635#3627#3609#3604#3585#3621#3640#3656#3617#3591#3634#3609#3605#3619#3623#3592#3648#3594#3655#3588#3605#3634#3617#3619#3632#3618#3632
  ClientHeight = 156
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 29
    Top = 26
    Width = 40
    Height = 13
    Caption = #3619#3627#3633#3626#3585#3621#3640#3656#3617
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 26
    Top = 48
    Width = 43
    Height = 13
    Caption = #3588#3635#3629#3608#3610#3634#3618
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit3: TcxDBTextEdit
    Left = 72
    Top = 23
    DataBinding.DataField = 'GCODE'
    DataBinding.DataSource = DataSource1
    StyleFocused.Color = 14540287
    StyleFocused.TextColor = clBlack
    TabOrder = 0
    Width = 121
  end
  object DBEdit4: TcxDBTextEdit
    Left = 72
    Top = 43
    DataBinding.DataField = 'DESCP'
    DataBinding.DataSource = DataSource1
    StyleFocused.Color = 14540287
    TabOrder = 1
    Width = 263
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 102
    Width = 444
    Height = 54
    Align = alBottom
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
    FullHeight = 54
    object AdvToolBar2: TAdvToolBar
      Left = 2
      Top = -1
      Width = 442
      Height = 55
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
        Left = 362
        Top = 2
        Width = 10
        Height = 51
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object AdvToolBarSeparator3: TAdvToolBarSeparator
        Left = 342
        Top = 2
        Width = 10
        Height = 51
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator6: TAdvToolBarSeparator
        Left = 352
        Top = 2
        Width = 10
        Height = 51
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator8: TAdvToolBarSeparator
        Left = 332
        Top = 2
        Width = 10
        Height = 51
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object EnqBtn: TAdvGlowButton
        Left = 134
        Top = 2
        Width = 66
        Height = 51
        Cursor = crHandPoint
        Hint = #3588#3657#3609#3627#3634#3586#3657#3629#3617#3641#3621
        Caption = 'Search'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 2
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
        Left = 200
        Top = 2
        Width = 66
        Height = 51
        Cursor = crHandPoint
        Hint = #3610#3633#3609#3607#3638#3585#3586#3657#3629#3617#3641#3621
        Caption = 'Save'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 3
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
        Left = 266
        Top = 2
        Width = 66
        Height = 51
        Cursor = crHandPoint
        Hint = #3618#3585#3648#3621#3636#3585#3585#3634#3619#3607#3635#3619#3634#3618#3585#3634#3619
        Caption = 'Cancel'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 4
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
        Left = 372
        Top = 2
        Width = 66
        Height = 51
        Cursor = crHandPoint
        Hint = #3611#3636#3604#3627#3609#3657#3634#3592#3629#3649#3621#3632#3585#3621#3633#3610#3627#3609#3657#3634#3627#3621#3633#3585
        Caption = 'Back'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 5
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
        Width = 66
        Height = 51
        Cursor = crHandPoint
        Hint = #3648#3614#3636#3656#3617#3586#3657#3629#3617#3641#3621
        Caption = 'Insert'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 0
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
        Left = 68
        Top = 2
        Width = 66
        Height = 51
        Cursor = crHandPoint
        Hint = #3621#3610'/'#3618#3585#3648#3621#3636#3585#3586#3657#3629#3617#3641#3621
        Caption = 'Delete'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 1
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
  object DataSource1: TDataSource
    DataSet = qGrpCKList
    OnStateChange = DataSource1StateChange
    Left = 308
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
    Left = 276
    Top = 8
  end
  object qGrpCKList: TFDQuery
    BeforePost = qGrpCKListBeforePost
    AfterPost = qGrpCKListAfterPost
    AfterDelete = qGrpCKListAfterPost
    OnNewRecord = qGrpCKListNewRecord
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM GRPCKLIST')
    Left = 338
    Top = 4
    object qGrpCKListGCODE: TStringField
      FieldName = 'GCODE'
      FixedChar = True
      Size = 12
    end
    object qGrpCKListDESCP: TStringField
      FieldName = 'DESCP'
      FixedChar = True
      Size = 70
    end
    object qGrpCKListUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object qGrpCKListINPDATE: TDateTimeField
      FieldName = 'INPDATE'
    end
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 367
    Top = 5
  end
end
