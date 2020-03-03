unit STIn11_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzButton, ExtCtrls, RzTabs, Grids, DBGrids, RzDBGrid,
  StdCtrls, RzLabel, RzDBEdit, Mask, RzEdit, RzDBBnEd, RzDbkbd, DB,
  RzRadGrp, RzDBRGrp, RzRadChk, RzDBChk, DBCtrls, RzBorder;

type
  TFmSTIn11_1 = class(TForm)
    PageControl1: TRzPageControl;
    RzToolbar1: TRzToolbar;
    PrnBtn: TRzBitBtn;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer3: TRzSpacer;
    InsBtn: TRzBitBtn;
    DelBtn: TRzBitBtn;
    EnqBtn: TRzBitBtn;
    SavBtn: TRzBitBtn;
    CancBtn: TRzBitBtn;
    CloseBtn: TRzBitBtn;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    DBGrid1: TRzDBGrid;
    DBEdit1: TRzDBButtonEdit;
    DBEdit7: TRzDBButtonEdit;
    DBEdit2: TRzDBButtonEdit;
    DBEdit6: TRzDBButtonEdit;
    DBEdit11: TRzDBButtonEdit;
    DBEdit4: TRzDBDateTimeEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    DBEdit3: TRzDBEdit;
    DBEdit16: TRzDBEdit;
    DBEdit8: TRzDBEdit;
    DBEdit5: TRzDBEdit;
    FldEdit1: TRzDBEdit;
    Edit5: TRzEdit;
    Edit1: TRzEdit;
    Edit2: TRzEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    DBRadioGroup1: TRzDBRadioGroup;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    Label15: TRzLabel;
    DBMemo1: TRzDBMemo;
    Label20: TRzLabel;
    Label6: TRzLabel;
    DBRadioGroup2: TRzDBRadioGroup;
    DBCheckBox1: TRzDBCheckBox;
    DBEdit9: TRzDBEdit;
    RzLabel16: TRzLabel;
    CheckBox2: TRzCheckBox;
    Label11: TRzLabel;
    NextBtn: TRzBitBtn;
    DeleBtn: TRzBitBtn;
    CampBtn: TRzBitBtn;
    EstBtn: TRzBitBtn;
    KitBtn: TRzBitBtn;
    AutoBtn: TRzBitBtn;
    RzLabel17: TRzLabel;
    DBEdit12: TRzDBEdit;
    DBEdit21: TRzDBEdit;
    DBEdit23: TRzDBEdit;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel20: TRzLabel;
    DBEdit26: TRzDBEdit;
    RzLabel22: TRzLabel;
    DBEdit24: TRzDBEdit;
    DBEdit25: TRzDBEdit;
    RzLabel23: TRzLabel;
    RzLabel24: TRzLabel;
    DBCheckBox2: TRzDBCheckBox;
    procedure DBEdit1ButtonClick(Sender: TObject);
    procedure DBEdit7ButtonClick(Sender: TObject);
    procedure DBEdit11ButtonClick(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit6ButtonClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure CampBtnClick(Sender: TObject);
    procedure EstBtnClick(Sender: TObject);
    procedure KitBtnClick(Sender: TObject);
    procedure AutoBtnClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSource1StateChange(Sender: TObject);
  private
    { Private declarations }
    procedure Showjob;
    Procedure ShowGride;
  public
    XEditpric,XEditdisc,NALLOW :String;
    XJobdate :Tdatetime;
    { Public declarations }
  end;

var
  FmSTIn11_1: TFmSTIn11_1;

  Smnettot : Double;
  NmPart,XEstno,XCampno,XGroup1 : String;
  QTYOut,AvCost : Double;
  XDate : TdateTime;
  Xyear, Xmonth, XDay : Word;

implementation
USES Dmic01,Pickdate,Stprn50,Functn01,
DmSet1,uSrcDlg,Dlginvms,DlgAuto,Dlgbarcd,HlpPtKit, USoftFirm;
{$R *.dfm}

procedure TFmSTIn11_1.Showjob;
begin
  If Dbedit6.text<>'' Then
  begin
    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT JOBNO,LOCAT,CUSCOD,STATUS,VATTYPE,STRNO,GROUP1,CAMPNO,RECVDATE,PREORDNO FROM JOBORDER WHERE JOBNO = :XNOO ');
      If Not FmDmic01.Query2.Prepared Then FmDmic01.Query2.Prepare;
      Params[0].Asstring := Dbedit6.text;
      Open ;
    end;
    XJobdate :=FmDmic01.Query2.FieldByName('RECVDATE').Asdatetime;

    if FmDmic01.Query2.Bof and FmDmic01.Query2.eof then
    SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');

    If FmDmic01.Pkinv.FieldByName('PKDATE').Asdatetime<XJobdate  Then
    Begin
      MessageBeep(0);
      DBEdit4.Setfocus;
      SFMain.RaiseException('วันที่เบิกน้อยกว่าวันที่เปิด Job'+#13#13+
      'วันที่เปิด Job คือ '+FmDmic01.Query2.FieldByName('RECVDATE').Asstring);
    end;
    XGroup1 := FmDmic01.Query2.FieldByName('GROUP1').Asstring;
    Edit2.Text := XGroup1;

    XEstno  := FmDmic01.Query2.Fieldbyname('Preordno').asstring;
    XCampno := FmDmic01.Query2.Fieldbyname('CAMPNO').asstring;

    EstBtn.Enabled   := (SavBtn.Enabled) and (XEstno<>'');
    Label20.Caption := 'เลขที่ใบประเมินราคา :'+XEstno;
    Label20.Visible := (XEstno<>'');

    Label15.Visible := (DBEdit6.Text<>'') Or (DBEdit11.Text<>'');
    If FmDmic01.Query2.Fieldbyname('Status').asstring ='W' Then
     Label15.Caption := 'สถานะ Job : กำลังซ่อม';
    If FmDmic01.Query2.Fieldbyname('Status').asstring ='F' Then
     Label15.Caption := 'สถานะ Job : ปิด Job แล้ว';
    If FmDmic01.Query2.Fieldbyname('Status').asstring ='R' Then
     Label15.Caption := 'สถานะ Job : รับรถแล้ว';


    If FmDmic01.Query2.fieldbyname('LOCAT').asstring<>FmDmic01.PkinvPKLOCAT.Asstring Then
    SFMain.RaiseException('เป็น Job ของสาขา '+FmDmic01.Query2.fieldbyname('LOCAT').asstring);

    If FmDmic01.Query2.Fieldbyname('Status').Asstring <>'W' Then
    SFMain.RaiseException('ปิด Job แล้ว');

    Edit2.Text := FmDmic01.Query2.FieldByName('GROUP1').Asstring;

    If FmDmic01.Pkinv.State in Dseditmodes Then
    Begin
      FmDmic01.Pkinv.FieldByName('JOBNO').Asstring   := FmDmic01.Query2.FieldByName('JOBNO').Asstring;
      FmDmic01.Pkinv.FieldByName('CUSCOD').Asstring  := FmDmic01.Query2.FieldByName('CUSCOD').Asstring;
      FmDmic01.Pkinv.FieldByName('VATTYPE').Asstring := FmDmic01.Query2.FieldByName('VATTYPE').Asstring;
      FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring  := FmDmic01.Query2.FieldByName('CAMPNO').Asstring;
    end;

    With FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT A.STRNO,A.REGNO,A.CUSCOD,A.PTDISCT,A.VIPEXP,A.VIPCARD, '+
      'B.SNAM,B.NAME1,B.NAME2,B.DISCT,B.SALLEV '+
      'FROM SVMAST A,ARMAST B WHERE A.CUSCOD=B.CUSCOD AND A.STRNO=:XSTRNO');
      Params[0].Asstring := FmDmic01.Query2.FieldByName('STRNO').Asstring  ;
      Open;
      if FmDmic01.Query1.Bof and FmDmic01.Query1.eof then
      SFMain.RaiseException('ไม่พบข้อมูลในแฟ้มประวัติ ');
    end;

    Edit1.Text := FmDmic01.Query1.FieldByName('REGNO').Asstring;
    Edit5.Text := FmDmic01.Query1.Fieldbyname('SNAM').Asstring+
                  FmDmic01.Query1.Fieldbyname('NAME1').Asstring+'   '+
                  FmDmic01.Query1.Fieldbyname('NAME2').Asstring;

     If FmDmic01.Pkinv.State in Dseditmodes Then
     Begin
       If (FmDmic01.Query1.Fieldbyname('VIPCARD').Asstring<>'') Then
       Begin
        If (FmDmic01.Query1.Fieldbyname('VIPEXP').Asdatetime>=FmDmic01.Query2.Fieldbyname('Recvdate').asdatetime) Then
        Begin
          FmDmic01.Pkinv.FieldByName('DISCT').AsFloat   := FmDmic01.Query1.Fieldbyname('PTDISCT').Asfloat;
          Label6.Caption := 'ใช้ส่วนลดจาก บัตร VIP. No.'+FmDmic01.Query1.Fieldbyname('VIPCARD').Asstring;
          Label6.Visible := True;
          MessageBeep(0);
        End
        Else
        begin
         MessageBeep(0);
         Showmessage('บัตร VIP. หมดอายุแล้ว ควรแนะนำลูกค้าให้ต่ออายุ ');
         Label6.Caption := 'บัตร VIP หมดอายุแล้ว';
         Label6.Visible := True;
        end;
       end;
       FmDmic01.Pkinv.FieldByName('SALLEV').Asstring := FmDmic01.Query1.Fieldbyname('SALLEV').Asstring;
       // Asign Campaign ***
       If (FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring<>'') and
          (FmDmic01.Pkinv.State in Dseditmodes) Then
       Begin
         With FmDmic01.Query1 Do
         Begin
           Close;
           Sql.Clear;
           Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO=:EDIT1');
           Params[0].Asstring := FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring;
           Open;
           If Not(Bof and Eof)  Then
           Begin
             If FmDmic01.PkinvPkdate.AsDateTime<FmDmic01.Query1.Fieldbyname('Startdt').AsDatetime Then
             Begin
               FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring:='';
               XCampno := '';
               Messagebeep(0);
               SFMain.RaiseException('วันที่จ่ายสินค้าน้อยกว่าวันเริ่ม แคมเปญ '+#13#13+'ยกเลิกการใช้แคมเปญ');
             end;
             If FmDmic01.PkinvPkdate.AsDateTime>FmDmic01.Query1.Fieldbyname('Enddate').AsDatetime Then
             If MessageDlg('วันที่จ่ายสินค้าเลยกำหนดวันสิ้นสุด แคมเปญ'+#13#13+'ยังยืนยันจะใช้แคมเปญหรือไม่ ?',Mtconfirmation,[mbok,mbcancel],0)=Mrcancel Then
             Begin
               Messagebeep(0);
               FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring:='';
               XCampno := '';
               Abort;
             end;
             XGroup1:= FmDmic01.Query1.Fieldbyname('Group1').Asstring;
             FmDmic01.Pkinv.FieldByName('DISCT').AsFloat   := FmDmic01.Query1.Fieldbyname('PTR_RAT1').Asfloat;
             Label6.Caption := '** ใช้ส่วนลดตาม Campaign Setup **';
             Label6.Visible := True;
             MessageBeep(0);
           End;
         End;
       End;
     end;
   end;
   DataSource1StateChange(DataSource1);
end;

Procedure TFmSTIn11_1.ShowGride;
Begin
  If DBCheckBox1.Checked Then
  Begin
    Dbgrid1.Columns[7].Title.Caption :='ส่วนลดบาท';
    Dbgrid1.Columns[7].Fieldname := 'DISCAMT';
    Dbgrid1.Columns[7].Width := 60;
    Dbgrid1.Columns[8].Title.Caption :='Null';
    Dbgrid1.Columns[9].Title.Caption :='Null';
    Dbgrid1.Columns[8].Readonly := True;
    Dbgrid1.Columns[9].Readonly := True;
    Dbgrid1.Columns[8].Width := 25;
    Dbgrid1.Columns[9].Width := 25;
  End
  Else
  Begin
    Dbgrid1.Columns[7].Title.Caption :='% ลด1';
    Dbgrid1.Columns[7].Fieldname := 'REDU1';
    Dbgrid1.Columns[8].Title.Caption :='% ลด2';
    Dbgrid1.Columns[8].Fieldname := 'REDU2';
    Dbgrid1.Columns[9].Title.Caption :='% ลด3';
    Dbgrid1.Columns[9].Fieldname := 'REDU3';

    Dbgrid1.Columns[7].Width := 35;
    Dbgrid1.Columns[8].Readonly := False;
    Dbgrid1.Columns[9].Readonly := False;
    Dbgrid1.Columns[8].Width := 35;
    Dbgrid1.Columns[9].Width := 35;

  End
End;


procedure TFmSTIn11_1.DBEdit1ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
  begin
    with Dm_Set1.QLocat do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD = :XCUSCOD ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.QLocat.bof and Dm_Set1.QLocat.Eof then
       SFMain.RaiseException('ไมมีรหัสสาขานี้ในแฟ้มข้อมูล');
    FmDmic01.PkinvPKLOCAT.Asstring := Dm_Set1.QLocat.Fieldbyname('LOCATCOD').Asstring;
  end;

end;

procedure TFmSTIn11_1.DBEdit7ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalOffic=Mrok Then
  begin
    With Dm_set1.QOfficer Do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD=:OFFICCOD');
     Params[0].Asstring := fSrcDlg.KeyNo;
     Open;
    end;
    IF Dm_Set1.QOfficer.EOF and Dm_Set1.QOfficer.BOF THEN
       SFMain.RaiseException('ไม่มีข้อมูล');
    FmDmic01.PkinvOFFICCOD.Asstring := Dm_Set1.QOfficer.Fieldbyname('OFFICCOD').Asstring;
  end;

end;

procedure TFmSTIn11_1.DBEdit11ButtonClick(Sender: TObject);
Var Allo:String;
begin
  XDate := FmDmic01.Pkinv.FieldByName('PKDATE').AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_'+inttostr(XMonth);

  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalOdsv=Mrok Then
  begin
    with FmDmic01.Query2 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM SV_ORDIV Where ORDNO =:XEdit ');
     Params[0].AsString :=fSrcDlg.Keyno;
     Open;
    end;
    If FmDmic01.Query2.Bof and FmDmic01.Query2.Eof Then
    SFMain.RaiseException('ไม่พบใบขอเบิก');
    Xgroup1 := FmDmic01.Query2.FieldByName('GCODE').Asstring;
    Edit2.Text := Xgroup1;
    FmDmic01.Pkinv.FieldByName('SVORD').Asstring   := FmDmic01.Query2.FieldByName('ORDNO').Asstring;
    FmDmic01.Pkinv.FieldByName('JOBNO').Asstring   := FmDmic01.Query2.FieldByName('JOBNO').Asstring;
    FmDmic01.Pkinv.FieldByName('CUSCOD').Asstring  := FmDmic01.Query2.FieldByName('CUSCOD').Asstring;
    FmDmic01.Pkinv.FieldByName('VATTYPE').Asstring := FmDmic01.Query2.FieldByName('VATTYPE').Asstring;
    FmDmic01.Pkinv.FieldByName('DISCT').AsFloat    := FmDmic01.Query2.Fieldbyname('DISCT').AsFloat;

    With FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT A.STRNO,A.REGNO,A.CUSCOD,B.SNAM,B.NAME1,B.NAME2 '+
      'FROM SVMAST A,ARMAST B WHERE A.CUSCOD=B.CUSCOD AND A.CUSCOD=:XCODE');

      Params[0].Asstring := FmDmic01.Query2.Fieldbyname('Cuscod').Asstring;
      Open;
      If FmDmic01.Query1.Bof and FmDmic01.Query1.Eof Then
      SFMain.RaiseException('ไม่พบรหัสลูกค้า');
    end;

    Edit1.Text := FmDmic01.Query1.FieldByName('REGNO').Asstring;
    Edit5.Text := FmDmic01.Query1.Fieldbyname('SNAM').Asstring+
                  FmDmic01.Query1.Fieldbyname('NAME1').Asstring+'   '+
                  FmDmic01.Query1.Fieldbyname('NAME2').Asstring;

    WITH FmDmic01.Query1 DO
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT CUSCOD,DISCT,SALLEV FROM ARMAST '+
               'WHERE CUSCOD =:XCUSCOD ');
      Params[0].AsString := FmDmic01.Query2.FieldByName('CUSCOD').Asstring;
      Open;
    end;

    FmDmic01.Pkinv.FieldByName('SALLEV').Asstring := FmDmic01.Query1.Fieldbyname('SALLEV').Asstring;

    With FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM Sv_OrdTn WHERE Ordno = :XOrdno ');
      Params[0].Asstring := FmDmic01.Pkinv.FieldByName('SVORD').Asstring;
      Open;
    end;

    FmDmic01.Query1.First;
    While Not FmDmic01.Query1.Eof Do
    Begin
      With FmDmic01.Query2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO=:EDIT1 AND LOCAT=:2');
        params[0].asstring := FmDmic01.Query1.FieldByName('Partno').AsString;
        params[1].asstring := SFMain.Xlocat;
        Open;
      End;
      FmDmic01.PKtran.Append;
      FmDmic01.PKtranYEAR1.AsString  := Inttostr(XYear);
      FmDmic01.PKtranPartNo.AsString := FmDmic01.Query1.FieldByName('Partno').AsString;
      FmDmic01.PKtranQtyOrd.AsFloat  := FmDmic01.Query1.FieldByName('QtyOrd').AsFloat;
      FmDmic01.PKtranJobNo.AsString  := FmDmic01.Query1.FieldByName('Jobno').AsString;
      FmDmic01.PKtranFlag.AsString   := FmDmic01.PkinvFLAG.Asstring;
      FmDmic01.PKtranSvColor.AsString:= FmDmic01.Pkinv.FieldByName('SVCOLOR').AsString;
      FmDmic01.PkTranGROUP1.Asstring := FmDmic01.Query2.Fieldbyname('GROUP1').Asstring;

      FmDmic01.PKtranQtyOut.AsFloat  := FmDmic01.PKtranQtyOrd.AsFloat;

      FmDmic01.PKtranNetFl.AsString  := FmDmic01.Query1.FieldByName('NetFl').AsString;
      FmDmic01.PKtranRedu1.AsFloat   := FmDmic01.Query1.FieldByName('Redu1').AsFloat;
      FmDmic01.PKtranRedu2.AsFloat   := FmDmic01.Query1.FieldByName('Redu2').AsFloat;
      FmDmic01.PKtranRedu3.AsFloat   := FmDmic01.Query1.FieldByName('Redu3').AsFloat;
      FmDmic01.PKtranUprice.AsFloat  := FmDmic01.Query1.FieldByName('UPRICE').AsFloat;

      FmDmic01.PKtranNetPrc.AsFloat  := FmDmic01.PKtranUprice.AsFloat*(1-FmDmic01.PKtranRedu1.AsFloat/100);
      FmDmic01.PKtranTotPrc.AsFloat  := FmDmic01.PKtranNetPrc.AsFloat*FmDmic01.PKtranQtyOut.AsFloat;

      FmDmic01.Query1.Next;
    End;

    with FmDmic01.Query2 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNOO ');
     Params[0].Asstring :=FmDmic01.Pkinv.FieldByName('JOBNO').Asstring;
     Open ;
    end;
    
    Label15.Visible := (DBEdit6.Text<>'') Or (DBEdit11.Text<>'');
    If FmDmic01.Query2.Fieldbyname('Status').asstring ='W' Then
     Label15.Caption := 'สถานะ Job : กำลังซ่อม';
    If FmDmic01.Query2.Fieldbyname('Status').asstring ='F' Then
     Label15.Caption := 'สถานะ Job : ปิด Job แล้ว';
    If FmDmic01.Query2.Fieldbyname('Status').asstring ='R' Then
     Label15.Caption := 'สถานะ Job : รับรถแล้ว';

  end;
