object Fhlpbrinv: TFhlpbrinv
  Left = 250
  Top = 95
  BorderStyle = bsDialog
  Caption = #3626#3629#3610#3606#3634#3617#3626#3636#3609#3588#3657#3634#3605#3634#3617#3626#3636#3609#3588#3657#3634
  ClientHeight = 516
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 516
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
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1119
      Height = 514
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
      ClientRectBottom = 510
      ClientRectLeft = 4
      ClientRectRight = 1115
      ClientRectTop = 31
      object cxTabSheet1: TcxTabSheet
        Caption = #3626#3629#3610#3606#3634#3617#3629#3632#3652#3627#3621#3656
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 0
        ParentFont = False
        object cxGrid1: TcxGrid
          Left = 0
          Top = 73
          Width = 1111
          Height = 406
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
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##,##0.00'
                Kind = skSum
                FieldName = 'PRICE1'
                Column = cxGrid1DBTableView1PRICE1
                DisplayText = #3612#3621#3619#3623#3617#3619#3634#3586#3634#3618' 1'
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
            OptionsView.Footer = True
            OptionsView.ShowColumnFilterButtons = sfbAlways
            object cxGrid1DBTableView1LOCAT: TcxGridDBColumn
              DataBinding.FieldName = 'LOCAT'
              HeaderAlignmentHorz = taCenter
              Width = 44
            end
            object cxGrid1DBTableView1GROUP1: TcxGridDBColumn
              DataBinding.FieldName = 'GROUP1'
              HeaderAlignmentHorz = taCenter
              Width = 63
            end
            object cxGrid1DBTableView1PARTNO: TcxGridDBColumn
              DataBinding.FieldName = 'PARTNO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1YEAR1: TcxGridDBColumn
              DataBinding.FieldName = 'YEAR1'
              HeaderAlignmentHorz = taCenter
              Width = 43
            end
            object cxGrid1DBTableView1DESC1: TcxGridDBColumn
              DataBinding.FieldName = 'DESC1'
              HeaderAlignmentHorz = taCenter
              Width = 241
            end
            object cxGrid1DBTableView1PRICE1: TcxGridDBColumn
              DataBinding.FieldName = 'PRICE1'
              HeaderAlignmentHorz = taCenter
              Width = 84
            end
            object cxGrid1DBTableView1PRICE2: TcxGridDBColumn
              DataBinding.FieldName = 'PRICE2'
              HeaderAlignmentHorz = taCenter
              Width = 83
            end
            object cxGrid1DBTableView1PRICE3: TcxGridDBColumn
              DataBinding.FieldName = 'PRICE3'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1PRICE4: TcxGridDBColumn
              DataBinding.FieldName = 'PRICE4'
              HeaderAlignmentHorz = taCenter
              Width = 81
            end
            object cxGrid1DBTableView1SHELF: TcxGridDBColumn
              DataBinding.FieldName = 'SHELF'
              HeaderAlignmentHorz = taCenter
              Width = 73
            end
            object cxGrid1DBTableView1CODE_T: TcxGridDBColumn
              DataBinding.FieldName = 'CODE_T'
              HeaderAlignmentHorz = taCenter
              Width = 125
            end
            object cxGrid1DBTableView1ALO: TcxGridDBColumn
              DataBinding.FieldName = 'ALO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1DBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid1DBTableView2Column1: TcxGridDBColumn
            end
            object cxGrid1DBTableView2Column2: TcxGridDBColumn
            end
            object cxGrid1DBTableView2Column3: TcxGridDBColumn
            end
            object cxGrid1DBTableView2Column4: TcxGridDBColumn
            end
          end
          object cxGrid1Level1: TcxGridLevel
            Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
            GridView = cxGrid1DBTableView1
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1111
          Height = 73
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 1
          object Label2: TLabel
            Left = 40
            Top = 16
            Width = 28
            Height = 16
            Caption = #3626#3634#3586#3634
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 340
            Top = 42
            Width = 79
            Height = 16
            Caption = #3626#3605#3655#3629#3585' '#3603' '#3648#3604#3639#3629#3609
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 16
            Top = 41
            Width = 52
            Height = 16
            Caption = #3588#3657#3609#3627#3634#3605#3634#3617
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Edit3: TcxTextEdit
            Left = 192
            Top = 13
            ParentFont = False
            Properties.ReadOnly = True
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
            Width = 273
          end
          object Edit1: TcxButtonEdit
            Left = 72
            Top = 13
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = Edit1PropertiesButtonClick
            Properties.OnChange = Edit1PropertiesChange
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
          object SpinEdit1: TcxSpinEdit
            Left = 424
            Top = 38
            ParentFont = False
            Properties.MaxValue = 12.000000000000000000
            Properties.MinValue = 1.000000000000000000
            Style.Font.Charset = THAI_CHARSET
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
            TabOrder = 2
            Value = 1
            Width = 41
          end
          object Edit2: TcxButtonEdit
            Left = 192
            Top = 38
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = Edit2PropertiesButtonClick
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
            Width = 121
          end
          object RadioGroup1: TcxComboBox
            Left = 72
            Top = 38
            ParentFont = False
            Properties.Items.Strings = (
              #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
              #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634)
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
            Text = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
            Width = 121
          end
          object SrchBtn1: TAdvGlowButton
            Left = 467
            Top = 13
            Width = 100
            Height = 34
            Cursor = crHandPoint
            Caption = #3588#3657#3609#3627#3634#3586#3657#3629#3617#3641#3621
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
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
            TabOrder = 5
            OnClick = SrchBtn1Click
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
          object CloseBtn: TAdvGlowButton
            Left = 569
            Top = 13
            Width = 100
            Height = 34
            Cursor = crHandPoint
            Caption = #3585#3621#3633#3610#3627#3609#3657#3634#3627#3621#3633#3585
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
            TabOrder = 6
            OnClick = CloseBtnClick
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
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #3626#3629#3610#3606#3634#3617#3588#3656#3634#3610#3619#3636#3585#3634#3619
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 43
          Width = 1111
          Height = 438
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
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DataSource2
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '##,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBTableView1SVPRIC
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridDBTableView1SVPRIC
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##,##0.00'
                Kind = skSum
                FieldName = 'PRICE1'
                DisplayText = #3612#3621#3619#3623#3617#3619#3634#3586#3634#3618' 1'
              end
              item
                Format = '##,##0.00'
                Kind = skSum
                Column = cxGridDBTableView1SVPRIC
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = #3652#3617#3656#3614#3610#3586#3657#3629#3617#3641#3621#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3649#3626#3604#3591
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView1MDLCOD: TcxGridDBColumn
              DataBinding.FieldName = 'MDLCOD'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBTableView1SVCODE: TcxGridDBColumn
              DataBinding.FieldName = 'SVCODE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBTableView1DESCP: TcxGridDBColumn
              DataBinding.FieldName = 'DESCP'
              HeaderAlignmentHorz = taCenter
              Width = 274
            end
            object cxGridDBTableView1HOUR: TcxGridDBColumn
              DataBinding.FieldName = 'HOUR'
              HeaderAlignmentHorz = taCenter
              Width = 53
            end
            object cxGridDBTableView1MINUTE: TcxGridDBColumn
              DataBinding.FieldName = 'MINUTE'
              HeaderAlignmentHorz = taCenter
              Width = 43
            end
            object cxGridDBTableView1FRT: TcxGridDBColumn
              DataBinding.FieldName = 'FRT'
              HeaderAlignmentHorz = taCenter
              Width = 33
            end
            object cxGridDBTableView1SVPRIC: TcxGridDBColumn
              DataBinding.FieldName = 'SVPRIC'
              HeaderAlignmentHorz = taCenter
              Width = 96
            end
          end
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGridDBColumn13: TcxGridDBColumn
            end
            object cxGridDBColumn14: TcxGridDBColumn
            end
            object cxGridDBColumn15: TcxGridDBColumn
            end
            object cxGridDBColumn16: TcxGridDBColumn
            end
          end
          object cxGridLevel1: TcxGridLevel
            Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
            GridView = cxGridDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1111
          Height = 43
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 1
          object Label4: TLabel
            Left = 44
            Top = 15
            Width = 28
            Height = 16
            Caption = #3619#3640#3656#3609#3619#3606
          end
          object edModel: TcxButtonEdit
            Left = 80
            Top = 12
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = edModelPropertiesButtonClick
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
        end
      end
    end
  end
  object QHlpbinv: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT  A.PARTNO,A.LOCAT,A.YEAR1,A.DESC1,A.GROUP1,A.PRICE1,'
      'A.PRICE2,A.PRICE3,A.PRICE4,A.SHELF,A.CODE_T,B.ALLO_12  AS ALO'
      'FROM INVENTOR A,INVANLS B'
      'WHERE A.PARTNO=B.PARTNO AND A.LOCAT=B.LOCAT AND '
      'A.YEAR1 = B.YEAR1 ')
    Left = 752
    Top = 108
    object QHlpbinvPARTNO: TStringField
      DisplayLabel = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      FieldName = 'PARTNO'
      FixedChar = True
    end
    object QHlpbinvLOCAT: TStringField
      DisplayLabel = #3626#3634#3586#3634
      FieldName = 'LOCAT'
      FixedChar = True
      Size = 5
    end
    object QHlpbinvYEAR1: TStringField
      DisplayLabel = #3611#3637
      FieldName = 'YEAR1'
      FixedChar = True
      Size = 4
    end
    object QHlpbinvDESC1: TStringField
      DisplayLabel = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
      FieldName = 'DESC1'
      FixedChar = True
      Size = 45
    end
    object QHlpbinvGROUP1: TStringField
      DisplayLabel = #3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634
      FieldName = 'GROUP1'
      FixedChar = True
      Size = 5
    end
    object QHlpbinvPRICE1: TFloatField
      DisplayLabel = #3619#3634#3588#3634#3586#3634#3618'1'
      FieldName = 'PRICE1'
      DisplayFormat = '##,##0.00'
    end
    object QHlpbinvPRICE2: TFloatField
      DisplayLabel = #3619#3634#3588#3634#3586#3634#3618'2'
      FieldName = 'PRICE2'
      DisplayFormat = '##,##0.00'
    end
    object QHlpbinvPRICE3: TFloatField
      DisplayLabel = #3619#3634#3588#3634#3586#3634#3618'3'
      FieldName = 'PRICE3'
      DisplayFormat = '##,##0.00'
    end
    object QHlpbinvPRICE4: TFloatField
      DisplayLabel = #3619#3634#3588#3634#3586#3634#3618'4'
      FieldName = 'PRICE4'
      DisplayFormat = '##,##0.00'
    end
    object QHlpbinvSHELF: TStringField
      DisplayLabel = #3607#3637#3656#3648#3585#3655#3610
      FieldName = 'SHELF'
      FixedChar = True
      Size = 15
    end
    object QHlpbinvCODE_T: TStringField
      DisplayLabel = #3626#3636#3609#3588#3657#3634#3649#3607#3609
      FieldName = 'CODE_T'
      FixedChar = True
    end
    object QHlpbinvALO: TFloatField
      DisplayLabel = #3618#3629#3604#3607#3637#3656#3592#3656#3634#3618#3652#3604#3657
      FieldName = 'ALO'
    end
  end
  object DataSource1: TDataSource
    DataSet = QHlpbinv
    Left = 784
    Top = 108
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 812
    Top = 108
  end
  object SaveDialog1: TSaveDialog
    Left = 840
    Top = 108
  end
  object DataSource2: TDataSource
    DataSet = qrLabor
    Left = 788
    Top = 59
  end
  object qrLabor: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM TBLABOR')
    Left = 817
    Top = 59
    object qrLaborSVCODE: TStringField
      DisplayLabel = #3619#3627#3633#3626#3610#3619#3636#3585#3634#3619
      FieldName = 'SVCODE'
      FixedChar = True
      Size = 15
    end
    object qrLaborMDLCOD: TStringField
      DisplayLabel = #3619#3627#3633#3626#3619#3640#3656#3609
      FieldName = 'MDLCOD'
      FixedChar = True
    end
    object qrLaborDESCP: TStringField
      DisplayLabel = #3619#3634#3618#3585#3634#3619
      FieldName = 'DESCP'
      FixedChar = True
      Size = 80
    end
    object qrLaborHOUR: TIntegerField
      DisplayLabel = #3594#3633#3656#3623#3650#3617#3591
      FieldName = 'HOUR'
    end
    object qrLaborMINUTE: TIntegerField
      DisplayLabel = #3609#3634#3607#3637
      FieldName = 'MINUTE'
    end
    object qrLaborFRT: TFloatField
      DisplayLabel = 'Frt.'
      FieldName = 'FRT'
    end
    object qrLaborSVPRIC: TFloatField
      DisplayLabel = #3629#3633#3605#3619#3634#3588#3656#3634#3610#3619#3636#3585#3634#3619
      FieldName = 'SVPRIC'
      DisplayFormat = '##,##0.00'
    end
  end
end
