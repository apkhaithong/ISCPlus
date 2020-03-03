unit SetRp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ImgList, ComCtrls, ToolWin;

type
  TFmSetRp = class(TForm)
    RadioGp1: TRadioGroup;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    CloseBtn: TToolButton;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGp1Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp: TFmSetRp;

implementation
Uses SetRp10,SetRp20,SetRp30,SetRp50_1,SetRp60,
     SetRp70,SetRp80,SetRp90,SetRpA10,SetRpA20;

{$R *.DFM}

procedure TFmSetRp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Dm_Set1.Closeall;
  Action :=caFree;
end;

procedure TFmSetRp.RadioGp1Click(Sender: TObject);
begin
   Case  RadioGp1.ItemIndex Of
   0 :  Begin
          //Close;
          Application.CreateForm(TFmSetRp10,FmSetRp10);
          FmSetRp10.Show;
        End;
   1 :  Begin
          //Close;
          Application.CreateForm(TFmSetRp20,FmSetRp20);
          FmSetRp20.Show;
        End;
   2 :  Begin
          //Close;
          Application.CreateForm(TFmSetRp30,FmSetRp30);
          FmSetRp30.Show;
        End;
   3 :  Begin
          //Close;
          Application.CreateForm(TFmSetRp50,FmSetRp50);
          FmSetRp50.Show;
        End;
   4 :  Begin
          //Close;
          Application.CreateForm(TFmSetRp60,FmSetRp60);
          FmSetRp60.Show;
        End;
   5 :  Begin
          //Close;
          Application.CreateForm(TFmSetRp70,FmSetRp70);
          FmSetRp70.Show;
        End;
   6 :  Begin
          //Close;
          Application.CreateForm(TFmSetRp80,FmSetRp80);
          FmSetRp80.Show;
        End;
   7 :  Begin
          //Close;
          Application.CreateForm(TFmSetRp90,FmSetRp90);
          FmSetRp90.Show;
        End;
   8 :  Begin
          //Close;
          Application.CreateForm(TFmSetRpA10,FmSetRpA10);
          FmSetRpA10.Show;
        End;
   9 :  Begin
          //Close;
          Application.CreateForm(TFmSetRpA20,FmSetRpA20);
          FmSetRpA20.Show;
        End;
   end;
end;

procedure TFmSetRp.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.
