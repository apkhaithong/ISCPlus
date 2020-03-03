unit HlpAr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, RzSpnEdt,
  RzDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  THelp_AR = class(TForm)
    QHlp: TFDQuery;
    DataSource1: TDataSource;
    DBGrid_Loc: TRzDBGrid;
    DBGrid_off: TRzDBGrid;
    DBGrid_Typ: TRzDBGrid;
    DBGrid_Bk: TRzDBGrid;
    DBGrid_Pb: TRzDBGrid;
    DBGrid_Cus: TRzDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TRzRapidFireButton;
    Bevel1: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid_CusDblClick(Sender: TObject);
    procedure DBGrid_CusKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Help_AR: THelp_AR;

implementation
{$R *.DFM}

procedure THelp_AR.BitBtn1Click(Sender: TObject);
begin
  With QHlp do
  begin
    Close;
    Sql.Clear;
    if Dbgrid_Loc.Visible = true then
       Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD LIKE :XLOCATCOD ');
    if Dbgrid_Cus.Visible = True then
       Sql.Add('SELECT CUSCOD,NAME1,NAME2 FROM ARMAST WHERE CUSCOD LIKE :EDIT1 ');
    if Dbgrid_Off.Visible = True then
       Sql.Add('SELECT * FROM  OFFICER WHERE (OFFICCOD LIKE :EDIT1) AND '+
               '(DEPART = ''1'') ');
    if Dbgrid_Pb.Visible = True then
       Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO LIKE :EDIT1 AND PAYCONT = ''2'' ');
    if Dbgrid_Bk.Visible = True then
       Sql.Add('SELECT * FROM BKMAST WHERE BKCODE LIKE :EDIT1 ');
    if Dbgrid_Typ.Visible = True then
       Sql.Add('SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1 ');

   Params[0].Asstring := Edit1.Text+'%' ;
   Open ;
  end;

end;

procedure THelp_AR.FormCreate(Sender: TObject);
var   N : word   ;
begin
 for N:=0 TO ComponentCount - 1 do
 begin
  if Components[N] is TDBgrid then
     TDBgrid(Components[N]).Visible := False;
 end;

end;

procedure THelp_AR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := Cafree;
end;

procedure THelp_AR.DBGrid_CusDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure THelp_AR.DBGrid_CusKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       BitBtn2.Click;
   End;
end;

end.
