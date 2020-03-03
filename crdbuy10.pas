unit CrdBuy10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Dbkbd, Db, ComCtrls, ToolWin,
  ImgList, AdvGlowButton, AdvOfficeStatusBar, RzSpnEdt, AdvToolBar, cxTextEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxButtonEdit, RzBorder, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, BusinessSkinForm, dxStatusBar;

type
  TFCredBuy1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    FldCombo2: TcxDBButtonEdit;
    FldCombo3: TcxDBButtonEdit;
    FldCombo5: TcxDBButtonEdit;
    FldEdit1: TcxDBTextEdit;
    wwDBCrDate: TcxDBDateEdit;
    FldEdit2: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    FldCombo1: TcxDBButtonEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FldCombo3Exit(Sender: TObject);
    procedure FldCombo1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FldCombo2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FldCombo3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FldCombo5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure FindRefNo ;
    Procedure Del_CrdBuy1 ;
  public
    { Public declarations }
  end;

var
  FCredBuy1: TFCredBuy1;
  S : String;

implementation
uses Dm1,DmTax,SrchTax1,Srchset1,USoftFirm, Dmsec;

{$R *.DFM}

procedure TFCredBuy1.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDTAX','HDTAX02_1');
   DBkbd1.AllowDelete := SFMain.Del_right;
   DBkbd1.AllowEditing:= SFMain.Edit_right;
   DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFCredBuy1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Dm_Tax.QCredBuy1.Close ;
   Dm_Tax.QTaxBuy2.Close;
   Dm_Tax.QCrByInvT1.Close ;
   Dm_Tax.QCrByInvT2.Close ;
   Dm01.QLastno.Close ;
   Action := Cafree ;
   FCredBuy1 := Nil;
end;

procedure TFCredBuy1.DataSource1StateChange(Sender: TObject);
Var n:word;
begin
   InsBtn.Visible  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
   Delbtn.Visible  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete) and (FldEdit1.Text <> '');
   EnqBtn.Visible  := InsBtn.Visible;
   CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
   SavBtn.Visible  := (DataSource1.State in DsEditmodes)and
                      ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
   CancBtn.Visible := SavBtn.Visible;
   If DataSource1.Dataset.State = Dsbrowse Then
   begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TcxDBTextEdit)and (TcxDBTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBTextEdit(Components[n]).Properties.Readonly := True;
          TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
        end;
        If (Components[n] Is TcxDBButtonEdit)and(TcxDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBButtonEdit(Components[n]).Enabled := False;
        end;
        if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(components[n]).Tag=0) then
        begin
          TcxDBDateEdit(Components[n]).Properties.Readonly := True;
          TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
        end;

      end;
    End
    Else
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TcxDBTextEdit)and (TcxDBTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBTextEdit(Components[n]).Properties.Readonly := False;
          TcxDBTextEdit(Components[n]).Style.Color := clWhite;
        end;
        If (Components[n] Is TcxDBButtonEdit)and(TcxDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBButtonEdit(Components[n]).Enabled := True;
        end;
        if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(components[n]).Tag=0) then
        begin
          TcxDBDateEdit(Components[n]).Properties.Readonly := False;
          TcxDBDateEdit(Components[n]).Style.Color := clWhite;
        end;
      end;
   End;

   If DataSource1.State = DsEdit Then
   Begin
      FldCombo1.Enabled  := False;
      FldCombo2.Enabled  := False;
      FldCombo3.Enabled  := False;
      wwDBCrDate.Enabled  := False;
      FldEdit1.Enabled   := False;
   End
   Else
   If (DataSource1.State = DsInsert) Then
   Begin
      FldCombo1.Enabled  := True;
      FldCombo2.Enabled  := True;
      FldCombo3.Enabled  := True;
      wwDBCrDate.Enabled  := True;
      FldEdit1.Enabled   := True;
   End ;
   If Dm_Tax.QCredBuy1.fieldbyname('FLAG').Asstring ='C' Then
   begin
     Label19.Visible :=True;
     FldEdit1.Style.Color  := clBtnFace;
     Delbtn.Visible  := False;
   end
   Else
   begin
     Label19.Visible :=False;
     FldEdit1.Style.Color  := ClWhite;
     delbtn.Visible  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete) and (FldEdit1.Text <> '');
   end;
end;

procedure TFCredBuy1.InsBtnClick(Sender: TObject);
begin
   if not Dm_tax.QDbConfig.Active then Dm_tax.QDbConfig.Open;
   With Dm_Tax.QCredBuy1 Do
   Begin
     Close;
     Sql.clear;
     Sql.add('SELECT * FROM TAXBUY WHERE TAXNO=:EDIT1');
     Params[0].Asstring :='';
     open;
     Insert;
   End;
