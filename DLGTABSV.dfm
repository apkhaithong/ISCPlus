object FDlgTabsv: TFDlgTabsv
  Left = 212
  Top = 209
  BorderStyle = bsDialog
  Caption = #3649#3615#3657#3617#3629#3633#3605#3619#3634#3588#3656#3634#3610#3619#3636#3585#3634#3619
  ClientHeight = 222
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 15
    Top = 14
    Width = 365
    Height = 158
    Color = 14543103
    DataSource = DataSource1
    FixedColor = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clYellow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SVCODE'
        Title.Caption = #3619#3627#3633#3626#3591#3634#3609
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDLCOD'
        Title.Caption = #3619#3627#3633#3626#3619#3640#3656#3609
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC'
        Title.Caption = #3619#3634#3618#3585#3634#3619
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRT'
        Title.Alignment = taRightJustify
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SVPRIC'
        Title.Alignment = taRightJustify
        Title.Caption = #3619#3634#3588#3634
        Width = 51
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = #3626#3606#3634#3609#3632
        Width = 34
        Visible = True
      end>
  end
  object OKBtn: TButton
    Left = 121
    Top = 182
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 204
    Top = 182
    Width = 76
    Height = 25
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object Hquery1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM  TABSERV')
    Left = 12
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Hquery1
    Left = 12
    Top = 36
  end
end