end;


procedure TFmSTIn11_1.DBEdit4Change(Sender: TObject);
begin
  If Not FmDmic01.QDBConfig.Active Then FmDmic01.QDBConfig.Open;
  If FmDmic01.QDBConfig.Fieldbyname('H_PKSV').asstring='Y' Then
    DBEdit2.Readonly := True
  else
   DBEdit2.Readonly := False;
end;

procedure TFmSTIn11_1.DBEdit6ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalJob=Mrok Then
  begin
    DBedit6.Text := fSrcDlg.KeyNo;
    Showjob;
  END;
end;

procedure TFmSTIn11_1.DBRadioGroup1Click(Sender: TObject);
begin
   If DBRadioGroup1.ItemIndex = 0 then
      FmDmic01.PkinvVATTYPE.Asstring := '1';
   If DBRadioGroup1.ItemIndex = 1 then
      FmDmic01.PkinvVATTYPE.Asstring := '2';
end;

procedure TFmSTIn11_1.DBRadioGroup2Click(Sender: TObject);
begin
  If DBRadioGroup2.ItemIndex = 0 then
     FmDmic01.PkinvSVCOLOR.Asstring := 'N';
  If DBRadioGroup2.ItemIndex = 1 then
     FmDmic01.PkinvSVCOLOR.Asstring := 'Y';
