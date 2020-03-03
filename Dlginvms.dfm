object Fsvmast: TFsvmast
  Left = 459
  Top = 187
  BorderStyle = bsDialog
  Caption = #3649#3615#3657#3617#3626#3636#3609#3588#3657#3634
  ClientHeight = 386
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TRzDBGrid
    Left = 0
    Top = 0
    Width = 364
    Height = 358
    Align = alClient
    DataSource = DataSource1
    FixedColor = 16766894
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnEnter = DBGrid1Enter
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PARTNO'
        Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC1'
        Title.Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 226
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 358
    Width = 364
    Height = 28
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object OKBtn: TRzBitBtn
      Left = 2
      Top = 2
      ModalResult = 1
      Caption = #3605#3585#3621#3591
      Font.Charset = THAI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HighlightColor = 16026986
      HotTrackColor = 3983359
      ParentFont = False
      TabOrder = 0
      NumGlyphs = 2
    end
    object RzBitBtn2: TRzBitBtn
      Left = 289
      Top = 3
      Caption = #3618#3585#3648#3621#3636#3585
      Font.Charset = THAI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HighlightColor = 16026986
      HotTrackColor = 3983359
      ParentFont = False
      TabOrder = 1
      OnClick = RzBitBtn2Click
      NumGlyphs = 2
    end
  end
  object Hquery1: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT  A.PARTNO,A.DESC1,A.LOCAT,A.PRICE1,B.ALLO_12 '
      
        'FROM INVENTOR A,INVANLS B WHERE (A.PARTNO=B.PARTNO) AND (A.LOCAT' +
        '=B.LOCAT) AND (A.YEAR1=B.YEAR1)')
    Left = 136
    Top = 358
  end
  object DataSource1: TDataSource
    DataSet = Hquery1
    Left = 168
    Top = 358
  end
end
