object FmSTRp221: TFmSTRp221
  Left = 45
  Top = 190
  Width = 870
  Height = 580
  HorzScrollBar.Position = 193
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3617#3641#3621#3588#3656#3634#3626#3636#3609#3588#3657#3634
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
    Left = 10
    Top = 4
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Query220
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
    Page.PaperSize = Default
    Page.Values = (
      50.800000000000000000
      2794.000000000000000000
      99.060000000000000000
      2159.000000000000000000
      99.060000000000000000
      99.060000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = False
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    object Title: TQRBand
      Left = 37
      Top = 37
      Width = 741
      Height = 154
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
        407.458333333333300000
        1960.562500000000000000)
      BandType = rbPageHeader
      object QRLabel4: TQRLabel
        Left = 460
        Top = 4
        Width = 71
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333330000
          1217.083333333333000000
          10.583333333333330000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel4'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Angsana New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object QRLabel5: TQRLabel
        Left = 206
        Top = 36
        Width = 240
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          545.041666666666700000
          95.250000000000000000
          635.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3634#3618#3591#3634#3609#3617#3641#3621#3588#3656#3634#3626#3636#3609#3588#3657#3634' ('#3605#3657#3609#3607#3640#3609#3649#3610#3610' Average)'
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
      object QRLabel8: TQRLabel
        Left = 224
        Top = 68
        Width = 53
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          592.666666666666700000
          179.916666666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel8'
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
      object QRLabel1: TQRLabel
        Left = 576
        Top = 124
        Width = 35
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1524.000000000000000000
          328.083333333333300000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3627#3609#3657#3634#3607#3637#3656' '
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
      object QRSysData2: TQRSysData
        Left = 616
        Top = 124
        Width = 40
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1629.833333333333000000
          328.083333333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 14
      end
      object QRLabel22: TQRLabel
        Left = 16
        Top = 124
        Width = 88
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          42.333333333333330000
          328.083333333333300000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3623#3633#3609#3607#3637#3656#3614#3636#3617#3614#3660#3619#3634#3618#3591#3634#3609
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
      object QRSysData1: TQRSysData
        Left = 110
        Top = 124
        Width = 62
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          291.041666666666700000
          328.083333333333300000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 14
      end
      object QRLabel34: TQRLabel
        Left = 576
        Top = 97
        Width = 67
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1524.000000000000000000
          256.645833333333300000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'STRp220,221'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel11: TQRLabel
        Left = 16
        Top = 95
        Width = 59
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          42.333333333333330000
          251.354166666666700000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel11'
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
    object PageHeader: TQRBand
      Left = 37
      Top = 191
      Width = 741
      Height = 38
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
        100.541666666666700000
        1960.562500000000000000)
      BandType = rbColumnHeader
      object QRLabel26: TQRLabel
        Left = 16
        Top = 5
        Width = 53
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          42.333333333333330000
          13.229166666666670000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3626#3634#3586#3634
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
      object QRLabel27: TQRLabel
        Left = 100
        Top = 5
        Width = 81
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          264.583333333333300000
          13.229166666666670000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3619#3627#3633#3626#3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634
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
      object QRShape2: TQRShape
        Left = 2
        Top = 35
        Width = 650
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          92.604166666666670000
          1719.791666666667000000)
        Shape = qrsHorLine
      end
      object QRShape5: TQRShape
        Left = 2
        Top = 1
        Width = 650
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          2.645833333333333000
          1719.791666666667000000)
        Shape = qrsHorLine
      end
      object QRLabel2: TQRLabel
        Left = 430
        Top = 5
        Width = 100
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1137.708333333333000000
          13.229166666666670000
          264.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3617#3641#3621#3588#3656#3634#3588#3591#3648#3627#3621#3639#3629
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
      object QRLabel3: TQRLabel
        Left = 185
        Top = 5
        Width = 100
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          489.479166666666700000
          13.229166666666670000
          264.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3594#3639#3656#3629#3585#3621#3640#3656#3617
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
        Left = 540
        Top = 5
        Width = 100
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1428.750000000000000000
          13.229166666666670000
          264.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3617#3641#3621#3588#3656#3634#3592#3656#3634#3618#3652#3604#3657
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
    object Detail: TQRBand
      Left = 37
      Top = 229
      Width = 741
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
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
        79.375000000000000000
        1960.562500000000000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 16
        Top = 3
        Width = 53
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          42.333333333333330000
          7.937500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query220
        DataField = 'LOCAT'
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
        Left = 100
        Top = 3
        Width = 66
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          264.583333333333300000
          7.937500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query220
        DataField = 'GROUP1'
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
        Left = 185
        Top = 3
        Width = 72
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          489.479166666666700000
          7.937500000000000000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Qgroup
        DataField = 'GROUPNAM'
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
      object QRDBText2: TQRDBText
        Left = 430
        Top = 3
        Width = 100
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1137.708333333333000000
          7.937500000000000000
          264.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query220
        DataField = 'TOT'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText3: TQRDBText
        Left = 540
        Top = 3
        Width = 100
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1428.750000000000000000
          7.937500000000000000
          264.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query220
        DataField = 'TOT2'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
    object QRBand5: TQRBand
      Left = 37
      Top = 259
      Width = 741
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
      Color = clWhite
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'EucrosiaUPC'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        95.250000000000000000
        1960.562500000000000000)
      BandType = rbSummary
      object QRLabel10: TQRLabel
        Left = 128
        Top = 7
        Width = 55
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          338.666666666666700000
          18.520833333333330000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609' '
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
      object QRLabel14: TQRLabel
        Left = 280
        Top = 7
        Width = 37
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          740.833333333333300000
          18.520833333333330000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3634#3618#3585#3634#3619
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
      object QRShape6: TQRShape
        Left = 2
        Top = 35
        Width = 650
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          92.604166666666670000
          1719.791666666667000000)
        Shape = qrsHorLine
      end
      object QRShape7: TQRShape
        Left = 2
        Top = 2
        Width = 650
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
          1719.791666666667000000)
        Shape = qrsHorLine
      end
      object QRSysData4: TQRSysData
        Left = 196
        Top = 7
        Width = 52
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          518.583333333333300000
          18.520833333333330000
          137.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 14
      end
      object QRExpr1: TQRExpr
        Left = 430
        Top = 7
        Width = 100
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1137.708333333333000000
          18.520833333333330000
          264.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query220.TOT)'
        Mask = '#,##0.00'
        FontSize = 14
      end
      object QRExpr2: TQRExpr
        Left = 540
        Top = 7
        Width = 100
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1428.750000000000000000
          18.520833333333330000
          264.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query220.TOT2)'
        Mask = '#,##0.00'
        FontSize = 14
      end
    end
    object PageFooterBand1: TQRBand
      Left = 37
      Top = 295
      Width = 741
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = PageFooterBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        1960.562500000000000000)
      BandType = rbPageFooter
      object QRLabel7: TQRLabel
        Left = 574
        Top = 4
        Width = 65
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1518.708333333333000000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ST-FM-002/1'
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
  end
  object Query220: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      
        'SELECT A.Locat,A.Group1,sum(A.COST*B.ONHN_12)  AS  TOT,sum(A.COS' +
        'T*B.Allo_12)  AS  TOT2  '
      
        '              From Inventor A,Invanls B Where A.locat=B.locat an' +
        'd A.partno=B.partno  and A.Partno='#39' '#39' '
      'Group By A.Locat,A.Group1')
    Left = 108
    Top = 12
    object Query220LOCAT: TStringField
      FieldName = 'LOCAT'
      Size = 5
    end
    object Query220GROUP1: TStringField
      FieldName = 'GROUP1'
      Size = 5
    end
    object Query220TOT: TFloatField
      FieldName = 'TOT'
      DisplayFormat = '#,##0.00'
    end
    object Query220TOT2: TFloatField
      FieldName = 'TOT2'
    end
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from scondpay')
    Left = 68
    Top = 12
    object CondpayCURYEAR: TStringField
      FieldName = 'CURYEAR'
      Size = 4
    end
    object CondpayCURMONTH: TStringField
      FieldName = 'CURMONTH'
      Size = 2
    end
    object CondpayLICEN_NO: TStringField
      FieldName = 'LICEN_NO'
      Size = 12
    end
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
    object CondpayCOMP_ADR1: TStringField
      FieldName = 'COMP_ADR1'
      Size = 60
    end
    object CondpayCOMP_ADR2: TStringField
      FieldName = 'COMP_ADR2'
      Size = 60
    end
    object CondpayTELP: TStringField
      FieldName = 'TELP'
      Size = 50
    end
    object CondpayTAXID: TStringField
      FieldName = 'TAXID'
    end
    object CondpayVATRT: TFloatField
      FieldName = 'VATRT'
    end
    object CondpayTAXNAME: TStringField
      FieldName = 'TAXNAME'
      Size = 60
    end
    object CondpayTAXADDR: TStringField
      FieldName = 'TAXADDR'
      Size = 60
    end
    object CondpaySVRATE: TFloatField
      FieldName = 'SVRATE'
    end
    object CondpayNEXTKILO: TFloatField
      FieldName = 'NEXTKILO'
    end
    object CondpayNEXTDAY: TFloatField
      FieldName = 'NEXTDAY'
    end
    object CondpaySVFLAG: TStringField
      FieldName = 'SVFLAG'
      Size = 1
    end
    object CondpayCAMTYP: TStringField
      FieldName = 'CAMTYP'
      Size = 1
    end
    object CondpayCAMPART: TFloatField
      FieldName = 'CAMPART'
    end
    object CondpayCAMSERV: TFloatField
      FieldName = 'CAMSERV'
    end
    object CondpayCAMDAT1: TDateField
      FieldName = 'CAMDAT1'
    end
    object CondpayCAMDAT2: TDateField
      FieldName = 'CAMDAT2'
    end
  end
  object Qgroup: TFDQuery
    ConnectionName = 'Hi_dbms'
    MasterSource = DataSource1
    SQL.Strings = (
      'SELECT * FROM GROUPMST WHERE GROUPCOD=:GROUP1')
    Left = 149
    Top = 14
    ParamData = <
      item
        DataType = ftString
        Name = 'GROUP1'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query220
    Left = 187
    Top = 12
  end
  object Query1: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 228
    Top = 12
  end
end
