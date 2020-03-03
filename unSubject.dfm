object frSubject: TfrSubject
  Left = 373
  Top = 152
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #3585#3635#3627#3609#3604#3627#3633#3623#3586#3657#3629#3648#3619#3639#3656#3629#3591#3619#3634#3618#3591#3634#3609
  ClientHeight = 180
  ClientWidth = 417
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 71
    Top = 30
    Width = 42
    Height = 16
    Caption = #3619#3633#3627#3626#3648#3619#3639#3656#3629#3591
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 73
    Top = 56
    Width = 34
    Height = 16
    Caption = #3594#3639#3656#3629#3648#3619#3639#3656#3629#3591
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 116
    Width = 417
    Height = 42
    Align = alBottom
    ButtonHeight = 24
    ButtonWidth = 61
    Caption = 'ToolBar1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowCaptions = True
    TabOrder = 0
    object InsBtn: TToolButton
      Left = 0
      Top = 0
      Action = acAdd
      ImageIndex = 0
    end
    object DelBtn: TToolButton
      Left = 61
      Top = 0
      Action = acDel
      ImageIndex = 1
    end
    object EnqBtn: TToolButton
      Left = 122
      Top = 0
      Action = acQuery
    end
    object SavBtn: TToolButton
      Left = 183
      Top = 0
      Action = acSave
      ImageIndex = 3
    end
    object CancBtn: TToolButton
      Left = 244
      Top = 0
      Action = AcCan
      ImageIndex = 4
    end
    object ToolButton1: TToolButton
      Left = 305
      Top = 0
      Width = 24
      Caption = 'ToolButton1'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object CloseBtn: TToolButton
      Left = 329
      Top = 0
      Action = acClose
      ImageIndex = 5
    end
  end
  object DBEdit1: TDBEdit
    Left = 132
    Top = 27
    Width = 59
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SUBCODE'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 132
    Top = 51
    Width = 207
    Height = 21
    DataField = 'SUBDESC'
    DataSource = DataSource1
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 158
    Width = 417
    Height = 22
    Font.Charset = THAI_CHARSET
    Font.Color = clBtnText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Panels = <
      item
        Text = 
          ' F2:'#3610#3633#3609#3607#3638#3585',    F3:'#3588#3657#3609#3627#3634',    F4:'#3649#3585#3657#3652#3586',   F5:'#3648#3614#3636#3656#3617',    F7:'#3626#3629#3610#3606#3634#3617', ' +
          ' F8:'#3621#3610' ,   Esc:'#3618#3585#3648#3621#3636#3585
        Width = 50
      end>
    UseSystemFont = False
  end
  object dbChkSale: TDBCheckBox
    Left = 132
    Top = 77
    Width = 169
    Height = 17
    Caption = #3626#3606#3634#3609#3632#3651#3594#3657#3591#3634#3609
    DataField = 'FLUSE'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
  end
  object DataSource1: TDataSource
    DataSet = qrMstSet
    OnStateChange = DataSource1StateChange
    Left = 280
    Top = 20
  end
  object qrMstSet: TFDQuery
    AfterPost = qrMstSetAfterPost
    BeforeDelete = qrMstSetBeforeDelete
    AfterDelete = qrMstSetAfterPost
    OnNewRecord = qrMstSetNewRecord
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT  * FROM  TSUBJECT')
    Left = 308
    Top = 20
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
    Left = 336
    Top = 20
  end
  object ActionList1: TActionList
    Left = 249
    Top = 19
    object acAdd: TAction
      Caption = #3648#3614#3636#3656#3617#3586#3657#3629#3617#3641#3621
      ImageIndex = 8
      ShortCut = 116
      OnExecute = InsBtnClick
    end
    object acDel: TAction
      Caption = #3621#3610#3586#3657#3629#3617#3641#3621
      ImageIndex = 3
      ShortCut = 119
      OnExecute = DelBtnClick
    end
    object acQuery: TAction
      Caption = #3588#3657#3609#3627#3634#3586#3657#3629#3617#3641#3621
      ImageIndex = 2
      ShortCut = 118
      OnExecute = EnqBtnClick
    end
    object acSave: TAction
      Caption = #3610#3633#3609#3607#3638#3585#3586#3657#3629#3617#3641#3621
      ImageIndex = 0
      ShortCut = 113
      OnExecute = SavBtnClick
    end
    object AcCan: TAction
      Caption = #3618#3585#3648#3621#3636#3585
      ImageIndex = 1
      ShortCut = 16472
      OnExecute = CancBtnClick
    end
    object acClose: TAction
      Caption = #3611#3636#3604#3619#3632#3610#3610
      ImageIndex = 4
      ShortCut = 123
      OnExecute = CloseBtnClick
    end
    object AcPrn: TAction
      Caption = #3614#3636#3617#3614#3660
      ImageIndex = 5
      ShortCut = 117
    end
  end
end
