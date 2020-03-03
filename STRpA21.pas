unit STRpA21;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, quickrpt, Qrctrls, Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmSTRpA21 = class(TForm)
    Condpay: TFDQuery;
    CondpayCURYEAR: TStringField;
    CondpayCURMONTH: TStringField;
    CondpayLICEN_NO: TStringField;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    CondpayTAXID: TStringField;
    CondpayVATRT: TFloatField;
    CondpayTAXNAME: TStringField;
    CondpayTAXADDR: TStringField;
    CondpaySVRATE: TFloatField;
    CondpayNEXTKILO: TFloatField;
    CondpayNEXTDAY: TFloatField;
    CondpaySVFLAG: TStringField;
    CondpayCAMTYP: TStringField;
    CondpayCAMPART: TFloatField;
    CondpayCAMSERV: TFloatField;
    CondpayCAMDAT1: TDateField;
    CondpayCAMDAT2: TDateField;
    Query1: TFDQuery;
    QTopsal: TFDQuery;
    QTopsalLOCAT: TStringField;
    QTopsalPARTNO: TStringField;
    QTopsalDESC1: TStringField;
    QTopsalGROUP1: TStringField;
    QTopsalQTY: TFloatField;
    QTopsalCOST: TFloatField;
    QTopsalTOTCOST: TFloatField;
    QTopsalPRICE1: TFloatField;
    QTopsalTOTSAL: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRpA21: TFmSTRpA21;
  XLocat,Xpartno : String;
  Count : LongInt;

implementation
uses STRpA20, Dmic01,DmSec, USoftFirm;

{$R *.DFM}


end.
