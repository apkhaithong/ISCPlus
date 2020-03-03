unit SetStat_rp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Qrctrls, QuickRpt, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSetStat_r = class(TForm)
    Tarmast: TFDQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetStat_r: TSetStat_r;

implementation

{$R *.DFM}

procedure TSetStat_r.FormCreate(Sender: TObject);
begin

  QRLabel3.Caption   := 'รายงานรหัสสถานะงานระหว่างซ่อม';
  QRLabel3.Left      := 1;
  QRLabel3.Width     := 722;
  QRLabel3.Alignment := taCenter;

  With Tarmast Do
  begin
  close;
  sql.Clear;
  Close;
  Sql.Clear;
  Sql.Add('SELECT * FROM STATMST ');
  open;
  end;

end;

end.
