unit STIn13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, Mask, ComCtrls, DB,
  Dbkbd, FldEdit, FldCombo, JCombo, Fldedit1, Fldbedit, ImgList, ToolWin;

type
  TFmSTIn13 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label21: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    Label25: TLabel;
    Label27: TLabel;
    Label13: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    DBGrid1: TDBGrid;
    NextBtn: TBitBtn;
    DBEdit12: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit24: TDBEdit;
    DataSource1: TDataSource;
    DeleBtn: TBitBtn;
    SpeedButton3: TSpeedButton;
    DBkbd1: TDBkbd;
    DBEdit1: TFldCombo;
    FldCombo1: TFldCombo;
    DBEdit2: TFldCombo;
    DBEdit7: TFldCombo;
    DBEdit3: TFldCombo;
    DBText1: TDBText;
    Label10: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    DBEdit5: TFldEdit;
    FldEdit1: TFldEdit;
    DBEdit8: TFldEdit;
    Label12: TLabel;
    Label19: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label6: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    FldEdit2: TFldEdit;
    Label15: TLabel;
    FldCombo2: TFldCombo;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    CloseBtn: TToolButton;
    PrnBtn: TToolButton;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure insBtnClick(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
//    procedure DBComboBox1Click(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit1BtnClick(Sender: TObject);
    procedure DBEdit7BtnClick(Sender: TObject);
    procedure DBEdit3BtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure FldCombo2BtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowCust;
  public
    { Public declarations }
    XEditpric,XEditdisc,XPKNO : String;
  end;

var
  FmSTIn13: TFmSTIn13;

  Smnettot : Double;
  NmPart,Cgroup : String;
  QTYOut,AvCost : Double;
  XDate : TdateTime;
  Xyear, Xmonth, XDay : Word;

implementation
USES Dmic01,Pickdate,Dlginvms,Stprn60,
     DmSet1,StHpRp,Setar,SrchDlg, USoftFirm;

{$R *.DFM}

procedure TFmSTIn13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmDmic01.QIcothinv.Close;   {Dmic01 Close ส่วนที่เหลือ}
  FmDmic01.QDBConfig.Close;
  Action:=Cafree;
end;

procedure TFmSTIn13.insBtnClick(Sender: TObject);
begin
   With FmDmic01.QIcothinv Do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ICOTHINV WHERE OTHIVNO =:XOTHNO');
      PARAMS[0].ASSTRING := '';
      If Not FmDmic01.QIcothinv.Prepared Then FmDmic01.QIcothinv.Prepare;
      OPEN;
      INSERT;
   END;

   With FmDmic01.QIcothtrn Do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ICOTHTRN WHERE OTHIVNO =:XIVNO');
      PARAMS[0].ASSTRING := '';
      If Not FmDmic01.QIcothtrn.Prepared Then FmDmic01.QIcothtrn.Prepare;
      OPEN;
   END;

end;

procedure TFmSTIn13.NextBtnClick(Sender: TObject);
begin
  If FmDmic01.QIcothtrn.State in Dseditmodes Then
  SFMain.RaiseException('ยังไม่Enter ผ่านช่องสุดท้าย');

  FmDmic01.QIcothtrn.Append;
end;

procedure TFmSTIn13.CancBtnClick(Sender: TObject);
begin
  Edit1.text := '';
  Edit2.text := '';
  If FmDmic01.QIcothinv.State In Dseditmodes Then
  FmDmic01.QIcothinv.Cancel;
end;

procedure TFmSTIn13.SaveBtnClick(Sender: TObject);
Var S:string;
begin
  If FmDmic01.QIcothtrn.RecordCount = 0 Then
     SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  FmDmic01.QIcothinv.Post;
end;

procedure TFmSTIn13.DBGrid1ColExit(Sender: TObject);
Var SmPric1,SmPric2,SmPric3,Pric1,Pric2,Pric3 : Double;
    XQtyBK,Redu : Double;
    Allo,Cost,LVPrice : string;
begin
  Xdate := FmDmic01.QIcothinvOTHdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);

  If FmDmic01.QIcothinvCUSCOD.asstring='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');

  If (DbGrid1.SelectedField.FieldName) = 'PARTNO' Then
  begin
    If FmDmic01.QIcothtrnPartno.asstring='' Then
    SFMain.RaiseException('ยังไม่บันทึกรหัส ถ้าไม่มีในแฟ้มหลักใส่ 000000  ');

    With FmDmic01.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:EDIT2' );
      PARAMS[0].ASSTRING := FmDmic01.QIcothtrnPartno.asstring;
      PARAMS[1].ASSTRING := FmDmic01.QIcothtrnLOCAT.asstring;
      Open;
    end;

    If FmDmic01.Query1.Bof and FmDmic01.Query1.Eof Then
    Begin
      Application.CreateForm(TFsvmast,Fsvmast);
      With Fsvmast.Hquery1 Do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PARTNO,DESC1  FROM INVENTOR WHERE PARTNO LIKE :XPARTNO AND LOCAT LIKE :EDIT2' );
        PARAMS[0].ASSTRING := FmDmic01.QIcothtrnPartno.asstring+'%';
        PARAMS[1].ASSTRING := FmDmic01.QIcothtrnLOCAT.asstring+'%';
        Open;
      end;
      If (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) Then
      begin
        Fsvmast.Close;
        Showmessage('ไม่พบรหัสในแฟ้มสินค้า  บันทึกรายละเอียดเอง');
      end
      Else
      begin
        If Fsvmast.Showmodal=mrok Then
        FmDmic01.QIcothtrnPartno.asstring := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
        Fsvmast.Close;
      end;
    end;
    //
    With FmDmic01.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND '+
        'LOCAT = :Edit2');
      PARAMS[0].ASSTRING := FmDmic01.QIcothtrnPartno.asstring;
      PARAMS[1].ASSTRING := FmDmic01.QIcothtrnLOCAT.asstring;
      Open;
    end;
    LvPrice := 'Price'+DBEdit5.text;
    FmDmic01.QIcothtrnUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LvPrice).AsFloat;
    FmDmic01.QIcothtrnDESC1.Asstring := FmDmic01.Query1.Fieldbyname('Desc1').Asstring;
    FmDmic01.QIcothtrnREDU1.AsFloat  := FmDmic01.QIcothinvDisct.AsFloat;
  end;

  If (DbGrid1.SelectedField.FieldName) = 'QTYORD' Then
  Begin
    If FmDmic01.PkTranQtyord.AsFloat=0 Then
    SFMain.RaiseException('จำนวนเป็น 0');
  End;

  If Not DBCheckBox1.Checked Then
  Begin
  If (DbGrid1.SelectedField.FieldName='REDU1') or
     (DbGrid1.SelectedField.FieldName='REDU2') Or
     (DbGrid1.SelectedField.FieldName='REDU3') Then
  Begin
     Pric1    := (FmDmic01.QIcothtrnUPrice.value*(FmDmic01.QIcothtrnRedu1.Asfloat/100));
     SmPric1  := FmDmic01.QIcothtrnUPrice.value-Pric1;
     Pric2    := SmPric1*(FmDmic01.QIcothtrnRedu2.Asfloat/100);
     SmPric2  := SmPric1-Pric2;
     Pric3    := SmPric2*(FmDmic01.QIcothtrnRedu3.Asfloat/100);
     SmPric3  := SmPric2-Pric3;
     FmDmic01.QIcothtrnNetprc.AsFloat := SmPric3;
     FmDmic01.QIcothtrnTotPrc.AsFloat := StrTofloat(FloattostrF((FmDmic01.QIcothtrnNetprc.AsFloat*FmDmic01.QIcothtrnQTYOUT.AsFloat),ffFixed,15,2));
  End;
  End
  Else
  If (DbGrid1.SelectedField.FieldName='DISCAMT') Then
  Begin

    FmDmic01.QIcothtrnNetprc.AsFloat:= FmDmic01.QIcothtrnUPrice.Asfloat-
                        FmDmic01.QIcothtrnDiscamt.AsFloat;
    FmDmic01.QIcothtrnTotPrc.AsFloat := StrTofloat(FloattostrF((FmDmic01.QIcothtrnNetprc.AsFloat*FmDmic01.QIcothtrnQTYOUT.AsFloat),ffFixed,15,2));
  End;
