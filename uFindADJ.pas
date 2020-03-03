unit uFindADJ;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfFindADJ = class(TForm)
    DataSource: TDataSource;
    qrFindDat: TFDQuery;
    Panel1: TPanel;
    Label1: TLabel;
    SearchButton: TSpeedButton;
    Panel3: TPanel;
    Bevel1: TBevel;
    OKBtn: TButton;
    CancelBtn: TButton;
    OrderCombo: TComboBox;
    SearchEd: TEdit;
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    property Keyno: string read GetKeyno;
    function ShowModalAdjust: Integer;
  end;

var
  fFindADJ: TfFindADJ;
  Title: array[0..10] of string;
  Fldgrd: array[0..10] of string;
  I, Max: Word;

implementation

uses
  USoftFirm, Dmsec;

{$R *.DFM}

function TfFindADJ.ShowModalAdjust: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 0;
  Title[0] := 'เลขที่ปรับปรุง';
  Title[1] := 'วันที่';
  Title[2] := 'รหัสพนักงาน';
  Title[3] := 'รหัสสาขา';

  Fldgrd[0] := 'ADJNO';
  Fldgrd[1] := 'ADJDATE';
  Fldgrd[2] := 'OFFICCOD';
  Fldgrd[3] := 'ADJLOC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหาใบปรับปรุงยอดสินค้า';
  Result := ShowModal;
end;

function TfFindADJ.GetKeyno: string;
begin
  if qrFindDat.Active then
    case OrderCombo.Tag of
      0:
        Result := qrFindDat.Fieldbyname('ADJNO').Asstring;
    end;
end;

procedure TfFindADJ.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfFindADJ.SearchButtonClick(Sender: TObject);
begin
  with qrFindDat do
  begin
    Close;
    SQL.Clear;
    case OrderCombo.Tag of
      0:
        begin
          if OrderCombo.Itemindex = 0 then
            SQL.ADD('SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC FROM ADJ_INVOI WHERE ADJNO LIKE :EDIT1 ORDER BY ADJNO');
          if OrderCombo.Itemindex = 1 then
            SQL.ADD('SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC FROM ADJ_INVOI WHERE OFFICCOD LIKE :EDIT1 ORDER BY OFFICCOD');
          if OrderCombo.Itemindex = 2 then
            SQL.ADD('SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC FROM ADJ_INVOI WHERE ADJLOC LIKE :EDIT1 ORDER BY ADJLOC');
        end;
    end;
    qrFindDat.Params[0].Asstring := Uppercase(SearchEd.Text) + '%';
    qrFindDat.Open;
  end;
end;

procedure TfFindADJ.OrderComboChange(Sender: TObject);
var
  I, K: word;
  T1, F1: string;
begin
  SearchEd.Text := '';
  K := 0;
  I := 0;
  while (I <= Max) do
  begin
    if (Title[I] = OrderCombo.Text) then
    begin
      K := I;
      Break;
    end;
    I := I + 1;
  end;

  T1 := Title[0];
  Title[0] := Title[K];
  Title[K] := T1;

  F1 := Fldgrd[0];
  Fldgrd[0] := Fldgrd[K];
  Fldgrd[K] := F1;
  Dbgrid1.Columns.Clear;
  for I := 0 to Max do
  begin
    Dbgrid1.Columns.Add.Fieldname := Fldgrd[I];
    Dbgrid1.Columns[I].Title.Caption := Title[I];
    if Fldgrd[I] = 'NAME1' then
      Dbgrid1.Columns[I].Width := 80;
  end;
end;

procedure TfFindADJ.SearchEdChange(Sender: TObject);
begin
  if SFMain.Xsrch = 'Y' then
    SearchButtonClick(Sender);
end;

procedure TfFindADJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfFindADJ.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TfFindADJ.CalcMax;
begin
  { ** Field Name & Title** }
  I := 0;
  while I <= 10 do
  begin
    Dbgrid1.Columns.Add.Fieldname := Fldgrd[I];
    Dbgrid1.Columns[I].Title.Caption := Title[I];
    if Fldgrd[I] = '' then
    begin
      Max := I - 1;
      if Max < 0 then
        Max := 0;
      break;
    end;
    I := I + 1;
  end;
end;

procedure TfFindADJ.FormCreate(Sender: TObject);
begin
  I := 0;
  while I <= 10 do
  begin
    Title[I] := '';
    Fldgrd[I] := '';
    I := I + 1;
  end;
end;

procedure TfFindADJ.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    SearchButtonClick(Sender);
    DbGrid1.SetFocus;
  end;
end;

procedure TfFindADJ.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    OKBtn.Click;
  end;
end;

end.

