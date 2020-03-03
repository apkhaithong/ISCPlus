unit Stin09;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask, DB, ComCtrls,
  Gauges, ImgList, ToolWin, RzSpnEdt, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxLookAndFeelPainters, cxGroupBox,
  cxRadioGroup, cxSpinEdit, cxSpinButton, cxTextEdit, cxMaskEdit, cxCheckBox,
  cxContainer, cxDBEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxLookAndFeels,
  cxNavigator, dxDateRanges, BusinessSkinForm, RzLabel, RzDBLbl;

type
  TFmSTIn09 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Gauge1: TGauge;
    Label7: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranPRICE1: TcxGridDBColumn;
    cxGridTranPRICE2: TcxGridDBColumn;
    cxGridTranPRICE3: TcxGridDBColumn;
    cxGridTranPRICE4: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    DBEdit2: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    CheckBox1: TcxCheckBox;
    Edit1: TcxButtonEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    UpDown1: TcxSpinButton;
    RadioGp1: TcxRadioGroup;
    RadioGp2: TcxRadioGroup;
    DataSource1: TDataSource;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    ProcBtn1: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    RzDBLabel1: TRzDBLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RadioGp1Click(Sender: TObject);
    procedure ProcBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTIn09: TFmSTIn09;
  XDate: TDateTime;
  XDay, XMonth, XYear: Word;

implementation

uses
  Dmic01, uSrcDlg, DmSet1, Dmsec, uSoftfirm;
{$R *.DFM}

var
  XRECVNO: string;

procedure TFmSTIn09.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmDmic01.InvMst9.Close;
  FmDmic01.Tinven9.Close;
  FmDmic01.QDbconfig.close;
  fMstiN09 := Nil;
  Action := Cafree;
end;

procedure TFmSTIn09.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSTK', 'HDSTK02_B_2');
  FmDmic01.QDbconfig.Open;
  RadioGp1.ItemIndex := 0;
  RadioGp2.ItemIndex := 0;
  if not FmDmic01.CondPay.Active then
    FmDmic01.CondPay.Open;
end;

procedure TFmSTIn09.RadioGp1Click(Sender: TObject);
begin
  if RadioGp1.ItemIndex = 0 then
  begin
    Edit3.enabled := False;
    Label2.enabled := False;
    RadioGp2.enabled := False;
    UpDown1.enabled := False;
  end;
  if RadioGp1.ItemIndex = 1 then
  begin
    Edit3.enabled := True;
    Label2.enabled := True;
    RadioGp2.enabled := True;
    UpDown1.enabled := True;
  end;
end;

procedure TFmSTIn09.ProcBtn1Click(Sender: TObject);
var
  X, L2, L3, L4: double;
  P, Max: Longint;
