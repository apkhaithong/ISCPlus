unit SetCond1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, db, ImgList, ToolWin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSetCmpForm1 = class(TForm)
    SoCondpay: TDataSource;
    Qcondpay: TFDQuery;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    SavBtn: TToolButton;
    CloseBtn: TToolButton;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SavBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetCmpForm1: TSetCmpForm1;

implementation
uses DmSec,USoftFirm;
{$R *.DFM}

procedure TSetCmpForm1.FormShow(Sender: TObject);
begin
  With QCondpay do
  Begin
    Sql.Clear;
    Close;
    Sql.Add('SELECT * FROM CONDPAY');
    open;
  end;
    If QCondpay.Recordcount=0 Then
       Qcondpay.Insert;
end;

procedure TSetCmpForm1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QCondpay.Close;
  Action := Cafree;
end;

procedure TSetCmpForm1.SavBtnClick(Sender: TObject);
begin
   If QCondpay.State IN [dsInsert,Dsedit] then
    QCondpay.Post;
    QCondpay.Close;
    close;
end;

procedure TSetCmpForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
    Begin
     Perform(Wm_nextDlgctl,0,0);
     Key := #0;
    End;
end;

procedure TSetCmpForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
      Vk_Down    : Perform(Wm_nextDlgctl,0,0);
      Vk_Up      : Perform(Wm_nextDlgctl,1,0);
  end;
end;

procedure TSetCmpForm1.CloseBtnClick(Sender: TObject);
begin
 Close;
end;

end.