end;

procedure TFmSTIn11_1.DBEdit6Exit(Sender: TObject);
begin
  If Dbedit6.text<>'' Then
  begin
    If DBedit3.Text='' Then
    Showjob;
  end;
end;

procedure TFmSTIn11_1.NextBtnClick(Sender: TObject);
begin
  DBGrid1.Setfocus;
  DBGrid1.SelectedIndex:=0;
  If FmDmic01.Pktran.State in Dseditmodes Then
  SFMain.RaiseException('ยังไม่Enter ผ่านช่องสุดท้าย');

  FmDmic01.Pktran.Append;
end;

procedure TFmSTIn11_1.DeleBtnClick(Sender: TObject);
begin
  FmDmic01.Pktran.delete;
  DBGrid1.Setfocus;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFmSTIn11_1.CampBtnClick(Sender: TObject);
Var Allo  : string;
    Xqty :Double;
begin
  If MessageDlg('ต้องการจ่ายอะไหล่ตามแคมเปญ Setup ? ',Mtconfirmation,[Mbyes,Mbno],0)=Mryes Then
  Begin
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO=:Edit1 ');
      Params[0].Asstring := XCampno;
      Open ;
    end;
    If Not(FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) Then
    Begin
      FmDmic01.Query1.First;
      While not(FmDmic01.Query1.Eof) do
      begin
        Xdate := FmDmic01.PkinvPkdate.AsDateTime;
        DecodeDate(XDate, XYear, XMonth, XDay);
        Allo := 'Allo_'+inttostr(XMonth);

        With FmDmic01.Query2 Do
        Begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT PARTNO,LOCAT,YEAR1,'+allo+' FROM INVANLS WHERE '+
          'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
          Params[0].Asstring := FmDmic01.Query1.FieldByName('PARTNO').Asstring;
          Params[1].Asstring := FmDmic01.PkinvPkLocat.asstring;
          Params[2].Asstring := Inttostr(Xyear);
          Open;
        End;
        If Not(FmDmic01.Query2.Eof And FmDmic01.Query2.Bof) then
        Begin
          FmDmic01.Pktran.Append;
          FmDmic01.Pktran.FieldByName('PARTNO').AsString  := FmDmic01.Query1.FieldByName('PARTNO').Asstring;
          If FmDmic01.Query2.Fieldbyname(allo).Asfloat>=FmDmic01.Query1.FieldByName('QTY').AsFloat Then
          Begin
            FmDmic01.Pktran.FieldByName('QTYORD').Asfloat  := FmDmic01.Query1.FieldByName('QTY').Asfloat;
            FmDmic01.Pktran.FieldByName('QTYOUT').Asfloat  := FmDmic01.Query1.FieldByName('QTY').Asfloat;
          end
          Else
          Begin
            FmDmic01.Pktran.FieldByName('QTYORD').Asfloat  := FmDmic01.Query1.FieldByName('QTY').Asfloat;
            FmDmic01.Pktran.FieldByName('QTYOUT').AsFloat  := FmDmic01.Query2.Fieldbyname(allo).Asfloat;
            Messagedlg('จำนวนสินค้าไม่พอ จะจ่ายให้เท่าที่มีในสต็อก ',Mtwarning,[mbok],0);
          End;
          FmDmic01.Pktran.FieldByName('REDU1').AsFloat    := FmDmic01.Query1.FieldByName('Disct').AsFloat;
          FmDmic01.Pktran.FieldByName('REDU2').AsFloat    := 0;
          FmDmic01.Pktran.FieldByName('REDU3').AsFloat    := 0;
          FmDmic01.Pktran.FieldByName('UPRICE').AsFloat   := FmDmic01.Query1.FieldByName('Price').AsFloat;
          FmDmic01.PkTran.FieldByName('GROUP1').Asstring  := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
          FmDmic01.Pktran.FieldByName('CAMPNO').AsString  := FmDmic01.Query1.FieldByName('CAMPNO').Asstring;
          FmDmic01.Pktran.FieldByName('CAMFLG').AsString  := 'Y';
          FmDmic01.Pktran.FieldByName('Netprc').AsFloat   := FmDmic01.Query1.FieldByName('NetAMT').AsFloat;
          FmDmic01.Pktran.FieldByName('TotPrc').AsFloat   := FmDmic01.Query1.FieldByName('Totamt').AsFloat;
          FmDmic01.Pktran.Post;
        End;
        FmDmic01.Query1.Next;
      end;
    End;
  End;
