object FmSvRpc21: TFmSvRpc21
  Left = 180
  Top = 148
  Width = 808
  Height = 580
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3585#3634#3619#3618#3585#3648#3621#3636#3585#3651#3610#3649#3592#3657#3591#3595#3656#3629#3617
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
    Left = 8
    Top = -4
    Width = 1440
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QueryC10
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
      250.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      3810.000000000000000000
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
    Units = Inches
    Zoom = 100
    object Title: TQRBand
      Left = 38
      Top = 38
      Width = 1364
      Height = 156
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
      Font.Name = 'Angsana New'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        412.750000000000000000
        3608.916666666667000000)
      BandType = rbPageHeader
      object QRLabel5: TQRLabel
        Left = 193
        Top = 4
        Width = 316
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          510.645833333333300000
          10.583333333333330000
          836.083333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3626#3619#3640#3611#3618#3629#3604#3651#3610#3648#3626#3619#3655#3592#3586#3629#3591#3585#3634#3619#3648#3588#3621#3617
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel1: TQRLabel
        Left = 4
        Top = 64
        Width = 60
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          10.583333333333330000
          169.333333333333300000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3594#3639#3656#3629#3624#3641#3609#3618#3660#3610#3619#3636#3585#3634#3619
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 4
        Top = 88
        Width = 20
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          10.583333333333330000
          232.833333333333300000
          52.916666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3607#3637#3656#3629#3618#3641#3656
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel4: TQRLabel
        Left = 360
        Top = 64
        Width = 88
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          952.500000000000000000
          169.333333333333300000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3627#3617#3634#3618#3648#3621#3586#3624#3641#3609#3618#3660#3610#3619#3636#3585#3634#3619
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 72
        Top = 64
        Width = 45
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          190.500000000000000000
          169.333333333333300000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel7'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel8: TQRLabel
        Left = 72
        Top = 88
        Width = 45
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          190.500000000000000000
          232.833333333333300000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel8'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel11: TQRLabel
        Left = 72
        Top = 112
        Width = 50
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          190.500000000000000000
          296.333333333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel11'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel15: TQRLabel
        Left = 495
        Top = 64
        Width = 148
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1309.687500000000000000
          169.333333333333300000
          391.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '.................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel19: TQRLabel
        Left = 359
        Top = 88
        Width = 122
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          949.854166666666700000
          232.833333333333300000
          322.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3627#3617#3634#3618#3648#3621#3586#3619#3634#3618#3591#3634#3609#3629#3609#3640#3617#3633#3605#3636#3648#3588#3621#3617
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRSysData2: TQRSysData
        Left = 687
        Top = 131
        Width = 62
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1817.687500000000000000
          346.604166666666700000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'Page :'
        Transparent = False
        FontSize = 12
      end
      object QRLabel24: TQRLabel
        Left = 495
        Top = 88
        Width = 148
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1309.687500000000000000
          232.833333333333300000
          391.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '.................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel25: TQRLabel
        Left = 307
        Top = 36
        Width = 50
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          812.270833333333300000
          95.250000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel25'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object PageHeader: TQRBand
      Left = 38
      Top = 194
      Width = 1364
      Height = 40
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
        105.833333333333300000
        3608.916666666667000000)
      BandType = rbColumnHeader
      object QRLabel26: TQRLabel
        Left = 3
        Top = 10
        Width = 25
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          7.937500000000000000
          26.458333333333330000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3621#3635#3604#3633#3610
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape2: TQRShape
        Left = 2
        Top = 35
        Width = 750
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
          1984.375000000000000000)
        Shape = qrsHorLine
      end
      object QRShape5: TQRShape
        Left = 2
        Top = 2
        Width = 750
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
          1984.375000000000000000)
        Shape = qrsHorLine
      end
      object QRLabel2: TQRLabel
        Left = 39
        Top = 10
        Width = 41
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          103.187500000000000000
          26.458333333333330000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3623#3633#3609#3607#3637#3656' Inv.'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel6: TQRLabel
        Left = 682
        Top = 10
        Width = 67
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1804.458333333333000000
          26.458333333333330000
          177.270833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 104
        Top = 10
        Width = 43
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          275.166666666666700000
          26.458333333333330000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3648#3621#3586#3607#3637#3656' Inv.'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel12: TQRLabel
        Left = 624
        Top = 10
        Width = 50
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1651.000000000000000000
          26.458333333333330000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'VAT'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel14: TQRLabel
        Left = 555
        Top = 10
        Width = 60
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1468.437500000000000000
          26.458333333333330000
          158.750000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel16: TQRLabel
        Left = 476
        Top = 10
        Width = 50
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1259.416666666667000000
          26.458333333333330000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3648#3621#3586#3607#3637#3656#3648#3588#3621#3617
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel17: TQRLabel
        Left = 258
        Top = 10
        Width = 41
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          682.625000000000000000
          26.458333333333330000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel18: TQRLabel
        Left = 186
        Top = 10
        Width = 34
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          492.125000000000000000
          26.458333333333330000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Job No.'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel13: TQRLabel
        Left = 342
        Top = 10
        Width = 39
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          904.875000000000000000
          26.458333333333330000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 259
      Width = 1364
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
      Font.Name = 'Angsana New'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        95.250000000000000000
        3608.916666666667000000)
      BandType = rbSummary
      object QRLabel9: TQRLabel
        Left = 255
        Top = 7
        Width = 34
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          674.687500000000000000
          18.520833333333330000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3623#3617#3648#3591#3636#3609
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape6: TQRShape
        Left = 2
        Top = 32
        Width = 750
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          84.666666666666670000
          1984.375000000000000000)
        Shape = qrsHorLine
      end
      object QRShape7: TQRShape
        Left = 2
        Top = 2
        Width = 750
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
          1984.375000000000000000)
        Shape = qrsHorLine
      end
      object QRExpr1: TQRExpr
        Left = 555
        Top = 7
        Width = 60
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1468.437500000000000000
          18.520833333333330000
          158.750000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(QueryC10.BALANE)'
        Mask = '#,##0.00'
        FontSize = 12
      end
      object QRExpr2: TQRExpr
        Left = 624
        Top = 7
        Width = 50
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1651.000000000000000000
          18.520833333333330000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(QueryC10.VATAMT)'
        Mask = '#,##0.00'
        FontSize = 12
      end
      object QRExpr3: TQRExpr
        Left = 682
        Top = 7
        Width = 67
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1804.458333333333000000
          18.520833333333330000
          177.270833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(QueryC10.NETPRC)'
        Mask = '#,##0.00'
        FontSize = 12
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 234
      Width = 1364
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        3608.916666666667000000)
      BandType = rbDetail
      object QRSysData1: TQRSysData
        Left = 3
        Top = 1
        Width = 25
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          7.937500000000000000
          2.645833333333333000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 12
      end
      object QRDBText6: TQRDBText
        Left = 39
        Top = 1
        Width = 37
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          103.187500000000000000
          2.645833333333333000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryC10
        DataField = 'TAXDT'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText3: TQRDBText
        Left = 104
        Top = 1
        Width = 39
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          275.166666666666700000
          2.645833333333333000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryC10
        DataField = 'TAXNO'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText13: TQRDBText
        Left = 186
        Top = 1
        Width = 36
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          492.125000000000000000
          2.645833333333333000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryC10
        DataField = 'JOBNO'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel20: TQRLabel
        Left = 258
        Top = 1
        Width = 50
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          682.625000000000000000
          2.645833333333333000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel20'
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText15: TQRDBText
        Left = 476
        Top = 1
        Width = 50
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1259.416666666667000000
          2.645833333333333000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryC10
        DataField = 'CLAIMNO'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText11: TQRDBText
        Left = 555
        Top = 1
        Width = 60
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1468.437500000000000000
          2.645833333333333000
          158.750000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryC10
        DataField = 'BALANE'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText10: TQRDBText
        Left = 624
        Top = 1
        Width = 50
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1651.000000000000000000
          2.645833333333333000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryC10
        DataField = 'VATAMT'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText12: TQRDBText
        Left = 682
        Top = 1
        Width = 67
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1804.458333333333000000
          2.645833333333333000
          177.270833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryC10
        DataField = 'NETPRC'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 342
        Top = 1
        Width = 36
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          904.875000000000000000
          2.645833333333333000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryC10
        DataField = 'STRNO'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from condpay')
    Left = 296
    Top = 8
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
  end
  object QueryC10: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.TAXDT,A.TAXNO,A.JOBNO,A.STRNO,B.ENGNO,A.CLAIMNO,'
      '     A.BALANE,A.VATAMT,A.NETPRC,A.FLAG '
      '     FROM OTHINVOI A,SVMAST B WHERE  A.STRNO=B.STRNO')
    Left = 268
    Top = 8
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 324
    Top = 8
  end
  object Query2: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 352
    Top = 8
  end
end
