object FSetcost: TFSetcost
  Left = 303
  Top = 111
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3585#3635#3627#3609#3604#3605#3657#3609#3607#3640#3609#3648#3619#3636#3656#3617#3605#3657#3609
  ClientHeight = 649
  ClientWidth = 723
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
  object Gauge1: TAdvProgressBar
    Left = 0
    Top = 611
    Width = 723
    Height = 18
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Level0ColorTo = 14811105
    Level1ColorTo = 14811105
    Level2Color = 12615680
    Level2ColorTo = 14811105
    Level3ColorTo = 14811105
    Level1Perc = 70
    Level2Perc = 90
    Position = 0
    ShowBorder = True
    Version = '1.3.1.0'
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 51
    Width = 723
    Height = 560
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
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 723
      Height = 125
      Align = alTop
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 721
    end
    object Label5: TLabel
      Left = 8
      Top = 84
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
    object Label7: TLabel
      Left = 18
      Top = 60
      Width = 43
      Height = 16
      Alignment = taRightJustify
      Caption = #3592#3634#3585#3619#3627#3633#3626
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 189
      Top = 59
      Width = 36
      Height = 16
      Alignment = taRightJustify
      Caption = #3606#3638#3591#3619#3627#3633#3626
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TcxGrid
      Left = 0
      Top = 125
      Width = 723
      Height = 435
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
      LookAndFeel.SkinName = 'LiquidSky'
      ExplicitLeft = 1
      ExplicitTop = 126
      ExplicitWidth = 721
      ExplicitHeight = 433
      object wwDBGridTrData: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Enabled = False
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Enabled = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Enabled = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Enabled = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Enabled = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = #3648#3614#3636#3656#3617
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Hint = #3648#3614#3636#3656#3617
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Hint = #3621#3610
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Enabled = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Enabled = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Enabled = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Enabled = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Enabled = False
        Navigator.Buttons.Filter.Visible = False
        DataController.DataSource = SoInvmast
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
            Format = '##,##0.00'
            Kind = skSum
          end
          item
            Format = '##,##0.00'
            Kind = skSum
          end
          item
            Format = #39#3619#3623#3617'  '#39',##,##0.00,'#39' '#3619#3634#3618#3585#3634#3619#39
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object wwDBGridTrDataColumn1: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'PARTNO'
          HeaderAlignmentHorz = taCenter
          Width = 160
        end
        object wwDBGridTrDataColumn2: TcxGridDBColumn
          Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'DESC1'
          HeaderAlignmentHorz = taCenter
          Width = 338
        end
        object wwDBGridTrDataColumn3: TcxGridDBColumn
          Caption = #3605#3657#3609#3607#3640#3609#3648#3619#3636#3656#3617#3605#3657#3609
          DataBinding.FieldName = 'COST'
          HeaderAlignmentHorz = taCenter
          Width = 133
        end
      end
      object DBGrid1Level1: TcxGridLevel
        GridView = wwDBGridTrData
      end
    end
    object RadioGroup1: TcxRadioGroup
      Left = 65
      Top = 7
      Caption = #3648#3621#3639#3629#3585#3619#3634#3618#3585#3634#3619
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634
        end
        item
          Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
        end>
      ItemIndex = 0
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      TabOrder = 1
      Transparent = True
      OnClick = RadioGroup1Click
      Height = 45
      Width = 281
    end
    object Edit2: TcxButtonEdit
      Left = 64
      Top = 57
      Enabled = False
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = Edit2PropertiesButtonClick
      Properties.OnChange = Edit2PropertiesChange
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
      Left = 227
      Top = 57
      Enabled = False
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = Edit3PropertiesButtonClick
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
    object Edit1: TcxButtonEdit
      Left = 64
      Top = 81
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = Edit1PropertiesButtonClick
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
    object ToolButton1: TAdvGlowButton
      Left = 228
      Top = 84
      Width = 118
      Height = 33
      Cursor = crHandPoint
      Hint = #3588#3657#3609#3627#3634#3586#3657#3629#3617#3641#3621
      Caption = 'Search data'
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
      TabOrder = 5
      OnClick = ToolButton1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 11918331
      Appearance.ColorCheckedTo = 7915518
      Appearance.ColorDisabled = clNone
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
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 723
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
      Left = -6
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
      object AdvToolBarSeparator2: TAdvToolBarSeparator
        Left = 138
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object AdvToolBarSeparator4: TAdvToolBarSeparator
        Left = 128
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
      object SaveBtn: TAdvGlowButton
        Left = 2
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
        TabOrder = 0
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
        Left = 60
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
        TabOrder = 1
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
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 629
    Width = 723
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Ready'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = #3585#3635#3627#3609#3604#3605#3657#3609#3607#3640#3609#3648#3619#3636#3656#3617#3605#3657#3609
        Width = 120
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'INVENTOR,INVANLS'
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
  object QInvmast: TFDQuery
    CachedUpdates = True
    Connection = DM_SEC.HI_DBMS
    SQL.Strings = (
      'SELECT * FROM INVMAST')
    Left = 404
    Top = 12
  end
  object SoInvmast: TDataSource
    DataSet = QInvmast
    Left = 440
    Top = 12
  end
  object Query1: TFDQuery
    Connection = DM_SEC.HI_DBMS
    Left = 372
    Top = 12
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
    Left = 24
    Top = 80
  end
end