end;


procedure TFmSTIn11_1.EstBtnClick(Sender: TObject);
begin
  If MessageDlg('ต้องการจ่ายอะไหล่ตามใบประเมิน ? ',Mtconfirmation,[Mbyes,Mbno],0)=Mryes Then
  Begin
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM QA_TRAN WHERE QUOTNO=:Edit1 AND TRNFLG=''P'' ');
      Params[0].Asstring := XEstno;
      Open ;
    end;
    If Not(FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) Then
    Begin
      FmDmic01.Query1.First;
      While not(FmDmic01.Query1.Eof) do
      begin
        with FmDmic01.Query2 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC ');
          Params[0].Asstring := FmDmic01.Query1.FieldByName('PARTNO').Asstring;
          Params[1].Asstring := FmDmic01.Pkinv.Fieldbyname('Pklocat').Asstring;
          Open;
        end;
        If Not(FmDmic01.Query2.Eof And FmDmic01.Query2.Bof) then
        Begin
          FmDmic01.Pktran.Append;
          FmDmic01.Pktran.FieldByName('PARTNO').AsString  := FmDmic01.Query1.FieldByName('PARTNO').Asstring;
          FmDmic01.Pktran.FieldByName('QTYORD').AsFloat  := FmDmic01.Query1.FieldByName('QTY').AsFloat;
          FmDmic01.Pktran.FieldByName('QTYOUT').Asfloat  := FmDmic01.Query1.FieldByName('QTY').AsFloat;
          FmDmic01.Pktran.FieldByName('REDU1').AsFloat    := FmDmic01.Query1.FieldByName('REDU').AsFloat;
          FmDmic01.Pktran.FieldByName('REDU2').AsFloat    := 0;
          FmDmic01.Pktran.FieldByName('REDU3').AsFloat    := 0;
          FmDmic01.Pktran.FieldByName('UPRICE').AsFloat   := FmDmic01.Query1.FieldByName('UPrice').AsFloat;
          FmDmic01.PkTran.FieldByName('GROUP1').Asstring  := FmDmic01.Query2.Fieldbyname('GROUP1').Asstring;
          FmDmic01.PktranNetprc.AsFloat := FmDmic01.Query1.FieldByName('Netpric').AsFloat;
          FmDmic01.PktranTotPrc.AsFloat := FmDmic01.Query1.FieldByName('Totalprc').AsFloat;
          FmDmic01.Pktran.Post;
        End;
        FmDmic01.Query1.Next;
      end;
    End;
  End;

end;

procedure TFmSTIn11_1.KitBtnClick(Sender: TObject);
Var SmPric1,SmPric2,SmPric3,Pric1,Pric2,Pric3 : Double;
    Allo,Cost,LVPrice : string;
begin
  Xdate := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_'+inttostr(XMonth);
  Cost := 'Cost_'+inttostr(XMonth);

  Application.CreateForm(TPtKitDlg,PtKitDlg);
  If PtKitDlg.Showmodal=Mrok Then
  begin
    With PtKitDlg Do
    begin
      Qkittrn.First;
      While Not Qkittrn.Eof Do
      begin
        If Qkittrn.Fieldbyname('Mark').Asstring='' Then
        begin
          FmDmic01.Pktran.Append;

          FmDmic01.PktranPARTNO.Asstring :=Qkittrn.Fieldbyname('Partno').Asstring;
          FmDmic01.PktranQtyord.Asfloat  :=Qkittrn.Fieldbyname('Qty').Asfloat;
          FmDmic01.PktranQtyOUT.Asfloat  :=Qkittrn.Fieldbyname('Qty').Asfloat;
          FmDmic01.PkTranREDU1.AsFloat   := FmDmic01.PkinvDisct.AsFloat;

          With FmDmic01.Query2 Do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND '+
            'LOCAT = :Edit2');
            PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
            PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
            Open;
          end;

          If Not (FmDmic01.Query2.Eof and FmDmic01.Query2.Bof) Then
          Begin
            LvPrice := 'Price'+DBEdit5.text;
            FmDmic01.PktranUPRICE.AsFloat    := FmDmic01.Query2.Fieldbyname(LvPrice).AsFloat;
            FmDmic01.PktranNetFl.Asstring    := FmDmic01.Query2.Fieldbyname('NETPRC').Asstring;
            FmDmic01.PktranGroup1.Asstring   := FmDmic01.Query2.Fieldbyname('Group1').Asstring;
          End;

          With FmDmic01.Query3 Do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT *  FROM INVANLS WHERE PARTNO =:XPARTNO AND '+
            'LOCAT = :Edit2 AND YEAR1 =:Xyear');
            PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
            PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
            Params[2].Asstring := Inttostr(Xyear);
            Open;
          end;

          FmDmic01.PktranAvgCost.AsFloat   := FmDmic01.Query3.FieldByName(Cost).AsFloat;

          If (FmDmic01.Query3.FieldByName(Allo).AsFloat > FmDmic01.PktranQTYORD.AsFloat) OR (NAllow='N') Then
            FmDmic01.PktranQtyout.Asfloat :=FmDmic01.PktranQtyord.Asfloat
          Else
          begin
            If FmDmic01.Query3.FieldByName(Allo).AsFloat>=0 Then
               FmDmic01.PktranQtyout.Asfloat :=FmDmic01.Query3.FieldByName(Allo).AsFloat
            Else
               FmDmic01.PktranQtyout.Asfloat := 0;
            MessageBeep(0);
          end;


          If FmDmic01.PKtranNETFL.Asstring = 'N' Then
          Begin
            FmDmic01.PkTranREDU1.AsFloat := 0;
            FmDmic01.PkTranREDU2.AsFloat := 0;
            FmDmic01.PkTranREDU3.AsFloat := 0;
          End;

          Pric1    := (FmDmic01.PktranUPrice.value*(FmDmic01.PktranRedu1.value/100));
          SmPric1  := FmDmic01.PktranUPrice.value-Pric1;
          Pric2    := SmPric1*(FmDmic01.Pktranredu2.value/100);
          SmPric2  := SmPric1-Pric2;
          Pric3    := SmPric2*(FmDmic01.Pktranredu3.value/100);
          SmPric3  := SmPric2-Pric3;
          FmDmic01.PktranNetprc.AsFloat := SmPric3;
          FmDmic01.PktranTotPrc.AsFloat := FmDmic01.PktranNetprc.AsFloat*FmDmic01.PkTranQTYOUT.AsFloat;
          FmDmic01.Pktran.post;
        end;
        Qkittrn.Next;
      end;
    end;
  end;
