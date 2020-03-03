unit SvSt91;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, DB, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, Dbkbd, ImgList,
  ComCtrls, ToolWin, RzDbkbd, RzDBGrid, RzSpnEdt, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton,
  AdvToolBar, AdvPanel, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, dxDateRanges,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  dxStatusBar;

type
  TFmSvSt91 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3SVCODE: TcxGridDBColumn;
    cxGridDBTableView3DESC1: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    SoGrpmst: TDataSource;
    Grpmst: TFDQuery;
    GrpmstGCODE: TStringField;
    GrpmstMDLCOD: TStringField;
    GrpmstGDESC: TStringField;
    GrpmstKILOMT: TFloatField;
    GrpmstFRT: TFloatField;
    GrpmstPRC_EST: TFloatField;
    GrpmstALLMODEL: TStringField;
    GrpmstUSERID: TStringField;
    GrpmstTIME1: TDateTimeField;
    Query1: TFDQuery;
    QGrpServ: TFDQuery;
    QGrpServGCODE: TStringField;
    QGrpServMDLCOD: TStringField;
    QGrpServSVCODE: TStringField;
    QGrpServDESC1: TStringField;
    QGrpServMARK: TStringField;
    QGrpServUSERID: TStringField;
    QGrpServTIME1: TDateTimeField;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure InsBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancBtnClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure QGrpServNewRecord(DataSet: TDataSet);
    procedure GrpmstAfterPost(DataSet: TDataSet);
    procedure QGrpServBeforePost(DataSet: TDataSet);
    procedure SoGrpmstStateChange(Sender: TObject);
    procedure cxGridDBTableView3SVCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure SavBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    XAllModel: string;
    { Public declarations }
  end;

var
  FmSvSt91: TFmSvSt91;

implementation

uses
  DmSvSet, Svsthlp, Srchdlg1, Copygsv, usrcdlg1, USoftFirm, Dmsec;
{$R *.DFM}

procedure TFmSvSt91.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      editBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFmSvSt91.InsBtnClick(Sender: TObject);
begin
 //If Dbedit1.Text='' Then
    // DBEdit1PropertiesButtonClick;
  {  with qGrpServ do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPSERV WHERE GCODE ='''' ');
      Open;
      Insert;
    end;}
end;

procedure TFmSvSt91.EditBtnClick(Sender: TObject);
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
    XAllModel := Grpmst.FieldByName('ALLMODEL').AsString;

    with qGrpServ do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPSERV WHERE GCODE =:EDIT1  AND MDLCOD=:EDIT2');
      Params[0].Asstring := Grpmst.Fieldbyname('GCODE').AsString;
      Params[1].Asstring := Grpmst.Fieldbyname('MDLCOD').AsString;
      Open;
    end;
  end;
end;

procedure TFmSvSt91.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ที่จะยกเลิก', mtconfirmation, [mbOk, mbcancel], 0) = mrok then
    qGrpServ.Delete;
end;

procedure TFmSvSt91.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSvSt91 := Nil;
end;

procedure TFmSvSt91.CancBtnClick(Sender: TObject);
begin
  Grpmst.Cancel;
  qGrpServ.Cancel;
end;

procedure TFmSvSt91.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TCopyGrpserv, CopyGrpserv);
  CopyGrpserv.Showmodal;
end;

procedure TFmSvSt91.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSvSt91.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('', 'FILE07_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmSvSt91.DBGrid1DblClick(Sender: TObject);
begin
   //DBGrid1EditButtonClick(Sender)
end;

procedure TFmSvSt91.QGrpServNewRecord(DataSet: TDataSet);
begin
  qGrpServ.Fieldbyname('Gcode').Asstring := Grpmst.Fieldbyname('Gcode').Asstring;
  qGrpServ.Fieldbyname('Mdlcod').Asstring := Grpmst.Fieldbyname('Mdlcod').Asstring;
  qGrpServ.fieldbyname('Userid').AsString := SFMain.Xuser_ID;
  qGrpServ.fieldbyname('Time1').AsDateTime := Now;
end;

procedure TFmSvSt91.GrpmstAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := Grpmst.FieldByName('GCODE').Asstring;
  Dm_SeC.HI_DBMS.StartTransaction;
  try
    if qGrpServ.Active then
      if (qGrpServ.ApplyUpdates = 0) then
        qGrpServ.CommitUpdates
      else
        raise Exception.Create(qGrpServ.RowError.Message);
    Dm_SeC.HI_DBMS.Commit;
  except
    Dm_SeC.HI_DBMS.Rollback;
    Grpmst.Edit;
  end;
  //
  with Grpmst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPMST WHERE GCODE =:EDIT1');
    Params[0].Asstring := S;
    Open;
  end;
  with qGrpServ do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPSERV WHERE GCODE =:EDIT1  AND MDLCOD=:EDIT2');
    Params[0].Asstring := S;
    Params[1].Asstring := Grpmst.Fieldbyname('MDLCOD').AsString;
    Open;
  end;
end;

procedure TFmSvSt91.QGrpServBeforePost(DataSet: TDataSet);
begin
 // qGrpServ.First;
end;

procedure TFmSvSt91.SoGrpmstStateChange(Sender: TObject);
var
  N: Word;
begin
  SavBtn.Enabled := (SoGrpmst.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Enabled := SavBtn.Enabled;
 // CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
  Enqbtn.Enabled := (SoGrpmst.State = Dsbrowse);

  cxGridDBTableView3.NavigatorButtons.Insert.Enabled := SavBtn.Enabled;
  cxGridDBTableView3.NavigatorButtons.Delete.Enabled := SavBtn.Enabled;
  cxGridDBTableView3.NavigatorButtons.Append.Enabled := SavBtn.Enabled;

  if SoGrpmst.DataSet.State = DsBrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnface;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := True;
        TRzDBGrid(Components[N]).Color := clBtnFace;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
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
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := False;
        TRzDBGrid(Components[N]).Color := clWhite;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
    end;
  end;
  DBedit1.Properties.ReadOnly := True;
  DBedit2.Properties.ReadOnly := True;
  DBedit3.Properties.ReadOnly := True;
  DBedit1.Style.Color := clBtnFace;
  DBedit2.Style.Color := clBtnFace;
  DBedit3.Style.Color := clBtnFace;
end;

procedure TFmSvSt91.cxGridDBTableView3SVCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (SoGrpmst.State = DsEdit) or (SoGrpmst.State = DsInsert) then
  begin
    Application.Createform(TfSrcDlg1, fSrcDlg1);
    fSrcDlg1.XModel := QGrpServMDLCOD.Asstring;
    if fSrcDlg1.ShowModalTabsvMst = Mrok then
    begin
      QGrpServ.Edit;
      QGrpServ.FieldByName('SVCODE').AsString := fSrcDlg1.qrFindDat.fieldbyname('SVCODE').Asstring;
      QGrpServ.FieldByName('DESC1').AsString := fSrcDlg1.qrFindDat.fieldbyname('DESCP').AsString;
    end;
  end;
end;

procedure TFmSvSt91.SavBtnClick(Sender: TObject);
begin
  QGrpServ.First;
  Grpmst.Post;
end;

end.