end;


procedure TFmSTIn13.DataSource1StateChange(Sender: TObject);
Var N:Word;
begin
  InsBtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete);
  Enqbtn.Enabled  := DataSource1.State=Dsbrowse;
  CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
  SavBtn.Enabled  := (DataSource1.State in DsEditmodes)and
                     ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  CancBtn.Enabled := SavBtn.Enabled;
  //
  NextBtn.Enabled  := (DataSource1.Dataset.State In DsEditModes);
  DeleBtn.Enabled  := NextBtn.Enabled;
  PrnBtn.Enabled    := DataSource1.Dataset.State=DsBrowse;

  DBRadioGroup1.Enabled   := (DataSource1.Dataset.State=DsInsert);
  DBRadioGroup2.Enabled   := DBRadioGroup1.Enabled;
  DBCheckBox1.Enabled     := DBRadioGroup1.Enabled;

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
        If (Components[n] Is TJcombo)and(TJcombo(Components[n]).Tag=0)  Then
        begin
          TJcombo(Components[n]).Enabled := False;
          TJcombo(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TDBMemo)and(TDBMemo(Components[n]).Tag=0)  Then
        begin
          TDBMemo(Components[n]).Enabled := False;
          TDBMemo(Components[n]).Color := clSilver;
        end;

      end;
    End
    Else
   If DataSource1.Dataset.State = DsInsert Then

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
        If (Components[n] Is TJcombo)and(TJcombo(Components[n]).Tag=0)  Then
        begin
          TJcombo(Components[n]).Enabled := True;
          TJcombo(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TDBMemo)and(TDBMemo(Components[n]).Tag=0)  Then
        begin
          TDBMemo(Components[n]).Enabled := True;
          TDBMemo(Components[n]).Color := clWhite;
        end;

      end;
    End
    Else
    If DataSource1.Dataset.State = DsEdit Then
    begin
      DBMemo1.Enabled := True;
      DBMemo1.Color := clWhite;

    end;

  Label11.Visible :=FmDmic01.QIcothinvCancelid.Asstring<>'';

 { If (FmDmic01.QIcothinvOTHIVNO.Asstring <> '') then
  begin
    Label10.Visible := True;
    DBkbd1.AllowEditing := False;
    TabSheet1.Enabled := False;
    DBgrid1.ReadOnly  := True;
    FmDmic01.QIcothinv.Cancel;

    NextBtn.Enabled  := False;
    DeleBtn.Enabled  := False;
  end
  Else
  begin
    Label10.Visible := False;
    TabSheet1.Enabled := True;
    TabSheet2.Enabled := True;
    DBgrid1.ReadOnly  := False;

    NextBtn.Enabled  := True;
    DeleBtn.Enabled  := True;
  end;
  }
  //
  If Not FmDmic01.QDBConfig.Active Then FmDmic01.QDBConfig.Open;
  DBEdit2.Readonly := (FmDmic01.QDBConfig.Fieldbyname('H_OTHC').asstring='Y') Or
    (FmDmic01.QDBConfig.Fieldbyname('H_OTHD').asstring='Y') ;
  DBEdit1.Enabled := SFMain.XLevel='1';
