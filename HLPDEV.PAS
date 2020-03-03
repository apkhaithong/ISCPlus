unit HlpDev;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, DB, Grids, DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFhlpDev = class(TForm)
    QHelp: TFDQuery;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    HlpBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    RadioGroup2: TRadioGroup;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure HlpBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FhlpDev: TFhlpDev;

implementation
{$R *.DFM}

procedure TFhlpDev.HlpBtn1Click(Sender: TObject);
begin
  If  RadioGroup1.Itemindex = 0 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO LIKE :EDIT1 AND KANG>0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO LIKE :EDIT1 AND KANG=0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO LIKE :EDIT1 AND NOT(CANCELID IS NULL)');
      If  RadioGroup2.Itemindex = 3 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO LIKE :EDIT1 ');

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
      Sql.Add('SELECT * FROM AR_SERV WHERE CUSCOD LIKE :EDIT1 AND KANG>0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE CUSCOD LIKE :EDIT1 AND KANG=0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE CUSCOD LIKE :EDIT1 AND NOT(CANCELID IS NULL)');
      If  RadioGroup2.Itemindex = 3 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE CUSCOD LIKE :EDIT1');

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
      Sql.Add('SELECT * FROM AR_SERV WHERE JOBNO LIKE :EDIT1 AND KANG>0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE JOBNO LIKE :EDIT1 AND KANG=0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE JOBNO LIKE :EDIT1 AND NOT(CANCELID IS NULL)');
      If  RadioGroup2.Itemindex = 3 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE JOBNO LIKE :EDIT1');

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
      Sql.Add('SELECT * FROM AR_SERV WHERE TAXNO LIKE :EDIT1 AND KANG>0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE TAXNO LIKE :EDIT1 AND KANG=0 AND CANCELID IS NULL');
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE TAXNO LIKE :EDIT1 AND NOT(CANCELID IS NULL)');
      If  RadioGroup2.Itemindex = 3 Then
      Sql.Add('SELECT * FROM AR_SERV WHERE TAXNO LIKE :EDIT1');

      Params[0].Asstring := EDIT1.TEXT+'%';
      Open;
    end;
  end;

end;

procedure TFhlpDev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFhlpDev.FormCreate(Sender: TObject);
begin
  RadioGroup1.Itemindex := 0;
  RadioGroup2.Itemindex := 0;
end;

procedure TFhlpDev.DBGrid1DblClick(Sender: TObject);
begin
        ModalResult := mrOK;
end;

procedure TFhlpDev.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       BitBtn2.Click;
   End;
end;

end.
