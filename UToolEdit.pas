unit UToolEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, RzButton,  RzPanel, RzRadGrp,
  RzSpnEdt, RzStatus, RzBorder;

type
  TFToolEdit = class(TForm)
    Button2: TRzRapidFireButton;
    Button3: TRzRapidFireButton;
    Button4: TRzRapidFireButton;
    Button5: TRzRapidFireButton;
    Button6: TRzRapidFireButton;
    Button7: TRzRapidFireButton;
    Button8: TRzRapidFireButton;
    RzRapidFireButton1: TRzRapidFireButton;
    procedure Office97Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolEdit: TFToolEdit;

implementation
Uses Chgcusno,Chgpart,ChgGroup, USoftFirm,Chgstrno,Chgregno,ChgOwner,chgmodel;
{$R *.dfm}

procedure TFToolEdit.Office97Button1Click(Sender: TObject);
begin
   Close
end;

procedure TFToolEdit.FormCreate(Sender: TObject);
begin
   SFMAIN.Check_right(HSET,'FILE08_7');
end;

procedure TFToolEdit.RzRapidFireButton1Click(Sender: TObject);
begin
    CLOSE;
end;

procedure TFToolEdit.Button2Click(Sender: TObject);
begin
   Application.CreateForm(TFChgpartno,FChgpartno);
   FChgpartno.Showmodal;
end;

procedure TFToolEdit.Button3Click(Sender: TObject);
begin
   Application.CreateForm(TFChgcusno,FChgcusno);
   FChgcusno.Showmodal;
end;

procedure TFToolEdit.Button4Click(Sender: TObject);
begin
   Application.CreateForm(TFChggroup,FChggroup);
   FChggroup.ShowModal;
end;

procedure TFToolEdit.Button5Click(Sender: TObject);
begin
   Application.CreateForm(TChangowner,Changowner);
   Changowner.ShowModal;
end;

procedure TFToolEdit.Button6Click(Sender: TObject);
begin
   Application.CreateForm(TFChgregno,FChgregno);
   FChgregno.ShowModal;
end;

procedure TFToolEdit.Button7Click(Sender: TObject);
begin
   Application.CreateForm(TFChgstrno,FChgstrno);
   FChgstrno.ShowModal;
end;

procedure TFToolEdit.Button8Click(Sender: TObject);
begin
   Application.CreateForm(TFchgmdl,Fchgmdl);
   Fchgmdl.ShowModal;
end;

end.
