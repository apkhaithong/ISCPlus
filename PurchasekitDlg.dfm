object frPurchaseKitDlg: TfrPurchaseKitDlg
  Left = 257
  Top = 100
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
  ClientHeight = 594
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
    Width = 869
    Height = 594
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.8.0'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
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
      Left = 45
      Top = 19
      Width = 74
      Height = 16
      Alignment = taRightJustify
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 85
      Top = 42
      Width = 33
      Height = 16
      Alignment = taRightJustify
      Caption = #3648#3592#3657#3634#3627#3609#3637#3657
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 867
      Height = 80
      Align = alTop
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 81
      Width = 867
      Height = 218
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
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
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxGrid1DBTableView1MODEL
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1QTY
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1RVQTY
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1KANGRV
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1MODEL: TcxGridDBColumn
          Caption = #3619#3640#3656#3609#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'MODEL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 141
        end
        object cxGrid1DBTableView1COLOR: TcxGridDBColumn
          Caption = #3626#3637#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'COLOR'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1QTY: TcxGridDBColumn
          Caption = #3592#3635#3609#3623#3609#3626#3633#3656#3591
          DataBinding.FieldName = 'QTY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 66
        end
        object cxGrid1DBTableView1RVQTY: TcxGridDBColumn
          Caption = #3592#3635#3609#3623#3609#3619#3633#3610
          DataBinding.FieldName = 'RVQTY'
          HeaderAlignmentHorz = taCenter
          Width = 81
        end
        object cxGrid1DBTableView1KANGRV: TcxGridDBColumn
          Caption = #3588#3657#3634#3591#3619#3633#3610
          DataBinding.FieldName = 'KANGRV'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 80
        end
        object cxGrid1DBTableView1MARK: TcxGridDBColumn
          Caption = #3648#3621#3639#3629#3585
          DataBinding.FieldName = 'MARK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 81
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxTextEdit1: TcxTextEdit
      Left = 124
      Top = 40
      AutoSize = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
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
      Height = 23
      Width = 322
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 124
      Top = 15
      AutoSize = False
      DataBinding.DataField = 'PURCHASENO'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
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
      Height = 24
      Width = 204
    end
    object RzBitBtn1: TcxButton
      Left = 328
      Top = 15
      Width = 59
      Height = 23
      Cursor = crHandPoint
      Hint = 'Choose data'
      Caption = #3605#3585#3621#3591
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Black'
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = RzBitBtn1Click
    end
    object CancelBtn: TcxButton
      Left = 387
      Top = 15
      Width = 59
      Height = 23
      Cursor = crHandPoint
      Hint = 'Cancel'
      Caption = #3618#3585#3648#3621#3636#3585
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Black'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = CancelBtnClick
    end
    object AdvPanel3: TAdvPanel
      Left = 1
      Top = 299
      Width = 867
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = THAI_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
      FullHeight = 200
      object Label2: TLabel
        Left = 156
        Top = 6
        Width = 58
        Height = 16
        Caption = #3619#3627#3633#3626#3612#3641#3657#3619#3633#3610#3619#3606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RFBtnLoad: TcxButton
        Left = 3
        Top = 1
        Width = 133
        Height = 27
        Cursor = crHandPoint
        Caption = #3648#3619#3637#3618#3585#3586#3657#3629#3617#3641#3621#3607#3637#3656#3606#3641#3585#3648#3621#3639#3629#3585
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'McSkin'
        TabOrder = 0
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = RFBtnLoadClick
      end
      object cxRvcode: TcxButtonEdit
        Left = 220
        Top = 3
        AutoSize = False
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxRvcodePropertiesButtonClick
        Style.Font.Charset = DEFAULT_CHARSET
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
        Height = 23
        Width = 121
      end
    end
    object cxGrid2: TcxGrid
      Left = 1
      Top = 328
      Width = 867
      Height = 265
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,##0.00'
            Kind = skCount
            Column = cxGrid2DBTableView1MODEL
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxGrid2DBTableView1STDPRC
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.ContentOdd = SFMain.cxStyle4
        object cxGrid2DBTableView1RVLOCAT: TcxGridDBColumn
          Caption = #3626#3634#3586#3634#3607#3637#3656#3619#3633#3610
          DataBinding.FieldName = 'RVLOCAT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 79
        end
        object cxGrid2DBTableView1MODEL: TcxGridDBColumn
          Caption = #3619#3640#3656#3609#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'MODEL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid2DBTableView1COLOR: TcxGridDBColumn
          Caption = #3626#3637#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'COLOR'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 85
        end
        object cxGrid2DBTableView1STRNO: TcxGridDBColumn
          Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          DataBinding.FieldName = 'STRNO'
          HeaderAlignmentHorz = taCenter
          Width = 171
        end
        object cxGrid2DBTableView1ENGNO: TcxGridDBColumn
          Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          DataBinding.FieldName = 'ENGNO'
          HeaderAlignmentHorz = taCenter
          Width = 152
        end
        object cxGrid2DBTableView1STDPRC: TcxGridDBColumn
          Caption = #3619#3634#3588#3634#3586#3634#3618
          DataBinding.FieldName = 'STDPRC'
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object cxGrid2DBTableView1APCODE: TcxGridDBColumn
          Caption = #3588#3633#3609#3607#3637#3656
          DataBinding.FieldName = 'APCODE'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid2DBTableView1RVCODE: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3612#3641#3657#3619#3633#3610#3619#3606
          DataBinding.FieldName = 'RVCODE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 81
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object QTrpurchase: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM TRPURCHASE ')
    Left = 756
    Top = 28
    object QTrpurchasePURCHASENO: TStringField
      FieldName = 'PURCHASENO'
      FixedChar = True
      Size = 12
    end
    object QTrpurchasePURCHASEDT: TDateField
      FieldName = 'PURCHASEDT'
    end
    object QTrpurchaseGCODE: TStringField
      FieldName = 'GCODE'
      FixedChar = True
      Size = 3
    end
    object QTrpurchaseTYPE: TStringField
      FieldName = 'TYPE'
      FixedChar = True
      Size = 12
    end
    object QTrpurchaseMODEL: TStringField
      FieldName = 'MODEL'
      FixedChar = True
    end
    object QTrpurchaseBAAB: TStringField
      FieldName = 'BAAB'
      FixedChar = True
    end
    object QTrpurchaseCOLOR: TStringField
      FieldName = 'COLOR'
      FixedChar = True
    end
    object QTrpurchaseCC: TFloatField
      FieldName = 'CC'
    end
    object QTrpurchaseRVLOCAT: TStringField
      FieldName = 'RVLOCAT'
      FixedChar = True
      Size = 5
    end
    object QTrpurchaseCRLOCAT: TStringField
      FieldName = 'CRLOCAT'
      FixedChar = True
      Size = 5
    end
    object QTrpurchaseCOST: TFloatField
      FieldName = 'COST'
    end
    object QTrpurchaseQTY: TFloatField
      FieldName = 'QTY'
    end
    object QTrpurchaseTCOST: TFloatField
      FieldName = 'TCOST'
    end
    object QTrpurchaseDISCT: TFloatField
      FieldName = 'DISCT'
    end
    object QTrpurchaseNCOST: TFloatField
      FieldName = 'NCOST'
    end
    object QTrpurchaseVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QTrpurchaseNETCOST: TFloatField
      FieldName = 'NETCOST'
    end
    object QTrpurchaseVAT: TFloatField
      FieldName = 'VAT'
    end
    object QTrpurchaseTNETCOST: TFloatField
      FieldName = 'TNETCOST'
    end
    object QTrpurchaseBONUS: TFloatField
      FieldName = 'BONUS'
    end
    object QTrpurchaseFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object QTrpurchaseMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 512
    end
    object QTrpurchaseTRFCOST: TFloatField
      FieldName = 'TRFCOST'
    end
    object QTrpurchaseRVQTY: TFloatField
      FieldName = 'RVQTY'
      OnValidate = QTrpurchaseRVQTYValidate
    end
    object QTrpurchaseMARK: TStringField
      FieldName = 'MARK'
      FixedChar = True
      Size = 1
    end
    object QTrpurchaseKANGRV: TFloatField
      FieldName = 'KANGRV'
    end
  end
  object DataSource1: TDataSource
    DataSet = QTrpurchase
    Left = 728
    Top = 28
  end
  object DBkbd1: TRzDBkbd
    IgNoreUpDown = False
    UseArrowKey = True
    Disable = False
    DataSource = DataSource1
    StatusColor = clBlack
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
    Left = 824
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = QBK_Invtran
    Left = 544
    Top = 8
  end
  object QBK_Invtran: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM INVTRAN')
    Left = 576
    Top = 8
    object QBK_InvtranRECVNO: TStringField
      FieldName = 'RECVNO'
      FixedChar = True
      Size = 12
    end
    object QBK_InvtranRECVDT: TDateField
      FieldName = 'RECVDT'
    end
    object QBK_InvtranGCODE: TStringField
      FieldName = 'GCODE'
      FixedChar = True
      Size = 3
    end
    object QBK_InvtranTYPE: TStringField
      FieldName = 'TYPE'
      FixedChar = True
      Size = 12
    end
    object QBK_InvtranMODEL: TStringField
      FieldName = 'MODEL'
      FixedChar = True
    end
    object QBK_InvtranBAAB: TStringField
      FieldName = 'BAAB'
      FixedChar = True
    end
    object QBK_InvtranCOLOR: TStringField
      FieldName = 'COLOR'
      FixedChar = True
    end
    object QBK_InvtranCC: TFloatField
      FieldName = 'CC'
    end
    object QBK_InvtranSTAT: TStringField
      FieldName = 'STAT'
      FixedChar = True
      Size = 1
    end
    object QBK_InvtranSTRNO: TStringField
      FieldName = 'STRNO'
      FixedChar = True
    end
    object QBK_InvtranENGNO: TStringField
      FieldName = 'ENGNO'
      FixedChar = True
    end
    object QBK_InvtranREGNO: TStringField
      FieldName = 'REGNO'
      FixedChar = True
      Size = 12
    end
    object QBK_InvtranKEYNO: TStringField
      FieldName = 'KEYNO'
      FixedChar = True
      Size = 12
    end
    object QBK_InvtranREFNO: TStringField
      FieldName = 'REFNO'
      FixedChar = True
      Size = 12
    end
    object QBK_InvtranMILERT: TFloatField
      FieldName = 'MILERT'
    end
    object QBK_InvtranCRLOCAT: TStringField
      FieldName = 'CRLOCAT'
      FixedChar = True
      Size = 5
    end
    object QBK_InvtranMOVENO: TStringField
      FieldName = 'MOVENO'
      FixedChar = True
      Size = 12
    end
    object QBK_InvtranMOVEDT: TDateField
      FieldName = 'MOVEDT'
    end
    object QBK_InvtranRVCODE: TStringField
      FieldName = 'RVCODE'
      FixedChar = True
      Size = 8
    end
    object QBK_InvtranRVLOCAT: TStringField
      FieldName = 'RVLOCAT'
      FixedChar = True
      Size = 5
    end
    object QBK_InvtranSTDCOST: TFloatField
      FieldName = 'STDCOST'
    end
    object QBK_InvtranCRCOST: TFloatField
      FieldName = 'CRCOST'
    end
    object QBK_InvtranDISCT: TFloatField
      FieldName = 'DISCT'
    end
    object QBK_InvtranNETCOST: TFloatField
      FieldName = 'NETCOST'
    end
    object QBK_InvtranCRVAT: TFloatField
      FieldName = 'CRVAT'
    end
    object QBK_InvtranTOTCOST: TFloatField
      FieldName = 'TOTCOST'
    end
    object QBK_InvtranVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object QBK_InvtranNADDCOST: TFloatField
      FieldName = 'NADDCOST'
    end
    object QBK_InvtranVADDCOST: TFloatField
      FieldName = 'VADDCOST'
    end
    object QBK_InvtranTADDCOST: TFloatField
      FieldName = 'TADDCOST'
    end
    object QBK_InvtranSTDPRC: TFloatField
      FieldName = 'STDPRC'
      DisplayFormat = '##,##0.00'
    end
    object QBK_InvtranSDATE: TDateField
      FieldName = 'SDATE'
    end
    object QBK_InvtranPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object QBK_InvtranBONUS: TFloatField
      FieldName = 'BONUS'
    end
    object QBK_InvtranTSALE: TStringField
      FieldName = 'TSALE'
      FixedChar = True
      Size = 1
    end
    object QBK_InvtranCONTNO: TStringField
      FieldName = 'CONTNO'
      FixedChar = True
    end
    object QBK_InvtranCURSTAT: TStringField
      FieldName = 'CURSTAT'
      FixedChar = True
      Size = 1
    end
    object QBK_InvtranCRDTXNO: TStringField
      FieldName = 'CRDTXNO'
      FixedChar = True
      Size = 12
    end
    object QBK_InvtranCRDAMT: TFloatField
      FieldName = 'CRDAMT'
    end
    object QBK_InvtranRESVNO: TStringField
      FieldName = 'RESVNO'
      FixedChar = True
      Size = 12
    end
    object QBK_InvtranRESVDT: TDateField
      FieldName = 'RESVDT'
    end
    object QBK_InvtranFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object QBK_InvtranMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 512
    end
    object QBK_InvtranPOSTDT: TDateField
      FieldName = 'POSTDT'
    end
    object QBK_InvtranINPDT: TDateTimeField
      FieldName = 'INPDT'
    end
    object QBK_InvtranUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object QBK_InvtranDORECV: TStringField
      FieldName = 'DORECV'
      FixedChar = True
      Size = 15
    end
    object QBK_InvtranMANUYR: TStringField
      FieldName = 'MANUYR'
      FixedChar = True
      Size = 4
    end
    object QBK_InvtranAPCODE: TStringField
      FieldName = 'APCODE'
      FixedChar = True
      Size = 8
    end
    object QBK_InvtranTAXIN: TStringField
      FieldName = 'TAXIN'
      FixedChar = True
      Size = 1
    end
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 16
    Top = 32
  end
  object DataSource3: TDataSource
    DataSet = Query1
    Left = 48
    Top = 32
  end
  object DataSource4: TDataSource
    DataSet = Query2
    Left = 632
    Top = 24
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 672
    Top = 24
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
    Top = 80
  end
end
