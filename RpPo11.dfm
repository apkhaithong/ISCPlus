object QRFPo11: TQRFPo11
  Left = 80
  Top = 79
  Width = 652
  Height = 340
  HorzScrollBar.Position = 573
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 16
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3585#3634#3619#3626#3633#3656#3591#3595#3639#3657#3629#3605#3634#3617#3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Query1: TFDQuery
    AfterOpen = Query1AfterOpen
    AfterClose = Query1AfterClose
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.PODATE,A.APCODE,A.PONO,A.POLOCAT, '
      
        '          A.PARTNO,A.ORDQTY,A.ORDCOST,A.NETCOST,A.TOTCOST ,B.APN' +
        'AME '
      '           FROM PO_TRANS A ,APMAST B WHERE A.APCODE=B.APCODE')
    Left = 57
    Top = 13
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 104
    Top = 14
    object CondpayCOMP_NM: TStringField
      FieldName = 'COMP_NM'
      Size = 50
    end
    object CondpayCOMP_ADR1: TStringField
      FieldName = 'COMP_ADR1'
      Size = 60
    end
    object CondpayCOMP_ADR2: TStringField
      FieldName = 'COMP_ADR2'
      Size = 60
    end
    object CondpayTELP: TStringField
      FieldName = 'TELP'
      Size = 50
    end
  end
  object TInventor: TFDTable
    ConnectionName = 'HI_DBMS'
    IndexFieldNames = 'PARTNO;LOCAT'
    MasterFields = 'PARTNO;POLOCAT'
    MasterSource = DataSource1
    TableName = 'INVENTOR'
    Left = 60
    Top = 50
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 100
    Top = 50
  end
end
