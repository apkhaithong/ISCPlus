unit ArOthr1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Dbkbd, Db, ComCtrls, ToolWin,
  RzSpnEdt, AdvGlowButton, AdvOfficeStatusBar, cxMemo, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, AdvToolBar, AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons,
  AdvPanel, ActnList, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  System.Actions, BusinessSkinForm, dxStatusBar, frxDCtrl, frxBDEComponents,
  frxExportPDF, frxExportCSV, frxCross, frxExportImage, frxClass,
  frxExportBaseDialog, frxExportXLSX, frxRich, frxGradient, frxChBox,
  frxTableObject, frxFDComponents, frxChart, frxBarcode;

type
  TFArOth10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Edit4: TcxTextEdit;
    Edit1: TcxTextEdit;
    DataSource1: TDataSource;
    ActionList1: TActionList;
    atEdit: TAction;
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
    PrintBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    dxStatusBar1: TdxStatusBar;
    DBLocat: TcxDBButtonEdit;
    dbArCont: TcxDBTextEdit;
    dbTypeSal: TcxDBButtonEdit;
    wwDBarDate: TcxDBDateEdit;
    dbContno: TcxDBButtonEdit;
    dbVat: TcxDBTextEdit;
    DBCust: TcxDBButtonEdit;
    DBPayfor: TcxDBButtonEdit;
    DBEdit2: TcxDBTextEdit;
    wwDBDateDue: TcxDBDateEdit;
    DBMemo1: TcxDBMemo;
    DBkbd1: TDBkbd;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxReport1: TfrxReport;
    frxChartObject1: TfrxChartObject;
    frxFDComponents1: TfrxFDComponents;
    frxReportTableObject1: TfrxReportTableObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxDialogControls1: TfrxDialogControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbContnoExit(Sender: TObject);
    procedure DBPayforChange(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLocatPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbTypeSalPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbContnoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DBCustPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DBPayforPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure atEditExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    S : String;
  end;
var
  FArOth10: TFArOth10;

implementation
uses Dm1,DmAr,dmSal,Srchset1, Srchsal1,uSoftfirm,dmsec, unfrPreview;

{$R *.DFM}

procedure TFArOth10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FArOth10 := nil;
   Dm_Ar.QArOthr.Close ;
   Action := Cafree ;
end;

procedure TFArOth10.DataSource1StateChange(Sender: TObject);
Var n:word;
begin
   InsBtn.Visible  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
   Delbtn.Visible  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete) and (dbArCont.Text<> '');
   CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
   SavBtn.Visible  := (DataSource1.State in DsEditmodes)and
                      ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
   EnqBtn.Visible  := DataSource1.State=Dsbrowse;                      
   CancBtn.Visible := SavBtn.Visible;
   PrintBtn.Visible  := (DataSource1.Dataset.State=DsBrowse)and (dbArCont.Text<> '') ;

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
        if (Components[n] Is TcxDBMemo)and(TcxDBMemo(Components[n]).Tag=0) then
        begin
          TcxDBMemo(Components[n]).Properties.ReadOnly := True;
          TcxDBMemo(Components[n]).Style.Color :=clBtnFace;
        end;
        if (Components[n] Is TcxTextEdit)and(TcxTextEdit(Components[n]).Tag=0) then
        begin
          TcxTextEdit(Components[n]).Style.Color := clBtnFace;
        end;
      end;
    End  Else
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
        if (Components[n] Is TcxDBMemo)and(TcxDBMemo(Components[n]).Tag=0) then
        begin
          TcxDBMemo(Components[n]).Properties.ReadOnly := False;
          TcxDBMemo(Components[n]).Style.Color := clWhite;
        end;
        if (Components[n] Is TcxTextEdit)and (TcxTextEdit(Components[n]).Tag=0) then
        begin
          TcxTextEdit(Components[n]).Style.Color :=  clWhite;
        end;
      end;
    End;
    If (DataSource1.Dataset.State = DsEdit) then
    begin
       wwDBARDate.Enabled  := False;
       wwDBDateDue.Enabled := False;
       DBLocat.Enabled  := False;
       DBCust.Enabled   := False;
       dbTypeSal.Enabled:= False;
       DBContno.Enabled := False;
