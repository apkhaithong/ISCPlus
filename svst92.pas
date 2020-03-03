unit SvSt92;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, DB, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, Dbkbd, ImgList,
  ComCtrls, ToolWin, RzDBGrid, RzSpnEdt, RzDbkbd, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton,
  AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmSvSt92 = class(TForm)
    DataSource1: TDataSource;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    DBGrid1: TRzDBGrid;
    DBkbd1: TRzDBkbd;
    SoGrpmst: TDataSource;
    Grpmst: TFDQuery;
    GrpmstGCODE: TStringField;
    GrpmstMDLCOD: TStringField;
    GrpmstGDESC: TStringField;
    GrpmstUSERID: TStringField;
    GrpmstTIME1: TDateTimeField;
    Query1: TFDQuery;
    QGrppart: TFDQuery;
    DBEdit1: TcxDBButtonEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure InsBtnClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancBtnClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SavBtnClick(Sender: TObject);
    procedure QGrppartNewRecord(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EditBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvSt92: TFmSvSt92;

implementation

uses
  DmSvSet, Srchdlg1, SvSt921, usrcdlg1, USoftFirm, Dmsec;
{$R *.DFM}

procedure TFmSvSt92.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of       // Vk_F7 : EnqBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFmSvSt92.InsBtnClick(Sender: TObject);
begin
  with qGrpPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPPART WHERE GCODE ='''' ');
    Open;
    Insert;
  end;
end;

procedure TFmSvSt92.DBGrid1ColExit(Sender: TObject);
begin
  if (DbGrid1.SelectedField.FieldName = 'PARTNO') then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE Partno =:XPartno ');
      Params[0].Asstring := QGrpPart.FieldByName('Partno').AsString;
      Open;
      if (Eof and Bof) then
        SFMain.RaiseException('ไม่พบรหัสสินค้านี้แล้วในแฟ้มข้อมูลหลัก');
    end;
    QGrpPart.FieldByName('PARTNO').AsString := Query1.FieldByName('PARTNO').AsString;
    QGrpPart.FieldByName('Desc1').AsString := Query1.FieldByName('Desc1').AsString;
    QGrpPart.FieldByName('Qty').Asfloat := 1;
  end;
end;

procedure TFmSvSt92.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ที่จะยกเลิก', mtconfirmation, [mbOk, mbcancel], 0) = mrok then
    QGrpPart.Delete;
end;

procedure TFmSvSt92.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSvSt92 := Nil;
end;

procedure TFmSvSt92.CancBtnClick(Sender: TObject);
begin
  QGrpPart.Cancel;
end;

procedure TFmSvSt92.DBGrid1EditButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalParts = Mrok then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE PARTNO = :XPART ');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if Query1.Bof and Query1.Eof then
      SFMain.RaiseException('ไม่พบรหัสสินค้าในแฟ้มข้อมูลหลัก');
    QGrpPart.FieldByName('PARTNO').AsString := Query1.FieldByName('PARTNO').AsString;
    QGrpPart.FieldByName('Desc1').AsString := Query1.FieldByName('Desc1').AsString;
  end;
end;

procedure TFmSvSt92.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Enabled := (DataSource1.State = DsBrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (GrpmstGCODE.AsString <> '');
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

procedure TFmSvSt92.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSvSt92.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('', 'FILE07_4');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmSvSt92.DBGrid1DblClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalParts = Mrok then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE PARTNO = :XPART ');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if Query1.Bof and Query1.Eof then
      SFMain.RaiseException('ไม่พบรหัสสินค้าในแฟ้มข้อมูลหลัก');
    QGrpPart.FieldByName('PARTNO').AsString := Query1.FieldByName('PARTNO').AsString;
    QGrpPart.FieldByName('Desc1').AsString := Query1.FieldByName('Desc1').AsString;
  end;
end;

procedure TFmSvSt92.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFmSvSt92.SavBtnClick(Sender: TObject);
begin
  qGrpPart.First;
  Dm_SeC.HI_DBMS.StartTransaction;
  try
    if qGrpPart.Active then
      if (qGrpPart.ApplyUpdates = 0) then
        qGrpPart.CommitUpdates
      else
        raise Exception.Create(qGrpPart.RowError.Message);
    Dm_SeC.HI_DBMS.Commit;
  except
    Dm_SeC.HI_DBMS.Rollback;
    qGrpPart.Edit;
  end;
  //
  with qGrpPart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPPART WHERE GCODE =:0 AND MDLCOD=:1 ORDER BY GCODE,MDLCOD');
    Params[0].Asstring := Grpmst.Fieldbyname('GCODE').AsString;
    Params[1].Asstring := Grpmst.Fieldbyname('MDLCOD').AsString;
    Open;
  end;
end;

procedure TFmSvSt92.QGrppartNewRecord(DataSet: TDataSet);
begin
  QGrpPart.FieldByName('GCode').AsString := GrpMst.FieldByName('GCode').AsString;
  QGrpPart.FieldByName('MdlCod').AsString := GrpMst.FieldByName('MdlCod').AsString;
  QGrpPart.fieldbyname('Userid').AsString := SFMain.Xuser_ID;
  QGrpPart.fieldbyname('Time1').AsDateTime := Now;
end;

procedure TFmSvSt92.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

    with qGrpPart do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPPART WHERE GCODE =:0 AND MDLCOD=:1');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Params[1].Asstring := Grpmst.Fieldbyname('MDLCOD').AsString;
      Open;
    end;
  end;
end;

procedure TFmSvSt92.EditBtnClick(Sender: TObject);
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

    with qGrpPart do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPPART WHERE GCODE =:0 AND MDLCOD=:1');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Params[1].Asstring := Grpmst.Fieldbyname('MDLCOD').AsString;
      Open;
    end;
  end;
end;

end.

