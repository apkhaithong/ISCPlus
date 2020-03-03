object FCreateTaxno: TFCreateTaxno
  Left = 225
  Top = 43
  Caption = #3626#3619#3657#3634#3591#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
  ClientHeight = 0
  ClientWidth = 120
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 120
    Height = 0
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
      Width = 118
      Height = 312
      Align = alTop
      ExplicitWidth = 1242
    end
    object RzPanel1: TRzPanel
      Left = 1
      Top = 313
      Width = 118
      Height = 426
      Align = alClient
      BorderOuter = fsFlatRounded
      TabOrder = 0
      object RzPanel2: TRzPanel
        Left = 2
        Top = 2
        Width = 844
        Height = 422
        Align = alLeft
        BorderOuter = fsFlatRounded
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 2
          Top = 2
          Width = 840
          Height = 418
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
            Navigator.Buttons.Insert.Visible = True
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
            OnCellDblClick = cxGridDBTableView2CellDblClick
            DataController.DataSource = DataSource
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
                Column = cxGridDBTableView2NETTOT
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
            OptionsData.Editing = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView2BILLNO: TcxGridDBColumn
              Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3626#3619#3655#3592
              DataBinding.FieldName = 'BILLNO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 81
            end
            object cxGridDBTableView2JOBNO: TcxGridDBColumn
              Caption = #3648#3621#3586#3607#3637#3656' JOB'
              DataBinding.FieldName = 'JOBNO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 91
            end
            object cxGridDBTableView2LOCAT: TcxGridDBColumn
              Caption = #3619#3627#3633#3626#3626#3634#3586#3634
              DataBinding.FieldName = 'LOCAT'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 57
            end
            object cxGridDBTableView2BILLDT: TcxGridDBColumn
              Caption = #3623#3633#3609#3607#3637#3656#3651#3610#3648#3626#3619#3655#3592
              DataBinding.FieldName = 'BILLDT'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 71
            end
            object cxGridDBTableView2CUSCODE: TcxGridDBColumn
              Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
              DataBinding.FieldName = 'CUSCODE'
              HeaderAlignmentHorz = taCenter
              Width = 82
            end
            object cxGridDBTableView2CUSTNAME: TcxGridDBColumn
              Caption = #3594#3639#3656#3629#3626#3585#3640#3621
              DataBinding.FieldName = 'CUSTNAME'
              HeaderAlignmentHorz = taCenter
              Width = 201
            end
            object cxGridDBTableView2PAYTYP: TcxGridDBColumn
              Caption = #3619#3633#3610#3650#3604#3618
              DataBinding.FieldName = 'PAYTYP'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 43
            end
            object cxGridDBTableView2NETTOT: TcxGridDBColumn
              Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              DataBinding.FieldName = 'NETTOT'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 99
            end
            object cxGridDBTableView2SYSTM: TcxGridDBColumn
              Caption = 'From'
              DataBinding.FieldName = 'SYSTM'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBTableView2POSTTAX: TcxGridDBColumn
              Caption = 'Vat*'
              DataBinding.FieldName = 'POSTTAX'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 36
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
      object RzPanel3: TRzPanel
        Left = 879
        Top = 2
        Width = 361
        Height = 422
        Align = alClient
        BorderOuter = fsFlatRounded
        TabOrder = 1
        object wwDBGrid1: TcxGrid
          Left = 2
          Top = 2
          Width = 357
          Height = 418
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
            Navigator.Buttons.Insert.Visible = False
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
            Navigator.Visible = True
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = wwDBGridTrDataNETTOT
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
            OptionsSelection.MultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object wwDBGridTrDataBILLNO: TcxGridDBColumn
              Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3626#3619#3655#3592
              DataBinding.FieldName = 'BILLNO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 94
            end
            object wwDBGridTrDataJOBNO: TcxGridDBColumn
              Caption = #3648#3621#3586#3607#3637#3656' JOB'
              DataBinding.FieldName = 'JOBNO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 95
            end
            object wwDBGridTrDataLOCAT: TcxGridDBColumn
              Caption = #3619#3627#3633#3626#3626#3634#3586#3634
              DataBinding.FieldName = 'LOCAT'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 52
            end
            object wwDBGridTrDataBILLDT: TcxGridDBColumn
              Caption = #3623#3633#3609#3607#3637#3656#3651#3610#3648#3626#3619#3655#3592
              DataBinding.FieldName = 'BILLDT'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              Width = 94
            end
            object wwDBGridTrDataNETTOT: TcxGridDBColumn
              Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              DataBinding.FieldName = 'NETTOT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseThousandSeparator = True
              HeaderAlignmentHorz = taCenter
              Width = 89
            end
          end
          object wwDBGrid1Level1: TcxGridLevel
            GridView = wwDBGridTrData
          end
        end
      end
      object AdvPanel4: TAdvPanel
        Left = 846
        Top = 2
        Width = 33
        Height = 422
        Align = alLeft
        BevelOuter = bvNone
        Color = 16645114
        Font.Charset = THAI_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
        FullHeight = 0
        object AdvAddInAll: TAdvGlowButton
          Left = 0
          Top = 252
          Width = 32
          Height = 29
          Cursor = crHandPoint
          Hint = #3609#3635#3648#3586#3657#3634#3619#3634#3618#3585#3634#3619#3607#3633#3657#3591#3627#3617#3604
          Font.Charset = THAI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F4000001C6494441545885ED93CD6E1A3114858F7F99491890DAA88B149A3E46
            E60D5A356CE711D2FF5622EF41D486A718093552551E81F016F9615B254381C0
            D89E7117344DC9CA48C9AAFE2C6FAE8E7C8F8FAF018FC7E3F138F0E65B237DFF
            FDD9EEBFB5D7BDC6E0637FA77157BBDFDBB6FBBD6DEB7A3675111142A075997E
            F8716BA2B436567991DED572B1DCF76A000078289BA5C1C9A7FECE2E00104641
            8588DF1E37079FFBCFFF2641090525CEC7BA1B9082A2FE2840616C7A63824B86
            7043C45ADD26B1AE01EE2A54748A48D6F0786BB339BECA4F8C5D40B01251B506
            5961F1BBE3E6800B9A5010E7E6C01A0910684CD5041529F1F4C916AA621345A1
            901773042147ADBE111B6DD3A0221EE6093867A8CA08CC7264E319F2F21A61C8
            11F0108501A693C58871D236DA3E8C8148D6516101AEB2197ECDA71DC1042219
            C19812D9E51C9491E468EF7C48B15CF76E804120BB9C63965FB7BBADF3034A28
            4A4390FD5C8C1845FCF5D5D910587E5942DCE7C069080980C9388752BAD36D5D
            1C02F873F30584A4C9E18BD3E1AADA1DA7042C805CE976B77571705333BA1C31
            4EE2D5E680321ACA6867034E0970CE3A477B672B8D8290275F5EAED600A04091
            C0AE9782C7E3F1FCDFFC065D05A2052023E81B0000000049454E44AE42608235
            3131}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = AdvAddInAllClick
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.Color = 15653832
          Appearance.ColorTo = 16178633
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
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
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object AdvAddIn: TAdvGlowButton
          Left = 0
          Top = 222
          Width = 32
          Height = 29
          Cursor = crHandPoint
          Hint = #3609#3635#3648#3586#3657#3634#3586#3657#3629#3617#3641#3621#3607#3637#3656#3606#3641#3585#3648#3621#3639#3629#3585
          Font.Charset = THAI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F400000130494441545885ED934D4EC3301085DF8CEDFC1442F785720F5F81B2
            CE112A4062C34DA0B7A854C102AE50E518946E112081D490D8318BF0A7B272A5
            74833F6B364F9A99E7B107080402818027E3D9FEFCEC7678F0571FB8F16CE07C
            EBB16F8273D0B672D3755DAA363A374082C191D227D7C3F9F9DDE1F72498184C
            DEE5FC0D00808C047A3B4A9BFA67129B1A90BE09C65550A241B6BB872816FAF4
            6638978A730679370736980013C1A2C4BB5D214925FAFD9EB6B59B26B1DACE13
            0806D2284222535803BCBD964B21E9C2D46E3B069450C8A20CC63478795A8105
            F2C9F1A260B4A773034C8CC6109E1F574B22A7AF468B0200880844FEFFC0DB40
            7BF3125272FED5BC853EA36B0375B304397D79745FFCD62B53A332B5B701EF35
            8C53914F460FC5BA6E6173B8CD5631100804FE371F84BF5D663180E925000000
            0049454E44AE426082333631}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = AdvAddInClick
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.Color = 15653832
          Appearance.ColorTo = 16178633
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
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
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object AdvAddOut: TAdvGlowButton
          Left = 0
          Top = 313
          Width = 32
          Height = 29
          Cursor = crHandPoint
          Hint = #3618#3585#3648#3621#3636#3585#3619#3634#3618#3585#3634#3619#3607#3633#3657#3591#3627#3617#3604
          Font.Charset = THAI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F4000001F0494441545885ED93BF6ED35014877FF75EDF6327B5D33AED805021
            4242E219DC990AB1C0841F000989210389187803604810032F11550CA9C45089
            15E7096891F823482A414051D3D889EDC4B90CADD2260B46F2E86F3CF7E8FE3E
            1D9D03E4E4E4E4E4A4E0D1DED5D6C3BD2BAABA7FFDC1EA5BB55D693C79776351
            7F7A7073FBF1DB6B1FD2FECD53753160C66330C696C3F72B35355775C62EBE09
            C3694B29E5A415D052E60300F8A5A06ABBD2D049D6D70A0682718867EF6F6DFB
            41D8B2ED35C71F8569F3534E60856ABB52235DD4CBB609C134000C7E10B68AA6
            74CCA281CB13F917A9260000822FC21B92787D73D382C60582890F3F98B4CA5B
            05148B06662A41A292EC058818E2785A330CE9ACDB053000511222F063946C1D
            46412251330002FC3F069BBA53E31C24E5AB284ABC783C475133B14136CAA512
            FCD3182A6128C97558642DED4A66029C9D2DA341D21D9E4EBC289CC192259864
            82846C9E0C266073019BB64082B21638BF03C6D0BCFBA5F7E6FEF79D5EBFEF0D
            862310372049747422A7FBB3DF5509CE17335381250D0000E9C2FDF1FBD81B8C
            4EC0C0F072F7A843BAE67E3AFE864994F9192A24530EA88B4AE3CEE7DEEB7B5F
            777E0DFF7850676A2F6E1F76C0E78E1F8DBB990A7081264B745770EEADBED9A6
            E592908BFAF3DD8F9D0DD372D30AE4E4E4E4E4FC0568499F814A6092FD000000
            0049454E44AE426082353533}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = AdvAddOutClick
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.Color = 15653832
          Appearance.ColorTo = 16178633
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
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
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
          Layout = blGlyphTop
        end
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 437
      Top = 8
      Caption = #3648#3591#3639#3656#3629#3609#3652#3586#3585#3634#3619' Post'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'GlassOceans'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
      TabOrder = 1
      Height = 135
      Width = 432
      object Label3: TLabel
        Left = 25
        Top = 26
        Width = 76
        Height = 16
        Alignment = taRightJustify
        Caption = #3623#3633#3609#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610' :'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 37
        Top = 51
        Width = 64
        Height = 16
        Alignment = taRightJustify
        Caption = #3610#3633#3597#3594#3637#3626#3634#3586#3634' :'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 2
        Top = 76
        Width = 100
        Height = 16
        Alignment = taRightJustify
        Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3619#3634#3618#3585#3634#3619' :'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Taxdt: TcxDateEdit
        Left = 106
        Top = 21
        Enabled = False
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
        TabOrder = 0
        Width = 121
      end
      object Locat: TcxButtonEdit
        Left = 106
        Top = 47
        Enabled = False
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = LocatPropertiesButtonClick
        Properties.OnChange = LocatPropertiesChange
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
      object Showlocat: TcxTextEdit
        Tag = 1
        Left = 226
        Top = 47
        ParentFont = False
        Properties.ReadOnly = True
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
        Width = 193
      end
      object Desc1: TcxTextEdit
        Left = 106
        Top = 73
        ParentFont = False
        Properties.ReadOnly = False
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
        Text = #3588#3656#3634#3629#3632#3652#3627#3621#3656'/'#3588#3656#3634#3610#3619#3636#3585#3634#3619
        Width = 313
      end
      object AutoRun: TcxCheckBox
        Left = 227
        Top = 21
        Caption = #3585#3635#3627#3609#3604#3623#3633#3609#3607#3637#3656#3649#3621#3632#3626#3634#3586#3634#3592#3634#3585#3612#3641#3657#3651#3594#3657#3591#3634#3609
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
        Transparent = True
        OnClick = AutoRunClick
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 13
      Top = 8
      Caption = #3648#3591#3639#3656#3629#3609#3652#3586#3585#3634#3619#3588#3657#3609#3627#3634
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'GlassOceans'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
      TabOrder = 2
      Transparent = True
      Height = 135
      Width = 420
      object Label1: TLabel
        Left = 3
        Top = 22
        Width = 60
        Height = 16
        Alignment = taRightJustify
        Caption = #3623#3633#3609#3607#3637#3656#3651#3610#3619#3633#3610' :'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 14
        Top = 47
        Width = 46
        Height = 16
        Alignment = taRightJustify
        Caption = #3606#3638#3591#3623#3633#3609#3607#3637#3656' :'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cxDateEdit1: TcxDateEdit
        Left = 65
        Top = 19
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'LiquidSky'
        TabOrder = 0
        Width = 121
      end
      object cxDateEdit2: TcxDateEdit
        Left = 65
        Top = 44
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'LiquidSky'
        TabOrder = 1
        Width = 121
      end
      object ExitBtn: TAdvGlowButton
        Left = 290
        Top = 20
        Width = 100
        Height = 41
        Cursor = crHandPoint
        Hint = #3585#3621#3633#3610#3627#3609#3657#3634#3627#3621#3633#3585
        Caption = 'Exit'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000D904DCB2DA02000007F649444154789CAD97498C5C
          C519C77F55F55EF79B9E9EDD33C198F11A9B452196836C8305068928188BC8C8
          074044218AB0907241245CE2035202074044C4977030082E1012641345160624
          7070648520B03212C37861BC0CD89E31B34FF7F47BF596AA1CDE32DD43941325
          5557BDDABE7FFDBFAD5AB0ACF4C27537AF5A755BB9ABABDA3221E5F2A5A014EA
          FFCD37153D37571FBA70E1E319B8D43C2E9A3F7ED2DFFFCBDF3CF6D8FE1B77EE
          DCE854AB4821105222A4444A89506AA92F254288742C5B473E9ECD2144DA4A49
          D26830FCD1475FFEEEE9A79F7D776CECB56F01F8E9CA954FFCE1F9E7FF280606
          A84D4E62E318990993D941B9E01C58013017D60C2C132C84C00A81F23C7AD6AC
          41D4EBFCECFEFB7FFDB7B3670F1400FAE0FAD71F7FFC3F2B366F6E5B9C9C4429
          856A12D62CB0E8035118A294A2E47985B06600424AC8802004C6187AD6AD63E2
          EC59FFAE471ED9320D6724C00FABD5BD5DBDBD6DF5F171441C431461C310B486
          30843044642D5184D01A5F6BE4FAF5986BAF45371AC86C4D51A3A8E55B86218E
          31D4CE9DE37BBDBD6DDB0607F702380089EF0F2E8C8FE35D730DD6186C469B95
          B2A5CD6F94C43183BB7773CD962D008CBDF71EFEF030AA5C6E6561997AAC10A8
          528985E161C4C2C26001204A1251BB7205AFAF0F1B45DF126C732A3360C2183A
          57AC288CB76B6000DFF71180CCBC613988DC261C29A98D8DE1CFCF8B0200803F
          3D8D0DC3B43609CC759B44115608DC72198CC1465101C046112208888280D018
          DACBE556BB68624F2A45323555EC2D0044B51A3608B0715CDC142911D6D20843
          9C8D1B91AE4B7CFE3C1521C098255F8E63E2C545E48E1D74AF5D4B7D64847864
          848EF676C8DD3403A11C87E4EBAF91CD0014607C1FE3FB90244B0C58CB621C73
          ED430FB1E9DE7B91C0852347987BFBED1600D6F7A9AC5CC9BA071E48BFB76DE3
          AB0F3FA471F4281D9E5780909E473C3C4C7CF2642B0020A53E0810C614F4FB41
          C0EA7DFBD8B86B5721AC7FC306E6B56E018031A87A1DAC4D0D0E5873F7DD5C56
          0A7DE810954A05E1BA3035853E7C18378A8A0024F31F610C26085235684D343B
          4BCFEDB7B7080FA7A7197FF3CDD425AD2DC6A594445F7EC9D503074866668AF1
          5577DD85BAE516A8D5508D06D1E1C3A8E9694A4A150C14015C26093608406B6C
          A3019EC7A6871F5E123E35C5E8534FB138348432A6958124412609C1C71F33F5
          DC7324B3B3C5D48A3D7B88A5243C7204F3D518B2DA866C2FA72C37031019001B
          04247373F46DDD4A756020D38FE5EB975EA271EA1452080802842AD250CA6010
          E048497CFA34B5575F2DE6BCDE5E64D9253A770ED5DD81AC78C8B672CB5E1420
          8DC1680D5A63C290FEAD5B8B458B67CE3073EC184A2984D6D068E00F0D15E082
          93279159E4544A119E38417CEE5CB1BF72C74E649B83F04A88B612CA2B15C9D3
          C97F1C63200830C6A094A23A38581C30FFC927D8B939446727647960EAE59709
          3EFD34F5FFD3A751AE8BD41AE938888505C2132770366C00A0BC69138B7DDD69
          E62CBB3427EEC20D55AE8224417574E056979E03D137DFA47941EBA5E402348E
          1F472985EB7948B228383343343242F4A32DC02F529A3BBB509D9D1006050021
          2524490AC06D32426B0C46883426E4A554C2FA3E94CB458E9752A2B22AA20816
          16482626B05393D838C174772DEDD73E60102517597251D6160F8102808A63AC
          D60820AED7092E5DA23DA3B0B27933C43122088A9C8F94602DD6F78967669073
          73486B91650763C1B96D4721DF8C5F011D203AAB0857219B5CB8B001652D0441
          9A7CEA75668F1FA7EFCE3B01E8B9F556DC9B6EC20C0DA1DADB315104BE8F595C
          44698D437A21517240C7D81DDBA9DCB17349859FFC2B65C071108E426149ED3F
          59F202650C566B4C1020AC65E2ADB748EAF514A5E7B1E69967F07D9FE8E24592
          CB9731333308AD53DD67FA17614CD0DD49CF8B07509E973A496391F0FD771095
          0A289902581E88721524F53AA65EC7684DED8B2F187BE185E2167DDBB7F3FD43
          878856AF266ADA9C1F141983BF613DBD87DFA663FBADC5BEC66B07892F8C22BD
          32424990A205C09217585B8457918D5D7CF659BAB76FA777F76E0006EEB987CE
          CF3E63E2955768BCF30EE1C58B2480BB762D95FBEEA367DF3ECA4DEF84F0F83F
          F0FF7400596D4F6D46E6CF39815A1E0754AEC7AC4A8028E2D4830F72E3EBAFD3
          BB670F005E7F3F6BF7EFC7EEDF4F5CABA5877474B43EAF01FDC1FB2C3CF12B30
          09C2F1B283D324A784C0A129149740C8650072164CBDCE99BD7BF9EAC9278926
          260A0102703B3A70970937DF5CA5F6FBA7987FF4E7E03710E52CEC162F2A9002
          9CCC111D00AF54329EE3B0D06814C2F39267CAF1175F64FE8D37E8DDB387CE5D
          BB28DF7003AABF1F0198A929E2B367D0C73E44BF7F1473E512B2B71B4A65283C
          2E3BD558645B1B423906C214C0681C9F1A58BD9A89D151962D2F8A03C457AF32
          75F020F3070F52725DDC6A357541BF810D344282E8AA22B3909D4ACF11D8F4DD
          A05CEACAE3AC1F9C2A5470D4986317A370F4FA6D5B491C070324D95693D5FC98
          5C55268A48666749666731814E27CAA5F4BD186AAC0EB13A84287DCE5BAD11AE
          4375C30DFC7DF8FCE8A7C61C6BBE68792D3CF8E6E61F3CB76EDDFA959393D358
          DFC71122F510960C5536F5F32AA540B84E5655D1C75508276D555B1BB2E471E4
          9FFF1E7FF4F391DF4EC25F01DDCC744F157EBCAFBFE7E13BD6AFBFD96DF3CAA9
          E10A10CBEC227759631126EF9BB46FD23EC6A44C0A819192FA6243BF77FEC2E7
          7FD1FACF217C00CCFE2F55578055C07580C7775B02D27FC69781463EB81C405E
          7296BFCB9200F1F2C1FF02785F995A121A0C060000000049454E44AE42608232
          313131}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = ExitBtnClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
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
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object HelpBtn: TAdvGlowButton
        Left = 189
        Top = 20
        Width = 100
        Height = 41
        Cursor = crHandPoint
        Caption = 'Search'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D41000077880838846E00000006624B474400FF00FF00FFA0
          BDA793000000097048597300000048000000480046C96B3E0000000976704167
          00000020000000200087FA9C9D00000B784944415458C39597698C9DD579C77F
          E7BCDBBDEFBDEFBD7367AE67F32CF6D833DE00C7D8066C302DB65912501D3525
          24A904424DFBA191AA1021454953353491D2256DA1525B296DD3246A4837DA00
          A91362883118082660C0CBE0B107CF62CF7AF7F7AEEF724E3F184168D4943E5F
          CE9773FEFFDF73CEF9F07F041FB0AC5B4D2CCBB23ACD604245AAAE97F49C7FD2
          D780F173DB14A03DCFFBA0B2885F6ABADF21343B98B199515AED45E87B8CA4B9
          BFBBAFD7DF3978C7D15C3446B9BE9A572AD609331B1896537792E973B97CCFCF
          0647474E1D7EFC07F547FEF84BECEAEBFAFF0198076C8436A4328251D0776AF4
          DD3261ECEA1F1C75FB8D09C282C64919E47BF20CACEBA63B9F56B2EA551A7EB3
          323B5BE8AC2E37423B959DC9F7AEFB97EEBEB54F36EBBEBF61FB56BE72E886FF
          1DE0E6070EF2DCF1A7B1726652A1AF45E8BBB5E02E0CBD3EB5C6939BB37BA85F
          68607575B8FDA307B973CF0146DD315CE96148814613C481AA45D5D66B936F55
          FEEE07DFB516E656D339F7EA23B9ECFA2F7371F2F578E22A8EFCE903EF07F03E
          E6E1A532A2505AE9534A1DD4E87B10FA266DD085053D837D8CD67773F19537D8
          7ACB289FFFF4E7D93D720349C3264601A0D108040209282222A6FC69BE71FC1B
          3CF5BD1748C7DBA67AFA261EF8E9DF7FF1F0B5F73DC46BDFFEFABB0046CF6DB9
          BEC2F2EA67551C7F4D1BFAD3386C21498214E4067A192DECE2EC532F30B46590
          3FF8BD2FF0A1F51F42A3F0A31A95A8443128535365EAAA4623EA10122094A0DB
          EA667C60034B4199372FBCDC2D9AE675EB77BD7ACE4E26A7BDFE210AE74F5F01
          B8F18BD7EF4BF4DB8FC46E3C1CC9C8D0B6061712F92413AD7D9CFECFE748E52C
          EEBBEF7EB68E6DC2EFF8CC9596986BCCB0D098E3627999E56081320BAC544B54
          CB0DEAED0E6DBB8691D00C8FF4B194B8DC9A7E79E18994D3732868F9270C2751
          081A0DDA950266A62B232CCF1603E36BF11B3E856291D5729191C676CEFFD349
          A266938D1BAEC6733CCECD9C27A0C972DDA763FAE86C8B7A434228481890C9D8
          74E53D6C7F849E288D9B48607A2107F65E6F78AE7FFCE4772E571209F3417F69
          F6777BD64F74CA336F614628421DA150B81997B59924E3C357B3F40F217E6909
          D3B0483B1E17A6A6613EA66DF8ACF83542A78DDDDDA6598989AA49EC2E8F915B
          152BD225E32D53690C902E0E90CA41C24A991FDB7BCDF8D91F9DF957557DEBCF
          13D9AE9BA5611F19DCB11763E2FE89F150051F8F84B263AD5142E3CE8E7271EE
          15CC3B6BD89D3E72BD19AAAB652ECF2FB25A5AA2B05862E5BC4FA5DA20755393
          6824A45593342B92662BC2E9ABD2D41D48D6F1574C82A650EBBA462F6C1C3BF8
          CA8B2F3D6B1922DE33FDEC9387DDEE5E6D6A149150C42834602887CA648BD54B
          3E62934DE6C312FA43DC7C9DE26382EA4C056B50C11A97286FD2CCFA04AA43D7
          DE26FEE93CE17C86B8EE90DF50C5EA6D43578744E0D2A95BF2AA2167387472C7
          EC4EF850FF961D435AAB593346BF637E65B58304CB4B4BC49BEB98730EDEA112
          B5C50495A2416387C25F6AD37D4B8D7A68D1794BB2F46D81BDAD4D697B87287F
          89A476A81FCDE35D7470FB2D0677C448922AAE0D5CBC456C6DABFCA6CBC66AC5
          371C670BC29835D53B9D476862A91075975A7189CCBE10A9148B4713D86B57D1
          1732E4F635B1C703AAF360EC68D3BD0E4A4FA7319733348E40EE571B8824646E
          AD125F4C533899C06F3769B90BF11BDD7F7BFA916FDDFF4A5034ACEE6472DEB2
          9D89446ECD8FCC482822AE3C418C26A881E8A9D37C2381180B090A0233A3E8F9
          951AF1421AD31204AFA7F08623ACBE98B1BB24BA90A2F94606F78289CC69D6EE
          0C08D7B858DB1D6A675CA24E6C1CD878E0EA5DDB54E30F0F4F4C199367961DDB
          EE4F0F4D20DF35970A85228C15B1A509434D7C2E49DF5D2D6C4BD228696A0585
          7FC6C61A89689F77F18F67A023D15EC09ADBCBE844885E4E503A9143B74D92BD
          6D92DB5AF46EB018E86CC80F65D930D1974A3AB61D498191EEE9C654EF98C728
          0202227C54C1257BA80325417BD6263463829FBAE46F6BA22A26B96BC10F046A
          2E49F9E92CEE788CD8D6C1D9DC228DA6FE6A2F9DB705ABE580DC5807CB84D06C
          E838266E341BDA36E92E36EAC5FAEC59A47AE70622225AAA4329B18865A489A6
          13C4E988EA0907A1A0676F9BB868A2DD007F45921C8EC8EFAF432E265E4EB07A
          B40B4748645AE1ED2E23B36D3AE75D5A331E8D651BCB0D092282E5E5554C150E
          37AA95E98553273123A98995A2190734E226156B8581CC00AD136944B341EED6
          267AD94178118DA904E1CB096C2F81B34610F429727B1BE8624CEBF51CAD332E
          EDACA26F7B93A6ADC9E4149DB7BBB00B09E43A5B56425591F5A56CD46AF4D54B
          2B93288D8C85A64D404844B955264EB4E9F43649F77A5896C07435219AE2332E
          EEB60EEE608CD91F529F74A81CF33063095945EFED55623B229CB729BEEAA1EA
          26E98136E6988FB3B6253A655BBDB9545F1C4CB677565617CB954B33D3ED7A15
          D9881A44C454C2323111DA027F6C9E4C6208330D85C753E8644C7A7D8CA52589
          4D01F91B5B181B9A2014C5673C82191B618598633ED9DD55DA8B0EF14C9AD274
          0AB72B2435DCA4280AD5A32F9C6EE9FAEA479667A60FEFB8F3EE66D46A610A21
          68C701ADA009860421680F9569BF15632D0D600F2D62774C52D7B4283F9D259E
          968814589B03BC8D554ACF77135D76582D25E8BEB683E185A47755B1CA69DAA7
          3D923AA4EAA04F04AFCDF45BE6BEC9F3938995E9A9EF972ECF11755A48CB76A9
          8535945420051802955014764EE3D6D7911B4C129661F5191773BC8311486AC7
          5C28D88401745D5FC5BDAA4154B2689EF5A89C73C9F48618C34DBC6B6B844593
          E9A3B568E1D4D2DACAFCD94F5E3C75F2AF37DDB87F35F06B57F240EB13D17833
          6C7C1C296C8C2B004218C45D01A188F14E6D26F4CAA85A4CD7D531A60C89030B
          5A295A971CB21B226207BCB180A868A31752E8C04461D0331AB0D059A116AE88
          D1C2D6D133CFBFFC6F4B5367FEB1786956EB38BA0260DCEB8EC744EF01487925
          680B01C3313D7280DCCC10C94D35CAA734EDF998FCCD112A23D12B4982852402
          83EC7084723599E188C6541AAA360B4B256215B2A571839C7C66F1F2E2DCA507
          9D5C6F2DA8ACBC17C9ACFBD2514CBC06430E23A58B146821314C8BA1EC7A321B
          5CB04DAC3707311B1982D936D6FA0E7228A66B63406B2689AC3BB4171C123985
          938B09DD2661D0C2383B446A72C0771BA3D69AF1EB92AB81F94CF7BA6D33155F
          417DE10A407CAF5941F043A4FC8996A28D1483C2945E3E35207A130348C3C01C
          918811895D75C984FDD8AD3EBC8C839D02AB37C6EDD184E733D8AD34BAE291EB
          749338DF5B2C9FAC3E3675E2F4EFF76FDBBD78D39EEB77B794DC7EEEECE40BDD
          EB3717DA8D06BABEFA5E2C17CFF580C420D6134EC2FBE44466CB3DB6E16C9486
          290D616018064209E239084F4367AA4E5C8FC8763B18B620A819B41B6D9AB57A
          A139EF7FB77A61E1D17A71F18DAEB51B3AD5BA6F7CE6A187BF92ED5AF385278E
          1C3BF6F6D9377FCB48E5A6BDB963BF38987CEAEC67190B47C4B3C997476243FD
          BA10F237A530AE91D2B4A4301086440AC9F9D72699FFE159446000122411A6FE
          898EC2AFE9D7CBCF933763FEEBCA47DB73EF03F8955AEFC13B3EFC3D85BDFFF1
          C3477EDC589EFD6DACE49CFC9F008F6E7D98AF6EFF9C1E490DCFFEB8F79B7F99
          32521FB10CFB770C611E15D268492486B490C2408B18E586A8747851E7D58372
          DCF884CEC867B73D76D3BBE60027FEFD51D66FDEB672FCB9E35F4E582CEED973
          DD6DB6D7F3B98BD7BCC82F00BC0BB2F6EB789EC73EEF8695625CF956C6F03EEA
          08FB53A6B0BE6F0AB32A42A0A61BA229BE6344F2D7B68E8CFF95B36896F9B322
          67868EBF4F2B6E2EF3EC13FFC1CFFEF9E1E75F78E9A5BF5837D0C32DFB6FEEEF
          79226DFCD2E1F4E7EB4BA5BFE1CD608AA448240323BEE1D5A75E3C34FFE4E997
          ECACF3781CC6EDE89BC5FF53A367C71D346AE5EC81BB0EFDD1CDBB772EEDEA4D
          FEC907F57F5F25F70E60FF464ED8B77561EFEFFAE007CD2C4F975F2737BED3FC
          CC571FB17CDFE7BF01422E9C4E70084C64000000227A545874536F6674776172
          65000078DA734CC94F4A55F0CC4D4C4F0D4A4D4CA904002F9C05D4AE0CA94D00
          00000049454E44AE426082}
        TabOrder = 3
        OnClick = HelpBtnClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
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
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object cxRadioGroup1: TcxRadioGroup
        Left = 3
        Top = 76
        Align = alBottom
        Caption = 'Option'
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = #3627#3609#3657#3634#3619#3657#3634#3609
          end
          item
            Caption = #3624#3641#3609#3618#3660#3610#3619#3636#3585#3634#3619
          end
          item
            Caption = #3619#3623#3617#3607#3633#3657#3591#3627#3617#3604
          end>
        ItemIndex = 2
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'McSkin'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'McSkin'
        TabOrder = 4
        Height = 50
        Width = 414
      end
    end
    object CrtTaxBtn: TAdvGlowButton
      Left = 437
      Top = 266
      Width = 115
      Height = 41
      Cursor = crHandPoint
      Hint = #3588#3621#3636#3585#3607#3637#3656#3609#3637#3656#3648#3614#3639#3656#3629#3626#3619#3657#3634#3591#3651#3610#3585#3635#3585#3633#3610#3629#3633#3605#3650#3609#3617#3633#3605#3636
      Caption = 'Create...'
      Font.Charset = THAI_CHARSET
      Font.Color = 4737096
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000097048597300000B1300000B1301009A9C1800000A4F694343505068
        6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
        DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
        114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
        7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
        11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
        07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
        801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
        7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
        450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
        305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
        99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
        99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
        BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
        EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
        E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
        814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
        582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
        00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
        6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
        44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
        801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
        3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
        21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
        46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
        74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
        6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
        128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
        51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
        37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
        DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
        E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
        B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
        DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
        197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
        0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
        E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
        C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
        D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
        744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
        AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
        53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
        4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
        35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
        8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
        4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
        6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
        A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
        67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
        DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
        1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
        9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
        D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
        EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
        7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
        F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
        0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
        D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
        C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
        17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
        8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
        91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
        31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
        C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
        2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
        B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
        6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
        1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
        66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
        CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
        61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
        FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
        D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
        F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
        625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
        F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
        E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
        9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
        DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
        D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
        058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
        AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
        1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
        D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
        830000F9FF000080E9000075300000EA6000003A980000176F925FC54600000A
        FF4944415478DABC5769945D5595FECE70A7374FF52A355145A502A998C1400C
        21C1684CA49B96EE25C4B4C85254C4D084A61105C4A01D149138859606973422
        B2125C0A2ADA2082A292A403010309A92295A48654AA52F55EBDF752F5C6FBEE
        70EE3DFDA306840EBD58FE70AF75FEDC75CEDDDFD9E7DBDFDE9B482971FE0737
        E2FF1821D3CBF7E73E39AE80ED388C292C1450B5D21B5B092C5718D2F7C038AF
        73424008C13B31FE8E76498070DA968C253EDDD571D6BA64321EF9D39E17370B
        C77D851002D7F316AD5BBBEA21E138565FFF89DDB55AEDC79E2B86DF0988FF1F
        8094D337F7045A9A9ABE70DF9DB7DFD8D5D186D3C512F61F38F4C95CA9F20A08
        41301CF8E84DD77C625573631AC3A7C6DF7FF3D7BE951E191EDDA228CA5F0940
        4A584280130ACE2818A52814267B6BF53A0020198B62C5BB176F3A207B0DCE99
        9C7FF6597F9F4AC4E10801DFF791CB9D1EA29402007C29213C0F9C31D03344E4
        8C002CC76DEF5E74CE77A7A64ABDB989DC9D524AAF629AF1A303436259F739DC
        151E6EDBF299799EE75F33ED54C2ACDBE09C63E8E429546B669A486908E1D593
        0DC97F6D6999B7E6B5C347BEAA717EF4ADCF42DE4A425B78F3579EBF64D7B76F
        BF7955DFC0106EDAB6FD47D14848BFE6CA4D975DB2EE225DD775E2B82E28A110
        BE07CFF351B76C989605CFF3C029414FDF716FD72F9F7A66642C3372EB96AB37
        9FB7B89BDDF3C39D47F6EC7BF9C30A63FD6F0BC015028DF3D2DB77DE7BF717E7
        35A40000077AFA108F8431BFBD15962B20A53FEDB45E87E3B8F07C1F9C3338AE
        07B35E47A556433860C0761C8C4DE4D09C4AE2F454111DED6DB8ED1BFFB1F3D8
        B1C1AB5485CF65C99B9E8033864261F2573F7BF2D9CF6CF9C447539C33AC58D2
        0DE1F9302D1BC2F3303A3A8691F10C4E4F1521A50440108D84908C45914EA590
        8A46712A9B8165D9086A1A46C6C6914E25F1FB3DFB8B996CEE7794524C9F3A03
        07082190BEDC7FDF43BBBE180C180F5E73C5E5B45C33C139C7D454112FBE7A08
        D96C1E8C73C4A361848241E8BA06DF9728556A302D07E95402F3DBCF42FFD009
        E4F2794423610C8E8ECBFB7FF493EF2A94EC52390755187CE1414A39038010B8
        AE0B0940FA3EE2B168F382CE0E62392E7C5F22972F60F7BE975035EB684825D1
        D2D4080F12C5720595BA25D3C904492562F08587BA6DA36EBBE85ED08572B982
        A96211F3520DA4B5A5B12B732A0BCB73009F4267FC8D0878BED770EEC2AE1D8E
        EDD48FF60F0D6F58BBFABA55CB979272D584EF09EC3F7008A6656361572708E7
        787AF70B3D070EF53C5AAB9AAF3246554248E3D225DD576FBC64C39A859D1DA8
        5B161857B064D142FC61CF5EC423117C68FDDA7F7E60E7E3E39DED6DC17038D4
        74ECF8E05629E500915262E9FA0F7FEA917BB73FDCD1D682577BFBD09C6E4032
        9184848F818121F4F50FA1AD651EB8AAE1BE877FF2C040FFD01D9420ABA82AA4
        EF0384C0F765209E88DDF8B96B3F79E7072E7C0FABD52D040D1D2FEC7F19C3A3
        A3686B6D45CD72D0D49084A22AB8E5CE1D5F2E4D16EFA200D0D9DEB661615727
        344DC37B962D412C1A45C5ACC2AAD731913F8D643C86C6741A3B7FF1E493C78F
        F65FCF19CD72CE41290521048C525048333F91BFFB819D8F3D78723C0B555160
        9A7574767640D334144B25A85462229783A1A958D0D9BEDEF5C4B45CA99A661E
        38FC3A728549942A5514AB55082150AD9900015A9BE7A1E7787FE5D0A19E6DAA
        A278B32A376BFE4C1414CE71EAD4D8777EB7E7C51C8144B95A85A1EB48C46320
        94C20804D1D6DA82C9520584920AA18C7300E81F3CB1ED86DBEFDA974EC5375D
        7DC5C68B572C5BAC58B60DF812BAA6211E8BA0E7C8F18396651DD6350D52CA37
        553B29E5744A12C017DEE06BAF1FDD5DFABB759B4CCB0621149170188AA2C211
        3EBE7EEF0FFF786A2CF328A5F4094D531D3EAD46C848DF7B6468F0E44BE313F9
        FF1142245DD781A16A8884432084C2B25D5BE18A3F7B7B29253CCF03A504BEF0
        DF54476CDBAE98960DAB6E0352C2300C70CE3192C9C963C707B7EB8AF27B7006
        0980CEFE4C0801D7F322B6E310D7B1619A26545D453010806EE808858CA484D4
        66F50200345D035338400042090825A08CC230F42801502A97E10901CE390C23
        005708CFF54483277DF85282CC02D00CE3C2B6B6961F5C76E9C53F5EB4A0335C
        2C9751AE54A1728E5028005D55B0A0B3A35B51D52572A644CF019100A30C0A57
        400801A1F4EC45E776AD1042A054A981500A100ACA183A5A5BF8E5975EFC8DCE
        CEF65DBAA1AD9FD381C5DD5D5FBAF9DA4FFDA36559982A96903F3D09E1BAA8D5
        6A88C7E390BEC4FA0B571ACFED79F196C3AFF55EA1003EFE820304042080EBB8
        686E6BDE7CC1B225EDE3990908E142D735588E0380A0A5B909B7DD706DBBF4BC
        F6AFDE73FFA2679EDBBB92024076A23056B72CE40B05304A1009066059164E8C
        8CC2D075F812484423F8ECC7366E6A6E6DFE8EEB7909E94B485FCE71C1761C23
        9E4ADEFAE92B367E8E1360743C8B68248C40C000630A9289386291302821D035
        0D63E3B97E9533C101602257786E643CFB2F014DC30B077B8BE1604039A7BD25
        38387C12EDADAD686C6C44616A0ADD0BCEC6B6CF5F7FD393CF3DFFC17DFB0FFC
        A7E38A2384521A8E46BA16752FF8F887D6AF5D170B05D0373004C62816CC6F87
        233CCC6B4861DF9F5FB1FBFA87CC352B96C7A5F4317472E4379AAACE96E38F04
        C3B1C85575D32C4F154BAF27E2B1CBB67DE1BAAF9C2E140820F1FEF7AE81EB7A
        2895ABD054158AC2512816313296757CDFA7F1789427C261E472798C8C67C018
        C3EA15CB9148250109388E8DCDB76CFBE9E0D0C91DE148A82B1A0927CAA5F2C3
        14C49CEB071C21C00801630C55D36C5F7BD1057B3E76E9C5679D38398264328E
        65EF7A17EA968D6CBE00C776C01883A270D8B68DAA6961AA5482655988452238
        7FD962A49249D8AE8B78248C6F7EFFA1E2A38FFFFAD25828B8CF97129E94E08C
        BD910500A0720ECE185C21108D45AF5AB3E2DD69C7B161040C388E8B9EBEA300
        245A9B1A110E87E0B82EC6B3394C142651A95611098770DED2C5D8F0BE3548A5
        52F0211130343046B1EABCA581743A79B92304A194CE399FCB022925FC1932C5
        13F16B6FFCECC7BF968A8490CD17D0D6DC044DD7E10B0FA3E319442311241371
        3435A6E1CB6901E25C81AEA9608C414A2060681042C0D0541010FCC3BA8BD478
        34FCF9ADDBBF979F3A3DB59D513AD791D0D97CA6334BD5D4744332014209CEED
        EAC4C1BEFECAF6FB1F7E65249B775B9B9B402945A55643D5B20042A1A83A38E7
        F07D0909094353F06ACF115CBFF5EBBDF73CB8734A51A6EB7E632A094D53E312
        F28D760800BBE38E3BF05F3B1F9BAE6A8CA25CAEBC7CF0C8B196F7ADBE60F9E1
        A303B5071EF9E9965C36F7EF7FDCF77236140E7E60E5F2A59C508A68380C8573
        288C425355A85C413C12C263BF79D6DB7AD78E6F9E1A1BBFE1506FDF419F9075
        86A1076FBD6BC7CF8787476FD514C522332D19796B4B2625A0706E65C6B2D76D
        DDFEBD1EAB6E0FC3974F18868E4ACD7CA92199A0BA6E20140CE2B1FF7EDAFCED
        1FF63EEF4BE96D58BB7AFDBF5D7D6580518A78344A7CCF7B21A0EB1948FCF291
        9F3D917FFCA9675717278BF71B9A5A7D477381A270BB5AAADC33CB56CFF39148
        44575F78FE324555A6C9BAEFCF070FF61E397699C2B9CF19FBC5E62B37FE5330
        60E0BD2BCFA3ADAD4DEBB299DC530AE7F05C6F6FA958DAAB290AFE52C6678DBE
        DDC844671A0D22A7DF36180AEA23631908D745AE50C0D0F0E833D170C809060C
        9199C83F3D707214F9C9291C7CBD0FAAA20ADF9F7646E9746ABF9D91B79D8E67
        27E419D41208DBC2DDD0DED27C4938128E1DEF1FFA1225188494208C357774B4
        DD5D2957273313F9E71921BB2921C5997390046020678C0039D3C7BFA5FDEF00
        2CAE2D6619BE7E0D0000000049454E44AE42608235353838}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = CrtTaxBtnClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
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
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object cxGroupBox2: TcxGroupBox
      Left = 13
      Top = 146
      Caption = #3649#3585#3657#3652#3586#3607#3637#3656#3629#3618#3641#3656
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'GlassOceans'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
      TabOrder = 4
      Height = 162
      Width = 419
      object Label20: TLabel
        Left = 25
        Top = 23
        Width = 51
        Height = 16
        Alignment = taRightJustify
        Caption = #3610#3657#3634#3609#3648#3621#3586#3607#3637#3656
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 20
        Top = 73
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = #3619#3627#3633#3626#3629#3635#3648#3616#3629
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 52
        Top = 48
        Width = 24
        Height = 16
        Alignment = taRightJustify
        Caption = #3606#3609#3609
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 19
        Top = 99
        Width = 57
        Height = 16
        Alignment = taRightJustify
        Caption = #3619#3627#3633#3626#3592#3633#3591#3627#3623#3633#3604
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 249
        Top = 48
        Width = 30
        Height = 16
        Alignment = taRightJustify
        Caption = #3605#3635#3610#3621
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 4
        Top = 125
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = #3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Edit1: TcxTextEdit
        Left = 202
        Top = 71
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
        TabOrder = 0
        Width = 201
      end
      object Edit2: TcxTextEdit
        Left = 202
        Top = 97
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
        TabOrder = 1
        Width = 201
      end
      object DBEdit19: TcxDBTextEdit
        Left = 82
        Top = 19
        DataBinding.DataField = 'ADDR_I'
        DataBinding.DataSource = Socustmast
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
        Width = 321
      end
      object DBEdit20: TcxDBTextEdit
        Left = 82
        Top = 45
        DataBinding.DataField = 'RODE_I'
        DataBinding.DataSource = Socustmast
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
        Width = 121
      end
      object DBEdit21: TcxDBTextEdit
        Left = 282
        Top = 45
        DataBinding.DataField = 'TUMB_I'
        DataBinding.DataSource = Socustmast
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
        TabOrder = 4
        Width = 121
      end
      object DBEdit22: TcxDBButtonEdit
        Left = 82
        Top = 71
        DataBinding.DataField = 'AUMPID_I'
        DataBinding.DataSource = Socustmast
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 112
        Properties.LookupItems.Strings = (
          '')
        Properties.OnButtonClick = DBEdit22PropertiesButtonClick
        Properties.OnChange = DBEdit22PropertiesChange
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
        TabOrder = 5
        Width = 121
      end
      object DBEdit23: TcxDBButtonEdit
        Left = 82
        Top = 97
        DataBinding.DataField = 'PROVID_I'
        DataBinding.DataSource = Socustmast
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 112
        Properties.LookupItems.Strings = (
          '')
        Properties.OnButtonClick = DBEdit23PropertiesButtonClick
        Properties.OnChange = DBEdit23PropertiesChange
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
      object DBEdit24: TcxDBTextEdit
        Left = 82
        Top = 123
        DataBinding.DataField = 'ZIP_I'
        DataBinding.DataSource = Socustmast
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
        TabOrder = 7
        Width = 121
      end
    end
  end
  object DataSource: TDataSource
    DataSet = qrFindDat
    Left = 74
    Top = 272
  end
  object qrFindDat: TFDQuery
    BeforeOpen = qrFindDatBeforeOpen
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT A.BILLNO,A.JOBNO,A.LOCAT,A.BILLDT,A.CUSCODE,B.CUSTNAME,A.' +
        'PAYTYP,A.NETTOT,A.SYSTM,A.POSTTAX'
      'FROM ARPAYTRN A LEFT JOIN VIEW_CUST B ON (A.CUSCODE=B.CUSCOD) '
      'WHERE  A.CANDAT IS NULL'
      'AND A.NETTOT > 0'
      'AND A.BILLDT BETWEEN :DT_START AND :DT_END  AND A.LOCAT =:LOCAT'
      'AND (A.POSTTAX = '#39'N'#39' OR A.POSTTAX='#39'V'#39')'
      'AND A.SYSTM LIKE :SYSTM'
      
        'AND A.BILLNO NOT IN (SELECT TAXREFNO FROM TAXSAL_CUSTOM WHERE TA' +
        'XREFNO=A.BILLNO AND CANCELID IS NULL)'
      'ORDER BY A.BILLDT')
    Left = 102
    Top = 272
    ParamData = <
      item
        Name = 'DT_START'
      end
      item
        Name = 'DT_END'
      end
      item
        Name = 'LOCAT'
      end
      item
        Name = 'SYSTM'
      end>
    object qrFindDatBILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object qrFindDatJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object qrFindDatLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object qrFindDatBILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object qrFindDatCUSCODE: TStringField
      FieldName = 'CUSCODE'
      FixedChar = True
      Size = 12
    end
    object qrFindDatPAYTYP: TStringField
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 2
    end
    object qrFindDatNETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '##,##0.00'
    end
    object qrFindDatCUSTNAME: TStringField
      FieldName = 'CUSTNAME'
      Size = 111
    end
    object qrFindDatSYSTM: TStringField
      FieldName = 'SYSTM'
      FixedChar = True
      Size = 8
    end
    object qrFindDatPOSTTAX: TStringField
      FieldName = 'POSTTAX'
      FixedChar = True
      Size = 1
    end
  end
  object qrCreateTaxno: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT BILLNO,JOBNO,LOCAT,BILLDT,CUSCODE,PAYTYP,NETTOT,POSTTAX,S' +
        'YSTM'
      'FROM ARPAYTRN '
      'WHERE CANDAT IS NULL'
      'AND NETTOT > 0'
      'ORDER BY BILLDT')
    Left = 750
    Top = 296
    object qrCreateTaxnoBILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 12
    end
    object qrCreateTaxnoJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object qrCreateTaxnoLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object qrCreateTaxnoBILLDT: TDateField
      FieldName = 'BILLDT'
    end
    object qrCreateTaxnoCUSCODE: TStringField
      FieldName = 'CUSCODE'
      FixedChar = True
      Size = 12
    end
    object qrCreateTaxnoPAYTYP: TStringField
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 2
    end
    object qrCreateTaxnoNETTOT: TFloatField
      FieldName = 'NETTOT'
      DisplayFormat = '##,##0.00'
    end
    object qrCreateTaxnoPOSTTAX: TStringField
      FieldName = 'POSTTAX'
      FixedChar = True
      Size = 1
    end
    object qrCreateTaxnoSYSTM: TStringField
      FieldName = 'SYSTM'
      FixedChar = True
      Size = 8
    end
  end
  object DataSource1: TDataSource
    DataSet = qrCreateTaxno
    OnStateChange = DataSource1StateChange
    Left = 722
    Top = 296
  end
  object qrTaxsal: TFDQuery
    AfterPost = qrTaxsalAfterPost
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT TAXNO,TAXDATE,TAXREFNO,JOBNO,DESC1,CUSCOD,VATRT,AMOUNT,RE' +
        'DU,'
      
        '       BALANCE,VAT,TOTTAX,FLAG,USERID,TIME1,PAYTYP,LOCAT,FRSV,CL' +
        'AIM'
      'FROM TAXSAL_CUSTOM')
    Left = 1048
    Top = 144
    object qrTaxsalTAXNO: TStringField
      FieldName = 'TAXNO'
      FixedChar = True
      Size = 12
    end
    object qrTaxsalTAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object qrTaxsalTAXREFNO: TStringField
      FieldName = 'TAXREFNO'
      FixedChar = True
      Size = 12
    end
    object qrTaxsalJOBNO: TStringField
      FieldName = 'JOBNO'
      FixedChar = True
      Size = 15
    end
    object qrTaxsalDESC1: TStringField
      FieldName = 'DESC1'
      FixedChar = True
      Size = 55
    end
    object qrTaxsalCUSCOD: TStringField
      FieldName = 'CUSCOD'
      FixedChar = True
      Size = 12
    end
    object qrTaxsalVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object qrTaxsalAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object qrTaxsalREDU: TFloatField
      FieldName = 'REDU'
    end
    object qrTaxsalBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object qrTaxsalVAT: TFloatField
      FieldName = 'VAT'
    end
    object qrTaxsalTOTTAX: TFloatField
      FieldName = 'TOTTAX'
    end
    object qrTaxsalFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object qrTaxsalUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object qrTaxsalTIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object qrTaxsalPAYTYP: TStringField
      FieldName = 'PAYTYP'
      FixedChar = True
      Size = 1
    end
    object qrTaxsalLOCAT: TStringField
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object qrTaxsalFRSV: TStringField
      FieldName = 'FRSV'
      FixedChar = True
      Size = 1
    end
    object qrTaxsalCLAIM: TStringField
      FieldName = 'CLAIM'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource3: TDataSource
    DataSet = qrTaxsal
    Left = 1016
    Top = 144
  end
  object qrHelp: TFDQuery
    CachedUpdates = True
    MasterSource = DataSource1
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM ACCPERIOD WHERE ACCYEAR=:ACCYEAR')
    Left = 1017
    Top = 179
    ParamData = <
      item
        Name = 'ACCYEAR'
      end>
  end
  object Query1: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    Left = 1048
    Top = 178
  end
  object QCustmast: TFDQuery
    BeforeOpen = QCustmastBeforeOpen
    AfterPost = QCustmastAfterPost
    CachedUpdates = True
    MasterSource = DataSource
    MasterFields = 'CUSCODE'
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CUSTMAST'
      'WHERE CUSCOD =:CUSCODE')
    Left = 993
    Top = 71
    ParamData = <
      item
        Name = 'CUSCODE'
        DataType = ftFixedChar
        Size = 12
        Value = Null
      end>
    object QCustmastCUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QCustmastSNAM: TStringField
      FieldName = 'SNAM'
      Size = 8
    end
    object QCustmastNAME1: TStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object QCustmastNAME2: TStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object QCustmastNICKNM: TStringField
      FieldName = 'NICKNM'
      Size = 50
    end
    object QCustmastBIRTHDT: TDateField
      FieldName = 'BIRTHDT'
    end
    object QCustmastADDRNO: TStringField
      FieldName = 'ADDRNO'
      Size = 1
    end
    object QCustmastIDCARD: TStringField
      FieldName = 'IDCARD'
      Size = 40
    end
    object QCustmastIDNO: TStringField
      FieldName = 'IDNO'
    end
    object QCustmastISSUBY: TStringField
      FieldName = 'ISSUBY'
      Size = 40
    end
    object QCustmastISSUDT: TDateField
      FieldName = 'ISSUDT'
    end
    object QCustmastEXPDT: TDateField
      FieldName = 'EXPDT'
    end
    object QCustmastAGE: TFloatField
      FieldName = 'AGE'
    end
    object QCustmastNATION: TStringField
      FieldName = 'NATION'
      Size = 50
    end
    object QCustmastOCCUP: TStringField
      FieldName = 'OCCUP'
      Size = 50
    end
    object QCustmastOFFIC: TStringField
      FieldName = 'OFFIC'
      Size = 50
    end
    object QCustmastGRADE: TStringField
      FieldName = 'GRADE'
      Size = 2
    end
    object QCustmastACPDT: TDateField
      FieldName = 'ACPDT'
    end
    object QCustmastUSERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QCustmastMINCOME: TFloatField
      FieldName = 'MINCOME'
    end
    object QCustmastMAXCRED: TFloatField
      FieldName = 'MAXCRED'
    end
    object QCustmastUpdateStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
    object QCustmastMEMBCOD: TStringField
      FieldName = 'MEMBCOD'
      Size = 12
    end
    object QCustmastGRPCUS: TStringField
      FieldName = 'GRPCUS'
      FixedChar = True
      Size = 5
    end
    object QCustmastPICTURE: TStringField
      FieldName = 'PICTURE'
      FixedChar = True
      Size = 25
    end
    object QCustmastCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object QCustmastDISCT: TFloatField
      FieldName = 'DISCT'
    end
    object QCustmastSALLEV: TStringField
      FieldName = 'SALLEV'
      FixedChar = True
      Size = 1
    end
    object QCustmastSINCOME: TFloatField
      FieldName = 'SINCOME'
    end
    object QCustmastADDR_I: TStringField
      FieldName = 'ADDR_I'
      FixedChar = True
      Size = 60
    end
    object QCustmastRODE_I: TStringField
      FieldName = 'RODE_I'
      FixedChar = True
      Size = 40
    end
    object QCustmastTUMB_I: TStringField
      FieldName = 'TUMB_I'
      FixedChar = True
      Size = 40
    end
    object QCustmastAUMPID_I: TStringField
      FieldName = 'AUMPID_I'
      FixedChar = True
      Size = 5
    end
    object QCustmastPROVID_I: TStringField
      FieldName = 'PROVID_I'
      FixedChar = True
      Size = 5
    end
    object QCustmastZIP_I: TStringField
      FieldName = 'ZIP_I'
      FixedChar = True
      Size = 8
    end
    object QCustmastTELP_I: TStringField
      FieldName = 'TELP_I'
      FixedChar = True
      Size = 50
    end
    object QCustmastADDR_II: TStringField
      FieldName = 'ADDR_II'
      FixedChar = True
      Size = 60
    end
    object QCustmastRODE_II: TStringField
      FieldName = 'RODE_II'
      FixedChar = True
      Size = 40
    end
    object QCustmastTUMB_II: TStringField
      FieldName = 'TUMB_II'
      FixedChar = True
      Size = 40
    end
    object QCustmastAUMPID_II: TStringField
      FieldName = 'AUMPID_II'
      FixedChar = True
      Size = 5
    end
    object QCustmastPROVID_II: TStringField
      FieldName = 'PROVID_II'
      FixedChar = True
      Size = 5
    end
    object QCustmastZIP_II: TStringField
      FieldName = 'ZIP_II'
      FixedChar = True
      Size = 8
    end
    object QCustmastTELP_II: TStringField
      FieldName = 'TELP_II'
      FixedChar = True
      Size = 50
    end
    object QCustmastTEXT: TMemoField
      FieldName = 'TEXT'
      BlobType = ftMemo
      Size = 720
    end
    object QCustmastPROSPECT: TStringField
      FieldName = 'PROSPECT'
      FixedChar = True
      Size = 1
    end
    object QCustmastEMAIL1: TStringField
      FieldName = 'EMAIL1'
      FixedChar = True
      Size = 40
    end
  end
  object Socustmast: TDataSource
    DataSet = QCustmast
    OnStateChange = DataSource1StateChange
    Left = 965
    Top = 71
  end
end
