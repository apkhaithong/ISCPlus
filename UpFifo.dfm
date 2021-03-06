﻿object Fupfifo: TFupfifo
  Left = 511
  Top = 195
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #3588#3635#3609#3623#3603#3618#3629#3604#3588#3591#3648#3627#3621#3639#3629' FIFO '#3618#3657#3629#3609#3627#3621#3633#3591
  ClientHeight = 324
  ClientWidth = 446
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
  object Gauge1: TGauge
    Left = 72
    Top = 207
    Width = 362
    Height = 18
    ForeColor = clBlue
    Progress = 0
  end
  object Gauge2: TGauge
    Left = 71
    Top = 228
    Width = 363
    Height = 17
    ForeColor = 4194432
    Kind = gkVerticalBar
    Progress = 0
  end
  object Label9: TLabel
    Left = 43
    Top = 229
    Width = 24
    Height = 16
    Caption = #3626#3634#3586#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 44
    Top = 207
    Width = 23
    Height = 16
    Caption = #3648#3604#3639#3629#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ProgressBar1: TRzProgressBar
    Left = 72
    Top = 183
    Width = 362
    Height = 19
    BarStyle = bsLED
    BorderOuter = fsFlat
    BorderWidth = 0
    InteriorOffset = 1
    PartsComplete = 0
    Percent = 0
    ShowPercent = False
    TotalParts = 0
  end
  object Label10: TRzLabel
    Left = 43
    Top = 185
    Width = 26
    Height = 16
    Caption = #3626#3636#3609#3588#3657#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    BlinkIntervalOff = 0
    BlinkIntervalOn = 0
  end
  object Label4: TRzLabel
    Left = 193
    Top = 256
    Width = 90
    Height = 13
    Caption = 'Successful.......'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    BlinkIntervalOff = 0
    BlinkIntervalOn = 0
    TextStyle = tsRaised
  end
  object GroupBox1: TRzGroupBox
    Left = 0
    Top = 279
    Width = 446
    Height = 45
    Align = alBottom
    BorderInner = fsFlat
    BorderOuter = fsFlat
    FlatColor = clBlack
    GroupStyle = gsStandard
    TabOrder = 0
    object CheckBox2: TRzCheckBox
      Left = 16
      Top = 15
      Width = 116
      Height = 18
      Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634#3607#3640#3585#3619#3634#3618#3585#3634#3619
      FrameColor = 8409372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HighlightColor = 2203937
      HotTrack = True
      HotTrackColor = 3983359
      HotTrackColorType = htctActual
      ParentFont = False
      State = cbUnchecked
      TabOrder = 0
      OnClick = CheckBox2Click
    end
    object CheckBox3: TRzCheckBox
      Left = 141
      Top = 15
      Width = 81
      Height = 19
      Caption = #3648#3619#3637#3618#3585#3607#3640#3585#3626#3634#3586#3634
      FrameColor = 8409372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HighlightColor = 2203937
      HotTrack = True
      HotTrackColor = 3983359
      HotTrackColorType = htctActual
      ParentFont = False
      State = cbUnchecked
      TabOrder = 1
      OnClick = CheckBox3Click
    end
  end
  object OkBtn: TRzBitBtn
    Left = 280
    Top = 291
    Cursor = crHandPoint
    ModalResult = 1
    Caption = #3605#3585#3621#3591
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HighlightColor = 16026986
    HotTrackColor = 3983359
    ParentFont = False
    TabOrder = 1
    OnClick = OkBtnClick
    NumGlyphs = 2
  end
  object CloseBtn: TRzBitBtn
    Left = 356
    Top = 291
    Cursor = crHandPoint
    Caption = #3618#3585#3648#3621#3636#3585
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HighlightColor = 16026986
    HotTrackColor = 3983359
    ParentFont = False
    TabOrder = 2
    OnClick = CloseBtnClick
    NumGlyphs = 2
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 446
    Height = 83
    Align = alTop
    Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3611#3637'/'#3648#3604#3639#3629#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TRzLabel
      Left = 90
      Top = 26
      Width = 40
      Height = 16
      Caption = #3592#3634#3585#3648#3604#3639#3629#3609
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object Label7: TRzLabel
      Left = 276
      Top = 30
      Width = 35
      Height = 16
      Caption = #3606#3638#3591#3648#3604#3639#3629#3609
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object Label2: TRzLabel
      Left = 88
      Top = 50
      Width = 47
      Height = 16
      Caption = #3592#3634#3585#3611#3637' '#3588'.'#3624'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object Label8: TRzLabel
      Left = 276
      Top = 54
      Width = 42
      Height = 16
      Caption = #3606#3638#3591#3611#3637' '#3588'.'#3624'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object SpinEdit1: TSpinEdit
      Left = 144
      Top = 22
      Width = 82
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object SpinEdit2: TSpinEdit
      Left = 144
      Top = 51
      Width = 82
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object SpinEdit3: TSpinEdit
      Left = 320
      Top = 23
      Width = 75
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object SpinEdit4: TSpinEdit
      Left = 320
      Top = 52
      Width = 75
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 83
    Width = 446
    Height = 95
    Align = alTop
    Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3585#3634#3619#3588#3635#3609#3623#3603
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label3: TRzLabel
      Left = 23
      Top = 29
      Width = 45
      Height = 16
      Caption = #3619#3627#3633#3626#3626#3634#3586#3634
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object Label5: TRzLabel
      Left = 5
      Top = 52
      Width = 64
      Height = 16
      Caption = #3592#3634#3585#3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object Label6: TRzLabel
      Left = 225
      Top = 56
      Width = 59
      Height = 16
      Caption = #3606#3638#3591#3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object Button1: TRzRapidFireButton
      Left = 158
      Top = 27
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000230B0000230B00000001000000010000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E3DE56
        E1E1E1E1E1DFACEEE8E8E8E8E8AC8181818181818181ACEEE8E8E8E8E3E2EBE3
        E3E3E3E3DEE1ECE2E3E8E8E8AC81EBACACACACACAC8181E2ACE8E8E3DEE3D7E3
        8282ACEED7E3DF56E2EEE8AC81ACD7ACACACACEED7AC8181E2EEE8ACE3D78210
        3482343482D7E3ECECACE881ACD7AC8181AC8181ACD7AC8181ACE3E3D7580A10
        82D75E0A0A82D7E3E181AC81D7AC8181ACD7818181ACD7AC8181E3D7820A3434
        345E3434340AACE3815681D7AC818181818181818181ACAC8181E3D734343434
        5EE33434343458D7ACE181D78181818181AC81818181ACD7AC81E3E334343434
        5ED7830A343434EEE3E181AC8181818181D7AC81818181EEAC81E3AD34343434
        3488D75E343434EEE3E181AD8181818181ACD781818181EEAC81E3E334343434
        340AACD7343434D7E35681AC818181818181ACD7818181D7AC81E3D75F345EE3
        580A5ED75E105ED7ACED81D7818181ACAC8181D7818181D7ACEDE3EEB33B5ED7
        D789D7D73435D7E381E381EEAC8181D7D7ACD7D78181D7AC81ACE8E3D7E65F83
        E3EEE35F5FADD7E6DEE8E881D7AC81ACACEEAC8181ADD7AC81E8E8E3E3D7D7B3
        89898989D7D7E3DEEEE8E8E881D7D7ACACACACACD7D7AC81EEE8E8E8E3ADE3D7
        D7D7D7D7E3ADACEEE8E8E8E8E88181D7D7D7D7D7818181EEE8E8E8E8E8E8E3AD
        ADADE6ADE3E3E8E8E8E8E8E8E8E8AC8181818181ACACE8E8E8E8}
      NumGlyphs = 2
      OnClick = Button1Click
    end
    object Button2: TRzRapidFireButton
      Left = 196
      Top = 52
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000230B0000230B00000001000000010000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E3DE56
        E1E1E1E1E1DFACEEE8E8E8E8E8AC8181818181818181ACEEE8E8E8E8E3E2EBE3
        E3E3E3E3DEE1ECE2E3E8E8E8AC81EBACACACACACAC8181E2ACE8E8E3DEE3D7E3
        8282ACEED7E3DF56E2EEE8AC81ACD7ACACACACEED7AC8181E2EEE8ACE3D78210
        3482343482D7E3ECECACE881ACD7AC8181AC8181ACD7AC8181ACE3E3D7580A10
        82D75E0A0A82D7E3E181AC81D7AC8181ACD7818181ACD7AC8181E3D7820A3434
        345E3434340AACE3815681D7AC818181818181818181ACAC8181E3D734343434
        5EE33434343458D7ACE181D78181818181AC81818181ACD7AC81E3E334343434
        5ED7830A343434EEE3E181AC8181818181D7AC81818181EEAC81E3AD34343434
        3488D75E343434EEE3E181AD8181818181ACD781818181EEAC81E3E334343434
        340AACD7343434D7E35681AC818181818181ACD7818181D7AC81E3D75F345EE3
        580A5ED75E105ED7ACED81D7818181ACAC8181D7818181D7ACEDE3EEB33B5ED7
        D789D7D73435D7E381E381EEAC8181D7D7ACD7D78181D7AC81ACE8E3D7E65F83
        E3EEE35F5FADD7E6DEE8E881D7AC81ACACEEAC8181ADD7AC81E8E8E3E3D7D7B3
        89898989D7D7E3DEEEE8E8E881D7D7ACACACACACD7D7AC81EEE8E8E8E3ADE3D7
        D7D7D7D7E3ADACEEE8E8E8E8E88181D7D7D7D7D7818181EEE8E8E8E8E8E8E3AD
        ADADE6ADE3E3E8E8E8E8E8E8E8E8AC8181818181ACACE8E8E8E8}
      NumGlyphs = 2
      OnClick = Button2Click
    end
    object Button3: TRzRapidFireButton
      Left = 410
      Top = 53
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000230B0000230B00000001000000010000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E3DE56
        E1E1E1E1E1DFACEEE8E8E8E8E8AC8181818181818181ACEEE8E8E8E8E3E2EBE3
        E3E3E3E3DEE1ECE2E3E8E8E8AC81EBACACACACACAC8181E2ACE8E8E3DEE3D7E3
        8282ACEED7E3DF56E2EEE8AC81ACD7ACACACACEED7AC8181E2EEE8ACE3D78210
        3482343482D7E3ECECACE881ACD7AC8181AC8181ACD7AC8181ACE3E3D7580A10
        82D75E0A0A82D7E3E181AC81D7AC8181ACD7818181ACD7AC8181E3D7820A3434
        345E3434340AACE3815681D7AC818181818181818181ACAC8181E3D734343434
        5EE33434343458D7ACE181D78181818181AC81818181ACD7AC81E3E334343434
        5ED7830A343434EEE3E181AC8181818181D7AC81818181EEAC81E3AD34343434
        3488D75E343434EEE3E181AD8181818181ACD781818181EEAC81E3E334343434
        340AACD7343434D7E35681AC818181818181ACD7818181D7AC81E3D75F345EE3
        580A5ED75E105ED7ACED81D7818181ACAC8181D7818181D7ACEDE3EEB33B5ED7
        D789D7D73435D7E381E381EEAC8181D7D7ACD7D78181D7AC81ACE8E3D7E65F83
        E3EEE35F5FADD7E6DEE8E881D7AC81ACACEEAC8181ADD7AC81E8E8E3E3D7D7B3
        89898989D7D7E3DEEEE8E8E881D7D7ACACACACACD7D7AC81EEE8E8E8E3ADE3D7
        D7D7D7D7E3ADACEEE8E8E8E8E88181D7D7D7D7D7818181EEE8E8E8E8E8E8E3AD
        ADADE6ADE3E3E8E8E8E8E8E8E8E8AC8181818181ACACE8E8E8E8}
      NumGlyphs = 2
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 74
      Top = 28
      Width = 83
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 74
      Top = 52
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 182
      Top = 28
      Width = 252
      Height = 21
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 287
      Top = 53
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object QPART: TFDQuery
    CachedUpdates = True
    ConnectionName = 'Hi_dbms'
    Left = 88
    Top = 80
  end
  object Qlocat: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 124
    Top = 80
  end
  object QFifocard: TFDQuery
    ConnectionName = 'Hi_dbms'
    UpdateOptions.RequestLive = True
    Left = 24
    Top = 52
  end
  object QFifobal: TFDQuery
    ConnectionName = 'Hi_dbms'
    UpdateOptions.RequestLive = True
    Left = 24
    Top = 80
  end
  object QFifostak: TFDQuery
    ConnectionName = 'Hi_dbms'
    UpdateOptions.RequestLive = True
    Left = 24
    Top = 108
  end
  object Query1: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 24
    Top = 24
  end
  object QStkcard: TFDQuery
    CachedUpdates = True
    ConnectionName = 'Hi_dbms'
    Left = 91
    Top = 110
  end
end
