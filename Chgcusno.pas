unit Chgcusno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, StdCtrls, Dbkbd, Db, ExtCtrls, 
  RzPanel, RzRadGrp,  RzPrgres, RzSpnEdt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFChgcusno = class(TForm)
    Label40: TLabel;
    Label41: TLabel;
    Label1: TLabel;
    Query1: TFDQuery;
    ProgressBar1: TRzProgressBar;
    RadioGroup1: TRadioGroup;
    ProcBtn1: TRzRapidFireButton;
    Button2: TRzRapidFireButton;
    procedure ProcBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Office97Button2Click(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit5ButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChgcusno: TFChgcusno;

implementation
uses Dmset1,uSrcDlg;
{$R *.DFM}

procedure TFChgcusno.ProcBtn1Click(Sender: TObject);
begin
  If Edit1.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้าเดิม');
  If Edit5.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้าใหม่');


  ProgressBar1.Percent := 10;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE STKCARD SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 15;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANPKHD SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 20;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANICHD SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 25;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANICTR SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 30;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANJOB SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 35;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ARBILL SET CUSCODE=:EDIT1 WHERE CUSCODE=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 40;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ARINVOI SET CUSCODE=:EDIT1 WHERE CUSCODE=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 45;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE AR_SERV SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 50;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ARPAYTRN SET CUSCODE=:EDIT1 WHERE CUSCODE=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 55;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE BOOKSERV SET CUSCODE=:EDIT1 WHERE CUSCODE=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 60;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE IC_INVOI SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 65;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE IC_TRANS SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 70;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE JOBORDER SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 75;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE OTHINVOI SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent:= 80;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE PK_INVOI SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 82;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE QAINVOI SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 85;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE SVMAST SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 87;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE SV_ORDIV SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 90;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE TAXBUY SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 92;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE TAXSAL SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 95;

  If RadioGroup1.Itemindex =0 then
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ARMAST SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  //
  If RadioGroup1.Itemindex =1 then
  begin
    With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CUSCOD FROM ARMAST WHERE CUSCOD=:EDIT1 ');
    Params[0].asstring := EDIT5.TEXT;
    Open;
    If bof and eof then
    SFMain.RaiseException('ไม่พบรหัสนี้ในแฟ้มข้อมูล');
  End;

  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM ARMAST WHERE CUSCOD=:EDIT');
    Params[0].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  end;

  ProgressBar1.Percent := 100;
  ProgressBar1.Percent := 0;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit5.Text := '';
end;


procedure TFChgcusno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFChgcusno.FormCreate(Sender: TObject);
begin
  RadioGroup1.itemindex :=0;
end;


procedure TFChgcusno.Office97Button2Click(Sender: TObject);
begin
        Close;
end;

procedure TFChgcusno.Edit1ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalAR=Mrok Then
  Edit1.Text := fSrcDlg.Keyno;
end;

procedure TFChgcusno.Edit1Change(Sender: TObject);
begin
  ProcBtn1.Enabled := Edit1.Text<>'';
  Edit1Exit(Sender);
end;

procedure TFChgcusno.Edit1Exit(Sender: TObject);
begin
  If Edit1.Text<>'' Then
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ARMAST WHERE CUSCOD=:EDIT1');
    Params[0].asstring := EDIT1.Text;
    Open;
    If Query1.Bof and Query1.Eof Then
    begin
      Edit1.Setfocus;
      SFMain.RaiseException('ไม่พบรหัสลูกค้า');
    end;
    Edit2.Text := Query1.Fieldbyname('name1').asstring+' '+
                  Query1.Fieldbyname('name2').asstring;
  End;
end;

procedure TFChgcusno.Edit5ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalAR=Mrok Then
  Edit5.Text := fSrcDlg.Keyno;
end;

procedure TFChgcusno.Button1Click(Sender: TObject);
begin
  If Edit1.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้าเดิม');
  If Edit5.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้าใหม่');


  ProgressBar1.Percent := 10;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE STKCARD SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 15;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANPKHD SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 20;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANICHD SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 25;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANICTR SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 30;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANJOB SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 35;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ARBILL SET CUSCODE=:EDIT1 WHERE CUSCODE=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 40;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ARINVOI SET CUSCODE=:EDIT1 WHERE CUSCODE=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 45;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE AR_SERV SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 50;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ARPAYTRN SET CUSCODE=:EDIT1 WHERE CUSCODE=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 55;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE BOOKSERV SET CUSCODE=:EDIT1 WHERE CUSCODE=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 60;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE IC_INVOI SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 65;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE IC_TRANS SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 70;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE JOBORDER SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 75;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE OTHINVOI SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent:= 80;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE PK_INVOI SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 82;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE QAINVOI SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 85;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE SVMAST SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 87;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE SV_ORDIV SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 90;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE TAXBUY SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 92;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE TAXSAL SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 95;

  If RadioGroup1.Itemindex =0 then
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ARMAST SET CUSCOD=:EDIT1 WHERE CUSCOD=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  //
  If RadioGroup1.Itemindex =1 then
  begin
    With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CUSCOD FROM ARMAST WHERE CUSCOD=:EDIT1 ');
    Params[0].asstring := EDIT5.TEXT;
    Open;
    If bof and eof then
    SFMain.RaiseException('ไม่พบรหัสนี้ในแฟ้มข้อมูล');
  End;

  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM ARMAST WHERE CUSCOD=:EDIT');
    Params[0].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  end;

  ProgressBar1.Percent := 100;
  ProgressBar1.Percent := 0;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit5.Text := '';
end;

procedure TFChgcusno.Button2Click(Sender: TObject);
begin
    Close;
end;

end.
