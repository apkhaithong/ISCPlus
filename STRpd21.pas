unit Strpd21;

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
  TFmSTRpd21 = class(TForm)
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRpd21: TFmSTRpd21;
  XLocat,Xpartno : String;
  Ed4,Num,Sum,Count : Integer;
  DB1,CD1 :Double;
implementation
uses STRpd20, Dmic01;

{$R *.DFM}

procedure TFmSTRpd21.FormCreate(Sender: TObject);
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 740;
   QRLabel4.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 740;
   QRLabel5.alignment := tacenter;
   QRLabel8.caption   := ' จากวันที่  '+
                         FmSTRpd20.Edit_DateFrom.text+'  ถึงวันที่  '+FmSTRpd20.Edit_Dateto.text;
   QRLabel8.left := 1;
   QRLabel8.width := 740;
   QRLabel8.alignment := tacenter;

   With Query1 Do
   Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := Fmstrpd20.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel34.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel34.Caption := 'สาขา : ['+Fmstrpd20.Edit_Locat.text+'] '+Fieldbyname('Locatnm').Asstring;
   end;

   With Query1 Do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT SUM(NETTOT) AS TOTCOST FROM RC_TRANS WHERE RECVLOC LIKE :1 AND RECVDATE BETWEEN :2 AND :3 AND FLAG<>''R'' ');
     Params[0].asstring := Fmstrpd20.Edit_Locat.text+'%';
     Params[1].Asdate   := Fmstrpd20.Edit_DateFrom.Date;
     Params[2].Asdate   := Fmstrpd20.Edit_DateTo.Date;
     Open;
     QRlabel6.Caption := Floattostrf(Query1.Fieldbyname('Totcost').Asfloat,ffnumber,15,2);
     DB1:=DB1+Query1.Fieldbyname('Totcost').Asfloat;
    //
     Close;
     Sql.Clear;
     Sql.Add('SELECT SUM(AVGCOST) AS TOTCOST FROM RT_TRAN WHERE RTNLOC LIKE :1 AND RTNDT BETWEEN :2 AND :3 and FLAG=''6'' ');
     Params[0].asstring := Fmstrpd20.Edit_Locat.text+'%';
     Params[1].Asdate   := Fmstrpd20.Edit_DateFrom.Date;
     Params[2].Asdate   := Fmstrpd20.Edit_DateTo.Date;
     Open;
     QRlabel21.Caption := Floattostrf(Query1.Fieldbyname('Totcost').Asfloat,ffnumber,15,2);
     CD1:=CD1+Query1.Fieldbyname('Totcost').Asfloat;
     //
     Close;
     Sql.Clear;
     Sql.Add('SELECT SUM(QTYOUT*AVGCOST) AS TOTCOST FROM PK_TRANS WHERE PKLOCAT LIKE :1 AND PKDATE BETWEEN :2 AND :3 and FLAG=''R'' ');
     Params[0].asstring := Fmstrpd20.Edit_Locat.text+'%';
     Params[1].Asdate   := Fmstrpd20.Edit_DateFrom.Date;
     Params[2].Asdate   := Fmstrpd20.Edit_DateTo.Date;
     Open;
     QRlabel22.Caption := Floattostrf(Query1.Fieldbyname('Totcost').Asfloat,ffnumber,15,2);
     DB1:=DB1+Query1.Fieldbyname('Totcost').Asfloat;
     //
     Close;
     Sql.Clear;
     Sql.Add('SELECT SUM(QTYOUT*AVGCOST) AS TOTCOST FROM PK_TRANS WHERE PKLOCAT LIKE :1 AND PKDATE BETWEEN :2 AND :3 and FLAG=''S'' ');
     Params[0].asstring := Fmstrpd20.Edit_Locat.text+'%';
     Params[1].Asdate   := Fmstrpd20.Edit_DateFrom.Date;
     Params[2].Asdate   := Fmstrpd20.Edit_DateTo.Date;
     Open;
     QRlabel23.Caption := Floattostrf(Query1.Fieldbyname('Totcost').Asfloat,ffnumber,15,2);
     DB1:=DB1+Query1.Fieldbyname('Totcost').Asfloat;
     //
     Close;
     Sql.Clear;
     Sql.Add('SELECT SUM(TOTPRC) AS TOTCOST FROM IC_TRANS WHERE INVLOC LIKE :1 AND INVDATE BETWEEN :2 AND :3 and FLAG=''T'' ');
     Params[0].asstring := Fmstrpd20.Edit_Locat.text+'%';
     Params[1].Asdate   := Fmstrpd20.Edit_DateFrom.Date;
     Params[2].Asdate   := Fmstrpd20.Edit_DateTo.Date;
     Open;
     QRlabel24.Caption := Floattostrf(Query1.Fieldbyname('Totcost').Asfloat,ffnumber,15,2);
     CD1:=CD1+Query1.Fieldbyname('Totcost').Asfloat;
     //
     Close;
     Sql.Clear;
     Sql.Add('SELECT SUM(NETTOT) AS TOTCOST FROM RC_TRANS WHERE RECVLOC LIKE :1 AND RECVDATE BETWEEN :2 AND :3 and FLAG=''R'' ');
     Params[0].asstring := Fmstrpd20.Edit_Locat.text+'%';
     Params[1].Asdate   := Fmstrpd20.Edit_DateFrom.Date;
     Params[2].Asdate   := Fmstrpd20.Edit_DateTo.Date;
     Open;
     QRlabel25.Caption := Floattostrf(Query1.Fieldbyname('Totcost').Asfloat,ffnumber,15,2);
     DB1:=DB1+Query1.Fieldbyname('Totcost').Asfloat;
     //
     Close;
     Sql.Clear;
     Sql.Add('SELECT SUM(QTYOUT*AVGCOST) AS TOTCOST FROM PK_TRANS WHERE PKLOCAT LIKE :1 AND PKDATE BETWEEN :2 AND :3 and (FLAG=''1'' OR FLAG=''2'')');
     Params[0].asstring := Fmstrpd20.Edit_Locat.text+'%';
     Params[1].Asdate   := Fmstrpd20.Edit_DateFrom.Date;
     Params[2].Asdate   := Fmstrpd20.Edit_DateTo.Date;
     Open;
     QRlabel26.Caption := Floattostrf(Query1.Fieldbyname('Totcost').Asfloat,ffnumber,15,2);
     CD1:=CD1+Query1.Fieldbyname('Totcost').Asfloat;
     //
     Close;
     Sql.Clear;
     Sql.Add('SELECT SUM(QTYOUT*AVGCOST) AS TOTCOST FROM PK_TRANS WHERE PKLOCAT LIKE :1 AND PKDATE BETWEEN :2 AND :3 and (FLAG=''3'')');
     Params[0].asstring := Fmstrpd20.Edit_Locat.text+'%';
     Params[1].Asdate   := Fmstrpd20.Edit_DateFrom.Date;
     Params[2].Asdate   := Fmstrpd20.Edit_DateTo.Date;
     Open;
     QRlabel27.Caption := Floattostrf(Query1.Fieldbyname('Totcost').Asfloat,ffnumber,15,2);
     CD1:=CD1+Query1.Fieldbyname('Totcost').Asfloat;
     //
     Close;
     Sql.Clear;
     Sql.Add('SELECT SUM(NETCOST) AS TOTCOST FROM ADJ_TRANS WHERE ADJLOC LIKE :1 AND ADJDATE BETWEEN :2 AND :3 and QTYOUT>0 ');
     Params[0].asstring := Fmstrpd20.Edit_Locat.text+'%';
     Params[1].Asdate   := Fmstrpd20.Edit_DateFrom.Date;
     Params[2].Asdate   := Fmstrpd20.Edit_DateTo.Date;
     Open;
     QRlabel28.Caption := Floattostrf(Query1.Fieldbyname('Totcost').Asfloat,ffnumber,15,2);
     DB1:=DB1+Query1.Fieldbyname('Totcost').Asfloat;
     //
     Close;
     Sql.Clear;
     Sql.Add('SELECT ABS(SUM(NETCOST)) AS TOTCOST FROM ADJ_TRANS WHERE ADJLOC LIKE :1 AND ADJDATE BETWEEN :2 AND :3 and QTYOUT<0 ');
     Params[0].asstring := Fmstrpd20.Edit_Locat.text+'%';
     Params[1].Asdate   := Fmstrpd20.Edit_DateFrom.Date;
     Params[2].Asdate   := Fmstrpd20.Edit_DateTo.Date;
     Open;
     QRlabel29.Caption := Floattostrf(Query1.Fieldbyname('Totcost').Asfloat,ffnumber,15,2);
     CD1:=CD1+Query1.Fieldbyname('Totcost').Asfloat;

   end;
   QRlabel30.Caption := Floattostrf(DB1,ffnumber,15,2);
   QRlabel31.Caption := Floattostrf(CD1,ffnumber,15,2);
   QRlabel32.Caption := Floattostrf(DB1-CD1,ffnumber,15,2);
end;

procedure TFmSTRpd21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSTRpd21.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  DB1:=0;
  CD1:=0;
end;

end.