end;


procedure TFmSTIn11_1.AutoBtnClick(Sender: TObject);
Var SmPric1,SmPric2,SmPric3,Pric1,Pric2,Pric3 : Double;
    Price :String;
begin
  Application.CreateForm(TFDlgAuto,FDlgAuto);
  with FDlgAuto.QHlppart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPPART WHERE GCODE=:Edit1 ');
    Params[0].Asstring := Xgroup1;
    Open ;
  end;
  if FDlgAuto.ShowModal = MrOk then
  begin
    FDlgAuto.QHlppart.First ;
    While not(FDlgAuto.QHlppart.Eof) do
    begin
      if FDlgAuto.QHlppart.FieldByName('MARK').Asstring = '' then
      begin
        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC ');
          Params[0].Asstring := FDlgAuto.QHlppart.FieldByName('PARTNO').Asstring;
          Params[1].Asstring := FmDmic01.Pkinv.Fieldbyname('Pklocat').Asstring;
          Open;
        end;
        If Not(FmDmic01.Query1.Eof And FmDmic01.Query1.Bof) then
        Begin
          Price := 'Price'+DBEdit5.text;
          FmDmic01.Pktran.Append;
          FmDmic01.Pktran.FieldByName('PARTNO').AsString  := FDlgAuto.QHlppart.FieldByName('PARTNO').Asstring;
          FmDmic01.Pktran.FieldByName('QTYORD').AsString  := FDlgAuto.QHlppart.FieldByName('QTY').Asstring;
          FmDmic01.Pktran.FieldByName('QTYOUT').AsString  := FDlgAuto.QHlppart.FieldByName('QTY').Asstring;
          FmDmic01.Pktran.FieldByName('REDU1').AsFloat    := FmDmic01.PkinvDISCT.AsFloat;
          FmDmic01.Pktran.FieldByName('REDU2').AsFloat    := 0;
          FmDmic01.Pktran.FieldByName('REDU3').AsFloat    := 0;
          FmDmic01.Pktran.FieldByName('UPRICE').AsFloat   := FmDmic01.Query1.FieldByName(Price).AsFloat;
          FmDmic01.PkTran.FieldByName('GROUP1').Asstring  := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;

          Pric1    := FRound((FmDmic01.PktranUPrice.value*(FmDmic01.PktranRedu1.value/100)),2);
          SmPric1  := FmDmic01.PktranUPrice.value-Pric1;
          Pric2    := SmPric1*(FmDmic01.Pktranredu2.value/100);
          SmPric2  := SmPric1-Pric2;
          Pric3    := SmPric2*(FmDmic01.Pktranredu3.value/100);
          SmPric3  := SmPric2-Pric3;
          FmDmic01.PktranNetprc.AsFloat := SmPric3;
          FmDmic01.PktranTotPrc.AsFloat := FRound((FmDmic01.PktranNetprc.AsFloat*FmDmic01.PkTranQTYOUT.AsFloat),2);
          FmDmic01.Pktran.Post;
        end;
      end;
      FDlgAuto.QHlppart.Next;
    end;
  end;
end;


procedure TFmSTIn11_1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) then
   With TRzDBGrid(ActiveControl) Do
      If Selectedindex = 0 Then
      begin
         If FmDmic01.Pktran.State in [DsInsert] Then
         begin
           FmDmic01.Pktran.Append;
           If NmPart <> '' Then
           begin
             FmDmic01.PktranPartno.AsString := NmPart;
             FmDmic01.PktranQTYORD.AsFloat  := QTYOut;
             FmDmic01.PktranAvgcost.AsFloat := Avcost;
           end;
         end;
      end;
end;

procedure TFmSTIn11_1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    Vk_F2  : If (DbGrid1.SelectedField.FieldName) = 'PARTNO' Then
             DBGrid1EditButtonClick(Sender);
  end;
end;

procedure TFmSTIn11_1.DBGrid1Exit(Sender: TObject);
begin
  DBkbd1.Disable := false;
end;

procedure TFmSTIn11_1.DBGrid1Enter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TFmSTIn11_1.DBGrid1EditButtonClick(Sender: TObject);
Var LVPrice : String;
begin
  If DBGrid1.SelectedField.FieldName = 'PARTNO' then
  begin
   Application.Createform(TfSrcDlg,fSrcDlg);
   If fSrcDlg.ShowModalParts=Mrok Then
   begin
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
      Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('PKLOCAT').Asstring;
      Params[1].Asstring := fSrcDlg.KeyNo;
      Open;
      If FmDmic01.Query1.Bof and FmDmic01.Query1.Eof Then
      SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;
    LvPrice := 'Price'+DBEdit5.text;
    FmDmic01.PktranUPRICE.AsFloat    := FmDmic01.Query1.Fieldbyname(LvPrice).AsFloat;
    FmDmic01.PktranNetFl.Asstring    := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
    FmDmic01.PktranPARTNO.Asstring   := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
   end;
  end;

  If DBGrid1.SelectedField.FieldName = 'CUSCOD' then
  begin
     Application.Createform(TfSrcDlg,fSrcDlg);
     If fSrcDlg.ShowModalAR=Mrok Then
     begin
       If FmDmic01.PkTran.State = Dsbrowse Then FmDmic01.PkTran.Edit;
       FmDmic01.PkTran.FieldByName('CUSCOD').Asstring := fSrcDlg.Keyno;
     End;
  End;

end;


procedure TFmSTIn11_1.DBGrid1ColExit(Sender: TObject);
Var SmPric1,SmPric2,SmPric3,Pric1,Pric2,Pric3 : Double;
    XQtyBK,Redu : Double;
    Allo,Cost,LVPrice   : string;
