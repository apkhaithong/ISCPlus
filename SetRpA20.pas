unit SetRpA20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers ,
  ComCtrls, Mask, Grids, DBGrids, ImgList, ToolWin;

type
  TFmSetRpA20 = class(TForm)
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
  FmSetRpA20: TFmSetRpA20;

implementation
uses SrchdlgSet,SetRpA21,uFindData;

{$R *.DFM}
procedure TFmSetRpA20.PickReport;
begin
    Application.CreateForm(TFmSetRpA21,FmSetRpA21);
    aReport := FmSetRpA21.QRep;
end;

procedure TFmSetRpA20.SQLCreate;
begin
end;

procedure TFmSetRpA20.SpeedButton2Click(Sender: TObject);
begin
  Application.Createform(TfFindData,fFindData);
  If fFindData.ShowModalsetOfficer=Mrok Then
  Edit2.Text := fFindData.Keyno;
end;

procedure TFmSetRpA20.PrevBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Preview;
end;

procedure TFmSetRpA20.PrnBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Print;
end;

procedure TFmSetRpA20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TFmSetRpA20.CloseBtnClick(Sender: TObject);
begin
 close;
end;

end.
