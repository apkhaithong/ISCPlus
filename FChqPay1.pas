unit FChqPay1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Mask, DBCtrls, Buttons, StdCtrls, DB, ExtCtrls, ComCtrls,
  ToolWin, RzSpnEdt, AdvGlowButton, AdvToolBar, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDropDownEdit,
  cxCalendar, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, AdvPanel,
  BusinessSkinForm, dxStatusBar;

type
  TFmChqpay1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit13: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    SourceChqmas: TDataSource;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    SaveBtn: TAdvGlowButton;
    Canpayin: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Edit3: TcxTextEdit;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Edit2: TcxButtonEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit10: TcxDBDateEdit;
    wwDBChqDt: TcxDBDateEdit;
    DBEdit2: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SaveBtnClick(Sender: TObject);
    procedure CanpayinClick(Sender: TObject);
    procedure SourceChqmasDataChange(Sender: TObject; Field: TField);
    procedure Edit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure xExit(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    procedure Showchq;
  public
    { Public declarations }
    Flgdel :Boolean;
  end;

var
  FmChqpay1: TFmChqpay1;

implementation

uses uSoftFirm,DmFin01, Srchset1,Srchfin;

{$R *.DFM}

procedure TFmChqpay1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dmfin.QChqmast.Close;
  Dmfin.QChqtran.Close;
  Dmfin.QChqtran_Oth.Close;
  Dmfin.QChqtran_Typ.Close;
  Dmfin.QChqtran_Dec.Close;

  Dmfin.QContno.Close;
  Action := Cafree;
  FmChqPay1 := nil;
end;

procedure TFmChqpay1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End;
end;

procedure TFmChqpay1.SaveBtnClick(Sender: TObject);
Var S:string; Tax_Fnop,Tax_Lnop : Double;
begin
  If Edit2.Text='' Then
  begin
    Edit2.Setfocus;
    sfmain.RaiseException('ยังไม่ระบุเลขที่เช็ค..!');
  end;

  If DBEdit2.Text='' Then
    sfmain.RaiseException('ยังไม่ระบุบัญชีที่นำฝาก..!');

  If DmFin.QChqmast.Fieldbyname('Paydt').Asstring = '' Then
  begin
    wwDBChqDt.SetFocus;
    sfmain.RaiseException('ยังไม่บันทึกวันที่เช็คผ่าน..!');
  end;

  If DmFin.QChqmast.Fieldbyname('PAYINDT').Asstring = '' Then
  begin
    wwDBChqDt.SetFocus;
    sfmain.RaiseException('ยังไม่บันทึกวันที่ payin..!');
  end;

  If (DmFin.QChqmast.Fieldbyname('Paydt').Asdatetime <
      DmFin.QChqmast.Fieldbyname('Chqdt').Asdatetime)  Then
      sfmain.RaiseException('ระบุวันที่เช็คผ่านก่อนวันที่เช็ค..!');

  If (DmFin.QChqmast.Fieldbyname('Amtpaid').Asfloat + DmFin.QChqmast.Fieldbyname('Trad').Asfloat)
     <> DmFin.QChqmast.Fieldbyname('chqamt').Asfloat  Then
  begin
     DmFin.QChqmast.Edit;
     DmFin.QChqmast.Fieldbyname('amtpaid').Asstring := '';
     DmFin.QChqmast.Fieldbyname('Trad').Asstring    := '';
     sfmain.RaiseException('เงินที่ได้รับและค่าธรรมเนียมไม่สอดคล้องกับยอดเงินหน้าเช็ค..!');
  end;

  S := DmFin.QChqmast.Fieldbyname('Flag').Asstring;
  If  (S <>'B') and ( S <>'P') Then
  begin
    Edit2.Setfocus;
    sfmain.RaiseException('ไม่ใช่เช็ค Payin ');
  end;

  If DmFin.QChqmast.FieldByname('Flag').Asstring='B' Then
  begin
    If DmFin.QChqMast.Fieldbyname('Billno').asstring='' Then
    Begin
      //--Update Chqmast--
      DmFin.QChqmast.Edit;
      DmFin.QChqmast.Fieldbyname('Flag').Asstring    := 'P';
      //
      With DmFin.QBillmas do
      begin
        Close;
        SQL.Clear;
        SQL.ADD('SELECT * FROM BILLMAS WHERE BILLNO=:XBILL');
        Params[0].Asstring := '';
        Open;
        Insert;
      End;
      Dmfin.QBillmas.Post;
      //
      DmFin.QChqtran.First;
      DmFin.QChqtran.AfterPost := Nil;
      While Not DmFin.QChqtran.Eof Do
      Begin
        DmFin.QChqtran.Edit;
        DmFin.QChqtran.Fieldbyname('Flag').Asstring    := DmFin.QChqmast.Fieldbyname('Flag').Asstring;
        DmFin.QChqtran.Fieldbyname('Paydt').Asdatetime := DmFin.QChqmast.Fieldbyname('Paydt').Asdatetime;
        DmFin.QChqtran.Next;
      End;
      DmFin.QChqtran.AfterPost := DmFin.QChqtranAfterPost;
      //
      If DmFin.QBillmas.FieldByName('BILLNO').Asstring<>'' Then
      Begin
        DmFin.QChqmast.Edit;
        DmFin.QChqmastBILLNO.Asstring  := DmFin.QBillmas.FieldByName('BILLNO').Asstring;
        DmFin.QChqmastBILLDT.Asdatetime:= DmFin.QBillmas.FieldByName('BILLDT').Asdatetime;
        DmFin.QChqmast.Post;
      End;
    End
    Else
    sfmain.RaiseException('ออกใบเสร็จรับเงินแล้ว');
    //
    Edit2.Text := '';
    Edit3.Text := '';
    Edit2.Setfocus;
  end
  Else
  sfmain.RaiseException('เช็คใบนี้ไม่ใช่เช็ค Payin');
end;

procedure TFmChqpay1.CanpayinClick(Sender: TObject);
begin
  If MessageDlg('แน่ใจหรือไม่ที่จะยกเลิก เช็คผ่าน ?',mtconfirmation,[mbok,mbcancel],0)=mrok Then
  begin
     If DmFin.QChqmast.FieldByname('Flag').Asstring='P' Then
     begin
        With DmFin.QBillmas do
        begin
          Close;
          SQL.Clear;
          SQL.ADD('SELECT * FROM BILLMAS WHERE BILLNO=:XBILL');
          Params[0].Asstring := DmFin.QChqmast.FieldByname('Billno').Asstring;
          Open;
          If Not(Bof and Eof) Then
          begin
            DmFin.QBillmas.Edit;
            DmFin.QBillmas.Fieldbyname('Flag').Asstring :='C';
            DmFin.QBillmas.Post;
          End;
        End;
        //
        DmFin.QChqtran.First;
        DmFin.QChqtran.AfterPost := Nil;
        While Not DmFin.QChqtran.Eof Do
        Begin
          DmFin.QChqtran.Edit;
          DmFin.QChqtran.Fieldbyname('Flag').Asstring := 'B';
          DmFin.QChqtran.Next;

        End;

        DmFin.QChqtran.AfterPost := DmFin.QChqtranAfterPost;
        //
        DmFin.QChqmast.Edit;
        DmFin.QChqmast.FieldByname('Flag').Asstring  := 'B';
        DmFin.QChqmast.FieldByname('Paydt').Asstring := '';
        DmFin.QChqmast.FieldByname('Amtpaid').AsFloat:= 0;
        DmFin.QChqmast.FieldByname('Trad').AsFloat   := 0;
        DmFin.QChqmast.FieldByname('Billno').Asstring:= '';
        DmFin.QChqmast.FieldByname('Billdt').Asstring:= '';
        DmFin.QChqmast.Post;
     end
     Else
     sfmain.RaiseException('ไม่ใช่เช็คผ่าน');
  end;
end;

procedure TFmChqpay1.SourceChqmasDataChange(Sender: TObject;
  Field: TField);
begin
  If DmFin.QChqmast.FieldByname('Flag').Asstring = 'H' Then
     Edit1.Text :='เช็คในมือ'
  Else
  If DmFin.QChqmast.FieldByname('Flag').Asstring = 'B' Then
     Edit1.Text :='เช็ค Payin'
  Else
  If DmFin.QChqmast.FieldByname('Flag').Asstring = 'R' Then
     Edit1.Text :='เช็คคืน'
  Else
  If DmFin.QChqmast.FieldByname('Flag').Asstring = 'C' Then
     Edit1.Text :='รายการยกเลิก'
  Else
  If DmFin.QChqmast.FieldByname('Flag').Asstring = 'P' Then
    Edit1.Text :='ผ่านแล้ว'
  Else
    Edit1.Text :='';
  SaveBtn.Enabled  := (DmFin.QChqmast.FieldByname('Flag').Asstring = 'B') and (SFmain.Edit_right);
  CanPayin.Enabled := (Not SaveBtn.Enabled) and (SFmain.Edit_right);
end;


procedure TFmChqpay1.Showchq;
begin
  If Edit2.Text<>'' Then
  Begin
    With DmFin.QChqmast Do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQMAS WHERE CHQNO=:0 '+
              'AND (FLAG=''B'' OR FLAG=''P'')');
      Params[0].Asstring := Edit2.Text;
      Open;
      If (Bof and Eof) Then
      Begin
        Edit2.Setfocus;
        sfmain.RaiseException('ไม่พบหมายเลขเช็คนี้');
      End;
      First;
      If Edit3.text <> '' Then
      begin
         while not eof Do
         begin
            If FieldByName('Tmbill').Asstring = Edit3.Text Then
               Break
            Else
               Next;
         end;
      end;
      Edit;
      DmFin.QChqmast.Fieldbyname('Amtpaid').asfloat  := DmFin.QChqmast.Fieldbyname('ChqAmt').asfloat;
    end;
    If DmFin.QChqmast.FieldByname('Flag').Asstring='H' Then
    Begin
      wwDBChqDt.Setfocus;
      sfmain.RaiseException('ไม่ใช่เช็ค Payin');
    End;
    If DmFin.QChqmast.FieldByname('Flag').Asstring='P' Then
       wwDBChqDt.Properties.ReadOnly := true
    else
       wwDBChqDt.Properties.ReadOnly := False;
    //
    With DmFin.QChqtran Do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN WHERE TMBILL=:Edit1');
      Params[0].Asstring := DmFin.QChqmast.Fieldbyname('TMBILL').Asstring;
      Open;
    end;

    With DmFin.QChqtran_Oth Do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN_OTH WHERE TMBILL=:Edit1');
      Params[0].Asstring := DmFin.QChqmast.Fieldbyname('TMBILL').Asstring;
      Open;
    end;

    With DmFin.QChqtran_Dec Do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN_DEC WHERE TMBILL=:Edit1');
      Params[0].Asstring := DmFin.QChqmast.Fieldbyname('TMBILL').Asstring;
      Open;
    end;

    With DmFin.QChqtran_Typ Do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN_TYP WHERE TMBILL=:Edit1');
      Params[0].Asstring := DmFin.QChqmast.Fieldbyname('TMBILL').Asstring;
      Open;
    end;
  End;