end;

procedure TFmSTIn13.EditBtnClick(Sender: TObject);
begin
   Application.Createform(TSearchDlg,SearchDlg);
   If SearchDlg.ShowModalOthic=Mrok Then
   begin
      With FmDmic01.QIcothinv Do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM ICOTHINV WHERE OTHIVNO =:XPKNO');
        PARAMS[0].ASSTRING := SearchDlg.KeyNo;
        OPEN;
      END;

      With FmDmic01.QIcothtrn Do
      begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT * FROM ICOTHTRN WHERE OTHIVNO =:XNO');
         PARAMS[0].ASSTRING := FmDmic01.QIcothinvOthivno.Asstring;
         OPEN;
      END;

      With FmDmic01.Query1 Do
      begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT OFFICCOD,OFFICNAM,DEPART FROM OFFICER '+
                 'Where OFFICCOD =:XOFFICCOD ');
         Params[0].AsString := FmDmic01.QIcothinvOFFICCOD.AsString;
         Open;
         Edit2.Text := FmDmic01.Query1.FieldByname('OFFICNAM').Asstring;
      End;

      WITH FmDmic01.Query2 DO
      BEGIN
         close;
         sql.clear;
         sql.add('select cuscod,snam,name1,name2 from armast '+
                 'WHERE (cuscod =:EDIT1) ORDER BY cuscod ');
         Params[0].AsString  := FmDmic01.QIcothinvCusCod.AsString;
         OPEN;
         Edit1.Text := FmDmic01.Query2.FieldByname('SNAM').Asstring+' '+
                       FmDmic01.Query2.FieldByname('NAME1').Asstring+'   '+
                       FmDmic01.Query2.FieldByname('NAME2').Asstring;
      End;
   END;
