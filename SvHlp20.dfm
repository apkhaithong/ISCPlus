object SvInHlp_20: TSvInHlp_20
  Left = 386
  Top = 121
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3619#3634#3618#3585#3634#3619#3605#3619#3623#3592#3648#3594#3655#3588#3617#3634#3605#3619#3600#3634#3609
  ClientHeight = 525
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
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
    Width = 760
    Height = 525
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
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 758
      Height = 59
      Align = alTop
    end
    object Label2: TLabel
      Left = 21
      Top = 12
      Width = 66
      Height = 16
      Alignment = taRightJustify
      Caption = #3619#3627#3633#3626#3585#3621#3640#3656#3617#3591#3634#3609
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 31
      Top = 35
      Width = 56
      Height = 16
      Alignment = taRightJustify
      Caption = #3619#3627#3633#3626#3619#3640#3656#3609' SV'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TcxButton
      Left = 219
      Top = 9
      Width = 56
      Height = 22
      Cursor = crHandPoint
      Caption = #3605#3585#3621#3591
      LookAndFeel.NativeStyle = True
      ModalResult = 1
      TabOrder = 0
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn2: TcxButton
      Left = 276
      Top = 9
      Width = 56
      Height = 22
      Cursor = crHandPoint
      Caption = #3618#3585#3648#3621#3636#3585
      LookAndFeel.NativeStyle = True
      ModalResult = 2
      TabOrder = 1
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TcxTextEdit
      Left = 96
      Top = 8
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
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 2
      Width = 121
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 505
      Width = 758
      Height = 19
      Panels = <>
    end
    object cxTextEdit1: TcxTextEdit
      Left = 96
      Top = 31
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
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 4
      Width = 121
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 60
      Width = 758
      Height = 445
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      LevelTabs.CaptionAlignment = taLeftJustify
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LiquidSky'
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cxGridDBTableView3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = #3649#3607#3619#3585#3649#3606#3623
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
        DataController.DataSource = SoHlpOrd
        DataController.Summary.DefaultGroupSummaryItems = <>
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
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGridDBTableView3PRC_EST
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
        object cxGridDBTableView3SVCODE: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3610#3619#3636#3585#3634#3619
          DataBinding.FieldName = 'SVCODE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 118
        end
        object cxGridDBTableView3DESCRP: TcxGridDBColumn
          Caption = #3588#3635#3626#3633#3656#3591#3595#3656#3629#3617#3607#3635
          DataBinding.FieldName = 'DESCRP'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 346
        end
        object cxGridDBTableView3PRC_EST: TcxGridDBColumn
          Caption = #3619#3634#3588#3634#3611#3619#3632#3648#3617#3636#3609
          DataBinding.FieldName = 'PRC_EST'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 116
        end
        object cxGridDBTableView3MARK: TcxGridDBColumn
          Caption = #3648#3621#3639#3629#3585
          DataBinding.FieldName = 'MARK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 47
        end
      end
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = #3649#3607#3619#3585#3649#3606#3623
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
        DataController.DataSource = SoHlpserv
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,##0.00'
            Kind = skSum
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1PRC_EST
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
        object cxGrid1DBTableView1SVCODE: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3610#3619#3636#3585#3634#3619
          DataBinding.FieldName = 'SVCODE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1DESC1: TcxGridDBColumn
          Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604'/'#3588#3635#3629#3608#3636#3610#3634#3618#3619#3634#3618#3585#3634#3619
          DataBinding.FieldName = 'DESC1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 245
        end
        object cxGrid1DBTableView1HOUR: TcxGridDBColumn
          Caption = #3594#3633#3656#3623#3650#3617#3591
          DataBinding.FieldName = 'HOUR'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1MINUTE: TcxGridDBColumn
          Caption = #3609#3634#3607#3637
          DataBinding.FieldName = 'MINUTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1FRT: TcxGridDBColumn
          DataBinding.FieldName = 'FRT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1PRC_EST: TcxGridDBColumn
          Caption = #3619#3634#3588#3634#3619#3623#3617
          DataBinding.FieldName = 'PRC_EST'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 73
        end
        object cxGrid1DBTableView1MARK: TcxGridDBColumn
          Caption = #3648#3621#3639#3629#3585
          DataBinding.FieldName = 'MARK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 44
        end
      end
      object cxGrid3DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = #3649#3607#3619#3585#3649#3606#3623
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
        DataController.DataSource = SoHlppart
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,##0.00'
            Kind = skSum
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid3DBTableView2PRC_QTY
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid3DBTableView2PRC_EST
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
        object cxGrid3DBTableView2PARTNO: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3629#3632#3652#3627#3621#3656
          DataBinding.FieldName = 'PARTNO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 112
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 114
        end
        object cxGrid3DBTableView2DESC1: TcxGridDBColumn
          Caption = #3588#3635#3629#3608#3636#3610#3634#3618'/'#3594#3639#3656#3629#3629#3632#3652#3627#3621#3656
          DataBinding.FieldName = 'DESC1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid3DBTableView2PRC_QTY: TcxGridDBColumn
          Caption = #3619#3634#3588#3634'@'
          DataBinding.FieldName = 'PRC_QTY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGrid3DBTableView2QTY: TcxGridDBColumn
          Caption = #3592#3635#3609#3623#3609
          DataBinding.FieldName = 'QTY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 55
        end
        object cxGrid3DBTableView2PRC_EST: TcxGridDBColumn
          Caption = #3619#3634#3588#3634#3619#3623#3617
          DataBinding.FieldName = 'PRC_EST'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGrid3DBTableView2MARK: TcxGridDBColumn
          Caption = #3648#3621#3639#3629#3585
          DataBinding.FieldName = 'MARK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 45
        end
      end
      object cxGrid1Level1: TcxGridLevel
        Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619#3605#3634#3617#3619#3632#3618#3632
        GridView = cxGrid1DBTableView1
      end
      object cxGridLevel1: TcxGridLevel
        Caption = #3585#3621#3640#3656#3617#3591#3634#3609#3605#3634#3617#3619#3632#3618#3632
        GridView = cxGridDBTableView3
      end
      object cxGrid1Level2: TcxGridLevel
        Caption = #3588#3656#3634#3629#3632#3652#3627#3621#3656#3605#3634#3617#3619#3632#3618#3632
        GridView = cxGrid3DBTableView2
      end
    end
    object CheckBox1: TcxCheckBox
      Left = 629
      Top = 30
      Caption = #3648#3621#3639#3629#3585#3607#3633#3657#3591#3627#3617#3604
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
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
      OnClick = CheckBox1Click
    end
  end
  object QHlppart: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM GRPPART')
    Left = 157
    Top = 269
    object QHlppartGCODE: TStringField
      FieldName = 'GCODE'
      FixedChar = True
      Size = 10
    end
    object QHlppartMDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object QHlppartPARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object QHlppartDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 45
    end
    object QHlppartQTY: TFloatField
      FieldName = 'QTY'
    end
    object QHlppartMARK: TStringField
      FieldName = 'MARK'
      FixedChar = True
      Size = 1
    end
    object QHlppartUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QHlppartTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QHlppartPRC_EST: TFloatField
      FieldName = 'PRC_EST'
      DisplayFormat = '##,##0.00'
    end
    object QHlppartPRC_QTY: TFloatField
      FieldName = 'PRC_QTY'
      DisplayFormat = '##,##0.00'
    end
  end
  object QHlpserv: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM GRPSERV')
    Left = 157
    Top = 229
    object QHlpservGCODE: TStringField
      FieldName = 'GCODE'
      FixedChar = True
      Size = 10
    end
    object QHlpservMDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object QHlpservSVCODE: TStringField
      FieldName = 'SVCODE'
      FixedChar = True
      Size = 15
    end
    object QHlpservDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 70
    end
    object QHlpservMARK: TStringField
      FieldName = 'MARK'
      FixedChar = True
      Size = 1
    end
    object QHlpservUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QHlpservTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QHlpservHOUR: TIntegerField
      FieldName = 'HOUR'
    end
    object QHlpservMINUTE: TIntegerField
      FieldName = 'MINUTE'
    end
    object QHlpservFRT: TFloatField
      FieldName = 'FRT'
      DisplayFormat = '##,##0.00'
    end
    object QHlpservPRC_EST: TFloatField
      FieldName = 'PRC_EST'
      DisplayFormat = '##,##0.00'
    end
  end
  object QHlpOrd: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM GRPORD')
    Left = 157
    Top = 193
    object QHlpOrdGCODE: TStringField
      FieldName = 'GCODE'
      FixedChar = True
      Size = 10
    end
    object QHlpOrdMDLCOD: TStringField
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object QHlpOrdSVCODE: TStringField
      FieldName = 'SVCODE'
      FixedChar = True
      Size = 15
    end
    object QHlpOrdKILOMT: TFloatField
      FieldName = 'KILOMT'
    end
    object QHlpOrdDESCRP: TStringField
      FieldName = 'DESCRP'
      FixedChar = True
      Size = 70
    end
    object QHlpOrdMARK: TStringField
      FieldName = 'MARK'
      FixedChar = True
      Size = 1
    end
    object QHlpOrdUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QHlpOrdTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QHlpOrdPRC_EST: TFloatField
      FieldName = 'PRC_EST'
      DisplayFormat = '##,##0.00'
    end
  end
  object SoHlpOrd: TDataSource
    DataSet = QHlpOrd
    Left = 129
    Top = 193
  end
  object SoHlpserv: TDataSource
    DataSet = QHlpserv
    Left = 129
    Top = 229
  end
  object SoHlppart: TDataSource
    DataSet = QHlppart
    Left = 129
    Top = 269
  end
  object Grpmst: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM GRPMST')
    Left = 339
    Top = 176
  end
  object TmpQuery: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 309
    Top = 175
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
