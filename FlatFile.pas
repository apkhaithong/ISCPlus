unit FlatFile;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Spin;

type
  TFmflagfile = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SaveBtn: TButton;
    BitBtn1: TBitBtn;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Bevel2: TBevel;
    Label5: TLabel;
    procedure SaveBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Formnm:String;
    procedure ReadMargin;
  end;

Type
  Margin =Record
  Formname : String[20];
  Top    : Integer;
  Header : Integer;
  Left   : Integer;
  Footer : Integer;
end;

var
  Fmflagfile: TFmflagfile;
  Rec : Margin;
  Marfile : File of Margin;
  FoundRec : Boolean;
implementation

uses USoftFirm;
{$R *.DFM}

procedure TFmflagfile.SaveBtnClick(Sender: TObject);
begin
  With Rec do
  begin
    Formname := Formnm;
    Top    := SpinEdit1.Value;
    Header := SpinEdit2.Value;
    Left   := SpinEdit3.Value;
    Footer := SpinEdit4.Value;
  end;
  If FoundRec Then
    seek(Marfile,FilePos(Marfile)-1)
  Else
    seek(Marfile,FileSize(Marfile));
  Try
    Write(Marfile,rec);
  except
    On EinOutError do
    SFMain.RaiseException('Save File ไม่ได้');
  end;
  Close;
end;

procedure TFmflagfile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  System.Close(Marfile);
  Action := Cafree;
end;


procedure TFmflagfile.FormShow(Sender: TObject);
begin
  ReadMargin;
end;

procedure TFmflagfile.ReadMargin;
begin
  FoundRec := False;
  // Read Data
  Seek(Marfile,0);
  While not EOF(Marfile) Do
  begin
    Read(Marfile,Rec);
    If Rec.Formname= Formnm Then
    begin
      With Rec do
      begin
        Fmflagfile.Caption := 'ปรับตำแหน่งฟอร์ม '+FormName;
        SpinEdit1.Value := Top   ;
        SpinEdit2.Value := Header;
        SpinEdit3.Value := Left  ;
        SpinEdit4.Value := Footer;
      end;
      FoundRec:=True;
      break;
    end;
  end;
end;

procedure TFmflagfile.FormCreate(Sender: TObject);
begin
  AssignFile(Marfile,'AddLine.dat');
  FileMode :=2;
  Try
    Reset(Marfile);
  except
    On EinOutError do
     Rewrite(marfile);
  end;
end;

end.
