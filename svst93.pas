unit SvSt93;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, DB, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, Dbkbd, ImgList,
  ComCtrls, ToolWin, RzSpnEdt, RzDbkbd, RzDBGrid, AdvGlowButton, AdvToolBar,
  AdvPanel, cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmSvSt93 = class(TForm)
    DataSource1: TDataSource;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    DBGrid1: TRzDBGrid;
    DBkbd1: TRzDBkbd;
    QGrpOrd: TFDQuery;
    Grpmst: TFDQuery;
    GrpmstGCODE: TStringField;
    GrpmstMDLCOD: TStringField;
    GrpmstGDESC: TStringField;
    GrpmstUSERID: TStringField;
    GrpmstTIME1: TDateTimeField;
    SoGrpmst: TDataSource;
    Query1: TFDQuery;
    Label3: TLabel;
    Label4: TLabel;
    GrpmstKILOMT: TFloatField;
    GrpmstFRT: TFloatField;
    GrpmstPRC_EST: TFloatField;
    DBEdit1: TcxDBButtonEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    procedure InsBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancBtnClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QGrpOrdNewRecord(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure GrpmstAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvSt93: TFmSvSt93;

implementation

uses
  DmSvSet, Srchdlg1, Copygck, uSrcDLG1, USoftFirm, Dmsec, uAddAutoCKList;
{$R *.DFM}

procedure TFmSvSt93.InsBtnClick(Sender: TObject);
begin
  with qGrpOrd do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPORD WHERE GCODE ='''' ');
    Open;
    Insert;
  end;
end;

procedure TFmSvSt93.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalGrpMst = Mrok then
  begin
    with Grpmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPMST WHERE GCODE =:EDIT1');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if Grpmst.Bof and Grpmst.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    with qGrpOrd do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPORD WHERE GCODE =:0 AND MDLCOD=:1 AND KILOMT=:2');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Params[1].Asstring := DBEdit2.Text;
      Params[2].AsFloat := Grpmst.Fieldbyname('KILOMT').AsFloat;
      Open;
    end;
  end;
end;

procedure TFmSvSt93.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ที่จะยกเลิก', mtconfirmation, [mbOk, mbcancel], 0) = mrok then
    qGrpOrd.Delete;
end;

procedure TFmSvSt93.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSvSt93 := Nil;
end;

procedure TFmSvSt93.CancBtnClick(Sender: TObject);
begin
  QGrpOrd.Cancel;
end;

procedure TFmSvSt93.DBGrid1EditButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalCKLIST = MrOk then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CHECKLIS WHERE SVCODE=:0 ');
      Params[0].Asstring := fSrcDlg1.Keyno;
      Open;
    end;
    if Query1.EOF and Query1.BOF then
      SFMain.RaiseException('ไม่มีรหัสนี้ในแฟ้มข้อมูล');
    qGrpOrd.FieldByName('SVCODE').AsString := Query1.FieldByName('SVCODE').AsString;
    qGrpOrd.FieldByName('KILOMT').AsFloat := Grpmst.FieldByName('KILOMT').AsFloat;
    qGrpOrd.FieldByName('DESCRP').AsString := Query1.FieldByName('DESCP').AsString;
  end;
end;

procedure TFmSvSt93.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (GrpmstGCODE.AsString <> '');
 { Delbtn.Enabled  := (DataSource1.State in DsEditmodes)and
                     ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert)); }
  Enqbtn.Enabled := InsBtn.Enabled;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  if Datasource1.DataSet.State = DsBrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnface;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := True;
        TRzDBGrid(Components[N]).Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := False;
        TRzDBGrid(Components[N]).Color := clWhite;
      end;
    end;
  end;
end;

procedure TFmSvSt93.SpeedButton1Click(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ระบุรหัสรุ่น');
  Application.CreateForm(TCopyGrpchk, CopyGrpchk);
  CopyGrpchk.Showmodal;
end;

procedure TFmSvSt93.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSvSt93.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('', 'FILE07_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmSvSt93.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      EditBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFmSvSt93.QGrpOrdNewRecord(DataSet: TDataSet);
begin
  if QGrpOrd.State = DsInsert then
  begin
    QGrpOrd.Fieldbyname('Gcode').Asstring := Grpmst.Fieldbyname('Gcode').Asstring;
    QGrpOrd.Fieldbyname('Mdlcod').Asstring := Grpmst.Fieldbyname('Mdlcod').Asstring;
    QGrpOrd.Fieldbyname('KILOMT').AsFloat := Grpmst.Fieldbyname('KILOMT').AsFloat;
    QGrpORD.fieldbyname('Userid').AsString := SFMain.Xuser_ID;
    QGrpORD.fieldbyname('Time1').AsDateTime := Now;
  end;
end;

procedure TFmSvSt93.DBGrid1ColExit(Sender: TObject);
begin
  if qGrpOrd.FieldByName('GCODE').AsString = '' then
    SFMain.RaiseException('ยังไม่ระบุรหัสรุ่น');
  if (DbGrid1.SelectedField.FieldName = 'SVCODE') then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CHECKLIS WHERE SVCODE=:0 ');
      Params[0].AsString := qGrpOrd.FieldByname('SVCODE').AsString;
      Open;
    end;
    if Query1.EOF and Query1.BOF then
      SFMain.RaiseException('ไม่มีรหัสนี้ในแฟ้มข้อมูล');
    qGrpOrd.FieldByName('SVCODE').AsString := Query1.FieldByName('SVCODE').AsString;
    qGrpOrd.FieldByName('KILOMT').AsFloat := GrpMst.FieldByName('KILOMT').AsFloat;
    qGrpOrd.FieldByName('DESCRP').AsString := Query1.FieldByName('DESCP').AsString;
  end;
end;

procedure TFmSvSt93.ToolButton2Click(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้ระบุกลุ่มงาน');
  Application.CreateForm(TfrAddAutoCKList, frAddAutoCKList);
  frAddAutoCKList.Grid_Order.Visible := True;
  if frAddAutoCKList.ShowModal = MrOk then
  begin
    frAddAutoCKList.QHlpord.First;
    while not (frAddAutoCKList.QHlpord.Eof) do
    begin
      if frAddAutoCKList.QHlpord.FieldByName('FLAG').Asstring = 'Y' then
      begin
        qGrpOrd.Append;
        QGrpOrd.Fieldbyname('GCODE').Asstring := Grpmst.Fieldbyname('GCODE').Asstring;
        QGrpOrd.Fieldbyname('MDLCOD').Asstring := Grpmst.Fieldbyname('MDLCOD').Asstring;
        QGrpOrd.Fieldbyname('KILOMT').AsFloat := Grpmst.Fieldbyname('KILOMT').AsFloat;
        QGrpOrd.Fieldbyname('SVCODE').Asstring := frAddAutoCKList.QHlpord.Fieldbyname('SVCODE').Asstring;
        QGrpOrd.Fieldbyname('DESCRP').Asstring := frAddAutoCKList.QHlpord.Fieldbyname('DESCP').Asstring;
      end;
      frAddAutoCKList.QHlpord.Next;
    end;
  end;
end;

procedure TFmSvSt93.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalGrpMst = Mrok then
  begin
    with Grpmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPMST WHERE GCODE =:EDIT1');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if Grpmst.Bof and Grpmst.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    with qGrpOrd do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPORD WHERE GCODE =:0 AND MDLCOD=:1 AND KILOMT=:2');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Params[1].Asstring := DBEdit2.Text;
      Params[2].AsFloat := Grpmst.Fieldbyname('KILOMT').AsFloat;
      Open;
    end;
  end;
end;

procedure TFmSvSt93.FormShow(Sender: TObject);
begin
  with qGrpOrd do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPORD WHERE GCODE ='''' ');
    Open;
  end;
