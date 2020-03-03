unit Setfrcod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, DB, Grids, DBGrids,
  FldEdit,Dbkbd, ThaiErr, FldCombo, JEdit, JCombo, pckcombo, Fldedit1, Fldbedit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrform = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataSource1: TDataSource;
    Label4: TLabel;
    Shape1: TShape;
    Label6: TLabel;
    DBkbd1: TDBkbd;
    Panel2: TPanel;
    InsBtn: TSpeedButton;
    DelBtn: TSpeedButton;
    EnqBtn: TSpeedButton;
    SavBtn: TSpeedButton;
    CancBtn: TSpeedButton;
    CloseBtn: TBitBtn;
    FldCombo1: TFldCombo;
    FldEdit1: TFldEdit;
    FldEdit2: TFldEdit;
    FldEdit3: TFldEdit;
    Label5: TLabel;
    Label8: TLabel;
    QFrcode: TFDQuery;
    procedure InsBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frform: TFrform;

implementation

uses Dmset1,SrchDlg;

{$R *.DFM}

procedure TFrform.InsBtnClick(Sender: TObject);
begin
  With Dm_Set1.QFrcode Do
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM FRGROUP WHERE FRCODE =:FRCODE');
      Params[0].Asstring := '';
      Open;
      Insert;
    End;

end;

procedure TFrform.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalFrcod=Mrok Then
  begin
    With Dm_Set1.QFrcode Do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM FRGROUP WHERE FRCODE =:FRCODE');
      Params[0].Asstring := SearchDlg.KeyNo;
      Open;
    end;
  end;
end;

procedure TFrform.SaveBtnClick(Sender: TObject);
begin
  Dm_Set1.QFrcode.Post;
end;

procedure TFrform.DelBtnClick(Sender: TObject);
begin
  IF MessageDlg('แน่ใจหรือไม่ที่จะยกเลิก',mtconfirmation,[mbOk,mbcancel],0)=mrok Then
  Dm_Set1.QFrcode.Delete;
end;

procedure TFrform.FormKeyPress(Sender: TObject; var Key: Char);
begin
    If (Key = #13) then
    If not (ActiveControl is TDbMemo ) Then
    Begin
     Perform(Wm_nextDlgctl,0,0);
     Key := #0;
    End;
end;

procedure TFrform.CancBtnClick(Sender: TObject);
begin
  IF Dm_Set1.QFrcode.Active THEN Dm_Set1.QFrcode.Cancel;
end;

procedure TFrform.DataSource1StateChange(Sender: TObject);
Var n:word;
begin
  Label6.caption :=FormatDateTime(' dd mmmm yyyy, ' +
  '"เวลา" hh:mm AM/PM', Now)+'  User : '+Dm_Set1.Xuser_id;

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
        If (Components[n] Is TFldedit)and (TFldedit(Components[n]).Tag=0)  Then
        begin
          TFldedit(Components[n]).Readonly := True;
          TFldedit(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TFldCombo)and(TFldCombo(Components[n]).Tag=0)  Then
        begin
          TFldCombo(Components[n]).Readonly := True;
          TFldCombo(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TJedit)and(TJedit(Components[n]).Tag=0)  Then
        begin
          TJedit(Components[n]).Readonly := True;
          TJedit(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TJcombo)and(TJcombo(Components[n]).Tag=0)  Then
        begin
          TJcombo(Components[n]).Enabled := False;
          TJcombo(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TJDBcombo)and(TJDBcombo(Components[n]).Tag=0)  Then
        begin
          TJDbcombo(Components[n]).Readonly := True;
          TJDbcombo(Components[n]).Color := clSilver;
        end;

      end;
    End
    Else
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TFldedit)and (TFldedit(Components[n]).Tag=0)  Then
        begin
          TFldedit(Components[n]).Readonly := False;
          TFldedit(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TFldCombo)and(TFldCombo(Components[n]).Tag=0)  Then
        begin
          TFldCombo(Components[n]).Readonly := False;
          TFldCombo(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TJedit)and(TJedit(Components[n]).Tag=0)  Then
        begin
          TJedit(Components[n]).Readonly := False;
          TJedit(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TJcombo)and(TJcombo(Components[n]).Tag=0)  Then
        begin
          TJcombo(Components[n]).Enabled := True;
          TJcombo(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TJDBcombo)and(TJDBcombo(Components[n]).Tag=0)  Then
        begin
          TJDBcombo(Components[n]).Readonly := False;
          TJDBcombo(Components[n]).Color := clWhite;
        end;
      end;
    End;
end;

procedure TFrform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Set1.QFrcode.close;
  Action :=caFree;
end;

procedure TFrform.FormShow(Sender: TObject);
begin
  Dm_set1.Check_right('SYS01','SETM120');
end;



procedure TFrform.FormCreate(Sender: TObject);
begin
  With Dm_Set1.QFrcode Do
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM FRGROUP WHERE FRCODE =:FRCODE');
      Params[0].Asstring := '';
      Open;
    End;
end;


end.
