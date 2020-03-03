object frConfigCalc: TfrConfigCalc
  Left = 399
  Top = 125
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Setup '#3588#3656#3634#3588#3591#3607#3637#3656#3648#3614#3639#3656#3629#3651#3594#3657#3588#3635#3609#3623#3603#3585#3634#3619#3626#3633#3656#3591#3595#3639#3657#3629
  ClientHeight = 353
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 478
    Height = 310
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    TabWidth = 60
    object TabSheet1: TTabSheet
      Caption = #3588#3656#3634#3588#3591#3607#3637#3656
      object Label1: TLabel
        Left = 12
        Top = 40
        Width = 226
        Height = 32
        Caption = 
          '1. '#3619#3632#3618#3632#3648#3623#3621#3634#3605#3633#3657#3591#3649#3605#3656#3648#3619#3636#3656#3617#3626#3633#3656#3591#3626#3636#3609#3588#3657#3634' '#3592#3609#3585#3619#3632#3607#3633#3656#3591#3652#3604#3657#3619#3633#3610#3648#3586#3657#3634#13#10'    '#3626#3605#3655#3629#3585 +
          #3648#3619#3637#3618#3610#3619#3657#3629#3618' (Lead Time)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label2: TLabel
        Left = 12
        Top = 76
        Width = 273
        Height = 16
        Caption = '2.  '#3594#3656#3623#3591#3627#3656#3634#3591#3585#3634#3619#3626#3633#3656#3591#3649#3605#3656#3621#3632#3588#3619#3633#3657#3591#3586#3629#3591#3626#3636#3609#3588#3657#3634#3609#3633#3657#3609#3654'(Order Cycle)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label4: TLabel
        Left = 383
        Top = 43
        Width = 23
        Height = 16
        Caption = #3648#3604#3639#3629#3609
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 383
        Top = 77
        Width = 23
        Height = 16
        Caption = #3648#3604#3639#3629#3609
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 383
        Top = 114
        Width = 23
        Height = 16
        Caption = #3648#3604#3639#3629#3609
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 28
        Top = 212
        Width = 376
        Height = 16
        Caption = 
          #3627#3617#3634#3618#3648#3627#3605#3640'  : 1 '#3648#3604#3639#3629#3609' =1 , 1 '#3626#3633#3611#3604#3634#3627#3660' = 0.25 , 2 '#3626#3633#3611#3604#3634#3627#3660' = 0.50 , 3' +
          ' '#3626#3633#3611#3604#3634#3627#3660' = 0.75'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 12
        Top = 108
        Width = 259
        Height = 32
        Caption = 
          '3. '#3594#3656#3623#3591#3648#3623#3621#3634#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3648#3585#3655#3610#3626#3635#3619#3629#3591#3626#3605#3655#3629#3585#3652#3623#3657#3648#3612#3639#3656#3629#3586#3634#3604#13#10'    '#3651#3609#3586#3603#3632#3607#3637#3656#3619#3629#3626#3636 +
          #3609#3588#3657#3634#3607#3637#3656#3626#3633#3656#3591#3652#3611#3618#3633#3591#3617#3634#3652#3617#3656#3606#3638#3591' (Safety Stock)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label9: TLabel
        Left = 12
        Top = 147
        Width = 174
        Height = 64
        Caption = 
          '4.  '#3588#3656#3634#3649#3609#3623#3650#3609#3657#3617#3585#3634#3619#3605#3621#3634#3604' (0.5 '#3606#3638#3591' 1.5) '#13#10'     0.5 = '#3618#3629#3604#3586#3634#3618#3621#3604' '#13#10'    ' +
          ' 1.0 = '#3588#3591#3607#3637#3656' '#13#10'     1.5 = '#3648#3614#3636#3656#3617#3586#3638#3657#3609
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label10: TLabel
        Left = 44
        Top = 3
        Width = 359
        Height = 33
        Caption = #3585#3635#3627#3609#3604#3588#3656#3634#3588#3591#3607#3637#3656#3648#3614#3639#3656#3629#3651#3594#3657#3588#3635#3609#3623#3603#3585#3634#3619#3626#3633#3656#3591#3595#3639#3657#3629#3649#3621#3632#3627#3634' Max-Min'
        Font.Charset = THAI_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'AngsanaUPC'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label104: TLabel
        Left = 28
        Top = 233
        Width = 54
        Height = 16
        Caption = #3651#3594#3657#3618#3629#3604#3648#3593#3621#3637#3656#3618
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label105: TLabel
        Left = 131
        Top = 234
        Width = 62
        Height = 16
        Caption = #3648#3604#3639#3629#3609#3618#3657#3629#3609#3627#3621#3633#3591
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBCheckBox1: TDBCheckBox
        Left = 30
        Top = 256
        Width = 267
        Height = 17
        Caption = 'Update Max-Min '#3607#3637#3656#3652#3604#3657#3592#3634#3585#3585#3634#3619#3588#3635#3609#3623#3603#3651#3609#3649#3615#3657#3617#3626#3636#3609#3588#3657#3634
        DataField = 'UPDMM'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
    end
    object TabSheet3: TTabSheet
      Caption = #3626#3641#3605#3619'  A'
      object Bevel5: TBevel
        Left = 8
        Top = 4
        Width = 453
        Height = 269
        Shape = bsFrame
        Style = bsRaised
      end
      object Label8: TLabel
        Left = 144
        Top = 6
        Width = 177
        Height = 33
        Caption = 'Category Class Method  A'
        Font.Charset = THAI_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'AngsanaUPC'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 58
        Top = 39
        Width = 344
        Height = 16
        Caption = 
          #3651#3594#3657#3618#3629#3604#3588#3623#3634#3617#3605#3657#3629#3591#3585#3634#3619#3648#3593#3621#3637#3656#3618' 6 '#3648#3604#3639#3629#3609#3618#3657#3629#3609#3627#3621#3633#3591#3649#3605#3656#3621#3632' Part '#3617#3634#3648#3619#3637#3618#3591#3592#3634#3585#3609#3657#3629#3618 +
          #3652#3611#3617#3634#3585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 58
        Top = 66
        Width = 326
        Height = 16
        Caption = 
          #3649#3621#3657#3623' Sum Accumulate  '#3648#3614#3639#3656#3629#3649#3610#3656#3591' Class '#3605#3634#3617#3609#3657#3635#3627#3609#3633#3585#3648#3611#3629#3619#3660#3648#3595#3655#3609#3607#3637#3656#3605#3633#3657#3591#3652 +
          #3623#3657
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 60
        Top = 92
        Width = 61
        Height = 16
        Caption = #3629#3618#3641#3656#3651#3609#3611#3619#3632#3648#3616#3607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 260
        Top = 92
        Width = 46
        Height = 16
        Caption = #3648#3611#3629#3619#3660#3648#3595#3609#3605#3660
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 88
        Top = 114
        Width = 8
        Height = 16
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 88
        Top = 136
        Width = 10
        Height = 16
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 88
        Top = 158
        Width = 9
        Height = 16
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 88
        Top = 181
        Width = 10
        Height = 16
        Caption = 'D'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 88
        Top = 203
        Width = 9
        Height = 16
        Caption = 'E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 336
        Top = 92
        Width = 57
        Height = 16
        Caption = #3649#3609#3632#3609#3635'  (%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 349
        Top = 117
        Width = 19
        Height = 13
        Caption = '>80'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 349
        Top = 139
        Width = 24
        Height = 13
        Caption = '<=80'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 349
        Top = 161
        Width = 24
        Height = 13
        Caption = '<=60'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 349
        Top = 184
        Width = 24
        Height = 13
        Caption = '<=40'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 349
        Top = 206
        Width = 24
        Height = 13
        Caption = '<=20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 88
        Top = 225
        Width = 8
        Height = 16
        Caption = 'F'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 350
        Top = 228
        Width = 23
        Height = 13
        Caption = '<=10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label86: TLabel
        Left = 192
        Top = 114
        Width = 47
        Height = 16
        Caption = #3618#3629#3604#3586#3634#3618' >'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label87: TLabel
        Left = 192
        Top = 136
        Width = 54
        Height = 16
        Caption = #3618#3629#3604#3586#3634#3618' <='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label88: TLabel
        Left = 192
        Top = 158
        Width = 54
        Height = 16
        Caption = #3618#3629#3604#3586#3634#3618' <='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label89: TLabel
        Left = 192
        Top = 181
        Width = 54
        Height = 16
        Caption = #3618#3629#3604#3586#3634#3618' <='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label90: TLabel
        Left = 192
        Top = 203
        Width = 54
        Height = 16
        Caption = #3618#3629#3604#3586#3634#3618' <='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label91: TLabel
        Left = 192
        Top = 225
        Width = 54
        Height = 16
        Caption = #3618#3629#3604#3586#3634#3618' <='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label98: TLabel
        Left = 309
        Top = 115
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label99: TLabel
        Left = 309
        Top = 137
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label100: TLabel
        Left = 309
        Top = 159
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label101: TLabel
        Left = 309
        Top = 182
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label102: TLabel
        Left = 309
        Top = 204
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label103: TLabel
        Left = 309
        Top = 226
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 310
    Width = 478
    Height = 43
    Cursor = crHandPoint
    Align = alBottom
    ButtonHeight = 24
    ButtonWidth = 61
    Caption = 'ToolBar1'
    Color = clBtnFace
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShowCaptions = True
    TabOrder = 1
    object SavBtn: TToolButton
      Left = 0
      Top = 0
      Caption = #3610#3633#3609#3607#3638#3585#3586#3657#3629#3617#3641#3621
      ImageIndex = 3
      OnClick = SaveBtnClick
    end
    object CancBtn: TToolButton
      Left = 61
      Top = 0
      Caption = #3618#3585#3648#3621#3636#3585#3586#3657#3629#3617#3641#3621
      ImageIndex = 4
      OnClick = CancBtnClick
    end
    object ToolButton5: TToolButton
      Left = 122
      Top = 0
      Width = 22
      Caption = 'ToolButton5'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object CloseBtn: TToolButton
      Left = 144
      Top = 0
      Caption = #3611#3636#3604#3627#3609#3657#3634#3592#3629
      ImageIndex = 5
      OnClick = CloseBtnClick
    end
  end
  object DataSource1: TDataSource
    DataSet = QCondcal
    OnStateChange = DataSource1StateChange
    Left = 14
    Top = 34
  end
  object DBkbd1: TDBkbd
    IgNoreUpDown = False
    UseArrowKey = True
    Disable = False
    DataSource = DataSource1
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
    Left = 14
    Top = 62
  end
  object QCondcal: TFDQuery
    BeforePost = QCondcalBeforePost
    OnNewRecord = QCondcalNewRecord
    ConnectionName = 'Hi_dbms'
    UpdateOptions.RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONDCAL')
    Left = 14
    Top = 90
  end
end
