﻿object HelpSvmst: THelpSvmst
  Left = 400
  Top = 250
  Width = 543
  Height = 329
  Caption = 'Help '#3649#3615#3657#3617#3611#3619#3632#3623#3633#3605#3636#3619#3606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 535
    Height = 243
    Align = alTop
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 292
    Top = 218
    Width = 27
    Height = 13
    Caption = #3588#3657#3609#3627#3634
  end
  object DBGrid_Sv: TDBGrid
    Left = 11
    Top = 13
    Width = 510
    Height = 164
    Color = 16777196
    Ctl3D = False
    DataSource = SoHlp
    FixedColor = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid_SvDblClick
    OnKeyPress = DBGrid_SvKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'STRNO'
        Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3606#3633#3591
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENGNO'
        Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGNO'
        Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3607#3632#3648#3610#3637#3618#3609
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TYPE'
        Title.Caption = #3619#3627#3633#3626#3618#3637#3656#3627#3657#3629
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSCOD'
        Title.Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME1'
        Title.Caption = #3594#3639#3656#3629
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME2'
        Title.Caption = #3609#3634#3617#3626#3585#3640#3621
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VIPCARD'
        Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3610#3633#3605#3619' V.I.P'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 322
    Top = 210
    Width = 112
    Height = 21
    Color = clWhite
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 436
    Top = 201
    Width = 37
    Height = 32
    TabOrder = 2
    OnClick = BitBtn1Click
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
  end
  object RadioGp1: TRadioGroup
    Left = 10
    Top = 184
    Width = 278
    Height = 49
    Caption = #3588#3657#3609#3627#3634#3605#3634#3617
    Color = clSilver
    Columns = 3
    Ctl3D = False
    Items.Strings = (
      #3648#3621#3586#3606#3633#3591
      #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
      #3648#3621#3586#3607#3632#3648#3610#3637#3618#3609
      #3594#3639#3656#3629
      #3609#3634#3617#3626#3585#3640#3621
      #3648#3621#3586#3610#3633#3605#3619' V.I.P')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 0
    Top = 246
    Width = 535
    Height = 49
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 4
    object OkBtn: TBitBtn
      Left = 14
      Top = 5
      Width = 50
      Height = 40
      Cursor = crHandPoint
      TabOrder = 0
      Kind = bkOK
      Layout = blGlyphTop
    end
    object BitBtn3: TBitBtn
      Left = 427
      Top = 5
      Width = 49
      Height = 40
      Cursor = crHandPoint
      TabOrder = 1
      Kind = bkNo
      Layout = blGlyphTop
    end
  end
  object QHlp: TFDQuery
    CachedUpdates = True
    ConnectionName = 'SV_DBMS'
    UpdateOptions.RequestLive = True
    SQL.Strings = (
      'SELECT * FROM VIEW_SVMAST')
    Left = 76
    Top = 156
  end
  object SoHlp: TDataSource
    DataSet = QHlp
    OnStateChange = SoHlpStateChange
    Left = 104
    Top = 156
  end
end
