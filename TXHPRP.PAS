unit TXHpRp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, DB;

type
  TFmTXHpRp = class(TForm)
    SoQuery5: TDataSource;
    Accept: TBitBtn;
    BitBtn2: TBitBtn;
    LocatGrid: TDBGrid;
    PartNoGrid: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmTXHpRp: TFmTXHpRp;

implementation
Uses Dmtx;

{$R *.DFM}

procedure TFmTXHpRp.FormCreate(Sender: TObject);
Var N:Word;
begin
  For N:= 0 To ComponentCount-1 Do
  begin
    If (Components[n] Is TDBgrid)  Then
    TDBGrid(Components[n]).Visible := False;
  End;
end;

procedure TFmTXHpRp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=Cafree;
end;

end.