begin
  Xdate := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_'+inttostr(XMonth);
  Cost := 'Cost_'+inttostr(XMonth);
  If FmDmic01.PkTranUpdateStatus.Value='Inserted' Then
  begin
    If FmDmic01.PkTran.State=DsBrowse Then FmDmic01.PkTran.Edit;
  end
  Else
  If (FmDmic01.PkTran.State<>Dsinsert) and(FmDmic01.PkTranPartno.asstring<>'') Then
  begin
    DBGrid1.Setfocus;
    DBGrid1.SelectedIndex:=0;
    SFMain.RaiseException('หากต้องการแก้ไขให้ลบรายการ แล้วบันทึกใหม่');
  end;
  //
  Label11.Caption :='';
  If (DbGrid1.SelectedField.FieldName) = 'PARTNO' Then
  begin
    If FmDmic01.CountFound>1 Then
      SFMain.RaiseException('รหัสสินค้าซ้ำ #'+FmDmic01.DoupPart+' กรุณาลบก่อน');

    If FmDmic01.PkTranPartno.asstring='' Then
    SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้า');

    With FmDmic01.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC' );
      PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
      PARAMS[1].ASSTRING := FmDmic01.PkinvPKLOCAT.asstring;
      If Not FmDmic01.Query1.Prepared Then FmDmic01.Query1.Prepare;
      Open;
    end;

    If FmDmic01.Query1.Bof and FmDmic01.Query1.Eof Then
    Begin
      Application.CreateForm(TFsvmast,Fsvmast);
      With Fsvmast.Hquery1 Do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO LIKE :XPARTNO AND LOCAT=:XLOC' );
        PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring+'%';
        PARAMS[1].ASSTRING := FmDmic01.PkinvPKLOCAT.asstring;
        If Not Fsvmast.HQuery1.Prepared Then Fsvmast.HQuery1.Prepare;
        Open;
      end;
      If (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) Then
      begin
        Fsvmast.Close;
        SFMain.RaiseException('ไม่พบรหัสสินค้า');
      end
      Else
      begin
      If Fsvmast.Showmodal=mrok Then
        FmDmic01.PkTranPartno.asstring := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
        Fsvmast.Close;
      end;
    end;

    With FmDmic01.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND '+
        'LOCAT = :Edit2');
      PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
      PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
      If Not FmDmic01.Query1.Prepared Then FmDmic01.Query1.Prepare;
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;
    If FmDmic01.Query1.Fieldbyname('GROUP1').Asstring='' Then
    SFMain.RaiseException('ยังไม่บันทึกกลุ่มสินค้าในแฟ้มสาขา '+FmDmic01.PkTranPklocat.asstring);

    FmDmic01.PkTranGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
    DBEdit9.Text := FmDmic01.Query1.Fieldbyname('Desc1').Asstring;

    FmDmic01.PktranFRT.Asstring    := FmDmic01.Query1.Fieldbyname('FRT').Asstring;
    FmDmic01.PkTranREDU1.AsFloat   := FmDmic01.PkinvDisct.AsFloat;


    FmDmic01.PkTranCampno.Asstring   := FmDmic01.PkinvCampno.Asstring;
    If FmDmic01.PkinvCampno.Asstring<>'' Then
    Begin
      If FmDmic01.PkTranGROUP1.Asstring<>XGroup1 Then
      Begin
        FmDmic01.PkTranREDU1.AsFloat   :=0;
        FmDmic01.PkTranCampno.Asstring :='';
      End;
      If FmDmic01.PkTranCampno.Asstring<>'' Then
         FmDmic01.PkTranCamFlg.Asstring:='Y'
      Else
         FmDmic01.PkTranCamFlg.Asstring:='N';
    end;
  end;

  If (DbGrid1.SelectedField.FieldName) = 'QTYORD' Then
  Begin
    If FmDmic01.PkTranQtyord.AsFloat=0 Then
    SFMain.RaiseException('จำนวนเป็น 0');

    NmPart := '';
    With FmDmic01.Query2 Do
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,LOCAT,YEAR1,'+cost+','+allo+' FROM INVANLS WHERE '+
      'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
      Params[0].Asstring := FmDmic01.PkTranPartno.asstring;
      Params[1].Asstring := FmDmic01.PkTranPkLocat.asstring;
      Params[2].Asstring := Inttostr(Xyear);
      If Not FmDmic01.Query2.Prepared Then FmDmic01.Query2.Prepare;
      Open;
    End;
    LvPrice := 'Price'+FmDmic01.PkinvSALLEV.Value;
    If CheckBox2.Checked Then
      FmDmic01.PktranUPRICE.AsFloat    := FmDmic01.Query2.FieldByName(Cost).AsFloat
    else
      FmDmic01.PktranUPRICE.AsFloat    := FmDmic01.Query1.Fieldbyname(LvPrice).AsFloat;
    FmDmic01.PktranNetFl.Asstring    := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
    FmDmic01.PktranPARTNO.Asstring   := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;

    Label11.Caption :='ยอดคงเหลือ : '+Floattostr(FmDmic01.Query2.Fieldbyname(Allo).Asfloat);
    If FmDmic01.Query2.FieldByName(Allo).AsFloat < FmDmic01.PktranQTYORD.AsFloat Then
    Begin
      MessageBeep(0);
      If FmDmic01.Query2.FieldByName(Allo).AsFloat>0 then
         FmDmic01.PktranQTYOUT.AsFloat := FmDmic01.Query2.FieldByName(Allo).AsFloat;

       FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;

       //Case ไม่มีสินค้าทดแทน
       If FmDmic01.Query1.FieldByName('Code_T').AsString = '' Then
       Begin
         Showmessage(' จำนวนสินค้าไม่พอจ่าย ');
         NmPart := '';
       End
       Else
       // Case มี สินค้าทดแทน
       Begin
         With FmDmic01.Query3 do
         Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND '+
          'LOCAT = :Edit2');
          PARAMS[0].ASSTRING := FmDmic01.Query1.FieldByName('Code_T').AsString;
          PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
          If Not FmDmic01.Query3.Prepared Then FmDmic01.Query3.Prepare;
          Open;
         End;
         If Not(FmDmic01.Query3.Bof and FmDmic01.Query3.Eof) Then
         Begin
          NmPart := FmDmic01.Query3.FieldByName('Partno').AsString;
          QTYOut := FmDmic01.PktranQTYORD.AsFloat - FmDmic01.PktranQTYOUT.AsFloat;
          Avcost := FmDmic01.Query2.FieldByName(Cost).AsFloat;
         End
         Else
         Showmessage(' รหัสทดแทนไม่มีในแฟ้มข้อมูล ');
       End;
    End
    ELSE
     // Case มีสินค้าพอ
    begin
       NmPart := '';
       FmDmic01.PkTranQTYOUT.AsFloat := FmDmic01.PktranQTYORD.AsFloat;
       FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;
    end;

    if FmDmic01.PktranAvgcost.AsFloat = 0 Then
    begin
      DBGrid1.Setfocus;
      DBGrid1.SelectedIndex:=0;
      SFMain.RaiseException('ต้นทุนเฉลี่ยเป็น 0 กรุณาแก้ไขให้ถูกต้องก่อน'+#13+
      'หากเป็นการ Set รหัสใหม่ ต้อง Adjust ยอดที่มีต้นทุนด้วย ');
    end;
  END;

  If DBGrid1.SelectedField.FieldName = 'CUSCOD' then
  begin
    If FmDmic01.PkTranCuscod.asstring<>'' Then
    begin
      With FmDmic01.Query4 do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT Disct FROM ARMAST WHERE CUSCOD =:XEdit');
        PARAMS[0].ASSTRING := FmDmic01.PkTranCuscod.asstring;
        Open;
        FmDmic01.PkTranREDU1.Asfloat := FmDmic01.Query4.Fieldbyname('Disct').Asfloat;
      end;
    end;
  end;


  If (DbGrid1.SelectedField.FieldName) = 'QTYOUT' Then
  begin
   If (NAllow='Y') AND (FmDmic01.PktranQTYOUT.AsFloat>FmDmic01.Query2.FieldByName(Allo).AsFloat) Then
   begin
     DBGrid1.Setfocus;
     DBGrid1.SelectedIndex:=0;
     SFMain.RaiseException('ในระบบ Setup ไม่อนุญาตให้สต็อกติดลบ');
   end;
   If FmDmic01.PktranQTYOUT.AsFloat=0 Then
   If Messagedlg('ต้องการ Back Order หรือไม่ ?',Mtconfirmation,[mbNO,mbOk],0)=MrOk Then
      FmDmic01.PktranBACKFLG.Asstring :='Y'
   Else
   begin
     DBGrid1.Setfocus;
     DBGrid1.SelectedIndex:=0;
     SFMain.RaiseException('จำนวนจ่ายเป็น 0');
   end;

  end;

  If (DbGrid1.SelectedField.FieldName) = 'BACKFLG' Then
  begin
    If (UpperCase(FmDmic01.PKtranBACKFLG.Asstring)<>'Y') and
       (UpperCase(FmDmic01.PKtranBACKFLG.Asstring)<>'') Then
       SFMain.RaiseException('Y:Back Order หรือ ว่าง :ไม่ Back Order');

    If UpperCase(FmDmic01.PKtranBACKFLG.Asstring) = 'Y' Then
    FmDmic01.PktranBACKFLG.Asstring := Uppercase(FmDmic01.PktranBACKFLG.Asstring);
  End;

  If (DbGrid1.SelectedField.FieldName) = 'FREE' Then
  begin
    If (UpperCase(FmDmic01.PKtranFree.Asstring)<>'Y') and
       (UpperCase(FmDmic01.PKtranFree.Asstring)<>'N') Then
       SFMain.RaiseException('Y:ฟรี หรือ N:คิดเงิน ');
    FmDmic01.PktranFree.Asstring := Uppercase(FmDmic01.PktranFree.Asstring);

    Dbgrid1.Columns[6].Readonly := (XEditpric<>'Y')or(UpperCase(FmDmic01.PKtranFree.Asstring)='Y') ;
  End;

  If FmDmic01.PKtranNETFL.Asstring = 'N' Then
  Begin
    Dbgrid1.Columns[8].Readonly := True;
    Dbgrid1.Columns[9].Readonly := True;
    Dbgrid1.Columns[10].Readonly := True;
    FmDmic01.PkTranREDU1.AsFloat := 0;
  End
  Else
  Begin
    Dbgrid1.Columns[8].Readonly := (XEditDisc<>'Y');
    Dbgrid1.Columns[9].Readonly := (XEditDisc<>'Y') or (DBCheckBox1.Checked);
    Dbgrid1.Columns[10].Readonly := (XEditDisc<>'Y') or (DBCheckBox1.Checked);
  end;

  If Not DBCheckBox1.Checked Then
  Begin
  If (DbGrid1.SelectedField.FieldName='REDU1') or
     (DbGrid1.SelectedField.FieldName='REDU2') Or
     (DbGrid1.SelectedField.FieldName='REDU3') Or
     (DbGrid1.SelectedField.FieldName='UPRICE')
     Then
  Begin
     if (FmDmic01.PktranUprice.AsFloat = 0) then
     begin
       DBGrid1.Setfocus;
       DBGrid1.SelectedIndex:=0;
       SFMain.RaiseException('ราคาขายเป็น 0 ตรวจสอบอีกครั้ง');
     end;
     // ตรวจสอบการลดตาม Maxdisc
     Redu :=FmDmic01.PktranRedu1.Asfloat+FmDmic01.PktranRedu2.Asfloat+
           FmDmic01.PktranRedu3.Asfloat;
     If (Redu>FmDmic01.Query1.FieldByName('Maxdisc').Asfloat) and
        (FmDmic01.Query1.FieldByName('Maxdisc').Asfloat>0) Then
     Begin
      MessageBeep(0);
      MessageDlg('ลดเกินอัตรา Maximum Discount  '#13+
      'ระบบจะปรับให้ส่วนลดตามที่ Set ไว้',Mtinformation,[mbok],0);
      FmDmic01.PktranRedu1.Asfloat :=FmDmic01.Query1.FieldByName('Maxdisc').Asfloat;
      FmDmic01.PktranRedu2.Asfloat :=0;
      FmDmic01.PktranRedu3.Asfloat :=0;
     end;
     //
     if (FmDmic01.PktranUprice.AsFloat < FmDmic01.Query2.FieldByName(Cost).AsFloat) and
     (UpperCase(FmDmic01.PKtranFree.Asstring) <> 'Y')  AND
     (FmDmic01.Query1.FieldByName('CHARGFLG').Asstring<>'Y') Then
     Messagedlg('เตือน : ราคาขายต่ำกว่าต้นทุน',mtwarning,[mbok],0);

     Pric1    := FRound((FmDmic01.PktranUPrice.value*(FmDmic01.PktranRedu1.value/100)),2);
     SmPric1  := FmDmic01.PktranUPrice.value-Pric1;
     Pric2    := SmPric1*(FmDmic01.Pktranredu2.value/100);
     SmPric2  := SmPric1-Pric2;
     Pric3    := SmPric2*(FmDmic01.Pktranredu3.value/100);
     SmPric3  := SmPric2-Pric3;
     FmDmic01.PktranNetprc.AsFloat := FRound(SmPric3,2);

     If UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y' Then
     FmDmic01.PktranNetprc.AsFloat := 0;

     FmDmic01.PktranTotPrc.AsFloat := FRound((FmDmic01.PktranNetprc.AsFloat*FmDmic01.PkTranQTYOUT.AsFloat),2);
  End;
  End
  Else
  If (DbGrid1.SelectedField.FieldName='DISCAMT') Then
  Begin
    FmDmic01.PktranNetprc.AsFloat:= FmDmic01.PktranUPrice.Asfloat-
                        FmDmic01.PktranDiscamt.AsFloat;

    If UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y' Then
    FmDmic01.PktranNetprc.AsFloat := 0;

    FmDmic01.PktranTotPrc.AsFloat := FRound((FmDmic01.PktranNetprc.AsFloat*FmDmic01.PkTranQTYOUT.AsFloat),2);

  End;

