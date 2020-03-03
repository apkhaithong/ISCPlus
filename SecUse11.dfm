object QRSecUse: TQRSecUse
  Left = 323
  Top = 372
  Width = 652
  Height = 357
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 80
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3585#3634#3619#3585#3635#3627#3609#3585#3626#3636#3607#3608#3636#3660#3651#3609#3585#3634#3619#3651#3594#3657#3591#3634#3609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object QMenuT: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT  * '
      'FROM     Menutrn'
      'WHERE  (UserId like :edit1)'
      ' ')
    Left = 116
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'edit1'
        ParamType = ptUnknown
      end>
  end
  object wwTb_Cond: TFDTable
    ConnectionName = 'HI_DBMS'
    TableName = 'CONDPAY'
    Left = 144
    Top = 24
  end
  object TSysmst: TFDTable
    AutoCalcFields = False
    ConnectionName = 'HI_DBMS'
    TableName = 'SYSTMST'
    Left = 56
    Top = 24
  end
  object SoTSysmst: TDataSource
    DataSet = TSysmst
    Left = 86
    Top = 26
  end
  object QLocat: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 274
    Top = 185
  end
end
