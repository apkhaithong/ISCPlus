object FmEditbrw: TFmEditbrw
  Left = 331
  Top = 119
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3649#3585#3657#3652#3586' '#3626#3606#3634#3609#3607#3637#3648#3585#3655#3610' '#3626#3636#3609#3588#3657#3634
  ClientHeight = 665
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 51
    Width = 840
    Height = 70
    Align = alTop
  end
  object Label5: TLabel
    Left = 20
    Top = 69
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
    Transparent = True
  end
  object Label1: TLabel
    Left = 18
    Top = 93
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
    Transparent = True
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 840
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
      object AdvToolBarSeparator6: TAdvToolBarSeparator
        Left = 128
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator7: TAdvToolBarSeparator
        Left = 118
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object SaveBtn: TAdvGlowButton
        Left = 60
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
      object BtnClose: TAdvGlowButton
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
        TabOrder = 1
        OnClick = BtnCloseClick
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
        TabOrder = 2
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
    end
  end
  object Edit1: TcxButtonEdit
    Left = 72
    Top = 65
    ParentFont = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 112
    Properties.OnButtonClick = Edit1PropertiesButtonClick
    Properties.OnChange = Edit1PropertiesChange
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
  object Edit3: TcxTextEdit
    Left = 193
    Top = 65
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
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
    StyleFocused.Color = clWhite
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'LiquidSky'
    TabOrder = 2
    Width = 201
  end
  object Edit2: TcxButtonEdit
    Left = 72
    Top = 89
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
    TabOrder = 3
    Width = 121
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 121
    Width = 840
    Height = 544
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'LiquidSky'
    ClientRectBottom = 540
    ClientRectLeft = 4
    ClientRectRight = 836
    ClientRectTop = 30
    object cxTabSheet1: TcxTabSheet
      Caption = #3619#3634#3618#3585#3634#3619#3626#3636#3609#3588#3657#3634#3627#3621#3633#3585
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 832
        Height = 510
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
        object cxGridTran: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Hint = #3649#3607#3619#3585#3649#3606#3623
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Hint = #3648#3614#3636#3656#3617#3649#3606#3623
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Delete.Hint = #3621#3610#3649#3606#3623
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = DataSource1
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
              Format = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609' ##,##0 '#3619#3634#3618#3585#3634#3619
              Kind = skCount
              Position = spFooter
            end
            item
              Format = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609' ##,##0 '#3619#3634#3618#3585#3634#3619
              Kind = skCount
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
              Format = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609' ##,##0 '#3619#3634#3618#3585#3634#3619
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 20
          Styles.ContentOdd = SFMain.cxStyle5
          object cxGridTranLOCAT: TcxGridDBColumn
            DataBinding.FieldName = 'LOCAT'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 58
          end
          object cxGridTranPARTNO: TcxGridDBColumn
            DataBinding.FieldName = 'PARTNO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGridTranDESC1: TcxGridDBColumn
            DataBinding.FieldName = 'DESC1'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGridTranGROUP1: TcxGridDBColumn
            DataBinding.FieldName = 'GROUP1'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 78
          end
          object cxGridTranSHELF: TcxGridDBColumn
            DataBinding.FieldName = 'SHELF'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridTranSHELFPropertiesButtonClick
            HeaderAlignmentHorz = taCenter
          end
          object cxGridTranPRICE1: TcxGridDBColumn
            Caption = #3619#3634#3588#3634#3586#3634#3618
            DataBinding.FieldName = 'PRICE1'
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
        end
        object cxGridLevelI: TcxGridLevel
          GridView = cxGridTran
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #3619#3634#3618#3585#3634#3619#3626#3636#3609#3588#3657#3634#3605#3634#3617#3588#3621#3633#3591
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 832
        Height = 510
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
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Hint = #3649#3607#3619#3585#3649#3606#3623
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Hint = #3648#3614#3636#3656#3617#3649#3606#3623
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Delete.Hint = #3621#3610#3649#3606#3623
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = DataSource2
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
              Format = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609' ##,##0 '#3619#3634#3618#3585#3634#3619
              Kind = skCount
              Position = spFooter
            end
            item
              Format = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609' ##,##0 '#3619#3634#3618#3585#3634#3619
              Kind = skCount
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
              Format = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609' ##,##0 '#3619#3634#3618#3585#3634#3619
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 20
          Styles.ContentOdd = SFMain.cxStyle5
          object cxGridDBTableView1PARTNO: TcxGridDBColumn
            Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
            DataBinding.FieldName = 'PARTNO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView1WAREHOUSECOD: TcxGridDBColumn
            Caption = #3588#3621#3633#3591#3648#3585#3655#3610
            DataBinding.FieldName = 'WAREHOUSECOD'
            HeaderAlignmentHorz = taCenter
            Width = 123
          end
          object cxGridDBTableView1ONHN_1: TcxGridDBColumn
            Caption = #3618#3629#3604#3588#3591#3648#3627#3621#3639#3629
            DataBinding.FieldName = 'ONHN_1'
            HeaderAlignmentHorz = taCenter
            Width = 98
          end
          object cxGridDBTableView1RESERV: TcxGridDBColumn
            DataBinding.FieldName = 'RESERV'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object QHlpbinv: TFDQuery
    CachedUpdates = True
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      
        'SELECT  PARTNO,LOCAT,DESC1,GROUP1,SHELF,PRICE1,COST FROM INVENTO' +
        'R')
    Left = 483
    Top = 56
    object QHlpbinvPARTNO: TStringField
      DisplayLabel = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object QHlpbinvLOCAT: TStringField
      DisplayLabel = #3619#3627#3633#3626#3626#3634#3586#3634
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QHlpbinvDESC1: TStringField
      DisplayLabel = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3626#3636#3609#3588#3657#3634
      FieldName = 'DESC1'
      FixedChar = True
      Size = 45
    end
    object QHlpbinvGROUP1: TStringField
      DisplayLabel = #3585#3621#3640#3656#3617
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 5
    end
    object QHlpbinvSHELF: TStringField
      DisplayLabel = #3594#3633#3657#3609#3648#3585#3655#3610
      FieldName = 'SHELF'
      FixedChar = True
      Size = 15
    end
    object QHlpbinvPRICE1: TFloatField
      FieldName = 'PRICE1'
      DisplayFormat = '##,##0.00'
    end
    object QHlpbinvCOST: TFloatField
      FieldName = 'COST'
    end
  end
  object DataSource1: TDataSource
    DataSet = QHlpbinv
    OnStateChange = DataSource1StateChange
    Left = 515
    Top = 56
  end
  object Query1: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 547
    Top = 56
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
    Left = 584
    Top = 56
  end
  object Q_Warehouse: TFDQuery
    CachedUpdates = True
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT * FROM ANLSWAREHOUSE')
    Left = 483
    Top = 84
    object Q_WarehousePARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object Q_WarehouseWAREHOUSECOD: TStringField
      FieldName = 'WAREHOUSECOD'
      Size = 12
    end
    object Q_WarehouseONHN_1: TFloatField
      FieldName = 'ONHN_1'
    end
    object Q_WarehouseRESERV: TFloatField
      FieldName = 'RESERV'
    end
  end
  object DataSource2: TDataSource
    DataSet = Q_Warehouse
    OnStateChange = DataSource2StateChange
    Left = 515
    Top = 84
  end
end
