object FCamp: TFCamp
  Left = 647
  Top = 148
  BorderIcons = []
  Caption = #3649#3588#3617#3648#3611#3597
  ClientHeight = 550
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 51
    Width = 806
    Height = 479
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
      Width = 804
      Height = 125
      Align = alTop
    end
    object Label1: TLabel
      Left = 14
      Top = 11
      Width = 69
      Height = 16
      Caption = #3619#3627#3633#3626#3649#3588#3617#3648#3611#3597
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 271
      Top = 11
      Width = 62
      Height = 16
      Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 39
      Width = 79
      Height = 16
      Caption = #3623#3633#3609#3648#3619#3636#3656#3617#3649#3588#3617#3648#3611#3597
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 242
      Top = 38
      Width = 93
      Height = 16
      Caption = #3623#3633#3609#3626#3636#3657#3609#3626#3640#3604#3649#3588#3617#3648#3611#3597
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 65
      Width = 76
      Height = 16
      Caption = #3619#3627#3633#3626#3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 307
      Top = 66
      Width = 28
      Height = 16
      Caption = #3619#3640#3656#3609#3619#3606
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 12
      Top = 92
      Width = 72
      Height = 16
      Caption = #3626#3656#3623#3609#3621#3604#3588#3656#3634#3649#3619#3591
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 246
      Top = 92
      Width = 89
      Height = 16
      Caption = #3626#3656#3623#3609#3621#3604#3588#3656#3634#3629#3632#3652#3627#3621#3656
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 210
      Top = 94
      Width = 12
      Height = 16
      Caption = '%'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 463
      Top = 94
      Width = 12
      Height = 16
      Caption = '%'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBRadioGroup1: TcxDBRadioGroup
      Left = 482
      Top = 34
      Caption = #3648#3621#3639#3629#3585#3611#3619#3632#3648#3616#3607#3649#3588#3617#3648#3611#3597
      DataBinding.DataField = 'CAMTYPE'
      DataBinding.DataSource = DataSource1
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.Items = <
        item
          Caption = '1.'#3626#3656#3623#3609#3621#3604#3605#3634#3617#3585#3621#3640#3656#3617
          Value = '1'
        end
        item
          Caption = '2.'#3626#3656#3623#3609#3621#3604#3605#3634#3617#3619#3640#3656#3609#3619#3606
          Value = '2'
        end
        item
          Caption = '3.'#3626#3656#3623#3609#3621#3604#3607#3633#3656#3623#3652#3611
          Value = '3'
        end>
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 12615680
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 0
      Height = 81
      Width = 156
    end
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 126
      Width = 804
      Height = 352
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'iMaginary'
      ClientRectBottom = 352
      ClientRectRight = 804
      ClientRectTop = 27
      object cxTabSheet1: TcxTabSheet
        Caption = #3585#3635#3627#3609#3604#3619#3634#3618#3585#3634#3619#3629#3632#3652#3627#3621#3656
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 804
          Height = 325
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
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
            DataController.DataSource = Sopart
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridTranPRICE
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridTranNETAMT
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridTranTOTAMT
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridTranPRICE
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridTranNETAMT
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridTranTOTAMT
              end
              item
                Format = '##,##0.00'
                Kind = skCount
                Position = spFooter
                Column = cxGridTranPARTNO
              end
              item
                Format = '##,##0.00'
                Kind = skCount
                Column = cxGridTranPARTNO
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridTranPRICE
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridTranNETAMT
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridTranTOTAMT
              end
              item
                Format = '##,##0.00'
                Kind = skCount
                Column = cxGridTranPARTNO
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
            object cxGridTranPARTNO: TcxGridDBColumn
              Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
              DataBinding.FieldName = 'PARTNO'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 114
              Properties.OnButtonClick = cxGridTranPARTNOPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              Width = 115
            end
            object cxGridTranDESC1: TcxGridDBColumn
              Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634'/'#3588#3635#3629#3608#3636#3610#3634#3618#3619#3634#3618#3585#3634#3619
              DataBinding.FieldName = 'DESC1'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                #3586#3623#3604
                #3585#3636#3650#3621#3585#3619#3633#3617
                #3617#3636#3621#3621#3636#3621#3636#3605#3619
                #3585#3621#3656#3629#3591
                #3621#3633#3591
                #3585#3619#3633#3617
                #3650#3627#3621)
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
            object cxGridTranQTY: TcxGridDBColumn
              Caption = #3592#3635#3609#3623#3609'.'
              DataBinding.FieldName = 'QTY'
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object cxGridTranPRICE: TcxGridDBColumn
              Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618
              DataBinding.FieldName = 'PRICE'
              HeaderAlignmentHorz = taCenter
              Width = 83
            end
            object cxGridTranDISCT: TcxGridDBColumn
              Caption = #3626#3656#3623#3609#3621#3604'(%)'
              DataBinding.FieldName = 'DISCT'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGridTranDISAMT: TcxGridDBColumn
              Caption = #3626#3656#3623#3609#3621#3604'('#3610#3634#3607')'
              DataBinding.FieldName = 'DISAMT'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxGridTranNETAMT: TcxGridDBColumn
              Caption = #3619#3634#3588#3634#3626#3640#3607#3608#3636
              DataBinding.FieldName = 'NETAMT'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 81
            end
            object cxGridTranTOTAMT: TcxGridDBColumn
              Caption = #3619#3623#3617#3592#3635#3609#3623#3609#3648#3591#3636#3609
              DataBinding.FieldName = 'TOTAMT'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 84
            end
          end
          object cxGridLevelI: TcxGridLevel
            GridView = cxGridTran
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619#3617#3634#3605#3619#3600#3634#3609
        ImageIndex = 1
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 796
          Height = 319
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'LiquidSky'
          object cxGridDBTableView1: TcxGridDBTableView
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
            DataController.DataSource = SoServ
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBPRICE
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBNETAMT
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBTOTAMT
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridDBPRICE
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridDBNETAMT
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridDBTOTAMT
              end
              item
                Format = '##,##0.00'
                Kind = skCount
                Position = spFooter
                Column = cxGridDBCODE
              end
              item
                Format = '##,##0.00'
                Kind = skCount
                Column = cxGridDBCODE
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridDBPRICE
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridDBNETAMT
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridDBTOTAMT
              end
              item
                Format = '##,##0.00'
                Kind = skCount
                Column = cxGridDBCODE
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
            object cxGridDBCODE: TcxGridDBColumn
              Caption = #3619#3627#3633#3626#3610#3619#3636#3585#3634#3619
              DataBinding.FieldName = 'CODE'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 114
              Properties.OnButtonClick = cxGridDBCODEPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              Width = 115
            end
            object cxGridDBDESC1: TcxGridDBColumn
              Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3619#3634#3618#3585#3634#3619
              DataBinding.FieldName = 'DESC1'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                #3586#3623#3604
                #3585#3636#3650#3621#3585#3619#3633#3617
                #3617#3636#3621#3621#3636#3621#3636#3605#3619
                #3585#3621#3656#3629#3591
                #3621#3633#3591
                #3585#3619#3633#3617
                #3650#3627#3621)
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
            object cxGridDBFRT: TcxGridDBColumn
              Caption = 'FRT.'
              DataBinding.FieldName = 'FRT'
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object cxGridDBPRICE: TcxGridDBColumn
              Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618
              DataBinding.FieldName = 'PRICE'
              HeaderAlignmentHorz = taCenter
              Width = 83
            end
            object cxGridDBDISCT: TcxGridDBColumn
              Caption = #3626#3656#3623#3609#3621#3604'(%)'
              DataBinding.FieldName = 'DISCT'
              HeaderAlignmentHorz = taCenter
              Width = 62
            end
            object cxGridDBDISAMT: TcxGridDBColumn
              Caption = #3626#3656#3623#3609#3621#3604'('#3610#3634#3607')'
              DataBinding.FieldName = 'DISAMT'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxGridDBNETAMT: TcxGridDBColumn
              Caption = #3619#3634#3588#3634#3626#3640#3607#3608#3636
              DataBinding.FieldName = 'NETAMT'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 81
            end
            object cxGridDBTOTAMT: TcxGridDBColumn
              Caption = #3619#3623#3617#3592#3635#3609#3623#3609#3648#3591#3636#3609
              DataBinding.FieldName = 'TOTAMT'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 84
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
    object DBEdit1: TcxDBTextEdit
      Left = 85
      Top = 9
      DataBinding.DataField = 'CAMPNO'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = 14540287
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 2
      Width = 121
    end
    object DBEdit2: TcxDBTextEdit
      Left = 338
      Top = 9
      DataBinding.DataField = 'CAMPNAM'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = 14540287
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 3
      Width = 301
    end
    object qaDate: TcxDBDateEdit
      Left = 85
      Top = 36
      DataBinding.DataField = 'QDATE'
      DataBinding.DataSource = Dm_SV.SoQa_invoi1
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
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 338
      Top = 36
      DataBinding.DataField = 'ENDDATE'
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
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 5
      Width = 121
    end
    object DBEdit3: TcxDBButtonEdit
      Left = 85
      Top = 63
      DataBinding.DataField = 'GROUP1'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.LookupItems.Strings = (
        '')
      Properties.OnButtonClick = DBEdit3PropertiesButtonClick
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
      TabOrder = 6
      Width = 121
    end
    object DBEdit4: TcxDBButtonEdit
      Left = 339
      Top = 63
      DataBinding.DataField = 'MDLCOD'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.LookupItems.Strings = (
        '')
      Properties.OnButtonClick = DBEdit4PropertiesButtonClick
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
      TabOrder = 7
      Width = 121
    end
    object DBEdit5: TcxDBTextEdit
      Left = 85
      Top = 90
      DataBinding.DataField = 'SVR_RAT1'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = 14540287
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 8
      Width = 121
    end
    object DBEdit6: TcxDBTextEdit
      Left = 339
      Top = 90
      DataBinding.DataField = 'PTR_RAT1'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.Color = 14540287
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 9
      Width = 121
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 530
    Width = 806
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Ready'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = #3649#3615#3657#3617#3619#3627#3633#3626#3649#3588#3617#3648#3611#3597
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'CAMPGRP,CAMPPART,CAMPSERV'
        Width = 250
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 150
      end>
    PaintStyle = stpsUseLookAndFeel
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
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 806
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
      Width = 394
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
        Left = 322
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
      end
      object AdvToolBarSeparator3: TAdvToolBarSeparator
        Left = 302
        Top = 2
        Width = 10
        Height = 47
        SeparatorStyle = ssBlank
        LineColor = clBtnShadow
        Visible = False
      end
      object AdvToolBarSeparator6: TAdvToolBarSeparator
        Left = 312
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
        TabOrder = 0
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
      object Enqbtn: TAdvGlowButton
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
        TabOrder = 1
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
        TabOrder = 2
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
        TabOrder = 3
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
        Left = 332
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
        TabOrder = 4
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
        TabOrder = 5
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
    end
  end
  object DataSource1: TDataSource
    DataSet = QCamp
    OnStateChange = DataSource1StateChange
    Left = 670
    Top = 61
  end
  object Qpart: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CAMPPART')
    Left = 661
    Top = 136
    object QpartCAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object QpartPARTNO: TStringField
      FieldName = 'PARTNO'
      OnChange = QpartPARTNOChange
      OnValidate = QpartPARTNOValidate
      FixedChar = True
    end
    object QpartDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 45
    end
    object QpartQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '##,##0.00'
    end
    object QpartPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '##,##0.00'
    end
    object QpartDISCT: TFloatField
      FieldName = 'DISCT'
      OnValidate = QpartDISCTValidate
      DisplayFormat = '##,##0.00'
    end
    object QpartDISAMT: TFloatField
      FieldName = 'DISAMT'
      OnValidate = QpartDISAMTValidate
      DisplayFormat = '##,##0.00'
    end
    object QpartNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '##,##0.00'
    end
    object QpartTOTAMT: TFloatField
      FieldName = 'TOTAMT'
      DisplayFormat = '##,##0.00'
    end
    object QpartGROUP1: TStringField
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 5
    end
  end
  object Sopart: TDataSource
    DataSet = Qpart
    Left = 677
    Top = 136
  end
  object QServ: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CAMPSERV')
    Left = 736
    Top = 116
    object QServCAMPNO: TStringField
      FieldName = 'CAMPNO'
      FixedChar = True
      Size = 5
    end
    object QServCODE: TStringField
      FieldName = 'CODE'
      OnChange = QServCODEChange
      OnValidate = QServCODEValidate
      FixedChar = True
      Size = 15
    end
    object QServDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 70
    end
    object QServFRT: TFloatField
      FieldName = 'FRT'
    end
    object QServPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '##,##0.00'
    end
    object QServDISCT: TFloatField
      FieldName = 'DISCT'
      OnValidate = QServDISCTValidate
      DisplayFormat = '##,##0.00'
    end
    object QServDISAMT: TFloatField
      FieldName = 'DISAMT'
      OnValidate = QServDISAMTValidate
      DisplayFormat = '##,##0.00'
    end
    object QServNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '##,##0.00'
    end
    object QServTOTAMT: TFloatField
      FieldName = 'TOTAMT'
      DisplayFormat = '##,##0.00'
    end
  end
  object SoServ: TDataSource
    DataSet = QServ
    Left = 678
    Top = 112
  end
  object QCamp: TFDQuery
    BeforePost = QCampBeforePost
    AfterPost = QCampAfterPost
    AfterCancel = QCampAfterCancel
    BeforeDelete = QCampBeforeDelete
    AfterDelete = QCampAfterDelete
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CAMPGRP')
    Left = 701
    Top = 116
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 734
    Top = 44
  end
  object Condpay: TFDTable
    ConnectionName = 'HI_DBMS'
    UpdateOptions.UpdateTableName = 'CONDPAY'
    TableName = 'CONDPAY'
    Left = 713
    Top = 92
  end
  object DBkbd1: TRzDBkbd
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
    Left = 708
    Top = 64
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
    Left = 424
    Top = 8
  end
end
