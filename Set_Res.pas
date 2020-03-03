unit Set_Res;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DB, ExtCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids,
  Dbkbd,
  ComCtrls, ToolWin;

type
  TFResult = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    Bevel3: TBevel;
    DBEdit12: TDBEdit;
    DBEdit1: TDBEdit;
    ToolBar1: TToolBar;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    ToolButton1: TToolButton;
    CloseBtn: TToolButton;
    procedure InsBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure ClosBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FResult: TFResult;

implementation
Uses SrchDlg1, DmSv, USoftFirm;

{$R *.DFM}

procedure TFResult.InsBtnClick(Sender: TObject);
begin
   With Dm_Sv.QResult Do
   Begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM RE_SULT WHERE RSCODE =:EDIT1 ');
    Params[0].Asstring:='';
    open;
    Insert;
   End;
end;

procedure TFResult.FormKeyPress(Sender: TObject; var Key: Char);
begin
    If (Key = #13) then
    If not (ActiveControl is TDbMemo ) Then
    Begin
     Perform(Wm_nextDlgctl,0,0);
     Key := #0;
    End;
end;

procedure TFResult.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TFResult.SaveBtnClick(Sender: TObject);
begin
   Dm_Sv.QResult.Post;
end;

procedure TFResult.DelBtnClick(Sender: TObject);
begin
   IF MessageDlg('แน่ใจหรือไม่ที่จะยกเลิก',mtconfirmation,[mbOk,mbcancel],0)=mrok Then
   Dm_Sv.QResult.delete;
end;

procedure TFResult.CancBtnClick(Sender: TObject);
begin
   If Dm_Sv.QResult.Active Then  Dm_Sv.QResult.Cancel;
end;

procedure TFResult.DataSource1StateChange(Sender: TObject);
Var n:word;
begin

  InsBtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete);
  Enqbtn.Enabled  := InsBtn.Enabled;
  CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
  SavBtn.Enabled  := (DataSource1.State in DsEditmodes)and
                     ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  CancBtn.Enabled := SavBtn.Enabled;

  If DataSource1.Dataset.State = Dsbrowse Then
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TDBedit)and (TDBedit(Components[n]).Tag=0)  Then
        begin
          TDBedit(Components[n]).Readonly := True;
          TDBedit(Components[n]).Color := clSilver;
        end;
      end;
    End  Else
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TDBedit)and (TDBedit(Components[n]).Tag=0)  Then
        begin
          TDBedit(Components[n]).Readonly := False;
          TDBedit(Components[n]).Color := clWhite;
        end;
    End;
  end;  
end;

procedure TFResult.ClosBtnClick(Sender: TObject);
begin
   Close ;
end;

procedure TFResult.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchDlg1,SearchDlg1);
  If SearchDlg1.ShowModalRESULT=Mrok Then
  begin
   With Dm_Sv.QResult Do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM RE_SULT WHERE RSCODE=:PAYCODE');
     Params[0].Asstring := SearchDlg1.KeyNo;
     Open;
    end;
    IF Dm_Sv.QResult.EOF and Dm_Sv.QResult.BOF THEN
      SFMain.RaiseException('ไม่มีข้อมูล');
  END;
end;

procedure TFResult.FormCreate(Sender: TObject);
begin
   With Dm_Sv.QResult Do
   Begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM RE_SULT WHERE RSCODE =:EDIT1 ');
    Params[0].Asstring:='';
    open;
   End;
end;

procedure TFResult.CloseBtnClick(Sender: TObject);
begin
 Close;
end;

end.
