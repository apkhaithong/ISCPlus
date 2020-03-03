unit u_PrnPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RzDBGrid, RzButton, ExtCtrls, RzPanel,
  RzEdit, StdCtrls, RzLabel, RzDBBnEd, Mask, RzDBEdit, DB, RzBorder, DBCtrls, wwdbdatetimepicker,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFPrnPrice = class(TForm)
    RzDBGrid1: TRzDBGrid;
    RzToolbar1: TRzToolbar;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzDBEdit1: TRzDBEdit;
    RzDBButtonEdit1: TRzDBButtonEdit;
    RzLabel1: TRzLabel;
    RzEdit1: TRzEdit;
    RzLabel2: TRzLabel;
    RzBorder1: TRzBorder;
    RzLabel3: TRzLabel;
    QrPrnPartInv: TFDQuery;
    DataSource1: TDataSource;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzDBMemo1: TRzDBMemo;
    RzLabel6: TRzLabel;
    QrPrnPartTrn: TFDQuery;
    DataSource2: TDataSource;
    QrPrnPartInvPRNINV: TStringField;
    QrPrnPartInvPRNDATE: TDateField;
    QrPrnPartInvCUSCOD: TStringField;
    QrPrnPartInvNETTOT: TFloatField;
    QrPrnPartInvTIME1: TDateTimeField;
    QrPrnPartInvMEMO1: TMemoField;
    QrPrnPartTrnPRNINV: TStringField;
    QrPrnPartTrnPARTNO: TStringField;
    QrPrnPartTrnLOCAT: TStringField;
    QrPrnPartTrnORDQTY: TFloatField;
    QrPrnPartTrnPRICE1: TFloatField;
    QrPrnPartTrnREDU: TFloatField;
    QrPrnPartTrnNETPRC: TFloatField;
    QrPrnPartTrnTOTPRC: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrnPrice: TFPrnPrice;

implementation
uses uSoftFirm;
{$R *.dfm}

end.
