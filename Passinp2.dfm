object FSetauth: TFSetauth
  Left = 876
  Top = 199
  BorderStyle = bsDialog
  Caption = #3585#3635#3627#3609#3604#3585#3634#3619#3648#3586#3657#3634#3651#3594#3657#3591#3634#3609#3619#3632#3610#3610#3650#3611#3619#3649#3585#3619#3617
  ClientHeight = 493
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 472
    Height = 49
    Align = alTop
    Caption = #3585#3635#3627#3609#3604#3626#3636#3607#3608#3636#3585#3634#3619#3651#3594#3657#3591#3634#3609
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 13
      Top = 22
      Width = 73
      Height = 16
      Caption = #3619#3627#3633#3626#3611#3619#3632#3592#3635#3605#3633#3623
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 176
      Top = 22
      Width = 44
      Height = 16
      Caption = #3594#3639#3656#3629'-'#3626#3585#3640#3621
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 22
      Width = 69
      Height = 20
      TabStop = False
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      DataField = 'USERID'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 229
      Top = 22
      Width = 196
      Height = 20
      TabStop = False
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      DataField = 'USERNAME'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 451
    Width = 472
    Height = 42
    Cursor = crHandPoint
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
    object Savbtn: TToolButton
      Left = 0
      Top = 0
      Caption = #3610#3633#3609#3607#3638#3585#3586#3657#3629#3617#3641#3621
      ImageIndex = 3
      OnClick = SavBtnClick
    end
    object CancBtn: TToolButton
      Left = 61
      Top = 0
      Caption = #3618#3585#3648#3621#3636#3585#3586#3657#3629#3617#3641#3621
      ImageIndex = 4
      OnClick = CancBtnClick
    end
    object ToolButton3: TToolButton
      Left = 122
      Top = 0
      Width = 37
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object CloseBtn: TToolButton
      Left = 159
      Top = 0
      Caption = #3611#3636#3604#3619#3632#3610#3610
      ImageIndex = 5
      OnClick = CloseBtnClick
    end
  end
  object QMenutrn: TFDQuery
    AfterPost = QMenutrnAfterPost
    CachedUpdates = True
    MasterSource = Somenumst
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT *  FROM MENUTRN  WHERE PARENT=:MENUCODE AND USERID=:USERI' +
        'D'
      '')
    Left = 313
    Top = 70
    ParamData = <
      item
        Name = 'MENUCODE'
        DataType = ftFixedChar
        Size = 11
      end
      item
        Name = 'USERID'
        DataType = ftFixedChar
        Size = 9
      end>
  end
  object Somenutrn: TDataSource
    DataSet = QMenutrn
    Left = 341
    Top = 70
  end
  object QMenumst: TFDQuery
    AfterPost = QMenumstAfterPost
    CachedUpdates = True
    MasterSource = dsHdMenu
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM MENUTRN  WHERE SYSTEMCOD=PARENT'
      'AND SYSTEMCOD=:SYSTEMCOD AND USERID=:USERID'
      '')
    Left = 313
    Top = 42
    ParamData = <
      item
        Name = 'SYSTEMCOD'
        DataType = ftFixedChar
        Size = 6
      end
      item
        Name = 'USERID'
        DataType = ftFixedChar
        Size = 9
      end>
  end
  object Somenumst: TDataSource
    DataSet = QMenumst
    Left = 341
    Top = 42
  end
  object QPasswd: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM PASSWRD')
    Left = 93
    Top = 10
  end
  object DataSource1: TDataSource
    DataSet = QPasswd
    Left = 121
    Top = 10
  end
  object qrHdMenu: TFDQuery
    AfterPost = qrHdMenuAfterPost
    AfterCancel = qrHdMenuAfterCancel
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM MENUTRN WHERE SYSTEMCOD=MENUCODE'
      '')
    Left = 312
    Top = 14
  end
  object dsHdMenu: TDataSource
    DataSet = qrHdMenu
    OnStateChange = dsHdMenuStateChange
    Left = 339
    Top = 14
  end
  object qrLastMenu: TFDQuery
    AfterPost = qrLastMenuAfterPost
    CachedUpdates = True
    MasterSource = Somenutrn
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT PARENT,MENUDESC,M_ACCESS,M_EDIT,M_INSERT,M_DELETE'
      ' FROM MENUTRN  WHERE PARENT=:MENUCODE AND USERID=:USERID'
      '')
    Left = 313
    Top = 98
    ParamData = <
      item
        Name = 'MENUCODE'
        DataType = ftFixedChar
        Size = 11
      end
      item
        Name = 'USERID'
        DataType = ftFixedChar
        Size = 9
      end>
  end
  object dsLastMenu: TDataSource
    DataSet = qrLastMenu
    Left = 341
    Top = 98
  end
  object RzDBkbd1: TRzDBkbd
    IgNoreUpDown = False
    UseArrowKey = True
    Disable = False
    DataSource = dsHdMenu
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
    Left = 156
    Top = 12
  end
end
