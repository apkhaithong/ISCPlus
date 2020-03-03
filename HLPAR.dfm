object Help_AR: THelp_AR
  Left = 350
  Top = 120
  Width = 800
  Height = 570
  Caption = 'Help'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid_Loc: TRzDBGrid
    Left = 0
    Top = 64
    Width = 792
    Height = 472
    Align = alClient
    DataSource = DataSource1
    FixedColor = 16766894
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'LOCATCOD'
        Title.Caption = #3619#3627#3633#3626#3626#3634#3586#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCATNAM'
        Title.Caption = #3594#3639#3656#3629#3626#3634#3586#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCATDOC'
        Title.Caption = #3619#3627#3633#3626#3648#3629#3585#3626#3634#3619
        Visible = True
      end>
  end
  object DBGrid_off: TRzDBGrid
    Left = 0
    Top = 64
    Width = 792
    Height = 472
    Align = alClient
    DataSource = DataSource1
    FixedColor = 16766894
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'OFFICCOD'
        Title.Caption = #3619#3627#3633#3626#3614#3609#3633#3585#3591#3634#3609
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFFICNAM'
        Title.Caption = #3594#3639#3656#3629'-'#3609#3634#3617#3626#3585#3640#3621
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPART'
        Title.Caption = #3649#3612#3609#3585
        Visible = True
      end>
  end
  object DBGrid_Typ: TRzDBGrid
    Left = 0
    Top = 64
    Width = 792
    Height = 472
    Align = alClient
    DataSource = DataSource1
    FixedColor = 16766894
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PAYCODE'
        Title.Caption = #3619#3627#3633#3626#3594#3635#3619#3632
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAYDESC'
        Title.Caption = #3594#3635#3619#3632#3650#3604#3618
        Visible = True
      end>
  end
  object DBGrid_Bk: TRzDBGrid
    Left = 0
    Top = 64
    Width = 792
    Height = 472
    Align = alClient
    DataSource = DataSource1
    FixedColor = 16766894
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BKCODE'
        Title.Caption = #3619#3627#3633#3626#3608#3609#3634#3588#3634#3619
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BKNAME'
        Title.Caption = #3594#3639#3656#3629#3608#3609#3634#3588#3634#3619
        Visible = True
      end>
  end
  object DBGrid_Pb: TRzDBGrid
    Left = 0
    Top = 64
    Width = 792
    Height = 472
    Align = alClient
    DataSource = DataSource1
    FixedColor = 16766894
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BILLNO'
        Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3626#3619#3655#3592
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCAT'
        Title.Caption = #3626#3634#3586#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BILLDT'
        Title.Caption = #3623#3633#3609#3607#3637#3656#3651#3610#3648#3626#3619#3655#3592
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSCODE'
        Title.Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
        Visible = True
      end>
  end
  object DBGrid_Cus: TRzDBGrid
    Left = 0
    Top = 64
    Width = 792
    Height = 472
    Align = alClient
    DataSource = DataSource1
    FixedColor = 16766894
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid_CusDblClick
    OnKeyPress = DBGrid_CusKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CUSCOD'
        Title.Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SNAM'
        Title.Caption = #3588#3635#3609#3635#3627#3609#3657#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME1'
        Title.Caption = #3594#3639#3656#3629
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME2'
        Title.Caption = #3609#3634#3617#3626#3585#3640#3621
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BIRTHDT'
        Title.Caption = #3623#3633#3609#3648#3585#3636#3604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADDR1'
        Title.Caption = #3607#3637#3656#3629#3618#3641#3656
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADDR2'
        Title.Caption = #3606#3609#3609
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUMB'
        Title.Caption = #3605#3635#3610#3621
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUMP'
        Title.Caption = #3629#3635#3648#3616#3629
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROV'
        Title.Caption = #3592#3633#3591#3627#3623#3633#3604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZIP'
        Title.Caption = #3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELP'
        Title.Caption = #3650#3607#3619#3624#3633#3614#3607#3660
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAX'
        Title.Caption = #3649#3615#3655#3585#3595#3660
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDIT'
        Title.Caption = #3648#3588#3619#3604#3636#3605
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTACT'
        Title.Caption = #3612#3641#3657#3605#3636#3604#3605#3656#3629
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISCT'
        Title.Caption = #3626#3656#3623#3609#3621#3604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALLEV'
        Title.Caption = #3619#3632#3604#3633#3610#3586#3634#3618
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIMIT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEBT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LSALE'
        Title.Caption = #3623#3633#3609#3586#3634#3618#3621#3656#3634#3626#3640#3604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERVFL'
        Title.Caption = #3626#3606#3634#3609#3632#3610#3619#3636#3585#3634#3619
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LPAID'
        Title.Caption = #3592#3656#3634#3618#3621#3656#3634#3626#3640#3604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARACCT'
        Title.Caption = #3610#3633#3597#3594#3637#3621#3641#3585#3627#3609#3637#3657
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID'
        Title.Caption = #3612#3641#3657#3651#3594#3657#3591#3634#3609
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 64
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 6
    object Bevel1: TBevel
      Left = 2
      Top = 2
      Width = 788
      Height = 60
      Align = alTop
    end
    object Label1: TLabel
      Left = 66
      Top = 19
      Width = 46
      Height = 16
      Caption = #3588#3657#3609#3627#3634#3605#3634#3617
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TRzRapidFireButton
      Left = 258
      Top = 8
      Width = 80
      Height = 43
      Cursor = crHandPoint
      Caption = #3588#3657#3609#3627#3634
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        080000000000000400000000000000000000000100000001000000000000FFFF
        99000000FF00DDDDDD00EEEEEE00FFFFCC00FFFFFF00CCCCCC0022222200CCCC
        6600CC993300444444003333FF0099999900FFFF660066666600777777000000
        1100AAAAAA0011111100CCCCFF00996600008888880099CCFF0099996600BBBB
        BB0099330000663300000000CC0055555500CCFFFF00CCCC990099CC9900CC99
        99000000AA000000440099990000FFCC66006666330000006600666699000000
        33003333330000002200001100006666000099FFFF0099993300FFCC3300CCCC
        33003366FF00CC990000CCFF660000009900FFCCFF0099663300FFCC99003333
        6600CC99CC009999CC000000DD0099CCCC0000007700000088000000EE00FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000414141414141
        4141414141414141000000000000000041414141414141414141414141414141
        4141414100000000000000000000000000004141414141414141414141414141
        414100000000001D1020213B2021160B00000041414141414141414141414141
        410000131603040403140304361E0404060D0000414141414141414141414100
        1113070403030307030412100B0B0B390F3D0700414141414141414141410000
        0D040303070303282A2C2618091F010918261100004141414141414141000019
        03070307191D0B09010101010101010101012513004141414141414141001903
        0307070F18010101010101010101010101050A01110041414141414100100303
        07121801010101010101010101010101010E2405100041414141414100040307
        0D090101010101010101010101010105011A0105120041414141414108040328
        01010E060501010101010101010101341A090114100041414141414108060D2F
        0101050606010E01010101010501371A09010304080041414141414100061305
        010105060606060105050538241B330101070416004141414141414100120830
        0101010406060606051F151B0A010101071E3A00004141414141414100000005
        31150A0A0A0A152D1B1509010101031404160000414141414141414141000012
        06010E090A0A0E2505010105030704072A000041414141414141414141000000
        19040405010501050103030304070B0000004141414141414141414141000000
        000F07040414040414060D0F0000000041414141414141414141414141410000
        0000000008080808130000000000004141414141414141414141414141414100
        0000000000000000000000080403000000004141414141414141414141414141
        41410000000000000041410003060F0000000041414141414141414141414141
        4141414141414141414100231D05060027000041414141414141414141414141
        414141414141414141412302000B2C0002290000414141414141414141414141
        414141414141414141412B021C3E270202020000414141414141414141414141
        41414141414141414141003C0C02020202023500004141414141414141414141
        4141414141414141414141290C3202020202022B004141414141414141414141
        41414141414141414141410022170C0202020202000041414141414141414141
        414141414141414141414141000C2E0202020202000041414141414141414141
        414141414141414141414141002217170202021C000041414141414141414141
        41414141414141414141414141000C1E17020211000041414141414141414141
        41414141414141414141414141003F400C1C1100004141414141414141414141
        4141414141414141414141414141000000000000414141414141}
      ParentFont = False
      OnClick = BitBtn1Click
    end
    object Edit1: TEdit
      Left = 117
      Top = 18
      Width = 138
      Height = 21
      Color = clWhite
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 342
      Top = 18
      Width = 56
      Height = 25
      Cursor = crHandPoint
      Caption = #3605#3585#3621#3591
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 1
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 401
      Top = 18
      Width = 56
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #3618#3585#3648#3621#3636#3585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 2
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object QHlp: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    UpdateOptions.RequestLive = True
    Left = 249
    Top = 99
  end
  object DataSource1: TDataSource
    DataSet = QHlp
    Left = 281
    Top = 98
  end
end
