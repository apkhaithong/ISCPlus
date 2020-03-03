object SetCmpForm1: TSetCmpForm1
  Left = 263
  Top = 303
  BorderStyle = bsDialog
  Caption = #3610#3619#3636#3625#3633#3607#3649#3621#3632#3621#3636#3586#3626#3636#3607#3608#3636#3660
  ClientHeight = 216
  ClientWidth = 457
  Color = clWhite
  Font.Charset = THAI_CHARSET
  Font.Color = clNavy
  Font.Height = -19
  Font.Name = 'AngsanaUPC'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 26
  object Label9: TLabel
    Left = 127
    Top = 2
    Width = 114
    Height = 29
    Caption = #3621#3636#3586#3626#3636#3607#3608#3636#3660#3595#3629#3615#3607#3660#3649#3623#3619#3660
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -23
    Font.Name = 'EucrosiaUPC'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 76
    Top = 53
    Width = 48
    Height = 26
    Caption = #3594#3639#3656#3629#3610#3619#3636#3625#3633#3607
    Font.Charset = THAI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'AngsanaUPC'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 100
    Top = 73
    Width = 24
    Height = 26
    Caption = #3607#3637#3656#3629#3618#3641#3656
    Font.Charset = THAI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'AngsanaUPC'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 77
    Top = 113
    Width = 48
    Height = 26
    Caption = #3650#3607#3619#3624#3633#3614#3607#3660
    Font.Charset = THAI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'AngsanaUPC'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 10
    Top = 134
    Width = 116
    Height = 26
    Caption = #3648#3621#3586#3611#3619#3632#3592#3635#3605#3633#3623#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
  end
  object Label1: TLabel
    Left = 91
    Top = 30
    Width = 34
    Height = 29
    Caption = #3648#3621#3586#3607#3637#3656' '
    Font.Charset = THAI_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'AngsanaUPC'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 170
    Width = 457
    Height = 46
    Align = alBottom
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 453
      end>
    Color = clBtnFace
    ParentColor = False
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 440
      Height = 40
      Align = alBottom
      ButtonHeight = 38
      ButtonWidth = 63
      Caption = 'ToolBar1'
      Color = clBtnFace
      Flat = True
      Font.Charset = THAI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = SFMain.ImageList2
      ParentColor = False
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      object SavBtn: TToolButton
        Left = 0
        Top = 0
        Caption = #3610#3633#3609#3607#3638#3585
        ImageIndex = 3
        OnClick = SavBtnClick
      end
      object CloseBtn: TToolButton
        Left = 63
        Top = 0
        Caption = '       '#3611#3636#3604'       '
        ImageIndex = 5
        OnClick = CloseBtnClick
      end
    end
  end
  object DBEdit1: TDBEdit
    Left = 129
    Top = 34
    Width = 102
    Height = 21
    TabStop = False
    BevelKind = bkFlat
    Color = 13166806
    Ctl3D = True
    DataField = 'LICEN_NO'
    DataSource = SoCondpay
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 129
    Top = 55
    Width = 279
    Height = 21
    TabStop = False
    BevelKind = bkFlat
    Ctl3D = True
    DataField = 'COMP_NM'
    DataSource = SoCondpay
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 129
    Top = 75
    Width = 279
    Height = 21
    BevelKind = bkFlat
    Ctl3D = True
    DataField = 'COMP_ADR1'
    DataSource = SoCondpay
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 129
    Top = 95
    Width = 279
    Height = 21
    BevelKind = bkFlat
    Ctl3D = True
    DataField = 'COMP_ADR2'
    DataSource = SoCondpay
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 129
    Top = 115
    Width = 279
    Height = 21
    BevelKind = bkFlat
    Ctl3D = True
    DataField = 'TELP'
    DataSource = SoCondpay
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit9: TDBEdit
    Left = 129
    Top = 135
    Width = 279
    Height = 21
    BevelKind = bkFlat
    Ctl3D = True
    DataField = 'TAXID'
    DataSource = SoCondpay
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
  end
  object SoCondpay: TDataSource
    DataSet = Qcondpay
    Left = 8
    Top = 16
  end
  object Qcondpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    UpdateOptions.RequestLive = True
    Left = 40
    Top = 16
  end
end
