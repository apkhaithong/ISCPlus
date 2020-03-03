unit Setrp50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers,Grids,DBGrids,
  ComCtrls, Mask;

type
  TSetRp_50 = class(TForm)
    Panel1: TPanel;
    Label10: TLabel;
    Panel2: TPanel;
    PrintBitBtn: TBitBtn;
    PreveiwBitBtn: TBitBtn;
    ExitBitBtn: TBitBtn;
    Panel3: TPanel;
    SpeedButton4: TSpeedButton;
    Edit3: TEdit;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Edit2: TEdit;
    Label4: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PreveiwBitBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrintBitBtnClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
   { Private declarations }
    aReport : TQuickRep;
    procedure PickReport;
  public
    { Public declarations }
    FromDate,ToDate :TdateTime;
  end;

var
  SetRp_50: TSetRp_50;

implementation

uses Pickdate,setRp51,Dmsvset,Srchdlg1;

{$R *.DFM}

procedure TSetRp_50.ExitBitBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TSetRp_50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TSetRp_50.PreveiwBitBtnClick(Sender: TObject);
begin
  PickReport;
  aReport.Preview;
end;

procedure  TSetRp_50.PickReport;
begin
    Application.CreateForm(TSetrp_51,Setrp_51);
    aReport := Setrp_51.Qrep;
end;

procedure TSetRp_50.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
    Begin
     Perform(Wm_nextDlgctl,0,0);
     Key := #0;
    End;

end;

procedure TSetRp_50.FormCreate(Sender: TObject);
begin
   ShortDateFormat     := ('DD/MM/YYYY');
end;

procedure TSetRp_50.PrintBitBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Print;
end;



procedure TSetRp_50.SpeedButton1Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg1,SearchDlg1);
  If SearchDlg1.ShowModalModel=Mrok Then
  begin
    EDIT1.TEXT := SearchDlg1.KeyNo;
  End;

end;

procedure TSetRp_50.SpeedButton3Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg1,SearchDlg1);
  If SearchDlg1.ShowModalTabsv=Mrok Then
  begin
    EDIT2.TEXT := SearchDlg1.KeyNo;
  End;

end;

procedure TSetRp_50.SpeedButton4Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg1,SearchDlg1);
  If SearchDlg1.ShowModalTabsv=Mrok Then
  begin
    EDIT3.TEXT := SearchDlg1.KeyNo;
  End;
end;

end.
