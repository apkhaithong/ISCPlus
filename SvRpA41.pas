unit SvRpA41;

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
  TFmSvRpA41 = class(TForm)
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
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    ZZ: TQRLabel;
    QRDBText5: TQRDBText;
    QueryA4: TFDQuery;
    Condpay: TFDQuery;
    QRBand5: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRDBCalc2: TQRDBCalc;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText17: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel29: TQRLabel;
    QRBand2: TQRBand;
    QRLabel30: TQRLabel;
    QRDBCalc1: TQRDBCalc;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpA41: TFmSvRpA41;

implementation
uses SvRpA40;

{$R *.DFM}

procedure TFmSvRpA41.FormCreate(Sender: TObject);
Var Hd1,Xopt1,XOpt2,Dtopt :String;
begin
   Condpay.Open;
   QRLabel4.Caption   := Condpay.Fieldbyname('Comp_nm').asstring;
   QRLabel4.left      := 1;
   QRLabel4.width     := 950;
   QRLabel4.alignment := tacenter;


   QRLabel8.caption   := 'ระหว่างวันที่  '+FmSvRpA40.Edit_dateFrom.text+
                         '  -  '+FmSvRpA40.Edit_DateTo.text;
   QRLabel8.left      := 1;
   QRLabel8.width     := 950;
   QRLabel8.alignment := tacenter;


   QRLabel5.left      := 1;
   QRLabel5.width     := 950;
   QRLabel5.alignment := tacenter;


   If FmSvRpA40.EDIT_LOCAT.Text<>'' Then Hd1 :='รหัสสาขา '+FmSvRpA40.Edit_Locat.Text;
   If FmSvRpA40.Edit_RepType.Text<>''  Then Hd1:=Hd1+' ประเภท '+FmSvRpA40.Edit_RepType.Text;
   If FmSvRpA40.edType.Text<>''      Then Hd1:=Hd1+' ยี่ห้อ '+FmSvRpA40.edType.Text;

   If FmSvRpA40.RadioButton1.Checked Then Hd1:=Hd1+' ระบุวันที่ตามวันเปิด Job';
   If FmSvRpA40.RadioButton2.Checked Then Hd1:=Hd1+' ระบุวันที่ตามวันปิด Job';

   QRLabel6.caption   := Hd1;

   case FmSvRpA40.RadioGroup1.itemindex of
     0: QRLabel2.Caption :='ประเภทเคลมอะไหล่';
     1: QRLabel2.Caption :='ประเภทเคลมค่าแรง';
     2: QRLabel2.Caption :='ประเภทเคลมงานนอก';
     3: QRLabel2.Caption :='ประเภทเคลมงานสี';
     4: QRLabel2.Caption :='ประเภทเคลมอะไหล,ค่าแรง,งานนอก,งานสี';
   End;

   case FmSvRpA40.RadioGroup2.itemindex of
     0:Xopt2:=' And A.CLAIM=''Y'' ';
     1:Xopt2:=' And (A.BILCLAIM=''Y'' OR A.CLAIMDT Is NOT Null) ';
     2:Xopt2:=' And A.CLAIMOK=''Y'' ';
     3:Xopt2:=' And A.CLAIMOK=''N'' ';
     4:Xopt2:=' And A.claim=''Y'' AND (A.Bilclaim IS NULL OR A.CLAIMOK='''' )';
     5:Xopt2:=' And A.CLAIM=''I'' ';
   End;

   If FmSvRpA40.RadioButton1.Checked Then
   Dtopt :=' AND (A.JOBDATE BETWEEN :3 AND :4) ';
   If FmSvRpA40.RadioButton2.Checked Then
   Dtopt :=' AND (B.RFINSHDT BETWEEN :3 AND :4) ';

   WITH QueryA4 Do
   Begin
     Close;
     SQL.Clear;
     case FmSvRpA40.RadioGroup1.itemindex of
     0:Begin
       Sql.Add('SELECT A.JOBNO,A.JOBDATE,B.STRNO,B.ENGNO,B.REPTYPE,'+
       'B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,B.STATUS,A.PARTNO AS CODE,C.DESC1,'+
       'A.QTY,A.NETPRC,A.TOTPRC,A.CLAIM,A.CLAIMDT,A.CLAIMOK,A.TAXNO,'+
       'A.TAXDATE,''PT'' AS FLAG FROM PARTTRAN A,VIEW_JOBORD B,INVENTOR C '+
       'WHERE A.PARTNO=C.PARTNO AND A.LOCAT=C.LOCAT AND '+
       'A.JOBNO=B.JOBNO AND A.LOCAT LIKE :1 AND B.REPTYPE LIKE :2 '+
       Dtopt+Xopt2+' AND B.TYPE LIKE :5 '+' ORDER BY A.JOBNO ');
       end;
     1:Begin
       Sql.Add('SELECT A.JOBNO,A.JOBDATE,B.STRNO,B.ENGNO,B.REPTYPE,'+
       'B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,B.STATUS,A.CODE,A.DESC1,'+
       'A.FRT AS QTY,A.UPRICE AS NETPRC,A.NETPRIC AS TOTPRC,A.CLAIM,A.CLAIMDT,A.CLAIMOK,A.TAXNO,'+
       'A.TAXDATE,''LB'' AS FLAG FROM SERVTRAN A,VIEW_JOBORD B '+
       'WHERE A.JOBNO=B.JOBNO AND A.LOCAT LIKE :1 AND B.REPTYPE LIKE :2 '+
       Dtopt+Xopt2+' AND B.TYPE LIKE :5 '+' ORDER BY A.JOBNO ');
       end;
     2:Begin
       Sql.Add('SELECT A.JOBNO,A.JOBDATE,B.STRNO,B.ENGNO,B.REPTYPE,'+
       'B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,B.STATUS,A.CODE,A.DESC1,'+
       'A.QTY,A.UPRICE AS NETPRC,A.NETPRIC AS TOTPRC,A.CLAIM,A.CLAIMDT,A.CLAIMOK,A.TAXNO,'+
       'A.TAXDATE,''OU'' AS FLAG FROM OUTTRAN A,VIEW_JOBORD B '+
       'WHERE A.JOBNO=B.JOBNO AND A.LOCAT LIKE :1 AND B.REPTYPE LIKE :2 '+
       Dtopt+Xopt2+' AND B.TYPE LIKE :5 '+' ORDER BY A.JOBNO ');
       end;
     3:Begin
       Sql.Add('SELECT A.JOBNO,A.JOBDATE,B.STRNO,B.ENGNO,B.REPTYPE,'+
       'B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,B.STATUS,A.CODE,A.DESC1,'+
       'A.FRT AS QTY,A.PRICE AS NETPRC,A.NETPRIC AS TOTPRC,A.CLAIM,A.CLAIMDT,A.CLAIMOK,A.TAXNO,'+
       'A.TAXDATE,''CO'' AS FLAG FROM COLRTRAN A,VIEW_JOBORD B '+
       'WHERE A.JOBNO=B.JOBNO AND A.LOCAT LIKE :1 AND B.REPTYPE LIKE :2 '+
       Dtopt+Xopt2+' AND B.TYPE LIKE :5 '+' ORDER BY A.JOBNO ');
       end;
     4:Begin
       Sql.Add('SELECT A.JOBNO,A.JOBDATE,B.STRNO,B.ENGNO,B.REPTYPE,'+
       'B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,B.STATUS,A.PARTNO AS CODE,C.DESC1,'+
       'A.QTY,A.NETPRC,A.TOTPRC,A.CLAIM,A.CLAIMDT,A.CLAIMOK,A.TAXNO,'+
       'A.TAXDATE,''PT'' AS FLAG FROM PARTTRAN A,VIEW_JOBORD B,INVENTOR C '+
       'WHERE A.PARTNO=C.PARTNO AND A.LOCAT=C.LOCAT AND '+
       'A.JOBNO=B.JOBNO AND A.LOCAT LIKE :1 AND B.REPTYPE LIKE :2 '+
       Dtopt+Xopt2+' AND B.TYPE LIKE :5 '+
       'UNION ALL '+
       'SELECT A.JOBNO,A.JOBDATE,B.STRNO,B.ENGNO,B.REPTYPE,'+
       'B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,B.STATUS,A.CODE,A.DESC1,'+
       'A.FRT AS QTY,A.UPRICE AS NETPRC,A.NETPRIC AS TOTPRC,A.CLAIM,A.CLAIMDT,A.CLAIMOK,A.TAXNO,'+
       'A.TAXDATE,''LB'' AS FLAG FROM SERVTRAN A,VIEW_JOBORD B '+
       'WHERE A.JOBNO=B.JOBNO AND A.LOCAT LIKE :1 AND B.REPTYPE LIKE :2 '+
       Dtopt+Xopt2+' AND B.TYPE LIKE :5 '+
       'UNION ALL '+
       'SELECT A.JOBNO,A.JOBDATE,B.STRNO,B.ENGNO,B.REPTYPE,'+
       'B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,B.STATUS,A.CODE,A.DESC1,'+
       'A.QTY,A.UPRICE AS NETPRC,A.NETPRIC AS TOTPRC,A.CLAIM,A.CLAIMDT,A.CLAIMOK,A.TAXNO,'+
       'A.TAXDATE,''OU'' AS FLAG FROM OUTTRAN A,VIEW_JOBORD B '+
       'WHERE A.JOBNO=B.JOBNO AND A.LOCAT LIKE :1 AND B.REPTYPE LIKE :2 '+
       Dtopt+Xopt2+' AND B.TYPE LIKE :5 '+
       'UNION ALL '+
       'SELECT A.JOBNO,A.JOBDATE,B.STRNO,B.ENGNO,B.REPTYPE,'+
       'B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,B.STATUS,A.CODE,A.DESC1,'+
       'A.FRT AS QTY,A.PRICE AS NETPRC,A.NETPRIC AS TOTPRC,A.CLAIM,A.CLAIMDT,A.CLAIMOK,A.TAXNO,'+
       'A.TAXDATE,''CO'' AS FLAG FROM COLRTRAN A,VIEW_JOBORD B '+
       'WHERE A.JOBNO=B.JOBNO AND A.LOCAT LIKE :1 AND B.REPTYPE LIKE :2 '+
       Dtopt+Xopt2+' AND B.TYPE LIKE :5 '+' ORDER BY JOBNO ');
       end;

     END;
     params[0].asstring   := FmSvRpA40.EDIT_LOCAT.Text+'%';
     params[1].asstring   := FmSvRpA40.Edit_RepType.Text+'%';
     params[2].asdate     := FmSvRpA40.Edit_dateFrom.Date;
     params[3].asdate     := FmSvRpA40.Edit_DateTo.Date;
     params[4].asstring   := FmSvRpA40.edType.Text+'%';

     OPEN;
   End;
   If QueryA4.Bof and QueryA4.Eof Then
      SFMain.RaiseException('ไม่มีข้อมูลตามเงื่อนไข');
end;

procedure TFmSvRpA41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSvRpA41.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel25.Caption := QueryA4.Fieldbyname('SNam').Asstring+' '+
                    QueryA4.Fieldbyname('Name1').Asstring+' '+
                    QueryA4.Fieldbyname('Name2').Asstring;
end;






end.
