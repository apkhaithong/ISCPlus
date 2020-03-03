unit uCan_Del;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, AdvCircularProgress, RzButton,
  AdvReflectionImage;
type
   TFormType = (Ellipse,RoundRec,Complex);

type
  TfrCan_Del = class(TForm)
    ImageList1: TImageList;
    Timer1: TTimer;
    Lb1: TRzShapeButton;
    Bevel1: TBevel;
    PrgBar: TAdvCircularProgress;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    Procedure FormShape(FormType: TFormType);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCan_Del: TfrCan_Del;

implementation
uses USoftFirm;
{$R *.dfm}
Procedure TfrCan_Del.FormShape(FormType: TFormType);
var
  FormRegion : THandle;
  FormRegion2 : THandle;
begin
case FormType of
  Ellipse :
    FormRegion := CreateEllipticRgn(0,0,width, height);
  RoundRec:
    FormRegion := CreateRoundRectRgn(0,0,width, height,35,35);
  Complex:
    begin
      FormRegion := CreateEllipticRgn(0,0,width-190, height-190);
      FormRegion2 := CreateEllipticRgn(190,190,width, height);
      CombineRgn(FormRegion, FormRegion, FormRegion2, RGN_OR);
    end;
end;
  SetWindowRgn(Handle, FormRegion, True);
end;

procedure TfrCan_Del.Timer1Timer(Sender: TObject);
begin
   Timer1.Interval := Timer1.Interval + 1;
   if Timer1.Interval = 1010 then
   begin
     Timer1.Interval := 1005;
     frCan_Del.Close;
   end;
end;

procedure TfrCan_Del.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfrCan_Del.FormShow(Sender: TObject);
begin
  FormShape(RoundRec);
end;

end.
