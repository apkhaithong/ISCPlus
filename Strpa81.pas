unit Strpa81;

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
  TFmRpa81 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
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
    Query60: TFDQuery;
    QRBand5: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText13: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel27: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText10: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    Query1: TFDQuery;
    QRLabel21: TQRLabel;
    QRGroup1: TQRGroup;
    QRSysData3: TQRSysData;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText15: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel23: TQRLabel;
    QRShape1: TQRShape;
    QRLabel25: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRpa81: TFmRpa81;
  Totcos:Double;

implementation
uses Strpa80, Dmic01, USoftFirm;

{$R *.DFM}

procedure TFmRpa81.FormCreate(Sender: TObject);
Var ed1,Ed2,Ed3,Ed4,XFlag,L1,L2,Xsort: String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel8.caption   := 'สาขา  '+FmSTRpa80.Edit_Locat.text+
                         '  จากวันที่คืน  '+FmSTRpa80.Edit_DateFrom.text+'  ถึงวันที่  '+FmSTRpa80.Edit_DateTo.text+
                         '  รหัสลูกค้า  '+FmSTRpa80.Edit3.text;
   //
   Case FmSTRpa80.RadioGp2.ItemIndex of
     0: Xsort :=' Order By a.Pkno,b.partno';
     1: Xsort :=' Order By a.Pkno,a.rtnpk,b.partno';
   end;

    With Query60 Do
    begin
      Close;
      SQL.Clear;
      Sql.Add('SELECT A.Pkno,A.PkDate,A.Pklocat,RTRIM(E.SNam)||RTRIM(E.NAME1)||''  ''||RTRIM(E.NAME2)||''[''||RTRIM(A.Cuscod)|| '']'' AS CUSCOD,A.Officcod, '+
            'B.Pkno,B.Pklocat,B.Partno,B.Uprice,B.Qtyout,(B.Uprice*B.QTYout) as netprc,B.totprc,B.redu1,(B.Uprice*B.QTYout)-B.totprc as disamt'+
            ',A.RTNPK,A.REFDAT,C.Desc1,D.PkDate AS RTNDAT,B.Avgcost,B.Qtyout*B.Avgcost AS Totcos  '+
            'FROM Pk_invoi A,Pk_trans B,Inventor C,Pk_invoi D,CUSTMAST E '+
            'WHERE (A.Pklocat Like :Xrecvloc) and (A.Rtnpk = D.PkNo) and A.Cuscod = E.Cuscod and (A.Pkno = B.Pkno) '+
            'and (A.PkDate >=:XDate) and (A.PkDate <=:XDate1) and A.Cuscod Like :Xcuscod '+
            'And (B.Partno = C.Partno) and (B.Pklocat = C.Locat) And A.Flag = ''R'' and b.partno like :xpart and a.Officcod like :xoffic  '+XSort);

      Params[0].AsString  := FmSTRpa80.Edit_Locat.text+'%';
      Params[1].AsDate    := FmSTRpa80.Edit_DateFrom.Date;
      Params[2].AsDate    := FmSTRpa80.Edit_DateTo.Date;
      Params[3].AsString  := FmSTRpa80.Edit1.text+'%';
      Params[4].AsString  := FmSTRpa80.Edit3.text+'%';
      Params[5].AsString  := FmSTRpa80.Edit7.text+'%';
      
      If Not Query60.Prepared Then Query60.Prepare;
      Open;
    end;
    if Query60.bof and Query60.Eof then
       SFMain.RaiseException('ไม่มีข้อมูล');
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := FmSTRpa80.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel21.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel21.Caption := 'สาขา : ['+FmSTRpa80.Edit_Locat.text+'] '+Fieldbyname('Locatnm').Asstring;
  end;

end;

procedure TFmRpa81.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


procedure TFmRpa81.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel20.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

procedure TFmRpa81.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var Tot:Double;
begin
 { With Query1 do
  begin
    Close;
    Sql.Clear;
    SQl.Add('SELECT AVGCOST FROM PK_TRANS WHERE PKLOCAT=:1 AND PKNO=:2 AND PARTNO=:3');
    Params[0].Asstring:= Query60.Fieldbyname('PKLOCAT').Asstring;
    Params[1].Asstring:= Query60.Fieldbyname('RTNPK').Asstring;
    Params[2].Asstring:= Query60.Fieldbyname('PARTNO').Asstring;
    Open;
  end;
  Tot:=Query60.Fieldbyname('Qtyout').Asfloat*Query1.Fieldbyname('Avgcost').Asfloat;
  Totcos := Totcos+Query60.Fieldbyname('Qtyout').Asfloat*Query1.Fieldbyname('Avgcost').Asfloat;

  QRLabel29.Caption := Floattostrf(Query1.Fieldbyname('Avgcost').Asfloat,ffNumber,15,2);
  QRLabel33.Caption := Floattostrf(Tot,ffNumber,15,2);
  }
end;

procedure TFmRpa81.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Totcos:=0;

end;

procedure TFmRpa81.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 // QRLabel32.Caption := Floattostrf(Totcos,ffNumber,15,2);
end;

procedure TFmRpa81.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  With Query1 do
  begin
    Close;
    Sql.Clear;
    SQl.Add('SELECT CODE,NAME FROM OFFICER WHERE CODE=:1 ');
    Params[0].Asstring:= Query60.Fieldbyname('OFFICCOD').Asstring;
    Open;
    QRlabel25.Caption := Query1.Fieldbyname('CODE').Asstring+' '+Query1.Fieldbyname('NAME').Asstring;
  end;

end;

end.
