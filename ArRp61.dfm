object QRpAr_61: TQRpAr_61
  Left = 367
  Top = 193
  Width = 605
  Height = 360
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3623#3636#3648#3588#3619#3634#3632#3627#3660#3629#3634#3618#3640#3627#3609#3637#3657
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
  object QArinv3: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'SELECT A.LOCAT,A.CUSCODE,B.NAME1,B.NAME2, '
      '   SUM(A.ONDUE) AS ONDUE,SUM(A.ON30) AS ON30, '
      
        '   SUM(A.ON60) AS ON60,SUM(A.ON90) AS ON90,SUM(A.OVER90) AS OVER' +
        '90, '
      '  SUM(A.OVER365) AS OVER365  '
      '   FROM TMPAR61 A,ARMAST B WHERE A.CUSCODE=B.CUSCOD  '
      'GROUP BY LOCAT,CUSCODE,NAME1,NAME2')
    Left = 207
    Top = 2
    object QArinv3LOCAT: TStringField
      FieldName = 'LOCAT'

      Size = 5
    end
    object QArinv3CUSCODE: TStringField
      FieldName = 'CUSCODE'

      Size = 12
    end
    object QArinv3NAME1: TStringField
      FieldName = 'NAME1'

      Size = 50
    end
    object QArinv3NAME2: TStringField
      FieldName = 'NAME2'

      Size = 50
    end
    object QArinv3ONDUE: TFloatField
      FieldName = 'ONDUE'

    end
    object QArinv3ON30: TFloatField
      FieldName = 'ON30'

    end
    object QArinv3ON60: TFloatField
      FieldName = 'ON60'

    end
    object QArinv3ON90: TFloatField
      FieldName = 'ON90'

    end
    object QArinv3OVER90: TFloatField
      FieldName = 'OVER90'

    end
    object QArinv3OVER365: TFloatField
      FieldName = 'OVER365'

    end
  end
  object QCondpay: TFDQuery
    ConnectionName = 'HI_DBMS'
    SQL.Strings = (
      'Select * from Scondpay')
    Left = 237
    Top = 4
  end
  object Query1: TFDQuery
    ConnectionName = 'HI_DBMS'
    Left = 307
    Top = 5
  end
end
