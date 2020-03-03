object SvSt_Hlp: TSvSt_Hlp
  Left = 335
  Top = 163
  Caption = 'Help Setup'
  ClientHeight = 325
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid_Bksv: TDBGrid
    Left = 7
    Top = 41
    Width = 335
    Height = 195
    Color = 14150359
    Ctl3D = False
    DataSource = SoHlp
    FixedColor = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NAME1'
        Title.Caption = #3594#3639#3656#3629
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME2'
        Title.Caption = #3609#3634#3617#3626#3585#3640#3621
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BKDATE'
        Title.Caption = #3623#3633#3609#3607#3637#3656#3619#3633#3610#3648#3619#3639#3656#3629#3591
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BKTIME'
        Title.Caption = #3648#3623#3621#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID'
        Title.Caption = #3619#3627#3633#3626#3612#3641#3657#3619#3633#3610#3648#3619#3639#3656#3629#3591
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFDATE'
        Title.Caption = #3623#3633#3609#3609#3633#3604#3621#3641#3585#3588#3657#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFTIME'
        Title.Caption = #3648#3623#3621#3634
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGNO'
        Title.Caption = #3648#3621#3586#3607#3632#3648#3610#3637#3618#3609
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLOR'
        Title.Caption = #3626#3637#3619#3606
        Visible = True
      end>
  end
  object Grid_tab: TDBGrid
    Left = 0
    Top = 39
    Width = 448
    Height = 286
    Align = alClient
    Color = clWhite
    Ctl3D = True
    DataSource = SoHlp
    FixedColor = 16766894
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = Grid_tabDblClick
    OnKeyPress = Grid_tabKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'SVCODE'
        Title.Alignment = taCenter
        Title.Caption = #3619#3627#3633#3626#3588#3656#3634#3610#3619#3636#3585#3634#3619
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDLCOD'
        Title.Alignment = taCenter
        Title.Caption = #3619#3627#3633#3626#3619#3640#3656#3609
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCP'
        Title.Alignment = taCenter
        Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRT'
        Title.Alignment = taCenter
        Title.Caption = 'Frt'
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SVPRIC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = 4194368
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 39
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 12
      Width = 71
      Height = 13
      Caption = #3586#3657#3629#3588#3623#3634#3617#3607#3637#3656#3592#3632#3588#3657#3609
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 366
      Top = 0
      Width = 27
      Height = 23
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object OKBtn: TcxButton
      Left = 237
      Top = 8
      Width = 59
      Height = 23
      Cursor = crHandPoint
      Hint = 'Choose data'
      Caption = #3588#3621#3636#3585#3648#3621#3639#3629#3585
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object BitBtn3: TcxButton
      Left = 293
      Top = 8
      Width = 59
      Height = 23
      Cursor = crHandPoint
      Hint = 'Cancel'
      Caption = #3618#3585#3648#3621#3636#3585
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object Edit1: TcxTextEdit
      Left = 81
      Top = 9
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnChange = Edit1Change
      Style.Color = clWhite
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = clWhite
      TabOrder = 3
      OnKeyPress = Edit1KeyPress
      Width = 147
    end
  end
  object QHlp: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CHKCKLIS')
    Left = 40
    Top = 64
  end
  object SoHlp: TDataSource
    DataSet = QHlp
    Left = 12
    Top = 64
  end
end
