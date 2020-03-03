unit Svst50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, DB, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, Dbkbd, Csv_txt,
  ImgList, ComCtrls, ToolWin, RzPanel, RzDBGrid, RzSpnEdt, RzDbkbd,
  AdvGlowButton, AdvToolBar, AdvPanel, cxPC, cxMaskEdit, cxButtonEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxImageComboBox, cxLookAndFeels, cxLookAndFeelPainters, dxDateRanges,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator,
  BusinessSkinForm, dxStatusBar;

type
  TSvSt_50 = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3SVCODE: TcxGridDBColumn;
    cxGridDBTableView3DESCP: TcxGridDBColumn;
    cxGridDBTableView3HOUR: TcxGridDBColumn;
    cxGridDBTableView3MINUTE: TcxGridDBColumn;
    cxGridDBTableView3FRT: TcxGridDBColumn;
    cxGridDBTableView3SVPRIC: TcxGridDBColumn;
    cxGridDBTableView3STATUS: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    QTabserv: TFDQuery;
    QTabservSVCODE: TStringField;
    QTabservMDLCOD: TStringField;
    QTabservDESCP: TStringField;
    QTabservHOUR: TIntegerField;
    QTabservMINUTE: TIntegerField;
    QTabservFRT: TFloatField;
    QTabservSVPRIC: TFloatField;
    QTabservUSERID: TStringField;
    QTabservINPDATE: TDateTimeField;
    QTabservSVGRUP: TStringField;
    QTabservSTATUS: TStringField;
    SoTabserv: TDataSource;
    Query1: TFDQuery;
    QModelmst: TFDQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    Edit1: TcxButtonEdit;
    Bevel1: TBevel;
    dxStatusBar1: TdxStatusBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure InsBtnClick(Sender: TObject);
    procedure SpArClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QTabservNewRecord(DataSet: TDataSet);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QTabservSVCODEChange(Sender: TField);
    procedure QTabservFRTChange(Sender: TField);
  private
    { Private declarations }
    procedure Savedata;
  public
    { Public declarations }
  end;

var
  SvSt_50: TSvSt_50;

implementation

uses
  DmSvSet, Srchdlg1, CopyTsv, Dmsec, usrcdlg1, USoftFirm, Functn01;
{$R *.DFM}

procedure TSvSt_50.InsBtnClick(Sender: TObject);
begin
{  If Dbedit1.Text='' Then
  SpArClick(Sender);
  With QTabserv Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TBLABOR WHERE MDLCOD='''' ');
    Open;
    Insert;
  End;}
end;

procedure TSvSt_50.SpArClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalModel = Mrok then
  begin
    with QModelmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD =:0');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if QModelmst.Bof and QModelmst.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
  end;
end;

procedure TSvSt_50.EditBtnClick(Sender: TObject);
begin
  SpArClick(Sender);
  with QTabserv do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TBLABOR WHERE MDLCOD=:0 ORDER BY MDLCOD,SVCODE');
    Params[0].Asstring := DBedit1.text;
    Open;
  end;
end;

procedure TSvSt_50.DelBtnClick(Sender: TObject);
begin
 {If MessageDlg('แน่ใจหรือไม่ที่จะลบรายการนี้',Mtconfirmation,[mbok,mbcancel],0)=Mrok Then
  Begin
    QTabserv.Delete;
    Savedata;
  End; }
end;

procedure TSvSt_50.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  enqBtn.Visible := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  cxGridDBTableView3.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGridDBTableView3.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGridDBTableView3.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  if not (dm_Sec.Condpay.Active) then
    Dm_Sec.Condpay.Open;
  Edit1.Text := FloatToStr(Dm_Sec.Condpay.Fieldbyname('SVRATE').AsFloat);

  if Datasource1.DataSet.State = DsBrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnface;
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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
    end;
  end;
end;

procedure TSvSt_50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  svst_50 := Nil;
end;

procedure TSvSt_50.CancBtnClick(Sender: TObject);
begin
  QTabserv.Cancel;
  QModelmst.Close;
end;

procedure TSvSt_50.FormShow(Sender: TObject);
begin
  with QTabserv do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TBLABOR WHERE MDLCOD='''' ');
    Open;
  end;
end;

procedure TSvSt_50.SavBtnClick(Sender: TObject);
begin
  QTabserv.First;
  Savedata;
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET06_2', 'INSERT', DBEdit1.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET06_2', 'EDIT', DBEdit1.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TSvSt_50.DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //Tabserv.Post;
end;

procedure TSvSt_50.Savedata;
begin
  Dm_SeC.HI_DBMS.StartTransaction;
  try
    if QTabserv.Active then
      if (QTabserv.ApplyUpdates = 0) then
        QTabserv.CommitUpdates
      else
        raise Exception.Create(QTabserv.RowError.Message);
    Dm_SeC.HI_DBMS.Commit;
  except
    Dm_SeC.HI_DBMS.Rollback;
    QTabserv.EDIT;
    raise;
  end;
 //
  with QTabserv do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TBLABOR WHERE MDLCOD=:XMODEL ORDER BY MDLCOD,SVCODE');
    Params[0].Asstring := DBedit1.text;
    Open;
  end;
end;

procedure TSvSt_50.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvSt_50.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET06_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSvSt_50.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SavBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TSvSt_50.QTabservNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QTabserv);
  if (QTabserv.State = DsInsert) and (qModelMst.Active) then
  begin
    QTabserv.FieldByname('MDLCOD').Asstring := QModelmst.Fieldbyname('MODELSV').Asstring;
    QTabserv.FieldByname('USERID').Asstring := SFMain.Xuser_ID;
    QTabserv.FieldByname('INPDATE').AsDateTime := Now;
    QTabserv.FieldByname('STATUS').Asstring := 'F';
    QTabserv.FieldByname('HOUR').AsInteger := 0;
    QTabserv.FieldByname('MINUTE').AsInteger := 0;
  end;
end;

procedure TSvSt_50.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalFrcod = Mrok then
  begin
    Edit1.Text := Floattostr(fSrcDlg1.qrFindDat.Fieldbyname('Frrate1').Asfloat);
  end;
end;

procedure TSvSt_50.QTabservSVCODEChange(Sender: TField);
begin
  if QTabserv.State in DsEditmodes then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TBLABOR WHERE MDLCOD = :XCODE AND SVCODE = :XSV');
      Params[0].Asstring := QTabserv.FieldByname('MDLCOD').asstring;
      Params[1].Asstring := QTabserv.FieldByname('SVCODE').asstring;
      Open;
      if not (Query1.Eof and Query1.Bof) then
        SFMain.RaiseException('มีรหัสนี้แล้วในแฟ้มข้อมูล');
    end;
  end;
end;

procedure TSvSt_50.QTabservFRTChange(Sender: TField);
//VAR H,M,PH :Integer; TotH,TotM,TPH,FRT :Real;
begin
 { if  (QTabserv.State in DsEditmodes) Then
  begin
    H := QTabserv.FieldByname('HOUR').AsInteger;
    M := QTabserv.FieldByname('MINUTE').AsInteger;
    PH := StrtoInt(Edit1.Text);
    TotH := H*PH;
    TotM := (M*PH)/60;
    TPH := TotH+TotM;
    FRT := H+FRound((M/60),2);
    QTabserv.FieldByname('FRT').asfloat := FRT;
    QTabserv.FieldByname('SVPRIC').asfloat := TPH;  }

//    QTabserv.FieldByname('SVPRIC').asfloat :=QTabserv.FieldByname('FRT').asfloat*
//    Strtofloat(Edit1.Text);
 // end;
end;

end.

