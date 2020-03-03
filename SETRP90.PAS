unit SetRp90;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers ,
  ComCtrls, Mask, Grids, DBGrids, ImgList, ToolWin;

type
  TFmSetRp90 = class(TForm)
    Label6: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    Prnbtn: TToolButton;
    ToolButton1: TToolButton;
    Prevbtn: TToolButton;
    ToolButton4: TToolButton;
    CloseBtn: TToolButton;
    ToolButton2: TToolButton;
    ImageList1: TImageList;
    procedure SpeedButton2Click(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
  private
    aReport : TQuickRep;
    Procedure PickReport;
    Procedure SQLCreate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp90: TFmSetRp90;

implementation
uses SetRpHlp,SetRp91, Dmsec;

{$R *.DFM}
procedure TFmSetRp90.PickReport;
begin
    Application.CreateForm(TFmSetRp91,FmSetRp91);
    aReport := FmSetRp91.QRep;
end;

procedure TFmSetRp90.SQLCreate;
begin
end;

procedure TFmSetRp90.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFmHpRp,FmHpRp);
  FmHpRp.DBGrid1_Rt.Visible := true;
  with FmHpRp.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.add('SELECT * FROM RTCHQ WHERE RTCODE =:EDIT1');
    Params[0].Asstring := '' ;
    Open;
  end;
  if FmHpRp.ShowModal = Mrok then
  begin
    with Dm_sec.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.add('SELECT * FROM RTCHQ WHERE RTCODE =:EDIT1');
      Params[0].Asstring := FmHpRp.Query1.FieldByName('RTCODE').Asstring;
      Open;
    end;
    if Dm_sec.Query1.bof and Dm_sec.Query1.Eof then
       SFMain.RaiseException('ไม่มีรหัสการคืนเช็คนี้ในแฟ้มข้อมูล');
    Edit2.Text := Dm_sec.Query1.FieldByName('RTCODE').Asstring;
  end;
end;

procedure TFmSetRp90.PrevBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Preview;
end;

procedure TFmSetRp90.PrnBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Print;
end;

procedure TFmSetRp90.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TFmSetRp90.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.
