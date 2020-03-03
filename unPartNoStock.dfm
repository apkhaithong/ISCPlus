object frPartNoStock: TfrPartNoStock
  Left = 281
  Top = 146
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #3585#3635#3627#3609#3604#3619#3627#3633#3626#3626#3636#3609#3588#3657#3634#3649#3610#3610#3652#3617#3656#3617#3637#3626#3605#3655#3629#3585
  ClientHeight = 200
  ClientWidth = 457
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
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 457
    Height = 138
    Align = alClient
    Shape = bsFrame
    Style = bsRaised
  end
  object Label5: TLabel
    Left = 25
    Top = 109
    Width = 61
    Height = 16
    Alignment = taRightJustify
    Caption = #3619#3634#3588#3634#3595#3639#3657#3629#3621#3656#3634#3626#3640#3604
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 235
    Top = 108
    Width = 59
    Height = 16
    Alignment = taRightJustify
    Caption = #3623#3633#3609#3607#3637#3656#3595#3639#3657#3629#3621#3656#3634#3626#3640#3604
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label7: TLabel
    Left = 48
    Top = 9
    Width = 47
    Height = 16
    Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 50
    Top = 32
    Width = 39
    Height = 16
    Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 36
    Top = 60
    Width = 56
    Height = 16
    Caption = #3619#3634#3588#3634'/'#3627#3609#3656#3623#3618
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 50
    Top = 82
    Width = 41
    Height = 16
    Caption = #3627#3609#3656#3623#3618#3609#3633#3610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 138
    Width = 457
    Height = 43
    Cursor = crHandPoint
    Align = alBottom
    ButtonHeight = 24
    ButtonWidth = 71
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
      OnClick = EditBtnClick
    end
    object SavBtn: TToolButton
      Left = 213
      Top = 0
      Caption = #3610#3633#3609#3607#3638#3585#3586#3657#3629#3617#3641#3621
      ImageIndex = 3
      OnClick = SaveBtnClick
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
      Width = 18
      Caption = 'ToolButton1'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object CloseBtn: TToolButton
      Left = 373
      Top = 0
      Caption = #3611#3636#3604
      ImageIndex = 5
      OnClick = CloseBtnClick
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 181
    Width = 457
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
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 100
    Top = 8
    Width = 120
    Height = 21
    DataField = 'PARTNO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 100
    Top = 32
    Width = 221
    Height = 21
    DataField = 'DESC1'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 100
    Top = 57
    Width = 120
    Height = 21
    DataField = 'COST'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 100
    Top = 81
    Width = 120
    Height = 21
    DataField = 'UNITD'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit1: TDBEdit
    Left = 304
    Top = 107
    Width = 122
    Height = 21
    Color = clBtnFace
    DataField = 'LSTBUY'
    DataSource = DataSource1
    TabOrder = 6
    Visible = False
  end
  object DBEdit4: TDBEdit
    Left = 101
    Top = 106
    Width = 122
    Height = 21
    Color = clBtnFace
    DataField = 'LSTBDATE'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DataSource1: TDataSource
    DataSet = QNonInv
    OnStateChange = DataSource1StateChange
    Left = 379
    Top = 14
  end
  object DBkbd1: TDBkbd
    IgNoreUpDown = False
    UseArrowKey = True
    Disable = False
    DataSource = DataSource1
    StatusColor = clBlack
    OnKeyDown = FormKeyDown
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
    Left = 324
    Top = 15
  end
  object QNonInv: TFDQuery
    AfterPost = QNonInvAfterPost
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT  *  FROM  SETTRANPOST')
    Left = 352
    Top = 39
  end
  object Query1: TFDQuery
    AfterPost = QNonInvAfterPost
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT  *  FROM  SETTRANPOST')
    Left = 352
    Top = 13
  end
end