end;

procedure TFCredBuy1.CancBtnClick(Sender: TObject);
begin
   Dm_Tax.QCredBuy1.Cancel;
end;

procedure TFCredBuy1.DelBtnClick(Sender: TObject);
begin
  if FldEdit1.Text = '' Then
  SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk :
    begin
      Del_CrdBuy1;
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDTAX02_1','DELETE',FldEdit1.Text);
      if DM_SEC.qrRecent.UpdatesPending then
        if (DM_SEC.qrRecent.ApplyUpdates = 0) then
          DM_SEC.qrRecent.CommitUpdates
        else
          raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
      With Dm_Tax.QCredBuy1 Do
      Begin
        Close;
        Sql.clear;
        Sql.add('SELECT * FROM TAXBUY WHERE TAXNO=:Var0');
        Params[0].Asstring :='';
        open;
      End;
    end;
  end;
end;

procedure TFCredBuy1.SavBtnClick(Sender: TObject);
begin
   S   := Dm_Tax.QCredBuy1.FieldByName('Taxno').Asstring;
   if Dm_Tax.QCredBuy1.state in [Dsinsert,Dsedit] then
   Begin
     If (Dm_Tax.QCredBuy1TaxRefNo.value<>'') and
        (Dm_Tax.QCredBuy1TotTAX.value<>0) Then
     begin
       If (Dm_Tax.QCrByInvT1.FieldByName('Flag').Asstring='D') Then
       Begin
           Dm_Tax.QCredBuy1.Post;
       End
       Else
         SFMain.RaiseException('รถคันนี้ถูกขายแล้วไม่สามารถออกใบลดหนี้ได้') ;
     end
     Else
       SFMain.RaiseException('กรุณาป้อนเลขที่ใบกำกับที่อ้างถึง') ;
   End;
   With Dm_Tax.QCredBuy1 Do
   Begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXBUY WHERE TAXNO=:EDIT1');
    Params[0].Asstring := S;
    open;
   End;

   if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDTAX02_1','INSERT',FldEdit1.Text) else
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDTAX02_1','EDIT',FldEdit1.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFCredBuy1.FindRefNo ;
Begin
    With Dm_tax.QTaxBuy2 Do
    Begin
       Close;
       Sql.clear;
       SQL.Add('SELECT * FROM TAXBUY WHERE TAXNO = :V0  AND TAXTYP =''B'' ');
       Params[0].Asstring:= Dm_Tax.QCredBuy1.FieldByName('TAXREFNO').Asstring;
       Open;
       If Eof and Bof Then
          SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
    End;
    Dm_Tax.QCredBuy1.FieldByName('RECVDT').AsDateTime := Dm_tax.QTaxBuy2.FieldByName('TAXDATE').AsDateTime ;
    Dm_Tax.QCredBuy1.FieldByName('CUSCOD').Asstring  := Dm_tax.QTaxBuy2.FieldByName('CUSCOD').AsString ;
    Dm_Tax.QCredBuy1.Fieldbyname('VATRT').Asfloat    := Dm_tax.QTaxBuy2.FieldByName('VATRT').AsFloat ;
    Edit1.Text := Dm_tax.QTaxBuy2.FieldByName('TAXREFNO').AsString ;
    With Dm_tax.QCrByInvT2 Do
    Begin
       Close;
       Sql.clear;
       SQL.Add('SELECT * FROM APINVOI WHERE RECVNO = :V0');
       Params[0].Asstring:= Dm_Tax.QTaxBuy2.FieldByName('TAXREFNO').Asstring;
       Open;
    End;
End;

procedure TFCredBuy1.EnqBtnClick(Sender: TObject);
begin
   Application.CreateForm(TSearchTax,SearchTax);
   SearchTax.Xcont := '1' ;
   if SearchTax.ShowModalTaxCrdB1 = MrOk then
   Begin
      With Dm_Tax.QCredBuy1 Do
      Begin
         Close;
         Sql.clear;
         Sql.add('SELECT * FROM TAXBUY WHERE TAXNO=:EDIT1');
         Params[0].Asstring := SearchTax.Keyno;
         open;
      End;
      With Dm_tax.QTaxBuy2 Do
      Begin
         Close;
         Sql.clear;
         SQL.Add('SELECT * FROM TAXBUY WHERE TAXNO = :V0');
         Params[0].Asstring:= Dm_Tax.QCredBuy1.FieldByName('TAXREFNO').Asstring;
         Open;
         If Eof and Bof Then
           SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
      End;
      edit1.Text :=  Dm_Tax.QTaxBuy2.fieldbyname('TAXREFNO').AsString;
      With Dm_tax.QCrByInvT1 Do
      Begin
         Close;
         Sql.clear;
         SQL.Add('SELECT * FROM INVTRAN WHERE STRNO = :V0');
         Params[0].Asstring:= Dm_Tax.QCredBuy1.FieldByName('STRNO').Asstring;
         Open;
      End;
      With Dm_tax.QCrByInvT2 Do
      Begin
         Close;
         Sql.clear;
         SQL.Add('SELECT * FROM APINVOI WHERE RECVNO = :V0');
         Params[0].Asstring:= Dm_Tax.QTaxBuy2.FieldByName('TAXREFNO').Asstring;
         Open;
      End;
   End;
