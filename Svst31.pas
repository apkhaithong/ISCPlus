unit Svst31;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Qrctrls, QuickRpt, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSvSt_31 = class(TForm)
    Tarmast: TFDQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvSt_31: TSvSt_31;

implementation

{$R *.DFM}

procedure TSvSt_31.FormCreate(Sender: TObject);
begin

  QRLabel3.Caption   := 'รายงานรหัสประเภทการซ่อมทำ';
  QRLabel3.Left      := 1;
  QRLabel3.Width     := 722;
  QRLabel3.Alignment := taCenter;

  With Tarmast Do
  begin
  close;
  sql.Clear;
  Close;
  Sql.Clear;
  Sql.Add('SELECT * FROM SVTYPE ');
  open;
  end;

end;

end.
