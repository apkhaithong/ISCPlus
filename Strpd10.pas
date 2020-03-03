unit Strpd10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, Spin, RzButton, ToolWin, RzEdit, RzSpnEdt, RzPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmstrpd10 = class(TForm)
    QPartno: TFDQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ToolBar1: TToolBar;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    PrnBtn: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    SpbLocat: TRzRapidFireButton;
    Button2: TRzRapidFireButton;
    Button3: TRzRapidFireButton;
    Edit_Locat: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrnBtnClick(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure Edit3ButtonClick(Sender: TObject);
    procedure Edit4ButtonClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure SpbLocatClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    aReport: TQuickRep;
    procedure PickReport;
  public
    XYear, XMonth: Word;
    FDate, Ldate: TDateTime;
    { Public declarations }
  end;

var
  Fmstrpd10: TFmstrpd10;
  XDay: Word;

implementation

uses
  Srchdlg, uSrcDlg, Strpd11, DmSet1, Upfifo, uSoftFirm;


{$R *.DFM}

procedure TFmstrpd10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmstrpd10.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDIC', 'IC08_23');
  FormatSettings.ShortDateFormat := ('dd/mm/yyyy');
  decodedate(Now, Xyear, Xmonth, Xday);
  SpinEdit2.Value := Xyear;
  SpinEdit1.Value := Xmonth;
end;

procedure TFmstrpd10.PickReport;
begin
  if ((Edit3.Text = '') or (Edit4.Text = '')) then
    SFMain.RaiseException('ยังไม่ระบุรหัสสินค้า');
  //
  Application.CreateForm(TFupfifo, Fupfifo);
  Fupfifo.SpinEdit1.value := SpinEdit1.Value;
  Fupfifo.SpinEdit3.value := SpinEdit1.Value;
  Fupfifo.SpinEdit2.value := SpinEdit2.Value;
  Fupfifo.SpinEdit4.value := SpinEdit2.Value;
  Fupfifo.Edit1.Text := Edit_Locat.Text;
  Fupfifo.Edit2.Text := Qpartno.Fieldbyname('Partno').Asstring; //Edit3.Text;
  Fupfifo.Edit3.Text := Qpartno.Fieldbyname('Partno').Asstring; //Edit4.Text;
  //Fupfifo.Show;
  Fupfifo.OkBtnClick(Fupfifo.OkBtn);
  Fupfifo.Close;
  //
  Application.CreateForm(TFmstrpd11, Fmstrpd11);
  aReport := Fmstrpd11.Qrep;
end;

procedure TFmstrpd10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFmstrpd10.PrnBtnClick(Sender: TObject);
begin
  with Qpartno do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT LOCAT,PARTNO FROM INVENTOR WHERE LOCAT=:V1 AND PARTNO ' +
      'BETWEEN :V2 AND :V3');
    Params[0].Asstring := Edit_Locat.Text;
    Params[1].Asstring := Edit3.Text;
    Params[2].Asstring := Edit4.Text;
    Open;
  end;
  if not (Qpartno.Eof and Qpartno.Bof) then
  begin
    Qpartno.First;
    while not Qpartno.Eof do
    begin
      PickReport;
      aReport.Print;
      Qpartno.Next;
    end;
  end;
end;

procedure TFmstrpd10.Edit1ButtonClick(Sender: TObject);
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
    Edit_Locat.text := Dm_Set1.Query1.FieldByName('LOCATCOD').Asstring;
  end;
end;

procedure TFmstrpd10.Edit3ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalparts = Mrok then
  begin
    Edit3.text := fSrcDlg.Keyno;
  end;
end;

procedure TFmstrpd10.Edit4ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    Edit4.text := fSrcDlg.Keyno;
  end;
end;

procedure TFmstrpd10.RzBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFmstrpd10.PrevBtnClick(Sender: TObject);
begin
  with Qpartno do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT LOCAT,PARTNO FROM INVENTOR WHERE LOCAT=:V1 AND PARTNO ' +
      'BETWEEN :V2 AND :V3');
    Params[0].Asstring := Edit_Locat.Text;
    Params[1].Asstring := Edit3.Text;
    Params[2].Asstring := Edit4.Text;
    Open;
  end;
  if not (Qpartno.Eof and Qpartno.Bof) then
  begin
    Qpartno.First;
    while not Qpartno.Eof do
    begin
      PickReport;
      if not (Fmstrpd11.QFifo.Bof and Fmstrpd11.QFifo.Eof) then
        aReport.Preview
      else
        Fmstrpd11.Close;
      Qpartno.Next;
    end;
  end;
end;

procedure TFmstrpd10.ToolButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TFmstrpd10.SpbLocatClick(Sender: TObject);
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
    Edit_Locat.text := Dm_Set1.Query1.FieldByName('LOCATCOD').Asstring;
  end;
end;

procedure TFmstrpd10.Button2Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalparts = Mrok then
  begin
    Edit3.text := fSrcDlg.Keyno;
  end;
end;

procedure TFmstrpd10.Button3Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    Edit4.text := fSrcDlg.Keyno;
  end;
end;

procedure TFmstrpd10.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  SpbLocat.Enabled := SFMain.XChgLoc = 'Y';
  Edit_Locat.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

end.

