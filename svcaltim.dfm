object Fsvtime: TFsvtime
  Left = 523
  Top = 208
  BorderStyle = bsDialog
  Caption = #3610#3633#3609#3607#3638#3585#3648#3623#3621#3634#3607#3635#3591#3634#3609#3594#3656#3634#3591
  ClientHeight = 188
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 445
    Height = 153
    Align = alTop
    Color = clWhite
    DataSource = SoSVTIME
    FixedColor = 16766894
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColExit = DBGrid1ColExit
    OnDblClick = DBGrid1DblClick
    OnEditButtonClick = DBGrid1DblClick
    OnEnter = DBGrid1Enter
    OnExit = DBGrid1Exit
    OnKeyPress = FormKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'JOBNO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #3648#3621#3586#3607#3637#3656' Job'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERVCOD'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #3619#3627#3633#3626#3594#3656#3634#3591
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 71
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'STARTTIM'
        Title.Alignment = taCenter
        Title.Caption = #3648#3623#3621#3634#3648#3619#3636#3656#3617#3591#3634#3609
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 74
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'STOPTIM'
        Title.Alignment = taCenter
        Title.Caption = #3648#3623#3621#3634#3627#3618#3640#3604#3591#3634#3609
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USETIME'
        Title.Alignment = taCenter
        Title.Caption = #3619#3623#3617#3594#3617'.'#3591#3634#3609
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 79
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 287
    Top = 160
    Width = 69
    Height = 23
    Caption = #3605#3585#3621#3591
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object AddBtn: TBitBtn
    Left = 8
    Top = 160
    Width = 70
    Height = 23
    Caption = #3648#3614#3636#3656#3617
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333FF33333333FF333993333333300033377F3333333777333993333333
      300033F77FFF3333377739999993333333333777777F3333333F399999933333
      33003777777333333377333993333333330033377F3333333377333993333333
      3333333773333333333F333333333333330033333333F33333773333333C3333
      330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
      333333333337733333FF3333333C333330003333333733333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = AddBtnClick
  end
  object DelBtn: TBitBtn
    Left = 78
    Top = 160
    Width = 70
    Height = 23
    Caption = #3621#3610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
      305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
      B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
      B0557777FF577777F7F500000E055550805577777F7555575755500000555555
      05555777775555557F5555000555555505555577755555557555}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object BitBtn2: TBitBtn
    Left = 356
    Top = 160
    Width = 70
    Height = 23
    Caption = #3618#3585#3648#3621#3636#3585
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
  end
  object SoSVTIME: TDataSource
    DataSet = svtime
    Left = 60
    Top = 76
  end
  object svtime: TFDTable
    OnNewRecord = svtimeNewRecord
    IndexFieldNames = 'JOBNO;SERVCOD;CODE'
    MasterSource = Dm_SV.SoServtran1
    MasterFields = 'JOBNO;SERVCOD;CODE'
    ConnectionName = 'HI_DBMS'
    UpdateOptions.UpdateTableName = 'SVTIME'
    TableName = 'SVTIME'
    Left = 28
    Top = 76
    object svtimeJOBNO: TStringField
      FieldName = 'JOBNO'
      Required = True
      Size = 15
    end
    object svtimeSERVCOD: TStringField
      FieldName = 'SERVCOD'
      Size = 5
    end
    object svtimeSTARTTIM: TFloatField
      FieldName = 'STARTTIM'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object svtimeSTOPTIM: TFloatField
      FieldName = 'STOPTIM'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object svtimeUSETIME: TFloatField
      FieldName = 'USETIME'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object svtimeFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object svtimeCODE: TStringField
      FieldName = 'CODE'
    end
  end
end