end;

procedure TFmSTIn13.delBtnClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ที่จะยกเลิกรายการ ? ',mtInformation, [mbYes, mbNo], 0) = mrYes then
  Begin
   FmDmic01.QIcothinv.Edit;
   FmDmic01.QIcothinvCANCELID.Asstring   := SFMain.Xuser_id;
   FmDmic01.QIcothinvCANDAT.Asdatetime   := Now;
   FmDmic01.QIcothinv.Post;
  End;
  Edit1.Text :='';
  Edit2.Text :='';
end;

procedure TFmSTIn13.DBRadioGroup1Click(Sender: TObject);
begin
   If DBRadioGroup1.ItemIndex = 0 then
      FmDmic01.QIcothinvVATTYPE.Asstring := '1';
   If DBRadioGroup1.ItemIndex = 1 then
      FmDmic01.QIcothinvVATTYPE.Asstring := '2';
end;

procedure TFmSTIn13.DeleBtnClick(Sender: TObject);
begin
   FmDmic01.QIcothtrn.delete;
end;

procedure TFmSTIn13.DBGrid1EditButtonClick(Sender: TObject);
Var LVPrice : String;
begin
  If FmDmic01.QIcothinv.Fieldbyname('SALLEV').Asstring='' Then
  SFMain.RaiseException('ยังไม่บันทึกระดับราคาขาย');

  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalParts=Mrok Then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO = :XPART AND LOCAT=:XLOC');
      Params[0].Asstring := SearchDlg.KeyNo;
      Params[1].Asstring := FmDmic01.QIcothinv.Fieldbyname('LOCAT').Asstring;
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
    SFMain.RaiseException('ไม่พบข้อมูล');
    FmDmic01.QIcothtrnPartno.Asstring := Dm_Set1.Query1.Fieldbyname('Partno').Asstring;
  end;
end;

procedure TFmSTIn13.DBEdit7Change(Sender: TObject);
begin
  With FmDmic01.Query2 Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OFFICCOD,OFFICNAM FROM OFFICER WHERE OFFICCOD =:XOFFICCOD');
    PARAMS[0].ASSTRING := DBEdit7.TEXT;
    OPEN;
    EDIT2.TEXT := FmDmic01.Query2.FieldByname('OFFICNAM').Asstring;
  END;
end;

procedure TFmSTIn13.SpeedButton3Click(Sender: TObject);
begin
  SFMain.Check_right('SYS04','ICM160');
  Application.CreateForm(TSetupAr,SetupAr);
  Setupar.KeyCuscod := DBEdit3.Text;
  SetupAr.Showmodal;
end;
procedure TFmSTIn13.DBEdit1BtnClick(Sender: TObject);
begin
  If  FmDmic01.QIcothinv.State<>Dsinsert Then Exit;

  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalLocat=Mrok Then
  begin
    FmDmic01.QIcothinvLOCAT.Asstring := SearchDlg.KeyNo;
  end;
end;

