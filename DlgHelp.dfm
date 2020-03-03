object FDlgHelp: TFDlgHelp
  Left = 282
  Top = 194
  BorderStyle = bsDialog
  Caption = #3629#3629#3585' Invoice '#3605#3634#3617#3619#3627#3633#3626#3621#3641#3585#3588#3657#3634#3607#3637#3656#3652#3604#3657#3619#3632#3610#3640#3652#3623#3657#3605#3629#3609#3611#3636#3604' Job'
  ClientHeight = 214
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 297
    Height = 161
    Shape = bsFrame
  end
  object OKBtn: TButton
    Left = 19
    Top = 180
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 231
    Top = 180
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 15
    Top = 22
    Width = 281
    Height = 131
    DataSource = DataSource1
    FixedColor = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'JOBNO'
        Title.Alignment = taCenter
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSCOD'
        Title.Alignment = taCenter
        Title.Caption = 'Invoice By'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRM'
        Title.Alignment = taCenter
        Title.Caption = #3611#3619#3632#3648#3616#3607
        Width = 86
        Visible = True
      end>
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      
        'SELECT JOBNO,CUSCOD,'#39#3588#3656#3634#3610#3619#3636#3585#3634#3619#39' AS FRM FROM SERVTRAN WHERE JOBNO' +
        '=:1  AND CUSCOD<>'#39#39'  AND CLAIM<>'#39'N'#39
      'UNION '
      
        'SELECT JOBNO,CUSCOD,'#39#3588#3656#3634#3629#3632#3652#3627#3621#3656#39' AS FRM  FROM PARTTRAN WHERE JOBN' +
        'O=:1  AND CUSCOD<>'#39#39'  AND CLAIM<>'#39'N'#39' '
      'UNION  '
      
        'SELECT JOBNO,CUSCOD,'#39#3591#3634#3609#3609#3629#3585#39' AS FRM  FROM OUTTRAN WHERE JOBNO=:1' +
        '  AND CUSCOD<>'#39#39'  AND CLAIM<>'#39'N'#39' '
      'UNION  '
      
        'SELECT JOBNO,CUSCOD,'#39#3591#3634#3609#3626#3637#39' AS FRM  FROM COLRTRAN WHERE JOBNO=:1' +
        '  AND CUSCOD<>'#39#39'  AND CLAIM<>'#39'N'#39' ')
    Left = 44
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = '1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = '1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = '1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = '1'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 72
    Top = 16
  end
end
