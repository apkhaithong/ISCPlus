object FmTXRp21: TFmTXRp21
  Left = 223
  Top = 117
  Width = 845
  Height = 614
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3616#3634#3625#3637#3595#3639#3657#3629
  Color = clBtnFace
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
  object Rep: TQuickRep
    Left = 4
    Top = 4
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QTaxRp20
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
      50.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      50.000000000000000000
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
      Top = 19
      Width = 759
      Height = 145
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
        383.645833333333300000
        2008.187500000000000000)
      BandType = rbPageHeader
      object QRLabel7: TQRLabel
        Left = 313
        Top = 4
        Width = 133
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          828.145833333333300000
          10.583333333333330000
          351.895833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = #3619#3634#3618#3591#3634#3609#3616#3634#3625#3637#3595#3639#3657#3629' '
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
      object QRLabel13: TQRLabel
        Left = 352
        Top = 31
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          931.333333333333300000
          82.020833333333330000
          142.875000000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel13'
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
        Left = 4
        Top = 73
        Width = 82
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          193.145833333333300000
          216.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3594#3639#3656#3629#3612#3641#3657#3611#3619#3632#3585#3629#3610#3585#3634#3619
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
        Left = 144
        Top = 73
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          381.000000000000000000
          193.145833333333300000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel10'
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
      object QRLabel8: TQRLabel
        Left = 4
        Top = 96
        Width = 110
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          254.000000000000000000
          291.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3594#3639#3656#3629#3626#3606#3634#3609#3607#3637#3656#3611#3619#3632#3585#3629#3610#3585#3634#3619
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
        Left = 144
        Top = 96
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          381.000000000000000000
          254.000000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel11'
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
        Left = 4
        Top = 124
        Width = 143
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          328.083333333333300000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        ParentFont = False
        Text = #3623#3633#3609#3607#3637#3656#3614#3636#3617#3614#3660#3619#3634#3618#3591#3634#3609': '
        Transparent = False
        FontSize = 13
      end
      object QRLabel2: TQRLabel
        Left = 463
        Top = 73
        Width = 105
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1225.020833333333000000
          193.145833333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3648#3621#3586#3611#3619#3632#3592#3635#3605#3633#3623#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
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
      object QRLabel12: TQRLabel
        Left = 588
        Top = 73
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1555.750000000000000000
          193.145833333333300000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel12'
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
      object QRSysData1: TQRSysData
        Left = 673
        Top = 124
        Width = 74
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1780.645833333333000000
          328.083333333333300000
          195.791666666666700000)
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
        Text = #3627#3609#3657#3634#3607#3637#3656' : '
        Transparent = False
        FontSize = 13
      end
    end
    object PageHeader: TQRBand
      Left = 38
      Top = 164
      Width = 759
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
        2008.187500000000000000)
      BandType = rbColumnHeader
      object QRLabel15: TQRLabel
        Left = 8
        Top = 5
        Width = 24
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          21.166666666666670000
          13.229166666666670000
          63.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'No.'
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
      object QRLabel4: TQRLabel
        Left = 40
        Top = 5
        Width = 57
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          105.833333333333300000
          13.229166666666670000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3623#3633#3609'/'#3648#3604#3639#3629#3609'/'#3611#3637
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
        Left = 113
        Top = 5
        Width = 69
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          298.979166666666700000
          13.229166666666670000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610
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
      object QRLabel5: TQRLabel
        Left = 207
        Top = 5
        Width = 40
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          547.687500000000000000
          13.229166666666670000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3619#3634#3618#3585#3634#3619' '
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
        Left = 426
        Top = 5
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1127.125000000000000000
          13.229166666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3617#3641#3621#3588#3656#3634#3626#3636#3609#3588#3657#3634
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
      object QRLabel19: TQRLabel
        Left = 519
        Top = 5
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1373.187500000000000000
          13.229166666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3616#3634#3625#3637#3617#3641#3621#3588#3656#3634#3648#3614#3636#3656#3617
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
        Left = 618
        Top = 5
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1635.125000000000000000
          13.229166666666670000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3619#3623#3617#3592#3635#3609#3623#3609#3648#3591#3636#3609
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
        Left = 5
        Top = 2
        Width = 730
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          13.229166666666670000
          5.291666666666667000
          1931.458333333333000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRShape4: TQRShape
        Left = 5
        Top = 35
        Width = 730
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          13.229166666666670000
          92.604166666666670000
          1931.458333333333000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
    end
    object PageFooter: TQRBand
      Left = 38
      Top = 229
      Width = 759
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
        2008.187500000000000000)
      BandType = rbSummary
      object QRLabel20: TQRLabel
        Left = 278
        Top = 7
        Width = 68
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          735.541666666666700000
          18.520833333333330000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3618#3629#3604#3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609
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
        Left = 5
        Top = 38
        Width = 730
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          13.229166666666670000
          100.541666666666700000
          1931.458333333333000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRShape2: TQRShape
        Left = 5
        Top = 2
        Width = 730
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          13.229166666666670000
          5.291666666666667000
          1931.458333333333000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRLabel16: TQRLabel
        Left = 426
        Top = 7
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1127.125000000000000000
          18.520833333333330000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
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
      object QRLabel17: TQRLabel
        Left = 519
        Top = 7
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1373.187500000000000000
          18.520833333333330000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel17'
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
        Left = 618
        Top = 7
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1635.125000000000000000
          18.520833333333330000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel18'
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
      Left = 38
      Top = 204
      Width = 759
      Height = 25
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
      Font.Height = -15
      Font.Name = 'EucrosiaUPC'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        66.145833333333330000
        2008.187500000000000000)
      BandType = rbDetail
      object QRSysData3: TQRSysData
        Left = -20
        Top = 3
        Width = 51
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          -52.916666666666670000
          7.937500000000000000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
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
      object QRDBText1: TQRDBText
        Left = 40
        Top = 3
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          105.833333333333300000
          7.937500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QTaxRp20
        DataField = 'TAXDATE'
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
      object QRDBText2: TQRDBText
        Left = 115
        Top = 3
        Width = 40
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          304.270833333333300000
          7.937500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QTaxRp20
        DataField = 'TAXNO'
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
      object QRDBText7: TQRDBText
        Left = 199
        Top = 3
        Width = 220
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          526.520833333333400000
          7.937500000000000000
          582.083333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query4
        DataField = 'APNAME'
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
      object QRDBText4: TQRDBText
        Left = 426
        Top = 3
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1127.125000000000000000
          7.937500000000000000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QTaxRp20
        DataField = 'BALANCE'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00;(#,##0.00)'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText5: TQRDBText
        Left = 519
        Top = 3
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1373.187500000000000000
          7.937500000000000000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QTaxRp20
        DataField = 'VAT'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00;(#,##0.00)'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText6: TQRDBText
        Left = 618
        Top = 3
        Width = 80
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1635.125000000000000000
          7.937500000000000000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QTaxRp20
        DataField = 'TOTTAX'
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Angsana New'
        Font.Style = []
        Mask = '#,##0.00;(#,##0.00)'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRLabel22: TQRLabel
        Left = 703
        Top = 4
        Width = 38
        Height = 23
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1860.020833333333000000
          10.583333333333330000
          100.541666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '*'#3618#3585#3648#3621#3636#3585'*'
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
  end
  object QTaxRp20: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from Taxbuy')
    Left = 72
    Top = 8
    object QTaxRp20TAXNO: TStringField
      FieldName = 'TAXNO'
      Size = 12
    end
    object QTaxRp20TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object QTaxRp20DESC1: TStringField
      FieldName = 'DESC1'
      Size = 55
    end
    object QTaxRp20CUSCOD: TStringField
      FieldName = 'CUSCOD'
      Size = 12
    end
    object QTaxRp20BALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00'
    end
    object QTaxRp20VAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object QTaxRp20TOTTAX: TFloatField
      FieldName = 'TOTTAX'
      DisplayFormat = '#,##0.00'
    end
    object QTaxRp20FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object QTaxRp20CANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 36
    Top = 8
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT SUM(AMOUNT)  AS AMT,SUM(VAT) AS VAT ,SUM(TOTTAX) AS TOT F' +
        'ROM TAXSAL '
      'WHERE CANCELID  is null')
    Left = 111
    Top = 7
  end
  object Query4: TFDQuery
    ConnectionName = 'HI_DBMS'
    MasterSource = SoQuery3
    SQL.Strings = (
      'SELECT Apcode,Apname FROM ApMast')
    Left = 204
    Top = 16
  end
  object SoQuery3: TDataSource
    DataSet = QTaxRp20
    Left = 168
    Top = 16
  end
end
