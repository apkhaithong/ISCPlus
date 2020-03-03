object FChglocat: TFChglocat
  Left = 321
  Top = 203
  BorderStyle = bsDialog
  Caption = #3648#3611#3621#3637#3618#3609#3649#3611#3621#3591#3619#3627#3633#3626#3626#3634#3586#3634
  ClientHeight = 219
  ClientWidth = 443
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label40: TLabel
    Left = 18
    Top = 23
    Width = 60
    Height = 13
    Caption = #3619#3627#3633#3626#3626#3634#3586#3634#3648#3604#3636#3617
  end
  object Label41: TLabel
    Left = 20
    Top = 47
    Width = 35
    Height = 13
    Caption = #3594#3639#3656#3629#3626#3634#3586#3634
  end
  object Label1: TLabel
    Left = 22
    Top = 101
    Width = 61
    Height = 13
    Caption = #3619#3627#3633#3626#3626#3634#3586#3634#3651#3627#3617#3656
  end
  object SpeedButton3: TSpeedButton
    Left = 215
    Top = 20
    Width = 23
    Height = 22
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
    OnClick = SpeedButton3Click
  end
  object Edit1: TEdit
    Left = 100
    Top = 20
    Width = 112
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
    OnExit = Edit1Exit
  end
  object Edit2: TEdit
    Left = 100
    Top = 44
    Width = 276
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object Edit5: TEdit
    Left = 100
    Top = 98
    Width = 113
    Height = 21
    TabOrder = 2
  end
  object ProcBtn1: TBitBtn
    Left = 171
    Top = 178
    Width = 70
    Height = 24
    Caption = 'Process'
    Enabled = False
    TabOrder = 3
    OnClick = ProcBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 253
    Top = 178
    Width = 69
    Height = 24
    TabOrder = 4
    Kind = bkClose
  end
  object ProgressBar1: TProgressBar
    Left = 100
    Top = 145
    Width = 265
    Height = 15
    Min = 0
    Max = 100
    TabOrder = 5
  end
  object DBkbd1: TDBkbd
    IgNoreUpDown = False
    UseArrowKey = True
    Disable = False
    StatusColor = clBlack
    DeleteMessage = #3649#3609#3656#3651#3592#3627#3619#3639#3629#3652#3617#3656#3607#3637#3656#3592#3632#3621#3610' Record '#3609#3637#3657
    DelTop = 84
    DelLeft = 114
    AllowSpaceBar = False
    AllowEditing = True
    AllowInsert = True
    AllowDelete = True
    KeyToEdit = 115
    KeyToInsert = 45
    KeyToSave = 121
    Left = 380
    Top = 92
  end
  object Query1: TFDQuery
    ConnectionName = 'SET_DBMS'
    Left = 36
    Top = 140
  end
end
