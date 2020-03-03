object CopyTabserv: TCopyTabserv
  Left = 269
  Top = 166
  BorderStyle = bsDialog
  Caption = #3588#3633#3604#3621#3629#3585#3629#3633#3605#3619#3634#3588#3656#3634#3610#3619#3636#3634#3585#3634#3619
  ClientHeight = 282
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SrcLabel: TLabel
    Left = 10
    Top = 46
    Width = 209
    Height = 16
    AutoSize = False
    Caption = #3619#3634#3618#3585#3634#3619#3605#3657#3609#3607#3634#3591':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DstLabel: TLabel
    Left = 260
    Top = 46
    Width = 209
    Height = 16
    AutoSize = False
    Caption = #3619#3634#3618#3585#3634#3619#3611#3621#3634#3618#3607#3634#3591':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object IncludeBtn: TSpeedButton
    Left = 228
    Top = 72
    Width = 24
    Height = 24
    Caption = '>'
    Flat = True
    OnClick = IncludeBtnClick
  end
  object IncAllBtn: TSpeedButton
    Left = 228
    Top = 104
    Width = 24
    Height = 24
    Caption = '>>'
    Flat = True
    OnClick = IncAllBtnClick
  end
  object ExcludeBtn: TSpeedButton
    Left = 228
    Top = 136
    Width = 24
    Height = 24
    Caption = '<'
    Enabled = False
    Flat = True
    OnClick = ExcludeBtnClick
  end
  object ExAllBtn: TSpeedButton
    Left = 228
    Top = 168
    Width = 24
    Height = 24
    Caption = '<<'
    Enabled = False
    Flat = True
    OnClick = ExcAllBtnClick
  end
  object Label1: TLabel
    Left = 12
    Top = 2
    Width = 36
    Height = 16
    Caption = #3592#3634#3585#3619#3640#3656#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpAr: TSpeedButton
    Left = 89
    Top = 21
    Width = 21
    Height = 21
    Flat = True
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
    OnClick = SpArClick
  end
  object Label2: TLabel
    Left = 267
    Top = 2
    Width = 44
    Height = 16
    Caption = #3652#3611#3618#3633#3591#3619#3640#3656#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 339
    Top = 22
    Width = 20
    Height = 21
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
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
    OnClick = SpeedButton1Click
  end
  object OKBtn: TButton
    Left = 8
    Top = 252
    Width = 76
    Height = 25
    Caption = #3648#3621#3639#3629#3585
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 2
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 395
    Top = 252
    Width = 75
    Height = 25
    Cancel = True
    Caption = #3618#3585#3648#3621#3636#3585
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 3
  end
  object SrcList: TListBox
    Left = 8
    Top = 64
    Width = 209
    Height = 185
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    MultiSelect = True
    ParentFont = False
    Sorted = True
    TabOrder = 0
  end
  object DstList: TListBox
    Left = 260
    Top = 64
    Width = 209
    Height = 185
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    MultiSelect = True
    ParentFont = False
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 10
    Top = 21
    Width = 76
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 265
    Top = 21
    Width = 71
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object QDst: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    UpdateOptions.RequestLive = True
    Left = 341
    Top = 136
  end
end
