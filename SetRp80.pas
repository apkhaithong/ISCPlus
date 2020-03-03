unit SetRp80;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers ,
  ComCtrls, Mask, Grids, DBGrids, ImgList, ToolWin;

type
  TFmSetRp80 = class(TForm)
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
    procedure PrevBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    aReport : TQuickRep;
    Procedure PickReport;
    Procedure SQLCreate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp80: TFmSetRp80;

implementation
uses Srchdlgset,SetRp81,uFindData;

{$R *.DFM}
procedure TFmSetRp80.PickReport;
begin
    Application.CreateForm(TFmSetRp81,FmSetRp81);
    aReport := FmSetRp81.QRep;
end;

procedure TFmSetRp80.SQLCreate;
begin
end;

procedure TFmSetRp80.PrevBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Preview;
   aReport.Free;
end;

procedure TFmSetRp80.PrnBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Print;
   aReport.Free;
end;

procedure TFmSetRp80.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TFmSetRp80.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSetRp80.SpeedButton2Click(Sender: TObject);
begin
        Application.CreateForm(tffinddata, ffinddata);
        if ffinddata.ShowModalBK=MrOK Then
        edit2.Text := ffinddata.Keyno;
end;

end.
