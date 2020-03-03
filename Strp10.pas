unit STRp10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, System.ImageList;

type
  TFmSTRp10 = class(TForm)
    Label6: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Edit1: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    RadioGp2: TRadioGroup;
    RadioGp3: TRadioGroup;
    Label1: TLabel;
    Edit2: TEdit;
    SpeedButton2: TSpeedButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Bevel1: TBevel;
    Label3: TLabel;
    Edit5: TEdit;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    Prnbtn: TToolButton;
    Prevbtn: TToolButton;
    CloseBtn: TToolButton;
    ImageList1: TImageList;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
    aReport: TQuickRep;
    procedure PickReport;
  public
    SortText, XGroup1: string;
    XYear: Word;
    { Public declarations }
  end;

var
  FmSTRp10: TFmSTRp10;
  XDate: TDateTime;
  XDay, XMonth: Word;

implementation

uses
  Srchdlg, STRp11, DmSet1, uSrcDlg, USoftFirm;

{$R *.DFM}

procedure TFmSTRp10.SpeedButton1Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD =:GROUPCOD');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    XGroup1 := Dm_Set1.Query1.FieldByName('Groupcod').Asstring;
    Edit1.text := Dm_Set1.Query1.FieldByName('Groupcod').Asstring;
  end;
end;

procedure TFmSTRp10.SpeedButton3Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE PARTNO = :XPART ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    Edit3.text := Dm_Set1.Query1.FieldByName('PartNo').Asstring;
  end;
end;

procedure TFmSTRp10.SpeedButton4Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE PARTNO = :XPART ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    Edit4.text := Dm_Set1.Query1.FieldByName('PartNo').Asstring;
  end;
end;

procedure TFmSTRp10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRp10.FormCreate(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := ('dd/mm/yyyy');
  RadioGp2.ItemIndex := 0;
  RadioGp3.ItemIndex := 0;
  XDate := Now;
  DecodeDate(XDate, XYear, XMonth, XDay);
end;

procedure TFmSTRp10.PickReport;
begin
  Application.CreateForm(TFmSTRp11, FmSTRp11);
  aReport := FmSTRp11.Qrep;
end;

procedure TFmSTRp10.PrnBtnClick(Sender: TObject);
begin
  PickReport;
  aReport.Print;
end;

procedure TFmSTRp10.PrevBtnClick(Sender: TObject);
begin
  PickReport;
  aReport.Preview;
end;

procedure TFmSTRp10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFmSTRp10.SpeedButton2Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD = :XCUSCOD ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    Edit2.text := Dm_Set1.Query1.FieldByName('LOCATCOD').Asstring;
  end;
end;

procedure TFmSTRp10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.

