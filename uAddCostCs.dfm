object frAddOptCs: TfrAddOptCs
  Left = 327
  Top = 73
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3610#3633#3609#3607#3638#3585#3586#3629#3591#3649#3606#3617#3648#3614#3636#3656#3617#3586#3634#3618#3626#3604
  ClientHeight = 637
  ClientWidth = 774
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
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 51
    Width = 774
    Height = 586
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
    object cxGrid1: TcxGrid
      Left = 1
      Top = 75
      Width = 772
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
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = SoHirOpt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1UPRICE
          end
          item
            Format = '##,##0'
            Kind = skSum
            Column = cxGrid1DBTableView1QTY
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1NPRICE
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1TOTVAT
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1TOTPRC
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
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1OPTCODE: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3629#3640#3611#3585#3619#3603#3660
          DataBinding.FieldName = 'OPTCODE'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxGrid1DBTableView1OPTCODEPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 107
        end
        object cxGrid1DBTableView1OPTNAME: TcxGridDBColumn
          Caption = #3594#3639#3656#3629#3629#3640#3611#3585#3619#3603#3660
          DataBinding.FieldName = 'OPTNAME'
          HeaderAlignmentHorz = taCenter
          Width = 171
        end
        object cxGrid1DBTableView1UPRICE: TcxGridDBColumn
          Caption = #3619#3634#3588#3634#3586#3634#3618'/'#3627#3609#3656#3623#3618
          DataBinding.FieldName = 'UPRICE'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object cxGrid1DBTableView1QTY: TcxGridDBColumn
          Caption = #3592#3635#3609#3623#3609
          DataBinding.FieldName = 'QTY'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1NPRICE: TcxGridDBColumn
          Caption = #3617#3641#3621#3588#3656#3634#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'NPRICE'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1TOTVAT: TcxGridDBColumn
          Caption = #3616#3634#3625#3637
          DataBinding.FieldName = 'TOTVAT'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1TOTPRC: TcxGridDBColumn
          Caption = #3619#3623#3617#3619#3634#3588#3634#3586#3634#3618
          DataBinding.FieldName = 'TOTPRC'
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 772
      Height = 74
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 32
        Top = 12
        Width = 42
        Height = 16
        Alignment = taRightJustify
        Caption = #3619#3627#3633#3626#3634#3586#3634
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 9
        Top = 33
        Width = 65
        Height = 16
        Alignment = taRightJustify
        Caption = #3648#3621#3586#3607#3637#3656#3626#3633#3597#3597#3634
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TcxDBTextEdit
        Left = 83
        Top = 10
        HelpType = htKeyword
        AutoSize = False
        DataBinding.DataField = 'LOCAT'
        DataBinding.DataSource = SoHirsal
        ParentFont = False
        Style.Color = clBtnFace
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
        Height = 22
        Width = 138
      end
      object DBEdit2: TcxDBTextEdit
        Left = 83
        Top = 31
        HelpType = htKeyword
        AutoSize = False
        DataBinding.DataField = 'CONTNO'
        DataBinding.DataSource = SoHirsal
        ParentFont = False
        Style.Color = clBtnFace
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
        Height = 22
        Width = 138
      end
      object Edit1: TcxTextEdit
        Left = 220
        Top = 31
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = 12615680
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LiquidSky'
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'LiquidSky'
        TabOrder = 2
        Height = 22
        Width = 303
      end
      object Edit2: TcxTextEdit
        Left = 220
        Top = 10
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = 12615680
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LiquidSky'
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'LiquidSky'
        TabOrder = 3
        Height = 22
        Width = 303
      end
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 774
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
    FullHeight = 51
    object AdvToolBar1: TAdvToolBar
      Left = 0
      Top = 0
      Width = 278
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
        Left = 186
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object AdvToolBarSeparator4: TAdvToolBarSeparator
        Left = 206
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator5: TAdvToolBarSeparator
        Left = 176
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object AdvToolBarSeparator3: TAdvToolBarSeparator
        Left = 196
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object EnqBtn: TAdvGlowButton
        Left = 2
        Top = 2
        Width = 58
        Height = 47
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
        OnClick = EnqBtnClick
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
        Left = 60
        Top = 2
        Width = 58
        Height = 47
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
        OnClick = SavBtnClick
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
        Left = 118
        Top = 2
        Width = 58
        Height = 47
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
        Left = 216
        Top = 2
        Width = 58
        Height = 47
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
    end
  end
  object SoHirsal: TDataSource
    DataSet = QCshSale
    OnStateChange = SoHirsalStateChange
    Left = 452
    Top = 29
  end
  object QHirOpt: TFDQuery
    AfterPost = QHirOptAfterPost
    AfterDelete = QHirOptAfterDelete
    OnNewRecord = QHirOptNewRecord
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from ARINOPT where TSALE = '#39'C'#39)
    Left = 418
    Top = 57
    object QHirOptTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QHirOptCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QHirOptLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QHirOptOPTCODE: TStringField
      FieldName = 'OPTCODE'
      OnChange = QHirOptOPTCODEChange
      Size = 18
    end
    object QHirOptUPRICE: TFloatField
      FieldName = 'UPRICE'
      DisplayFormat = '#,###,##0.00'
    end
    object QHirOptUCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '#,###,##0.00'
    end
    object QHirOptQTY: TFloatField
      FieldName = 'QTY'
    end
    object QHirOptTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,###,##0.00'
    end
    object QHirOptTOTVAT: TFloatField
      FieldName = 'TOTVAT'
      DisplayFormat = '#,###,##0.00'
    end
    object QHirOptNPRICE: TFloatField
      FieldName = 'NPRICE'
      DisplayFormat = '#,###,##0.00'
    end
    object QHirOptOPTCST: TFloatField
      FieldName = 'OPTCST'
      DisplayFormat = '#,###,##0.00'
    end
    object QHirOptOPTCVT: TFloatField
      FieldName = 'OPTCVT'
      DisplayFormat = '#,###,##0.00'
    end
    object QHirOptOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
      DisplayFormat = '#,###,##0.00'
    end
    object QHirOptCONFIR: TStringField
      FieldName = 'CONFIR'
      Size = 1
    end
    object QHirOptUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QHirOptINPDT: TDateField
      FieldName = 'INPDT'
    end
    object QHirOptPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QHirOptSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QHirOptRTNFLAG: TStringField
      FieldName = 'RTNFLAG'
      FixedChar = True
      Size = 1
    end
    object QHirOptOPTNAME: TStringField
      FieldName = 'OPTNAME'
      FixedChar = True
      Size = 60
    end
  end
  object SoHirOpt: TDataSource
    DataSet = QHirOpt
    Left = 450
    Top = 57
  end
  object DBkbd1: TDBkbd
    IgNoreUpDown = False
    UseArrowKey = True
    Disable = False
    DataSource = SoHirsal
    StatusColor = clBlack
    DeleteMessage = #3649#3609#3656#3651#3592#3627#3619#3639#3629#3652#3617#3656#3607#3637#3656#3592#3632#3621#3610' Record '#3609#3637#3657
    DelTop = 84
    DelLeft = 114
    AllowSpaceBar = False
    AllowEditing = True
    AllowInsert = True
    AllowDelete = True
    KeyToEdit = 115
    KeyToInsert = 0
    KeyToSave = 0
    Left = 446
    Top = 4
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 490
    Top = 16
  end
  object QCshSale: TFDQuery
    BeforePost = QCshSaleBeforePost
    AfterPost = QCshSaleAfterPost
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM ARCRED')
    Left = 420
    Top = 31
    object QCshSaleCONTNO: TStringField
      FieldName = 'CONTNO'
      Size = 12
    end
    object QCshSaleLOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object QCshSaleRESVNO: TStringField
      FieldName = 'RESVNO'
      Size = 12
    end
    object QCshSaleCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QCshSaleSTRNO: TStringField
      FieldName = 'STRNO'
    end
    object QCshSaleINCLVAT: TStringField
      FieldName = 'INCLVAT'
      Size = 1
    end
    object QCshSaleSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QCshSaleVATRT: TFloatField
      FieldName = 'VATRT'
      DisplayFormat = '#0.0'
    end
    object QCshSaleSTDPRC: TFloatField
      FieldName = 'STDPRC'
      DisplayFormat = '#,##0.00'
    end
    object QCshSaleDSCPRC: TFloatField
      FieldName = 'DSCPRC'
      DisplayFormat = '#,##0.00'
    end
    object QCshSaleNPRICE: TFloatField
      FieldName = 'NPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleVATPRC: TFloatField
      FieldName = 'VATPRC'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleNPAYRES: TFloatField
      FieldName = 'NPAYRES'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleVATPRES: TFloatField
      FieldName = 'VATPRES'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleSMPAY: TFloatField
      FieldName = 'SMPAY'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleSMCHQ: TFloatField
      FieldName = 'SMCHQ'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleNCARCST: TFloatField
      FieldName = 'NCARCST'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleVCARCST: TFloatField
      FieldName = 'VCARCST'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleTAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QCshSaleTAXDT: TDateField
      FieldName = 'TAXDT'
    end
    object QCshSaleOPTCST: TFloatField
      FieldName = 'OPTCST'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleOPTCVT: TFloatField
      FieldName = 'OPTCVT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleOPTCTOT: TFloatField
      FieldName = 'OPTCTOT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleOPTPRC: TFloatField
      FieldName = 'OPTPRC'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleOPTPVT: TFloatField
      FieldName = 'OPTPVT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleOPTPTOT: TFloatField
      FieldName = 'OPTPTOT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleCREDTM: TFloatField
      FieldName = 'CREDTM'
      DisplayFormat = '##0'
    end
    object QCshSaleDUEDT: TDateField
      FieldName = 'DUEDT'
    end
    object QCshSaleSALCOD: TStringField
      FieldName = 'SALCOD'
      Size = 8
    end
    object QCshSaleCOMITN: TFloatField
      FieldName = 'COMITN'
      DisplayFormat = '#,##0.00'
    end
    object QCshSaleISSUNO: TStringField
      FieldName = 'ISSUNO'
      Size = 12
    end
    object QCshSaleISSUDT: TDateField
      FieldName = 'ISSUDT'
    end
    object QCshSaleLPAYDT: TDateField
      FieldName = 'LPAYDT'
    end
    object QCshSaleTSALE: TStringField
      FieldName = 'TSALE'
      Size = 1
    end
    object QCshSaleMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QCshSaleUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QCshSaleINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QCshSaleDELID: TStringField
      FieldName = 'DELID'
      Size = 8
    end
    object QCshSaleDELDT: TDateTimeField
      FieldName = 'DELDT'
    end
    object QCshSalePOSTDT: TDateTimeField
      FieldName = 'POSTDT'
    end
    object QCshSaleUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCshSaleTOTPRES: TFloatField
      FieldName = 'TOTPRES'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleTCARCST: TFloatField
      FieldName = 'TCARCST'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleNKANG: TFloatField
      FieldName = 'NKANG'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleVKANG: TFloatField
      FieldName = 'VKANG'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleTKANG: TFloatField
      FieldName = 'TKANG'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleNKEYIN: TFloatField
      FieldName = 'NKEYIN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleVKEYIN: TFloatField
      FieldName = 'VKEYIN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleTKEYIN: TFloatField
      FieldName = 'TKEYIN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      Size = 12
    end
    object QCshSaleCRDAMT: TFloatField
      FieldName = 'CRDAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleKEYIN: TFloatField
      FieldName = 'KEYIN'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleFLCANCL: TStringField
      FieldName = 'FLCANCL'
      Size = 1
    end
    object QCshSaleAPPVNO: TStringField
      FieldName = 'APPVNO'
      Size = 12
    end
    object QCshSalePAYTYP: TStringField
      FieldName = 'PAYTYP'
      Size = 2
    end
    object QCshSaleADDRNO: TStringField
      FieldName = 'ADDRNO'
      Size = 1
    end
    object QCshSaleCOMEXT: TFloatField
      FieldName = 'COMEXT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleCOMOPT: TFloatField
      FieldName = 'COMOPT'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleCOMOTH: TFloatField
      FieldName = 'COMOTH'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object QCshSaleRECOMCOD: TStringField
      FieldName = 'RECOMCOD'
      Size = 12
    end
    object QCshSaleACTICOD: TStringField
      FieldName = 'ACTICOD'
      Size = 5
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
    Left = 40
    Top = 120
  end
end
