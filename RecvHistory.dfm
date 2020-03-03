object FRecvHistory: TFRecvHistory
  Left = 144
  Top = 94
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3619#3633#3610#3626#3636#3609#3588#3657#3634#3648#3586#3657#3634#3626#3605#3655#3629#3585
  ClientHeight = 699
  ClientWidth = 1135
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 51
    Width = 1135
    Height = 648
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
      Top = 1
      Width = 1133
      Height = 627
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
            Kind = skCount
            Position = spFooter
            Column = cxDBGridTranPARTNO
          end
          item
            Format = '##,##0.00'
            Kind = skCount
            Column = cxDBGridTranPARTNO
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Position = spFooter
            Column = cxDBGridTranQTYRECV
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Position = spFooter
            Column = cxDBGridTranNETCOST
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Position = spFooter
            Column = cxDBGridTranNETTOT
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranQTYRECV
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranNETCOST
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranNETTOT
          end
          item
            Format = '##,##0.00'
            Kind = skAverage
            Position = spFooter
            Column = cxDBGridTranAVGCOST
          end
          item
            Format = '##,##0.00'
            Kind = skAverage
            Position = spFooter
            Column = cxDBGridTranTOTAVGCOST
          end
          item
            Format = '##,##0.00'
            Kind = skAverage
            Column = cxDBGridTranAVGCOST
          end
          item
            Format = '##,##0.00'
            Kind = skAverage
            Column = cxDBGridTranTOTAVGCOST
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
            Format = #39#3619#3623#3617'   '#39',##,##0.00,'#39'   '#3619#3634#3618#3585#3634#3619#39
            Kind = skCount
            Column = cxDBGridTranPARTNO
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranQTYRECV
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranNETCOST
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranNETTOT
          end
          item
            Format = '##,##0.00'
            Kind = skAverage
            Column = cxDBGridTranAVGCOST
          end
          item
            Format = '##,##0.00'
            Kind = skAverage
            Column = cxDBGridTranTOTAVGCOST
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
        object cxDBGridTranPARTNO: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'PARTNO'
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object cxDBGridTranDESC1: TcxGridDBColumn
          Caption = #3594#3639#3656#3629'/'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'DESC1'
          HeaderAlignmentHorz = taCenter
          Width = 157
        end
        object cxDBGridTranRECVLOC: TcxGridDBColumn
          Caption = #3626#3634#3586#3634#3607#3637#3656#3619#3633#3610
          DataBinding.FieldName = 'RECVLOC'
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object cxDBGridTranRECVNO: TcxGridDBColumn
          Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3619#3633#3610
          DataBinding.FieldName = 'RECVNO'
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
        object cxDBGridTranRECVDATE: TcxGridDBColumn
          Caption = #3623#3633#3609#3607#3637#3656#3619#3633#3610
          DataBinding.FieldName = 'RECVDATE'
          HeaderAlignmentHorz = taCenter
          Width = 68
        end
        object cxDBGridTranAPCODE: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3648#3592#3657#3634#3627#3609#3637#3657
          DataBinding.FieldName = 'APCODE'
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxDBGridTranAPNAME: TcxGridDBColumn
          Caption = #3594#3639#3656#3629'/'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3648#3592#3657#3634#3627#3609#3637#3657
          DataBinding.FieldName = 'APNAME'
          HeaderAlignmentHorz = taCenter
          Width = 194
        end
        object cxDBGridTranQTYRECV: TcxGridDBColumn
          Caption = #3592#3635#3609#3623#3609#3619#3633#3610
          DataBinding.FieldName = 'QTYRECV'
          HeaderAlignmentHorz = taCenter
          Width = 62
        end
        object cxDBGridTranNETCOST: TcxGridDBColumn
          Caption = #3619#3634#3588#3634'@'
          DataBinding.FieldName = 'NETCOST'
          HeaderAlignmentHorz = taCenter
        end
        object cxDBGridTranNETTOT: TcxGridDBColumn
          Caption = #3619#3634#3588#3634#3619#3623#3617
          DataBinding.FieldName = 'NETTOT'
          HeaderAlignmentHorz = taCenter
        end
        object cxDBGridTranAVGCOST: TcxGridDBColumn
          Caption = #3605#3657#3609#3607#3640#3609#3648#3593#3621#3637#3656#3618'@'
          DataBinding.FieldName = 'AVGCOST'
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object cxDBGridTranTOTAVGCOST: TcxGridDBColumn
          Caption = #3605#3657#3609#3607#3640#3609#3648#3593#3621#3637#3656#3618#3619#3623#3617
          DataBinding.FieldName = 'TOTAVGCOST'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxDBGridTran
      end
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 628
      Width = 1133
      Height = 19
      Panels = <>
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 1135
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
    object AdvToolBar2: TAdvToolBar
      Left = -6
      Top = -1
      Width = 180
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
      object CloseBtn: TAdvGlowButton
        Left = 118
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
        TabOrder = 0
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
        TabOrder = 1
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
      object PrnBtn: TAdvGlowButton
        Left = 60
        Top = 2
        Width = 58
        Height = 47
        Cursor = crHandPoint
        Hint = #3614#3636#3617#3614#3660#3615#3629#3619#3660#3617
        Caption = 'Print'
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 6
        Images = SFMain.cxImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = PrnBtnClick
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
    object cxButtonEdit1: TcxButtonEdit
      Left = 192
      Top = 12
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = 7485192
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Width = 193
    end
  end
  object QPotran: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT A.PARTNO,B.DESC1,A.RECVLOC,A.RECVNO,A.RECVDATE,A.APCODE,C' +
        '.APNAME,A.UCOST,A.QTYRECV,A.NETCOST,A.NETTOT,'
      '       A.AVGCOST,A.AVGCOST * A.QTYRECV TOTAVGCOST'
      'FROM RC_TRANS A INNER JOIN INVMAST B ON (A.PARTNO=B.PARTNO) '
      '                INNER JOIN APMAST C ON (A.APCODE=C.APCODE)'
      'WHERE A.PARTNO = '#39'COS0001'#39' AND A.FLAG = '#39'5'#39
      'ORDER BY A.RECVDATE DESC,A.PARTNO,A.APCODE')
    Left = 27
    Top = 136
    object QPotranPARTNO: TStringField
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object QPotranDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 45
    end
    object QPotranRECVLOC: TStringField
      FieldName = 'RECVLOC'
      FixedChar = True
      Size = 5
    end
    object QPotranRECVNO: TStringField
      FieldName = 'RECVNO'
      FixedChar = True
      Size = 12
    end
    object QPotranRECVDATE: TDateField
      FieldName = 'RECVDATE'
    end
    object QPotranAPCODE: TStringField
      FieldName = 'APCODE'
      FixedChar = True
      Size = 12
    end
    object QPotranAPNAME: TStringField
      FieldName = 'APNAME'
      Size = 60
    end
    object QPotranUCOST: TFloatField
      FieldName = 'UCOST'
      DisplayFormat = '##,##0.00'
    end
    object QPotranQTYRECV: TFloatField
      FieldName = 'QTYRECV'
      DisplayFormat = '##,##0'
    end
    object QPotranNETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '##,##0.00'
    end
    object QPotranNETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '##,##0.00'
    end
    object QPotranAVGCOST: TFloatField
      FieldName = 'AVGCOST'
      DisplayFormat = '##,##0.00'
    end
    object QPotranTOTAVGCOST: TFloatField
      FieldName = 'TOTAVGCOST'
      DisplayFormat = '##,##0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = QPotran
    Left = 65535
    Top = 136
  end
  object ActionList1: TActionList
    Left = 64
    Top = 136
    object actEditPrn: TAction
      Caption = 'actEditPrn'
      ShortCut = 117
      OnExecute = actEditPrnExecute
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
    BorderIcons = [biSystemMenu]
    Left = 160
    Top = 216
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 564
    Top = 428
  end
  object frxChartObject1: TfrxChartObject
    Left = 596
    Top = 428
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 628
    Top = 428
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 660
    Top = 428
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ','
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 692
    Top = 428
  end
  object frxBDEComponents1: TfrxBDEComponents
    DefaultSession = 'Default'
    Left = 736
    Top = 428
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 300
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 692
    Top = 460
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 660
    Top = 460
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 628
    Top = 460
  end
  object frxFDComponents1: TfrxFDComponents
    DefaultDatabase = DM_SEC.HI_DBMS
    Left = 596
    Top = 460
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 564
    Top = 460
  end
  object frxReport1: TfrxReport
    Version = '6.5.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.AllowPreviewEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43604.676131319440000000
    ReportOptions.LastChange = 43604.676131319440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 564
    Top = 492
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxReportTableObject1: TfrxReportTableObject
    Left = 596
    Top = 492
  end
  object frxRichObject1: TfrxRichObject
    Left = 628
    Top = 492
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = True
    PictureType = gpPNG
    Left = 661
    Top = 493
  end
end
