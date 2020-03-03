unit Newpric;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, Grids, DBGrids, Dbkbd,
  ImgList, ComCtrls, ToolWin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFNewpric = class(TForm)
    Qnewpric: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    DBkbd1: TDBkbd;
    Edit1: TEdit;
    Label3: TLabel;
    SpeedButton5: TSpeedButton;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CloseBtn: TToolButton;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure QnewpricNewRecord(DataSet: TDataSet);
    procedure InsBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure QnewpricAfterCancel(DataSet: TDataSet);
    procedure EnqBtnClick(Sender: TObject);
    procedure QnewpricAfterDelete(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewpric: TFNewpric;

implementation
uses Dmic01,Srchdlg,Pickdate,Dlginvms,Dlgupprc, Icmenu;
{$R *.DFM}


procedure TFNewpric.FormCreate(Sender: TObject);
begin
  Label1.Caption := 'วันที่ปัจจุบัน '+datetostr(Now);
  Edit1.Text := Datetostr(Now);
  Qnewpric.Open;
end;

procedure TFNewpric.DBGrid1DblClick(Sender: TObject);
begin
  If (DbGrid1.SelectedField.FieldName) = 'PARTNO' Then
  Begin
    Application.Createform(TSearchDlg,SearchDlg);
    If SearchDlg.ShowModalParts=Mrok Then
    begin
      If Qnewpric.State=Dsbrowse Then Qnewpric.Append;
      Qnewpric.Fieldbyname('Partno').Asstring :=SearchDlg.Keyno;
      Qnewpric.Fieldbyname('Oldpric').AsFloat :=SearchDlg.HQuery1.Fieldbyname('Price1').Asfloat;
    End;
  End;
  If (DbGrid1.SelectedField.FieldName) = 'UPDATEDT' Then
  Begin
    If Qnewpric.State=Dsbrowse Then Qnewpric.Edit;
    Application.CreateForm(TBrdateForm,BrdateForm);
    if BrDateForm.ShowModal = mrOk then
     Qnewpric.Fieldbyname('Updatedt').AsdateTime := BrDateForm.Date;
  End;
end;

procedure TFNewpric.QnewpricNewRecord(DataSet: TDataSet);
begin
  If Edit1.Text <>'' Then
  Qnewpric.Fieldbyname('UpdateDt').AsdateTime := Strtodate(Edit1.Text);
  Qnewpric.Fieldbyname('Time1').AsdateTime := Now;
  Qnewpric.Fieldbyname('Status').Asstring  := 'W';
end;

procedure TFNewpric.InsBtnClick(Sender: TObject);
begin
  Qnewpric.Append;
end;

procedure TFNewpric.SavBtnClick(Sender: TObject);
begin
  QNewpric.First;
  FmDmic01.Hi_Dbms.ApplyUpdates([QNewpric]);
end;

procedure TFNewpric.DBGrid1ColExit(Sender: TObject);
begin
  If (DbGrid1.SelectedField.FieldName) = 'PARTNO' Then
  begin
    If Qnewpric.Fieldbyname('Partno').asstring='' Then
    SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้า');

    With FmDmic01.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO  FROM INVMAST WHERE PARTNO =:XPARTNO ' );
      PARAMS[0].ASSTRING := Qnewpric.Fieldbyname('Partno').asstring;
      Open;
    end;

    If FmDmic01.Query1.Bof and FmDmic01.Query1.Eof Then
    Begin
      Application.CreateForm(TFsvmast,Fsvmast);
      With Fsvmast.Hquery1 Do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PARTNO,DESC1 FROM INVMAST WHERE PARTNO LIKE :XPARTNO ' );
        PARAMS[0].ASSTRING := Qnewpric.Fieldbyname('Partno').asstring+'%';
        Open;
      end;
      If (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) Then
      begin
       Fsvmast.Close;
       SFMain.RaiseException('ไม่พบรหัสสินค้า');
      end
      Else
      begin
       If Fsvmast.Showmodal=mrok Then
       Qnewpric.Fieldbyname('Partno').asstring := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
       Fsvmast.Close;
      end;
    end;

    With FmDmic01.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM INVMAST WHERE PARTNO =:XPARTNO ');
      PARAMS[0].ASSTRING := Qnewpric.Fieldbyname('Partno').asstring;
      Open;
    end;
    Qnewpric.Fieldbyname('Oldpric').AsFloat := FmDmic01.Query1.Fieldbyname('Price1').Asfloat;
  end;

end;

procedure TFNewpric.DelBtnClick(Sender: TObject);
begin
  If Qnewpric.Fieldbyname('Status').Asstring ='U' Then
  SFMain.RaiseException('Update ราคาแล้ว ลบไม่ได้');
  if MessageDlg('แน่ใจหรือไม่ที่จะลบข้อมูล ? ',mtInformation, [mbYes, mbNo], 0) = mrYes then
  Qnewpric.Delete;
end;


procedure TFNewpric.SpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TBrdateForm,BrdateForm);
  if BrDateForm.ShowModal = mrOk then
  Edit1.Text := Datetostr(BrDateForm.Date);

end;

procedure TFNewpric.Edit1Exit(Sender: TObject);
begin
  Try
   StrToDate(Edit1.Text);
  except
   MessageDlg('วันที่ไม่ถูกต้อง',mtError,[mbOK],0);
   Edit1.SetFocus;
  end;
end;

procedure TFNewpric.QnewpricAfterCancel(DataSet: TDataSet);
begin
//  Qnewpric.CancelUpdates;
end;

procedure TFNewpric.EnqBtnClick(Sender: TObject);
Var Inpdt:Tdatetime;
    Sdt,Inpstr :String;
begin
  Sdt := Edit1.Text;
  InpStr:= InputBox('วันที่ Update ราคา', 'ใส่วันที่ Update ราคา', Sdt);
  Try
   Inpdt:=StrToDate(Inpstr);
  except
   MessageDlg('วันที่ไม่ถูกต้อง',mtError,[mbOK],0);
  end;
  With Qnewpric Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM NEWPRICE WHERE UPDATEDT=:EDIT');
    Params[0].Asdate := Inpdt;
    Open;
  End;
end;

procedure TFNewpric.QnewpricAfterDelete(DataSet: TDataSet);
begin
  FmDmic01.Hi_Dbms.ApplyUpdates([QNewpric]);
end;

procedure TFNewpric.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TDlgupdate,Dlgupdate);
  Dlgupdate.Showmodal;
end;

procedure TFNewpric.DataSource1StateChange(Sender: TObject);
begin
  InsBtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete);
  Enqbtn.Enabled  := DataSource1.State=Dsbrowse;
  CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
  SavBtn.Enabled  := (DataSource1.State in DsEditmodes)and
                     ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  DBGrid1.ReadOnly :=Not ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  SpeedButton1.Enabled := ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
end;

procedure TFNewpric.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.
