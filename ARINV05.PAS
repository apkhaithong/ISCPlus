unit Arinv05;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls, DB, Grids, DBGrids, Dbkbd,
  FldEdit, FldCombo, Fldedit1, Fldbedit, ImgList, ComCtrls, ToolWin;

type
  TFmArinv05 = class(TForm)
    Bevel1: TBevel;
    DBRadioGroup1: TDBRadioGroup;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    Label10: TLabel;
    Label31: TLabel;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label8: TLabel;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label9: TLabel;
    Label16: TLabel;
    Label12: TLabel;
    Edit3: TEdit;
    Edit1: TEdit;
    DataSource1: TDataSource;
    Edit2: TEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label22: TLabel;
    DBEdit12: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBkbd1: TDBkbd;
    DBEdit8: TFldCombo;
    DBEdit9: TFldEdit;
    DBEdit10: TFldEdit;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    InsBtn: TToolButton;
    ToolButton2: TToolButton;
    DelBtn: TToolButton;
    ToolButton4: TToolButton;
    EnqBtn: TToolButton;
    ToolButton6: TToolButton;
    SavBtn: TToolButton;
    ToolButton8: TToolButton;
    CancBtn: TToolButton;
    ToolButton10: TToolButton;
    CloseBtn: TToolButton;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure insBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SaveBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBEdit8BtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmArinv05: TFmArinv05;

implementation
Uses DmAr,ArHpinv5,PickDate, USoftFirm;

{$R *.DFM}

procedure TFmArinv05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Ar.Arinv05.Close;
  Dm_ar.Qarpay.Close;
  Action := Cafree;
end;

procedure TFmArinv05.insBtnClick(Sender: TObject);
begin
   Application.CreateForm(TFmHpInv5,FmHpInv5);
   FmHpInv5.DBGrid1.Visible := true;
   If FmHpInv5.ShowModal=Mrok Then
   Begin
     With Dm_Ar.Arinv05 do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM ARINVOI WHERE INVNO =:XINVNO ');
       Params[0].AsString := FmHpInv5.Query1.FieldByName('Invno').AsString;
       Open;
       Edit;
     End;
     If Not(Dm_Ar.Arinv05.Bof and Dm_Ar.Arinv05.Eof) Then
     begin
       With Dm_ar.Qarpay do
       Begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM ARPAY WHERE INVNO =:Invno ');
       Params[0].asstring := Dm_Ar.Arinv05.FieldByName('Invno').AsString;
       Open;
       End;
     end;
     DBEdit8.Setfocus;
     DBEdit8.ReadOnly := False;
     DBEdit9.ReadOnly := False;
     Dbedit10.Enabled := Dm_ar.Qarpay.RecordCount=0;
     If Dm_Ar.Arinv05KANG.Asfloat = 0 Then
     Begin
       DBEdit9.ReadOnly := True;
       Dbedit10.Enabled := False;
       Dm_Ar.Arinv05.Cancel;
       Raise Exception.Create('ไม่มียอดค้างชำระ');
     end;
   End;
end;

