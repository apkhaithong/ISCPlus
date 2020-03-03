unit SvRpA51;

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
  TFmSvRpA51 = class(TForm)
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
    QRLabel27: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    QueryA5: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    QRBand5: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRDBCalc2: TQRDBCalc;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpA51: TFmSvRpA51;

implementation
uses SvRpA50;

{$R *.DFM}

procedure TFmSvRpA51.FormCreate(Sender: TObject);
Var Xsort,Xopt:string;
begin
   Condpay.Open;
   QRLabel4.Caption   := CondpayComp_nm.asstring;
   QRLabel4.left      := 1;
   QRLabel4.width     := 1000;
   QRLabel4.alignment := tacenter;

   QRLabel8.caption   := 'ระหว่างวันที่  '+FmSvRpA50.Edit_dateFrom.text+
                         '  -  '+FmSvRpA50.Edit_DateTo.text;
   QRLabel8.left      := 1;
   QRLabel8.width     := 1000;
   QRLabel8.alignment := tacenter;

   QRLabel5.left      := 1;
   QRLabel5.width     := 1000;
   QRLabel5.alignment := tacenter;
   if FmSvRpA50.Sortradio.itemindex =0 Then
      Xsort :=' order By B.Recvdate ';
   if FmSvRpA50.Sortradio.itemindex =1 Then
      Xsort :=' order By B.JOBNO ';
   case FmSvRpA50.RadioGroup1.itemindex of
     0:Xopt:=' And (A.Bilclaim<>''Y'' Or A.BilClaim Is Null) ';
     1:Xopt:=' And A.Bilclaim=''Y'' ';
     2:Xopt:='';
   End;
   
   case FmSvRpA50.RadioGroup2.itemindex of
     0:Begin
         QRLabel5.Caption := 'รายงานเคลมค่าบริการ';
         QRLabel3.Caption := 'รหัสค่าบริการ';
         QRLabel13.Caption := 'FRT';
       End;
     1:Begin
         QRLabel5.Caption := 'รายงานเคลมค่างานนอก';
         QRLabel3.Caption := 'รหัสงานนอก';
         QRLabel13.Caption := 'จำนวน';
       End;
     2:Begin
         QRLabel5.Caption := 'รายงานเคลมค่างานสี';
         QRLabel3.Caption := 'รหัสงานสี';
         QRLabel13.Caption := 'จำนวน';
       End;
   End;


   WITH QueryA5 Do
   Begin
     Close;
     SQL.Clear;

     case FmSvRpA50.RadioGroup2.itemindex of
      0:Begin
         SQL.ADD('Select B.Jobno,B.Strno,B.Recvdate,A.Locat,A.code, '+
             'A.Frt,A.Netpric,A.Servcod,A.Claim,A.Mdlcod,B.Reptype, '+
             'A.Desc1,D.Engno '+
             'From Servtran A, Joborder B,Svmast D '+
             'Where (B.Recvdate >= :FROMDATE) AND (B.Recvdate <= :ToDate) '+
             'And (B.Jobno = A.Jobno) And (A.Claim = ''Y'') and (D.strno=B.strno) '+
             'And A.locat like :Xloc and B.Reptype like :Xreptyp '+Xopt+Xsort);
        End;
      1:Begin
         SQL.ADD('Select B.Jobno,B.Strno,B.Recvdate,A.Locat,A.code, '+
             'A.Qty As Frt,A.Netpric,A.Servcod,A.Claim,B.Mdlcod,B.Reptype, '+
             'A.Desc1,D.Engno '+
             'From Outtran A, Joborder B,Svmast D '+
             'Where (B.Recvdate >= :FROMDATE) AND (B.Recvdate <= :ToDate) '+
             'And (B.Jobno = A.Jobno) And (A.Claim = ''Y'') and (D.strno=B.strno) '+
             'And A.locat like :Xloc and B.Reptype like :Xreptyp '+Xopt+Xsort);
        End;
      2:Begin
         SQL.ADD('Select B.Jobno,B.Strno,B.Recvdate,A.Locat,A.code, '+
             'A.Frt,A.Netpric,A.Servcod,A.Claim,B.Mdlcod,B.Reptype, '+
             'A.Desc1,D.Engno '+
             'From Colrtran A, Joborder B,Svmast D '+
             'Where (B.Recvdate >= :FROMDATE) AND (B.Recvdate <= :ToDate) '+
             'And (B.Jobno = A.Jobno) And (A.Claim = ''Y'') and (D.strno=B.strno) '+
             'And A.locat like :Xloc and B.Reptype like :Xreptyp '+Xopt+Xsort);

        End;
     End;


     params[0].asdate    := Strtodate(FmSvRpA50.Edit_dateFrom.Text);
     params[1].asdate    := Strtodate(FmSvRpA50.Edit_DateTo.Text);
     params[2].asstring    := FmSvRpA50.EDIT_LOCAT.Text+'%';
     params[3].asstring    := FmSvRpA50.Edit_Type.Text+'%';

     OPEN
   End;
   If QueryA5.Bof and QueryA5.Eof Then
      SFMain.RaiseException('ไม่มีข้อมูลตามเงื่อนไข');
end;

procedure TFmSvRpA51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;




end.
