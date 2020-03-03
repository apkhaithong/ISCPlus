unit Svrpc21;

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
  TFmSvRpc21 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape2: TQRShape;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    QueryC10: TFDQuery;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRSysData2: TQRSysData;
    Query1: TFDQuery;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    Query2: TFDQuery;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpc21: TFmSvRpc21;

implementation
uses SvRpC20;
{$R *.DFM}

procedure TFmSvRpc21.FormCreate(Sender: TObject);
Var Opt : String;
begin
   Condpay.Open;

   QRLabel5.left      := 1;
   QRLabel5.width     := 670;
   QRLabel5.alignment := tacenter;

   QRLabel25.caption  := 'ระหว่างวันที่ '+FmSvRpc20.Edit5.Text+' ถึงวันที่ '+FmSvRpc20.Edit6.Text;
   QRLabel25.left      := 1;
   QRLabel25.width     := 670;
   QRLabel25.alignment := tacenter;

   case FmSvRpc20.RadioGroup1.Itemindex Of
     0: Opt:=' AND A.FLAG=''1'' ';
     1: Opt:=' AND A.FLAG=''2'' ';
     2: Opt:=' AND A.FLAG=''3'' ';
     3: Opt:=' AND A.FLAG=''4'' ';
     4: Opt:=' AND A.FLAG=''5'' ';
     5: Opt:=' AND (A.FLAG=''2'' OR A.FLAG=''3'' OR A.FLAG=''4'' OR A.FLAG=''5'') ';
   End;

   With QueryC10 do
   begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT A.LOCAT,A.TAXDT,A.TAXNO,A.JOBNO,A.STRNO,A.CLAIMNO,'+
     'A.BALANE,A.VATAMT,A.NETPRC,A.FLAG '+
     ' FROM OTHINVOI A WHERE (A.LOCAT like :XLocat) AND '+
     '(A.TAXDT >=:FrmDate) and (A.TAXDT <=:ToDate) AND (A.CANCELID IS NULL OR A.CANCELID='''') '+Opt+
     ' Order By A.TAXDT,A.JOBNO,A.TAXNO');

     Params[0].AsString := FmSvRpc20.Edit2.Text+'%';
     Params[1].AsDate   := FmSvRpc20.Frmdate;
     Params[2].AsDate   := FmSvRpc20.Todate;
     OPEN;
     If Bof and Eof Then
      SFMain.RaiseException('ไม่มีข้อมูลตามเงื่อนไข');
   End;
   //
   With Query1 Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * FROM LOCATMST Where (LOCATCOD =:Jobno) ');
     Params[0].AsString := QueryC10.FieldByName('LOCAT').AsString;
     Open;

     QRLabel7.Caption := Query1.fieldByName('LOCATNAM').AsString;

     QRLabel8.Caption := fieldByName('ADDR1').AsString;
     QRLabel11.Caption := '';
     If fieldByName('ADDR2').AsString <> '' Then
      QRLabel8.Caption := QRLabel8.Caption+' ถ.'+fieldByName('ADDR2').AsString;
     If fieldByName('TUMB').AsString <> '' Then
      QRLabel11.Caption := QRLabel11.Caption+' ต.'+fieldByName('TUMB').AsString;
     If fieldByName('AUMP').AsString <> '' Then
      QRLabel11.Caption := QRLabel11.Caption+' อ.'+fieldByName('AUMP').AsString;
     If fieldByName('PROV').AsString <> '' Then
      QRLabel11.Caption := QRLabel11.Caption+' จ.'+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
      QRLabel11.Caption := QRLabel11.Caption+' โทร.'+fieldByName('TELP').AsString;

   End;

end;

procedure TFmSvRpc21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSvRpc21.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  With Query2 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('Select STRNO,ENGNO FROM SVMAST Where STRNO =:XNO ');
    Params[0].AsString := QueryC10.FieldByName('STRNO').AsString;
    Open;
    QRLabel20.Caption := Query2.fieldByName('ENGNO').AsString;
  End;
end;



end.