//       DBPayfor.Enabled := False;
       DBVat.Properties.Readonly   := True;
//       DBEdit2.Properties.Readonly := True;
    End;

    If (DataSource1.Dataset.State = DsEdit) and (Dm_Ar.QArOthrSMPAY.AsFloat = 0) then
    begin
      DBPayfor.Enabled := True;
      DBEdit2.Properties.Readonly := False;
    End;

    //--Lock Branch---
    if not Dm_sal.QDbConfig.Active then Dm_sal.QDbConfig.Open;
    DBArCont.Properties.Readonly  := Dm_sal.QDbConfig.FieldByName('R_OTHRNO').Asstring='Y';
    DBLocat.Enabled     := (SFMain.XChgloc='Y') and (DataSource1.Dataset.State=DsInsert);
    wwDBarDate.Enabled  := (SFMain.XChgDate='Y') and (DataSource1.Dataset.State=DsInsert);
    If DBArCont.Properties.Readonly Then
       DBArCont.Style.Color :=clBtnFace
    Else
       DBArCont.Style.Color := clWhite;
end;

procedure TFArOth10.InsBtnClick(Sender: TObject);
begin
   If Not (Dm_sal.QDbConfig.Active) Then Dm_sal.QDbConfig.Open;
   Dm_Ar.XRunCont := Dm_sal.QDbConfig.FieldByName('R_OTHRNO').Asstring ;
   Dm_Sec.Do_With_Query(actInsert,Dm_Ar.QArOthr,'SELECT * FROM AROTHR WHERE ARCONT=:EDIT1',['']);
   Edit1.Text := ''; Edit4.Text := '';
end;

procedure TFArOth10.CancBtnClick(Sender: TObject);
begin
   Dm_Ar.QArOthr.Cancel;
   Edit1.Text := ''; Edit4.text :='';
end;

procedure TFArOth10.DelBtnClick(Sender: TObject);
begin
  if dbArCont.Text = '' Then
  SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk :
    begin
      Dm_Ar.QArOthr.delete;
      Edit1.Text := '';   Edit4.Text := '';
    end;
  end;
end;

procedure TFArOth10.EnqBtnClick(Sender: TObject);
begin
   Application.Createform(TSearchSale,SearchSale);
   If SearchSale.ShowModalArOthr=Mrok Then
   begin
      Dm_Sec.Do_With_Query(actOpen,Dm_Ar.QArOthr,'SELECT * FROM AROTHR WHERE ARCONT=:CONT',[SearchSale.Keyno]);
      Dm_Sec.Do_With_Query(actOpen,Dm_Ar.Query1,'SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD=:XCUS',[Dm_Ar.QArOthr.FieldByName('Cuscod').Asstring]);
      edit1.text := Dm_Ar.Query1.FieldByName('SNam').Asstring+
                    Dm_Ar.Query1.FieldByName('Name1').Asstring+'  '+
                    Dm_Ar.Query1.FieldByName('Name2').Asstring;
      Dm_Sec.Do_With_Query(actOpen,Dm_Ar.Query1,'SELECT FORCODE,FORDESC FROM PAYFOR WHERE FORCODE=:VAR0',[Dm_Ar.QArOthr.FieldByName('PAYFOR').Asstring]);
      edit4.text := Dm_Ar.Query1.FieldByName('FORDESC').Asstring;
   End;
end;

procedure TFArOth10.SavBtnClick(Sender: TObject);
begin
   S := Dm_Ar.QArOthr.FieldByName('ArCont').Asstring;
   if Dm_Ar.QArOthr.state in [Dsinsert,Dsedit] then
   begin
       IF dbTypeSal.Text = '' THEN
       SFMain.RaiseException('ยังไม่ระบุประเภทการขาย') ;
//             fldcombo4.SetFocus;

       If Dm_Ar.QArOthr.FieldByName('PAYAMT').Asfloat > 0 Then
       begin
          if (Dm_Ar.QArOthr.FieldByName('SMPAY').AsFloat >0) and (SFMain.XLevel<>'1') then
             SFMain.RaiseException('มีการชำระเงินแล้วไม่อนุญาติให้แก้ไข') ;
              Dm_Ar.QArOthr.Post;
       end Else
       begin
           SFMain.RaiseException('ยังไม่บันทึกจำนวนเงินตั้งลูกหนี้') ;
           Edit1.Text := '';
       end;
   end;
