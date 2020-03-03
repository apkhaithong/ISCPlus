object CopyGrpserv: TCopyGrpserv
  Left = 197
  Top = 180
  BorderStyle = bsDialog
  Caption = 'Copy '#3629#3633#3605#3619#3634#3588#3656#3634#3610#3619#3636#3585#3634#3619#3617#3634#3621#3591#3585#3621#3640#3656#3617
  ClientHeight = 290
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SrcLabel: TLabel
    Left = 8
    Top = 48
    Width = 145
    Height = 16
    AutoSize = False
    Caption = #3619#3634#3618#3585#3634#3619#3605#3657#3609#3607#3634#3591':'
  end
  object DstLabel: TLabel
    Left = 260
    Top = 48
    Width = 145
    Height = 16
    AutoSize = False
    Caption = #3619#3634#3618#3585#3634#3619#3611#3621#3634#3618#3607#3634#3591':'
  end
  object IncludeBtn: TSpeedButton
    Left = 228
    Top = 72
    Width = 24
    Height = 24
    Caption = '>'
    OnClick = IncludeBtnClick
  end
  object IncAllBtn: TSpeedButton
    Left = 228
    Top = 104
    Width = 24
    Height = 24
    Caption = '>>'
    OnClick = IncAllBtnClick
  end
  object ExcludeBtn: TSpeedButton
    Left = 228
    Top = 136
    Width = 24
    Height = 24
    Caption = '<'
    Enabled = False
    OnClick = ExcludeBtnClick
  end
  object ExAllBtn: TSpeedButton
    Left = 228
    Top = 168
    Width = 24
    Height = 24
    Caption = '<<'
    Enabled = False
    OnClick = ExcAllBtnClick
  end
  object Label1: TLabel
    Left = 15
    Top = 15
    Width = 46
    Height = 13
    Caption = #3619#3627#3633#3626#3619#3640#3656#3609#3619#3606
  end
  object SpAr: TSpeedButton
    Left = 331
    Top = 7
    Width = 64
    Height = 27
    Caption = 'Query'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SpArClick
  end
  object Label2: TLabel
    Left = 182
    Top = 15
    Width = 39
    Height = 13
    Caption = #3619#3627#3633#3626#3585#3621#3640#3656#3617
  end
  object OKBtn: TButton
    Left = 164
    Top = 255
    Width = 76
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 244
    Top = 255
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
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
    Left = 78
    Top = 10
    Width = 72
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 238
    Top = 10
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
