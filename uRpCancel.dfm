object FRpCancel: TFRpCancel
  Left = 261
  Top = 303
  BorderStyle = bsDialog
  Caption = #3619#3634#3618#3591#3634#3609#3585#3634#3619#3618#3585#3648#3621#3636#3585#3607#3633#3656#3623#3652#3611
  ClientHeight = 232
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 560
    Height = 47
    Cursor = crHandPoint
    ButtonHeight = 24
    ButtonWidth = 80
    Caption = 'ToolBar1'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = '  '#3604#3641#3619#3634#3618#3591#3634#3609'  '
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 80
      Top = 0
      Caption = '  '#3614#3636#3617#3614#3660#3619#3634#3618#3591#3634#3609'  '
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 160
      Top = 0
      Caption = '  '#3629#3629#3585#3650#3611#3619#3649#3585#3619#3617'  '
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
  end
  object RzRadioGroup1: TRzRadioGroup
    Left = 288
    Top = 56
    Width = 265
    Height = 89
    Caption = #3611#3619#3632#3648#3616#3607#3619#3634#3618#3591#3634#3609#3618#3585#3648#3621#3636#3585
    Columns = 2
    FlatColor = clMenuHighlight
    ItemFrameColor = 8409372
    ItemHotTrack = True
    ItemHighlightColor = 2203937
    ItemHotTrackColor = 3983359
    Items.Strings = (
      #3651#3610#3611#3619#3633#3610#3611#3619#3640#3591#3618#3629#3604#3626#3636#3609#3588#3657#3634
      #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637#3627#3609#3657#3634#3619#3657#3634#3609
      #3651#3610#3649#3592#3657#3591#3595#3656#3629#3617
      #3651#3610#3648#3610#3636#3585#3626#3636#3609#3588#3657#3634
      #3651#3610#3619#3633#3610#3626#3636#3609#3588#3657#3634#3648#3586#3657#3634#3626#3605#3655#3629#3585
      #3651#3610#3621#3604#3627#3609#3637#3657)
    TabOrder = 1
    OnClick = RzRadioGroup1Click
  end
  object RzRadioGroup2: TRzRadioGroup
    Left = 8
    Top = 170
    Width = 209
    Height = 49
    Caption = #3611#3619#3648#3616#3607#3651#3610#3648#3610#3636#3585
    Columns = 2
    FlatColor = clMenuHighlight
    ItemFrameColor = 8409372
    ItemHotTrack = True
    ItemHighlightColor = 2203937
    ItemHotTrackColor = 3983359
    ItemIndex = 0
    Items.Strings = (
      #3648#3610#3636#3585#3627#3609#3657#3634#3619#3657#3634#3609
      #3648#3610#3636#3585#3624#3641#3609#3618#3660#3610#3619#3636#3585#3634#3619)
    TabOrder = 2
    Visible = False
  end
  object RzCheckGroup1: TRzRadioGroup
    Left = 288
    Top = 168
    Width = 265
    Height = 49
    Caption = #3648#3591#3639#3656#3629#3609#3652#3586#3623#3633#3609#3607#3637#3656#3619#3634#3618#3591#3634#3609
    Columns = 2
    FlatColor = clMenuHighlight
    ItemFrameColor = 8409372
    ItemHotTrack = True
    ItemHighlightColor = 2203937
    ItemHotTrackColor = 3983359
    ItemIndex = 0
    Items.Strings = (
      #3618#3638#3604#3592#3634#3585#3623#3633#3609#3607#3637#3656#3618#3585#3648#3621#3636#3585
      #3618#3638#3604#3592#3634#3585#3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619)
    TabOrder = 3
    OnClick = RzCheckGroup1Click
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    OnGetValue = frReport1GetValue
    Left = 276
    Top = 12
    ReportForm = {19000000}
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 244
    Top = 12
  end
  object DBkbd1: TDBkbd
    IgNoreUpDown = False
    UseArrowKey = True
    Disable = False
    StatusColor = clBlack
    OnKeyDown = DBkbd1KeyDown
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
    Left = 168
    Top = 160
  end
end
