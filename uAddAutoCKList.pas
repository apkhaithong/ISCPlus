unit uAddAutoCKList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DB, StdCtrls, Buttons, DBGrids, ExtCtrls, RzSpnEdt,
  RzPanel, RzDBGrid, ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrAddAutoCKList = class(TForm)
    QHlpOrd: TFDQuery;
    SoHlpOrd: TDataSource;
    Grid_Order: TRzDBGrid;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Bevel1: TBevel;
    SpGrp: TRzRapidFireButton;
    RzRapidFireButton1: TRzRapidFireButton;
    Edit2: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grid_OrderDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpGrpClick(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure Getdata;
  public
    { Public declarations }
  end;

var
  frAddAutoCKList: TfrAddAutoCKList;

implementation

uses DmSv,usrCdlg1; //Srchdlg1,uSrchdlg1;

{$R *.DFM}

procedure TfrAddAutoCKList.FormCreate(Sender: TObject);
var   N : word   ;
begin
 for N:=0 TO ComponentCount - 1 do
 begin
  if Components[N] is TDBgrid then
     TDBgrid(Components[N]).Visible := False;
 end;
end;

procedure TfrAddAutoCKList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrAddAutoCKList.Grid_OrderDblClick(Sender: TObject);
begin
  QHlpOrd.Edit;
  If QHlpOrd.Fieldbyname('FLAG').Asstring = '' Then
    QHlpOrd.Fieldbyname('FLAG').Asstring :='Y'
  Else
    QHlpOrd.Fieldbyname('FLAG').Asstring :='';
  QHlpOrd.Post;
end;

procedure TfrAddAutoCKList.getdata;
begin
  If Grid_Order.Visible Then
  Begin
    with frAddAutoCKList.QHlpord do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CHECKLIS WHERE GCODE=:0 AND SVCODE LIKE :1');
      Params[0].Asstring := Edit1.Text;
      Params[1].Asstring := Edit2.Text+'%';
      Open ;
    end;
  End;

end;

procedure TfrAddAutoCKList.FormShow(Sender: TObject);
begin
  Getdata;
end;


procedure TfrAddAutoCKList.SpGrpClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalGRPCKLIST=Mrok Then
     edit1.Text := fSrcDlg1.KeyNo;
End;

procedure TfrAddAutoCKList.RzRapidFireButton1Click(Sender: TObject);
begin
  getdata;
end;

end.
