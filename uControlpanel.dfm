object frControlpanel: TfrControlpanel
  Left = 185
  Top = 105
  BorderIcons = []
  Caption = 'Control panel'
  ClientHeight = 636
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 616
    Width = 960
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Ready'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Option'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = #3611#3619#3633#3610#3611#3619#3640#3591#3626#3605#3655#3629#3585#3585#3634#3619#3660#3604
        Width = 100
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
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 161
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
    object AdvSmoothLabel4: TAdvSmoothLabel
      Left = 21
      Top = 11
      Width = 118
      Height = 18
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      Caption.Location = plCenterLeft
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -13
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.ColorStart = clBlack
      CaptionShadow.Text = 'AdvSmoothLabel'
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -11
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.1.0'
      TextRendering = tClearType
    end
    object EdJourcod: TcxButtonEdit
      Left = 21
      Top = 32
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.OnButtonClick = EdJourcodPropertiesButtonClick
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = 7485192
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
      Width = 200
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 22
      Top = 64
      Caption = #3619#3632#3610#3640#3648#3591#3639#3656#3629#3609#3652#3586#3585#3656#3629#3609#3611#3619#3633#3610#3611#3619#3640#3591
      ParentFont = False
      Properties.Items = <
        item
          Caption = #3611#3619#3633#3610#3611#3619#3640#3591#3605#3657#3609#3607#3640#3609#3619#3633#3610#3648#3586#3657#3634
        end
        item
          Caption = #3611#3619#3633#3610#3611#3619#3640#3591#3605#3657#3609#3607#3640#3609#3648#3593#3621#3637#3656#3618
        end>
      ItemIndex = 0
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = 7485192
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Pumpkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Pumpkin'
      TabOrder = 1
      Height = 82
      Width = 197
    end
    object AdvGlassButton1: TcxButton
      Left = 227
      Top = 116
      Width = 198
      Height = 30
      Caption = 'Click here for Update'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Pumpkin'
      TabOrder = 2
      Font.Charset = THAI_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = AdvGlassButton1Click
    end
    object cxButton1: TcxButton
      Left = 227
      Top = 84
      Width = 198
      Height = 30
      Caption = 'Search data in stock'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Pumpkin'
      TabOrder = 3
      Font.Charset = THAI_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 161
    Width = 960
    Height = 455
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'LiquidSky'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
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
          Format = '##0.00'
          Kind = skSum
        end
        item
          Format = '##0.00'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnMoving = False
      OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
      OptionsView.Footer = True
      object cxGrid1DBTableView1RECVLOC: TcxGridDBColumn
        Caption = #3619#3627#3633#3626#3626#3634#3586#3634
        DataBinding.FieldName = 'RECVLOC'
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGrid1DBTableView1RECVNO: TcxGridDBColumn
        Caption = #3648#3621#3586#3629#3657#3634#3591#3629#3636#3591
        DataBinding.FieldName = 'RECVNO'
        HeaderAlignmentHorz = taCenter
        Width = 116
      end
      object cxGrid1DBTableView1RECVDATE: TcxGridDBColumn
        Caption = #3623#3633#3609#3607#3637#3656#3629#3657#3634#3591#3629#3636#3591
        DataBinding.FieldName = 'RECVDATE'
        HeaderAlignmentHorz = taCenter
        Width = 106
      end
      object cxGrid1DBTableView1PARTNO: TcxGridDBColumn
        Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
        DataBinding.FieldName = 'PARTNO'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1NETCOST: TcxGridDBColumn
        Caption = #3605#3657#3609#3607#3640#3609'@'
        DataBinding.FieldName = 'NETCOST'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1NETTOT: TcxGridDBColumn
        Caption = #3605#3657#3609#3607#3640#3609#3619#3623#3617
        DataBinding.FieldName = 'NETTOT'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1AVGCOST: TcxGridDBColumn
        Caption = #3605#3657#3609#3607#3640#3609#3648#3593#3621#3637#3656#3618
        DataBinding.FieldName = 'AVGCOST'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1VATCOST: TcxGridDBColumn
        Caption = #3616#3634#3625#3637'@'
        DataBinding.FieldName = 'VATCOST'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1NET: TcxGridDBColumn
        Caption = #3605#3657#3609#3607#3640#3609#3592#3619#3636#3591
        DataBinding.FieldName = 'NET'
        HeaderAlignmentHorz = taCenter
        Width = 106
      end
      object cxGrid1DBTableView1NETSTK: TcxGridDBColumn
        Caption = #3605#3657#3609#3607#3640#3609#3651#3609#3626#3605#3655#3629#3585#3585#3634#3619#3660#3604
        DataBinding.FieldName = 'NETSTK'
        HeaderAlignmentHorz = taCenter
        Width = 111
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
      GridView = cxGrid1DBTableView1
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
    Left = 240
    Top = 16
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      '')
    Left = 160
    Top = 296
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 199
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = qrEnqPart
    Left = 400
    Top = 49
  end
  object qrEnqPart: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT A.RECVNO,A.RECVLOC,A.RECVDATE,A.PARTNO,A.NETCOST,A.NETTOT' +
        ',A.AVGCOST,A.VATCOST,A.NETCOST-A.VATCOST NET,B.NETCOST NETSTK'
      
        'FROM RC_TRANS A,STKCARD B WHERE A.PARTNO=B.PARTNO AND A.RECVLOC=' +
        'B.LOC AND A.RECVNO=B.PKNO AND A.PARTNO = '#39'SCTIRE-001'#39
      'AND (A.NETCOST-A.VATCOST <> B.NETCOST)')
    Left = 368
    Top = 49
    object qrEnqPartRECVNO: TStringField
      FieldName = 'RECVNO'
      FixedChar = True
      Size = 12
    end
    object qrEnqPartRECVLOC: TStringField
      FieldName = 'RECVLOC'
      FixedChar = True
      Size = 5
    end
    object qrEnqPartRECVDATE: TDateField
      FieldName = 'RECVDATE'
    end
    object qrEnqPartPARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object qrEnqPartNETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '##,##0.00'
    end
    object qrEnqPartNETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '##,##0.00'
    end
    object qrEnqPartAVGCOST: TFloatField
      FieldName = 'AVGCOST'
      DisplayFormat = '##,##0.00'
    end
    object qrEnqPartVATCOST: TFloatField
      FieldName = 'VATCOST'
      DisplayFormat = '##,##0.00'
    end
    object qrEnqPartNET: TFloatField
      FieldName = 'NET'
      DisplayFormat = '##,##0.00'
    end
    object qrEnqPartNETSTK: TFloatField
      FieldName = 'NETSTK'
      DisplayFormat = '##,##0.00'
    end
  end
end
