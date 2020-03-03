unit Prnprt11;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, quickrpt, Qrctrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFPrnpart11 = class(TForm)
    Qparttrn: TFDQuery;
    QJobord: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrnpart11: TFPrnpart11;
  Day1,Month1,Year1 : String;

implementation
uses dmsvset,Prnprt10,Functn01;

{$R *.DFM}

procedure TFPrnpart11.FormCreate(Sender: TObject);
Var HD1,HD2:string;
    Tumb,Aump,Prov :String;
begin

 With QJobord Do
 begin
   Close;
   Sql.clear;
   {
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.LOCAT,J.STRNO,J.CUSCOD,J.PARTDISC,J.PARTNET,J.PARTVAT,J.PARTTOT, '+
           'J.VAT,J.FINSDATE,J.FINSTIME,J.RLKILOMT,J.RECVCOD,J.TOPNO,J.RECVTIME, '+
           'M.REGNO,M.ENGNO,M.MDLCOD,M.COLOR,M.CC,C.SNAM,C.NAME1,C.NAME2, '+
           'C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,C.ZIP,C.TELP,C.FAX, '+
           'F.OFFICNAM,M.STRNO '+
           'FROM JOBORDER J,SVMAST M,ARMAST C,OFFICER F  '+
           'WHERE J.JOBNO =:XJOB AND J.STRNO=M.STRNO AND '+
           'J.CUSCOD=C.CUSCOD AND J.RECVCOD=F.OFFICCOD ');
    }
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.LOCAT,J.STRNO,J.CUSCOD,M.SDATE, '+
           'J.FINSDATE,J.FINSTIME,J.RLKILOMT,J.RECVCOD,J.TOPNO,J.RECVTIME,J.RUNNO, '+
           'M.REGNO,M.ENGNO,M.MDLCOD,M.BAAB,M.COLOR,M.CC,M.VIPCARD,C.SNAM,C.NAME1,C.NAME2, '+
           'C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,C.ZIP,C.TELP,C.FAX,C.CONTACT,C.MOBILE, '+
           'M.STRNO,M.BODYNO,J.REPTYPE,D.DESC,T.TYPENAM '+
           'FROM JOBORDER J,SVMAST M,ARMAST C,MODELMST D,TYPEMST T  WHERE J.JOBNO =:XJOB AND J.STRNO=M.STRNO AND '+
           'M.MDLCOD=D.MDLCOD AND J.CUSCOD=C.CUSCOD AND '+
           'M.TYPE=T.TYPECOD');

   params[0].asString  := Fprnpart10.Label6.Caption;
   OPEN;
 end;
 //
 With Qparttrn Do
 Begin
   Close;
   Sql.Clear;
   Sql.Add('Select A.Jobno,A.PKNO,A.Partno,A.Servcod,A.QTY,A.UPRICE,A.REDU1,A.NETPRC, '+
           'A.TOTPRC,A.CUSCOD,B.Desc1,B.TYPE,A.Claim '+
           'From PartTran A,Inventor B  '+
           'Where (A.Jobno =:Jobno) And (A.Partno = B.Partno) and (A.Locat=B.Locat) ');
   Params[0].AsString := QJobord.FieldByName('Jobno').AsString;
   Open;
 End;

   With QJobord Do
   Begin
     ChqDatetoS(Day1,Month1,Year1,2,fieldByName('RECVDATE').AsDateTime);
     QRLabel5.Caption  := Day1+' '+Month1+' '+Year1;

     If ((Copy(FieldByName('Prov').AsString,1,7)='กรุงเทพ')or
     (Copy(FieldByName('Prov').AsString,1,3)='กทม')) Then
     Begin
      Tumb :='แขวง ';
      Aump :='เขต ';
      Prov :='';
     End
     Else
     Begin
      Tumb :='ต.';
      Aump :='อ.';
      Prov :='จ.';
     End;
     QRLabel25.Caption := fieldByName('Snam').AsString+
                         fieldByName('Name1').AsString+'   '+
                         fieldByName('Name2').AsString+' [ '+
                         fieldByName('Cuscod').AsString+' ] ';

     IF fieldByName('Tumb').AsString<>'' Then HD1:=HD1+Tumb+fieldByName('Tumb').AsString+'  ';
     If fieldByName('Aump').AsString<>'' Then HD1:=HD1+Aump+fieldByName('Aump').AsString+' ';
     If fieldByName('Prov').AsString<>'' Then HD1:=HD1+Prov+fieldByName('Prov').AsString+' '+fieldByName('Zip').AsString;
     If fieldByName('Telp').AsString<>'' Then HD2:=HD2+'โทร. '+fieldByName('Telp').AsString;
     If fieldByName('Contact').AsString<> '' Then HD2:=HD2+'  ผู้ติดต่อ '+fieldByName('Contact').AsString;

     QRLabel28.Caption := fieldByName('ADDR1').AsString;
     If fieldByName('ADDR2').AsString<>'' Then
     QRLabel28.Caption :=QRLabel28.Caption+' ถ.'+fieldByName('ADDR2').AsString;
     QRLabel28.Caption :=QRLabel28.Caption+' '+HD1;
     QRLabel27.Caption  := HD2;

     QRLabel6.Caption  := fieldByName('BAAB').AsString;
     QRLabel38.Caption := fieldByName('TYPENAM').AsString;
     QRLabel40.Caption := fieldByName('DESC').AsString;
   End;
end;





procedure TFPrnpart11.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If Qparttrn.FieldByName('Claim').Asstring='Y' Then
    QRLabel19.Caption := 'C'
  Else
  If Qparttrn.FieldByName('Claim').Asstring='I' Then
    QRLabel19.Caption := 'I'
  Else
    QRLabel19.Caption := '';
end;

end.
