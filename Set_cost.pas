unit Set_Cost;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DB, Gauges, ComCtrls, ToolWin,
  ImgList, RzDBGrid, RzSpnEdt, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeelPainters, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxContainer, cxGroupBox, cxRadioGroup, AdvGlowButton, AdvToolBar,
  AdvPanel, cxLookAndFeels, cxNavigator, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxDateRanges, BusinessSkinForm, dxStatusBar,
  AdvProgressBar;

type
  TFSetcost = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TcxGrid;
    wwDBGridTrData: TcxGridDBTableView;
    wwDBGridTrDataColumn1: TcxGridDBColumn;
    wwDBGridTrDataColumn2: TcxGridDBColumn;
    wwDBGridTrDataColumn3: TcxGridDBColumn;
    DBGrid1Level1: TcxGridLevel;
    RadioGroup1: TcxRadioGroup;
    Edit2: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    QInvmast: TFDQuery;
    SoInvmast: TDataSource;
    Query1: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    dxStatusBar1: TdxStatusBar;
    ToolButton1: TAdvGlowButton;
    Gauge1: TAdvProgressBar;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton1Click(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit2PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
                       
var
  FSetcost: TFSetcost;

implementation
uses Dmic01,uSrcDlg,DmSet1,uSoftfirm, Dmsec;
{$R *.DFM}

procedure TFSetcost.RadioGroup1Click(Sender: TObject);
begin
  Edit1.Enabled := RadioGroup1.Itemindex=0;
  Edit2.Enabled := RadioGroup1.Itemindex=1;
  Edit3.Enabled := RadioGroup1.Itemindex=1;
  Label5.Enabled := Edit1.Enabled;
  Label7.Enabled := Edit2.Enabled;
  Label8.Enabled := Edit3.Enabled;
end;

procedure TFSetcost.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  If not (ActiveControl is TcxGrid ) Then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End
  Else If (ActiveControl is TcxGrid ) Then
  With TDBGrid(ActiveControl) Do
  If Selectedindex < (FieldCount-1) Then
     Selectedindex := Selectedindex+1
  else
  begin
    Selectedindex := 2;
    QInvmast.Next;
  end;
end;

procedure TFSetcost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QInvmast.Close;
  Action := Cafree;
  FSetcost := nil;
end;

procedure TFSetcost.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSTK','HDSTK02_B_5');
  RadioGroup1.Itemindex :=0;
end;

procedure TFSetcost.SaveBtnClick(Sender: TObject);
Var  I : Integer;
    Cost : string;
    P:Longint;
begin
  if QInvmast.RecordCount = 0 then
  sfmain.RaiseException('ไม่พบข้อมูล..!<br/>กดปุ่ม Search data เพื่อเรียกข้อมูลตามเงื่อนไข');
  Gauge1.Visible := True;
  Gauge1.Max := Qinvmast.RecordCount;
  P := 0;

  QInvmast.First;
  While Not QInvmast.Eof Do
  begin
    With query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE INVENTOR SET COST=:1 WHERE PARTNO=:2');
      Params[0].Asfloat  :=QInvmast.Fieldbyname('Cost').Asfloat;
      Params[1].Asstring :=QInvmast.Fieldbyname('Partno').Asstring;
      ExecSql;
    end;

    With query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE INVANLS SET '+
                      'COST_1 = :0,COST_2 = :1,COST_3 = :2,COST_4 = :3,'+
                      'COST_5 = :4,COST_6 = :5,COST_7 = :6,COST_8 = :7,'+
                      'COST_9 = :8,COST_10= :9,COST_11= :10,COST_12 = :11 '+
                      'WHERE PARTNO=:12 AND YEAR1=:13');
      Params[0].Asfloat   := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[1].Asfloat   := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[2].Asfloat   := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[3].Asfloat   := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[4].Asfloat   := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[5].Asfloat   := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[6].Asfloat   := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[7].Asfloat   := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[8].Asfloat   := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[9].Asfloat   := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[10].Asfloat  := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[11].Asfloat  := QInvmast.Fieldbyname('Cost').Asfloat;
      Params[12].Asstring := QInvmast.Fieldbyname('Partno').Asstring;
      Params[13].Asstring := QInvmast.Fieldbyname('YEAR1').Asstring;
      ExecSql;
    end;
    inc(P);
    Gauge1.Position := P;
    Application.ProcessMessages;
    QInvmast.Next;
  end;
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDSTK02_B_5','UPDATE','Update data');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
   Gauge1.Visible := False;
end;

procedure TFSetcost.CancBtnClick(Sender: TObject);
begin
  QInvmast.Cancel;
end;

procedure TFSetcost.CloseBtnClick(Sender: TObject);
begin
 close;
end;

procedure TFSetcost.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  If not (ActiveControl is TDbGrid ) Then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End
  Else If (ActiveControl is TDbGrid ) Then
  With TDBGrid(ActiveControl) Do
  If Selectedindex < (FieldCount-1) Then
     Selectedindex := Selectedindex+1
  else
  begin
    Selectedindex := 2;
    QInvmast.Next;
  end;
end;

procedure TFSetcost.ToolButton1Click(Sender: TObject);
begin
//  SaveBtn.Enabled :=SpeedButton1.Down;
//  CancBtn.Enabled :=SpeedButton1.Down;

  If RadioGroup1.Itemindex = 0 Then
  begin
    with Qinvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,DESC1,COST,GROUP1,YEAR1 FROM INVMAST '+
              'WHERE GROUP1 LIKE :EDIT1 ');
      Params[0].Asstring := Edit1.Text+'%';
      Open;
      If Qinvmast.bof and Qinvmast.Eof Then
      sfMain.RaiseException('ไม่มีรหัสสินค้าในแฟ้มหลัก');
    end;
  end
  Else
  Begin
    with Qinvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,DESC1,COST,GROUP1,YEAR1 FROM INVMAST '+
              'WHERE PARTNO BETWEEN :0 AND :1');
       if Edit2.Text = '' then
       Params[0].Asstring := '0' else
       Params[0].Asstring := Edit2.Text;

       if Edit3.Text = '' then
       Params[1].Asstring := 'โโโ';
       Params[1].Asstring := Edit3.Text;
       Open;
      If Qinvmast.bof and Qinvmast.Eof Then
      sfMain.RaiseException('ไม่มีรหัสสินค้าในแฟ้มหลัก');
    end;
  end;
  SFMain.Do_Show_DisplayFormat_Floating(Qinvmast);
end;

procedure TFSetcost.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    Application.Createform(TfSrcDlg,fSrcDlg);
    if fSrcDlg.ShowModalGroup = Mrok Then
       Edit1.Text := fSrcDlg.Keyno;
end;

procedure TFSetcost.Edit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
    Edit2.text := fSrcDlg.KeyNo;
end;

procedure TFSetcost.Edit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
    Edit3.text := fSrcDlg.KeyNo;
end;

procedure TFSetcost.Edit2PropertiesChange(Sender: TObject);
begin
  Edit3.Text := Edit2.Text;
end;

end.