begin
  if FmDmic01.QDbconfig.State in Dseditmodes then
    FmDmic01.QDbconfig.Post;
  if Edit1.text = '' then
    sfMain.RaiseException('ไม่มีกลุ่มสินค้า');

  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_B_2', 'UPDATE', 'Update data');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  FmDmic01.Tinven9.Open;
  if FmSTIn09.RadioGp1.ItemIndex = 0 then
  begin
    while not FmDmic01.InvMst9.Eof do
    begin
      while not FmDmic01.Tinven9.Eof do
      begin
        FmDmic01.Tinven9.Edit;
        FmDmic01.Tinven9.FieldByName('Price1').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat;
        FmDmic01.Tinven9.FieldByName('Price2').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat;
        FmDmic01.Tinven9.FieldByName('Price3').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat;
        FmDmic01.Tinven9.FieldByName('Price4').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat;
        FmDmic01.Tinven9.Next;
      end;
      FmDmic01.InvMst9.Next;
    end;
  end;

  if FmSTIn09.RadioGp1.ItemIndex = 1 then
  begin
    Gauge1.Visible := True;
    Gauge1.MaxValue := FmDmic01.InvMst9.RecordCount;
    P := 0;

    X := strtofloat(FmSTIn09.Edit3.text);
    L2 := FmDmic01.QDbconfig.Fieldbyname('C_PRC2').AsFloat;
    L3 := FmDmic01.QDbconfig.Fieldbyname('C_PRC3').AsFloat;
    L4 := FmDmic01.QDbconfig.Fieldbyname('C_PRC4').AsFloat;

    if FmSTIn09.RadioGp2.ItemIndex = 0 then
    begin
      while not FmDmic01.InvMst9.Eof do
      begin
        FmDmic01.InvMst9.Edit;
        if CheckBox1.Checked then
        begin
          FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat * (1 + X / 100));
          FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat * (1 + L2 / 100));
          FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat * (1 + L3 / 100));
          FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat * (1 + L4 / 100));
        end
        else
        begin
          FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat * (1 + X / 100);
          FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat * (1 + L2 / 100);
          FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat * (1 + L3 / 100);
          FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat * (1 + L4 / 100);
        end;

        while not FmDmic01.Tinven9.Eof do
        begin
          FmDmic01.Tinven9.Edit;
          if CheckBox1.Checked then
          begin
            FmDmic01.Tinven9.FieldByName('Price1').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat);
            FmDmic01.Tinven9.FieldByName('Price2').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat);
            FmDmic01.Tinven9.FieldByName('Price3').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat);
            FmDmic01.Tinven9.FieldByName('Price4').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat);
          end
          else
          begin
            FmDmic01.Tinven9.FieldByName('Price1').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat;
            FmDmic01.Tinven9.FieldByName('Price2').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat;
            FmDmic01.Tinven9.FieldByName('Price3').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat;
            FmDmic01.Tinven9.FieldByName('Price4').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat;
          end;

          FmDmic01.Tinven9.Next;
        end;
        P := P + 1;
        Gauge1.Progress := P;
        FmDmic01.InvMst9.Next;
      end;
    end;

    if FmSTIn09.RadioGp2.ItemIndex = 1 then
    begin
      while not FmDmic01.InvMst9.Eof do
      begin
        FmDmic01.InvMst9.Edit;
        if CheckBox1.Checked then
        begin
          FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat * (1 - X / 100));
          FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat * (1 - L2 / 100));
          FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat * (1 + L3 / 100));
          FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat * (1 + L4 / 100));
        end
        else
        begin
          FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat * (1 - X / 100);
          FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat * (1 - L2 / 100);
          FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat * (1 + L3 / 100);
          FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat * (1 + L4 / 100);
        end;

        while not FmDmic01.Tinven9.Eof do
        begin
          FmDmic01.Tinven9.Edit;
          if CheckBox1.Checked then
          begin
            FmDmic01.Tinven9.FieldByName('Price1').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat);
            FmDmic01.Tinven9.FieldByName('Price2').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat);
            FmDmic01.Tinven9.FieldByName('Price3').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat);
            FmDmic01.Tinven9.FieldByName('Price4').AsFloat := Round(FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat);
          end
          else
          begin
            FmDmic01.Tinven9.FieldByName('Price1').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price1').AsFloat;
            FmDmic01.Tinven9.FieldByName('Price2').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price2').AsFloat;
            FmDmic01.Tinven9.FieldByName('Price3').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price3').AsFloat;
            FmDmic01.Tinven9.FieldByName('Price4').AsFloat := FmDmic01.InvMst9.Fieldbyname('Price4').AsFloat;
          end;

          FmDmic01.Tinven9.Next;
        end;
        P := P + 1;
        Gauge1.Progress := P;
        FmDmic01.InvMst9.Next;
      end;
    end;
  end;

  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if FmDmic01.Tinven9.Active then
      if (FmDmic01.Tinven9.ApplyUpdates = 0) then
        FmDmic01.Tinven9.CommitUpdates
      else
        raise Exception.Create(FmDmic01.Tinven9.RowError.Message);
    if FmDmic01.InvMst9.Active then
      if (FmDmic01.InvMst9.ApplyUpdates = 0) then
        FmDmic01.InvMst9.CommitUpdates
      else
        raise Exception.Create(FmDmic01.InvMst9.RowError.Message);
    if FmDmic01.QDBconfig.Active then
      if (FmDmic01.QDBconfig.ApplyUpdates = 0) then
        FmDmic01.QDBconfig.CommitUpdates
      else
        raise Exception.Create(FmDmic01.QDBconfig.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    sfMain.RaiseException('ไม่สามารถ Update ข้อมูล กรุณา Save ใหม่อีกครั้ง');
  end;
  //
  with FmDmic01.InvMst9 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST  WHERE GROUP1 =:GROUPCOD');
    Params[0].Asstring := Edit1.text;
    Open;
  end;
end;

procedure TFmSTIn09.Edit1Exit(Sender: TObject);
begin
  with Dm_Set1.QGroup do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD =:GROUPCOD');
    Params[0].Asstring := Edit1.text;
    Open;
  end;
  if Dm_Set1.QGroup.EOF and Dm_Set1.QGroup.BOF then
  begin
    edit1.setfocus;
    sfMain.RaiseException('ไม่มีกลุ่มสินค้าในแฟ้มข้อมูล');
  end;
  edit1.text := Dm_Set1.QGroup.FieldByName('Groupcod').Asstring;
  edit2.text := Dm_Set1.QGroup.FieldByName('GroupNam').Asstring;

  with FmDmic01.InvMst9 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST  WHERE GROUP1 =:GROUPCOD');
    Params[0].Asstring := Edit1.text;
    Open;
  end;
end;

procedure TFmSTIn09.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
  end;
end;

procedure TFmSTIn09.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn09.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD =:GROUPCOD');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if FmDmic01.Query1.EOF and FmDmic01.Query1.BOF then
      sfMain.RaiseException('ไม่มีกลุ่มสินค้าในแฟ้มข้อมูล');
    Edit1.text := FmDmic01.Query1.FieldByName('GroupCod').Asstring;
    Edit1Exit(Sender);
  end;
end;

end.

