object FChgcusno: TFChgcusno
  Left = 316
  Top = 167
  BorderStyle = bsDialog
  Caption = #3648#3611#3621#3637#3618#3609#3649#3611#3621#3591#3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
  ClientHeight = 188
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label40: TLabel
    Left = 6
    Top = 74
    Width = 62
    Height = 16
    Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634#3648#3604#3636#3617
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label41: TLabel
    Left = 32
    Top = 98
    Width = 36
    Height = 16
    Caption = #3594#3639#3656#3629'-'#3626#3585#3640#3621
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 205
    Top = 74
    Width = 65
    Height = 16
    Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634#3651#3627#3617#3656
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ProgressBar1: TRzProgressBar
    Left = 72
    Top = 128
    Width = 339
    BackColor = clBtnFace
    BorderInner = fsFlat
    BorderOuter = fsNone
    BorderWidth = 1
    InteriorOffset = 0
    PartsComplete = 0
    Percent = 0
    TotalParts = 0
  end
  object ProcBtn1: TRzRapidFireButton
    Left = 245
    Top = 10
    Width = 78
    Height = 24
    Cursor = crHandPoint
    Caption = #3605#3585#3621#3591
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = Button1Click
  end
  object Button2: TRzRapidFireButton
    Left = 327
    Top = 10
    Width = 78
    Height = 24
    Cursor = crHandPoint
    Caption = #3618#3585#3648#3621#3636#3585
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 185
    Height = 59
    Cursor = crHandPoint
    Color = 8421440
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      #3648#3611#3621#3637#3656#3618#3609#3619#3627#3633#3626#3621#3641#3585#3588#3657#3634#3648#3611#3655#3609#3619#3627#3633#3626#3651#3627#3617#3656
      #3621#3610#3619#3627#3633#3626#3648#3604#3636#3617' '#3651#3594#3657#3619#3627#3633#3626#3607#3637#3656' Set '#3652#3623#3657#3649#3621#3657#3623)
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 16
    Top = 118
  end
end