end;

procedure TFmSvSt93.SavBtnClick(Sender: TObject);
begin
  qGrpOrd.First;
  Grpmst.Post;
end;

procedure TFmSvSt93.GrpmstAfterPost(DataSet: TDataSet);
begin
  Dm_SeC.HI_DBMS.StartTransaction;
  try
    if Grpmst.Active then
      if (Grpmst.ApplyUpdates = 0) then
        Grpmst.CommitUpdates
      else
        raise Exception.Create(Grpmst.RowError.Message);
    Dm_SeC.HI_DBMS.Commit;
  except
    Dm_SeC.HI_DBMS.Rollback;
    Grpmst.Edit;
  end;
  //
  qGrpOrd.First;
  Dm_SeC.HI_DBMS.StartTransaction;
  try
    if qGrpOrd.Active then
      if (qGrpOrd.ApplyUpdates = 0) then
        qGrpOrd.CommitUpdates
      else
        raise Exception.Create(qGrpOrd.RowError.Message);
    Dm_SeC.HI_DBMS.Commit;
  except
    Dm_SeC.HI_DBMS.Rollback;
    qGrpOrd.Edit;
  end;
  //
  with qGrpOrd do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPORD WHERE GCODE =:0 AND MDLCOD=:1 AND KILOMT=:2 ORDER BY GCODE,MDLCOD');
    Params[0].Asstring := Grpmst.Fieldbyname('GCODE').AsString;
    Params[1].Asstring := Grpmst.Fieldbyname('MDLCOD').AsString;
    Params[2].AsFloat := Grpmst.Fieldbyname('KILOMT').AsFloat;
    Open;
  end;
end;

end.

