object frChqPasswd: TfrChqPasswd
  Left = 457
  Top = 147
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #3648#3611#3621#3637#3656#3618#3609#3619#3627#3633#3626#3612#3656#3634#3609
  ClientHeight = 163
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 299
    Height = 117
    Align = alClient
    Caption = #3648#3611#3621#3637#3656#3618#3609#3619#3627#3633#3626#3612#3656#3634#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 25
      Width = 57
      Height = 16
      Caption = #3619#3627#3633#3626#3612#3656#3634#3609#3648#3604#3636#3617
    end
    object Label4: TLabel
      Left = 53
      Top = 54
      Width = 60
      Height = 16
      Caption = #3619#3627#3633#3626#3612#3656#3634#3609#3651#3627#3617#3656
    end
    object Label2: TLabel
      Left = 29
      Top = 83
      Width = 86
      Height = 16
      Caption = #3618#3639#3609#3618#3633#3609#3619#3627#3633#3626#3612#3656#3634#3609#3651#3627#3617#3656
    end
    object Edit1: TEdit
      Left = 125
      Top = 18
      Width = 117
      Height = 24
      CharCase = ecUpperCase
      PasswordChar = '@'
      TabOrder = 0
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 125
      Top = 49
      Width = 117
      Height = 24
      CharCase = ecUpperCase
      PasswordChar = '@'
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 125
      Top = 79
      Width = 117
      Height = 24
      CharCase = ecUpperCase
      PasswordChar = '@'
      TabOrder = 2
      OnExit = Edit3Exit
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 117
    Width = 299
    Height = 46
    Align = alBottom
    ButtonHeight = 41
    ButtonWidth = 58
    Caption = 'ToolBar1'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = SFMain.ImageList2
    ParentFont = False
    ShowCaptions = True
    TabOrder = 1
    object SavBtn: TToolButton
      Left = 0
      Top = 0
      Caption = #3610#3633#3609#3607#3638#3585
      Enabled = False
      ImageIndex = 3
      OnClick = SavBtnClick
    end
    object ToolButton1: TToolButton
      Left = 58
      Top = 0
      Width = 23
      Caption = 'ToolButton1'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object CloseBtn: TToolButton
      Left = 81
      Top = 0
      Caption = #3611#3636#3604#3650#3611#3619#3649#3585#3617
      ImageIndex = 5
      OnClick = CloseBtnClick
    end
  end
  object qrChqPasswd: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT  USERID,PASSWD,USERNAME,ENDCODE  FROM SECRET'
      'WHERE USERID=:VUSERID AND ENDCODE=:VPASSWD')
    Left = 258
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'VUSERID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VPASSWD'
        ParamType = ptInput
      end>
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
    Left = 258
    Top = 44
  end
end
