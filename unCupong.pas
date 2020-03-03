unit unCupong;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, DB, Grids, DBGrids, FldEdit, Dbkbd,
  ThaiErr, FldCombo, JEdit, JCombo, pckcombo, ComCtrls, Fldbedit, Fldedit1,
  ImgList, ToolWin, RzButton, RzSpnEdt, wwdbdatetimepicker, RzPanel, RzDBGrid,
  RzDbkbd, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFCamp = class(TForm)
    DataSource1: TDataSource;
    Qpart: TFDQuery;
    Sopart: TDataSource;
    QServ: TFDQuery;
    SoServ: TDataSource;
    QCamp: TFDQuery;
    Query1: TFDQuery;
    Condpay: TFDTable;
    QServCAMPNO: TStringField;
    QServCODE: TStringField;
    QServDESC1: TStringField;
    QServFRT: TFloatField;
    QServPRICE: TFloatField;
    QServDISCT: TFloatField;
    QServDISAMT: TFloatField;
    QServNETAMT: TFloatField;
    QServTOTAMT: TFloatField;
    QpartCAMPNO: TStringField;
    QpartPARTNO: TStringField;
    QpartDESC1: TStringField;
    QpartQTY: TFloatField;
    QpartPRICE: TFloatField;
    QpartDISCT: TFloatField;
    QpartDISAMT: TFloatField;
    QpartNETAMT: TFloatField;
    QpartTOTAMT: TFloatField;
    QpartGROUP1: TStringField;
    ToolBar1: TToolBar;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    CloseBtn: TToolButton;
    RzStatusBar1: TRzStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    NextBtn: TRzRapidFireButton;
    DeleBtn: TRzRapidFireButton;
    NextBtn2: TRzRapidFireButton;
    DeleBtn2: TRzRapidFireButton;
    Bevel1: TBevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label11: TLabel;
    DBGrid1: TRzDBGrid;
    DBGrid2: TRzDBGrid;
    DBkbd1: TRzDBkbd;
    procedure InsBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure NextBtn2Click(Sender: TObject);
    procedure DeleBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure FldCombo4BtnClick(Sender: TObject);
    procedure FldCombo5BtnClick(Sender: TObject);
    procedure QpartNewRecord(DataSet: TDataSet);
    procedure QServNewRecord(DataSet: TDataSet);
    procedure QCampBeforeDelete(DataSet: TDataSet);
    procedure QCampAfterCancel(DataSet: TDataSet);
    procedure QCampAfterDelete(DataSet: TDataSet);
    procedure QCampAfterPost(DataSet: TDataSet);
    procedure QCampBeforePost(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCamp: TFCamp;
  XMDLCOD: string;

implementation

uses
  SrchDlgSet, Pickdate, Functn01, USoftFirm, Dmsec, uFindData, uSrcDlgSet;

{$R *.DFM}

procedure TFCamp.InsBtnClick(Sender: TObject);
begin
  PageControl1.ActivePage := Tabsheet1;
  DBedit1.SetFocus;
  with QCamp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := '';
    Open;
    Insert;
  end;

  with QPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := '';
    Open;
  end;

  with QServ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPSERV WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TFCamp.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCampn = MrOK then
  begin
    with QCamp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO');
      Params[0].Asstring := fFindData.KeyNo;
      Open;
    end;
    //
    with QPart do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO =:CAMPNO');
      Params[0].Asstring := QCamp.Fieldbyname('CAMPNO').Asstring;
      Open;
    end;

    with QServ do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CAMPSERV WHERE CAMPNO =:CAMPNO');
      Params[0].Asstring := QCamp.Fieldbyname('CAMPNO').Asstring;
      Open;
    end;
  end;
end;

procedure TFCamp.SavBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    if MessageDlg('ยังไม่มีรหัสแคมเปญ', mtconfirmation, [mbOk], 0) = mrok then
      Exit;
  end
  else
    QCamp.Post;
end;

procedure TFCamp.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ที่จะยกเลิก', mtconfirmation, [mbOk, mbcancel], 0) = mrok then
    QCamp.Delete;
end;

procedure TFCamp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end;
end;

procedure TFCamp.CancBtnClick(Sender: TObject);
begin
  if QCamp.Active then
    QCamp.Cancel;
end;

procedure TFCamp.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete);
  Enqbtn.Enabled := InsBtn.Enabled;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Enabled := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Enabled := SavBtn.Enabled;
  Fbtgroup.Enabled := Savbtn.Enabled;
  FbtModel.Enabled := SavBtn.Enabled;
  NextBtn.Enabled := SavBtn.Enabled;
  DeleBtn.Enabled := SavBtn.Enabled;
  NextBtn2.Enabled := SavBtn.Enabled;
  DeleBtn2.Enabled := SavBtn.Enabled;
  DBRadioGroup1.ReadOnly := not SavBtn.Enabled;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TDBEdit) and (TDBEdit(Components[n]).Tag = 0) then
      begin
        TDBEdit(Components[n]).Readonly := True;
        TDBEdit(Components[n]).Color := clSilver;
      end;
      if (Components[n] is TwwDBDateTimePicker) and (TwwDBDateTimePicker(Components[n]).Tag = 0) then
      begin
        TwwDBDateTimePicker(Components[n]).Readonly := True;
        TwwDBDateTimePicker(Components[n]).Color := clSilver;
      end;
      if (Components[n] is TRzDBGrid) and (TRzDBGrid(Components[n]).Tag = 0) then
      begin
        TRzDBGrid(Components[n]).Readonly := True;
        TRzDBGrid(Components[n]).Color := clSilver;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TDBEdit) and (TDBEdit(Components[n]).Tag = 0) then
      begin
        TDBEdit(Components[n]).Readonly := False;
        TDBEdit(Components[n]).Color := clWhite;
      end;
      if (Components[n] is TwwDBDateTimePicker) and (TwwDBDateTimePicker(Components[n]).Tag = 0) then
      begin
        TwwDBDateTimePicker(Components[n]).Readonly := False;
        TwwDBDateTimePicker(Components[n]).Color := clWhite;
      end;
      if (Components[n] is TRzDBGrid) and (TRzDBGrid(Components[n]).Tag = 0) then
      begin
        TRzDBGrid(Components[n]).Readonly := False;
        TRzDBGrid(Components[n]).Color := clWhite;
      end;
    end;
  end;
    //
  DBRadioGroup1Click(Sender);

  DBEdit1.Readonly := not (DataSource1.State = DsInsert);
