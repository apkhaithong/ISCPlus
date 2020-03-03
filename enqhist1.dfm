object FEnqHist: TFEnqHist
  Left = 187
  Top = 144
  BorderStyle = bsDialog
  Caption = #3626#3629#3610#3606#3634#3617#3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3610#3619#3636#3585#3634#3619
  ClientHeight = 539
  ClientWidth = 997
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 48
    Width = 997
    Height = 491
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = '   '#3611#3619#3632#3623#3633#3605#3636#3619#3606'   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 989
        Height = 122
        Align = alTop
        Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3619#3606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label40: TLabel
          Left = 16
          Top = 29
          Width = 67
          Height = 16
          Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 29
          Top = 50
          Width = 53
          Height = 16
          Caption = #3619#3627#3633#3626#3618#3637#3656#3627#3657#3629#3619#3606
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 253
          Top = 51
          Width = 46
          Height = 16
          Caption = #3619#3627#3633#3626#3619#3640#3656#3609#3619#3606
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 500
          Top = 49
          Width = 20
          Height = 16
          Caption = #3649#3610#3610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 256
          Top = 29
          Width = 44
          Height = 16
          Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 467
          Top = 29
          Width = 53
          Height = 16
          Caption = #3648#3621#3586#3607#3632#3648#3610#3637#3618#3609
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 280
          Top = 71
          Width = 19
          Height = 16
          Caption = #3626#3637#3619#3606
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 35
          Top = 71
          Width = 49
          Height = 16
          Caption = #3586#3609#3634#3604' '#3595#3637'.'#3595#3637'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 457
          Top = 70
          Width = 63
          Height = 16
          Caption = #3623#3633#3609#3592#3604#3607#3632#3648#3610#3637#3618#3609
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label51: TLabel
          Left = 453
          Top = 91
          Width = 67
          Height = 16
          Caption = #3623#3633#3609#3627#3617#3604#3611#3619#3632#3585#3633#3609
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit45: TDBEdit
          Left = 521
          Top = 48
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'BAAB'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 20
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit43: TDBEdit
          Left = 301
          Top = 48
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'MDLCOD'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 20
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit42: TDBEdit
          Left = 85
          Top = 48
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'TYPE'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 12
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit39: TDBEdit
          Left = 85
          Top = 27
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'STRNO'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 20
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit40: TDBEdit
          Left = 301
          Top = 27
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'ENGNO'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 20
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit41: TDBEdit
          Left = 521
          Top = 27
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'REGNO'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit46: TDBEdit
          Left = 301
          Top = 69
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'COLOR'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 20
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit47: TDBEdit
          Left = 85
          Top = 69
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'CC'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 6
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit50: TDBEdit
          Left = 521
          Top = 69
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'REGDATE'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit51: TDBEdit
          Left = 521
          Top = 90
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'EXPWARNT'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 122
        Width = 989
        Height = 135
        Align = alTop
        Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3621#3641#3585#3588#3657#3634
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label17: TLabel
          Left = 36
          Top = 32
          Width = 45
          Height = 16
          Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 21
          Top = 54
          Width = 60
          Height = 16
          Caption = #3648#3621#3586#3610#3633#3605#3619' VIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 237
          Top = 53
          Width = 59
          Height = 16
          Caption = #3623#3633#3609#3607#3637#3656#3629#3629#3585#3610#3633#3605#3619
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 456
          Top = 52
          Width = 59
          Height = 16
          Caption = #3610#3633#3605#3619#3627#3617#3604#3629#3634#3618#3640
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 236
          Top = 74
          Width = 60
          Height = 16
          Caption = #3648#3621#3586#3585#3619#3617#3608#3619#3619#3617#3660
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 461
          Top = 73
          Width = 52
          Height = 16
          Caption = #3623#3633#3609#3627#3617#3604#3629#3634#3618#3640
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 12
          Top = 73
          Width = 69
          Height = 16
          Caption = #3648#3594#3655#3588#3588#3619#3633#3657#3591#3626#3640#3604#3607#3657#3634#3618
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 10
          Top = 95
          Width = 71
          Height = 16
          Caption = #3648#3621#3586' '#3585'.'#3617' '#3626#3640#3604#3607#3657#3634#3618
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 440
          Top = 95
          Width = 75
          Height = 16
          Caption = #3626#3656#3623#3609#3621#3604#3588#3656#3634#3610#3619#3636#3585#3634#3619
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 652
          Top = 94
          Width = 12
          Height = 16
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 258
          Top = 33
          Width = 37
          Height = 16
          Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit18: TDBEdit
          Left = 84
          Top = 27
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'CUSCOD'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 12
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit14: TDBEdit
          Left = 84
          Top = 48
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'VIPCARD'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 20
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 300
          Top = 48
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'VIPISSU'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit16: TDBEdit
          Left = 519
          Top = 48
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'VIPEXP'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit31: TDBEdit
          Left = 300
          Top = 69
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'INSURNO'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 20
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit32: TDBEdit
          Left = 519
          Top = 69
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'INSURDT'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit33: TDBEdit
          Left = 84
          Top = 69
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'LASTSERV'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit34: TDBEdit
          Left = 84
          Top = 90
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'LASTKILO'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit17: TDBEdit
          Left = 519
          Top = 90
          Width = 130
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          DataField = 'SVDISCT'
          DataSource = Sosvmast
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object Edit3: TEdit
          Left = 300
          Top = 27
          Width = 349
          Height = 22
          TabStop = False
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #3619#3634#3618#3585#3634#3619' Job'
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 989
        Height = 32
        Align = alTop
      end
      object DBGrid1: TRzDBGrid
        Left = 0
        Top = 32
        Width = 989
        Height = 425
        Align = alClient
        DataSource = SoJoborder3
        FixedColor = 16766894
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'RECVDATE'
            Title.Caption = #3623#3633#3609#3607#3637#3656#3648#3586#3657#3634#3610#3619#3636#3585#3634#3619
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JOBNO'
            Title.Caption = #3648#3621#3586#3607#3637#3656' Job'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCAT'
            Title.Caption = #3626#3634#3586#3634#3607#3637#3656#3595#3656#3629#3617
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RLKILOMT'
            Title.Caption = #3648#3621#3586' '#3585#3617'. '#3603' '#3623#3633#3609#3595#3656#3629#3617
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REPTYPE'
            Title.Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3595#3656#3629#3617
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GROUP1'
            Title.Caption = #3619#3627#3633#3626#3585#3621#3640#3656#3617#3591#3634#3609
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECVCOD'
            Title.Caption = #3614#3609#3591'.'#3619#3633#3610#3619#3606
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAYCOD'
            Title.Caption = #3614#3609#3591'.'#3592#3656#3634#3618#3619#3606
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
            FieldName = 'RFINSHDT'
            Title.Caption = #3623#3633#3609#3595#3656#3629#3617#3648#3626#3619#3655#3592
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APP_DATE'
            Title.Caption = #3623#3633#3609#3609#3633#3604#3588#3619#3633#3657#3591#3605#3656#3629#3652#3611
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APP_MILE'
            Title.Caption = #3648#3621#3586#3607#3637#3656' '#3585#3617'.'#3609#3633#3604#3627#3617#3634#3618
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSPECT'
            Title.Caption = #3612#3641#3657#3605#3619#3623#3592#3626#3629#3610
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARTNET'
            Title.Caption = #3588#3656#3634#3629#3632#3652#3627#3621#3656
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OILNET'
            Title.Caption = #3588#3656#3634#3609#3657#3635#3617#3633#3609
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERVNET'
            Title.Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OUTJNET'
            Title.Caption = #3588#3656#3634#3591#3634#3609#3609#3629#3585
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COLORNET'
            Title.Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619#3591#3634#3609#3626#3637
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OTHERNET'
            Title.Caption = #3629#3636#3609#3623#3629#3618#3626#3660#3648#3626#3619#3636#3617
            Visible = True
          end>
      end
      object CheckBox1: TCheckBox
        Left = 76
        Top = 8
        Width = 189
        Height = 17
        Caption = #3648#3619#3637#3618#3591#3592#3634#3585#3623#3633#3609#3648#3586#3657#3634#3619#3633#3610#3610#3619#3636#3585#3634#3619#3621#3656#3634#3626#3640#3604#3585#3656#3629#3609
        TabOrder = 1
        OnMouseUp = CheckBox1MouseUp
      end
    end
    object TabSheet3: TTabSheet
      Caption = '   '#3588#3656#3634#3610#3619#3636#3585#3634#3619'   '
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 989
        Height = 32
        Align = alTop
      end
      object Label22: TLabel
        Left = 12
        Top = 8
        Width = 44
        Height = 16
        Caption = #3617#3641#3621#3588#3656#3634#3619#3623#3617
      end
      object Label1: TLabel
        Left = 164
        Top = 9
        Width = 38
        Height = 16
        Caption = #3616#3634#3625#3637#3619#3623#3617
      end
      object Label2: TLabel
        Left = 314
        Top = 10
        Width = 38
        Height = 16
        Caption = #3618#3629#3604#3619#3623#3617
      end
      object DBEdit28: TDBEdit
        Left = 360
        Top = 5
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'SERVTOT'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit27: TDBEdit
        Left = 208
        Top = 5
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'SERVVAT'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit10: TDBEdit
        Left = 61
        Top = 5
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'SERVNET'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBGrid_Sv: TRzDBGrid
        Left = 0
        Top = 32
        Width = 989
        Height = 425
        Align = alClient
        DataSource = Dm_SV.SoServtran1
        FixedColor = 16766894
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODE'
            Title.Caption = #3619#3627#3633#3626#3588#3656#3634#3610#3619#3636#3585#3634#3619
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC1'
            Title.Caption = #3619#3634#3618#3585#3634#3619
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRT'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRICE'
            Title.Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REDU'
            Title.Caption = #3626#3656#3623#3609#3621#3604
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETPRIC'
            Title.Caption = #3618#3629#3604#3626#3640#3607#3608#3636
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERVCOD'
            Title.Caption = #3619#3627#3633#3626#3594#3656#3634#3591#3595#3656#3629#3617
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERTIME'
            Title.Caption = #3594#3617'.'#3591#3634#3609#3592#3619#3636#3591
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OTTIME'
            Title.Caption = #3594#3617'. O.T.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLAIM'
            Title.Caption = #3648#3588#3621#3617
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = '    '#3588#3656#3634#3609#3657#3635#3617#3633#3609'    '
      object Bevel3: TBevel
        Left = 0
        Top = 0
        Width = 989
        Height = 32
        Align = alTop
      end
      object Label23: TLabel
        Left = 283
        Top = 7
        Width = 44
        Height = 16
        Caption = #3617#3641#3621#3588#3656#3634#3619#3623#3617
      end
      object Label28: TLabel
        Left = 443
        Top = 7
        Width = 38
        Height = 16
        Caption = #3616#3634#3625#3637#3619#3623#3617
      end
      object Label29: TLabel
        Left = 591
        Top = 5
        Width = 38
        Height = 16
        Caption = #3618#3629#3604#3619#3623#3617
      end
      object Label6: TLabel
        Left = 8
        Top = 7
        Width = 34
        Height = 16
        Caption = #3619#3634#3618#3585#3634#3619
      end
      object DBEdit26: TDBEdit
        Left = 633
        Top = 5
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'OILTOT'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit25: TDBEdit
        Left = 483
        Top = 6
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'OILVAT'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 336
        Top = 6
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'OILNET'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 44
        Top = 7
        Width = 221
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'DESC1'
        DataSource = Dm_SV.SoToildes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBGrid_OL: TRzDBGrid
        Left = 0
        Top = 32
        Width = 989
        Height = 425
        Align = alClient
        DataSource = Dm_SV.SoOiltran1
        FixedColor = 16766894
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PARTNO'
            Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY'
            Title.Caption = #3592#3635#3609#3623#3609
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UPRICE'
            Title.Caption = #3619#3634#3588#3634#3586#3634#3618
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETPRC'
            Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REDU1'
            Title.Caption = #3626#3656#3623#3609#3621#3604
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTPRC'
            Title.Caption = #3618#3629#3604#3626#3640#3607#3608#3636
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERVCOD'
            Title.Caption = #3619#3627#3633#3626#3594#3656#3634#3591#3595#3656#3629#3617
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERTIME'
            Title.Caption = #3594#3617'.'#3591#3634#3609#3592#3619#3636#3591
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = ' '#3588#3656#3634#3591#3634#3609#3609#3629#3585' '
      object Bevel4: TBevel
        Left = 0
        Top = 0
        Width = 989
        Height = 32
        Align = alTop
      end
      object Label3: TLabel
        Left = 31
        Top = 8
        Width = 44
        Height = 16
        Caption = #3617#3641#3621#3588#3656#3634#3619#3623#3617
      end
      object Label24: TLabel
        Left = 184
        Top = 8
        Width = 38
        Height = 16
        Caption = #3616#3634#3625#3637#3619#3623#3617
      end
      object Label15: TLabel
        Left = 331
        Top = 8
        Width = 38
        Height = 16
        Caption = #3618#3629#3604#3619#3623#3617
      end
      object DBEdit4: TDBEdit
        Left = 79
        Top = 7
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'OUTJNET'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit12: TDBEdit
        Left = 228
        Top = 7
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'OUTJVAT'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 372
        Top = 6
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'OUTJTOT'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBGrid_Ot: TRzDBGrid
        Left = 0
        Top = 32
        Width = 989
        Height = 425
        Align = alClient
        DataSource = Dm_SV.SoOuttran1
        FixedColor = 16766894
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODE'
            Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC1'
            Title.Caption = #3619#3634#3618#3585#3634#3619
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY'
            Title.Caption = #3592#3635#3609#3623#3609
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UCOST'
            Title.Caption = #3605#3657#3609#3607#3640#3609#3605#3656#3629#3627#3609#3656#3623#3618
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UPRICE'
            Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTPRIC'
            Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REDU'
            Title.Caption = #3626#3656#3623#3609#3621#3604
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETPRIC'
            Title.Caption = #3618#3629#3604#3626#3640#3607#3608#3636
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERVCOD'
            Title.Caption = #3619#3627#3633#3626#3594#3656#3634#3591#3595#3656#3629#3617
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERTIME'
            Title.Caption = #3594#3617'.'#3591#3634#3609#3592#3619#3636#3591
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OTTIME'
            Title.Caption = #3594#3617'. O.T.'
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619#3591#3634#3609#3626#3637
      object Bevel5: TBevel
        Left = 0
        Top = 0
        Width = 989
        Height = 32
        Align = alTop
      end
      object Label25: TLabel
        Left = 20
        Top = 7
        Width = 44
        Height = 16
        Caption = #3617#3641#3621#3588#3656#3634#3619#3623#3617
      end
      object Label4: TLabel
        Left = 183
        Top = 8
        Width = 38
        Height = 16
        Caption = #3616#3634#3625#3637#3619#3623#3617
      end
      object Label5: TLabel
        Left = 329
        Top = 7
        Width = 38
        Height = 16
        Caption = #3618#3629#3604#3619#3623#3617
      end
      object DBEdit7: TDBEdit
        Left = 76
        Top = 4
        Width = 100
        Height = 22
        Color = clBlack
        Ctl3D = False
        DataField = 'COLORNET'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit23: TDBEdit
        Left = 224
        Top = 5
        Width = 100
        Height = 22
        Color = clBlack
        Ctl3D = False
        DataField = 'COLORVAT'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit24: TDBEdit
        Left = 380
        Top = 4
        Width = 100
        Height = 22
        Color = clBlack
        Ctl3D = False
        DataField = 'COLORTOT'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBGrid_Cr: TRzDBGrid
        Left = 0
        Top = 32
        Width = 989
        Height = 425
        Align = alClient
        DataSource = Dm_SV.SoColrtran1
        FixedColor = 16766894
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODE'
            Title.Caption = #3619#3627#3633#3626#3588#3656#3634#3610#3619#3636#3585#3634#3619
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC1'
            Title.Caption = #3619#3634#3618#3585#3634#3619
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRICE'
            Title.Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REDU'
            Title.Caption = #3626#3656#3623#3609#3621#3604
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETPRIC'
            Title.Caption = #3618#3629#3604#3626#3640#3607#3608#3636
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERVCOD'
            Title.Caption = #3619#3627#3633#3626#3594#3656#3634#3591#3595#3656#3629#3617
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERTIME'
            Title.Caption = #3594#3617'.'#3591#3634#3609#3592#3619#3636#3591
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OTTIME'
            Title.Caption = #3594#3617'. O.T.'
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = #3619#3634#3618#3585#3634#3619#3629#3632#3652#3627#3621#3656
      object Bevel6: TBevel
        Left = 0
        Top = 0
        Width = 989
        Height = 32
        Align = alTop
      end
      object Label36: TLabel
        Left = 12
        Top = 7
        Width = 34
        Height = 16
        Caption = #3619#3634#3618#3585#3634#3619
      end
      object Label37: TLabel
        Left = 289
        Top = 9
        Width = 44
        Height = 16
        Caption = #3617#3641#3621#3588#3656#3634#3619#3623#3617
      end
      object Label38: TLabel
        Left = 443
        Top = 10
        Width = 38
        Height = 16
        Caption = #3616#3634#3625#3637#3619#3623#3617
      end
      object Label39: TLabel
        Left = 593
        Top = 9
        Width = 38
        Height = 16
        Caption = #3618#3629#3604#3619#3623#3617
      end
      object DBEdit38: TDBEdit
        Left = 55
        Top = 7
        Width = 221
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'DESC1'
        DataSource = Dm_SV.SoTInvmast
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 336
        Top = 6
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'PARTNET'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 484
        Top = 7
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'PARTVAT'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit19: TDBEdit
        Left = 642
        Top = 6
        Width = 100
        Height = 22
        TabStop = False
        Color = clBlack
        Ctl3D = False
        DataField = 'PARTTOT'
        DataSource = SoJoborder3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBGrid_Pt: TRzDBGrid
        Left = 0
        Top = 32
        Width = 989
        Height = 425
        Align = alClient
        DataSource = Dm_SV.SoParttran1
        FixedColor = 16766894
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PARTNO'
            Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY'
            Title.Caption = #3592#3635#3609#3623#3609
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UPRICE'
            Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REDU1'
            Title.Caption = '%'#3626#3656#3623#3609#3621#3604'1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REDU2'
            Title.Caption = '%'#3626#3656#3623#3609#3621#3604'2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REDU3'
            Title.Caption = '%'#3626#3656#3623#3609#3621#3604'3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETPRC'
            Title.Caption = #3619#3634#3588#3634#3626#3640#3607#3608#3636
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTPRC'
            Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLAIM'
            Title.Caption = #3648#3588#3621#3617
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETFL'
            Title.Caption = 'NET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SVCOLOR'
            Title.Caption = #3624#3641#3609#3618#3660#3626#3637
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERVCOD'
            Title.Caption = #3619#3627#3633#3626#3594#3656#3634#3591#3595#3656#3629#3617
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERTIME'
            Title.Caption = #3594#3617'.'#3591#3634#3609#3592#3619#3636#3591
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAXNO'
            Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610
            Visible = True
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = '  '#3588#3635#3626#3633#3656#3591#3595#3656#3629#3617'  '
      object Bevel7: TBevel
        Left = 0
        Top = 0
        Width = 989
        Height = 32
        Align = alTop
      end
      object RzDBGrid1: TRzDBGrid
        Left = 0
        Top = 32
        Width = 989
        Height = 425
        Align = alClient
        DataSource = Dm_SV.SoOrdrep1
        FixedColor = 16766894
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NO'
            Title.Caption = #3621#3635#3585#3633#3610#3607#3637#3656
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REPDESC'
            Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FLAG'
            Title.Caption = #3626#3606#3634#3609#3632
            Visible = True
          end>
      end
    end
    object TabSheet9: TTabSheet
      Caption = #3629#3636#3609#3623#3629#3618#3626#3660#3648#3626#3619#3636#3617
      object Bevel8: TBevel
        Left = 0
        Top = 0
        Width = 989
        Height = 32
        Align = alTop
      end
      object DBGrid3: TRzDBGrid
        Left = 0
        Top = 32
        Width = 989
        Height = 425
        Align = alClient
        DataSource = SoOthinv
        FixedColor = 16766894
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'INVNO'
            Title.Caption = #3648#3621#3586#3607#3637#3656' Invoi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INVDATE'
            Title.Caption = #3623#3633#3609#3607#3637#3656' Inv'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JOBNO'
            Title.Caption = #3648#3621#3586#3607#3637#3656' JOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCAT'
            Title.Caption = #3619#3627#3633#3626#3626#3634#3586#3634
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JOBDATE'
            Title.Caption = #3623#3633#3609#3607#3637#3656' Job'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STRNO'
            Title.Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
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
            FieldName = 'TOTPRC'
            Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DSCAMT'
            Title.Caption = #3626#3656#3623#3609#3621#3604
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BALANE'
            Title.Caption = #3588#3591#3648#3627#3621#3639#3629
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VATAMT'
            Title.Caption = #3618#3629#3604#3616#3634#3625#3637
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETPRC'
            Title.Caption = #3618#3629#3604#3619#3623#3617#3626#3640#3607#3608#3636
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAXNO'
            Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAXDT'
            Title.Caption = #3623#3633#3609#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAID'
            Title.Caption = #3592#3635#3609#3623#3609#3594#3635#3619#3632
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTPAID'
            Title.Caption = #3623#3633#3609#3607#3637#3656#3594#3635#3619#3632
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REDUAFT'
            Title.Caption = #3626#3656#3623#3609#3621#3604#3614#3636#3648#3624#3625
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FLAG'
            Title.Caption = #3626#3606#3634#3609#3632
            Visible = True
          end>
      end
    end
    object TabSheet10: TTabSheet
      Caption = #3610#3633#3609#3607#3638#3585#3629#3639#3656#3609#3654
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 989
        Height = 457
        Align = alClient
        Ctl3D = True
        DataField = 'MEMO1'
        DataSource = SoJoborder3
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 997
    Height = 48
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 42
        Width = 993
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 980
      Height = 42
      Cursor = crHandPoint
      ButtonHeight = 55
      ButtonWidth = 89
      Caption = 'ToolBar1'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = SFMain.ImageList2
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      object CloseBtn: TToolButton
        Left = 0
        Top = 0
        Caption = #3611#3636#3604#3627#3609#3657#3634#3592#3629
        ImageIndex = 5
        OnClick = CloseBtnClick
      end
      object ToolButton1: TToolButton
        Left = 89
        Top = 0
        Width = 89
        Caption = 'ToolButton1'
        ImageIndex = 7
        Style = tbsDivider
      end
      object EnqBtn: TToolButton
        Left = 178
        Top = 0
        Caption = '   '#3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621'   '
        ImageIndex = 2
        OnClick = EnqBtnClick
      end
      object PrnBtn: TToolButton
        Left = 267
        Top = 0
        Caption = #3614#3636#3617#3614#3660#3611#3619#3632#3623#3633#3605#3636
        ImageIndex = 6
        OnClick = PrnBtnClick
      end
    end
  end
  object QJoborder3: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM JOBORDER')
    Left = 120
    Top = 469
  end
  object SoJoborder3: TDataSource
    DataSet = QJoborder3
    Left = 120
    Top = 497
  end
  object QOthInvoi: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from othinvoi')
    Left = 60
    Top = 469
  end
  object SoOthinv: TDataSource
    DataSet = QOthInvoi
    Left = 52
    Top = 497
  end
  object Qsvmast: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'select * from svmast')
    Left = 84
    Top = 469
  end
  object Sosvmast: TDataSource
    DataSet = Qsvmast
    Left = 84
    Top = 497
  end
end
