unit SvRp41;

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
  TQRpSv41 = class(TForm)
    QRep: TQuickRep;
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel28: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    Query3: TFDQuery;
    QRBand5: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRLabel16: TQRLabel;
    DataSource1: TDataSource;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText11: TQRDBText;
    Query1: TFDQuery;
    QRLabel25: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    Query2: TFDQuery;
    QRShape2: TQRShape;
    QRLabel39: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRpSv41: TQRpSv41;
  TOTAL,VATAMT,TOTTAX :Double;
  Vtype:String;
  
implementation
uses Functn01;

{$R *.DFM}

procedure TQRpSv41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Query3.Close;
  Action := caFree;
end;

procedure TQRpSv41.FormCreate(Sender: TObject);
{Var Ed1,Ed2,Ed3,Xsort,Vtype,Optdate :  String;
    XVat:Double;   }
begin
  { condpay.open;
   QRLabel4.caption   := CondpayCOMP_NM.Asstring;
    //
   QRLabel17.Caption   :='สาขา '+SvRp_40.EDIT_LOCAT.text+'   Job ระหว่างวันที่ '+
                         SvRp_40.Edit_dateFrom.text+'  ถึงวันที่  '+
                         SvRp_40.Edit_DateTo.text;
   //
   Case SvRp_40.SortRadio.ItemIndex  Of
     0: Xsort:=' ORDER BY JOBNO';
     1: Xsort:=' ORDER BY JOBTYP';
     2: Xsort:=' ORDER BY JOBDATE';
     3: Xsort:=' ORDER BY TAXNO';
     4: Xsort:=' ORDER BY MDLCOD';
   End;

   QRlabel26.Caption:='';

   Case SvRp_40.RadioGroup3.ItemIndex  Of
     0:begin
         QRlabel26.Caption:=QRlabel26.Caption+'-> ยึดตามวันเปิด JOB';
         Optdate:=' JOBDATE >= :FROMDATE AND JOBDATE <= :ToDate ';

       end;
     1:begin
         QRlabel26.Caption:=QRlabel26.Caption+'-> ยึดตามวันปิด JOB';
         Optdate:=' FINSDATE >= :FROMDATE AND FINSDATE <= :ToDate ';
       end;

     2:Begin
         QRlabel26.Caption:=QRlabel26.Caption+'-> ยึดตามวันออกใบกำกับ ';
         Optdate:=' TAXDATE >= :FROMDATE AND TAXDATE <= :ToDate ';
       End;
   End;
   If SvRp_40.CheckBox1.Checked then
        Optdate:= Optdate+' AND OUTAMT >0 ';

   If SvRp_40.CheckBox2.Checked then
   Begin
     Optdate:=Optdate+' AND MAIL =''M'' ';
     QRlabel26.Caption:= QRlabel26.Caption+' เฉพาะ Job ที่เข้ามาจากการ mail ';
   End;

   If SvRp_40.Edit1.Text <>'' Then
   QRlabel26.Caption:= QRlabel26.Caption+' โดยเลือกเฉพาะรหัสช่าง '+SvRp_40.Edit1.Text;

 With Query1 Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT COUNT(DISTINCT JOBNO) AS JOBAMT FROM VIEW_ANALYSYS '+
   'WHERE STATUS<>''C'' AND JOBTYP LIKE :1 AND LOCAT LIKE :2  AND '+
   'SERVCOD LIKE :3 AND GCODE LIKE :4 AND CUSCOD LIKE :5 AND '+Optdate);
   params[0].asString  := SvRp_40.Edit_Type.Text+'%';;
   params[1].asString  := SvRp_40.Edit_LOCAT.Text+'%';;
   params[2].asString  := SvRp_40.Edit1.Text+'%';
   params[3].asString  := SvRp_40.Edit2.Text+'%';
   params[4].asString  := SvRp_40.Edit3.Text+'%';
   params[5].asdate    := SvRp_40.Edit_dateFrom.Date;
   params[6].asdate    := SvRp_40.Edit_DateTo.Date;
   OPEN;
   QRlabel39.Caption := FloattostrF(Query1.Fieldbyname('JOBAMT').AsFloat,ffNumber,15,0);
  end;


 With Query3 Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT JOBNO,TAXNO,TAXDATE,JOBDATE,JOBTYP,CUSCOD,MDLCOD,STRNO,RLKILOMT,GCODE,STATUS,'+
   'SUM(SERVAMT) AS SERVNET,SUM(OILAMT) AS OILNET,SUM(OUTAMT) '+
   'AS OUTNET,SUM(COLAMT) AS COLRNET,SUM(PATAMT) AS PARTNET,  '+
   'SUM(SERVAMT+OILAMT+OUTAMT+COLAMT+PATAMT) AS TOTALNET,    '+
   'SUM(COS_SV) AS SERVCOS,SUM(COS_OL) AS OILCOS,SUM(COS_OU) '+
   'AS OUTCOS,SUM(COS_CO) AS COLRCOS,SUM(COS_PT) AS PARTCOS, '+
   'SUM(COS_SV+COS_OL+COS_OU+COS_CO+COS_PT) AS TOTALCOS,     '+
   'SUM(SERVAMT-COS_SV) AS SERVPRF,SUM(OILAMT-COS_OL) AS OILPRF,SUM(OUTAMT-COS_OU) '+
   'AS OUTPRF,SUM(COLAMT-COS_CO) AS COLRPRF,SUM(PATAMT-COS_PT) AS PARTPRF,  '+
   'SUM((SERVAMT+OILAMT+OUTAMT+COLAMT+PATAMT)-(COS_SV+COS_OL+COS_OU+COS_CO+COS_PT)) AS TOTALPRF '+
   'FROM VIEW_ANALYSYS '+
   'WHERE STATUS<>''C'' AND JOBTYP LIKE :1 AND LOCAT LIKE :2  AND '+
   'SERVCOD LIKE :3 AND GCODE LIKE :4 AND CUSCOD LIKE :5 AND '+Optdate+
   'GROUP BY JOBNO,TAXNO,TAXDATE,JOBDATE,JOBTYP,CUSCOD,MDLCOD,STRNO,RLKILOMT,GCODE,STATUS '+Xsort);



   params[0].asString  := SvRp_40.Edit_Type.Text+'%';;
   params[1].asString  := SvRp_40.Edit_LOCAT.Text+'%';;
   params[2].asString  := SvRp_40.Edit1.Text+'%';
   params[3].asString  := SvRp_40.Edit2.Text+'%';
   params[4].asString  := SvRp_40.Edit3.Text+'%';
   params[5].asdate    := SvRp_40.Edit_dateFrom.Date;
   params[6].asdate    := SvRp_40.Edit_DateTo.Date;
   OPEN;
   iF Bof and eof Then
   SFMain.RaiseException('ไม่มีรายการ JOB');
  end;   }