end;


procedure TFmSTIn11_1.PrnBtnClick(Sender: TObject);
begin
   Application.CreateForm(TFmStprn50,FmStprn50);
   FmStprn50.Label6.caption := DBEdit2.text;
   FmStprn50.ShowModal;
end;

procedure TFmSTIn11_1.InsBtnClick(Sender: TObject);
begin
   With FmDmic01.Pkinv Do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := '';
      If Not FmDmic01.Pkinv.Prepared Then FmDmic01.Pkinv.Prepare;
      OPEN;
      INSERT;
   END;

   With FmDmic01.PKtran Do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := '';
      If Not FmDmic01.PKtran.Prepared Then FmDmic01.PKtran.Prepare;
      OPEN;
   END;
   FmDmic01.PkinvFlag.asstring := '3';
   FmDmic01.PkinvPKDATE.AsDateTime:= Now;
   DBRadioGroup2.ItemIndex := 0;

   Edit1.Text := '';
   Edit2.text := '';
   Edit5.Text := '';
   Label15.Visible := False;
   Label6.Visible := False;
   Label20.Visible := False;
   //
  ShowGride;

end;

procedure TFmSTIn11_1.DelBtnClick(Sender: TObject);
begin
  If FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring<>'' Then
  SFMain.RaiseException('ออกใบส่งของ/ใบกำกับภาษีแล้ว #'+FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring);

  if MessageDlg('แน่ใจหรือไม่ที่จะลบข้อมูล ? ',mtInformation, [mbYes, mbNo], 0) = mrYes then
  FmDmic01.Pkinv.delete;
end;

procedure TFmSTIn11_1.EnqBtnClick(Sender: TObject);
Var XStrno:String;
begin
   Application.Createform(TfSrcDlg,fSrcDlg);
   fSrcDlg.Flag_a :='3';
   If fSrcDlg.ShowModalpk=Mrok Then
   begin
      With FmDmic01.Pkinv Do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
        PARAMS[0].ASSTRING := fSrcDlg.KeyNo;
        OPEN;
      END;

      With FmDmic01.PKtran Do
      begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
         PARAMS[0].ASSTRING := FmDmic01.PkinvPkno.Asstring;
         OPEN;
      END;

      WITH FmDmic01.Query2 DO
      BEGIN
         close;
         sql.clear;
         sql.add('select cuscod,snam,name1,name2 from armast '+
                 'WHERE (cuscod =:EDIT1) ');
         Params[0].AsString  := FmDmic01.PkinvCusCod.AsString;
         OPEN;
         Edit5.Text := FmDmic01.Query2.FieldByname('SNAM').Asstring+' '+
                       FmDmic01.Query2.FieldByname('NAME1').Asstring+'   '+
                       FmDmic01.Query2.FieldByname('NAME2').Asstring;
      End;

      with FmDmic01.Query2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT STRNO FROM JOBORDER WHERE JOBNO = :XNOO ');
        Params[0].Asstring := Dbedit6.text;
        Open;
        XStrno := FmDmic01.Query2.Fieldbyname('STRNO').Asstring;
      end;

      With FmDmic01.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT REGNO FROM SVMAST WHERE STRNO= :XStr');
        Params[0].Asstring := XStrno;
        Open;
      end;
      Edit1.Text := FmDmic01.Query1.FieldByName('REGNO').Asstring;

     with FmDmic01.Query2 do
     begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT Status,GROUP1,Campno,Preordno FROM JOBORDER WHERE JOBNO = :XNOO ');
       Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('Jobno').asstring;
       Open ;
     end;
     XEstno  := FmDmic01.Query2.Fieldbyname('Preordno').asstring;
     XCampno := FmDmic01.Query2.Fieldbyname('CAMPNO').asstring;

     Xgroup1 := FmDmic01.Query2.FieldByName('GROUP1').Asstring;
     Edit2.Text := Xgroup1;

     If FmDmic01.Query2.Fieldbyname('Status').asstring<>'W' Then
     begin
       DBKbd1.AllowEditing :=False;
       DBkbd1.AllowInsert  :=False;
       DBkbd1.AllowDelete  :=False;
       DBGrid1.Readonly    := True;
       DBRadioGroup1.Readonly := true;
       DBRadioGroup2.Readonly := true;
     end
     Else
     begin
       DBkbd1.AllowDelete := SFMain.Del_right;
       DBkbd1.AllowEditing:= SFMain.Edit_right;
       DBkbd1.AllowInsert := SFMain.Insert_right;
       DBGrid1.Readonly       := false;
       DBRadioGroup1.Readonly := False;
       DBRadioGroup2.Readonly := False;
     end;

     Label15.Visible := (DBEdit6.Text<>'') Or (DBEdit11.Text<>'');
     If FmDmic01.Query2.Fieldbyname('Status').asstring ='W' Then
     Label15.Caption := 'สถานะ Job : กำลังซ่อม';
     If FmDmic01.Query2.Fieldbyname('Status').asstring ='F' Then
     Label15.Caption := 'สถานะ Job : ปิด Job แล้ว';
     If FmDmic01.Query2.Fieldbyname('Status').asstring ='R' Then
     Label15.Caption := 'สถานะ Job : รับรถแล้ว';

     DataSource1StateChange(Sender);
     ShowGride;
   END;
