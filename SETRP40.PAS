unit SetRp40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers ,
  ComCtrls, Mask, Grids, DBGrids;

type
  TFmSetRp40 = class(TForm)
    Label6: TLabel;
    Panel1: TPanel;
    Bevel1: TBevel;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Panel2: TPanel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    RadioGp1: TRadioGroup;
    PrnBtn: TBitBtn;
    PrevBtn: TBitBtn;
    BitBtn3: TBitBtn;
    PreviewCombo: TRadioGroup;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Edit3: TEdit;
    SpeedButton3: TSpeedButton;
    procedure ShowPreview;
    procedure PreviewComboClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    aReport : TQuickRep;
    Procedure PickReport;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSetRp40: TFmSetRp40;

implementation
uses SetRpHlp,SetRp41, DmSet1;

{$R *.DFM}
procedure TFmSetRp40.PickReport;
begin
    Application.CreateForm(TFmSetRp41,FmSetRp41);
    aReport := FmSetRp41.QRep;
    if RadioGp1.ItemIndex=0 then
       aReport.Page.Orientation := poPortrait
    else
       aReport.Page.Orientation := poLandscape;
end;

procedure TFmSetRp40.PreviewComboClick(Sender: TObject);
begin
{   if PreviewCombo.ItemIndex=0 then
      QRPrinter.OnPreview := nil
   else
      QRPrinter.OnPreview := ShowPreview;}
end;

procedure TFmSetRp40.ShowPreview;
begin
{   Application.CreateForm(TPrevForm,PrevForm);
   PrevForm.ShowModal;}
end;


procedure TFmSetRp40.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFmHpRp,FmHpRp);
  FmHpRp.Dbgrid_Inv.Visible := true;
  with FmHpRp.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST '+
            'WHERE PARTNO =:EDIT1 ORDER BY PARTNO');
    Params[0].Asstring := '' ;
    Open;
  end;
  if FmHpRp.ShowModal = Mrok then
  begin
    with Dm_set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST '+
              'WHERE PARTNO =:EDIT1 ORDER BY PARTNO');
      Params[0].Asstring := FmHpRp.Query1.FieldByName('PARTNO').Asstring;
      Open;
      Edit;
    end;
    if Dm_set1.Query1.bof and Dm_set1.Query1.Eof then
       SFMain.RaiseException('ไม่มีรหัสสินค้านี้ในแฟ้มข้อมูล');
    Edit2.Text := Dm_set1.Query1.FieldByName('PARTNO').Asstring;
  end;
end;

procedure TFmSetRp40.PrevBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Preview;
end;

procedure TFmSetRp40.PrnBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Print;
end;

procedure TFmSetRp40.FormCreate(Sender: TObject);
begin
   RadioGp1.ItemIndex    := 1;
   PreviewCombo.ItemIndex:= 0;
//   QRPrinter.OnPreview   := nil;
end;

procedure TFmSetRp40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TFmSetRp40.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFmHpRp,FmHpRp);
  FmHpRp.Dbgrid_Loc.Visible := true;
  with FmHpRp.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD = :'' ');
    Params[0].Asstring := '' ;
    Open;
  end;
  if FmHpRp.ShowModal = Mrok then
  begin
    with Dm_set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD = :XCUSCOD ');
      Params[0].Asstring := FmHpRp.Query1.FieldByName('Locatcod').Asstring;
      Open;
      Edit;
    end;
    if Dm_set1.Query1.bof and Dm_set1.Query1.Eof then
       SFMain.RaiseException('ไม่มีรหัสสาขานี้ในแฟ้มข้อมูล');
    Edit3.Text := Dm_set1.Query1.FieldByName('Locatcod').Asstring;
  end;
end;

procedure TFmSetRp40.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFmHpRp,FmHpRp);
  FmHpRp.Dbgrid_Inv.Visible := true;
  with FmHpRp.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST '+
            'WHERE PARTNO =:EDIT1 ORDER BY PARTNO');
    Params[0].Asstring := '' ;
    Open;
  end;
  if FmHpRp.ShowModal = Mrok then
  begin
    with Dm_set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST '+
              'WHERE PARTNO =:EDIT1 ORDER BY PARTNO');
      Params[0].Asstring := FmHpRp.Query1.FieldByName('PARTNO').Asstring;
      Open;
      Edit;
    end;
    if Dm_set1.Query1.bof and Dm_set1.Query1.Eof then
       SFMain.RaiseException('ไม่มีรหัสสินค้านี้ในแฟ้มข้อมูล');
    Edit1.Text := Dm_set1.Query1.FieldByName('PARTNO').Asstring;
  end;
end;

end.
