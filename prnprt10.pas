unit Prnprt10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids;

type
  TFprnpart10 = class(TForm)
    Shape1: TShape;
    PrintBtn: TBitBtn;
    CloseBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Label6: TLabel;
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
  Fprnpart10 : TFprnpart10;
  N : integer;

implementation
uses DMSV,Prnprt11;

{$R *.DFM}

procedure TFprnpart10.BitBtn3Click(Sender: TObject);
begin
  Application.CreateForm(TFprnpart11,Fprnpart11);
  aReport := Fprnpart11.QuickReport;
  aReport.preview;
end;

procedure TFprnpart10.PrintBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFprnpart11,Fprnpart11);
  aReport := Fprnpart11.QuickReport;
  aReport.Print;
end;

procedure TFprnpart10.CloseBtn1Click(Sender: TObject);
begin
  Close;
end;


procedure TFprnpart10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Label6.Caption := '';
  Action := caFree;
end;

end.
