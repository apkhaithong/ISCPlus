object FIcRp111: TFIcRp111
  Left = 54
  Top = 146
  Width = 1202
  Height = 554
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 2000
  AutoScroll = False
  Caption = #3619#3634#3618#3591#3634#3609#3626#3636#3609#3588#3657#3634#3588#3591#3648#3627#3621#3639#3629
  Color = clSilver
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
  object Query110: TFDQuery
    CachedUpdates = True
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      
        'SELECT t.locat,t.Unit,t.Partno,t.DESC1,t.type,t.model,t.group1,t' +
        '.price1 as onhn1,'
      
        't.price1 as onlo1,t.price1 As Prc1,t.cost,t.Stdbuy As Tot1,Stdbu' +
        'y as tot2,t.Shelf '
      'From Inventor t,Invanls a ')
    Left = 23
    Top = 4
  end
  object Condpay: TFDTable
    CachedUpdates = True
    ConnectionName = 'HI_DBMS'
    TableName = 'CONDPAY'
    Left = 56
    Top = 4
  end
  object Query1: TFDQuery
    CachedUpdates = True
    ConnectionName = 'Hi_dbms'
    SQL.Strings = (
      
        'SELECT t.locat,t.Unit,t.Partno,t.DESC1,t.type,t.model,t.group1,t' +
        '.price1 as onhn1,'
      
        't.price1 as onlo1,t.price1 As Prc1,t.cost,t.Stdbuy As Tot1,Stdbu' +
        'y as tot2,t.Shelf '
      'From Inventor t,Invanls a ')
    Left = 87
    Top = 4
  end
end
