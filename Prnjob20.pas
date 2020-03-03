unit Prnjob20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids;

type
  TFprnjob20 = class(TForm)
    Shape1: TShape;
    PrintBtn: TBitBtn;
    CloseBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    aReport : TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprnjob20 : TFprnjob20;
  N : integer;

implementation
uses DMSV,Prnjob21;

{$R *.DFM}

procedure TFprnjob20.BitBtn3Click(Sender: TObject);
begin
  If Label1.Caption <> '' then
  begin
    Application.CreateForm(TFprnjob21,Fprnjob21);
    aReport := Fprnjob21.QuickReport;
    aReport.preview;
  end
end;

procedure TFprnjob20.PrintBtnClick(Sender: TObject);
begin
  If Label1.Caption <> '' then
  begin
    Application.CreateForm(TFprnjob21,Fprnjob21);
    aReport := Fprnjob21.QuickReport;
    aReport.Print;
  end
end;

procedure TFprnjob20.CloseBtn1Click(Sender: TObject);
begin
  Close;
end;


procedure TFprnjob20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Label1.Caption := '';
  Label6.Caption := '';
  Action := caFree;
end;

end.
