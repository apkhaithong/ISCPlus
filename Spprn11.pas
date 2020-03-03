unit Spprn11;

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
  TFSpprn11 = class(TForm)
    QuickReport: TQuickRep;
    Title: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    PageHeader: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    Detail: TQRBand;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QOrdinv: TFDQuery;
    QOrdtrn: TFDQuery;
    Condpay: TFDQuery;
    QRLabel23: TQRLabel;
    QRDBCalc1: TQRDBCalc;
    procedure FormCreate(Sender: TObject);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSpprn11: TFSpprn11;
  SumQty,Sum1,Sum : double;

implementation
uses Spin01,Spprn10, DmSv, Dmsvset, USoftFirm;
{$R *.DFM}

procedure TFSpprn11.FormCreate(Sender: TObject);
begin
 With QOrdinv Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT O.ORDNO,O.ORDLOCAT,O.ORDDATE,O.CUSCOD,O.JOBNO,O.TOTPRC, '+
   'J.STRNO,V.REGNO,V.ENGNO,V.MDLCOD,V.SNAM,V.NAME1,V.NAME2,V.COLOR,'+
   'M.DESC FROM SV_ORDIV O,JOBORDER J,VIEW_SVMAST V,MODELMST M '+
   'WHERE O.ORDNO=:EDIT1 AND O.JOBNO=J.JOBNO AND J.STRNO=V.STRNO AND V.MDLCOD=M.MDLCOD ');
   params[0].asString  := Dm_Svset.QOrdiv.Fieldbyname('ORDNO').Asstring;
   OPEN;
   if QOrdinv.Bof and QOrdinv.Eof then
   SFMain.RaiseException('ไม่มีขอ้มูล');
  end;

 With QOrdTrn Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT  O.ORDNO,O.ORDLOCAT,O.PARTNO,O.QTYORD,I.DESC1,I.SHELF '+
   'FROM SV_ORDTN O,INVENTOR I '+
   'WHERE O.ORDNO=:EDIT1 AND O.PARTNO=I.PARTNO AND '+
   'O.ORDLOCAT=I.LOCAT');
   params[0].asString  := QOrdinv.Fieldbyname('ORDNO').Asstring;
   OPEN;
  end;
end;


procedure TFSpprn11.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  condpay.open;
  QRLabel8.caption   := Condpay.FieldByName('COMP_NM').Asstring;
  QRLabel8.Left      := 1;
  QRLabel8.Width     := 621;
  QRLabel8.Alignment := taCenter;
  QRLabel7.Left      := 1;
  QRLabel7.Width     := 621;
  QRLabel7.Alignment := taCenter;

  QRLabel15.Caption := QOrdinv.fieldByName('Snam').AsString+
                       QOrdinv.fieldByName('Name1').AsString+'   '+
                       QOrdinv.fieldByName('Name2').AsString;
end;


end.
