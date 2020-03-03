unit Rppo51;

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
  TFmRpPo51 = class(TForm)
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    Query2: TFDQuery;
    Query3: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRpPo51: TFmRpPo51;

implementation
uses Rppo50;

{$R *.DFM}

procedure TFmRpPo51.FormCreate(Sender: TObject);
Var Ed2,Ed3,Ed4,Onhn,SortText,XSC,FNM,XORD : String;
begin

   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;

   QRLabel4.alignment := tacenter;
   QRLabel8.caption   := 'สาขา  '+FRpPo50.Edit_Locat.text+'  รหัสสินค้า  '+
                         FRpPo50.Edit3.text+'  รหัสผู้จำหน่าย  '+FRpPo50.Edit1.text;


   XSC := '';

   if FRpPo50.Edit3.Text <> '' then
   begin
   XSC := ' AND A.PARTNO LIKE '+''''+FRpPo50.Edit3.Text+'%'+''''+'';
   end;

   if FRpPo50.Edit1.Text <> '' then
   begin
   XSC := XSC+ ' AND A.APCODE LIKE '+''''+FRpPo50.Edit1.Text+'%'+''''+'';
   end;

   if FRpPo50.Edit_Locat.Text <> '' then
   begin
   XSC := XSC+ ' AND A.LOCAT LIKE '+''''+FRpPo50.Edit_Locat.Text+'%'+''''+'';
   end;

  if FRpPo50.RadioGp2.ItemIndex = 0 then
   FNM := ' APCODE '
   else
   FNM := ' PARTNO,LOCAT ';


   if  FRpPo50.CKORD.Itemindex = 0 then
   XORD := ' A.LASTNET '
   else
   XORD := ' A.LASTUPD ';

   with  Query1 do
   begin
   Close;
   Sql.clear;
   Sql.Add('SELECT  '+FNM+ ' FROM  APBYPART  WHERE  LOCAT LIKE :0 AND PARTNO LIKE :1 AND APCODE LIKE :2  GROUP BY '+FNM +' ORDER BY '+FNM);
           params[0].asstring := FRpPo50.Edit_Locat.text+'%';
           params[1].asstring := FRpPo50.Edit3.text+'%';
           params[2].asstring := FRpPo50.Edit1.text+'%';
          OPEN;

   end;



   if FRpPo50.RadioGp2.ItemIndex = 0 then
   begin
     with  Query2 do
     begin
       Close;
       Sql.clear;
       Sql.add(' Select  A.PARTNO,B.DESC1,A.LASTUPD,A.LASTPRC,'+
               ' A.LASTDSC,A.LASTNET,A.LOCAT  FROM  APBYPART A,INVENTOR '+
               ' B WHERE A.PARTNO = B.PARTNO AND A.LOCAT = B.LOCAT AND A.APCODE =:APCODE '+XSC+' ORDER BY '+XORD+',A.PARTNO ');
       OPEN;
      end;
      with  Query3 do
      begin
         Close;
         Sql.clear;
         Sql.add('select  APNAME  FROM  APMAST WHERE APCODE =:APCODE ');
         OPEN;
      end;
   end  else
   begin
      QRLabel3.Caption := 'รหัสสินค้า';
      QRLabel2.Caption := 'ชื่อสินค้า';
      QRLabel6.Caption := 'รหัสผู้จำหน่าย';
      QRLabel7.Caption := 'ชื่อผู้จำหน่าย';
      QRDBText1.DataField := 'PARTNO';
      QRDBText2.DataField := 'DESC1';
      QRDBText3.DataField := 'APCODE';
      QRDBText4.DataField := 'APNAME';
      with  Query2 do
      begin
        Close;
        Sql.clear;
        Sql.add(' Select  A.APCODE,B.APNAME,A.LASTUPD,A.LASTPRC,'+
                ' A.LASTDSC,A.LASTNET,A.LOCAT  FROM  APBYPART A,APMAST '+
                ' B WHERE A.APCODE = B.APCODE  AND A.PARTNO =:PARTNO AND A.LOCAT =:LOCAT '+XSC+' ORDER BY '+XORD+',A.APCODE ');
        OPEN;
      end;
      with  Query3 do
      begin
         Close;
         Sql.clear;
         Sql.add('SELECT  DESC1  FROM  INVENTOR  WHERE PARTNO =:PARTNO  AND LOCAT =:LOCAT');
         OPEN;
      end;
   end;
end;

procedure TFmRpPo51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;
























end.
