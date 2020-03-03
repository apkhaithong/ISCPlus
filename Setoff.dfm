object FSetoff: TFSetoff
  Left = 252
  Top = 159
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #3585#3635#3627#3609#3604#3649#3615#3657#3617#3614#3609#3633#3585#3591#3634#3609'-OFFICER : OFFICCOD'
  ClientHeight = 237
  ClientWidth = 472
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 51
    Top = 31
    Width = 60
    Height = 16
    Caption = #3619#3627#3633#3626#3614#3609#3633#3585#3591#3634#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 59
    Top = 52
    Width = 52
    Height = 16
    Caption = #3594#3639#3656#3629#3614#3609#3633#3585#3591#3634#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 92
    Top = 152
    Width = 298
    Height = 16
    Caption = 
      '** '#3614#3609#3633#3585#3591#3634#3609#3607#3637#3656#3648#3611#3655#3609#3594#3656#3634#3591#3624#3641#3609#3618#3660#3631' '#3605#3657#3629#3591#3619#3632#3610#3640#3651#3627#3657#3606#3641#3585#3605#3657#3629#3591#3648#3614#3639#3656#3629#3629#3629#3585#3619#3634#3618#3591#3634#3609#3652#3604#3657'*' +
      '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 175
    Width = 472
    Height = 43
    Cursor = crHandPoint
    Align = alBottom
    ButtonHeight = 24
    ButtonWidth = 71
    Caption = 'ToolBar1'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShowCaptions = True
    TabOrder = 0
    object InsBtn: TToolButton
      Left = 0
      Top = 0
      Caption = #3648#3614#3636#3656#3617#3586#3657#3629#3617#3641#3621
      ImageIndex = 0
      OnClick = InsBtnClick
    end
    object DelBtn: TToolButton
      Left = 71
      Top = 0
      Caption = #3621#3610#3586#3657#3629#3617#3641#3621
      ImageIndex = 1
      OnClick = DelBtnClick
    end
    object EnqBtn: TToolButton
      Left = 142
      Top = 0
      Caption = #3626#3629#3610#3606#3634#3617#3586#3657#3629#3617#3641#3621
      ImageIndex = 2
      OnClick = EnqBtnClick
    end
    object SavBtn: TToolButton
      Left = 213
      Top = 0
      Caption = #3610#3633#3609#3607#3638#3585#3586#3657#3629#3617#3641#3621
      ImageIndex = 3
      OnClick = SavBtnClick
    end
    object CancBtn: TToolButton
      Left = 284
      Top = 0
      Caption = #3618#3585#3648#3621#3636#3585#3586#3657#3629#3617#3641#3621
      ImageIndex = 4
      OnClick = CancBtnClick
    end
    object ToolButton1: TToolButton
      Left = 355
      Top = 0
      Width = 22
      Caption = 'ToolButton1'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object CloseBtn: TToolButton
      Left = 377
      Top = 0
      Caption = #3611#3636#3604#3627#3609#3657#3634#3592#3629
      ImageIndex = 5
      OnClick = CloseBtnClick
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 218
    Width = 472
    Height = 19
    SimpleCaption = 
      'F2:'#3610#3633#3609#3607#3638#3585'          F7:'#3626#3629#3610#3606#3634#3617'          F4:'#3649#3585#3657#3652#3586'          F5:'#3648#3614#3636#3656#3617 +
      '           F8:'#3621#3610
    SimpleFrameStyle = fsStatus
    SimpleStatus = True
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 120
    Top = 74
    Width = 240
    Height = 78
    Color = 8404992
    Columns = 2
    Ctl3D = False
    DataField = 'DEPART'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      '1.'#3613#3656#3634#3618#3629#3632#3652#3627#3621#3656
      '2.'#3613#3656#3634#3618#3619#3633#3610#3619#3606
      '3.'#3613#3656#3634#3618#3594#3656#3634#3591
      '4.'#3613#3656#3634#3618#3610#3633#3597#3594#3637
      '5.'#3613#3656#3634#3618#3585#3634#3619#3648#3591#3636#3609
      '6.'#3613#3656#3634#3618#3586#3634#3618)
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Values.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object DBEdit1: TDBEdit
    Left = 119
    Top = 29
    Width = 121
    Height = 21
    DataField = 'OFFICCOD'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 119
    Top = 51
    Width = 241
    Height = 21
    DataField = 'OFFICNAM'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = QOfficer
    OnStateChange = DataSource1StateChange
    Left = 414
    Top = 34
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    FetchOptions.AssignedValues = [evUnidirectional]
    FetchOptions.Unidirectional = True
    Left = 414
    Top = 6
  end
  object DBkbd1: TDBkbd
    IgNoreUpDown = False
    UseArrowKey = True
    Disable = False
    DataSource = DataSource1
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
    Left = 442
    Top = 6
  end
  object QOfficer: TFDQuery
    AfterPost = QOfficerAfterPost
    BeforeDelete = QOfficerBeforeDelete
    AfterDelete = QOfficerAfterDelete
    OnNewRecord = QOfficerNewRecord
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM OFFICER')
    Left = 443
    Top = 34
  end
end
