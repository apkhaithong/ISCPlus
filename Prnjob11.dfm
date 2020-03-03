object FPrnjob11: TFPrnjob11
  Left = -15
  Top = 128
  Width = 834
  Height = 607
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 157
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3651#3610#3649#3592#3657#3591#3595#3656#3629#3617
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
    Left = -8
    Top = -157
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickReportBeforePrint
    DataSet = QOrdrep
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
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
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
    object PageHeader: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 328
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
      BeforePrint = PageHeaderBeforePrint
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'EucrosiaUPC'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        867.833333333333300000
        1957.916666666667000000)
      BandType = rbPageHeader
      object QRDBText4: TQRDBText
        Left = 601
        Top = 54
        Width = 44
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1590.145833333333000000
          142.875000000000000000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QJobord
        DataField = 'JOBNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'EucrosiaUPC'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText6: TQRDBText
        Left = 70
        Top = 172
        Width = 39
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          185.208333333333300000
          455.083333333333300000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QJobord
        DataField = 'REGNO'
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
      object QRDBText9: TQRDBText
        Left = 70
        Top = 201
        Width = 37
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          185.208333333333300000
          531.812500000000000000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QJobord
        DataField = 'STRNO'
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
        Left = 601
        Top = 201
        Width = 53
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1590.145833333333000000
          531.812500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QJobord
        DataField = 'FINSTIME'
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
      object QRDBText14: TQRDBText
        Left = 601
        Top = 229
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1590.145833333333000000
          605.895833333333400000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QJobord
        DataField = 'RLKILOMT'
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
      object QRLabel25: TQRLabel
        Left = 70
        Top = 84
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          185.208333333333300000
          222.250000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel25'
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
      object QRLabel26: TQRLabel
        Left = 70
        Top = 54
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          185.208333333333300000
          142.875000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel26'
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
      object QRLabel27: TQRLabel
        Left = 70
        Top = 144
        Width = 163
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          185.208333333333300000
          381.000000000000000000
          431.270833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel27'
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
      object QRLabel28: TQRLabel
        Left = 70
        Top = 114
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          185.208333333333300000
          301.625000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel28'
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
      object QRDBText7: TQRDBText
        Left = 601
        Top = 144
        Width = 58
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1590.145833333333000000
          381.000000000000000000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QJobord
        DataField = 'RECVTIME'
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
      object QRDBText8: TQRDBText
        Left = 302
        Top = 201
        Width = 40
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          799.041666666666700000
          531.812500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QJobord
        DataField = 'ENGNO'
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
        Left = 601
        Top = 114
        Width = 48
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1590.145833333333000000
          301.625000000000000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel1'
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
      object QRLabel2: TQRLabel
        Left = 601
        Top = 173
        Width = 48
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1590.145833333333000000
          457.729166666666700000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel2'
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
        Left = 100
        Top = 229
        Width = 48
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          264.583333333333300000
          605.895833333333300000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel3'
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
        Left = 290
        Top = 172
        Width = 48
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          767.291666666666700000
          455.083333333333300000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel4'
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
        Left = 70
        Top = 257
        Width = 48
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          185.208333333333300000
          679.979166666666700000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel5'
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
        Left = 344
        Top = 54
        Width = 48
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          910.166666666666700000
          142.875000000000000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel6'
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
      object QRDBText3: TQRDBText
        Left = 601
        Top = 84
        Width = 40
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1590.145833333333000000
          222.250000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QJobord
        DataField = 'RUNNO'
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
        Left = 533
        Top = 54
        Width = 50
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1410.229166666667000000
          142.875000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3648#3621#3586#3607#3637#3656' JOB:'
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
        Left = 325
        Top = 4
        Width = 85
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          859.895833333333300000
          10.583333333333330000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3651#3610#3649#3592#3657#3591#3595#3656#3629#3617
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Angsana New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 20
      end
      object QRLabel9: TQRLabel
        Left = 533
        Top = 84
        Width = 50
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1410.229166666667000000
          222.250000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3621#3635#3604#3633#3610#3607#3637#3656'    :'
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
        Left = 533
        Top = 114
        Width = 50
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1410.229166666667000000
          301.625000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3623#3633#3609#3607#3637#3656' JOB:'
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
        Left = 533
        Top = 144
        Width = 50
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1410.229166666667000000
          381.000000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3648#3623#3621#3634#3619#3633#3610#3619#3606':'
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
        Left = 533
        Top = 173
        Width = 63
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1410.229166666667000000
          457.729166666666700000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3623#3633#3609#3609#3633#3604#3619#3633#3610#3619#3606' :'
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
        Left = 533
        Top = 201
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1410.229166666667000000
          531.812500000000000000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3648#3623#3621#3634#3609#3633#3604#3619#3633#3610#3619#3606':'
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
        Left = 244
        Top = 173
        Width = 42
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          645.583333333333300000
          457.729166666666700000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3649#3610#3610#3619#3606' :'
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
      object QRLabel15: TQRLabel
        Left = 4
        Top = 201
        Width = 60
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          531.812500000000000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3648#3621#3586#3606#3633#3591'/'#3649#3588#3595#3595#3637
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
      object QRLabel16: TQRLabel
        Left = 244
        Top = 201
        Width = 52
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          645.583333333333300000
          531.812500000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591'  :'
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
        Left = 4
        Top = 229
        Width = 78
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          605.895833333333300000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3595#3656#3629#3617
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
        Left = 4
        Top = 173
        Width = 57
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          457.729166666666600000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3648#3621#3586#3607#3632#3648#3610#3637#3618#3609
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
        Left = 4
        Top = 54
        Width = 52
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          142.875000000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3610#3619#3636#3625#3633#3607
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
      object QRLabel20: TQRLabel
        Left = 4
        Top = 84
        Width = 52
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          222.250000000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
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
      object QRLabel21: TQRLabel
        Left = 4
        Top = 114
        Width = 22
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          301.625000000000000000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3607#3637#3656#3629#3618#3641#3656
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
      object QRLabel22: TQRLabel
        Left = 29
        Top = 301
        Width = 79
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          76.729166666666670000
          796.395833333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3634#3618#3585#3634#3619#3626#3633#3656#3591#3595#3656#3629#3617
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel23: TQRLabel
        Left = 4
        Top = 257
        Width = 42
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          679.979166666666700000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3623#3633#3609#3595#3639#3657#3629#3619#3606
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
      object QRLabel24: TQRLabel
        Left = 533
        Top = 229
        Width = 48
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1410.229166666667000000
          605.895833333333300000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3632#3618#3632#3585#3617'. :'
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
      object QRLabel33: TQRLabel
        Left = 448
        Top = 301
        Width = 90
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1185.333333333333000000
          796.395833333333300000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3612#3621#3585#3634#3619#3605#3619#3623#3592#3595#3656#3629#3617
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel35: TQRLabel
        Left = 382
        Top = 173
        Width = 27
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1010.708333333333000000
          457.729166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3626#3637#3619#3606' :'
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
      object QRDBText5: TQRDBText
        Left = 413
        Top = 173
        Width = 38
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1092.729166666667000000
          457.729166666666700000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QJobord
        DataField = 'COLOR'
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
      object QRLabel36: TQRLabel
        Left = 244
        Top = 257
        Width = 75
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          645.583333333333300000
          679.979166666666700000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3614#3609#3633#3585#3591#3634#3609#3619#3633#3610#3619#3606' :'
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
        Left = 4
        Top = 292
        Width = 708
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          10.583333333333330000
          772.583333333333400000
          1873.250000000000000000)
        Shape = qrsHorLine
      end
      object QRLabel37: TQRLabel
        Left = 244
        Top = 144
        Width = 41
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          645.583333333333300000
          381.000000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3618#3637#3656#3627#3657#3629#3619#3606' :'
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
      object QRLabel38: TQRLabel
        Left = 290
        Top = 144
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          767.291666666666700000
          381.000000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel38'
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
      object QRLabel39: TQRLabel
        Left = 382
        Top = 144
        Width = 34
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1010.708333333333000000
          381.000000000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3619#3640#3656#3609#3619#3606' :'
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
      object QRLabel40: TQRLabel
        Left = 417
        Top = 144
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1103.312500000000000000
          381.000000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel40'
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
      object QRLabel41: TQRLabel
        Left = 4
        Top = 144
        Width = 44
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          381.000000000000000000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #3650#3607#3619#3624#3633#3614#3607#3660
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
        Left = 593
        Top = 8
        Width = 63
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1568.979166666667000000
          21.166666666666670000
          166.687500000000000000)
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
        Text = 'Page :'
        Transparent = False
        FontSize = 13
      end
      object QRLabel42: TQRLabel
        Left = 641
        Top = 301
        Width = 64
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1695.979166666667000000
          796.395833333333300000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3612#3641#3657#3619#3633#3610#3612#3636#3604#3594#3629#3610
        Color = clWhite
        Font.Charset = THAI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Angsana New'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel44: TQRLabel
        Left = 320
        Top = 257
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          846.666666666666700000
          679.979166666666700000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel44'
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
      object QRLabel47: TQRLabel
        Left = 4
        Top = 10
        Width = 54
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          10.583333333333330000
          26.458333333333330000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel47'
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
      object QRLabel48: TQRLabel
        Left = 382
        Top = 201
        Width = 35
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1010.708333333333000000
          531.812500000000000000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BODY:'
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
      object QRDBText10: TQRDBText
        Left = 416
        Top = 201
        Width = 48
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1100.666666666667000000
          531.812500000000000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QJobord
        DataField = 'BODYNO'
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
      Top = 366
      Width = 740
      Height = 30
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
        79.375000000000000000
        1957.916666666667000000)
      BandType = rbDetail
      object QRSysData3: TQRSysData
        Left = 0
        Top = 5
        Width = 23
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          0.000000000000000000
          13.229166666666670000
          60.854166666666670000)
        Alignment = taRightJustify
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
      object QRDBText1: TQRDBText
        Left = 29
        Top = 5
        Width = 49
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          76.729166666666670000
          13.229166666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QOrdrep
        DataField = 'REPDESC'
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
      object QRLabel34: TQRLabel
        Left = 415
        Top = 5
        Width = 157
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1098.020833333333000000
          13.229166666666670000
          415.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '....................................................'
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
      object QRDBText11: TQRDBText
        Left = 641
        Top = 5
        Width = 31
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1695.979166666667000000
          13.229166666666670000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QOrdrep
        DataField = 'CODE'
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
    object QRBand1: TQRBand
      Left = 38
      Top = 396
      Width = 740
      Height = 130
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
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
        343.958333333333300000
        1957.916666666667000000)
      BandType = rbSummary
      object QRMemo1: TQRMemo
        Left = 29
        Top = 7
        Width = 692
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          76.729166666666670000
          18.520833333333330000
          1830.916666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
      object QRLabel49: TQRLabel
        Left = 46
        Top = 74
        Width = 157
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          121.708333333333300000
          195.791666666666700000
          415.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '....................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel50: TQRLabel
        Left = 90
        Top = 98
        Width = 41
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          238.125000000000000000
          259.291666666666700000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3612#3641#3657#3626#3656#3591#3595#3656#3629#3617
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
      object QRLabel51: TQRLabel
        Left = 301
        Top = 102
        Width = 73
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          796.395833333333300000
          269.875000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3594#3656#3634#3591'/'#3627#3633#3623#3627#3609#3657#3634#3594#3656#3634#3591
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
      object QRLabel52: TQRLabel
        Left = 259
        Top = 78
        Width = 157
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          685.270833333333300000
          206.375000000000000000
          415.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '....................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel53: TQRLabel
        Left = 499
        Top = 78
        Width = 157
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1320.270833333333000000
          206.375000000000000000
          415.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '....................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel54: TQRLabel
        Left = 543
        Top = 102
        Width = 79
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1436.687500000000000000
          269.875000000000000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Q.C. '#3612#3641#3657#3605#3619#3623#3592#3626#3629#3610
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
    object QRBand2: TQRBand
      Left = 38
      Top = 526
      Width = 740
      Height = 105
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Angsana New'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        277.812500000000000000
        1957.916666666667000000)
      BandType = rbPageFooter
      object QRLabel29: TQRLabel
        Left = 46
        Top = 4
        Width = 157
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          121.708333333333300000
          10.583333333333330000
          415.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '....................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel30: TQRLabel
        Left = 90
        Top = 28
        Width = 41
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          238.125000000000000000
          74.083333333333330000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3612#3641#3657#3626#3656#3591#3595#3656#3629#3617
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
      object QRLabel31: TQRLabel
        Left = 259
        Top = 8
        Width = 157
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          685.270833333333300000
          21.166666666666670000
          415.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '....................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel32: TQRLabel
        Left = 301
        Top = 32
        Width = 73
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          796.395833333333300000
          84.666666666666670000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #3594#3656#3634#3591'/'#3627#3633#3623#3627#3609#3657#3634#3594#3656#3634#3591
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
      object QRLabel45: TQRLabel
        Left = 499
        Top = 8
        Width = 157
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1320.270833333333000000
          21.166666666666670000
          415.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '....................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel46: TQRLabel
        Left = 543
        Top = 32
        Width = 79
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1436.687500000000000000
          84.666666666666670000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Q.C. '#3612#3641#3657#3605#3619#3623#3592#3626#3629#3610
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
      object QRLabel43: TQRLabel
        Left = 631
        Top = 68
        Width = 65
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1669.520833333333000000
          179.916666666666700000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FR-FM-002/0'
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
  object QJobord: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT J.JOBNO,J.RECVDATE,J.LOCAT,J.STRNO,J.CUSCOD,M.SDATE,'
      
        'J.FINSDATE,J.FINSTIME,J.RLKILOMT,J.RECVCOD,J.RECVTIME,J.TOPNO,J.' +
        'RUNNO,'
      
        'M.REGNO,M.ENGNO,M.MDLCOD,M.BAAB,M.COLOR,M.CC,M.VIPCARD,C.SNAM,C.' +
        'NAME1,C.NAME2,'
      
        'C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,C.ZIP,C.TELP,C.FAX,C.CONTAC' +
        'T,'
      
        'F.OFFICNAM,M.STRNO,L.LOCATNAM,S.TYPNAME,J.REPTYPE,D.DESC,T.TYPEN' +
        'AM    '
      'FROM JOBORDER J,SVMAST M,ARMAST C,OFFICER F,LOCATMST L,'
      'SVTYPE S,MODELMST D,TYPEMST T '
      'WHERE J.STRNO=M.STRNO AND J.CUSCOD=C.CUSCOD '
      'AND J.RECVCOD=F.OFFICCOD AND M.TYPE=T.TYPECOD')
    FetchOptions.Unidirectional = True
    Left = 168
    Top = 220
  end
  object QOrdrep: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT O.JOBNO,O.NO,O.REPDESC'
      'FROM ORDREP O')
    FetchOptions.Unidirectional = True
    Left = 173
    Top = 252
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from condpay')
    Left = 196
    Top = 220
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    FetchOptions.Unidirectional = True
    Left = 196
    Top = 252
  end
end