end;

procedure TFCamp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QCamp.close;
  QPart.close;
  QServ.close;
  Action := caFree;
  FCamp := Nil;
end;

procedure TFCamp.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'FILE05_5');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  with QCamp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := '';
    Open;
  end;
  PageControl1.ActivePage := Tabsheet1;

  if not (Condpay.Active) then
    Condpay.Open;
end;

procedure TFCamp.DBRadioGroup1Click(Sender: TObject);
begin
  DBEdit3.Enabled := DBRadioGroup1.Itemindex = 0;
  DBEdit4.Enabled := DBRadioGroup1.Itemindex = 1;

  if DBEdit3.Enabled then
    DBEdit3.Color := clWhite
  else
    DBEdit3.Color := clSilver;

  if DBEdit4.Enabled then
    DBEdit4.Color := clWhite
  else
    DBedit4.Color := clSilver;
end;

procedure TFCamp.NextBtnClick(Sender: TObject);
begin
  QPart.Append;
end;

procedure TFCamp.DeleBtnClick(Sender: TObject);
begin
  QPart.Delete;
end;

procedure TFCamp.NextBtn2Click(Sender: TObject);
begin
  QServ.Append;
end;

procedure TFCamp.DeleBtn2Click(Sender: TObject);
begin
  QServ.Delete;
end;

procedure TFCamp.DBGrid1DblClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgSet, fSrcDlgSet);
  if fSrcDlgSet.ShowModalParts = Mrok then
    QPart.Fieldbyname('Partno').Asstring := fSrcDlgSet.KeyNo;
end;

procedure TFCamp.DBGrid1ColExit(Sender: TObject);
var
  XDisamt: Double;
