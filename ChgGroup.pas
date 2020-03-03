unit ChgGroup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, StdCtrls, Dbkbd, Db, Mask, RzEdit, RzPrgres, ExtCtrls,
  RzPanel, RzSpnEdt, AdvGlowButton, AdvToolBar, AdvPanel, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, BusinessSkinForm;

type
  TFChggroup = class(TForm)
    AdvPanel1: TAdvPanel;
    Label40: TLabel;
    Label1: TLabel;
    ProgressBar1: TRzProgressBar;
    cxButtonEdit1: TcxButtonEdit;
    Edit2: TcxTextEdit;
    Query1: TFDQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    ProcBtn1: TAdvGlowButton;
    BtnClose: TAdvGlowButton;
    Edit5: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    procedure ProcBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure Office97Button1Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChggroup: TFChggroup;

implementation
uses Dmic01,uSrcDlg, USoftFirm, Dmsec;
{$R *.DFM}

procedure TFChggroup.ProcBtn1Click(Sender: TObject);
begin
  if cxButtonEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสกลุ่มเดิม');
  if Edit5.Text = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสกลุ่มใหม่');

  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE Inventor set Group1=:edit1 where Group1=:edit2 ');
    params[0].asstring := Edit5.Text;
    params[1].asstring := cxButtonEdit1.Text;
    Execsql;
    ProgressBar1.Percent := 10;
   //
    Close;
    Sql.Clear;
    Sql.Add('UPDATE invmast set group1=:edit1 where group1=:edit2');
    params[0].asstring := Edit5.Text;
    params[1].asstring := cxButtonEdit1.Text;
    Execsql;
    ProgressBar1.Percent := 30;
   //
    Close;
    Sql.Clear;
    Sql.Add('UPDATE pk_trans  Set Group1=:edit1 where Group1=:edit2');
    params[0].asstring := Edit5.Text;
    params[1].asstring := cxButtonEdit1.Text;
    Execsql;
    ProgressBar1.Percent := 50;
   //
    Close;
    Sql.Clear;
    Sql.Add('UPDATE Parttran  Set Group1=:edit1 where Group1=:edit2');
    params[0].asstring := Edit5.Text;
    params[1].asstring := cxButtonEdit1.Text;
    Execsql;
    ProgressBar1.Percent := 60;
   //
    Close;
    Sql.Clear;
    Sql.Add('UPDATE Tmpajiv  Set Group1=:edit1 where group1=:edit2');
    params[0].asstring := Edit5.Text;
    params[1].asstring := cxButtonEdit1.Text;
    Execsql;
    ProgressBar1.Percent := 80;
   //
    Close;
    Sql.Clear;
    Sql.Add('UPDATE Tmpajtr Set Group1=:edit1 where Group1=:edit2');
    params[0].asstring := Edit5.Text;
    params[1].asstring := cxButtonEdit1.Text;
    Execsql;
   //
    Close;
    Sql.Clear;
    Sql.Add('UPDATE Groupmst Set Groupcod=:edit1 where Groupcod=:edit2');
    params[0].asstring := Edit5.Text;
    params[1].asstring := cxButtonEdit1.Text;
    Execsql;

    ProgressBar1.Percent := 100;
    ProgressBar1.Percent := 0;
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'FILE08_8', 'UPDATE', 'Update data');
    if DM_SEC.qrRecent.UpdatesPending then
      if (DM_SEC.qrRecent.ApplyUpdates = 0) then
        DM_SEC.qrRecent.CommitUpdates
      else
        raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  end;
end;


procedure TFChggroup.Edit1Change(Sender: TObject);
begin
  ProcBtn1.Enabled := cxButtonEdit1.Text<>'';
end;

procedure TFChggroup.Edit1Exit(Sender: TObject);
begin
  If cxButtonEdit1.Text<>'' Then
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GROUPMST WHERE GROUPCOD=:EDIT1');
    Params[0].asstring := cxButtonEdit1.Text;
    Open;
    If Query1.Bof and Query1.Eof Then
    begin
      cxButtonEdit1.Setfocus;
      SFMain.RaiseException('ไม่พบรหัสกลุ่มสินค้า');
    end;
    Edit2.Text := Query1.Fieldbyname('groupnam').asstring;
  End;
end;

procedure TFChggroup.Edit1ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalGroup=Mrok Then
  Begin
   cxButtonEdit1.Text := fSrcDlg.Keyno;
   Edit2.Text := fSrcDlg.qrFindDat.Fieldbyname('groupnam').asstring;
  end;
end;

procedure TFChggroup.Office97Button1Click(Sender: TObject);
begin
       Close;
end;

procedure TFChggroup.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFChggroup.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalGroup=Mrok Then
  Begin
   cxButtonEdit1.Text := fSrcDlg.Keyno;
   Edit2.Text := fSrcDlg.qrFindDat.Fieldbyname('groupnam').asstring;
  end;
end;

procedure TFChggroup.cxButtonEdit1Exit(Sender: TObject);
begin
  If cxButtonEdit1.Text<>'' Then
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GROUPMST WHERE GROUPCOD=:EDIT1');
    Params[0].asstring := cxButtonEdit1.Text;
    Open;
    If Query1.Bof and Query1.Eof Then
    begin
      cxButtonEdit1.Setfocus;
      SFMain.RaiseException('ไม่พบรหัสกลุ่มสินค้า');
    end;
    Edit2.Text := Query1.Fieldbyname('groupnam').asstring;
  End;
end;

procedure TFChggroup.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End;
end;

procedure TFChggroup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FChggroup := nil;  
end;

procedure TFChggroup.cxButtonEdit1PropertiesChange(Sender: TObject);
begin
  ProcBtn1.Enabled := cxButtonEdit1.Text<>'';
end;

procedure TFChggroup.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_7');
end;

procedure TFChggroup.Edit5PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalGroup=Mrok Then
  Begin
   Edit5.Text := fSrcDlg.Keyno;
   cxTextEdit1.Text := fSrcDlg.qrFindDat.Fieldbyname('groupnam').asstring;
  end;
end;

end.
