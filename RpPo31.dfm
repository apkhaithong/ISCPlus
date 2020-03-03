object QRFPo31: TQRFPo31
  Left = 117
  Top = 74
  Width = 1188
  Height = 565
  HorzScrollBar.Range = 1200
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
  object Query3: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT  I.PODATE,I.APCODE,I.PONO,I.POLOCAT,T.PONO,T.POLOCAT,'
      '               T.PARTNO,T.ORDQTY,T.RECQTY '
      '                FROM PO_INVOI I,PO_TRANS T ')
    Left = 75
    Top = 16
  end
  object Condpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT * FROM CONDPAY')
    Left = 124
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
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 83
    Top = 64
  end
end
