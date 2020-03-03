unit PrnFCrdPost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, n2wMoney,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TPrnCrdPost = class(TForm)
    Query1: TFDQuery;
    Query2: TFDQuery;
    Query2TAXNO: TStringField;
    Query2TAXDATE: TDateField;
    Query2TAXREFNO: TStringField;
    Query2JOBNO: TStringField;
    Query2DESC1: TStringField;
    Query2CUSCOD: TStringField;
    Query2VATRT: TFloatField;
    Query2AMOUNT: TFloatField;
    Query2REDU: TFloatField;
    Query2BALANCE: TFloatField;
    Query2VAT: TFloatField;
    Query2TOTTAX: TFloatField;
    Query2FLAG: TStringField;
    Query2CANCEL: TStringField;
    Query2SYSTM: TStringField;
    Query2USERID: TStringField;
    Query2TIME1: TDateTimeField;
    Query2CANCELID: TStringField;
    Query2CANDAT: TDateTimeField;
    Query2POSTGLDT: TDateTimeField;
    Query2PAYTYP: TStringField;
    Query2LOCAT: TStringField;
    Query2FRSV: TStringField;
    Query2MEMO1: TMemoField;
    Query2CLAIM: TStringField;
    n2wMoney1: Tn2wMoney;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrnCrdPost: TPrnCrdPost;

implementation
uses Crdpost;

{$R *.dfm}

procedure TPrnCrdPost.FormCreate(Sender: TObject);
begin
   with Query2 do
   Begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM TAXSAL WHERE TAXNO=:XTx');
      params[0].AsString := FcrdPost.QTaxbuy2TAXNO.AsString;
      open;
   End;
   IF Query2CANCELID.AsString <> '' then
      QRLabel12.Enabled := True;
   with Query1 do
   Begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM ARMAST WHERE CUSCOD = :Xcus');
      params[0].AsString := Query2CUSCOD.AsString;
      open;
   End;
   QRLabel7.Caption := 'ชื่อลูกค้า / รหัส   '+Query1.fieldbyname('SNAM').AsString+
                       Query1.fieldbyname('NAME1').AsString+' '+Query1.fieldbyname('NAME2').AsString+
                       '  ['+Query1.fieldbyname('CUSCOD').AsString+']';
   QRLabel8.Caption  := 'ที่อยู่  '+Query1.fieldbyname('ADDR1').AsString+
                          ' '+Query1.fieldbyname('ADDR2').AsString+
                          '  ต.'+Query1.fieldbyname('TUMB').AsString+'  อ.'+Query1.fieldbyname('AUMP').AsString+
                          '  จ.'+Query1.fieldbyname('PROV').AsString;

  END;

procedure TPrnCrdPost.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var s : Real;
begin
    with Query1 do
    Begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:XLOC');
      Params[0].AsString := FcrdPost.QTaxbuy2LOCAT.AsString;
      Open;
    End;
     s := Query2TOTTAX.AsFloat;
     n2wmoney1.Value := s;
     QRLabel23.Caption := n2wmoney1.Text;
     QRLabel1.Caption  := Query1.fieldbyname('LOCATNAM').AsString;
     QRLabel2.Caption  := 'ที่อยู่  '+Query1.fieldbyname('ADDR1').AsString+
                          ' '+Query1.fieldbyname('ADDR2').AsString+
                          '  ต.'+Query1.fieldbyname('TUMB').AsString+'  อ.'+Query1.fieldbyname('AUMP').AsString+
                          '  จ.'+Query1.fieldbyname('PROV').AsString;

     QRLabel3.Caption  := 'โทร.     '+Query1.fieldbyname('TELP').AsString+'  Fax.'+Query1.fieldbyname('FAX').AsString;

end;

end.
