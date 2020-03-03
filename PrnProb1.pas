unit PrnProb1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmPrnProb1 = class(TForm)
    Query1: TFDQuery;
    TCondpay: TFDTable;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPrnProb1: TFmPrnProb1;

implementation
uses Svinnewp;

{$R *.DFM}
procedure TFmPrnProb1.FormCreate(Sender: TObject);
begin
   With Query1 do
   Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT A.STRNO,A.JOBNO,A.PBDESC,A.STAR,PRNDATE,B.RSDESC, '+
              'C.REGNO FROM NEWPROB A,RE_SULT B,SVMAST C '+
              'WHERE (A.JOBNO =:XJOB) AND (A.STRNO = C.STRNO) '+
              'AND (A.RSCODE = B.RSCODE) ORDER BY A.NO ');
      Params[0].AsString := FSvnewProb.DBEdit2.Text;
      Open;
   End;
   TCondpay.Open;
end;

procedure TFmPrnProb1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Query1.Close;
   TCondpay.Close;
   Action := Cafree;
end;





end.