End;

procedure TFmChqpay1.Edit2Exit(Sender: TObject);
begin
//  Showchq;
end;

procedure TFmChqpay1.FormCreate(Sender: TObject);
begin
  SFmain.Check_right('HDFIN', 'HDFIN01_2');
end;

procedure TFmChqpay1.xExit(Sender: TObject);
begin
    if wwDBChqDt.Date < DmFin.QChqmast.Fieldbyname('chqdt').AsDatetime then
    begin
        DmFin.QChqmast.Edit;
        DmFin.QChqmast.Fieldbyname('Paydt').Asstring := '';
        sfmain.RaiseException('บันทึกวันที่เช็คผ่านก่อนวันที่เช็ค')
      end
    else
    begin
       DmFin.QChqmast.Edit;
       DmFin.QChqmast.Fieldbyname('Paydt').AsDatetime := wwDBChqDt.Date;
    end;
end;

procedure TFmChqpay1.CloseBtnClick(Sender: TObject);
begin
  Close;   
end;

procedure TFmChqpay1.Edit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var Key:Char;
begin
  Application.Createform(TSearchfin,Searchfin);
  Searchfin.XPayTyp :='02';
  If Searchfin.ShowModalTmbill = Mrok Then
  Begin
    With DmFin.QChqmast Do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQMAS WHERE CHQNO=:0 AND TMBILL=:1 '+
              'AND (FLAG=''B'' OR FLAG=''P'')');
      Params[0].Asstring := Searchfin.HQuery1.Fieldbyname('ChqNo').Asstring;
      Params[1].AsString := Searchfin.Keyno;
      Open;
      Edit2.Text := Searchfin.HQuery1.Fieldbyname('ChqNo').Asstring;
      Edit2.SetFocus;
      Edit;
      DmFin.QChqmast.Fieldbyname('Amtpaid').asfloat  := DmFin.QChqmast.Fieldbyname('ChqAmt').asfloat;
   End;
       If DmFin.QChqmast.FieldByname('Flag').Asstring='H' Then
    Begin
      wwDBChqDt.Setfocus;
      sfmain.RaiseException('ไม่ใช่เช็ค Payin');
    End;
    If DmFin.QChqmast.FieldByname('Flag').Asstring='P' Then
       wwDBChqDt.Properties.ReadOnly := true
    else
       wwDBChqDt.Properties.ReadOnly := False;
    //
    With DmFin.QChqtran Do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN WHERE TMBILL=:Edit1');
      Params[0].Asstring := DmFin.QChqmast.Fieldbyname('TMBILL').Asstring;
      Open;
    end;

    With DmFin.QChqtran_Oth Do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN_OTH WHERE TMBILL=:Edit1');
      Params[0].Asstring := DmFin.QChqmast.Fieldbyname('TMBILL').Asstring;
      Open;
    end;

    With DmFin.QChqtran_Dec Do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN_DEC WHERE TMBILL=:Edit1');
      Params[0].Asstring := DmFin.QChqmast.Fieldbyname('TMBILL').Asstring;
      Open;
    end;

    With DmFin.QChqtran_Typ Do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN_TYP WHERE TMBILL=:Edit1');
      Params[0].Asstring := DmFin.QChqmast.Fieldbyname('TMBILL').Asstring;
      Open;
    end;    
  End;

end;

procedure TFmChqpay1.DBEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  {Application.Createform(TSearchset,Searchset);
  If Searchset.ShowModalsetBook = Mrok Then
     DmFin.QChqmastPayinAcc.Asstring := Searchset.keyno; }

  if DBEdit11.Text <> '' then
  sfmain.RaiseException('เช็คผ่านและออกใบเสร็จรับเงินแล้ว..!');

  Application.CreateForm(TSearchset,Searchset);
  if Searchset.ShowModalBankbook=MrOk then
  begin
    DmFin.QChqmastCHQBK.Asstring    := Searchset.Keyno;
    DmFin.QChqmastPayinAcc.Asstring := Searchset.HQuery1.fieldbyname('BOOKNO').AsString;
    DmFin.QChqmastCHQBR.Asstring    := Searchset.HQuery1.fieldbyname('BANKLOCNAM').AsString;
  end;
end;

end.
