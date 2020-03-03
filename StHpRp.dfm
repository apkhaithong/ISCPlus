object FmSTHpRp: TFmSTHpRp
  Left = 380
  Top = 239
  Width = 402
  Height = 292
  Caption = 'ADD Back Order'
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
  object Bevel1: TBevel
    Left = 11
    Top = 3
    Width = 373
    Height = 56
    Shape = bsFrame
  end
  object Bevel2: TBevel
    Left = 11
    Top = 63
    Width = 373
    Height = 168
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 28
    Top = 9
    Width = 45
    Height = 16
    Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 33
    Width = 37
    Height = 16
    Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 11
    Top = 232
    Width = 70
    Height = 23
    Caption = #3605#3585#3621#3591
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 312
    Top = 231
    Width = 70
    Height = 23
    Caption = #3618#3585#3648#3621#3636#3585
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Kind = bkCancel
  end
  object Edit1: TEdit
    Left = 100
    Top = 9
    Width = 113
    Height = 21
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 100
    Top = 33
    Width = 260
    Height = 21
    TabOrder = 2
  end
  object DBGrid1: TRzDBGrid
    Left = 16
    Top = 68
    Width = 361
    Height = 157
    DataSource = DataSource1
    FixedColor = 16766894
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PKNO'
        Title.Alignment = taCenter
        Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3610#3636#3585
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PKDATE'
        Title.Alignment = taCenter
        Title.Caption = #3623#3633#3609#3607#3637#3656#3648#3610#3636#3585
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARTNO'
        Title.Alignment = taCenter
        Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTYBOD'
        Title.Alignment = taCenter
        Title.Caption = #3592#3635#3609#3623#3609
        Width = 42
        Visible = True
      end>
  end
  object QBkord: TFDQuery
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      
        'SELECT A.PKNO,A.CUSCOD,B.PKNO,B.PARTNO,B.QTYORD-B.QTYOUT AS QTYB' +
        'OD, '
      '            B.BACKFLG,B.YEAR1,A.PKDATE,C.CUSCOD,C.SNAM,C.NAME1, '
      '            C.NAME2 FROM PK_INVOI A,PK_TRANS B,ARMAST C')
    Left = 220
    Top = 8
    object QBkordPKNO: TStringField
      FieldName = 'PKNO'

      Size = 12
    end
    object QBkordCUSCOD: TStringField
      FieldName = 'CUSCOD'

      Size = 12
    end
    object QBkordPKNO_1: TStringField
      FieldName = 'PKNO_1'

      Size = 12
    end
    object QBkordPARTNO: TStringField
      FieldName = 'PARTNO'

    end
    object QBkordQTYBOD: TFloatField
      FieldName = 'QTYBOD'

    end
    object QBkordBACKFLG: TStringField
      FieldName = 'BACKFLG'

      Size = 1
    end
    object QBkordYEAR1: TStringField
      FieldName = 'YEAR1'

      Size = 4
    end
    object QBkordPKDATE: TDateField
      FieldName = 'PKDATE'

    end
    object QBkordCUSCOD_1: TStringField
      FieldName = 'CUSCOD_1'

      Size = 12
    end
    object QBkordSNAM: TStringField
      FieldName = 'SNAM'

      Size = 8
    end
    object QBkordNAME1: TStringField
      FieldName = 'NAME1'

      Size = 50
    end
    object QBkordNAME2: TStringField
      FieldName = 'NAME2'

      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = QBkord
    Left = 248
    Top = 8
  end
end
