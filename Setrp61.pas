unit Setrp61;

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
  TSetrp_61 = class(TForm)
    Tarmast: TFDQuery;
    //procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Setrp_61: TSetrp_61;

implementation
uses SetRp50;

{$R *.DFM}

{procedure TSetrp_61.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;}

procedure TSetrp_61.FormCreate(Sender: TObject);
//Var Ed1,Ed2 :  String;
begin
   //condpay.open;
   //QRLabel4.caption   := CondpayCOMP_NM.Asstring;
   //QRLabel4.Left      := 1;
   //QRLabel4.Width     := 650;
   //QRLabel4.Alignment := taCenter;
   //
   QRLabel5.Left      := 1;
   QRLabel5.Width     := 722;
   QRLabel5.Alignment := taCenter;

   With Tarmast Do
   begin
   close;
   sql.Clear;
   Close;
   Sql.Clear;
   Sql.Add(' select C.MDLCOD,C.KILOMT,C.DESCRP'+
           ' ,M.DESC from CHECKLIS C,MODELMST  M '+
           ' where C.MDLCOD = M.MDLCOD');
   open;
   end;

 {Create SQL DataBase}
  {With QTabserv Do
  begin
   Close;
   Sql.clear;
   If Setrp_50.Edit2.text='' Then
   Begin
     Sql.Add('SELECT * FROM TABSERV WHERE MDLCOD LIKE :EDIT1 ORDER BY MDLCOD,SVCODE');
     params[0].asstring  := Setrp_50.Edit1.Text+'%';
   End
   Else
   Begin
     Sql.Add('SELECT * FROM TABSERV WHERE MDLCOD LIKE :EDIT1 AND SVCODE >=:EDIT2 AND SVCODE<=:EDIT3 ORDER BY MDLCOD,SVCODE');
     params[0].asstring  := Setrp_50.Edit1.Text+'%';
     params[1].asstring  := Setrp_50.Edit2.text;
     params[2].asstring  := Setrp_50.Edit3.Text;
   End;
   OPEN;
  end;}
end;




end.
