unit EnqBack;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, Mask, DBCtrls, ComCtrls,
  ImgList, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, AdvGlowButton, cxDropDownEdit, cxCalendar,
  cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters,
  cxNavigator, dxCore, cxDateUtils, dxDateRanges;

type
  TFmEnqBack = class(TForm)
    DBGrid1: TcxGrid;
    DBGrid1DBTableView1: TcxGridDBTableView;
    DBGrid1DBTableView1PARTNO: TcxGridDBColumn;
    DBGrid1DBTableView1DESC1: TcxGridDBColumn;
    DBGrid1DBTableView1QTYBOD: TcxGridDBColumn;
    DBGrid1DBTableView1PKNO: TcxGridDBColumn;
    DBGrid1DBTableView1PKDATE: TcxGridDBColumn;
    DBGrid1DBTableView1CUSCOD: TcxGridDBColumn;
    DBGrid1DBTableView1PKLOCAT: TcxGridDBColumn;
    DBGrid1DBTableView1OFFICCOD: TcxGridDBColumn;
    DBGrid1DBTableView1BackFlg: TcxGridDBColumn;
    DBGrid1Level1: TcxGridLevel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit1: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    FDate: TcxDateEdit;
    TDate: TcxDateEdit;
    EnqBtn: TAdvGlowButton;
    ToolButton1: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEnqBack: TFmEnqBack;
  XDate,FrmDate,ToDate : TDateTime;
  XDay,XYear,XMonth : Word;

implementation

uses Dmic01,DmSet1,uSrcDlg, USoftFirm;

{$R *.DFM}

procedure TFmEnqBack.BitBtn1Click(Sender: TObject);
begin
  If Edit1.Text ='' Then SFMain.RaiseException('ยังไม่บันทึกรหัสสาขา');

  With FmDmic01.QEnqbk Do
  begin
    Close;             
    Sql.Clear;
    Sql.Add('SELECT A.Pkno,A.PkDate,A.Pklocat,A.Cuscod,A.Officcod, '+
            'B.Pkno,B.PkDate,B.Pklocat,B.Partno,B.Uprice,B.Qtyord-B.qtyout AS QtyBod, '+
            'B.BackFlg,C.Partno,C.Desc1 '+
            'FROM Pk_invoi A,Pk_trans B,Inventor C '+
            'WHERE (A.Pklocat =:Xrecvloc) and (A.Pkno = B.Pkno) '+
            'and (A.PkDate >=:XDate) and (A.PkDate <=:XDate1) and A.Cuscod Like :Xcuscod '+
            'And (B.Partno = C.Partno) and (B.Pklocat = C.Locat) and (B.BackFlg = ''Y'') '+
            'Order By A.Cuscod,B.Partno ');
    Params[0].AsString  := Edit1.text;
    Params[1].AsDate    := Fdate.Date;
    Params[2].AsDate    := Tdate.Date;
    Params[3].AsString  := Edit4.text+'%';
    Open;
  end;
  If FmDmic01.QEnqbk.Bof and FmDmic01.QEnqbk.Eof Then
     SFMain.RaiseException('ไม่มีข้อมูล');
end;

procedure TFmEnqBack.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmDmic01.QEnqbk.Close;
  FmEnqBack := Nil;
  Action :=caFree;
end;

procedure TFmEnqBack.FormShow(Sender: TObject);
begin
  FmDmic01.QEnqbk.Close;
  Edit1.Text := sfMain.Xlocat;
  with FmDmic01.Query1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:XCODE');
   PARAMS[0].ASSTRING :=EDIT1.TEXT;
   Open ;
  end;
   Fdate.Date := Date;
   Tdate.Date := Date;
end;

