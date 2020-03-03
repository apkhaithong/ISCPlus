unit uWelcome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, AdvCircularProgress, RzButton,
  StdCtrls, AdvSmoothLabel, AdvSmoothPanel, dxGDIPlusClasses, jpeg,
  System.ImageList;

type
  TfrWelcome = class(TForm)
    ImageList1: TImageList;
    Timer1: TTimer;
    Image4: TImage;
    AdvCircularProgress1: TAdvCircularProgress;
    Image3: TImage;
    Image2: TImage;
    Image1: TImage;
    AdvSmoothLabel1: TLabel;
    AdvSmoothLabel2: TLabel;
    AdvSmoothLabel3: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frWelcome: TfrWelcome;

implementation
uses uSoftfirm;
{$R *.dfm}

procedure TfrWelcome.Timer1Timer(Sender: TObject);
begin
   Timer1.Interval := Timer1.Interval + 1;
   if Timer1.Interval = 1006 then
   begin
     AdvSmoothLabel1.Visible := True;
     Image1.Visible          := True;
   end;
   if Timer1.Interval = 1008 then
   begin
     AdvSmoothLabel2.Visible := True;
     Image2.Visible          := True;
   end;
   if Timer1.Interval = 1010 then
   begin
     AdvSmoothLabel3.Visible := True;
     Image3.Visible          := True;
   end;
   if Timer1.Interval = 1012 then
   begin
     Timer1.Interval := 1005;
     frWelcome.Close;
   end;
end;

procedure TfrWelcome.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
  Action := CaFree;
end;

procedure TfrWelcome.FormCreate(Sender: TObject);
var
  rgn: HRGN;
begin
  GetWindowRgn(Handle, rgn);
  DeleteObject(rgn);
  rgn:= CreateRoundRectRgn(0, 0, Width, Height, 20, 20);
  SetWindowRgn(Handle, rgn, TRUE);
end;

end.
