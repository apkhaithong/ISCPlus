unit SetRp70;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers ,
  ComCtrls, Mask, Grids, DBGrids, ImgList, ToolWin;

type
  TFmSetRp70 = class(TForm)
    Label6: TLabel;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Label2: TLabel;
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
  FmSetRp70: TFmSetRp70;

implementation
uses Srchdlgset,SetRp71,uFindData;

{$R *.DFM}
procedure TFmSetRp70.PickReport;
begin
    Application.CreateForm(TFmSetRp71,FmSetRp71);
    aReport := FmSetRp71.QRep;
end;

procedure TFmSetRp70.SQLCreate;
begin
end;

procedure TFmSetRp70.SpeedButton2Click(Sender: TObject);
begin
  Application.Createform(TfFindData,fFindData);
  If fFindData.ShowModalPAYTYP=Mrok Then
  Edit2.Text := fFindData.Keyno;
end;

procedure TFmSetRp70.PrevBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Preview;
end;

procedure TFmSetRp70.PrnBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Print;
end;

procedure TFmSetRp70.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
end;

procedure TFmSetRp70.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.
