unit HlpOth;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, DB, Grids, DBGrids, RzSpnEdt, RzDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFhlpOth = class(TForm)
    QHelp: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TRzDBGrid;
    Panel3: TPanel;
    Edit1: TEdit;
    RadioGroup1: TComboBox;
    RadioGroup2: TComboBox;
    BitBtn1: TRzRapidFireButton;
    Label1: TLabel;
    Label2: TLabel;
    OKBtn: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FhlpOth: TFhlpOth;

implementation
{$R *.DFM}

procedure TFhlpOth.BitBtn1Click(Sender: TObject);
begin
  If  RadioGroup1.Itemindex = 0 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO LIKE :EDIT1 AND PAID=0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO LIKE :EDIT1 AND PAID>0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO LIKE :EDIT1 AND NOT(CANCELID IS NULL)');
      If  RadioGroup2.Itemindex = 3 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO LIKE :EDIT1 ');

      Params[0].Asstring := EDIT1.TEXT+'%';
      Open;
    end;
  end;
  If  RadioGroup1.Itemindex = 1 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE CUSCOD LIKE :EDIT1 AND PAID=0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE CUSCOD LIKE :EDIT1 AND PAID>0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE CUSCOD LIKE :EDIT1 AND NOT(CANCELID IS NULL)');
      If  RadioGroup2.Itemindex = 3 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE CUSCOD LIKE :EDIT1');

      Params[0].Asstring := EDIT1.TEXT+'%';
      Open;
    end;
  end;
  If  RadioGroup1.Itemindex = 2 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE JOBNO LIKE :EDIT1 AND PAID=0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE JOBNO LIKE :EDIT1 AND PAID>0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE JOBNO LIKE :EDIT1 AND NOT(CANCELID IS NULL)');
      If  RadioGroup2.Itemindex = 3 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE JOBNO LIKE :EDIT1');

      Params[0].Asstring := EDIT1.TEXT+'%';
      Open;
    end;
  end;
  If  RadioGroup1.Itemindex = 3 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE TAXNO LIKE :EDIT1 AND PAID=0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE TAXNO LIKE :EDIT1 AND PAID>0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE TAXNO LIKE :EDIT1 AND NOT(CANCELID IS NULL)');
      If  RadioGroup2.Itemindex = 3 Then
      Sql.Add('SELECT * FROM OTHINVOI WHERE TAXNO LIKE :EDIT1');

      Params[0].Asstring := EDIT1.TEXT+'%';
      Open;
    end;
  end;

end;

procedure TFhlpOth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFhlpOth.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFhlpOth.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

end.
