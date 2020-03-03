unit ShowDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TFShowDlg = class(TForm)
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FShowDlg: TFShowDlg;

implementation

{$R *.DFM}

procedure TFShowDlg.FormShow(Sender: TObject);
begin
  Label1.Width := 329; 
end;

end.