procedure TFmArinv05.FormCreate(Sender: TObject);
begin
  Dm_ar.Qarpay.Close;
  With Dm_Ar.Arinv05 do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = '''' ');
    Open;
  End;
end;

procedure TFmArinv05.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 Begin
   If not (ActiveControl is TDbMemo ) Then
   begin
     Perform(Wm_NextDlgCtl,0,0);
     Key := #0;
   end;
 End;
end;

procedure TFmArinv05.SaveBtnClick(Sender: TObject);
Var SNDamt,SVDamt,SDamt,XTnopay : Double;
begin
   SNDamt := 0;   SVDamt := 0;
   SDamt  := 0;
   Dm_ar.Qarpay.first;
   While not Dm_ar.Qarpay.Eof do
   Begin
      SNDamt := SNDamt+Dm_ar.QarpayN_Damt.AsFloat;
      SVDamt := SVDamt+Dm_ar.QarpayV_Damt.AsFloat;
      SDamt  := SDamt+Dm_ar.QarpayDamt.AsFloat;
      Dm_ar.Qarpay.Next;
   End;
   if (floattostr(Dm_ar.Arinv05Balance.AsFloat) <> floattostr(SNDamt)) Or
      (floattostr(Dm_ar.Arinv05VatAmt.AsFloat) <> floattostr(SVDamt)) Or
      (floattostr(Dm_ar.Arinv05NetTotal.AsFloat)<> floattostr(SDamt)) Then
   begin
      if MessageDlg(' ยอดไม่เท่ากัน ต้องการแก้ไข ',mtInformation, [mbYes, mbNo], 0) = mrNo then
         Dm_ar.Qarpay.CancelUpdates
      else
      begin
         if MessageDlg(' ต้องการให้เครื่องปรับงวดสุดท้ายให้ ',mtInformation, [mbYes, mbNo], 0) = mrYes then
         begin
            SNDamt := 0;         SVDamt := 0;
            SDamt  := 0;
            Dm_ar.Qarpay.first;
            XTnopay := 1;
            While not Dm_ar.Qarpay.Eof do
            Begin
               if XTnopay = Dm_Ar.Arinv05TNOPAY.ASFLOAT then
               begin
                  Dm_ar.Qarpay.edit;
                  Dm_ar.QarpayN_Damt.AsFloat := Dm_ar.Arinv05Total.AsFloat-SNDamt;
                  Dm_ar.QarpayV_Damt.AsFloat := Dm_ar.Arinv05VatAmt.AsFloat-SVDamt;
                  Dm_ar.QarpayDamt.AsFloat   := Dm_ar.Arinv05NetTotal.AsFloat-SDamt;
               end;
               SNDamt := SNDamt+Dm_ar.QarpayN_Damt.AsFloat;
               SVDamt := SVDamt+Dm_ar.QarpayV_Damt.AsFloat;
               SDamt  := SDamt+Dm_ar.QarpayDamt.AsFloat;
               XTnopay:= XTnopay+1;
               Dm_ar.Qarpay.Next;
            End;
         end
         else
         begin
            Dm_ar.Qarpay.Cancel;
            Abort;
         end;
      end;
   end
   else
   begin
      Dm_ar.Qarpay.Edit;
      Dm_ar.Qarpay.Post;
   end;
   Dm_Ar.Arinv05.Post;
end;

procedure TFmArinv05.DataSource1StateChange(Sender: TObject);
Var N:Word;
begin
  InsBtn.Enabled  := (DataSource1.State=Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Enabled  := (DataSource1.State=Dsbrowse) and (DBkbd1.AllowDelete);
  Enqbtn.Enabled  := DataSource1.State=Dsbrowse;
  CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
  SavBtn.Enabled  := (DataSource1.State in DsEditmodes) and
                     ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
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
      end;
    End;

end;

procedure TFmArinv05.CancBtnClick(Sender: TObject);
begin
   if Dm_Ar.Arinv05.Active then Dm_Ar.Arinv05.CancelUpdates;
   if Dm_ar.Qarpay.Active then Dm_ar.Qarpay.CancelUpdates;
end;

procedure TFmArinv05.delBtnClick(Sender: TObject);
begin
  if MessageDlg(' แน่ใจหรือไม่ที่จะยกเลิกการสร้างตาราง',mtInformation, [mbYes, mbNo], 0) = mrYes then
  Begin
   Dm_ar.Qarpay.First;
   If Dm_ar.Qarpay.Fieldbyname('Payment').Asfloat >0 Then
   Raise Exception.Create('ชำระเงินแล้วยกเลิกไม่ได้');

   Dm_ar.Arinv05.Edit;
   Dm_ar.Arinv05Tnopay.AsFloat  := 1;
   Dm_ar.Arinv05Credtm.AsFloat  := 0;
   Dm_ar.Arinv05InvDue.AsString := '';
   Dm_ar.Arinv05L_Due.AsString  := '';
   //
   Dm_ar.Qarpay.First;
   While Not Dm_ar.Qarpay.eof Do
   Dm_ar.Qarpay.Delete;
   //
   Dm_ar.Arinv05.Post;
  End;
end;

procedure TFmArinv05.DBEdit10Exit(Sender: TObject);
begin
   If DBEdit9.Text = '' Then
      Raise Exception.Create(' ไม่มีระยะห่าง/งวด ');
   If DBEdit8.Text = '' Then
      Raise Exception.Create(' ไม่มีวันดิวงวดแรก ');
   Dm_ar.CreateDue;
end;

procedure TFmArinv05.DBGrid1ColExit(Sender: TObject);
Var XDAMT,XNDamt,NDamt : double;
    SNDamt : string;
begin
  If Dm_ar.Qarpay.State =DsEdit Then
  If (DbGrid1.SelectedField.FieldName) = 'N_DAMT'  Then
  Begin
    Dm_ar.QarpayV_Damt.Asfloat := (Dm_ar.QarpayN_DAMT.AsFloat*Dm_ar.QarpayVatrt.Asfloat)/100;
    Dm_ar.QarpayDamt.AsFloat   := Dm_ar.QarpayN_Damt.AsFloat+Dm_ar.QarpayV_Damt.AsFloat;
  End;
end;

procedure TFmArinv05.DBGrid1Exit(Sender: TObject);
begin
   DBkbd1.Disable := False;
end;

procedure TFmArinv05.DBGrid1Enter(Sender: TObject);
begin
   DBkbd1.Disable := True;
end;

procedure TFmArinv05.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
   Vk_Down    : Perform(Wm_nextDlgctl,0,0);
   Vk_Up      : Perform(Wm_nextDlgctl,1,0);
  end;
end;

procedure TFmArinv05.DBEdit7Change(Sender: TObject);
begin
     With Dm_ar.Query1 do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT Snam,Name1,Name2,Cuscod,Sallev FROM Armast '+
               'WHERE CUSCOD =:XCUSCOD ');
       Params[0].AsString := DBEdit7.text; //Dm_Ar.Arinv05Cuscode.AsString;
       Open;
     End;
     Edit1.Text := Dm_ar.Query1.FieldByName('Snam').AsString+
                   Dm_ar.Query1.FieldByName('Name1').AsString+'   '+
                   Dm_ar.Query1.FieldByName('Name2').AsString;
     Edit2.Text := Dm_ar.Query1.FieldByName('Sallev').AsString;
end;

procedure TFmArinv05.DBEdit3Change(Sender: TObject);
begin
  With Dm_ar.QOfficer do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT Officcod,Officnam FROM Officer '+
            'WHERE Officcod =:XOfficcod ');
    Params[0].AsString := Dbedit3.Text;//Dm_Ar.Arinv05OFFICCOD.AsString;
    Open;
  End;
  Edit3.text := Dm_ar.QOfficer.FieldByName('Officnam').AsString;
end;

procedure TFmArinv05.DBEdit8BtnClick(Sender: TObject);
begin
  Application.CreateForm(TBrDateForm,BrDateForm);
  if BrDateForm.ShowModal = MrOk then
     Dm_Ar.Arinv05INVDUE.AsDateTime := BrDateForm.Date
end;

procedure TFmArinv05.EnqBtnClick(Sender: TObject);
begin
   Application.CreateForm(TFmHpInv5,FmHpInv5);
   FmHpInv5.DBGrid2.Visible := true;
   If FmHpInv5.ShowModal=Mrok Then
   Begin
      With Dm_Ar.Arinv05 do
      Begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT * FROM ARINVOI WHERE INVNO =:XINVNO ');
         Params[0].AsString := FmHpInv5.Query1.FieldByName('Invno').AsString;
         Open;
      End;

      With Dm_ar.Query1 do
      Begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT Snam,Name1,Name2,Cuscod,Sallev FROM Armast '+
                 'WHERE CUSCOD =:XCUSCOD ');
         Params[0].AsString := Dm_Ar.Arinv05Cuscode.AsString;
         Open;
      End;
      Edit1.Text := Dm_ar.Query1.FieldByName('Snam').AsString+
                    Dm_ar.Query1.FieldByName('Name1').AsString+'   '+
                    Dm_ar.Query1.FieldByName('Name2').AsString;
      Edit2.Text := Dm_ar.Query1.FieldByName('Sallev').AsString;

      With Dm_ar.QOfficer do
      Begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT Officcod,Officnam FROM Officer '+
                 'WHERE Officcod =:XOfficcod ');
         Params[0].AsString := Dm_Ar.Arinv05OFFICCOD.AsString;
         Open;
      End;
      Edit3.text := Dm_ar.QOfficer.FieldByName('Officnam').AsString;
   End;

   With Dm_ar.Qarpay do
   Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAY WHERE INVNO =:XINVNO '+
              'ORDER BY NOPAY ');
      Params[0].AsString := Dm_Ar.Arinv05Invno.AsString;
      Open;
   End;

   DBEdit8.ReadOnly := True;
   DBEdit9.ReadOnly := True;
   Dbedit10.Enabled := Dm_ar.Qarpay.RecordCount=0;
end;

procedure TFmArinv05.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.
