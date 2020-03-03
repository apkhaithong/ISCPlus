unit Chgstrno;
      
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, StdCtrls, Dbkbd, Db, ExtCtrls, Mask, RzEdit, RzButton,
  RzPanel, RzRadGrp, RzSpnEdt, cxLookAndFeelPainters, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  AdvGlowButton, AdvToolBar, AdvPanel, RzPrgres, cxGraphics, cxLookAndFeels,
  BusinessSkinForm, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFChgstrno = class(TForm)
    AdvPanel1: TAdvPanel;
    Label40: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ProgressBar1: TRzProgressBar;
    rzEdit1: TcxButtonEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    rzEdit2: TcxTextEdit;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel3: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    ProcBtn1: TAdvGlowButton;
    BtnClose: TAdvGlowButton;
    procedure ProcBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RzEdit1Exit(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure rzEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rzEdit2PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChgstrno: TFChgstrno;

implementation
uses Dmsvset,uSrcDlg, USoftFirm, Dmsec;
{$R *.DFM}

procedure TFChgstrno.ProcBtn1Click(Sender: TObject);
begin
  If rZEdit1.Text = rzedit2.Text then
  SFMain.RaiseException('กรุณาตรวจสอบข้อมูล');
  If rZEdit1.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกเลขตัวถังเดิม');
  If rZEdit2.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกเลขตัวถังใหม่');

  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT STRNO FROM SVMAST WHERE STRNO=:EDIT1');
    Params[0].asstring := rZEDIT2.Text;
    Open;
    If Not(Query1.Bof and Query1.Eof) Then
    SFMain.RaiseException('ทะเบียนใหม่ มีแล้วในแฟ้มข้อมูล');
  End;

  ProgressBar1.Percent := 10;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ARBILTR SET STRNO=:EDIT1 WHERE STRNO=:EDIT2');
    Params[0].asstring := RZEDIT2.TEXT;
    Params[1].asstring := RZEDIT1.TEXT;
    ExecSql;
  End;
  
  ProgressBar1.Percent := 20;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CALLSERV SET STRNO=:EDIT1 WHERE STRNO=:EDIT2');
    Params[0].asstring := RZEDIT2.TEXT;
    Params[1].asstring := RZEDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 30;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE JOBORDER SET STRNO=:EDIT1 WHERE STRNO=:EDIT2');
    Params[0].asstring := RZEDIT2.TEXT;
    Params[1].asstring := RZEDIT1.TEXT;
    ExecSql;
  End;


  ProgressBar1.Percent := 50;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE OTHINVOI SET STRNO=:EDIT1 WHERE STRNO=:EDIT2');
    Params[0].asstring := RZEDIT2.TEXT;
    Params[1].asstring := RZEDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 60;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE QA_INVOI SET STRNO=:EDIT1 WHERE STRNO=:EDIT2');
    Params[0].asstring := RZEDIT2.TEXT;
    Params[1].asstring := RZEDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 70;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE SVPICT SET STRNO=:EDIT1 WHERE STRNO=:EDIT2');
    Params[0].asstring := RZEDIT2.TEXT;
    Params[1].asstring := RZEDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 80;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE TOPCAR SET STRNO=:EDIT1 WHERE STRNO=:EDIT2');
    Params[0].asstring := RZEDIT2.TEXT;
    Params[1].asstring := RZEDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 85;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE NEWPROB SET STRNO=:EDIT1 WHERE STRNO=:EDIT2');
    Params[0].asstring := RZEDIT2.TEXT;
    Params[1].asstring := RZEDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 90;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANJOB SET STRNO=:EDIT1 WHERE STRNO=:EDIT2');
    Params[0].asstring := RZEDIT2.TEXT;
    Params[1].asstring := RZEDIT1.TEXT;
    ExecSql;
  End;
  

  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE SVMAST SET STRNO=:EDIT1 WHERE STRNO=:EDIT3');
    Params[0].asstring := RZEDIT2.TEXT;
    Params[1].asstring := RZEDIT1.TEXT;
    ExecSql;
  End;
  //

  ProgressBar1.Percent := 100;
  ProgressBar1.Percent := 0;
  RZEdit1.Text := '';
  Edit2.Text := '';
  RZEdit2.Text := '';
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'FILE08_11', 'UPDATE', 'Update data');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  showmessage('ปรับปรุงเรียบร้อยแล้ว...');
  close;
end;


procedure TFChgstrno.Edit1Change(Sender: TObject);
begin

  //rzEdit1Exit(Sender);
end;

procedure TFChgstrno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  FChgstrno := nil;
end;

procedure TFChgstrno.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_A');
end;


procedure TFChgstrno.RzEdit1Exit(Sender: TObject);
begin
  If RZEdit1.Text<>'' Then
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SVMAST WHERE STRNO=:EDIT1');
    Params[0].asstring := RZEDIT1.Text;
    Open;
    If Query1.Bof and Query1.Eof Then
    begin
      RZEdit1.Setfocus;
      SFMain.RaiseException('ไม่พบรถเลขตัวถังนี้');
    end;
    Edit2.Text := Query1.Fieldbyname('Regno').asstring;
    Edit3.Text := Query1.Fieldbyname('Baab').asstring;
  End;
end;

procedure TFChgstrno.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFChgstrno.rzEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalSvmst=Mrok Then
  Begin
    rzEdit1.Text := fSrcDlg.Keyno;
    Edit2.Text   := fSrcDlg.qrFindDat.fieldbyname('REGNO').AsString;
  End;
end;

procedure TFChgstrno.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End;
end;

procedure TFChgstrno.rzEdit2PropertiesChange(Sender: TObject);
begin
   ProcBtn1.Enabled := rzEdit2.Text<>'';
end;

end.
