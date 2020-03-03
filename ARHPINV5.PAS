unit Arhpinv5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmHpInv5 = class(TForm)
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Query1: TFDQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
     procedure SQLHelp1;
     procedure SQLHelp2;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmHpInv5: TFmHpInv5;

implementation

{$R *.DFM}

procedure TFmHpInv5.FormShow(Sender: TObject);
begin
   ComboBox1.ItemIndex := 0;
   Query1.close;
end;

procedure TFmHpInv5.SQLHelp1;
Var ed1 : string;
begin
   if ComboBox1.ItemIndex = 0 then
   begin
      WITH Query1 DO
      BEGIN
         close;
         sql.clear;
         sql.add('SELECT * FROM Arinvoi WHERE (INVNO LIKE:EDIT1) '+
                 'And (Flag = ''2'' OR Flag = ''D'') And (CANCELID IS NULL) AND TNOPAY=1 '+
                 'ORDER BY InvNo ');
         If Edit1.Text <> '' Then
            ED1 := EDIT1.TEXT+'%'
         ELSE
            Ed1 := '%';
         Params[0].AsString    := Ed1;
         OPEN;
      END;
   END;

   if ComboBox1.ItemIndex = 1 then
   begin
      WITH Query1 DO
      BEGIN
         close;
         sql.clear;
         sql.add('SELECT * FROM ARinvoi WHERE (TAXNO LIKE:EDIT1) '+
                 'And (Flag = ''2'' OR Flag = ''D'') And (CANCELID IS NULL) AND TNOPAY=1 '+
                 'ORDER BY TAXNO ');
         If Edit1.Text <> '' Then
            ED1 := EDIT1.TEXT+'%'
         ELSE
            Ed1 := '%';
         Params[0].AsString   := Ed1;
         OPEN;
      END;
   END;
end;

procedure TFmHpInv5.SQLHelp2;
Var ed1 : string;
begin
   if ComboBox1.ItemIndex = 0 then
   begin
      WITH Query1 DO
      BEGIN
         close;
         sql.clear;
         sql.add('SELECT * FROM ARINVOI WHERE (INVNO LIKE:EDIT1) '+
                 'And (Flag = ''2'' OR Flag = ''D'') And (CANCELID IS NULL) AND TNOPAY>1 '+
                 'ORDER BY InvNo ');
         If Edit1.Text <> '' Then
            ED1 := EDIT1.TEXT+'%'
         ELSE
            Ed1 := '%';
         Params[0].AsString    := Ed1;
         OPEN;
      END;
   END;

   if ComboBox1.ItemIndex = 1 then
   begin
      WITH Query1 DO
      BEGIN
         close;
         sql.clear;
         sql.add('SELECT * FROM ARINVOI WHERE (TAXNO LIKE:EDIT1) '+
                 'And (Flag = ''2'' OR Flag = ''D'') And (CANCELID IS NULL) AND TNOPAY>1 '+
                 'ORDER BY TAXNO ');
         If Edit1.Text <> '' Then
            ED1 := EDIT1.TEXT+'%'
         ELSE
            Ed1 := '%';
         Params[0].AsString   := Ed1;
         OPEN;
      END;
   END;
end;

procedure TFmHpInv5.BitBtn3Click(Sender: TObject);
begin
   if DBGrid1.Visible = true then
      SQLHelp1;
   if DBGrid2.Visible = true then
      SQLHelp2;
end;

procedure TFmHpInv5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFmHpInv5.ComboBox1Change(Sender: TObject);
begin
   SQLHelp1;
end;

procedure TFmHpInv5.DBGrid1DblClick(Sender: TObject);
begin
   if ComboBox1.ItemIndex = 0 then
      edit1.text := Query1.FieldByname('Invno').Asstring;
   if ComboBox1.ItemIndex = 1 then
      edit1.text := Query1.FieldByname('Taxno').Asstring;
end;

procedure TFmHpInv5.FormCreate(Sender: TObject);
var   N : word   ;
begin
  for N:=0 TO ComponentCount - 1 do
  begin
    if Components[N] is TDBgrid then
       TDBgrid(Components[N]).Visible := False;
  end;
end;

end.
