object FmSvRpA91: TFmSvRpA91
  Left = 7
  Top = 109
  Width = 1213
  Height = 399
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3626#3619#3640#3611#3619#3634#3618#3591#3634#3609#3611#3619#3632#3592#3635#3648#3604#3639#3629#3609#3586#3629#3591#3594#3656#3634#3591#3649#3605#3656#3621#3632#3588#3609
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object QRep: TQuickRep
    Left = 5
    Top = -20
    Width = 1191
    Height = 1054
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QueryA9
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
      248.900000000000000000
      2790.000000000000000000
      99.099999999999990000
      3150.000000000000000000
      99.099999999999990000
      99.099999999999990000
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
      Left = 37
      Top = 37
      Width = 1116
      Height = 142
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        375.708333333333300000
        2952.750000000000000000)
      BandType = rbPageHeader
      object QRLabel4: TQRLabel
        Left = 521
        Top = 1
        Width = 73
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333330000
          1378.479166666667000000
          2.645833333333333000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel4'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'EucrosiaUPC'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object QRLabel5: TQRLabel
        Left = 434
        Top = 31
        Width = 247
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1148.291666666667000000
          82.020833333333330000
          653.520833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #3626#3619#3640#3611#3619#3634#3618#3591#3634#3609#3611#3619#3632#3592#3635#3648#3604#3639#3629#3609#3586#3629#3591#3594#3656#3634#3591#3649#3605#3656#3621#3632#3588#3609
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'EucrosiaUPC'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel8: TQRLabel
        Left = 528
        Top = 61
        Width = 59
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1397.000000000000000000
          161.395833333333300000
          156.104166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3627#3633#3626#3608#3609#3634#3588#3634#3619
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel1: TQRLabel
        Left = 984
        Top = 115
        Width = 33
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2603.500000000000000000
          304.270833333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3627#3609#3657#3634#3607#3637#3656' '
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRSysData2: TQRSysData
        Left = 1018
        Top = 115
        Width = 36
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2693.458333333333000000
          304.270833333333300000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 13
      end
      object QRSysData1: TQRSysData
        Left = 6
        Top = 115
        Width = 105
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          15.875000000000000000
          304.270833333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Text = #3623#3633#3609#3607#3637#3656#3614#3636#3617#3614#3660'  :'
        Transparent = False
        FontSize = 12
      end
      object QRLabel15: TQRLabel
        Left = 6
        Top = 89
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          15.875000000000000000
          235.479166666666700000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel15'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
    end
    object PageHeader: TQRBand
      Left = 37
      Top = 179
      Width = 1116
      Height = 62
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        164.041666666666700000
        2952.750000000000000000)
      BandType = rbColumnHeader
      object QRLabel26: TQRLabel
        Left = 545
        Top = 32
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1441.979166666667000000
          84.666666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRShape5: TQRShape
        Left = 2
        Top = 2
        Width = 1050
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          5.291666666666667000
          2778.125000000000000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRLabel12: TQRLabel
        Left = 4
        Top = 11
        Width = 30
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          29.104166666666670000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NO.'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel3: TQRLabel
        Left = 40
        Top = 11
        Width = 50
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          105.833333333333300000
          29.104166666666670000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3619#3627#3633#3626#3594#3656#3634#3591
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel9: TQRLabel
        Left = 97
        Top = 11
        Width = 83
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          256.645833333333300000
          29.104166666666670000
          219.604166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3594#3639#3656#3629' - '#3609#3634#3617#3626#3585#3640#3621
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel11: TQRLabel
        Left = 630
        Top = 32
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1666.875000000000000000
          84.666666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3588#3656#3634#3609#3657#3635#3617#3633#3609
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel6: TQRLabel
        Left = 715
        Top = 32
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1891.770833333333000000
          84.666666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3588#3656#3634#3591#3634#3609#3609#3629#3585
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel13: TQRLabel
        Left = 800
        Top = 32
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2116.666666666667000000
          84.666666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3588#3656#3634#3591#3634#3609#3626#3637
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel14: TQRLabel
        Left = 970
        Top = 32
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2566.458333333333000000
          84.666666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3619#3623#3617
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel18: TQRLabel
        Left = 885
        Top = 32
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2341.562500000000000000
          84.666666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3588#3656#3634#3629#3632#3652#3627#3621#3656
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRShape6: TQRShape
        Left = 543
        Top = 28
        Width = 508
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1436.687500000000000000
          74.083333333333330000
          1344.083333333333000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRLabel24: TQRLabel
        Left = 773
        Top = 3
        Width = 31
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2045.229166666667000000
          7.937500000000000000
          82.020833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3634#3618#3652#3604#3657
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRShape1: TQRShape
        Left = 2
        Top = 56
        Width = 1050
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          148.166666666666700000
          2778.125000000000000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRLabel2: TQRLabel
        Left = 283
        Top = 11
        Width = 59
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          748.770833333333300000
          29.104166666666670000
          156.104166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3592#3635#3609#3623#3609' FRT'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel7: TQRLabel
        Left = 351
        Top = 11
        Width = 59
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          928.687500000000000000
          29.104166666666670000
          156.104166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3594#3617'.'#3592#3619#3636#3591
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel10: TQRLabel
        Left = 421
        Top = 11
        Width = 75
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1113.895833333333000000
          29.104166666666670000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3592#3635#3609#3623#3609' JoB'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
    end
    object Detail: TQRBand
      Left = 37
      Top = 241
      Width = 1116
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
      BeforePrint = DetailBeforePrint
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'EucrosiaUPC'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        84.666666666666670000
        2952.750000000000000000)
      BandType = rbDetail
      object QRDBText10: TQRDBText
        Left = 40
        Top = 5
        Width = 52
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          105.833333333333300000
          13.229166666666670000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryA9
        DataField = 'SERVCOD'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRSysData3: TQRSysData
        Left = 4
        Top = 5
        Width = 30
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          13.229166666666670000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 13
      end
      object QRDBText4: TQRDBText
        Left = 351
        Top = 5
        Width = 59
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          928.687500000000000000
          13.229166666666670000
          156.104166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryA9
        DataField = 'Sertime'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText6: TQRDBText
        Left = 421
        Top = 5
        Width = 75
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1113.895833333333000000
          13.229166666666670000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryA9
        DataField = 'JOB'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText7: TQRDBText
        Left = 545
        Top = 5
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1441.979166666667000000
          13.229166666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryA9
        DataField = 'SERV'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText8: TQRDBText
        Left = 630
        Top = 5
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1666.875000000000000000
          13.229166666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryA9
        DataField = 'OIL'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText9: TQRDBText
        Left = 715
        Top = 5
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1891.770833333333000000
          13.229166666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryA9
        DataField = 'OUT'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText2: TQRDBText
        Left = 800
        Top = 5
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2116.666666666667000000
          13.229166666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryA9
        DataField = 'COL'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText11: TQRDBText
        Left = 885
        Top = 5
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2341.562500000000000000
          13.229166666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryA9
        DataField = 'PART'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText12: TQRDBText
        Left = 970
        Top = 5
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2566.458333333333000000
          13.229166666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryA9
        DataField = 'TOT'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText5: TQRDBText
        Left = 283
        Top = 5
        Width = 59
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          748.770833333333300000
          13.229166666666670000
          156.104166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryA9
        DataField = 'FT'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel16: TQRLabel
        Left = 97
        Top = 5
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          256.645833333333300000
          13.229166666666670000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel16'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
    end
    object PageFooter: TQRBand
      Left = 37
      Top = 273
      Width = 1116
      Height = 42
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        111.125000000000000000
        2952.750000000000000000)
      BandType = rbSummary
      object QRLabel32: TQRLabel
        Left = 108
        Top = 8
        Width = 51
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          285.750000000000000000
          21.166666666666670000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609' '
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRShape3: TQRShape
        Left = 2
        Top = 2
        Width = 1050
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          5.291666666666667000
          2778.125000000000000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRShape4: TQRShape
        Left = 2
        Top = 37
        Width = 1050
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          97.895833333333330000
          2778.125000000000000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRExpr1: TQRExpr
        Left = 421
        Top = 8
        Width = 75
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1113.895833333333000000
          21.166666666666670000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Color = clWhite
        Master = QRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'Sum(QueryA9.JOB)'
        Mask = '#,###'
        FontSize = 13
      end
      object QRExpr3: TQRExpr
        Left = 545
        Top = 8
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1441.979166666667000000
          21.166666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Color = clWhite
        Master = QRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'Sum(QueryA9.SERV)'
        Mask = '#,##0.00'
        FontSize = 13
      end
      object QRExpr4: TQRExpr
        Left = 630
        Top = 8
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1666.875000000000000000
          21.166666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Color = clWhite
        Master = QRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'Sum(QueryA9.OIL)'
        Mask = '#,##0.00'
        FontSize = 13
      end
      object QRExpr5: TQRExpr
        Left = 715
        Top = 8
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1891.770833333333000000
          21.166666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Color = clWhite
        Master = QRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'Sum(QueryA9.OUT)'
        Mask = '#,##0.00'
        FontSize = 13
      end
      object QRExpr6: TQRExpr
        Left = 800
        Top = 8
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2116.666666666667000000
          21.166666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Color = clWhite
        Master = QRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'Sum(QueryA9.COL)'
        Mask = '#,##0.00'
        FontSize = 13
      end
      object QRExpr7: TQRExpr
        Left = 885
        Top = 8
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2341.562500000000000000
          21.166666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Color = clWhite
        Master = QRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'Sum(QueryA9.PART)'
        Mask = '#,##0.00'
        FontSize = 13
      end
      object QRExpr8: TQRExpr
        Left = 970
        Top = 8
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2566.458333333333000000
          21.166666666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Color = clWhite
        Master = QRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'Sum(QueryA9.TOT)'
        Mask = '#,##0.00'
        FontSize = 13
      end
    end
  end
  object QueryA9: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT Servcod,Sum(Sertime) As St,Sum(Ottime) As OT,'
      
        '               Sum(Frt) As Ft,Sum(Servamt) As Sa,Sum(OilAmt) As ' +
        'Oil,Sum(OutAmt) As Out, '
      '               Sum(Patamt) As Pat,Sum(ColAmt) As Col, '
      
        '              Sum(Servamt) +Sum(OilAmt) +Sum(OutAmt) + Sum(Patam' +
        't) +Sum(ColAmt) As TOT '
      ' FROM analys01 '
      '                Group By servcod')
    Left = 100
    Top = 12
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from condpay')
    Left = 225
    Top = 4
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 159
    Top = 12
  end
end
