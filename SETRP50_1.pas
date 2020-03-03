unit SETRP50_1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, DB, printers ,
  ComCtrls, Mask, Grids, DBGrids, ImgList, ToolWin, FR_Class;

type
  TFmSetRp50 = class(TForm)
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
    frReport1: TfrReport;
    procedure SpeedButton2Click(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp50: TFmSetRp50;

implementation
uses SrchdlgSet,USoftFirm,uFindData;

{$R *.DFM}

procedure TFmSetRp50.SpeedButton2Click(Sender: TObject);
begin
  Application.Createform(TfFindData,fFindData);
  If fFindData.ShowModalAP=Mrok Then
  Edit2.Text := fFindData.Keyno;
end;

procedure TFmSetRp50.PrevBtnClick(Sender: TObject);
begin
        frReport1.LoadFromFile(sfmain.frpath+'\REPORT\rp_SetApMst.frf');
        frREport1.ShowReport;
end;

procedure TFmSetRp50.PrnBtnClick(Sender: TObject);
begin
        frReport1.LoadFromFile(sfmain.frpath+'\REPORT\rp_SetApMst.frf');
        frREport1.PrepareReport;
        frReport1.PrintPreparedReportDlg;
end;

procedure TFmSetRp50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TFmSetRp50.CloseBtnClick(Sender: TObject);
begin
 close;
end;

procedure TFmSetRp50.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        If UpperCase(ParName)='PAPCODE' Then
        ParValue:= Edit2.Text+'%';
end;

end.