procedure TFmSTIn13.DBEdit7BtnClick(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalOffic=Mrok Then
  begin
    FmDmic01.QIcothinvOFFICCOD.Asstring := SearchDlg.Keyno;
    Edit2.text := SearchDlg.HQuery1.Fieldbyname('OFFICNAM').Asstring;
  end;
end;

procedure TFmSTIn13.DBEdit3BtnClick(Sender: TObject);
begin
  If  FmDmic01.QIcothinv.State<>Dsinsert Then Exit;

  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalAR=Mrok Then
  begin
    DBEdit3.Text := SearchDlg.KeyNo;
    ShowCust;
  End;
end;

procedure TFmSTIn13.DBkbd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key Of
    Vk_F2  : If (DbGrid1.SelectedField.FieldName) = 'PARTNO' Then
             DBGrid1EditButtonClick(Sender);
  
    Vk_F8 : If PrnBtn.Enabled Then PrnBtnClick(Sender);
    Vk_F3 : SpeedButton3Click(Sender);
  end;
end;

procedure TFmSTIn13.PrnBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFmStprn60,FmStprn60);
  FmStprn60.Label6.caption := DBEdit2.text;
  FmStprn60.Fopt := 'OH';
  FmStprn60.ShowModal;
end;

procedure TFmSTIn13.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) then
   With TDBGrid(ActiveControl) Do
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

procedure TFmSTIn13.FormCreate(Sender: TObject);
begin
  XEditpric := 'N';
  XEditdisc := 'N';
  With FmDmic01.Query1 Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Editpric,EditDisc FROM PASSWRD WHERE USERID =:XEdit');
    PARAMS[0].ASSTRING := SFMain.Xuser_id;
    OPEN;
    XEditpric := FmDmic01.Query1.Fieldbyname('Editpric').Asstring;
    XEditdisc := FmDmic01.Query1.Fieldbyname('EditDisc').Asstring;
  END;
  PageControl1.ActivePage := TabSheet1;

  If Not FmDmic01.CondPay.Active Then FmDmic01.CondPay.Open;

  FmDmic01.Flag_a := 'X' ;//ค่าอื่นๆ


  If FmDmic01.CondPay.Fieldbyname('Disbath').Asstring='Y' Then
  Begin
    Dbgrid1.Columns[4].Title.Caption :='ส่วนลดบาท';
    Dbgrid1.Columns[4].Fieldname := 'DISCAMT';
    Dbgrid1.Columns[4].Width     := 65;
    Dbgrid1.Columns[5].Title.Caption :='NoUse';
    Dbgrid1.Columns[6].Title.Caption :='NoUse';
    Dbgrid1.Columns[5].Readonly := True;
    Dbgrid1.Columns[6].Readonly := True;
  End
  Else
  Begin
    Dbgrid1.Columns[4].Title.Caption :='% ลด1';
    Dbgrid1.Columns[4].Fieldname := 'REDU1';
    Dbgrid1.Columns[5].Title.Caption :='% ลด2';
    Dbgrid1.Columns[5].Fieldname := 'REDU2';
    Dbgrid1.Columns[6].Title.Caption :='% ลด3';
    Dbgrid1.Columns[6].Fieldname := 'REDU3';

    Dbgrid1.Columns[4].Width := 35;
    Dbgrid1.Columns[5].Readonly := False;
    Dbgrid1.Columns[6].Readonly := False;
  End

end;

procedure TFmSTIn13.DBEdit3Exit(Sender: TObject);
begin
  If (DBEdit3.Text<>'') and (Edit1.Text='') Then
  ShowCust;
end;


procedure TFmSTIn13.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if ((Sender as TPageControl).ActivePage = TabSheet1) then
    AllowChange := (DBEdit3.Text <> '')
  else
    AllowChange := True;
end;

procedure TFmSTIn13.DBGrid1Enter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TFmSTIn13.DBMemo1Enter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TFmSTIn13.DBMemo1Exit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;


