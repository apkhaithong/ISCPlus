unit AdjPric;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Gauges, ExtCtrls, ImgList, ComCtrls, ToolWin, RzSpnEdt,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, BusinessSkinForm;

type
  TFAdjprc = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Gauge1: TGauge;
    Edit1: TcxButtonEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    SaveBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
             
var
  FAdjprc: TFAdjprc;

implementation
Uses Dmset1,uSrcDlg,uSoftfirm, Dmsec;
{$R *.DFM}

procedure TFAdjprc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FAdjprc := nil;
end;

procedure TFAdjprc.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFAdjprc.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_1');
end;

procedure TFAdjprc.SaveBtnClick(Sender: TObject);
Var P:Longint;
begin
  If Edit1.Text ='' Then SFMain.RaiseException('ยังไม่ระบุสาขา');
  Gauge1.Visible := True;
  with Dm_Set1.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST ');
    Open;
    If Dm_Set1.Query1.bof and Dm_Set1.Query1.Eof Then
    SFMain.RaiseException('ไม่มีรหัสสินค้าในแฟ้มหลัก');
  end;
  Gauge1.MaxValue :=Dm_set1.Query1.RecordCount;
  P := 0;
  Dm_Set1.Query1.First;
  While Not Dm_Set1.Query1.Eof Do
  begin
    with Dm_Set1.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE INVENTOR SET PRICE1=:P1,PRICE2=:P2,PRICE3=:P3,PRICE4=:P4 '+
      'WHERE LOCAT =:EDIT1 AND PARTNO=:EDIT2 ');
      Params[0].Asfloat := Dm_Set1.Query1.Fieldbyname('Price1').Asfloat;
      Params[1].Asfloat := Dm_Set1.Query1.Fieldbyname('Price2').Asfloat;
      Params[2].Asfloat := Dm_Set1.Query1.Fieldbyname('Price3').Asfloat;
      Params[3].Asfloat := Dm_Set1.Query1.Fieldbyname('Price4').Asfloat;
      Params[4].Asstring:= Edit1.Text;
      Params[5].Asstring:= Dm_Set1.Query1.Fieldbyname('Partno').Asstring;
      ExecSql;
    end;
    P:=P+1;
    Gauge1.Progress := P;
    Dm_Set1.Query1.Next;
  end;

      Dm_sec.ChkRecent(SFMain.Xuser_ID,'FILE08_1','UPDATE','Update data');
  if DM_SEC.qrRecent.Active then
    if DM_SEC.qrRecent.ApplyUpdates = 0 then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFAdjprc.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XCUSCOD ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
    SFMain.RaiseException('ไม่พบข้อมูล');
    Edit1.text := Dm_Set1.Query1.FieldByName('LOCATCD').Asstring;
  end;
end;

end.
