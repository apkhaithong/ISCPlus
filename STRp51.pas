unit STRp51;

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
  TFmSTRp51 = class(TForm)
    Title: TQRBand;
    Detail: TQRBand;
    QRep: TQuickRep;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    Query50: TFDQuery;
    QRBand5: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRDBText13: TQRDBText;
    PageFooterBand1: TQRBand;
    PageHeader: TQRBand;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRp51: TFmSTRp51;

implementation
uses STRp50;

{$R *.DFM}
procedure TFmSTRp51.FormCreate(Sender: TObject);
Var ed1,Ed2,Ed3,Ed4,HD1,HD2,op1: String;
    L1:Integer;
begin

   Case FmSTRp50.RadioGroup1.ItemIndex Of
    0: OP1:=' AND RT.FLAG<>''R'' ';
    1: OP1:=' AND RT.FLAG=''R'' ';
    2: OP1:=' ';
   End;

    With Query50 Do
    begin
      Close;
      SQL.Clear;
      If FmSTRp50.RadioGp2.ItemIndex = 0 Then
      SQL.ADD('SELECT Rt.Recvno,Rt.RecvDate,Rt.Partno,(Rt.QtyRecv*Rt.Ucost)-Rt.NetTot as Redu1,Rt.Pono, '+
              'Rt.QtyRecv,Rt.Ucost,Rt.NetTot,Ri.invno, '+
              'Ri.invDate,It.DESC1 '+
              'FROM Rc_invoi Ri,Rc_Trans Rt,Inventor It '+
              'WHERE (Ri.Recvno=Rt.Recvno) and (Ri.recvLoc like :0)  '+OP1+
              'and (Ri.Apcode like :1) and (It.Partno=Rt.Partno) and '+
              '(It.PartNo  Between :2 and :3) and '+
              '(Rt.RecvDate Between :4 and :5) and '+
              'It.Group1 like :6 and (Rt.RecvLoc = It.locat) AND (IT.TYPE LIKE :7) Order By Rt.Recvno');
      If FmSTRp50.RadioGp2.ItemIndex = 1 Then
      SQL.ADD('SELECT Rt.Recvno,Rt.RecvDate,Rt.Partno,(Rt.QtyRecv*Rt.Ucost)-Rt.NetTot as Redu1,Rt.Pono, '+
              'Rt.QtyRecv,Rt.Ucost,Rt.NetTot,Ri.invno, '+
              'Ri.invDate,It.DESC1 '+
              'FROM Rc_invoi Ri,Rc_Trans Rt,Inventor It '+
              'WHERE (Ri.Recvno=Rt.Recvno) and (Ri.recvLoc like :0)  '+OP1+
              'and (Ri.Apcode like :1) and (It.Partno = Rt.Partno) and '+
              '(It.PartNo  Between :2 and :3) and '+
              '(Rt.RecvDate between :4 and :5) and '+
              'It.Group1 like :6  and It.Type like :7  and (Rt.RecvLoc=It.locat) Order By Rt.Partno,Rt.Recvno');

      If FmSTRp50.Edit2.Text <> '' Then
         Ed2 := FmSTRp50.Edit2.text +'%'
      else Ed2 := '%';
      If FmSTRp50.Edit1.Text <> '' Then
         Ed1 := FmSTRp50.Edit1.text +'%'
      else Ed1 := '%';

      If FmSTRp50.Edit3.Text = '' Then
         Ed3 := ''
      else Ed3 := FmSTRp50.Edit3.Text;
      If FmSTRp50.Edit4.Text = '' Then
         Ed4 := 'ZZZZZZZZZZZZ'
      else Ed4 := FmSTRp50.Edit4.text;

      Params[0].AsString := Ed2;
      Params[1].AsString := Ed1;
      Params[2].AsString := Ed3;
      Params[3].AsString := Ed4;
      Params[4].AsDate   := FmSTRp50.Fromdate.Date;
      Params[5].AsDate   := FmSTRp50.Todate.Date;
      Params[6].AsString := FmSTRp50.Edit7.text+'%';
      Params[7].AsString := FmSTRp50.Edit5.text+'%';
      Open;
    end;
    if Query50.bof and Query50.Eof then
       SFMain.RaiseException('ไม่มีข้อมูล');
end;

procedure TFmSTRp51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;
      
end.
