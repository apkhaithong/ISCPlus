unit uCheckAut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, Grids, DBGrids, AdvGlowButton, ComCtrls, RzDBGrid,
  ExtCtrls, RzBckgnd, BusinessSkinForm, AdvPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFChkmenu1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    RzSeparator1: TRzSeparator;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    DBGrid2: TRzDBGrid;
    DBGrid1: TRzDBGrid;
    ProgressBar1: TProgressBar;
    EnqBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    QPasswd: TFDQuery;
    DataSource1: TDataSource;
    QMenumst: TFDQuery;
    Somenumst: TDataSource;
    QMenutrn: TFDQuery;
    Somenutrn: TDataSource;
    Query1: TFDQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChkmenu1: TFChkmenu1;

implementation

uses
  USoftFirm, DmSec;
{$R *.DFM}

procedure TFChkmenu1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FChkmenu1 := Nil;
end;

procedure TFChkmenu1.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFChkmenu1.EnqBtnClick(Sender: TObject);
var
  status: string;
  P: longint;
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('DELETE FROM MENUTRNDMS WHERE PARENT IS NULL OR PARENT = '''' ');
    Execsql;
  end;

  ProgressBar1.Visible := True;
  Label1.Visible := True;
  DBGrid1.Visible := True;
  DBGrid2.Visible := True;
  Label1.Caption := 'Processing...';
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('DELETE FROM MENUTRNDMS WHERE MENUCODE NOT IN(SELECT MENUCODE FROM MENUMSTDMS)');
    Execsql;
  end;
  with Qpasswd do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SECRET WHERE STATUS <> ''N'' ');
    Open;
  end;

  DBGrid2.Update;

  ProgressBar1.Max := QPasswd.RecordCount;

  with QMenumst do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM MENUMSTDMS ORDER BY SYSTEMCOD');
    Open;
  end;
  Qpasswd.First;
  while not Qpasswd.Eof do
  begin
    status := 'T';
    Qmenumst.First;
    while not QMenumst.Eof do
    begin
      with QMenutrn do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM MENUTRNDMS WHERE USERID=:EDIT1 AND SYSTEMCOD=:EDIT2 ' +
          'AND MENUCODE=:EDIT3 ');
        Params[0].Asstring := QPasswd.Fieldbyname('USERID').asstring;
        Params[1].Asstring := QMenumst.Fieldbyname('SYSTEMCOD').asstring;
        Params[2].Asstring := QMenumst.Fieldbyname('MENUCODE').asstring;
        Open;
      end;
      if QMenutrn.Bof and QMenutrn.Eof then
      begin
        QMenutrn.Insert;
        QMenutrn.Fieldbyname('USERID').asstring := QPasswd.Fieldbyname('USERID').asstring;
        QMenutrn.Fieldbyname('SYSTEMCOD').asstring := QMenumst.Fieldbyname('SYSTEMCOD').asstring;
        QMenutrn.Fieldbyname('MENUCODE').asstring := QMenumst.Fieldbyname('MENUCODE').asstring;
        QMenutrn.Fieldbyname('MENUDESC').asstring := QMenumst.Fieldbyname('MENUDESC').asstring;
        QMenutrn.Fieldbyname('PARENT').asstring := QMenumst.Fieldbyname('PARENT').asstring;
        QMenutrn.Fieldbyname('M_ACCESS').asstring := status;
        QMenutrn.Fieldbyname('M_EDIT').asstring := status;
        QMenutrn.Fieldbyname('M_DELETE').asstring := status;
        QMenutrn.Fieldbyname('M_INSERT').asstring := status;
        QMenutrn.Post;
      end
      else
      begin
        QMenutrn.Edit;
        QMenutrn.Fieldbyname('MENUDESC').asstring := QMenumst.Fieldbyname('MENUDESC').asstring;
        QMenutrn.Post;
      end;
      Qmenumst.Next;
      DBGrid1.Update;
    end;
    inc(P);
    ProgressBar1.Position := P;
    Application.ProcessMessages;
    Qpasswd.Next;
    DBGrid2.Update;
  end;
  Qmenutrn.Close;
  QMenumst.Close;
  Qpasswd.Close;
  ProgressBar1.Position := 0;
  DBGrid1.Visible := False;
  DBGrid2.Visible := False;
  Label1.Caption := 'Successfully...';
  EnqBtn.Enabled := True;
  CloseBtn.Visible := True;
  DM_SEC.ChkRecent(SFMain.Xuser_ID, 'SEC03', 'INSERT', 'UpdateMenu');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFChkmenu1.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSET', 'HDSET01_9');
end;

procedure TFChkmenu1.RzBitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.

