object FmprnAp11: TFmprnAp11
  Left = 186
  Top = 130
  Width = 808
  Height = 580
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3619#3633#3610#3617#3633#3604#3592#3635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object QuickReport: TQuickRep
    Left = 16
    Top = 4
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QAPINV
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object Title: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 251
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
      Color = clWhite
      Font.Charset = THAI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Angsana New'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        664.104166666666700000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRDBText5: TQRDBText
        Left = 549
        Top = 30
        Width = 52
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1452.562500000000000000
          79.375000000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QAPINV
        DataField = 'RECVNO'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel23: TQRLabel
        Left = 67
        Top = 129
        Width = 300
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          177.270833333333300000
          341.312500000000000000
          793.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3621#3641#3585#3588#3657#3634
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel24: TQRLabel
        Left = 67
        Top = 161
        Width = 300
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          177.270833333333300000
          425.979166666666700000
          793.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3614#3609#3633#3585#3591#3634#3609#3648#3610#3636#3585
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel22: TQRLabel
        Left = 67
        Top = 190
        Width = 300
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          177.270833333333300000
          502.708333333333300000
          793.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3648#3610#3636#3585#3648#3614#3639#3656#3629
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel7: TQRLabel
        Left = 67
        Top = 30
        Width = 53
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          177.270833333333300000
          79.375000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel7'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel1: TQRLabel
        Left = 549
        Top = 137
        Width = 53
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1452.562500000000000000
          362.479166666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel4: TQRLabel
        Left = 465
        Top = 30
        Width = 28
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1230.312500000000000000
          79.375000000000000000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3648#3621#3586#3607#3637#3656
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel5: TQRLabel
        Left = 465
        Top = 61
        Width = 24
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1230.312500000000000000
          161.395833333333300000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3623#3633#3609#3607#3637#3656
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel6: TQRLabel
        Left = 6
        Top = 129
        Width = 50
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          15.875000000000000000
          341.312500000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel8: TQRLabel
        Left = 6
        Top = 161
        Width = 59
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          15.875000000000000000
          425.979166666666700000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3607#3637#3656#3629#3618#3641#3656
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel9: TQRLabel
        Left = 308
        Top = 3
        Width = 97
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          814.916666666666700000
          7.937500000000000000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3651#3610#3619#3633#3610#3617#3633#3604#3592#3635#3626#3636#3609#3588#3657#3634
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Angsana New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel11: TQRLabel
        Left = 465
        Top = 110
        Width = 59
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1230.312500000000000000
          291.041666666666700000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3648#3621#3586#3607#3637#3656#3629#3657#3634#3591#3629#3636#3591
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText7: TQRDBText
        Left = 549
        Top = 110
        Width = 41
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1452.562500000000000000
          291.041666666666700000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QAPINV
        DataField = 'INVNO'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel12: TQRLabel
        Left = 465
        Top = 138
        Width = 24
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1230.312500000000000000
          365.125000000000000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3623#3633#3609#3607#3637#3656
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText8: TQRDBText
        Left = 549
        Top = 62
        Width = 51
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1452.562500000000000000
          164.041666666666700000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QAPINV
        DataField = 'RECVDT'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel21: TQRLabel
        Left = 6
        Top = 217
        Width = 50
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          15.875000000000000000
          574.145833333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3650#3607#3619#3624#3633#3614#3607#3660
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText6: TQRDBText
        Left = 67
        Top = 218
        Width = 32
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          177.270833333333300000
          576.791666666666700000
          84.666666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QAPINV
        DataField = 'TELP'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText9: TQRDBText
        Left = 548
        Top = 180
        Width = 51
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1449.916666666667000000
          476.250000000000000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'CUSCOD'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText10: TQRDBText
        Left = 616
        Top = 180
        Width = 70
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1629.833333333333000000
          476.250000000000000000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'USERNAME'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel26: TQRLabel
        Left = 465
        Top = 178
        Width = 76
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1230.312500000000000000
          470.958333333333300000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3612#3641#3657#3592#3633#3604#3607#3635#3651#3610#3617#3633#3604#3592#3635
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel28: TQRLabel
        Left = 67
        Top = 61
        Width = 300
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          177.270833333333300000
          161.395833333333300000
          793.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3607#3637#3656#3629#3618#3641#3656' '#3610'.1'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel29: TQRLabel
        Left = 67
        Top = 90
        Width = 300
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          177.270833333333300000
          238.125000000000000000
          793.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3607#3637#3656#3629#3618#3641#3656' '#3610'.'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 289
      Width = 718
      Height = 302
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Angsana New'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        799.041666666666700000
        1899.708333333333000000)
      BandType = rbColumnHeader
      object QRLabel13: TQRLabel
        Left = 511
        Top = 6
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1352.020833333333000000
          15.875000000000000000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel17: TQRLabel
        Left = 69
        Top = 6
        Width = 112
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          182.562500000000000000
          15.875000000000000000
          296.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3619#3634#3618#3585#3634#3619
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBRichText1: TQRDBRichText
        Left = 70
        Top = 36
        Width = 391
        Height = 251
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          664.104166666666700000
          185.208333333333300000
          95.250000000000000000
          1034.520833333333000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        DataField = 'MEMO1'
        DataSet = QAPINV
      end
      object QRDBText11: TQRDBText
        Left = 511
        Top = 38
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1352.020833333333000000
          100.541666666666700000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QAPINV
        DataField = 'BALANCE'
        Mask = '#,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 591
      Width = 718
      Height = 240
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Angsana New'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        635.000000000000000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBText4: TQRDBText
        Left = 511
        Top = 70
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1352.020833333333000000
          185.208333333333300000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QAPINV
        DataField = 'NETTOTAL'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = [fsUnderline]
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel10: TQRLabel
        Left = 403
        Top = 70
        Width = 40
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1066.270833333333000000
          185.208333333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3623#3617#3648#3591#3636#3609
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel14: TQRLabel
        Left = 55
        Top = 70
        Width = 59
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          145.520833333333300000
          185.208333333333300000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel14'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel25: TQRLabel
        Left = 520
        Top = 109
        Width = 63
        Height = 27
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1375.833333333333000000
          288.395833333333300000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '** '#3618#3585#3648#3621#3636#3585' **'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel15: TQRLabel
        Left = 102
        Top = 145
        Width = 145
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          269.875000000000000000
          383.645833333333300000
          383.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel16: TQRLabel
        Left = 142
        Top = 173
        Width = 49
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          375.708333333333300000
          457.729166666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3612#3641#3657#3619#3633#3610#3617#3633#3604#3592#3635
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel18: TQRLabel
        Left = 350
        Top = 145
        Width = 145
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          926.041666666666700000
          383.645833333333300000
          383.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel19: TQRLabel
        Left = 398
        Top = 173
        Width = 35
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1053.041666666667000000
          457.729166666666700000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3612#3641#3657#3592#3633#3604#3607#3635
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel3: TQRLabel
        Left = 403
        Top = 40
        Width = 22
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1066.270833333333000000
          105.833333333333300000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3616#3634#3625#3637
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText3: TQRDBText
        Left = 437
        Top = 40
        Width = 20
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1156.229166666667000000
          105.833333333333300000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QAPINV
        DataField = 'VATRT'
        Mask = '#,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel20: TQRLabel
        Left = 463
        Top = 40
        Width = 11
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1225.020833333333000000
          105.833333333333300000
          29.104166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText2: TQRDBText
        Left = 511
        Top = 40
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1352.020833333333000000
          105.833333333333300000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QAPINV
        DataField = 'VATAMT'
        Mask = '#,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText1: TQRDBText
        Left = 511
        Top = 10
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1352.020833333333000000
          26.458333333333330000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QAPINV
        DataField = 'BALANCE'
        Mask = '#,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel2: TQRLabel
        Left = 403
        Top = 10
        Width = 57
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1066.270833333333000000
          26.458333333333330000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3617#3641#3621#3588#3656#3634#3626#3636#3609#3588#3657#3634
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
  end
  object Condpay: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'Select * from Condpay')
    Left = 445
    Top = 83
  end
  object QAPINV: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      'SELECT A.INVNO,A.RECVDT,A.LOCAT,A.APCODE,A.TAXNO,A.JOBNO,A.FLAG,'
      
        '            A.CANCELID,A.DESCRP,A.BALANCE,A.VATRT,A.VATAMT,A.NET' +
        'TOTAL,A.KANG,A.RECVNO, '
      '            A.INVDATE,B.APNAME,B.ADDR1,B.ADDR2  '
      '            FROM APINVOI A,APMAST B ')
    Left = 384
    Top = 71
  end
  object Query1: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 410
    Top = 89
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 478
    Top = 82
  end
end
