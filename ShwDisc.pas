unit ShwDisc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, AdvReflectionLabel,
  AdvSmoothLabel, AdvGlowButton, AdvPanel;

type
  TShwDscForm1 = class(TForm)
    AdvPanel1: TAdvPanel;
    ExitBtn: TAdvGlowButton;
    AdvSmoothLabel1: TAdvSmoothLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    AdvSmoothLabel4: TAdvSmoothLabel;
    AdvSmoothLabel5: TAdvSmoothLabel;
    AdvSmoothLabel6: TAdvSmoothLabel;
    AdvSmoothLabel7: TAdvSmoothLabel;
    AdvSmoothLabel8: TAdvSmoothLabel;
    AdvSmoothLabel9: TAdvSmoothLabel;
    AdvSmoothLabel10: TAdvSmoothLabel;
    AdvSmoothLabel11: TAdvSmoothLabel;
    AdvSmoothLabel12: TAdvSmoothLabel;
    AdvSmoothLabel13: TAdvSmoothLabel;
    AdvSmoothLabel14: TAdvSmoothLabel;
    AdvSmoothLabel15: TAdvSmoothLabel;
    Edit1: TAdvSmoothLabel;
    Edit3: TAdvSmoothLabel;
    Edit8: TAdvSmoothLabel;
    Edit2: TAdvSmoothLabel;
    Edit4: TAdvSmoothLabel;
    Edit5: TAdvSmoothLabel;
    Edit6: TAdvSmoothLabel;
    Edit7: TAdvSmoothLabel;
    Edit11: TAdvSmoothLabel;
    Edit9: TAdvSmoothLabel;
    Edit10: TAdvSmoothLabel;
    Edit12: TAdvSmoothLabel;
    Edit13: TAdvSmoothLabel;
    Edit14: TAdvSmoothLabel;
    Edit15: TAdvSmoothLabel;
    Bevel2: TBevel;
    Label6: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel3: TBevel;
    AdvSmoothLabel16: TAdvSmoothLabel;
    AdvSmoothLabel17: TAdvSmoothLabel;
    AdvSmoothLabel18: TAdvSmoothLabel;
    AdvSmoothLabel19: TAdvSmoothLabel;
    AdvSmoothLabel20: TAdvSmoothLabel;
    AdvSmoothLabel21: TAdvSmoothLabel;
    AdvSmoothLabel22: TAdvSmoothLabel;
    AdvSmoothLabel23: TAdvSmoothLabel;
    AdvSmoothLabel24: TAdvSmoothLabel;
    AdvSmoothLabel25: TAdvSmoothLabel;
    AdvSmoothLabel26: TAdvSmoothLabel;
    AdvSmoothLabel27: TAdvSmoothLabel;
    AdvSmoothLabel28: TAdvSmoothLabel;
    AdvSmoothLabel29: TAdvSmoothLabel;
    AdvSmoothLabel30: TAdvSmoothLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TKang,TDisc,TIntr,BalProf,BalProfSTR,BalProfEFF,Xdisc_a :Double;
  end;

var
  ShwDscForm1: TShwDscForm1;

implementation
Uses Functn01, DmCal;
{$R *.DFM}

procedure TShwDscForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TShwDscForm1.FormShow(Sender: TObject);
Var Baln:Double;
begin
  Edit1.Caption.Text := Floattostrf(Tkang,ffNumber,15,2);
  Edit2.Caption.Text := Floattostrf(TDisc,ffNumber,15,2);
  Baln := Tkang-TDisc;
  If Baln<0 Then Baln:=0;
  Edit3.Caption.Text := Floattostrf(Baln,ffNumber,15,2);
  Edit4.Caption.Text := Floattostrf(Tintr,ffNumber,15,2);
  Edit5.Caption.Text := Floattostrf(Baln+Tintr,ffNumber,15,2);
  Edit6.Caption.Text := Floattostrf(BalProf,ffNumber,15,2);
  Edit7.Caption.Text := Floattostrf(FRound(Balprof*0.5,2),ffNumber,15,2);
  Edit8.Caption.Text := Floattostrf(Dm_cal.QCondpay.FieldByName('OPerate').Asfloat,ffNumber,15,2);

  Edit9.Caption.Text  := Floattostrf(BalProfSTR,ffNumber,15,2);
  Edit13.Caption.Text := Floattostrf(BalProfEFF,ffNumber,15,2);
  Edit10.Caption.Text := Floattostrf(FRound(BalprofSTR*0.5,2),ffNumber,15,2);
  Edit14.Caption.Text := Floattostrf(FRound(BalprofEFF*0.5,2),ffNumber,15,2);
  Edit11.Caption.Text := Floattostrf((Tkang-FRound(Balprof*0.5,2))+Tintr,ffNumber,15,2);
  Edit12.Caption.Text := Floattostrf((Tkang-FRound(BalprofSTR*0.5,2))+Tintr,ffNumber,15,2);
  Edit15.Caption.Text := Floattostrf((Tkang-FRound(BalprofEFF*0.5,2))+Tintr,ffNumber,15,2);

end;

procedure TShwDscForm1.ExitBtnClick(Sender: TObject);
begin
  close;
end;

end.
