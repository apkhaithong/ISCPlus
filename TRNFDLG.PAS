unit TrnfDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls;

type
  TFTrnpo = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    Edit2: TEdit;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Edit3: TEdit;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTrnpo: TFTrnpo;

implementation
Uses Srchdlg;
{$R *.DFM}

procedure TFTrnpo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TFTrnpo.FormCreate(Sender: TObject);
begin
  Edit1.Text := Datetostr(Now);
end;

procedure TFTrnpo.SpeedButton4Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalType=Mrok Then
  Edit2.Text := SearchDlg.Keyno;
end;

procedure TFTrnpo.SpeedButton2Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalGroup=Mrok Then
  Edit3.Text := SearchDlg.Keyno;

end;

end.