end;


procedure TFmSTIn11_1.SavBtnClick(Sender: TObject);
begin
  If FmDmic01.CountFound>1 Then
      SFMain.RaiseException('รหัสสินค้าซ้ำ #'+FmDmic01.DoupPart+' กรุณาลบก่อน');

  If FmDmic01.PkTran.RecordCount = 0 Then
     SFMain.RaiseException('ไม่มีรายการสินค้า');

  with FmDmic01.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT JOBNO,STATUS FROM JOBORDER WHERE JOBNO = :XNOO ');
    Params[0].Asstring := Dbedit6.text;
    Open;
    If FmDmic01.Query2.Fieldbyname('Status').Asstring <>'W' Then
    SFMain.RaiseException('มีการ ปิด Job ไปแล้ว ขณะที่กำลังจ่ายอะไหล่');
  end;
  FmDmic01.Pkinv.Post;

end;

procedure TFmSTIn11_1.CancBtnClick(Sender: TObject);
begin
  Edit1.text := '';
  Edit2.text := '';
  Edit5.text := '';
  Label15.Visible := False;
  Label6.Visible  := False;
  Label20.Visible := False;
  FmDmic01.Pkinv.Cancel;
end;

procedure TFmSTIn11_1.CloseBtnClick(Sender: TObject);
begin
        Close;
end;

procedure TFmSTIn11_1.FormCreate(Sender: TObject);
begin
   SFMain.Check_right(HIC, 'IC04_1');
   DBkbd1.AllowDelete := SFMain.Del_right;
   DBkbd1.AllowEditing:= SFMain.Edit_right;
   DBkbd1.AllowInsert := SFMain.Insert_right;

  With FmDmic01.Pkinv Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := '';
    If Not FmDmic01.Pkinv.Prepared Then FmDmic01.Pkinv.Prepare;
    OPEN;
  END;
  XEditpric := 'N';
  XEditdisc := 'N';
  With FmDmic01.Query1 Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Editpric,EditDisc FROM PASSWRD WHERE USERID =:XEdit');
    PARAMS[0].ASSTRING := SFMain.Xuser_id;
    If Not FmDmic01.Query1.Prepared Then FmDmic01.Query1.Prepare;
    OPEN;
    XEditpric := FmDmic01.Query1.Fieldbyname('Editpric').Asstring;
    XEditdisc := FmDmic01.Query1.Fieldbyname('EditDisc').Asstring;
  END;
  PageControl1.ActivePage := TabSheet1;
  FmDmic01.Flag_a := '3';

  If Not FmDmic01.CondPay.Active Then FmDmic01.CondPay.Open;
  NAllow := FmDmic01.CondPay.Fieldbyname('NStkLob').Asstring;{ไม่ยอมให้สต็อกติดลบ?}

end;

procedure TFmSTIn11_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If FmDmic01.Pkinv.State in Dseditmodes Then
  SFMain.RaiseException('กรุณากดปุ่ม ยกเลิก และ ออก ตามขั้นตอน ');

  FmDmic01.Pkinv.Close;
  FmDmic01.PkTran.Close;
  FmDmic01.QDbconfig.close;
  Action:=Cafree;
  FmSTIn11_1 := nil;
end;

procedure TFmSTIn11_1.DBkbd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key Of
    Vk_F9 : PrnBtnClick(Sender);
        Vk_F7 : EnqBtnClick(Sender);
        Vk_ESCAPE : CancBtnClick(Sender);
        Vk_F3 : DBEdit6ButtonClick(Sender);
        Vk_F8 : if DelBtn.Enabled Then DelBtnClick(Sender);
        Vk_F2 : if SavBtn.Enabled Then SavBtnClick(Sender);
        Vk_F5 : if InsBtn.Enabled Then InsBtnClick(Sender);
  end;
end;

procedure TFmSTIn11_1.DataSource1StateChange(Sender: TObject);
Var N:word;
begin
  InsBtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete);
  Enqbtn.Enabled  := DataSource1.State=Dsbrowse;
  CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
  SavBtn.Enabled  := (DataSource1.State in DsEditmodes)and
                     ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  CancBtn.Enabled := SavBtn.Enabled;
  //
  NextBtn.Enabled  := SavBtn.Enabled;
  DeleBtn.Enabled  := SavBtn.Enabled;
  AutoBtn.Enabled  := SavBtn.Enabled;
  EstBtn.Enabled   := (SavBtn.Enabled) and (Xestno<>'');
  CampBtn.Enabled  := (SavBtn.Enabled) and (XCampno<>'');
  KitBtn.Enabled  := SavBtn.Enabled;

  PrnBtn.Enabled   := (DataSource1.Dataset.State=DsBrowse);
  DBRadioGroup1.Enabled   := (DataSource1.Dataset.State=DsInsert);
  DBRadioGroup2.Enabled   := DBRadioGroup1.Enabled;
  DBCheckBox1.Enabled     := DBRadioGroup1.Enabled;
  DBCheckBox2.Enabled     := CampBtn.Enabled;

  If DataSource1.Dataset.State = Dsbrowse Then
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TRzDBButtonEdit)and (TRzDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TRzDBButtonEdit(Components[n]).Readonly := True;
          TRzDBButtonEdit(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TRzDBEdit)and(TRzDBEdit(Components[n]).Tag=0)  Then
        begin
          TRzDBEdit(Components[n]).Readonly := True;
          TRzDBEdit(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TRzDBMemo)and(TRzDBMemo(Components[n]).Tag=0)  Then
        begin
          TRzDBMemo(Components[n]).Readonly := True;
          TRzDBMemo(Components[n]).Color := clSilver;
        end;

      end;
    End
    Else
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TRzDBButtonEdit)and (TRzDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TRzDBButtonEdit(Components[n]).Readonly := False;
          TRzDBButtonEdit(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TRzDBEdit)and(TRzDBEdit(Components[n]).Tag=0)  Then
        begin
          TRzDBEdit(Components[n]).Readonly := False;
          TRzDBEdit(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TRzDBMemo)and(TRzDBMemo(Components[n]).Tag=0)  Then
        begin
          TRzDBMemo(Components[n]).Readonly := False;
          TRzDBMemo(Components[n]).Color := clWhite;
        end;

      end;
    End;
   If Not FmDmic01.QDBConfig.Active Then FmDmic01.QDBConfig.Open;
   DBEdit2.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_PKSV').asstring='Y' ;
   //
   DBEdit1.Enabled := SFMain.XLevel='1';
   DBEdit16.Readonly  := XEditDisc<>'Y';

   DBEdit6.Enabled := DataSource1.Dataset.State=DsInsert;
   DBEdit4.Enabled :=DBEdit6.Enabled;
   DBEdit1.Enabled :=DBEdit6.Enabled;
   DBEdit11.Enabled:=DBEdit6.Enabled;
end;


end.
