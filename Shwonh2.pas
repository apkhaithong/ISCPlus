unit Shwonh2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Spin, DB, ExtCtrls, RzDBGrid;

type
  TFInventor = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TRzDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInventor: TFInventor;

implementation
uses Dmset1;
{$R *.DFM}

procedure TFInventor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_set1.Query1.Close;
  Action := Cafree;
end;

procedure TFInventor.Button1Click(Sender: TObject);
Var S1,S2:String;
begin
  With Dm_set1.Query1 do
  begin
    S1:= 'A.ONHN_'+inttostr(SpinEdit1.value);
    S2:= 'A.ALLO_'+Inttostr(SpinEdit1.value);

    close;
    Sql.Clear;
    Sql.add('SELECT A.LOCAT,A.PARTNO,A.YEAR1,'+S1+' AS ONH,'+S2+' AS ALO, '+
    'B.SHELF,B.PRICE1 FROM INVANLS A,INVENTOR B WHERE A.PARTNO=B.PARTNO AND '+
    'A.LOCAT =B.LOCAT AND '+
    ' A.PARTNO=:EDIT1 AND A.YEAR1=:EDIT2 AND A.LOCAT=:Edit3');

    Params[0].Asstring := Dm_set1.Qinventor.Fieldbyname('Partno').Asstring;
    Params[1].Asstring := Dm_set1.Xyear;
    Params[2].Asstring := Dm_set1.Qinventor.Fieldbyname('Locat').Asstring;
    OPEN;
  end;
  //Dbgrid1.Visible := True;
end;

procedure TFInventor.FormShow(Sender: TObject);
Var Year,Month,Day :Word;
begin
  DecodeDate(Now,Year,Month,Day);
  SpinEdit1.value := Month;
end;

end.