begin
  if QPart.State = Dsbrowse then
    QPart.Edit;
  if (DbGrid1.SelectedField.FieldName) = 'PARTNO' then
  begin
    if QPart.Fieldbyname('Partno').asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้า');

    with Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
      PARAMS[0].ASSTRING := QPart.Fieldbyname('Partno').asstring;
      PARAMS[1].ASSTRING := SFMain.Xlocat;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;

    if QPart.State = DsInsert then
    begin
      QPart.Fieldbyname('Desc1').asstring := Query1.Fieldbyname('Desc1').asstring;
      QPart.Fieldbyname('Group1').asstring := Query1.Fieldbyname('Group1').asstring;
      QPart.Fieldbyname('Price').asFloat := Query1.Fieldbyname('Price1').asFloat;
      QPart.Fieldbyname('Disct').asFloat := QCamp.Fieldbyname('PTR_RAT1').asFloat;
    end;
  end;
  if (DbGrid1.SelectedField.FieldName) = 'DISCT' then
  begin
    QPart.Fieldbyname('DISAMT').asFloat := FRound((QPart.Fieldbyname('Price').asFloat * QPart.Fieldbyname('Disct').asFloat / 100), 2);
    QPart.Fieldbyname('NETAMT').asFloat := QPart.Fieldbyname('Price').asFloat - QPart.Fieldbyname('DISAMT').asFloat;
    QPart.Fieldbyname('TOTAMT').asFloat := FRound(QPart.Fieldbyname('NETAMT').asFloat * QPart.Fieldbyname('QTY').asFloat, 2);
    XDisamt := QPart.Fieldbyname('DISAMT').asFloat;
  end;
  if (DbGrid1.SelectedField.FieldName) = 'DISAMT' then
  begin
    if XDisamt <> QPart.Fieldbyname('DISAMT').asFloat then
      QPart.Fieldbyname('DISCT').asFloat := QPart.Fieldbyname('DISAMT').asFloat / QPart.Fieldbyname('Price').asFloat * 100;

    QPart.Fieldbyname('NETAMT').asFloat := QPart.Fieldbyname('Price').asFloat - QPart.Fieldbyname('DISAMT').asFloat;
    QPart.Fieldbyname('TOTAMT').asFloat := FRound(QPart.Fieldbyname('NETAMT').asFloat * QPart.Fieldbyname('QTY').asFloat, 2);
  end;
end;

procedure TFCamp.DBGrid2DblClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgSet, fSrcDlgSet);
  if fSrcDlgSet.ShowModalTabsv = Mrok then
  begin
    QServ.Fieldbyname('Code').Asstring := fSrcDlgSet.KeyNo;
    XMDLCOD := fSrcDlgSet.qrFindDat.Fieldbyname('MDLCOD').Asstring;
  end;
end;

procedure TFCamp.DBGrid2ColExit(Sender: TObject);
var
  XDisamt: Double;
begin
  if QServ.State = Dsbrowse then
    QServ.Edit;

  if DBGrid2.SelectedField.FieldName = 'CODE' then
  begin
    if QServ.Fieldbyname('Code').Asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึก  รหัสค่าบริการ  ');

    with Query1 do
    begin
      Close;
      Sql.Clear;
      if XMDLCOD <> '' then
      begin
        Sql.Add('SELECT * FROM TABSERV WHERE SVCODE= :XCODE AND MDLCOD=:XMD ');
        Params[0].Asstring := QServ.FieldByName('CODE').Asstring;
        Params[1].Asstring := XMDLCOD;
      end
      else
      begin
        Sql.Add('SELECT * FROM TABSERV WHERE SVCODE= :XCODE ');
        Params[0].Asstring := QServ.FieldByName('CODE').Asstring;
      end;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสค่าบริการในแฟ้ม Setup');
    end;
    if QServ.State = Dsinsert then
    begin
      QServ.Fieldbyname('Desc1').Asstring := Query1.Fieldbyname('Desc').Asstring;
      QServ.Fieldbyname('FRT').AsFloat := Query1.Fieldbyname('FRT').AsFloat;
      QServ.Fieldbyname('Price').AsFloat := Condpay.Fieldbyname('Svrate').Asfloat;
      ;
      QServ.Fieldbyname('Disct').asFloat := QCamp.Fieldbyname('SVR_RAT1').asFloat;
    end;
  end;
  if (DbGrid2.SelectedField.FieldName) = 'DISCT' then
  begin
    QServ.Fieldbyname('DISAMT').asFloat := FRound((QServ.Fieldbyname('Price').asFloat * QServ.Fieldbyname('Disct').asFloat / 100), 2);
    QServ.Fieldbyname('NETAMT').asFloat := QServ.Fieldbyname('Price').asFloat - QServ.Fieldbyname('DISAMT').asFloat;
    QServ.Fieldbyname('TOTAMT').asFloat := FRound(QServ.Fieldbyname('FRT').asFloat * QServ.Fieldbyname('NETAMT').asFloat, 2);
    XDisamt := QServ.Fieldbyname('DISAMT').asFloat;
  end;

  if (DbGrid2.SelectedField.FieldName) = 'DISAMT' then
  begin
    if XDisamt <> QServ.Fieldbyname('DISAMT').asFloat then
      QServ.Fieldbyname('DISCT').asFloat := QServ.Fieldbyname('DISAMT').asFloat / QServ.Fieldbyname('Price').asFloat * 100;

    QServ.Fieldbyname('NETAMT').asFloat := QServ.Fieldbyname('Price').asFloat - QServ.Fieldbyname('DISAMT').asFloat;
    QServ.Fieldbyname('TOTAMT').asFloat := FRound(QServ.Fieldbyname('FRT').asFloat * QServ.Fieldbyname('NETAMT').asFloat, 2);
  end;