procedure TFmEnqBack.BitBtn3Click(Sender: TObject);
begin
  If FmDmic01.QEnqbk.FieldByName('PARTNO').AsString = '' Then
     SFMain.RaiseException('ยังไม่ข้อมูล');

  with FmDmic01.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Update Pk_trans Set Backflg='''' where Backflg=''Y'' and Partno=:edit1 and Pkno=:edit2 ');
    Params[0].AsString := FmDmic01.QEnqbk.FieldByName('PARTNO').AsString;
    Params[1].AsString := FmDmic01.QEnqbk.FieldByName('Pkno').AsString;
    Execsql;
  end;

  With FmDmic01.QEnqbk Do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.Pkno,A.PkDate,A.Pklocat,A.Cuscod,A.Officcod, '+
            'B.Pkno,B.PkDate,B.Pklocat,B.Partno,B.Uprice,B.Qtyord-B.qtyout AS QtyBod, '+
            'B.BackFlg,C.Partno,C.Desc1 '+
            'FROM Pk_invoi A,Pk_trans B,Inventor C '+
            'WHERE (A.Pklocat =:Xrecvloc) and (A.Pkno = B.Pkno) '+
            'and (A.PkDate >=:XDate) and (A.PkDate <=:XDate1) and A.Cuscod Like :Xcuscod '+
            'And (B.Partno = C.Partno) and (B.Pklocat = C.Locat) and (B.BackFlg = ''Y'') '+
            'Order By A.Pklocat,B.Pklocat ');
    Params[0].AsString  := Edit1.text;
    Params[1].AsDate    := Fdate.Date;
    Params[2].AsDate    := Tdate.Date;
    Params[3].AsString  := Edit1.text+'%';
    Open;
  end;
end;


procedure TFmEnqBack.CloseBtnClick(Sender: TObject);
begin
 close;
end;

procedure TFmEnqBack.EnqBtnClick(Sender: TObject);
begin
  If Edit1.Text ='' Then SFMain.RaiseException('ยังไม่บันทึกรหัสสาขา');

  With FmDmic01.QEnqbk Do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.Pkno,A.PkDate,A.Pklocat,A.Cuscod,A.Officcod, '+
            'B.Pkno,B.PkDate,B.Pklocat,B.Partno,B.Uprice,B.Qtyord-B.qtyout AS QtyBod, '+
            'B.BackFlg,C.Partno,C.Desc1 '+
            'FROM Pk_invoi A,Pk_trans B,Inventor C '+
            'WHERE (A.Pklocat =:Xrecvloc) and (A.Pkno = B.Pkno) '+
            'and (A.PkDate >=:XDate) and (A.PkDate <=:XDate1) and A.Cuscod Like :Xcuscod '+
            'And (B.Partno = C.Partno) and (B.Pklocat = C.Locat) and (B.BackFlg = ''Y'') '+
            'Order By A.Cuscod,B.Partno ');
    Params[0].AsString  := Edit1.text;
    Params[1].AsDate    := Fdate.Date;
    Params[2].AsDate    := Tdate.Date;
    Params[3].AsString  := Edit4.text+'%';
    Open;
  end;
  If FmDmic01.QEnqbk.Bof and FmDmic01.QEnqbk.Eof Then
     SFMain.RaiseException('ไม่มีข้อมูล');
end;

procedure TFmEnqBack.ToolButton1Click(Sender: TObject);
begin
  If FmDmic01.QEnqbk.FieldByName('PARTNO').AsString = '' Then
     SFMain.RaiseException('ยังไม่ข้อมูล');

  with FmDmic01.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Update Pk_trans Set Backflg='''' where Backflg=''Y'' and Partno=:edit1 and Pkno=:edit2 ');
    Params[0].AsString := FmDmic01.QEnqbk.FieldByName('PARTNO').AsString;
    Params[1].AsString := FmDmic01.QEnqbk.FieldByName('Pkno').AsString;
    Execsql;
  end;

  With FmDmic01.QEnqbk Do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.Pkno,A.PkDate,A.Pklocat,A.Cuscod,A.Officcod, '+
            'B.Pkno,B.PkDate,B.Pklocat,B.Partno,B.Uprice,B.Qtyord-B.qtyout AS QtyBod, '+
            'B.BackFlg,C.Partno,C.Desc1 '+
            'FROM Pk_invoi A,Pk_trans B,Inventor C '+
            'WHERE (A.Pklocat =:Xrecvloc) and (A.Pkno = B.Pkno) '+
            'and (A.PkDate >=:XDate) and (A.PkDate <=:XDate1) and A.Cuscod Like :Xcuscod '+
            'And (B.Partno = C.Partno) and (B.Pklocat = C.Locat) and (B.BackFlg = ''Y'') '+
            'Order By A.Pklocat,B.Pklocat ');
    Params[0].AsString  := Edit1.text;
    Params[1].AsDate    := Fdate.Date;
    Params[2].AsDate    := Tdate.Date;
    Params[3].AsString  := Edit4.text+'%';
    Open;
  end;
end;

procedure TFmEnqBack.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSTK','HDSTK02_C_3');
end;

procedure TFmEnqBack.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
    Edit1.Text := fSrcDlg.KeyNo;
end;

procedure TFmEnqBack.Edit4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalAR=Mrok Then
     Edit4.Text := fSrcDlg.Keyno;
end;

procedure TFmEnqBack.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl,0,0);
    Key := #0;
  end;
end;

end.