end;

procedure TQRpSv41.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 { TOTAL:=0;
  VATAMT:=0;
  TOTTAX:=0;   }
end;

procedure TQRpSv41.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 { With Query1 do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.REGNO,A.TYPE,B.NAME1,B.NAME2 FROM SVMAST A,VIEW_CUST B WHERE '+
    'A.CUSCOD=B.CUSCOD AND A.STRNO=:1');
    Params[0].Asstring:=Query3.Fieldbyname('Strno').Asstring;
    Open;
    QRLabel24.Caption := Query1.Fieldbyname('Name1').Asstring+' '+Query1.Fieldbyname('Name2').Asstring;
    QRLabel25.Caption := Query1.Fieldbyname('REGNO').Asstring;
    QRLabel32.Caption := Query1.Fieldbyname('TYPE').Asstring;
  end;

  With Query2 do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT BALANCE,VAT,TOTTAX FROM TAXSAL WHERE TAXNO =:1 ');
    Params[0].Asstring:=Query3.Fieldbyname('TAXNO').Asstring;
    Open;
    QRlabel36.Caption := FloattostrF(Query2.Fieldbyname('BALANCE').AsFloat,ffNumber,15,2);
    QRlabel37.Caption := FloattostrF(Query2.Fieldbyname('VAT').AsFloat,ffNumber,15,2);
    QRlabel38.Caption := FloattostrF(Query2.Fieldbyname('TOTTAX').AsFloat,ffNumber,15,2);
    TOTAL :=TOTAL+Query2.Fieldbyname('BALANCE').AsFloat;
    VATAMT:=VATAMT+Query2.Fieldbyname('VAT').AsFloat;
    TOTTAX:=TOTTAX+Query2.Fieldbyname('TOTTAX').AsFloat;
  end;
  QRLabel54.Enabled :=Query2.Fieldbyname('BALANCE').AsFloat<>Query3.Fieldbyname('TOTALNET').AsFloat;     }
end;

procedure TQRpSv41.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 { QRlabel45.Caption := FloattostrF(TOTAL,ffNumber,15,2);
  QRlabel46.Caption := FloattostrF(VATAMT,ffNumber,15,2);
  QRlabel53.Caption := FloattostrF(TOTTAX,ffNumber,15,2);   }
end;

end.