end;

procedure TFCamp.FldCombo4BtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalGroup = Mrok then
    QCamp.Fieldbyname('Group1').Asstring := fFindData.KeyNo;
end;

procedure TFCamp.FldCombo5BtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalModel = Mrok then
    QCamp.Fieldbyname('MDLCOD').Asstring := fFindData.KeyNo;
end;

procedure TFCamp.QpartNewRecord(DataSet: TDataSet);
begin
  if DBEdit1.Text = '' then
    Showmessage('ยังไม่มีรหัสแชมเปญ');
  Qpart.Fieldbyname('CAMPNO').Asstring := QCamp.Fieldbyname('CAMPNO').Asstring;
  QPart.Fieldbyname('QTY').asFloat := 1;
end;

procedure TFCamp.QServNewRecord(DataSet: TDataSet);
begin
  if DBEdit1.Text = '' then
    Showmessage('ยังไม่มีรหัสแชมเปญ');
  QServ.Fieldbyname('CAMPNO').Asstring := QCamp.Fieldbyname('CAMPNO').Asstring;
end;

procedure TFCamp.QCampBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFMain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
  //
  Qpart.First;
  while not Qpart.Eof do
    Qpart.Delete;
  //
  QServ.First;
  while not QServ.Eof do
    QServ.Delete;
end;

procedure TFCamp.QCampAfterCancel(DataSet: TDataSet);
begin
  if QCamp.Active then
    QCamp.CancelUpdates;
  if QPart.Active then
    QPart.CancelUpdates;
  if QServ.Active then
    QServ.CancelUpdates;
end;

procedure TFCamp.QCampAfterDelete(DataSet: TDataSet);
var
  S: string;
begin
  S := QCamp.Fieldbyname('CAMPNO').Asstring;
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QCamp.Active then
      if (QCamp.ApplyUpdates = 0) then
        QCamp.CommitUpdates
      else
        raise Exception.Create(QCamp.RowError.Message);
    if QPart.Active then
      if (QPart.ApplyUpdates = 0) then
        QPart.CommitUpdates
      else
        raise Exception.Create(QPart.RowError.Message);
    if QServ.Active then
      if (QServ.ApplyUpdates = 0) then
        QServ.CommitUpdates
      else
        raise Exception.Create(QServ.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    QCamp.Edit;
    raise;
  end;
  //
  with QCamp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;

  with QPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;

  with QServ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPSERV WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TFCamp.QCampAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QCamp.Fieldbyname('CAMPNO').Asstring;
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QCamp.Active then
      if (QCamp.ApplyUpdates = 0) then
        QCamp.CommitUpdates
      else
        raise Exception.Create(QCamp.RowError.Message);
    if QPart.Active then
      if (QPart.ApplyUpdates = 0) then
        QPart.CommitUpdates
      else
        raise Exception.Create(QPart.RowError.Message);
    if QServ.Active then
      if (QServ.ApplyUpdates = 0) then
        QServ.CommitUpdates
      else
        raise Exception.Create(QServ.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    QCamp.Edit;
    raise;
  end;
  //
  with QCamp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;

  with QPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;

  with QServ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CAMPSERV WHERE CAMPNO =:CAMPNO');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TFCamp.QCampBeforePost(DataSet: TDataSet);
begin
  Qpart.First;
  QServ.First;
  if (QCamp.Fieldbyname('Camtype').Asstring = '1') and
    (QCamp.Fieldbyname('Group1').Asstring = '') then
    SFMain.RaiseException('ยังไม่ระบุรหัสกลุ่มสินค้า');
  if (QCamp.Fieldbyname('Camtype').Asstring = '2') and
    (QCamp.Fieldbyname('Mdlcod').Asstring = '') then
    SFMain.RaiseException('ยังไม่ระบุรหัสรุ่นรถ');
end;

procedure TFCamp.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFCamp.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EnqBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SavBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFCamp.DBGrid1EditButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgSet, fSrcDlgSet);
  if fSrcDlgSet.ShowModalParts = Mrok then
    QPart.Fieldbyname('Partno').Asstring := fSrcDlgSet.KeyNo;
end;

procedure TFCamp.DBGrid2EditButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgSet, fSrcDlgSet);
  if fSrcDlgSet.ShowModalTabsv = Mrok then
  begin
    QServ.Fieldbyname('Code').Asstring := fSrcDlgSet.KeyNo;
    XMDLCOD := fSrcDlgSet.qrFindDat.Fieldbyname('MDLCOD').Asstring;
  end;
end;

end.

