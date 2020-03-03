unit DmCal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDm_Cal = class(TDataModule)
    QArmast: TFDQuery;
    QArpay: TFDQuery;
    Table1: TFDTable;
    Table2: TFDTable;
    QChqmas: TFDQuery;
    QChqtrn1: TFDQuery;
    QIntrMast: TFDQuery;
    Query1: TFDQuery;
    Qinvtran: TFDQuery;
    QCondpay: TFDQuery;
    QArpayNOPAY: TFloatField;
    QArpayDDATE: TDateField;
    QArpayDAMT: TFloatField;
    QArpayDATE1: TDateField;
    QArpayPAYMENT: TFloatField;
    QArpayDELAY: TFloatField;
    QArpayINTAMT: TFloatField;
    QArpayVATRT: TFloatField;
    QArpayNPROF: TFloatField;
    QArpaySTRPROF: TFloatField;
    QArpayINTEFFR: TFloatField;
    QArpayCONTNO: TStringField;
    QArpayLOCAT: TStringField;
    QArpayV_DAMT: TFloatField;
    QArpayN_DAMT: TFloatField;
    QArpayNINSTAL: TFloatField;
    QArpayV_PAYMENT: TFloatField;
    QArpayN_PAYMENT: TFloatField;
    QArpayADVDUE: TFloatField;
    QArpayDISCT: TFloatField;
    QArpayINTERT: TFloatField;
    QArpayTAXINV: TStringField;
    QArpayTAXDT: TDateField;
    QArpayUSERID: TStringField;
    QArpayTAXAMT: TFloatField;
    QArpayGRDCOD: TStringField;
    QArpayTAXPAY: TFloatField;
    QArpayTONEFFR: TFloatField;
    QArpayTONBALANCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm_Cal: TDm_Cal;

implementation

{$R *.DFM}

end.
