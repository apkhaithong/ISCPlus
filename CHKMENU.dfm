object FChkmenu: TFChkmenu
  Left = 340
  Top = 191
  BorderStyle = bsDialog
  Caption = #3605#3619#3623#3592#3626#3629#3610#3649#3621#3632#3611#3619#3633#3610#3611#3619#3640#3591' Userid'
  ClientHeight = 214
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 143
    Top = 197
    Width = 76
    Height = 13
    Caption = 'Complete......'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 93
    Width = 339
    Height = 74
    Align = alTop
    Color = clWhite
    Ctl3D = False
    DataSource = Somenumst
    FixedColor = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MENUCODE'
        Title.Caption = #3619#3627#3633#3626#3648#3617#3609#3641
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENUDESC'
        Title.Caption = #3594#3639#3656#3629#3648#3617#3609#3641
        Width = 253
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 44
    Width = 339
    Height = 49
    Align = alTop
    Color = clWhite
    Ctl3D = False
    DataSource = DataSource1
    FixedColor = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USERID'
        Title.Caption = #3619#3627#3633#3626#3612#3641#3657#3651#3594#3657#3591#3634#3609
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERNAME'
        Title.Caption = #3594#3639#3656#3629#3612#3641#3657#3651#3594#3657#3591#3634#3609
        Width = 212
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LEVEL_1'
        Title.Caption = #3619#3632#3604#3633#3610
        Width = 42
        Visible = True
      end>
  end
  object ProgressBar1: TProgressBar
    Left = 54
    Top = 178
    Width = 252
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 339
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 3
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 339
      Height = 43
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
      TabOrder = 0
      object EnqBtn: TToolButton
        Left = 0
        Top = 0
        Caption = #3611#3619#3633#3610#3611#3619#3640#3591
        ImageIndex = 9
        OnClick = BitBtn1Click
      end
      object ToolButton1: TToolButton
        Left = 58
        Top = 0
        Width = 9
        Caption = 'ToolButton1'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object CloseBtn: TToolButton
        Left = 67
        Top = 0
        Caption = #3611#3636#3604#3650#3611#3619#3649#3585#3617
        ImageIndex = 5
        OnClick = CloseBtnClick
      end
    end
  end
  object QPasswd: TFDQuery
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    UpdateOptions.RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PASSWRD')
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 162
    Top = 30
  end
  object DataSource1: TDataSource
    DataSet = QPasswd
    Left = 190
    Top = 30
  end
  object QMenumst: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM MENUMST WHERE  SYSTEMCOD=:SYSTEMCOD')
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 162
    Top = 2
    ParamData = <
      item
        DataType = ftString
        Name = 'SYSTEMCOD'
        ParamType = ptUnknown
      end>
  end
  object Somenumst: TDataSource
    DataSet = QMenumst
    Left = 190
    Top = 2
  end
  object QMenutrn: TFDQuery
    ConnectionName = 'HI_DBMS'
    UpdateOptions.RequestLive = True
    SQL.Strings = (
      'SELECT * FROM MENUTRN WHERE SYSTEMCOD=:SYSTEMCOD ')
    UpdateOptions.UpdateMode = upWhereKeyOnly
    Left = 217
    Top = 2
    ParamData = <
      item
        DataType = ftString
        Name = 'SYSTEMCOD'
        ParamType = ptUnknown
      end>
  end
  object Somenutrn: TDataSource
    DataSet = QMenutrn
    Left = 246
    Top = 2
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 218
    Top = 30
  end
end
