unit ArRp21;

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
  TQArRp_21 = class(TForm)
    Query20: TFDQuery;
    Query20LOCAT: TStringField;
    Query20CUSCODE: TStringField;
    Query20NUM: TIntegerField;
    Query20NETTOT: TFloatField;
    Query20PAYMNT: TFloatField;
    Query20KANG: TFloatField;
    QCondpay: TFDQuery;
    QArmast: TFDQuery;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    TNet,TSpay,TKang : Double ;
  public
    { Public declarations }
  end;

var
  QArRp_21: TQArRp_21;

implementation

uses ArRp20;

{$R *.DFM}

procedure TQArRp_21.FormCreate(Sender: TObject);
begin
  Qcondpay.open;
  QRLabel4.caption   := QCondpay.FieldByName('COMP_NM').Asstring;
  If ArRp_20.RadioG1.Itemindex = 0 Then
   QRLabel5.caption   := 'ลูกหนี้คงเหลือแยกตามลูกค้า'
  Else
   QRLabel5.caption   := 'ใบลดหนี้แยกตามลูกค้า';

  QRLabel6.caption   := 'รหัสสาขา '+ArRp_20.EDIT_Locat.Text+'  รหัสลูกหนี้'+ArRp_20.Edit2.Text;
  With Query20 DO
  begin
    Close;
    Sql.Clear;
    If ArRp_20.RadioG1.Itemindex = 0 Then
    Sql.Add('SELECT LOCAT,CUSCODE,COUNT(INVNO) AS NUM,SUM(NETTOTAL-RTNAMT) AS NETTOT,'+
            'SUM(SMPAY+SMCHQ) AS PAYMNT,SUM(KANG) AS KANG  FROM ARINVOI '+
            'WHERE (FLAG=''2'' OR FLAG=''X'' OR FLAG=''D'') AND  LOCAT LIKE :EDIT1 AND CUSCODE LIKE :EDIT2 GROUP BY LOCAT,CUSCODE');

    If ArRp_20.RadioG1.Itemindex = 1 Then
    Sql.Add('SELECT LOCAT,CUSCODE,COUNT(INVNO) AS NUM,SUM(NETTOTAL) AS NETTOT,'+
            'SUM(SMPAY+SMCHQ) AS PAYMNT,SUM(KANG) AS KANG  FROM ARINVOI '+
            'WHERE FLAG=''7'' AND  LOCAT LIKE :EDIT1 AND CUSCODE LIKE :EDIT2 GROUP BY LOCAT,CUSCODE');


    Params[0].Asstring   := ArRp_20.Edit_Locat.Text+'%' ;
    Params[1].AsSTRING   := ArRp_20.Edit2.Text+'%';
    OPEN;
  end;
  QArmast.Open;
end;

procedure TQArRp_21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TQArRp_21.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.caption   := Qarmast.Fieldbyname('Name1').asstring+' '+Qarmast.Fieldbyname('Name2').asstring;
end;

end.