end;

procedure TFArOth10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFArOth10.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F7 then
      EnqBtnClick(Sender);
   if Key = VK_F2 then
      SavBtnClick(Sender);
   if Key = VK_F8 then
      DelBtnClick(Sender);
   if Key = VK_F5 then
      InsBtnClick(Sender);
end;

procedure TFArOth10.PrintBtnClick(Sender: TObject);
begin
  Dm_Sec.Do_Prev_Edit_FastReport(frxReport1,'fr_ArOthInvoi.fr3','1'); {1 = Preview Report}
end;

procedure TFArOth10.FormShow(Sender: TObject);
begin
   if not Dm_sal.QDbConfig.Active then Dm_sal.QDbconfig.Open;
   Dm_Sec.Do_With_Query(actOpen,Dm_AR.QArOthr,'SELECT * FROM AROTHR WHERE CUSCOD=:EDIT1',['']);
end;

procedure TFArOth10.dbContnoExit(Sender: TObject);
begin
   If Dm_Ar.QArOthr.FieldByName('CONTNO').Asstring <> '' Then
   begin
      With Dm_Ar.Query1 Do
      begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT LOCAT,CONTNO,CUSCOD FROM ARCRED WHERE CONTNO=:V0 UNION '+
                 'SELECT LOCAT,CONTNO,CUSCOD FROM ARFINC WHERE CONTNO=:V0 UNION '+
                 'SELECT LOCAT,CONTNO,CUSCOD FROM AR_INVOI WHERE CONTNO=:V0');
         Params[0].Asstring := Dm_Ar.QArOthr.FieldByName('CONTNO').Asstring ;
         Open;
         If Not (eof and bof) Then
         Dm_Ar.QArOthr.FieldByName('Cuscod').Asstring := FieldByName('Cuscod').Asstring;
      end;
   end;
   If Dm_Ar.QArOthr.FieldByName('Cuscod').Asstring <> '' Then
   begin
     Dm_Sec.Do_With_Query(actOpen,Dm_Ar.Query1,'SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD=:CUST',[Dm_Ar.QArOthr.FieldByName('Cuscod').Asstring]);
     Edit1.Text := Dm_Ar.Query1.FieldByName('Snam').Asstring +
                   Dm_Ar.Query1.FieldByName('Name1').Asstring +'  '+
                   Dm_Ar.Query1.FieldByName('Name2').Asstring ;
   end;
end;

procedure TFArOth10.DBPayforChange(Sender: TObject);
begin
  Edit4.Text := DM01.FindShowDesc('PAYFOR','FORDESC','FORCODE',DBPayfor.Text);
end;

procedure TFArOth10.DBMemo1Click(Sender: TObject);
begin
   FArOth10.KeyPreview := False;
end;

procedure TFArOth10.DBMemo1Exit(Sender: TObject);
begin
  FArOth10.KeyPreview := True;
end;

procedure TFArOth10.FormCreate(Sender: TObject);
begin
   SFMain.Check_right('HDSL', 'HDSL01_7');
   DBkbd1.AllowDelete := SFMain.Del_right;
   DBkbd1.AllowEditing:= SFMain.Edit_right;
   DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFArOth10.DBLocatPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Application.Createform(TSearchSet,SearchSet);
   If SearchSet.ShowModalsetLocat=Mrok Then
      Dm_Ar.QArOthr.FieldByName('Locat').Asstring := SearchSet.KeyNo;
end;

procedure TFArOth10.dbTypeSalPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Application.Createform(TSearchSet,SearchSet);
   If SearchSet.ShowModalTypsale=Mrok Then
      Dm_Ar.QArOthr.FieldByName('TSale').Asstring := SearchSet.KeyNo;

end;

procedure TFArOth10.dbContnoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if Dm_Ar.QArOthr.FieldByName('TSale').Asstring ='' then
   begin
     MessageDlg('ยังไม่ได้ระบุประเภทการขาย ! ', MtError,[mbOK],0 );
   end else
   Begin
   Application.Createform(TSearchSale,SearchSale);
