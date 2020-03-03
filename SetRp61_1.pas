unit Setrp61_1;

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
  TFmSetRp61 = class(TForm)
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
    QRShape5: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    QRep: TQuickRep;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    Query60: TFDQuery;
    PageFooter: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape1: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp61: TFmSetRp61;

implementation
uses SetRp60;

{$R *.DFM}

procedure TFmSetRp61.FormCreate(Sender: TObject);
Var  Ed1,ed2,Prosp,Xord : string;
begin
   case FmSetRp60.RadioGroup1.Itemindex of
     0: Prosp:='1';
     1: Prosp:='2';
     2: Prosp:='3';
     3: Prosp:='';
   end;
   case FmSetRp60.RadioGroup2.Itemindex of
     0: Xord:=' ORDER BY CUSCOD';
     1: Xord:=' ORDER BY NAME1';
     2: Xord:=' ORDER BY PROV,AUMP';
   end;

   WITH Query60 Do
   Begin
     Close;
     SQL.Clear;
     SQL.ADD('UPDATE ARMAST SET CGROUP='''' WHERE CGROUP IS NULL ');
     EXECSQL;
     //
     Close;
     SQL.Clear;
     SQL.ADD('SELECT * From Armast Where (CusCod >=:XCusCod) and '+
             '(CusCod <=:XCusCod1) AND PROSPECT LIKE :EDIT3 AND CGROUP LIKE :EDIT4 '+XORD);

     If FmSetRp60.Edit1.Text = '' Then
        Ed1 := ''
     else Ed1 := FmSetRp60.Edit1.text;

     If FmSetRp60.Edit2.Text = '' Then
        Ed2 := 'ZZZZZZZZZZZZ'
     Else Ed2 := FmSetRp60.Edit2.text;

     Params[0].AsString :=  Ed1;
     Params[1].AsString :=  Ed2;
     Params[2].AsString :=  Prosp+'%';
     Params[3].AsString :=  FmSetRp60.Edit3.text+'%';
     OPEN;
   End;
   If Query60.Bof and Query60.Eof Then
      SFMain.RaiseException('ไม่มีข้อมูลตามเงื่อนไข');

   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 970;
   QRLabel4.alignment := tacenter;
   QRLabel8.caption   := 'จากรหัสลูกค้า  '+FmSetRp60.Edit1.text+'  '+
                         'ถึงรหัสลูกค้า  '+FmSetRp60.Edit2.text;
   QRLabel8.left := 1;
   QRLabel8.width := 970;
   QRLabel8.alignment := tacenter;

   QRLabel5.left := 1;
   QRLabel5.width := 970;
   QRLabel5.alignment := tacenter;
end;

procedure TFmSetRp61.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


procedure TFmSetRp61.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   With Query60 Do
   Begin
     QRLabel13.Caption:= Query60.FieldByName('Snam').AsString+' '+
                         Query60.FieldByName('Name1').AsString+'   '+
                         Query60.FieldByName('Name2').AsString;

     QRLabel6.Caption := fieldbyname('Addr1').AsString+' '+
                         fieldbyname('Addr2').AsString;

     If fieldbyname('Tumb').AsString <> '' Then
        QRLabel6.Caption := QRLabel6.Caption+'  ต./แขวง '+fieldbyname('Tumb').AsString;

     If fieldbyname('Aump').AsString <> '' Then
        QRLabel6.Caption := QRLabel6.Caption+'อ./เขต '+fieldbyname('Aump').AsString;
     If fieldbyname('Prov').AsString <> '' Then
        QRLabel6.Caption := QRLabel6.Caption+' จ.'+fieldbyname('Prov').AsString;
     If fieldbyname('zip').AsString <> '' Then
        QRLabel6.Caption := QRLabel6.Caption+'  ['+fieldbyname('zip').AsString+']';
     If fieldbyname('Telp').AsString <> '' Then
        QRLabel6.Caption := QRLabel6.Caption+' Tel.'+fieldbyname('Telp').AsString;
     If fieldbyname('Fax').AsString <> '' Then
        QRLabel6.Caption := QRLabel6.Caption+' Fax.'+fieldbyname('Fax').AsString;
     If fieldbyname('Mobile').AsString <> '' Then
        QRLabel6.Caption := QRLabel6.Caption+' Mobile '+fieldbyname('Mobile').AsString;
     If fieldbyname('Telphome').AsString <> '' Then
        QRLabel6.Caption := QRLabel6.Caption+' Home '+fieldbyname('Telphome').AsString;

   End;
end;














end.
