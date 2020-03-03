unit Passinp2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, Mask, DBCtrls, FldEdit, FldCombo, ExtCtrls, Grids,
  DBGrids, Fldbedit, Wwdbigrd, Wwdbgrid, ToolWin, ComCtrls, ImgList, wwcheckbox,
  RzDbkbd, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFSetauth = class(TForm)
    QMenutrn: TFDQuery;
    Somenutrn: TDataSource;
    QMenumst: TFDQuery;
    Somenumst: TDataSource;
    QPasswd: TFDQuery;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ToolBar1: TToolBar;
    Savbtn: TToolButton;
    CancBtn: TToolButton;
    ToolButton3: TToolButton;
    CloseBtn: TToolButton;
    Label1: TLabel;
    qrHdMenu: TFDQuery;
    dsHdMenu: TDataSource;
    qrLastMenu: TFDQuery;
    dsLastMenu: TDataSource;
    RzDBkbd1: TRzDBkbd;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure qrHdMenuAfterCancel(DataSet: TDataSet);
    procedure dsHdMenuStateChange(Sender: TObject);
    procedure qrHdMenuAfterPost(DataSet: TDataSet);
    procedure QMenumstAfterPost(DataSet: TDataSet);
    procedure QMenutrnAfterPost(DataSet: TDataSet);
    procedure qrLastMenuAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetauth: TFSetauth;

implementation

uses
  Dmsec, Passinp1;
{$R *.DFM}

procedure TFSetauth.FormCreate(Sender: TObject);
begin
  with Qpasswd do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SECRET WHERE USERID=:EDIT ');
    Params[0].Asstring := Fpassinp1.QPasswd.Fieldbyname('USERID').asstring;
    Open;
  end;
  with qrHdMenu do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM MENUTRN WHERE USERID=:EDIT1 AND SYSTEMCOD=MENUCODE');
    Params[0].Asstring := Fpassinp1.QPasswd.Fieldbyname('USERID').asstring;
    Open;
  end;
  with qMenumst do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM MENUTRN WHERE SYSTEMCOD=PARENT AND USERID=:EDIT1 AND SYSTEMCOD=:SYSTEMCOD ORDER BY MENUCODE');
    Params[0].Asstring := Fpassinp1.QPasswd.Fieldbyname('USERID').asstring;
    Open;
  end;
  with QMenutrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM MENUTRN WHERE PARENT=:MENUCODE AND USERID=:USERID ORDER BY MENUCODE,PARENT');
    Open;
  end;
  with QrLastMenu do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM MENUTRN WHERE PARENT=:MENUCODE AND USERID=:USERID ORDER BY MENUCODE,PARENT');
    Open;
  end;
end;

procedure TFSetauth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QMenutrn.Close;
  QMenumst.Close;
  qrHdMenu.Close;
  qrLastMenu.Close;
  Action := Cafree;
end;

procedure TFSetauth.SavBtnClick(Sender: TObject);
begin
  qrHdMenu.post;
end;

procedure TFSetauth.CancBtnClick(Sender: TObject);
begin
  qrHdMenu.Cancel;
end;

procedure TFSetauth.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFSetauth.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
{   if (Somenutrn.DataSet.FindField('SYSTEMCOD')<> nil) and
      (Somenutrn.DataSet.FindField('SYSTEMCOD').AsString =
       Somenutrn.DataSet.FindField('MENUCODE').AsString) then
   Begin
      AFont.Style:=[fsBold];
      AFont.Color := clRed;
   End;    }

end;

procedure TFSetauth.qrHdMenuAfterCancel(DataSet: TDataSet);
begin
  qrHdMenu.CancelUpdates;
  qrLastmenu.CancelUpdates;
  qMenumst.CancelUpdates;
  QMenutrn.CancelUpdates;
end;

procedure TFSetauth.dsHdMenuStateChange(Sender: TObject);
begin
  CloseBtn.Enabled := (dsHdMenu.State = Dsbrowse);
  SavBtn.Enabled := (dsHdMenu.State in DsEditmodes);
  CancBtn.Enabled := SavBtn.Enabled;
end;

procedure TFSetauth.qrHdMenuAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QrHdMenu.Active then
      if (QrHdMenu.ApplyUpdates = 0) then
        QrHdMenu.CommitUpdates
      else
        raise Exception.Create(QrHdMenu.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    qrHdMenu.edit;
    raise;
  end;
end;

procedure TFSetauth.QMenumstAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QMenumst.Active then
      if (QMenumst.ApplyUpdates = 0) then
        QMenumst.CommitUpdates
      else
        raise Exception.Create(QMenumst.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    QMenumst.edit;
    raise;
  end;
end;

procedure TFSetauth.QMenutrnAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QMenutrn.Active then
      if (QMenutrn.ApplyUpdates = 0) then
        QMenutrn.CommitUpdates
      else
        raise Exception.Create(QMenutrn.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    QMenutrn.edit;
    raise;
  end;
end;

procedure TFSetauth.qrLastMenuAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QrLastMenu.Active then
      if (QrLastMenu.ApplyUpdates = 0) then
        QrLastMenu.CommitUpdates
      else
        raise Exception.Create(QrLastMenu.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    QrLastMenu.edit;
    raise;
  end;
end;

end.