procedure TFmSTIn13.DBCheckBox1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  If DBCheckBox1.Checked Then
  Begin
    Dbgrid1.Columns[4].Title.Caption :='ส่วนลดบาท';
    Dbgrid1.Columns[4].Fieldname := 'DISCAMT';
    Dbgrid1.Columns[4].Width := 65;
    Dbgrid1.Columns[5].Title.Caption :='NoUse';
    Dbgrid1.Columns[6].Title.Caption :='NoUse';
    Dbgrid1.Columns[5].Readonly := True;
    Dbgrid1.Columns[6].Readonly := True;
  End
  Else
  Begin
    Dbgrid1.Columns[4].Title.Caption :='% ลด1';
    Dbgrid1.Columns[4].Fieldname := 'REDU1';
    Dbgrid1.Columns[5].Title.Caption :='% ลด2';
    Dbgrid1.Columns[5].Fieldname := 'REDU2';
    Dbgrid1.Columns[6].Title.Caption :='% ลด3';
    Dbgrid1.Columns[6].Fieldname := 'REDU3';

    Dbgrid1.Columns[4].Width := 35;
    Dbgrid1.Columns[5].Readonly := False;
    Dbgrid1.Columns[6].Readonly := False;
  End
end;

procedure TFmSTIn13.DBGrid1Exit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TFmSTIn13.FormShow(Sender: TObject);
begin
  With FmDmic01.QIcothinv Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ICOTHINV WHERE OTHIVNO =:XNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  END;
end;

procedure TFmSTIn13.ShowCust;
begin
  with Dm_Set1.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT cuscod,Snam,Name1,Name2,CGroup,Disct,Credit FROM ARMAST WHERE CUSCOD = :CUSCOD');
    PARAMS[0].ASSTRING := DBedit3.Text;
    Open;
    If Not(Bof and Eof) Then
    Begin
      If (FmDmic01.QIcothinv.State in Dseditmodes) Then
      Begin
        FmDmic01.QIcothinvDISCT.asfloat   := Dm_Set1.Query1.Fieldbyname('Disct').Asfloat;
        FmDmic01.QIcothinvTerm.asfloat   := Dm_Set1.Query1.Fieldbyname('Credit').Asfloat;
      End;
      Cgroup := Dm_Set1.Query1.Fieldbyname('CGroup').Asstring;
      If (FmDmic01.QIcothinv.State in Dseditmodes) Then
      FmDmic01.QIcothinvCuscod.asstring := Dm_Set1.Query1.Fieldbyname('cuscod').Asstring;

      edit1.text := Dm_Set1.Query1.Fieldbyname('snam').Asstring+' '+
                Dm_Set1.Query1.Fieldbyname('name1').Asstring+' '+
                Dm_Set1.Query1.Fieldbyname('name2').Asstring;
    End;
  end;
end;

procedure TFmSTIn13.DBRadioGroup2Click(Sender: TObject);
begin
   If DBRadioGroup2.ItemIndex = 0 then
      FmDmic01.QIcothinvPAYTYPE.Asstring := 'S';
   If DBRadioGroup2.ItemIndex = 1 then
      FmDmic01.QIcothinvPAYTYPE.Asstring := 'C';

   If FmDmic01.QIcothinvOTHDATE.Asstring = '' Then
    FmDmic01.QIcothinvOTHDATE.AsDateTime:= Now;
   //
   FmDmic01.QIcothinvOTHDATEValidate(FmDmic01.QIcothinvOTHDATE);

   FmDmic01.QIcothtrn.DisableControls;
   FmDmic01.QIcothtrn.AfterPost  := Nil;
   FmDmic01.QIcothtrn.First;
   While Not FmDmic01.QIcothtrn.Eof Do
   Begin
     FmDmic01.QIcothtrn.Edit;
     If FmDmic01.QIcothtrnPARTNO.Asstring='' Then FmDmic01.QIcothtrn.Delete
     Else
     FmDmic01.QIcothtrnOTHIVNO.Asstring := FmDmic01.QIcothinvOTHIVNO.Asstring;
     FmDmic01.QIcothtrn.Next;
   End;
   FmDmic01.QIcothtrn.AfterPost := FmDmic01.QIcothtrnAfterPost;
   FmDmic01.QIcothtrn.EnableControls;
end;



procedure TFmSTIn13.FldCombo2BtnClick(Sender: TObject);
begin
  Application.CreateForm(TBrdateForm,BrdateForm);
  if BrDateForm.ShowModal = mrOk then
     FmDmic01.QIcothinvINVDUE.AsdateTime := BrDateForm.Date;

end;



procedure TFmSTIn13.CloseBtnClick(Sender: TObject);
begin
  CLOSE;
end;

end.
