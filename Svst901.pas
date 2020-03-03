unit Svst901;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Qrctrls, QuickRpt, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSvSt_901 = class(TForm)
    Tarmast: TFDQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvSt_901: TSvSt_901;

implementation

{$R *.DFM}

procedure TSvSt_901.FormCreate(Sender: TObject);
begin

  QRLabel3.Caption   := 'รายงานกลุ่มงานหลัก';
  QRLabel3.Left      := 1;
  QRLabel3.Width     := 722;
  QRLabel3.Alignment := taCenter;

  With Tarmast Do
  begin
  close;
  sql.Clear;
  Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPMST  ');
  open;
  end;

end;

end.