end;

procedure TFCredBuy1.Del_CrdBuy1 ;
Begin
   With Dm_tax do
   begin
       QCrByInvT2.Edit;
       QCrByInvT2.FieldByName('RtnAmt').Asfloat := QCrByInvT2.FieldByName('RtnAmt').Asfloat-QCredBuy1TOTTAX.AsFloat;
       QCrByInvT2.Post;

       QCredBuy1.Edit;
       QCredBuy1.FieldByName('Flag').Asstring    := 'C' ;
       QCredBuy1.FieldByName('Candat').Asdatetime := Now ;
       QCredBuy1.FieldByName('CANCELID').Asstring   := SFMain.Xuser_Id;
       QCredBuy1.Post ;
   End;
End;

procedure TFCredBuy1.CloseBtnClick(Sender: TObject);
begin
  self.Close ;
end;

procedure TFCredBuy1.FldCombo3Exit(Sender: TObject);
begin
    FindRefno ;
end;

procedure TFCredBuy1.FldCombo1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet,SearchSet);
  If SearchSet.ShowModalsetLoCat=Mrok Then
     Dm_Tax.QCredBuy1.FieldByName('LOCAT').Asstring := SearchSet.KeyNo;
end;

procedure TFCredBuy1.FldCombo2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax,SearchTax);
  SearchTax.ShowModalTypCred ;
end;

procedure TFCredBuy1.FldCombo3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FormatSettings.shortdateformat :='dd/mm/yyyy';
   Application.CreateForm(TSearchTax,SearchTax);
   if SearchTax.ShowModalTaxBuy = MrOk then
   Begin
      Dm_Tax.QCredBuy1.FieldByName('TAXREFNO').Asstring := SearchTax.KeyNo;
      FindRefno ;
   End;
end;

procedure TFCredBuy1.FldCombo5PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Application.CreateForm(TSearchTax,SearchTax);
   SearchTax.Xcont := Edit1.Text ;
   if SearchTax.ShowModalStrRecv = MrOk then
      Dm_Tax.QCredBuy1.FieldByName('Strno').Asstring := SearchTax.KeyNo;
   With Dm_tax.QCrByInvT1 Do
   Begin
      Close;
      Sql.clear;
      SQL.Add('SELECT * FROM INVTRAN WHERE STRNO = :V0');
      Params[0].Asstring:= Dm_Tax.QCredBuy1.FieldByName('STRNO').Asstring;
      Open;
      If Dm_tax.QCrByInvT1.FieldByName('Flag').Asstring = 'C' Then
         SFMain.RaiseException('รถคันนี้ถูกขายแล้วไม่สามารถออกใบลดหนี้ทั้งรายการ');
   End;
   If not (Dm_tax.QCrByInvT1.Eof and Dm_tax.QCrByInvT1.Bof) Then
   Begin
      Dm_Tax.QCredBuy1.Fieldbyname('BALANCE').Asfloat   := Dm_tax.QCrByInvT1.FieldByName('NETCOST').AsFloat ;
      Dm_Tax.QCredBuy1.Fieldbyname('VAT').Asfloat   := Dm_tax.QCrByInvT1.FieldByName('CRVAT').AsFloat ;
      Dm_Tax.QCredBuy1.Fieldbyname('TOTTAX').Asfloat   := Dm_tax.QCrByInvT1.FieldByName('TOTCOST').AsFloat ;
   End;
end;

procedure TFCredBuy1.FormShow(Sender: TObject);
begin
   Dm01.QCondpay.Open;
   With Dm_Tax.QCredBuy1 Do
   Begin
     Close;
     Sql.clear;
     Sql.add('SELECT * FROM TAXBUY WHERE TAXNO=:EDIT1');
     Params[0].Asstring :='';
     open;
   End;
end;

end.
