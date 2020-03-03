object FImpPr: TFImpPr
  Left = 442
  Top = 66
  BorderIcons = []
  Caption = #3610#3633#3609#3607#3638#3585#3592#3635#3609#3623#3609#3619#3633#3610#3605#3634#3617#3619#3634#3618#3585#3634#3619#3651#3610#3586#3629#3626#3633#3656#3591#3595#3639#3657#3629
  ClientHeight = 464
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 464
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
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 511
      Height = 64
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object Label26: TLabel
        Left = 9
        Top = 20
        Width = 46
        Height = 16
        Alignment = taRightJustify
        Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object CheckBox1: TcxCheckBox
        Left = 58
        Top = 40
        Caption = #3648#3621#3639#3629#3585#3607#3633#3657#3591#3627#3617#3604
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
        OnClick = CheckBox1Click
      end
      object DBEdit1: TcxDBTextEdit
        Tag = 2
        Left = 59
        Top = 17
        DataBinding.DataField = 'DESC1'
        DataBinding.DataSource = DataSource2
        ParentFont = False
        Properties.ReadOnly = False
        Style.Color = clWhite
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LiquidSky'
        Style.TextColor = clBlack
        Style.TextStyle = []
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
        StyleFocused.Color = 14540287
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'LiquidSky'
        TabOrder = 1
        Width = 232
      end
      object BitBtn1: TcxButton
        Left = 291
        Top = 15
        Width = 58
        Height = 25
        Caption = #3605#3585#3621#3591
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'McSkin'
        ModalResult = 1
        TabOrder = 2
      end
      object BitBtn2: TcxButton
        Left = 350
        Top = 15
        Width = 58
        Height = 25
        Caption = #3618#3585#3648#3621#3636#3585
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'McSkin'
        ModalResult = 2
        TabOrder = 3
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 65
      Width = 511
      Height = 379
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LiquidSky'
      object cxDBGridTran: TcxGridDBTableView
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
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '##,##0.00'
            Kind = skSum
            Position = spFooter
            Column = cxDBGridTranORDQTY
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Position = spFooter
            Column = cxDBGridTranRECQTY
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Position = spFooter
            Column = cxDBGridTranBALANCE
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranORDQTY
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranRECQTY
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranBALANCE
          end
          item
            Format = '##,##0.00'
            Kind = skCount
            Position = spFooter
            Column = cxDBGridTranPARTNO
          end
          item
            Format = '##,##0.00'
            Kind = skCount
            Column = cxDBGridTranPARTNO
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranORDQTY
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranRECQTY
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranBALANCE
          end
          item
            Format = #39#3619#3623#3617#3619#3634#3618#3585#3634#3619'    '#39',##,##0.00,'#39'    '#3619#3634#3618#3585#3634#3619#39
            Kind = skCount
            Column = cxDBGridTranPARTNO
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
        object cxDBGridTranPARTNO: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'PARTNO'
          HeaderAlignmentHorz = taCenter
          Width = 162
        end
        object cxDBGridTranORDQTY: TcxGridDBColumn
          Caption = #3592#3635#3609#3623#3609#3626#3633#3656#3591
          DataBinding.FieldName = 'ORDQTY'
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object cxDBGridTranRECQTY: TcxGridDBColumn
          Caption = #3619#3633#3610#3649#3621#3657#3623
          DataBinding.FieldName = 'RECQTY'
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
        object cxDBGridTranBALANCE: TcxGridDBColumn
          Caption = #3588#3657#3634#3591#3619#3633#3610
          DataBinding.FieldName = 'BALANCE'
          HeaderAlignmentHorz = taCenter
        end
        object cxDBGridTranFLAG: TcxGridDBColumn
          Caption = #3648#3621#3639#3629#3585
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 36
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxDBGridTran
      end
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 444
      Width = 511
      Height = 19
      Panels = <>
    end
  end
  object QPotran: TFDQuery
    AfterOpen = QPotranAfterOpen
    AfterClose = QPotranAfterClose
    BeforePost = QPotranBeforePost
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM PR_TRANS')
    Left = 27
    Top = 136
    object QPotranPRNO: TStringField
      FieldName = 'PRNO'
      Size = 12
    end
    object QPotranPARTNO: TStringField
      FieldName = 'PARTNO'
    end
    object QPotranPRLOCAT: TStringField
      FieldName = 'PRLOCAT'
      Size = 5
    end
    object QPotranPRDATE: TDateField
      FieldName = 'PRDATE'
    end
    object QPotranAPCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object QPotranORDQTY: TFloatField
      FieldName = 'ORDQTY'
    end
    object QPotranRECQTY: TFloatField
      FieldName = 'RECQTY'
    end
    object QPotranORDCOST: TFloatField
      FieldName = 'ORDCOST'
    end
    object QPotranREDU: TFloatField
      FieldName = 'REDU'
    end
    object QPotranNETCOST: TFloatField
      FieldName = 'NETCOST'
    end
    object QPotranTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object QPotranBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object QPotranFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QPotranPRBYNAME: TStringField
      FieldName = 'PRBYNAME'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = QPotran
    Left = 65535
    Top = 136
  end
  object Table1: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'PARTNO'
    MasterSource = DataSource1
    MasterFields = 'PARTNO'
    ConnectionName = 'HI_DBMS'
    UpdateOptions.UpdateTableName = 'INVMAST'
    TableName = 'INVMAST'
    Left = 87
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = Table1
    Left = 59
    Top = 136
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
    BorderIcons = [biSystemMenu]
    Left = 216
    Top = 64
  end
end