//   SearchSale.XLocat :=Dm_Ar.QArOthr.Fieldbyname('Locat').Asstring;
   If Dm_Ar.QArOthr.FieldByName('TSale').Asstring ='C' Then
   Begin
      If SearchSale.ShowModalArCred=Mrok Then
         Dm_Ar.QArOthr.FieldByName('Contno').Asstring := SearchSale.KeyNo;
   end;
   If Dm_Ar.QArOthr.FieldByName('TSale').Asstring ='F' Then
   Begin
      If SearchSale.ShowModalArFinc=Mrok Then
         Dm_Ar.QArOthr.FieldByName('Contno').Asstring := SearchSale.KeyNo;
   end;
   If Dm_Ar.QArOthr.FieldByName('TSale').Asstring ='A' Then
   Begin
      If SearchSale.ShowModalArAgen=Mrok Then
         Dm_Ar.QArOthr.FieldByName('Contno').Asstring := SearchSale.KeyNo;
   end;
   If Dm_Ar.QArOthr.FieldByName('TSale').Asstring ='O' Then
   Begin
      If SearchSale.ShowModalArOptn=Mrok Then
         Dm_Ar.QArOthr.FieldByName('Contno').Asstring := SearchSale.KeyNo;
   end;
   If Dm_Ar.QArOthr.FieldByName('TSale').Asstring ='T' Then
   Begin
      DBContno.Properties.ReadOnly := True ;
      Dm_Ar.QArOthr.FieldByName('Contno').Asstring := '';
   end Else
   begin
//      Dm_Ar.QArOthr.FieldByName('Cuscod').Asstring := SearchSale.HQuery1.FieldByName('Cuscod').Asstring;
     Dm_Sec.Do_With_Query(actOpen,Dm_Ar.Query1,'SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD=:CUST',[Dm_Ar.QArOthr.FieldByName('Cuscod').Asstring]);
     Edit1.Text := Dm_Ar.Query1.FieldByName('Snam').Asstring +
                   Dm_Ar.Query1.FieldByName('Name1').Asstring +'  '+
                   Dm_Ar.Query1.FieldByName('Name2').Asstring ;
      end;
     end;
  dbContno.SetFocus;
end;

procedure TFArOth10.DBCustPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Application.Createform(TSearchSale,SearchSale);
   If SearchSale.ShowModalCuscod=Mrok Then
   begin
      Dm_Ar.QArOthr.FieldByName('Cuscod').Asstring := SearchSale.KeyNo;
      Dm_Sec.Do_With_Query(actOpen,Dm_Ar.Query1,'SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD=:CUST',[Searchsale.KeyNo]);
      Edit1.Text := Dm_Ar.Query1.FieldByName('Snam').Asstring +
                    Dm_Ar.Query1.FieldByName('Name1').Asstring +'  '+
                    Dm_Ar.Query1.FieldByName('Name2').Asstring ;
   End;

end;

procedure TFArOth10.DBPayforPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Application.Createform(TSearchSet,SearchSet);
   SearchSet.XSysSet := '%';
   If SearchSet.ShowModalsetPayfor=Mrok Then
   Dm_Ar.QArOthr.FieldByName('Payfor').Asstring := SearchSet.KeyNo;
end;

procedure TFArOth10.DBEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet,SearchSet);
  if SearchSet.ShowModalSetOfficer = MrOk then
     Dm_Ar.QArOthr.FieldByName('FOLLOWCODE').Asstring := SearchSet.Keyno;
end;

procedure TFArOth10.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
//   If UPPERCASE(NAME)='BAHTTEXT' Then
//   begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//    VAL := SFMain.n2wBill.Text;
//  end;
//  If UPPERCASE(NAME)='DATETOTHAI' Then
//     VAL := SFMain.DateToThai(FRPARSER.Calc(P1),FRPARSER.Calc(P2));

end;

procedure TFArOth10.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if (UPperCase(VarName)='VCONTNO') then
       Value := DBArCont.Text;
end;

procedure TFArOth10.atEditExecute(Sender: TObject);
begin
  Dm_Sec.Do_Prev_Edit_FastReport(frxReport1,'fr_ArOthInvoi.fr3','2'); {2 = Design Report}
end;

end.
