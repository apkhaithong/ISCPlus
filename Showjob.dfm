object Fjobshow: TFjobshow
  Left = 278
  Top = 216
  BorderStyle = bsDialog
  Caption = 'JOB '#3588#3657#3634#3591#3594#3635#3619#3632
  ClientHeight = 542
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 542
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
    object DBGrid1: TcxGrid
      Left = 1
      Top = 39
      Width = 735
      Height = 502
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
      object cxGridDBTableView3: TcxGridDBTableView
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
        DataController.DataSource = DataSource1
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
        OptionsView.IndicatorWidth = 15
        object cxGridDBTableView3JOBNO: TcxGridDBColumn
          Caption = #3648#3621#3586#3607#3637#3656' JOB'
          DataBinding.FieldName = 'JOBNO'
          HeaderAlignmentHorz = taCenter
          Width = 93
        end
        object cxGridDBTableView3RECVDATE: TcxGridDBColumn
          Caption = #3623#3633#3609#3607#3637#3656#3619#3633#3610#3619#3606
          DataBinding.FieldName = 'RECVDATE'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object cxGridDBTableView3STRNO: TcxGridDBColumn
          Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          DataBinding.FieldName = 'STRNO'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView3CUSCOD: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
          DataBinding.FieldName = 'CUSCOD'
          HeaderAlignmentHorz = taCenter
          Width = 132
        end
        object cxGridDBTableView3PARTNET: TcxGridDBColumn
          Caption = #3588#3656#3634#3629#3632#3652#3627#3621#3656
          DataBinding.FieldName = 'PARTNET'
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object cxGridDBTableView3TSV_NET: TcxGridDBColumn
          Caption = #3588#3656#3634#3649#3619#3591
          DataBinding.FieldName = 'TSV_NET'
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object cxGridDBTableView3STATUS: TcxGridDBColumn
          Caption = #3626#3606#3634#3609#3632
          DataBinding.FieldName = 'STATUS'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView3
      end
    end
    object AdvPanel2: TAdvPanel
      Left = 1
      Top = 1
      Width = 735
      Height = 38
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
      FullHeight = 200
      object BitBtn2: TcxButton
        Left = 6
        Top = 7
        Width = 58
        Height = 25
        Caption = 'Close'
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'McSkin'
        ModalResult = 2
        TabOrder = 0
        OnClick = BitBtn2Click
      end
    end
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT JOBNO,STRNO,CUSCOD,RECVDATE,PARTNET,'
      'TSV_NET,STATUS FROM JOBORDER')
    Left = 396
    Top = 4
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 360
  end
end
