object frDataflow: TfrDataflow
  Left = 257
  Top = 115
  Caption = 'Load fastreports to BLOB'
  ClientHeight = 569
  ClientWidth = 999
  Color = clWindow
  Ctl3D = False
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 999
    Height = 569
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
      Width = 997
      Height = 85
      Align = alTop
    end
    object Label1: TLabel
      Left = 10
      Top = 51
      Width = 74
      Height = 16
      Alignment = taRightJustify
      Caption = 'Path Folder :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 25
      Width = 78
      Height = 16
      Alignment = taRightJustify
      Caption = 'Table Name :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 86
      Width = 997
      Height = 482
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LevelTabs.CaptionAlignment = taLeftJustify
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LiquidSky'
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609'  ##,##0  '#3619#3634#3618#3585#3634#3619
            Kind = skCount
            Position = spFooter
            Column = cxGrid1DBTableView1FRNAME
          end
          item
            Format = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609'  ##,##0  '#3619#3634#3618#3585#3634#3619
            Kind = skCount
            Column = cxGrid1DBTableView1FRNAME
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609'  ##,##0  '#3619#3634#3618#3585#3634#3619
            Kind = skCount
            Column = cxGrid1DBTableView1FRNAME
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 20
        OnCustomDrawIndicatorCell = cxGrid1DBTableView1CustomDrawIndicatorCell
        object cxGrid1DBTableView1FRNAME: TcxGridDBColumn
          Caption = 'Fastreport Name'
          DataBinding.FieldName = 'FRNAME'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 236
        end
        object cxGrid1DBTableView1PATHFR: TcxGridDBColumn
          Caption = 'BLOB field'
          DataBinding.FieldName = 'PATHFR'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.OnButtonClick = cxGrid1DBTableView1PATHFRPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
        object cxGrid1DBTableView1USERID: TcxGridDBColumn
          Caption = 'UserID'
          DataBinding.FieldName = 'USERID'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 105
        end
        object cxGrid1DBTableView1INPUTDT: TcxGridDBColumn
          Caption = 'Datetime'
          DataBinding.FieldName = 'INPUTDT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 219
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 20
        object cxGrid1DBTableView2MENUCODE: TcxGridDBColumn
          Caption = #3619#3627#3633#3626#3648#3617#3609#3641
          DataBinding.FieldName = 'MENUCODE'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView2MENUDESC: TcxGridDBColumn
          Caption = #3594#3639#3656#3629#3648#3617#3609#3641#3607#3637#3656#3651#3594#3657#3591#3634#3609
          DataBinding.FieldName = 'MENUDESC'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView2COUNT: TcxGridDBColumn
          Caption = #3592#3635#3609#3623#3609#3588#3619#3633#3657#3591
          DataBinding.FieldName = 'COUNT'
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        Caption = 'Files in database'
        GridView = cxGrid1DBTableView1
      end
    end
    object XAlias: TcxComboBox
      Left = 87
      Top = 22
      ParentFont = False
      Properties.Items.Strings = (
        'SVSLFRREPORTS'
        'FAST_REPORT'
        'FAST_FORM')
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.Shadow = False
      Style.PopupBorderStyle = epbsDefault
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 1
      Text = 'SVSLFRREPORTS'
      Width = 300
    end
    object Edit1: TcxButtonEdit
      Left = 87
      Top = 47
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 112
      Properties.ReadOnly = True
      Properties.OnButtonClick = Edit1PropertiesButtonClick
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      Style.Shadow = False
      Style.ButtonStyle = btsDefault
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.TextColor = -1
      StyleFocused.ButtonStyle = btsDefault
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 2
      Width = 300
    end
    object HelpBtn: TAdvGlowButton
      Left = 390
      Top = 26
      Width = 100
      Height = 41
      Cursor = crHandPoint
      Caption = 'Save files'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000038B494441545885ED964D8B1D4514869FAAEE3B1F9940860C1207A318
        211B5141417191853F26BFC08DE2C245166236FE82FC1871A3882022086144F0
        239838939099B9D5B7BBCE47B9E849E6F6DCB977A273C54DCEAABBAA4ED753EF
        794FD1F03CFEE708D32F5F7CB7B30DDCAC47A35887C0C885ABE33D36EAC86A0C
        C42A12A6520A85E20577C7DD9F8E4B817189FCB971992ED628A198F9971FBE7D
        EDAB9300F5F44BAB7EF3E5ADCD5B972E6E10620402AB3FFDC1F695AB54754D08
        E1643EA538AA8A991302C41829A5706FF72157B65F020A1335EEED273EFB76E7
        E34FDEBB7E7B2E4021C6DD5273602382F563D7BA8EFD8303AAAA3A55427767B7
        33BA9C0921B0B9B6C26A28A42EF3BBC4A35515A38B35A2F6F9AD6F76BEFEF4FD
        EB4F95180048098C3C10D58E55695B526A4E3D3D808870F795772875FFA9171E
        FCC276DAA36D3379EA3BFD6EAB98371F007300D4113590E3C4941A565656E702
        E49CC9A294D2CF37CD84C3C3314D56B20C01C40BEA43DFCD0064714A3C36544A
        89D1CAE80C00A394BE4493B623A5442346161FAC55715487630380AC46AD46A9
        A6146812F5E87403425F822C46A1CF69DB96711A93949912A81A7911C013053C
        1E2736A9A1AAE60398D910A0139A66C244992981CA5189E7031895183EA5C038
        25428C730100B6EEDFC5098410F0835D524A240B330A981AB25801A352C3F3F1
        A26E7C4871EFDB30C089BB0B4A61F3E7EFFB47A09DB4342991C208F27033139B
        811A7A409C28463D550279ED5DBADD5F8931C21C15F6F6E5988788571BF0EA5B
        D4331E78861244716C0A80D76FE0DC3875E3B3C24E78C04EE98C135DE04435FC
        A80D376BE3621C26FCD3187BE4B1F62D6ACFA4803A55345E1C191FBD7189F5B5
        D573014CDA8EDB3FEC735F2A4CCE34A113C4A8827179DDB8B0BE76AECD012EAC
        AF71B97EC46F4DDF058B4DA8066A54D1302B7829E70600302B64B5A3365C5802
        27A861C1512B143F5FFD9F849A9325E0E267DF03881131D4589A023D00B81822
        672850D488C1500BCB55400B450DB1456D2846112760A8C5252BE0147574D13D
        30AD801983FFBCF38459DFFF2EBD111700F48B7A050265890A746214D5C50059
        8CFA29405C9A026A8E8851D466AEE7A10222982831D4A855A8EAD200B21A9E15
        1719CC0D003467A78C0962746DE1FE83BF9602D0B51D5DD350724B90A10B0700
        5ECA1DBA86CDA8F1D163E1D1B87E73846D55F3FF451686031AAA878787073F6E
        9596BD2EBB8570E75F9FE479FC17F137626AAFFF07369A740000000049454E44
        AE426082393634}
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 491
      Top = 26
      Width = 100
      Height = 41
      Cursor = crHandPoint
      Caption = 'Query files'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000006FA49444154785EA5576D6854D9197EEE9D993B33996C3E263B6BB6F9
        9C38C96E936D75E3622D160B2D5B0B45ECFE5A0BD85240B14B8A50E9D245B000
        95164B11A1B4AC502C809582745DA5B8D4A5451B934D883618F3FD6936D12493
        DC64E24CE6E3CEBDA7CF395C3A5B039B31FBC0C37BE6DC7BCFFB9EE7BCE79C77
        3421046EDCB881CF41907C937C8BFC0A594A1AA4494E901F901F1D3A7428816D
        E07F0170007C16EC934E3AC8338D8D8DE59148047EBF1FBAAE43C2711CE47239
        ACACAC607272320DE002F99BE70D44C72628E7319AC1D6D6D6DFEDDFBFBF9CC0
        A3478FD0DBDB8B3B77EE28767777637474149AA6E1C08103C1B6B6B65F0018E7
        B7DFFC4201B803F471C0989CE583070F3034392332C10A54BCD28E86AF7D0BF5
        E4CBBBBF01A33A8A856416FFEEBC2B12890476EDDA1501F00F8EF1368A855C82
        EBD7AFC3B531726D7A7A5AF4F4F4881B373FB2FF35382566D6D222977784230A
        B0C96CDE16537C766FCE141FDFED119D9D9D62666646708C2CF97539E656D49F
        59F30F63B158F9D2D212961249E78596D7F5BD2D0DA82B0BC081C08665E369CE
        4692369B7794FC8DE501C422650837B7C20A55606E6E0E2D2D2D0680BF71CC30
        B68017051C6F686868B56D1B4B2BA653F1E53DFADEBA2A001A9DE6E108900284
        720C4DC063031EB6433E1DADE1104610C5CACC984A4C266E35D5F83980F78A09
        20489E09068378FCF83182F5CDFAEE2FA9E091A4F3BC940B008D8226A9018E0E
        D8A0B51C9478753495FB91ABDB89F8400F64E21227A9C26FB933CCAD92F07B11
        C2B6A5BC8E88D6D640D735D9067F224FDA0E40032109A1DA7C1D4C0358649A4B
        E2E537E1A081D29A9D4A050E1904F056310ABC190804B0BABA0A5F55B5F662D0
        0726192C52CD50CD5900B44A7D4808B69551B01CF5149180178B155530A787D0
        D8D080783C2E03F8D35601ECA1FCF26594573771B642ADB77014956301D79BA0
        95A071A1DEA5080CD8818F51191E1DDE50193C1E0F88DDC528506D18062CCB42
        4928A864B755D269B055BEB10DC20D42A3655F2100760B19809481B9E0F3F0B9
        1150E31135C51C444179C40A2154D4344859B63B63AA21AD4B09C7EDA355548A
        91A9BCE3E689524C8D57EC363479EA857D3E1F36521944827E64F282BE1DCAE9
        AEB84B37A602DC1DB166E59553F8A1BE75AC1C0C2304225D4C0013D96C36160A
        85904830117754C0A36B30B379941B1E185E0F14A4165A21105A85F54C1E1B74
        5AC504F452C9357EE7A4930C600788D16296E076329944656525B2ABCBC8DA0E
        024C241D1A16521696372CF6D9A020103628B7A450CB34BD96C6229F335E04B8
        FE66C6423E994069C0402A9502D15D8C021F700BFEBAB6B6565EAD62229ED05E
        DD51891403C9D051226723CE596A9A808F33B41941DA72E0B8F2CB4328449619
        3A7A9752B0973F956700969797415C2D4681D14C26F377B90D791C6BAB5323C2
        E4ACAAFC1E94517E3F9DFAA5275B473A279D8333D65530A57C1E36BC88947831
        6A66905E89236268F07ABD585F5FEFE729F8CF62EF82F778767FB7BDBDDDC313
        511B1B19C4AB6DAFE1E5521FFC191D4F2977469D7A32BB01FA4780BA971A1EE5
        FCD3F52C66E326428FC71079A5054F9E3C01F16ED19711231DE0B9FDCBF9F9F9
        5F45A35168F3F318EEEBC18BB156C45EAA44B95FE73653C72E24A8384A7D3A24
        1E2E6FC0E40D5AF26414CDB19D90B5019774FCF0E1C3B79EAB20611067171717
        FF22AB9FBABA3AC46A5E42FC610F3E7938820933858C25B72520FDA6D81EA4E4
        77C7E7F074AC1F5167155F7DAD0D1B1B1B90097DF0E0C1E62B57AEFC793B25D9
        0F29DFEFC7C6C620EF87BD6FBC816809901EEEC5F47FBA30D47F0FC30F1F60B6
        FF13A4073A519B59C49EE646308155D2C93CAAA9A981699AE8EAEAFA515353D3
        F1A22BA20255DFDBE423D68142564894543030417504778A6AD3A1989D9D15F7
        EFDF17D7AE5D7B7AF9F265E7E6CD9B82F5A2387BF6ACE8EBEB13478F1E155CD2
        E35B54449BC1E5F82B4DF3C2C2C23B030303B738284646464087609F6AD301FA
        FBFBBB5905BDCBA3BCF6F6EDDB3F60DBBE78F1A27A7EF5EA5574747460DFBE7D
        EF4B253EB72C2F026132EADA20394F2E3050DA025849B7734BDF624514964549
        7D7D3D8E1C3982F3E7CFCB80DF999A9AFAE3A61C281226798FBC455E77DBF378
        06434343F769BECD2D6DCADA72787818972E5DC2C9932765D5FC072AF1934D0A
        3C2F544DB819FFD7490576F3BD8FC304AF7AF91B274E9CC0B973E71C06B9874A
        F483F0627BD05CEA9BE8820A8C73677C9FBBE1435E7295838383B870E1028E1D
        3BA69F3E7DFA3B005400FA3666AFBB81FBDD5C28255F202BC96AB2916C255F67
        42626D6DED67BC9412CC0BF527E7D4A953F29CE875C7F9E20A142C5978265CCA
        137194E6C76565653FA5D30A21C4FBDCCA5D203409763CFFFA171C7B54BB6035
        C502844B87B4952D50486C5701C7B5F6330E356C86800B2E87905BF3B3F82FD3
        1F0D5564576E1A0000000049454E44AE42608231383433}
      TabOrder = 4
      OnClick = AdvGlowButton1Click
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
    object ExitBtn: TAdvGlowButton
      Left = 592
      Top = 26
      Width = 100
      Height = 41
      Cursor = crHandPoint
      Caption = 'Close'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
      TabOrder = 5
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
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 250
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = qrMaster
    Left = 308
    Top = 135
  end
  object qrMaster: TFDQuery
    AfterPost = qrMasterAfterPost
    AfterDelete = qrMasterAfterDelete
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM SLFRREPORTS')
    Left = 337
    Top = 135
    object qrMasterFRNAME: TStringField
      FieldName = 'FRNAME'
      FixedChar = True
      Size = 60
    end
    object qrMasterPATHFR: TBlobField
      FieldName = 'PATHFR'
      Size = 1
    end
    object qrMasterUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 8
    end
    object qrMasterINPUTDT: TDateTimeField
      FieldName = 'INPUTDT'
    end
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    LookAndFeel.Kind = lfOffice11
    Root.BrowseFolder = bfDrives
    ShowInfoTips = True
    Left = 368
    Top = 136
  end
end
