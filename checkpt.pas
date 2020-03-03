unit Checkpt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFCheckpart = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TFDQuery;
    Query2: TFDQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCheckpart: TFCheckpart;

implementation
uses Dmic01;
{$R *.DFM}

procedure TFCheckpart.BitBtn1Click(Sender: TObject);
begin
  If Edit1.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้า');
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.add('SELECT * FROM INVMAST WHERE PARTNO=:EDIT1 ');
    Params[0].Asstring := Edit1.Text;
    Open;
  End;
  If (Query1.Bof and Query1.Eof) Then
  Begin
    With Query2 Do
    Begin
      Close;
      Sql.Clear;
      Sql.add('DELETE FROM INVENTOR WHERE PARTNO=:EDIT1');
      Params[0].asstring:= EDIT1.TEXT;
      ExecSql;
    End;
    With Query2 Do
    Begin
      Close;
      Sql.Clear;
      Sql.add('DELETE FROM INVANLS WHERE PARTNO=:EDIT1');
      Params[0].asstring:= EDIT1.TEXT;
      ExecSql;
    End;
  End
  Else
  SFMain.RaiseException('มีรหัสนี้แล้วในแฟ้มหลัก ');
end;


procedure TFCheckpart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFCheckpart.BitBtn2Click(Sender: TObject);
begin
    Close;
end;

end.
