unit Entrchq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, DB, Dbkbd, RzButton,
  RzDBGrid, RzDbkbd;

type
  TFChqinp = class(TForm)
    Panel3: TPanel;
    SvInBtn: TRzBitBtn;
    SvDlBtn: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    DBGrid1: TRzDBGrid;
    DBkbd1: TRzDBkbd;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SvInBtnClick(Sender: TObject);
    procedure SvDlBtnClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
         
var
  FChqinp: TFChqinp;

implementation
Uses DmAr,uSrcDlg;
{$R *.DFM}

procedure TFChqinp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFChqinp.SvInBtnClick(Sender: TObject);
begin
  Dm_Ar.QArchq.Append;
end;

procedure TFChqinp.SvDlBtnClick(Sender: TObject);
begin
   Dm_Ar.QArchq.Delete;
end;

procedure TFChqinp.DBGrid1DblClick(Sender: TObject);
begin
  If DBGrid1.SelectedField.FieldName = 'BKCODE' Then
  Begin
    Application.Createform(TfSrcDLG,fSrcDLG);
    If fSrcDLG.ShowModalBak=Mrok Then
    Begin
       Dm_Ar.QArchq.Edit;
       Dm_Ar.QArChq.FieldByName('BKCODE').Asstring:=fSrcDLG.KeyNo;
    End;
  end;
end;

procedure TFChqinp.RzBitBtn1Click(Sender: TObject);
begin
    Close;
end;

end.
