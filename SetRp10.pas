unit SetRp10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers,Spin ,
  ComCtrls, Mask, Grids, DBGrids, ImgList, ToolWin, FR_Class;

type
  TFmSetRp10 = class(TForm)
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
    frReport1: TfrReport;
    procedure SpeedButton2Click(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp10: TFmSetRp10;

implementation
uses SrchdlgSet,USoftFirm,uFindData;

{$R *.DFM}

procedure TFmSetRp10.SpeedButton2Click(Sender: TObject);
begin
  Application.Createform(TfFindData,fFindData);
  If fFindData.ShowModalSfloct=Mrok Then
  Edit2.Text := fFindData.Keyno;
end;

procedure TFmSetRp10.PrevBtnClick(Sender: TObject);
begin
        frReport1.LoadFromFile(SFMAIN.frpath+'\REPORT\rp_SetLocatMst.frf');
        frReport1.ShowReport;
end;

procedure TFmSetRp10.PrnBtnClick(Sender: TObject);
begin
        frReport1.LoadFromFile(SFMAIN.frpath+'\REPORT\rp_SetLocatMst.frf');
        frReport1.PrepareReport;
        frReport1.PrintPreparedReportDlg;
end;

procedure TFmSetRp10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TFmSetRp10.CloseBtnClick(Sender: TObject);
begin
 close;
end;

procedure TFmSetRp10.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        If UpperCase(ParName)='PLOCATCOD' THEN
        ParValue:=Edit2.Text+'%';
end;

procedure TFmSetRp10.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        Case Key Of
        VK_F4 :Begin
                   frReport1.LoadFromFile(SFMAIN.frpath+'\REPORT\rp_SetLocatMst.frf');
                   frReport1.DesignReport;
               End;
        End;
end;

end.
