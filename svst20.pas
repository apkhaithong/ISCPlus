unit SvSt20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, DB, ExtCtrls, Dbkbd, ImgList, ComCtrls,
  ToolWin, RzPanel, RzSpnEdt;

type
  TSvSt_20 = class(TForm)
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    Label9: TLabel;
    DBkbd1: TDBkbd;
    RzStatusBar1: TRzStatusBar;
    ToolBar1: TToolBar;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    CloseBtn: TToolButton;
    SpLoc: TRzRapidFireButton;
    Bevel1: TBevel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    ToolButton1: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SpLocClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvSt_20: TSvSt_20;

implementation

uses DmSvSet,Srchdlg1,USoftFirm,uSrcDlg1;

{$R *.DFM}

procedure TSvSt_20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 SvSt_20 := Nil;
 Action := Cafree;
end;

procedure TSvSt_20.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key = #13) then
  If not (ActiveControl is TDbMemo ) Then
   Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
   End;
end;

procedure TSvSt_20.DataSource1StateChange(Sender: TObject);
Var N:word;
begin
  InsBtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
//  Delbtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete);
  Delbtn.Enabled  := InsBtn.Enabled;;
  Enqbtn.Enabled  := InsBtn.Enabled;
  CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
  SavBtn.Enabled  := (DataSource1.State in DsEditmodes)and
                     ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  CancBtn.Enabled := SavBtn.Enabled;
  SpLoc.Enabled   := (DataSource1.State=Dsinsert);
      if Datasource1.DataSet.State = dsBrowse then
      Begin
         For N:=0 to ComponentCount-1 do
           begin
              if (Components[n] Is TDBEdit) and (TDBEdit(Components[n]).Tag =0) then
              begin
                  TDBEdit(Components[n]).ReadOnly := True;
                  TDBEdit(Components[n]).Color := clSilver;
              end;
              if (Components[n] Is TDBMemo) and (TDBMemo(Components[n]).Tag =0) then
              begin
                  TDBMemo(Components[n]).ReadOnly := True;
                  TDBMemo(Components[n]).Color := clSilver;
              end;
           end;
      end
      else
      Begin
         For N:=0 to ComponentCount-1 do
           Begin
              if (Components[n] Is TDBEdit) and (TDBEdit(Components[n]).Tag = 0) then
              begin
                  TDBEdit(Components[n]).ReadOnly := False;
                  TDBEdit(Components[n]).Color := clWhite;
              end;
              if (Components[n] Is TDBMemo) and (TDBMemo(Components[n]).Tag =0) then
              begin
                  TDBMemo(Components[n]).ReadOnly := False;
                  TDBMemo(Components[n]).Color := clWhite;
              end;
           end;
      end;
end;

procedure TSvSt_20.InsBtnClick(Sender: TObject);
begin
 WITH Dm_SvSet.QSvstock do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM SVSTOCK WHERE CODE ='''' ');
   Open;
   Insert;
  end;
 Dm_SvSet.QSvstock.FieldByname('ONHAND').asFloat := 0 ;
 Dm_SvSet.QSvstock.FieldByname('UCOST').asFloat  := 0 ;
 Dm_SvSet.QSvstock.FieldByname('UPRICE').asFloat := 0 ;
 DBEdit1.SetFocus;
 DBEdit1.ReadOnly := False;
 DBEdit2.ReadOnly := False;
end;

procedure TSvSt_20.DelBtnClick(Sender: TObject);
begin
  IF MessageDlg('คุณต้องการลบข้อมูล ?',mtconfirmation,[mbOk,mbcancel],0)=mrok Then
   Dm_SvSet.QSvstock.delete;
end;

procedure TSvSt_20.CancBtnClick(Sender: TObject);
begin
 if Dm_SvSet.QSvstock.Active then
   Dm_SvSet.QSvstock.Cancel;
end;

procedure TSvSt_20.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalSvpart=Mrok Then
  begin
    with Dm_SvSet.QSvstock do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SVSTOCK WHERE CODE = :Edit1 AND LOCAT=:EDIT2 ');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Params[1].Asstring := fSrcDlg1.qrFindDat.fieldbyname('Locat').Asstring;
      Open;
      Edit;
    end;
    if Dm_SvSet.QSvstock.bof and Dm_SvSet.QSvstock.Eof then
    SFMain.RaiseException('ไมมีรหัสสาขานี้ในแฟ้มข้อมูล');
  End;
  DBEdit1.ReadOnly := True;
  DBEdit2.ReadOnly := True;
end;

procedure TSvSt_20.SpLocClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalLocat=Mrok Then
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :Edit1 ');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if Dm_SvSet.Query1.bof and Dm_SvSet.Query1.Eof then
    SFMain.RaiseException('ไมมีรหัสสาขานี้ในแฟ้มข้อมูล');
    Dm_SvSet.QSvstock.FieldByName('LOCAT').Asstring := Dm_SvSet.Query1.FieldByName('LOCATCD').Asstring
  End;
end;

procedure TSvSt_20.DBEdit1Exit(Sender: TObject);
begin
 if Dm_SvSet.QSvstock.State = DsInsert then
  begin
   with Dm_SvSet.Query1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :LOCATCD ');
     Params[0].Asstring := Dm_SvSet.QSvstock.FieldByName('LOCAT').Asstring;
     Open;
    end;
   if Dm_SvSet.Query1.Bof and Dm_SvSet.Query1.eof then
     SFMain.RaiseException('ไม่มีรหัสสาขานี้ในแฟ้มข้อมูล');
  end;
end;

procedure TSvSt_20.FormCreate(Sender: TObject);
begin
   SFMain.Check_right('', 'FILE06_4');
   DBkbd1.AllowDelete := SFMain.Del_right;
   DBkbd1.AllowEditing:= SFMain.Edit_right;
   DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSvSt_20.SavBtnClick(Sender: TObject);
begin
  Dm_SvSet.QSvstock.Post;
end;

procedure TSvSt_20.DBMemo1Exit(Sender: TObject);
begin
   SvSt_20.KeyPreview := True;
end;

procedure TSvSt_20.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvSt_20.DBkbd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        Case key Of
        Vk_F7 : EditBtnClick(Sender);
        Vk_ESCAPE : CancBtnClick(Sender);
        Vk_F8 : if DelBtn.Enabled Then DelBtnClick(Sender);
        Vk_F2 : if SavBtn.Enabled Then SavBtnClick(Sender);
        Vk_F5 : if InsBtn.Enabled Then InsBtnClick(Sender);
        End;
end;

procedure TSvSt_20.DBMemo1Click(Sender: TObject);
begin
   SvSt_20.KeyPreview := False;
end;

procedure TSvSt_20.FormShow(Sender: TObject);
begin
  WITH Dm_SvSet.QSvstock do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVSTOCK WHERE CODE = '''' ');
    Open;
  end;
end;

end.
