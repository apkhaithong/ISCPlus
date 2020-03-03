object FCheckpart: TFCheckpart
  Left = 479
  Top = 369
  BorderStyle = bsDialog
  Caption = #3605#3619#3623#3592#3626#3629#3610#3649#3621#3632#3621#3610#3619#3627#3633#3626#3626#3636#3609#3588#3657#3634' '#3607#3637#3656#3610#3633#3609#3607#3638#3585#3652#3617#3656#3652#3604#3657
  ClientHeight = 130
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 43
    Width = 80
    Height = 16
    Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634#3607#3637#3656#3592#3632#3621#3610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 101
    Top = 40
    Width = 112
    Height = 21
    BevelKind = bkFlat
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 82
    Top = 71
    Width = 69
    Height = 23
    Caption = #3605#3585#3621#3591
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 71
    Width = 70
    Height = 23
    Caption = #3618#3585#3648#3621#3636#3585
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object Query1: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 252
    Top = 8
  end
  object Query2: TFDQuery
    ConnectionName = 'Hi_dbms'
    Left = 280
    Top = 8
  end
end
