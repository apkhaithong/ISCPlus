unit Dlgmemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFmemo = class(TForm)
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmemo: TFmemo;

implementation
Uses Dmsv;
{$R *.DFM}

end.
