unit Endofyea;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Gauges, Spin, Db, Grids, DBGrids, ImgList,
  ComCtrls, ToolWin, RzLabel, cxControls, cxContainer, cxEdit, cxTextEdit,
  AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, BusinessSkinForm;

type
  TFEndofyea = class(TForm)
    AdvPanel1: TAdvPanel;
    Label2: TLabel;
    Gauge1: TGauge;
    Label5: TLabel;
    RzLabel1: TRzLabel;
    Edit1: TcxTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    SaveBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEndofyea: TFEndofyea;

implementation

uses
  Password, Functn01, Dmic01, Dmsec, uSoftfirm;
{$R *.DFM}

procedure TFEndofyea.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FEndofYea := nil;
end;

procedure TFEndofyea.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_4');
  if not (FmDmic01.Condpay.Active) then
    FmDmic01.Condpay.Open;
  Edit1.Text := FmDmic01.Condpay.FieldByname('Curyear').Asstring;
end;

procedure TFEndofyea.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFEndofyea.SaveBtnClick(Sender: TObject);
var
  P, Y, M, I: Longint;
  XUser_ID, XPasswd: string[8];
  XLocat, Xdepart, XLevel, ONHN, ALLO: string;
begin
  SaveBtn.EnAbled := false;

  Y := StrToInt(Edit1.Text) + 1;

  with FmDmic01.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select Year1 from Invanls Group by Year1 Having Year1=:edit1');
    Params[0].Asstring := Floattostr(Y);
    Open;
    if not (Bof and Eof) then
      if MessageDlg('สาขานี้ปิดบัญชีสต็อกสิ้นปีแล้ว ' + #13#13 + 'แน่ใจหรือไม่ที่จะปิดใหม่ ?', Mtwarning, [mbok, mbcancel], 0) <> mrok then
        Abort;
  end;

  Gauge1.Visible := True;
  Label5.Visible := True;
  CloseBtn.EnAbled := false;

  with FmDmic01.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT');
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่ข้อมูลในแฟ้มสาขา');
  end;

  FmDmic01.Query2.First;
  while not FmDmic01.Query2.Eof do
  begin
    Label5.Caption := FmDmic01.Query2.Fieldbyname('Locatnm').Asstring;
    Label5.Update;
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('select * from SYSSTAT.tables where tabname=''TMPDB2'' and TABSCHEMA =:0 ');
      Params[0].AsString := DM_SEC.XSchema;
      Open;
      if not (Bof and Eof) then
      begin
        Close;
        Sql.Clear;
        Sql.Add('DROP TABLE TMPDB2');
        ExecSQL;
      end;
        //
      Close;
      Sql.Clear;
      Sql.Add('DELETE FROM INVANLS WHERE (YEAR1=''YY'') ');
      ExecSQL;
    end;

    Gauge1.Progress := 10;
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('CREATE TABLE TMPDB2(PARTNO CHAR(20),LOCAT ' +
        'CHAR(5),YEAR1 CHAR(4),SALE_12 DECIMAL(12,2),COST_12 DECIMAL(12,2),' +
        'PRIC_12 DECIMAL(12,2),DEMN_12 DECIMAL(12,2),' +
        'ONHN_12 DECIMAL(12,2),ALLO_12 DECIMAL(12,2))');
      ExecSQL;
    end;
      //
    Gauge1.Progress := 25;
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('INSERT INTO TMPDB2(PARTNO,LOCAT,YEAR1,SALE_12,COST_12,' +
        'PRIC_12,DEMN_12,ONHN_12,ALLO_12) ' +
        'SELECT PARTNO,LOCAT,YEAR1,SALE_12,COST_12,' +
        'PRIC_12,DEMN_12,ONHN_12,ALLO_12 FROM INVANLS WHERE YEAR1=:EDIT1 AND LOCAT=:EDIT2');

      Params[0].asstring := Edit1.text;
      Params[1].asstring := FmDmic01.Query2.FieldByname('Locatcd').Asstring;
      ExecSQL;
    end;
    Gauge1.Progress := 50;

      //
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('INSERT INTO INVANLS(PARTNO,LOCAT,YEAR1,SALE_13,COST_13,' +
        'PRIC_13,DEMN_13,ONHN_13,ALLO_13) ' +
        'SELECT A.PARTNO,A.LOCAT,''YY'',B.SALE_12,B.COST_12,' +
        'B.PRIC_12,B.DEMN_12,B.ONHN_12,B.ALLO_12 FROM INVANLS A,TMPDB2 B ' +
        'WHERE A.YEAR1=:0 AND A.PARTNO=B.PARTNO AND A.LOCAT=B.LOCAT');
      Params[0].asstring := Edit1.text;
      ExecSQL;
    end;
    Gauge1.Progress := 60;

    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE INVANLS SET YEAR1=:0,ONHN_1=ONHN_13,ALLO_1=ALLO_13,' +
        'ONHN_2=ONHN_13,ALLO_2=ALLO_13,ONHN_3=ONHN_13,ALLO_3=ALLO_13,' +
        'ONHN_4=ONHN_13,ALLO_4=ALLO_13,ONHN_5=ONHN_13,ALLO_5=ALLO_13,' +
        'ONHN_6=ONHN_13,ALLO_6=ALLO_13,ONHN_7=ONHN_13,ALLO_7=ALLO_13,' +
        'ONHN_8=ONHN_13,ALLO_8=ALLO_13,ONHN_9=ONHN_13,ALLO_9=ALLO_13,' +
        'ONHN_10=ONHN_13,ALLO_10=ALLO_13,ONHN_11=ONHN_13,ALLO_11=ALLO_13,' +
        'ONHN_12=ONHN_13,ALLO_12=ALLO_13, ' +
        'COST_1=COST_13,PRIC_1=PRIC_13, ' +
        'COST_2=COST_13,PRIC_2=PRIC_13,COST_3=COST_13,PRIC_3=PRIC_13,' +
        'COST_4=COST_13,PRIC_4=PRIC_13,COST_5=COST_13,PRIC_5=PRIC_13,' +
        'COST_6=COST_13,PRIC_6=PRIC_13,COST_7=COST_13,PRIC_7=PRIC_13,' +
        'PRIC_8=PRIC_13,COST_8=COST_13,PRIC_9=PRIC_13,COST_9=COST_13,' +
        'COST_10=COST_13,PRIC_10=PRIC_13,COST_11=COST_13,PRIC_11=PRIC_13,' +
        'COST_12=COST_13,PRIC_12=PRIC_13 ' +
        ' WHERE YEAR1=''YY'' ');
      Params[0].asstring := Inttostr(Y);
      ExecSQL;
    end;
    Gauge1.Progress := 80;
      //
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('DROP TABLE TMPDB2');
      ExecSQL;
    end;
    Gauge1.Progress := 100;

    FmDmic01.Query2.Next;
  end;

  Gauge1.Progress := 10;
  with FmDmic01.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE INVENTOR SET YEAR1=:EDIT1');
    Params[0].asstring := Inttostr(Y);
    ExecSQL;
  end;
  Gauge1.Progress := 50;
  with FmDmic01.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE INVMAST SET YEAR1=:EDIT1');
    Params[0].asstring := Inttostr(Y);
    ExecSQL;
  end;
  Gauge1.Progress := 70;
  FmDmic01.Condpay.Edit;
  FmDmic01.Condpay.FieldByname('Curyear').Asstring := Inttostr(Y);
  FmDmic01.Condpay.FieldByname('CurMonth').Asstring := '01';
  FmDmic01.Condpay.Post;
  Dm_Sec.HI_DBMS.ApplyUpdates([FmDmic01.Condpay]);
  Gauge1.Progress := 100;
  Edit1.Text := FmDmic01.Condpay.FieldByname('Curyear').Asstring;
  Update;
  Gauge1.Progress := 0;
  SaveBtn.EnAbled := True;
  CloseBtn.EnAbled := True;
  Gauge1.Visible := False;
  Label5.Visible := False;
  RzLaBel1.Visible := True;
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'FILE08_2', 'UPDATE', 'Update data');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

end.

