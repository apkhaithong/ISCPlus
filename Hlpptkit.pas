unit Hlpptkit;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons,
  ExtCtrls, Db, Grids, DBGrids, DBCtrls, Dbkbd, RzDBGrid, RzButton,
  RzPanel, RzSpnEdt, RzDbkbd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TPtKitDlg = class(TForm)
    Label1: TLabel;
    Qkittrn: TFDQuery;
    DataSource1: TDataSource;
    DBText1: TDBText;
    QInventor: TFDQuery;
    DataSource2: TDataSource;
    Label3: TLabel;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    DBkbd1: TRzDBkbd;
    Edit1: TEdit;
    FbtHelp: TRzRapidFireButton;
    RzDBGrid1: TRzDBGrid;
    RzStatusBar1: TRzStatusBar;
    procedure QkittrnAfterOpen(DataSet: TDataSet);
    procedure QkittrnBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure NxButtonEdit1Exit(Sender: TObject);
    procedure RzDBGrid1DblClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FbtHelpClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Querykittrn;
  public
    { Public declarations }
  end;

var
  PtKitDlg: TPtKitDlg;

implementation

uses
  Dmic01, Srchdlg, USoftFirm, uSrcDlg;
{$R *.DFM}

procedure TPtKitDlg.Querykittrn;
begin
  with Qkittrn do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PTKITTRN WHERE KITCODE=:1');
    Params[0].asstring := Edit1.Text;
    Open;
  end;
end;

procedure TPtKitDlg.QkittrnAfterOpen(DataSet: TDataSet);
begin
  QInventor.Params[1].Asstring := SFMain.Xlocat;
  QInventor.Open;
end;

procedure TPtKitDlg.QkittrnBeforeOpen(DataSet: TDataSet);
begin
  QInventor.Close;
end;

procedure TPtKitDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TPtKitDlg.Edit1ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPtkit = Mrok then
  begin
    Edit1.Text := fSrcDlg.Keyno;
    Querykittrn;
  end;
end;

procedure TPtKitDlg.NxButtonEdit1Exit(Sender: TObject);
begin
  Querykittrn;
end;

procedure TPtKitDlg.RzDBGrid1DblClick(Sender: TObject);
begin
  Qkittrn.Edit;
  if Qkittrn.Fieldbyname('Mark').Asstring = '' then
    Qkittrn.Fieldbyname('Mark').Asstring := 'Y'
  else
    Qkittrn.Fieldbyname('Mark').Asstring := '';
  Qkittrn.Post;
end;

procedure TPtKitDlg.RzBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TPtKitDlg.FbtHelpClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPtkit = Mrok then
  begin
    Edit1.Text := fSrcDlg.Keyno;
    Querykittrn;
  end;
end;

procedure TPtKitDlg.Edit1Exit(Sender: TObject);
begin
  Querykittrn;
end;

end.

