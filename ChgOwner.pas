unit ChgOwner;
        
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ComCtrls, RzButton, RzSpnEdt, RzPrgres, AdvGlowButton,
  AdvToolBar, ExtCtrls, AdvPanel, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxButtonEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  BusinessSkinForm;

type
  TChangowner = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ProgressBar1: TRzProgressBar;
    Edit1: TcxButtonEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxButtonEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel3: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    ProcBtn1: TAdvGlowButton;
    BtnClose: TAdvGlowButton;
    procedure ProcBtn1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit3PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Changowner: TChangowner;

implementation

uses Dmsvset,uSrcDlg, USoftFirm, Dmsec;

{$R *.DFM}

procedure TChangowner.ProcBtn1Click(Sender: TObject);
begin
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT Strno FROM SVMAST WHERE STRNO=:0');
    Params[0].asstring := Edit1.Text;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรถหมายเลขถังนี้');
  end;
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT CUSCOD FROM CUSTMAST WHERE CUSCOD=:0');
    Params[0].asstring := Edit3.Text;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ยังไม่ตั้งรหัสลูกค้าคนใหม่');
  end;

  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE SVMAST SET CUSCOD=:1 WHERE STRNO=:2 AND CUSCOD=:3');
    Params[0].asstring := Edit3.Text;
    Params[1].asstring := Edit1.Text;
    Params[2].asstring := Edit2.Text;
    ExecSql;
  end;
  ProgressBar1.Percent := 10;
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE JOBORDER SET CUSCOD=:1 WHERE STRNO=:2 AND CUSCOD=:3');
    Params[0].asstring := Edit3.Text;
    Params[1].asstring := Edit1.Text;
    Params[2].asstring := Edit2.Text;
    ExecSql;
  end;
  ProgressBar1.Percent := 20;
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE STKCARD SET CUSCOD=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
    Params[0].asstring := Edit3.Text;
    Params[1].asstring := Edit1.Text;
    ExecSql;
  end;
  ProgressBar1.Percent := 30;
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARINVOI SET CUSCODE=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
    Params[0].asstring := Edit3.Text;
    Params[1].asstring := Edit1.Text;
    ExecSql;
  end;
  ProgressBar1.Percent := 40;
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARPAYTRN SET CUSCODE=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
    Params[0].asstring := Edit3.Text;
    Params[1].asstring := Edit1.Text;
    ExecSql;
  end;
  ProgressBar1.Percent := 50;
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE OTHINVOI SET CUSCOD=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
    Params[0].asstring := Edit3.Text;
    Params[1].asstring := Edit1.Text;
    ExecSql;
  end;
  ProgressBar1.Percent := 70;
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE PK_INVOI SET CUSCOD=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
    Params[0].asstring := Edit3.Text;
    Params[1].asstring := Edit1.Text;
    ExecSql;
  end;
  ProgressBar1.Percent := 90;
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE TAXSAL SET CUSCOD=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
    Params[0].asstring := Edit3.Text;
    Params[1].asstring := Edit1.Text;
    ExecSql;
  end;

  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE AR_SERV SET CUSCOD=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
    Params[0].asstring := Edit3.Text;
    Params[1].asstring := Edit1.Text;
    ExecSql;
  end;

  ProgressBar1.Percent := 100;
  ProgressBar1.Percent := 0;
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'FILE08_14', 'UPDATE', 'Update data');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TChangowner.Edit3Change(Sender: TObject);
begin
  ProcBtn1.Enabled := Edit3.Text<>'';
end;

procedure TChangowner.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TChangowner.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalSvmst=Mrok Then
  Begin
    Edit1.Text := fSrcDlg.Keyno;
    Edit2.Text := fSrcDlg.qrFindDat.Fieldbyname('Cuscod').Asstring;
  End;
end;

procedure TChangowner.Edit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalAr=Mrok Then
  Edit3.Text := fSrcDlg.Keyno;
end;

procedure TChangowner.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End;
end;

procedure TChangowner.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Changowner := nil;
end;

procedure TChangowner.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_B');
end;

procedure TChangowner.Edit3PropertiesChange(Sender: TObject);
begin
  ProcBtn1.Enabled := Edit3.Text <> '';
end;

end.
