object FPoinv2: TFPoinv2
  Left = 483
  Top = 189
  BorderIcons = []
  Caption = 'Progress by Max-Min'
  ClientHeight = 403
  ClientWidth = 472
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 403
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
      Width = 470
      Height = 80
      Align = alTop
      Shape = bsFrame
    end
    object Label9: TLabel
      Left = 49
      Top = 17
      Width = 151
      Height = 13
      Caption = #3594#3656#3623#3591#3627#3656#3634#3591#3585#3634#3619#3626#3633#3656#3591#3595#3639#3657#3629#3649#3605#3656#3621#3632#3588#3619#3633#3657#3591' (O/C)'
      Font.Charset = THAI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 58
      Width = 183
      Height = 13
      Caption = #3588#3656#3634#3649#3609#3623#3650#3609#3657#3617#3588#3623#3634#3617#3605#3657#3629#3591#3585#3634#3619#3605#3621#3634#3604' (0.5-1.5)'
      Font.Charset = THAI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 43
      Top = 37
      Width = 157
      Height = 13
      Caption = #3594#3656#3623#3591#3627#3656#3634#3591#3605#3633#3657#3591#3649#3605#3656#3626#3633#3656#3591#3595#3639#3657#3629#3592#3609#3619#3633#3610#3586#3629#3591' (L/T)'
      Font.Charset = THAI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 387
      Width = 470
      Height = 15
      Align = alBottom
      TabOrder = 0
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 81
      Width = 470
      Height = 306
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
        DataController.DataSource = Dm_Po.SoQTemp
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
            Kind = skSum
            Position = spFooter
            Column = cxDBGridTranONHN
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Position = spFooter
            Column = cxDBGridTranORDER
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranONHN
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranORDER
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
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranONHN
          end
          item
            Format = '##,##0.00'
            Kind = skSum
            Column = cxDBGridTranORDER
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
          Options.Editing = False
          Width = 126
        end
        object cxDBGridTranDESC: TcxGridDBColumn
          Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
          DataBinding.FieldName = 'DESC'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 183
        end
        object cxDBGridTranONHN: TcxGridDBColumn
          Caption = #3619#3634#3588#3634
          DataBinding.FieldName = 'ONHN'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 65
        end
        object cxDBGridTranORDER: TcxGridDBColumn
          Caption = #3592#3635#3609#3623#3609
          DataBinding.FieldName = 'ORDER'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 81
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxDBGridTran
      end
    end
    object Edit8: TcxTextEdit
      Left = 208
      Top = 13
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 2
      Width = 74
    end
    object Edit3: TcxTextEdit
      Left = 208
      Top = 33
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 3
      Width = 74
    end
    object Edit4: TcxTextEdit
      Left = 208
      Top = 53
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LiquidSky'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'LiquidSky'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'LiquidSky'
      TabOrder = 4
      Width = 74
    end
    object BitBtn1: TAdvGlowButton
      Left = 284
      Top = 14
      Width = 100
      Height = 59
      Caption = #3611#3619#3632#3617#3623#3621#3612#3621
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
      TabOrder = 5
      OnClick = BitBtn1Click
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
    object BitBtn3: TcxButton
      Left = 390
      Top = 25
      Width = 59
      Height = 23
      Cursor = crHandPoint
      Hint = 'Choose data'
      Caption = #3605#3585#3621#3591
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object BitBtn2: TcxButton
      Left = 390
      Top = 49
      Width = 59
      Height = 23
      Cursor = crHandPoint
      Hint = 'Cancel'
      Caption = #3618#3585#3648#3621#3636#3585
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
  end
  object QPoinv1: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM PO_INVOI')
    Left = 266
    Top = 152
    object QPoinv1PONO: TStringField
      FieldName = 'PONO'
      Size = 12
    end
    object QPoinv1APCODE: TStringField
      FieldName = 'APCODE'
      Size = 12
    end
    object QPoinv1PODATE: TDateField
      FieldName = 'PODATE'
    end
    object QPoinv1POLOCAT: TStringField
      FieldName = 'POLOCAT'
      Size = 5
    end
    object QPoinv1TRANF: TStringField
      FieldName = 'TRANF'
      Size = 1
    end
    object QPoinv1VAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1DISCT: TFloatField
      FieldName = 'DISCT'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1NETCOST: TFloatField
      FieldName = 'NETCOST'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1VATAMT: TFloatField
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1TOTCOST: TFloatField
      FieldName = 'TOTCOST'
      DisplayFormat = '#,##0.00'
    end
    object QPoinv1OFFICCOD: TStringField
      FieldName = 'OFFICCOD'
      Size = 5
    end
    object QPoinv1COSTFLG: TStringField
      FieldName = 'COSTFLG'
      Size = 1
    end
    object QPoinv1USERID: TStringField
      FieldName = 'USERID'
      Size = 8
    end
    object QPoinv1TIME1: TDateTimeField
      FieldName = 'TIME1'
    end
    object QPoinv1CANCELID: TStringField
      FieldName = 'CANCELID'
      Size = 8
    end
    object QPoinv1CANDAT: TDateTimeField
      FieldName = 'CANDAT'
    end
    object QPoinv1POSTGLDT: TDateTimeField
      FieldName = 'POSTGLDT'
    end
    object QPoinv1Updatestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Updatestatus'
      Calculated = True
    end
    object QPoinv1REFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object QPoinv1POTYPE: TStringField
      FieldName = 'POTYPE'
      Size = 2
    end
    object QPoinv1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QPoinv1DISCTYP: TStringField
      FieldName = 'DISCTYP'
      Size = 1
    end
    object QPoinv1DUERECV: TDateField
      FieldName = 'DUERECV'
    end
    object QPoinv1CHCODE: TStringField
      FieldName = 'CHCODE'
      Size = 5
    end
    object QPoinv1CHRATE: TFloatField
      FieldName = 'CHRATE'
    end
    object QPoinv1DUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object QPoinv1TPCODE: TStringField
      FieldName = 'TPCODE'
      Size = 5
    end
    object QPoinv1RLCODE: TStringField
      FieldName = 'RLCODE'
      Size = 5
    end
    object QPoinv1MEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
      Size = 1
    end
    object QPoinv1CREDTM: TFloatField
      FieldName = 'CREDTM'
    end
    object QPoinv1PRCFLG: TStringField
      FieldName = 'PRCFLG'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = QPoinv1
    Left = 298
    Top = 152
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
    Left = 24
    Top = 96
  end
end
