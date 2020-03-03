object FPropose: TFPropose
  Left = 216
  Top = 140
  Width = 687
  Height = 575
  Caption = #3610#3633#3609#3607#3638#3585#3651#3610#3648#3626#3609#3629#3619#3634#3588#3634#3629#3632#3652#3627#3621#3656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TRzLabel
    Left = 221
    Top = 117
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TRzLabel
    Left = 221
    Top = 141
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object RzLabel3: TRzLabel
    Left = 344
    Top = 20
    Width = 115
    Height = 13
    Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3626#3609#3629#3619#3634#3588#3634#3629#3632#3652#3627#3621#3656
  end
  object RzLabel4: TRzLabel
    Left = 400
    Top = 44
    Width = 56
    Height = 13
    Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
  end
  object RzLabel5: TRzLabel
    Left = 28
    Top = 116
    Width = 77
    Height = 13
    Caption = #3614#3609#3633#3585#3591#3634#3609#3607#3637#3656#3610#3633#3609#3607#3638#3585
  end
  object RzLabel6: TRzLabel
    Left = 58
    Top = 162
    Width = 45
    Height = 13
    Caption = #3627#3617#3634#3618#3648#3627#3605#3640
  end
  object RzLabel7: TRzLabel
    Left = 60
    Top = 140
    Width = 44
    Height = 13
    Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
  end
  object RzLabel1: TRzLabel
    Left = 420
    Top = 68
    Width = 33
    Height = 13
    Caption = #3626#3656#3623#3609#3621#3604
  end
  object RzLabel2: TRzLabel
    Left = 428
    Top = 92
    Width = 26
    Height = 13
    Caption = 'Net +'
  end
  object RzLabel8: TRzLabel
    Left = 532
    Top = 68
    Width = 8
    Height = 13
    Caption = '%'
  end
  object RzLabel9: TRzLabel
    Left = 532
    Top = 92
    Width = 8
    Height = 13
    Caption = '%'
  end
  object RzLabel10: TRzLabel
    Left = 120
    Top = 40
    Width = 97
    Height = 16
    Caption = #3626#3619#3640#3611#3651#3610#3619#3634#3588#3634#3629#3632#3652#3627#3621#3656
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TextStyle = tsRaised
  end
  object RzBorder1: TRzBorder
    Left = 24
    Top = 8
    Width = 305
    Height = 89
  end
  object RzLabel11: TRzLabel
    Left = 58
    Top = 242
    Width = 43
    Height = 13
    Caption = #3594#3639#3656#3629#3629#3632#3652#3627#3621#3656
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 486
    Width = 671
    Height = 50
    Cursor = crHandPoint
    Align = alBottom
    ButtonHeight = 21
    ButtonWidth = 88
    Caption = 'ToolBar1'
    Flat = True
    ShowCaptions = True
    TabOrder = 0
    object InsBtn: TToolButton
      Left = 0
      Top = 0
      Caption = #3648#3614#3636#3656#3617#3586#3657#3629#3617#3641#3621
      ImageIndex = 7
    end
    object DelBtn: TToolButton
      Left = 88
      Top = 0
      Caption = #3621#3610#3586#3657#3629#3617#3641#3621
      ImageIndex = 3
    end
    object EnqBtn: TToolButton
      Left = 176
      Top = 0
      Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621
      ImageIndex = 2
    end
    object SaveBtn: TToolButton
      Left = 264
      Top = 0
      Caption = #3610#3633#3609#3607#3638#3585#3586#3657#3629#3617#3641#3621
      ImageIndex = 0
      Wrap = True
    end
    object CancBtn: TToolButton
      Left = 0
      Top = 21
      Caption = #3618#3585#3648#3621#3636#3585
      ImageIndex = 1
    end
    object CloseBtn: TToolButton
      Left = 88
      Top = 21
      Caption = #3629#3629#3585#3650#3611#3619#3649#3585#3619#3617
      ImageIndex = 4
      OnClick = CloseBtnClick
    end
    object ToolButton7: TToolButton
      Left = 176
      Top = 21
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 184
      Top = 21
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 192
      Top = 21
      Width = 8
      Caption = 'ToolButton9'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton10: TToolButton
      Left = 200
      Top = 21
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 208
      Top = 21
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton12: TToolButton
      Left = 216
      Top = 21
      Width = 8
      Caption = 'ToolButton12'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object ToolButton13: TToolButton
      Left = 224
      Top = 21
      Width = 8
      Caption = 'ToolButton13'
      ImageIndex = 11
      Style = tbsSeparator
    end
    object PrintBtn: TToolButton
      Left = 232
      Top = 21
      Caption = #3648#3614#3636#3656#3617#3651#3610#3648#3626#3609#3629#3619#3634#3588#3634
      ImageIndex = 5
    end
  end
  object RzDBButtonEdit1: TRzDBButtonEdit
    Left = 469
    Top = 16
    Width = 121
    Height = 21
    DataSource = DataSource1
    DataField = 'PRNINV'
    FrameColor = clGradientInactiveCaption
    FrameVisible = True
    TabOrder = 1
    ButtonShortCut = 0
  end
  object RzDBButtonEdit2: TRzDBButtonEdit
    Left = 117
    Top = 112
    Width = 99
    Height = 21
    DataSource = DataSource1
    DataField = 'OFFICCOD'
    FrameColor = clGradientInactiveCaption
    FrameVisible = True
    TabOrder = 2
    ButtonShortCut = 0
  end
  object RzDBMemo1: TRzDBMemo
    Left = 116
    Top = 163
    Width = 281
    Height = 73
    DataField = 'MEMO1'
    DataSource = DataSource1
    TabOrder = 3
    FrameColor = clGradientInactiveCaption
    FrameVisible = True
  end
  object RzDBButtonEdit4: TRzDBButtonEdit
    Left = 117
    Top = 136
    Width = 99
    Height = 21
    DataSource = DataSource1
    DataField = 'CUSCOD'
    FrameColor = clGradientInactiveCaption
    FrameVisible = True
    TabOrder = 4
    ButtonShortCut = 0
  end
  object DBGrid1: TRzDBGrid
    Left = 47
    Top = 271
    Width = 521
    Height = 133
    DataSource = DataSource2
    DefaultDrawing = True
    FixedColor = clInactiveCaptionText
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    FrameColor = 12164479
    FrameVisible = True
    FixedLineColor = 12164479
    LineColor = clInactiveCaption
    Columns = <
      item
        Expanded = False
        FieldName = 'PARTNO'
        Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORDQTY'
        Title.Caption = #3592#3635#3609#3623#3609#3626#3633#3656#3591
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PNET'
        Title.Caption = 'NET'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE1'
        Title.Caption = #3619#3634#3588#3634#3586#3634#3618
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REDU1'
        Title.Caption = #3621#3604' %'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTPRC'
        Title.Caption = #3619#3634#3588#3634#3626#3640#3607#3608#3636
        Visible = True
      end>
  end
  object NextBtn: TRzBitBtn
    Left = 46
    Top = 411
    Width = 105
    Cursor = crHandPoint
    Caption = 'Insert Record'
    Color = 15791348
    HighlightColor = 16026986
    HotTrack = True
    HotTrackColor = 3983359
    TabOrder = 6
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      08000000000000020000830B0000830B00000001000000000000000000003300
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
      0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
      09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
      09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
      09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E809090909
      0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E809101010
      1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809101010
      1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809090909
      0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E8E8E8E8E8
      09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
      09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
      09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
      09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
    NumGlyphs = 2
  end
  object DeleBtn: TRzBitBtn
    Left = 158
    Top = 411
    Width = 105
    Cursor = crHandPoint
    Caption = 'Delete Record'
    Color = 15791348
    HighlightColor = 16026986
    HotTrack = True
    HotTrackColor = 3983359
    TabOrder = 7
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      08000000000000020000830B0000830B00000001000000000000000000003300
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
      0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
      0909090909090909E8E8E8E8818181818181818181818181E8E8E8E809101010
      1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809101010
      1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809090909
      0909090909090909E8E8E8E8818181818181818181818181E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
    NumGlyphs = 2
  end
  object RzDBEdit1: TRzDBEdit
    Left = 470
    Top = 64
    Width = 57
    Height = 21
    DataSource = DataSource1
    DataField = 'REDU'
    FrameColor = clGradientInactiveCaption
    FrameVisible = True
    TabOrder = 8
  end
  object RzDBEdit2: TRzDBEdit
    Left = 470
    Top = 89
    Width = 57
    Height = 21
    DataSource = DataSource1
    DataField = 'NETADD'
    FrameColor = clGradientInactiveCaption
    FrameVisible = True
    TabOrder = 10
  end
  object RzDBEdit3: TRzDBEdit
    Left = 116
    Top = 240
    Width = 282
    Height = 21
    FrameColor = clGradientInactiveCaption
    FrameVisible = True
    TabOrder = 9
  end
  object DataSource1: TDataSource
    DataSet = QPrnPartInv
    OnStateChange = DataSource1StateChange
    Left = 231
    Top = 437
  end
  object QPrnPartInv: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    UpdateOptions.RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PRNPARTINV')
    Left = 271
    Top = 437
    object QPrnPartInvPRNINV: TStringField
      FieldName = 'PRNINV'

      FixedChar = True
      Size = 15
    end
    object QPrnPartInvPRNLOCAT: TStringField
      FieldName = 'PRNLOCAT'

      FixedChar = True
      Size = 5
    end
    object QPrnPartInvPRNDATE: TDateField
      FieldName = 'PRNDATE'

      OnValidate = QPrnPartInvPRNDATEValidate
    end
    object QPrnPartInvCUSCOD: TStringField
      FieldName = 'CUSCOD'

      FixedChar = True
      Size = 12
    end
    object QPrnPartInvOFFICCOD: TStringField
      FieldName = 'OFFICCOD'

      FixedChar = True
      Size = 5
    end
    object QPrnPartInvNETAMT: TFloatField
      FieldName = 'NETAMT'

    end
    object QPrnPartInvNETVAT: TFloatField
      FieldName = 'NETVAT'

    end
    object QPrnPartInvNETTOT: TFloatField
      FieldName = 'NETTOT'

    end
    object QPrnPartInvTIME1: TDateTimeField
      FieldName = 'TIME1'

    end
    object QPrnPartInvMEMO1: TMemoField
      FieldName = 'MEMO1'

      BlobType = ftMemo
      Size = 1
    end
    object QPrnPartInvNETADD: TFloatField
      FieldName = 'NETADD'

      DisplayFormat = '##,##0.00'
    end
    object QPrnPartInvREDU: TFloatField
      FieldName = 'REDU'

      DisplayFormat = '##,##0.00'
    end
  end
  object QPrnPartTrn: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    UpdateOptions.RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PRNPARTTRN')
    Left = 303
    Top = 437
    object QPrnPartTrnPRNINV: TStringField
      FieldName = 'PRNINV'

      FixedChar = True
      Size = 15
    end
    object QPrnPartTrnPRNLOCAT: TStringField
      FieldName = 'PRNLOCAT'

      FixedChar = True
      Size = 5
    end
    object QPrnPartTrnPARTNO: TStringField
      FieldName = 'PARTNO'

      FixedChar = True
    end
    object QPrnPartTrnPNET: TStringField
      FieldName = 'PNET'

      FixedChar = True
      Size = 1
    end
    object QPrnPartTrnORDQTY: TFloatField
      FieldName = 'ORDQTY'

    end
    object QPrnPartTrnPRICE1: TFloatField
      FieldName = 'PRICE1'

    end
    object QPrnPartTrnREDU1: TFloatField
      FieldName = 'REDU1'

    end
    object QPrnPartTrnTOTPRC: TFloatField
      FieldName = 'TOTPRC'

    end
  end
  object DataSource2: TDataSource
    DataSet = QPrnPartTrn
    Left = 343
    Top = 437
  end
  object DBkbd1: TRzDBkbd
    IgNoreUpDown = False
    UseArrowKey = True
    Disable = False
    DataSource = DataSource2
    StatusColor = clBlack
    DeleteMessage = #3649#3609#3656#3651#3592#3627#3619#3639#3629#3652#3617#3656#3607#3637#3656#3592#3632#3621#3610' Record '#3609#3637#3657
    DelTop = 84
    DelLeft = 114
    AllowSpaceBar = False
    AllowEditing = True
    AllowInsert = True
    AllowDelete = True
    KeyToEdit = 115
    KeyToInsert = 45
    KeyToSave = 121
    Left = 383
    Top = 445
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 271
    Top = 408
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 311
    Top = 408
  end
  object Qinventor: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM INVENTOR')
    Left = 360
    Top = 408
  end
end
