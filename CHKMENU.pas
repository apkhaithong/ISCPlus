unit Chkmenu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, Grids, DBGrids, Gauges, ComCtrls,
  ImgList, ToolWin, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFChkmenu = class(TForm)
    QPasswd: TFDQuery;
    DataSource1: TDataSource;
    QMenumst: TFDQuery;
    Somenumst: TDataSource;
    QMenutrn: TFDQuery;
    Somenutrn: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Query1: TFDQuery;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    EnqBtn: TToolButton;
    CloseBtn: TToolButton;
    ToolButton1: TToolButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChkmenu: TFChkmenu;

implementation
{$R *.DFM}


procedure TFChkmenu.BitBtn1Click(Sender: TObject);
Var status:string;
    P :longint;
begin
  Label1.Visible := False;
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('DELETE FROM MENUTRN WHERE MENUCODE NOT IN(SELECT MENUCODE FROM MENUMST)');
    Execsql;
  end;

  With Qpasswd Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SECRET ');
    Open;
  end;
  DBGrid2.Update;
  ProgressBar1.Max := Qpasswd.RecordCount;

  with QMenumst do
  begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM MENUMST ORDER BY SYSTEMCOD');
      Open;
  end;
  Qpasswd.First;
  While Not Qpasswd.Eof Do
  begin
      Status := 'T';
      Qmenumst.First;
      While Not QMenumst.Eof Do
      Begin
        With QMenutrn Do
        Begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM MENUTRN WHERE USERID=:EDIT1 AND SYSTEMCOD=:EDIT2 '+
          'AND MENUCODE=:EDIT3');
          Params[0].Asstring:= QPasswd.Fieldbyname('USERID').asstring;
          Params[1].Asstring:= QMenumst.Fieldbyname('SYSTEMCOD').asstring;
          Params[2].Asstring:= QMenumst.Fieldbyname('MENUCODE').asstring;
          Open;
        end;
        If QMenutrn.Bof and QMenutrn.Eof Then
        Begin
          QMenutrn.Insert;
          QMenutrn.Fieldbyname('USERID').asstring    :=QPasswd.Fieldbyname('USERID').asstring;
          QMenutrn.Fieldbyname('SYSTEMCOD').asstring := QMenumst.Fieldbyname('SYSTEMCOD').asstring;
          QMenutrn.Fieldbyname('MENUCODE').asstring  := QMenumst.Fieldbyname('MENUCODE').asstring;
          QMenutrn.Fieldbyname('MENUDESC').asstring  := QMenumst.Fieldbyname('MENUDESC').asstring;
          QMenutrn.Fieldbyname('PARENT').asstring    := QMenumst.Fieldbyname('PARENT').asstring;
          QMenutrn.Fieldbyname('M_ACCESS').asstring  := status;
          QMenutrn.Fieldbyname('M_EDIT').asstring    := status;
          QMenutrn.Fieldbyname('M_DELETE').asstring  := status;
          QMenutrn.Fieldbyname('M_INSERT').asstring  := status;
          QMenutrn.Post;
        end
        Else
        Begin
          QMenutrn.Edit;
          QMenutrn.Fieldbyname('MENUDESC').asstring := QMenumst.Fieldbyname('MENUDESC').asstring;
          QMenutrn.Post;
        end;
        Qmenumst.Next;
        DBGrid1.Update;
      end;
    P:=P+1;
    ProgressBar1.Position :=P;
    Qpasswd.Next;
    DBGrid2.Update;
  end;
  Qmenutrn.Close;
  QMenumst.Close;
  Qpasswd.Close;
  ProgressBar1.Position :=0;
  Label1.Visible := True;
end;

procedure TFChkmenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFChkmenu.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.
