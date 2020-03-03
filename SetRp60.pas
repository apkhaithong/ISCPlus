unit SetRp60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers ,
  ComCtrls, Mask, Grids, DBGrids, ImgList, ToolWin, FR_Class;

type
  TFmSetRp60 = class(TForm)
    Label6: TLabel;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    RadioGroup2: TRadioGroup;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Edit3: TEdit;
    SpeedButton3: TSpeedButton;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
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
  FmSetRp60: TFmSetRp60;

implementation
uses SrchdlgSet,USoftFirm,uFindData;

{$R *.DFM}

procedure TFmSetRp60.SpeedButton2Click(Sender: TObject);
begin
  Application.Createform(TfFindData,fFindData);
  If fFindData.ShowModalARMAST=Mrok Then
  Edit2.Text := fFindData.Keyno;
end;

procedure TFmSetRp60.PrevBtnClick(Sender: TObject);
begin
        if edit2.Text='' then
           Edit2.Text:='Î';

        frReport1.LoadFromFile(sfmain.frpath+'\REPORT\rp_SetArMast.frf');
        frReport1.ShowReport;
end;

procedure TFmSetRp60.PrnBtnClick(Sender: TObject);
begin
        if edit2.Text='' then
           Edit2.Text:='Î';
        frReport1.LoadFromFile(sfmain.frpath+'\REPORT\rp_SetArMast.frf');
        frReport1.PrepareReport;
        frReport1.PrintPreparedReportDlg;
end;

procedure TFmSetRp60.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TFmSetRp60.SpeedButton1Click(Sender: TObject);
begin
  Application.Createform(TfFindData,fFindData);
  If fFindData.ShowModalARMAST=Mrok Then
  Edit1.Text := fFindData.Keyno;
end;


procedure TFmSetRp60.SpeedButton3Click(Sender: TObject);
begin
  Application.Createform(TfFindData,fFindData);
  If fFindData.ShowModalArgroup=Mrok Then
  Edit3.Text := fFindData.Keyno;
end;

procedure TFmSetRp60.CloseBtnClick(Sender: TObject);
begin
 close;
end;

procedure TFmSetRp60.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
Var XGP,XORD :String;
begin
        IF RadioGroup1.ItemIndex=0 Then
        XGP:='1';
        IF RadioGroup1.ItemIndex=1 Then
        XGP:='2';
        IF RadioGroup1.ItemIndex=2 Then
        XGP:='3';
        IF RadioGroup1.ItemIndex=3 Then
        XGP:='%';
        IF RadioGroup2.ItemIndex=0 Then
        XORD:='C';
        IF RadioGroup2.ItemIndex=1 Then
        XORD:='A';
        IF RadioGroup2.ItemIndex=2 Then
        XORD:='P';

        IF UpperCase(ParName)='PGP' THEN
        ParValue:=XGP;
        IF UpperCase(ParName)='PCGROUP' Then
        ParValue:=Edit3.Text+'%';
        IF UpperCase(ParName)='PFCUSCOD' Then
        ParValue:=Edit1.Text;
        IF UpperCase(ParName)='PTCUSCOD' Then
        ParValue:=Edit2.Text;
        IF UpperCase(ParName)='PORD' Then
        ParValue:=XORD;
end;

procedure TFmSetRp60.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        Case Key Of
        VK_F4 :Begin
                    frReport1.LoadFromFile(sfmain.frpath+'\REPORT\rp_SetArMast.frf');
                    frReport1.DesignReport;
               End;
        End;
end;

end.
