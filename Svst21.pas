unit Svst21;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Qrctrls, QuickRpt, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSvSt_21 = class(TForm)
    Tarmast: TFDQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvSt_21: TSvSt_21;

implementation

{$R *.DFM}

procedure TSvSt_21.FormCreate(Sender: TObject);
begin

  QRLabel3.Caption   := '��§ҹ��ʴ�������ͧ��Чҹ�͡';
  QRLabel3.Left      := 1;
  QRLabel3.Width     := 722;
  QRLabel3.Alignment := taCenter;

  With Tarmast Do
  begin
  close;
  sql.Clear;
  Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SVSTOCK ');
  open;
  end;

end;

end.
