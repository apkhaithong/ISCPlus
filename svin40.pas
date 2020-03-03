unit SvIn40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, DB, ExtCtrls, ComCtrls,
  Dbkbd, FldEdit, FldCombo, Fldbedit, ImgList, ToolWin, Fldedit1,
  RzButton, wwdbdatetimepicker, RzDBGrid, RzSpnEdt, RzDbkbd, RzPanel,
  RzDbkbd1, ToolEdit, RXDBCtrl,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSvIn_40 = class(TForm)
    DataSource1: TDataSource;
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    RzStatusBar1: TRzStatusBar;
    ToolBar1: TToolBar;
    PrnBtn: TToolButton;
    PrnBtn2: TToolButton;
    ToolButton1: TToolButton;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    CloseBtn: TToolButton;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    DBText2: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    NextBtn: TRzRapidFireButton;
    DeleBtn: TRzRapidFireButton;
    AddBtn3: TRzRapidFireButton;
    AddBtn4: TRzRapidFireButton;
    AddBtn1: TRzRapidFireButton;
    AddBtn5: TRzRapidFireButton;
    AddBtn2: TRzRapidFireButton;
    SpeedButton3: TRzRapidFireButton;
    FbtLocat: TRzRapidFireButton;
    FbtCuscod: TRzRapidFireButton;
    Edit1: TEdit;
    DBEdit12: TDBEdit;
    Edit2: TEdit;
    DBEdit10: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    BillDate: TDBDateEdit;
    DBEdit11: TDBEdit;
    dueDate: TDBDateEdit;
    TaxDate: TDBDateEdit;
    DBEdit8: TDBEdit;
    Bevel1: TBevel;
    DBEdit7: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    DBGrid1: TRzDBGrid;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure AddBtn1Click(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure AddBtn2Click(Sender: TObject);
    procedure AddBtn3Click(Sender: TObject);
    procedure PrnBtn2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure AddBtn4Click(Sender: TObject);
    procedure AddBtn5Click(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure FldCombo1BtnClick(Sender: TObject);
    procedure FldCombo3BtnClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DBRadioGroup4Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FldCombo1Change(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FbtLocatClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FbtCuscodClick(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvIn_40: TSvIn_40;
  XCusno:String;
  
implementation

uses DmSv,HlpJob,fUNCTN01,uSrcDlg1,
Srchdlg1,Spprn40,Dlgjobdt,Payoth, Dmfinc,Spprn30, USoftFirm;

{$R *.DFM}

procedure TSvIn_40.FormCreate(Sender: TObject);
begin
   SFMain.Check_right(HSV, 'SV09_4');
   DBkbd1.AllowDelete := SFMain.Del_right;
   DBkbd1.AllowEditing:= SFMain.Edit_right;
   DBkbd1.AllowInsert := SFMain.Insert_right;
  Dm_sv.Condpay.Open;
  with Dm_Sv.QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = '''' ');
    Open;
  end;
end;

procedure TSvIn_40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Dm_Sv.QOthinvoi1.Close;
 Dm_Sv.QOthtran1.Close;
 Dm_Sv.QParttran1.Close;
 Dm_Sv.QOuttran1.Close;
 Dm_Sv.QColrtran1.Close;
 Action := Cafree ;
 SvIn_40 := nil;
end;

procedure TSvIn_40.DataSource1StateChange(Sender: TObject);
Var N:word;
begin
  DBkbd1.AllowEditing:= (Dm_SV.QOthinvoi1TAXNO.Asstring='') and (SFMain.Edit_right);

  InsBtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete);
  Enqbtn.Enabled  := DataSource1.State=Dsbrowse;
  CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
  SavBtn.Enabled  := (DataSource1.State in DsEditmodes)and
                     ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  CancBtn.Enabled := SavBtn.Enabled;
  //
  FbtLocat.Enabled := SavBtn.Enabled;
  FbtCuscod.Enabled := SavBtn.Enabled;
  NextBtn.Enabled  := (DataSource1.Dataset.State In DsEditModes);
  DeleBtn.Enabled  := NextBtn.Enabled;
  AddBtn3.Enabled  := (NextBtn.Enabled) and (DBRadioGroup1.itemindex = 0);
  AddBtn1.Enabled  := (NextBtn.Enabled) and (DBRadioGroup1.itemindex <> 0);
  AddBtn2.Enabled  := (NextBtn.Enabled) and (DBRadioGroup1.itemindex <> 0);
  AddBtn4.Enabled  := (NextBtn.Enabled) and (DBRadioGroup1.itemindex <> 0);
  AddBtn5.Enabled  := (NextBtn.Enabled) and (DBRadioGroup1.itemindex <> 0);
  PrnBtn.Enabled   := DataSource1.Dataset.State=DsBrowse;
  DBCheckBox1.Enabled := SavBtn.Enabled;


  DBRadioGroup1.Readonly := Not (DataSource1.Dataset.State = Dsinsert);
  DBRadioGroup2.Readonly := Not (DataSource1.Dataset.State = Dsinsert);
  DBRadioGroup3.Readonly := Not (DataSource1.Dataset.State = Dsinsert);
  DBRadioGroup4.Readonly := Not (DataSource1.Dataset.State = Dsinsert);

  DBGrid1.Readonly      := Not SavBtn.Enabled;

  If Dm_Sv.QOthinvoi1.Fieldbyname('CancelId').Asstring <>'' then
  Begin
    Label7.Visible := True;
    DBkbd1.AllowEditing:= False;
  end
  Else
  begin
    Label7.Visible := False;
  end;

  If DataSource1.Dataset.State = Dsbrowse Then
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TDBDateEdit)and (TDBDateEdit(Components[n]).Tag=0)  Then
        begin
          TDBDateEdit(Components[n]).Readonly := True;
          TDBDateEdit(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TDBEdit)and (TDBEdit(Components[n]).Tag=0)  Then
        begin
          TDBEdit(Components[n]).Readonly := True;
          TDBEdit(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TDBMemo)and(TDBMemo(Components[n]).Tag=0)  Then
        begin
          TDBMemo(Components[n]).Readonly := True;
          TDBMemo(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TRzDBGrid)and(TRzDBGrid(Components[n]).Tag=0)  Then
        begin
          TRzDBGrid(Components[n]).Readonly := True;
          TRzDBGrid(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TEdit)and (TEdit(Components[n]).Tag=0)  Then
        begin
          TEdit(Components[n]).Color := clSilver;
        end;
      end;
    End
    Else
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TDBDateEdit)and (TDBDateEdit(Components[n]).Tag=0)  Then
        begin
          TDBDateEdit(Components[n]).Readonly := False;
          TDBDateEdit(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TDBEdit)and (TDBEdit(Components[n]).Tag=0)  Then
        begin
          TDBEdit(Components[n]).Readonly := False;
          TDBEdit(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TDBMemo)and(TDBMemo(Components[n]).Tag=0)  Then
        begin
          TDBMemo(Components[n]).Readonly := False;
          TDBMemo(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TRzDBGrid)and(TRzDBGrid(Components[n]).Tag=0)  Then
        begin
          TRzDBGrid(Components[n]).Readonly := False;
          TRzDBGrid(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TEdit)and (TEdit(Components[n]).Tag=0)  Then
        begin
          TEdit(Components[n]).Color := $00FFFFC6;
        end;
      end;
    End;

  If Not Dm_SV.QDBConfig.Active Then DM_SV.QDBConfig.Open;
  DBEdit2.Readonly := Dm_Sv.QDBConfig.Fieldbyname('H_DVOH').asstring='Y' ;
end;

procedure TSvIn_40.DBEdit3Exit(Sender: TObject);
begin
 with Dm_Sv.QJoborder do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO= :XNO AND LOCAT = :XLOCAT ORDER BY JOBNO ');
   Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring ;
   Params[1].Asstring := Dm_Sv.QOthinvoi1.FieldByName('LOCAT').Asstring ;
   Open ;
  end;
  if Dm_Sv.QJoborder.Bof and Dm_Sv.QJoborder.eof then
    SFMain.RaiseException('ไม่มีหมายเลขJOBนี้ในแฟ้มข้อมูล');
  Dm_Sv.QOthinvoi1.FieldByName('JOBDATE').AsDateTime:= Dm_Sv.QJoborder.FieldByName('RECVDATE').AsDateTime;
  Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring   := Dm_Sv.QJoborder.FieldByName('CUSCOD').Asstring ;
  Dm_Sv.QOthinvoi1.FieldByName('STRNO').Asstring    := Dm_Sv.QJoborder.FieldByName('STRNO').Asstring ;
end;

procedure TSvIn_40.InsBtnClick(Sender: TObject);
begin
  with Dm_Sv.QOthinvoi1 do
  begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO ='''' ');
     Open;
     Insert;
  end;
  with Dm_Sv.QOthtran1 do
  begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OTHTRAN WHERE INVNO ='''' ');
     Open;
     Insert;
  end;
  DBRadioGroup2Click(Sender);
end;

procedure TSvIn_40.DBGrid1DblClick(Sender: TObject);
begin
  If DbGrid1.SelectedField.FieldName = 'JOBNO' then
  Begin
    Application.CreateForm(THelpjob,Helpjob);
    HelpJob.State := 1;
    if Helpjob.ShowModal = MrOk then
    Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring  := Helpjob.QHlp.FieldByName('JOBNO').Asstring;
  End;

  If DbGrid1.SelectedField.FieldName = 'CODE' then
  Begin
     Application.Createform(TfSrcDlg1,fSrcDlg1);
     If fSrcDlg1.ShowModalSvpart=Mrok Then
     begin
       Dm_Sv.QOthtran1.FieldByName('CODE').Asstring  := fSrcDlg1.qrFindDat.FieldByName('CODE').Asstring;
     End;
  end;

  If DbGrid1.SelectedField.FieldName = 'SERVCOD' then
  begin
    Application.Createform(TfSrcDlg1,fSrcDlg1);
    If fSrcDlg1.ShowModalOffic=Mrok Then
    begin
       Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := fSrcDlg1.Keyno;
    End;
  End;
end;

procedure TSvIn_40.DBGrid1ColExit(Sender: TObject);
Var DisTot:Double;
begin
  If (Dm_Sv.QOthtran1.State = Dsbrowse) and (Dm_Sv.QOthInvoi1.State In Dseditmodes)  Then Dm_Sv.QOthtran1.Edit;

  If DbGrid1.SelectedField.FieldName = 'JOBNO' then
  Begin
    with Dm_Sv.Query1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM Joborder WHERE Jobno= :XJob  ');
     Params[0].Asstring := Dm_Sv.QOthtran1.FieldByName('Jobno').Asstring;
     Open;
     If Bof and Eof Then
     SFMain.RaiseException('ยังไม่มี Job หมายเลขนี้');
     
     If Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring='' Then
     Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('Repcod').Asstring;
     Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring  := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
    end;
  End;

  If DBGrid1.SelectedField.FieldName = 'CODE' Then
  begin
    If Dm_Sv.QOthtran1.FieldByName('CODE').Asstring='' Then
    SFMain.RaiseException('ยังไม่บันทึกรหัส');

    with Dm_Sv.QSvstock do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM SVSTOCK WHERE CODE= :XCODE ');
     Params[0].Asstring := Dm_Sv.QOthtran1.FieldByName('CODE').Asstring;
     Open;
    end;
    if Not(Dm_Sv.QSvStock.Bof and Dm_Sv.QSVStock.eof) then
    Begin
     Dm_Sv.QOthtran1.Edit;
     Dm_Sv.QOthtran1.FieldByName('CODE').Asstring  := Dm_Sv.QSvstock.FieldByName('CODE').Asstring;
     Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring := Dm_Sv.QSvstock.FieldByName('DESC1').Asstring;
     Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QSvstock.FieldByName('UPRICE').AsFloat;
     Dm_Sv.QOthtran1.FieldByName('UCOST').AsFloat  := Dm_Sv.QSvstock.FieldByName('UCOST').AsFloat;
     Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat   := Dm_Sv.QOthinvoi1.FieldByName('Dsct').AsFloat;
    end
    Else
    if MessageDlg('ไม่มีรหัสสินค้า ต้องการบันทึกเอง',mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;
  end;
  //
  If DBGrid1.SelectedField.FieldName = 'SERVCOD' Then
  begin
    with Dm_Sv.Query1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD= :XCODE  ');
     Params[0].Asstring := Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring;
     Open;
    end;
    if Dm_Sv.Query1.Bof and Dm_Sv.Query1.eof then
       SFMain.RaiseException('ไม่มีรหัสพนักงานนี้ในแฟ้มข้อมูล');
    If Not(Dm_Sv.QOthtran1.State In DsEditmodes) Then Dm_Sv.QOthtran1.Edit;
       Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('OFFICCOD').Asstring;
  end;
  If Dm_Sv.QOthtran1.State=Dsbrowse Then Dm_Sv.QOthtran1.Edit;
  Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat:= Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat*Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat;
  DisTot := FRound(Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat*Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat/100,2);
  Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat:= Dm_Sv.QOthtran1.FieldByName('UCOST').AsFloat  * Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat;
  Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat:= Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat- DisTot;

end;

procedure TSvIn_40.DBGrid1Enter(Sender: TObject);
begin
  If Dm_Sv.QOthinvoi1.FieldByName('INVNO').Asstring = '' Then
     SFMain.RaiseException('ยังไม่บันทึกวันที่เอกสาร');
end;

procedure TSvIn_40.SaveBtnClick(Sender: TObject);
begin
  If Dm_Sv.QOthinvoi1.Fieldbyname('Cancelid').Asstring <>'' then
     SFMain.RaiseException('ยกเลิกไปแล้ว');

  If (TaxDate.Text='') and (DBCheckBox1.Checked) Then
      SFMain.RaiseException('ยังไม่บันทึกวันที่ใบกำกับ');
      Dm_Sv.QOthinvoi1.Post ;
  //
  If Dm_Sv.QOthinvoi1PTYPE.Asstring ='S' Then
  Begin
    Application.CreateForm(TFpayoth,Fpayoth);
    FPayoth.InsBtn2Click(Sender);
    Dm_Finc.QArpaytrn2.FieldByName('LOCAT').Asstring  := Dm_Sv.QOthinvoi1LOCAT.Asstring;
    Dm_Finc.QArpaytrn2.FieldByName('INVNO').Asstring  := Dm_Sv.QOthinvoi1INVNO.Asstring;
    Dm_Finc.QArpaytrn2.FieldByName('PAYTYP').Asstring := '01';
    Fpayoth.Showmodal;
  End  Else
  Begin
    If (DBCheckBox1.Checked) Then
        Dm_Sv.Runtaxothinv;
  End;
end;

procedure TSvIn_40.DelBtnClick(Sender: TObject);
begin
  If (Dm_Sv.Qothinvoi1.Fieldbyname('Cancelid').asstring <>'') Then
  SFMain.RaiseException('ถูกยกเลิกแล้ว');

  If (Dm_Sv.Qothinvoi1.Fieldbyname('Taxno').asstring <>'') and
     (Dm_Sv.Qothinvoi1.Fieldbyname('Taxno').asstring=Dm_Sv.Qothinvoi1.Fieldbyname('Billno').asstring) Then
      SFMain.RaiseException('ออกใบเสร็จ/ใบกำกับแล้ว กรุณาไปยกเลิกก่อน');

 If Dm_Sv.QOthinvoi1.Fieldbyname('Cancelid').Asstring <>'' then
 SFMain.RaiseException('ยกเลิกไปแล้ว');

 if MessageDlg(' แน่ใจหรือไม่ที่จะยกเลิก',mtInformation, [mbYes, mbNo], 0) = mrYes then
 begin
   with Dm_Sv.QTaxsal do
   begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
    Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('TAXNO').Asstring;
    Open ;
   end;

   If Not(Dm_Sv.QTaxsal.Bof and Dm_Sv.QTaxsal.Eof) Then
   Begin
    If Dm_Sv.QTaxsal.State =Dsbrowse Then Dm_Sv.QTaxsal.Edit;
    Dm_Sv.QTaxsal.Fieldbyname('CANCELID').asstring     := SFMain.Xuser_id;
    Dm_Sv.QTaxsal.Fieldbyname('CANDAT').asDatetime     := Now;
    Dm_Sv.QTaxsal.Post;
   End;
   //
   If Dm_Sv.QOthinvoi1.State =Dsbrowse Then Dm_Sv.QOthinvoi1.Edit;
   Dm_Sv.QOthinvoi1.Fieldbyname('CANCELID').asstring     := SFMain.Xuser_id;
   Dm_Sv.QOthinvoi1.Fieldbyname('CANDAT').asDatetime     := Now;
   Dm_Sv.QOthinvoi1.Post;
 end;
end;

procedure TSvIn_40.CancBtnClick(Sender: TObject);
begin
  if Dm_Sv.QOthinvoi1.Active then
  Dm_Sv.QOthinvoi1.Cancel;
  with Dm_Sv.QOthinvoi1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = :XNO ');
   Params[0].Asstring := '' ;
   Open;
  end;
  with Dm_Sv.QOthtran1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM OTHTRAN WHERE INVNO = :XNO ');
   Params[0].Asstring := '' ;
   Open;
  end;
end;

procedure TSvIn_40.EditBtnClick(Sender: TObject);
begin
 Application.Createform(TfSrcDlg1,fSrcDlg1);
 if SFMain.XChgLoc ='Y' then fSrcDlg1.XSrLocat :='' else fSrcDlg1.XSrLocat := SFmain.Xlocat;
 If fSrcDlg1.ShowModalOthinv=Mrok Then
 begin
  with Dm_Sv.QOthinvoi1 do
  begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = :XNO ');
     Params[0].Asstring := fSrcDlg1.Keyno ;
     Open ;
     if Dm_Sv.QOthinvoi1.Bof and Dm_Sv.QOthinvoi1.eof then
     SFMain.RaiseException('ไม่มีข้อมูล ');
  end;

  If Dm_Sv.QOthinvoi1.Fieldbyname('CancelId').Asstring <>'' then
  Begin
    Label7.Visible := True;
    DBkbd1.AllowEditing:= False;
  end
  Else
  begin
    Label7.Visible := False;
  end;

  with Dm_Sv.QOthtran1 do
  begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OTHTRAN WHERE INVNO = :XNO ');
     Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('INVNO').Asstring ;
     Open ;
  end;
  //
  with Dm_Sv.QTaxsal do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
    Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('TAXNO').Asstring;
    Open ;
  end;
  DBRadioGroup2Click(Sender);
 end;
end;

procedure TSvIn_40.NextBtnClick(Sender: TObject);
begin
  If Dm_Sv.QOthtran1.State = Dsbrowse Then
  Dm_Sv.QOthtran1.Append;
end;

procedure TSvIn_40.DeleBtnClick(Sender: TObject);
begin
  if MessageDlg(' แน่ใจหรือไม่ที่ลบรายการนี้ ',mtInformation, [mbYes, mbNo], 0) = mrYes then
  Dm_Sv.QOthtran1.Delete;
end;

procedure TSvIn_40.AddBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TFJobdate,FJobdate);
  FJobdate.Opt:='DATE';
  if FJobdate.ShowModal = MrOk then
  Begin
    XCusno := FJobdate.Edit4.text;
    with Dm_Sv.Query1 do
    begin
      Close;
      Sql.Clear;
      If FJobdate.RadioGroup1.Itemindex=0 Then
      Begin
        If (FJobdate.Edit3.text='')  Then
        SFMain.RaiseException('ใส่ข้อมูลไม่ครบถ้วน');

        Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO= :XDT1 AND CUSCOD LIKE :XCUS AND (CLAIM=''Y'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
        Params[0].Asstring := FJobdate.Edit3.text;
        Params[1].Asstring := XCusno+'%';
      End
      Else
      Begin
        If (FJobdate.edFDate.text='') or (FJobdate.edDateTo.Text='')  Then
        SFMain.RaiseException('ใส่ข้อมูลไม่ครบถ้วน');

        Sql.Add('SELECT A.JOBNO,A.RFINSHDT,B.LOCAT,B.CODE,B.FRT,B.PRICE,B.DESC1,B.UPRICE,B.REDU,'+
        'B.NETPRIC,B.SERVCOD,B.SERTIME,B.CLAIM,B.BILCLAIM,B.CAMPNO FROM JOBORDER A,SERVTRAN B '+
        'WHERE (A.JOBNO=B.JOBNO) AND (A.RFINSHDT>= :XDT1 AND A.RFINSHDT<=:XDT2) AND '+
        'A.LOCAT=:XLOC AND '+
        '(B.CLAIM=''Y'') AND (B.BILCLAIM IS NULL OR B.BILCLAIM<>''Y'')');

        Params[0].AsDATE := FJobdate.edFDate.Date;
        Params[1].AsDATE := FJobdate.edDateTo.Date;
        Params[2].Asstring := Dm_Sv.QOthinvoi1.Fieldbyname('Locat').Asstring;
      End;
      Open ;
    end;
    //
    If Not(Dm_Sv.Query1.Bof and Dm_Sv.Query1.Eof) Then
    begin
      If FJobdate.RadioGroup1.Itemindex=0 Then
      With Dm_Sv.Query2 Do
      Begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:EDIT1 ');
        Params[0].asstring := FJobdate.Edit3.text;
        Open;
        If Not(Bof and Eof) Then
        Begin
          If Dm_Sv.Query2.FieldByName('Status').Asstring='W' Then
          SFMain.RaiseException('ยังไม่ปิด Job');

          Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring     := Dm_Sv.Query2.Fieldbyname('JOBNO').Asstring;
          Dm_Sv.QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query2.Fieldbyname('RECVDATE').AsDatetime;
          Dm_Sv.QOthinvoi1.FieldByName('STRNO').Asstring     := Dm_Sv.Query2.Fieldbyname('STRNO').Asstring;

          If XCusno<>'' Then
             Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
          Else
          If Dm_Sv.Query2.Fieldbyname('CUSCOD').Asstring<>Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring Then
          Begin
            MessageBeep(0);
            If MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่',mtconfirmation,[Mbyes,mbno],0)=MRyes Then
            Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query2.Fieldbyname('CUSCOD').Asstring;
          End;
        End;
      End;
      //
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.Query1.First;
      WHILE Not Dm_Sv.Query1.Eof Do
      begin
        If Dm_Sv.QOthtran1.State=Dsbrowse Then
        Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring   := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring    := Dm_Sv.Query1.Fieldbyname('CODE').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring   := Dm_Sv.Query1.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat      := Dm_Sv.Query1.Fieldbyname('FRT').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat     := Dm_Sv.Query1.Fieldbyname('REDU').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat   := Dm_Sv.Query1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat  := Dm_Sv.Query1.Fieldbyname('Price').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat  := Dm_Sv.Query1.Fieldbyname('NetPric').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CAMPNO').Asstring  := Dm_Sv.Query1.Fieldbyname('CAMPNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat  := Dm_Sv.Query1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring    := '2';//Dm_Sv.QOthinvoi1FLAG.Asstring;
        Dm_Sv.QOthtran1.post;
        Dm_Sv.Query1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end
    Else
    Begin
      If FJobdate.RadioGroup1.Itemindex=0 Then
      with Dm_Sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO= :XDT1 AND (CLAIM=''Y'') ');
        Params[0].Asstring := FJobdate.Edit3.text;
        Open;
        If Dm_Sv.Query1.Fieldbyname('Bilclaim').Asstring='Y' Then
        SFMain.RaiseException('รายการเคลม Job นี้มีการออกใบส่งของแล้ว');
      End;
      //
      SFMain.RaiseException('ไม่พบข้อมูลเคลม');
    End;

  End;
end;


procedure TSvIn_40.PrnBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFSpprn40,FSpprn40);
  FSpprn40.Label6.Caption := DBEdit2.Text;
  FSpprn40.Showmodal;
end;

procedure TSvIn_40.AddBtn2Click(Sender: TObject);
begin
  Application.CreateForm(TFJobdate,FJobdate);
  FJobdate.Opt:='DATE';
  if FJobdate.ShowModal = MrOk then
  Begin
    XCusno := FJobdate.Edit4.text;

    Dm_Sv.Qparttran1.UpdateOptions.RequestLive := False;
    with Dm_Sv.Qparttran1 do
    begin
      Close;
      Sql.Clear;
      If FJobdate.RadioGroup1.Itemindex=0 Then
      Begin
        If (FJobdate.Edit3.text='')  Then
        SFMain.RaiseException('ใส่ข้อมูลไม่ครบถ้วน');
        Sql.Add('SELECT * FROM PARTTRAN WHERE JOBNO= :XDT1 AND (CUSCOD LIKE :XCUS) AND (CLAIM=''Y'') '+
        'AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'')  ');
        Params[0].Asstring := FJobdate.Edit3.text;
        Params[1].Asstring := XCusno+'%';
      End
      Else
      Begin
        If (FJobdate.edFDate.text='') or (FJobdate.edDateto.Text='')  Then
        SFMain.RaiseException('ใส่ข้อมูลไม่ครบถ้วน');

        Sql.Add('SELECT A.JOBNO,A.RFINSHDT,B.LOCAT,B.PARTNO,B.QTY,B.UPRICE,B.REDU1,B.Avgcost,'+
        'B.TOTPRC,B.SERVCOD,B.SERTIME,B.CLAIM,B.BILCLAIM,B.CAMPNO FROM JOBORDER A,PARTTRAN B '+
        'WHERE (A.JOBNO=B.JOBNO) AND (A.RFINSHDT>= :XDT1 AND A.RFINSHDT<=:XDT2) AND '+
        'A.LOCAT=:XLOC AND '+
        '(B.CLAIM=''Y'') AND (B.BILCLAIM IS NULL OR B.BILCLAIM<>''Y'') ');

        Params[0].AsDATE := FJobdate.edFDate.Date;
        Params[1].AsDATE := FJobdate.edDateto.Date;
        Params[2].Asstring := Dm_Sv.QOthinvoi1.Fieldbyname('Locat').Asstring;
      End;

      Open ;
      If Bof and Eof Then
      SFMain.RaiseException('No found'+FJobdate.Edit3.text+' '+XCusno);
    end;
    //
    If Not(Dm_Sv.Qparttran1.Bof and Dm_Sv.Qparttran1.Eof) Then
    begin
      If FJobdate.RadioGroup1.Itemindex=0 Then
      With Dm_Sv.Query1 Do
      Begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:EDIT1 ');
        Params[0].asstring := FJobdate.Edit3.text;
        Open;
        If Not(Bof and Eof) Then
        Begin
          If Dm_Sv.Query1.FieldByName('Status').Asstring='W' Then
          SFMain.RaiseException('ยังไม่ปิด Job');

          Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring     := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
          Dm_Sv.QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
          Dm_Sv.QOthinvoi1.FieldByName('STRNO').Asstring     := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;

          If XCusno<>'' Then
             Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
          Else
          If Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring<>Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring Then
          Begin
            MessageBeep(0);
            If MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่',mtconfirmation,[Mbyes,mbno],0)=MRyes Then
            Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
          End;
        End;
      End;
      //
      Dm_Sv.QOthtran1.DisableControls;
      Dm_Sv.Qparttran1.First;
      WHILE Not Dm_Sv.Qparttran1.Eof Do
      begin
        If Dm_Sv.QOthtran1.State=Dsbrowse Then
        Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring   := Dm_Sv.Qparttran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring    := Dm_Sv.Qparttran1.Fieldbyname('PARTNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring   := Dm_Sv.QPartdes.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat      := Dm_Sv.Qparttran1.Fieldbyname('QTY').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UCOST').AsFloat    := Dm_Sv.Qparttran1.Fieldbyname('AVGCOST').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat   := Dm_Sv.Qparttran1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat     := Dm_Sv.Qparttran1.Fieldbyname('REDU1').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat  := (Dm_Sv.Qparttran1.Fieldbyname('QTY').Asfloat*Dm_Sv.Qparttran1.Fieldbyname('UPrice').Asfloat);
        Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat  := (Dm_Sv.Qparttran1.Fieldbyname('QTY').Asfloat*Dm_Sv.Qparttran1.Fieldbyname('Avgcost').Asfloat);
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat  := Dm_Sv.Qparttran1.Fieldbyname('TOTPRC').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Qparttran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CAMPNO').Asstring  := Dm_Sv.Qparttran1.Fieldbyname('CAMPNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat  := Dm_Sv.Qparttran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring    := '3';//Dm_Sv.QOthinvoi1FLAG.Asstring;
        Dm_Sv.QOthtran1.post;

        Dm_Sv.Qparttran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
      Dm_Sv.Qparttran1.UpdateOptions.RequestLive := True;
    end
    Else
    Begin
      Dm_Sv.Qparttran1.UpdateOptions.RequestLive := True;
      If FJobdate.RadioGroup1.Itemindex=0 Then
      with Dm_Sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM PARTTRAN WHERE JOBNO= :XDT1 AND (CLAIM=''Y'') ');
        Params[0].Asstring := FJobdate.Edit3.text;
        Open;
        If Dm_Sv.Query1.Fieldbyname('Bilclaim').Asstring='Y' Then
        SFMain.RaiseException('รายการเคลม Job นี้มีการออกใบส่งของแล้ว');
      End;
      //
      SFMain.RaiseException('ไม่พบข้อมูลเคลม');
    End;
  End;
end;

procedure TSvIn_40.AddBtn3Click(Sender: TObject);
begin
  Application.CreateForm(TFJobdate,FJobdate);
  FJobdate.Opt:='JOB';
  If FJobdate.ShowModal = MrOk then
  Begin
    XCusno := FJobdate.Edit4.text;

    With Dm_Sv.Query1 Do
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:EDIT1 ');
      Params[0].asstring := FJobdate.Edit3.text;
      Open;
      If Not(Bof and Eof) Then
      Begin
        If Dm_Sv.Query1.FieldByName('Status').Asstring='W' Then
        SFMain.RaiseException('ยังไม่ปิด Job');

        Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring     := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
        Dm_Sv.QOthinvoi1.FieldByName('STRNO').Asstring     := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;
        If XCusno<>'' Then
           Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
        Else
        If Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring<>Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring Then
        Begin
          MessageBeep(0);
          If MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่',mtconfirmation,[Mbyes,mbno],0)=MRyes Then
          Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
        End;
      End
      Else
      SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');
    End;
    //
    with Dm_Sv.QServtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO= :XDT1 AND CUSCOD LIKE :XCUS AND (CLAIM=''I'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
      Params[1].Asstring := XCusno+'%';
      Open ;
    end;

    If Not(Dm_Sv.QServtran1.Bof and Dm_Sv.QServtran1.Eof) Then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QServtran1.First;
      WHILE Not Dm_Sv.QServtran1.Eof Do
      begin
        If Dm_Sv.QOthtran1.State=Dsbrowse Then
        Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring   := Dm_Sv.QServtran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring    := Dm_Sv.QServtran1.Fieldbyname('CODE').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring   := Dm_Sv.QServtran1.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat      := Dm_Sv.QServtran1.Fieldbyname('FRT').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat     := Dm_Sv.QServtran1.Fieldbyname('REDU').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat   := Dm_Sv.QServtran1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat  := Dm_Sv.QServtran1.Fieldbyname('Price').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat  := Dm_Sv.QServtran1.Fieldbyname('NetPric').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QServtran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CAMPNO').Asstring  := Dm_Sv.QServtran1.Fieldbyname('CAMPNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat  := Dm_Sv.QServtran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring    := '2';//Dm_Sv.QOthinvoi1FLAG.Asstring;
        Dm_Sv.QOthtran1.post;

        Dm_Sv.QServtran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end;
    // ค่าอะไหล่
    with Dm_Sv.QParttran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PARTTRAN WHERE JOBNO= :XDT1 AND CUSCOD LIKE :XCUS AND (CLAIM=''I'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
      Params[1].Asstring := XCusno+'%';
      Open ;
    end;
    If Not(Dm_Sv.QParttran1.Bof and Dm_Sv.QParttran1.Eof) Then
    Begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QParttran1.First;
      WHILE Not Dm_Sv.QParttran1.Eof Do
      begin
        If Dm_Sv.QOthtran1.State=Dsbrowse Then
        Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring   := Dm_Sv.QParttran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring    := Dm_Sv.QParttran1.Fieldbyname('PARTNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring   := Dm_Sv.QPartdes.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat      := Dm_Sv.QParttran1.Fieldbyname('QTY').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat   := Dm_Sv.QParttran1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat  :=(Dm_Sv.QParttran1.Fieldbyname('UPrice').Asfloat*
                                                           Dm_Sv.QParttran1.Fieldbyname('QTY').Asfloat);
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat  := Dm_Sv.QParttran1.Fieldbyname('TotPrc').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat  := Dm_Sv.QParttran1.FieldByName('AVGCOST').AsFloat  *
                                                           Dm_Sv.QParttran1.FieldByName('QTY').AsFloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QParttran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CAMPNO').Asstring  := Dm_Sv.QParttran1.Fieldbyname('CAMPNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat  := Dm_Sv.QParttran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring    := '3';//Dm_Sv.QOthinvoi1FLAG.Asstring;
        Dm_Sv.QOthtran1.post;
        Dm_Sv.QParttran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    End;
    // งานสี
    with Dm_Sv.QColrtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO=:XJOB AND CUSCOD LIKE :XCUS AND (CLAIM=''I'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
      Params[1].Asstring := XCusno+'%';
      Open ;
    end;
    If Not(Dm_Sv.QColrtran1.Bof and Dm_Sv.QColrtran1.Eof) Then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QColrtran1.First;
      WHILE Not Dm_Sv.QColrtran1.Eof Do
      begin
        If Dm_Sv.QOthtran1.State=Dsbrowse Then
        Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring   := Dm_Sv.QColrtran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring    := Dm_Sv.QColrtran1.Fieldbyname('CODE').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring   := Dm_Sv.QColrtran1.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat      := 1;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat   := Dm_Sv.QColrtran1.Fieldbyname('Price').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat  := Dm_Sv.QColrtran1.Fieldbyname('Price').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Redu').AsFloat   := Dm_Sv.QColrtran1.Fieldbyname('Redu').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat  := Dm_Sv.QColrtran1.Fieldbyname('NetPric').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QColrtran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat  := Dm_Sv.QColrtran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring    := '4';//Dm_Sv.QOthinvoi1FLAG.Asstring;
        Dm_Sv.QOthtran1.post;
        Dm_Sv.QColrtran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end;
    //--งานนอก---
    with Dm_Sv.QOuttran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO=:XJOB AND CUSCOD LIKE :XCUS AND (CLAIM=''I'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
      Params[1].Asstring := XCusno+'%';
      Open ;
    end;
    If Not(Dm_Sv.QOuttran1.Bof and Dm_Sv.QOuttran1.Eof) Then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QOuttran1.First;
      WHILE Not Dm_Sv.QOuttran1.Eof Do
      begin
        If Dm_Sv.QOthtran1.State=Dsbrowse Then
        Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring   := Dm_Sv.QOuttran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring    := Dm_Sv.QOuttran1.Fieldbyname('CODE').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring   := Dm_Sv.QOuttran1.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat      := Dm_Sv.QOuttran1.Fieldbyname('Qty').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat   := Dm_Sv.QOuttran1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat  := Dm_Sv.QOuttran1.Fieldbyname('TOTPRIC').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat  := Dm_Sv.QOuttran1.Fieldbyname('TOTCOST').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat  := Dm_Sv.QOuttran1.Fieldbyname('NETPRIC').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOuttran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat  := Dm_Sv.QOuttran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring    := '5';//Dm_Sv.QOthinvoi1FLAG.Asstring;
        Dm_Sv.QOthtran1.post;
        Dm_Sv.QOuttran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end
  End;
end;

procedure TSvIn_40.PrnBtn2Click(Sender: TObject);
begin
  Application.CreateForm(TFSpprn30,FSpprn30);
  FSpprn30.Label1.caption := Dm_Sv.QOthinvoi1.FieldByName('TAXNO').Asstring;
  FSpprn30.ShowModal;
end;



procedure TSvIn_40.SpeedButton3Click(Sender: TObject);
begin
    If DBCheckBox1.Checked Then
     Dm_Sv.Runtaxothinv;
end;

procedure TSvIn_40.AddBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TFJobdate,FJobdate);
  FJobdate.Opt:='JOB';
  if FJobdate.ShowModal = MrOk then
  Begin
    XCusno := FJobdate.Edit4.text;
    With Dm_Sv.Query1 Do
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:EDIT1 ');
      Params[0].asstring := FJobdate.Edit3.text;
      Open;
      If Not(Bof and Eof) Then
      Begin
        If Dm_Sv.Query1.FieldByName('Status').Asstring='W' Then
        SFMain.RaiseException('ยังไม่ปิด Job');

        Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring     := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
        Dm_Sv.QOthinvoi1.FieldByName('STRNO').Asstring     := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;

        If XCusno<>'' Then
          Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
        Else
        If Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring<>Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring Then
        Begin
          MessageBeep(0);
          If MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่',mtconfirmation,[Mbyes,mbno],0)=MRyes Then
          Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
        End;
      End
      Else
      SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');
    end;
    //
    with Dm_Sv.QColrtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO=:XJOB AND CUSCOD LIKE :XCUS AND (CLAIM=''Y'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.Query1.Fieldbyname('Jobno').Asstring;
      Params[1].Asstring := XCusno+'%';
      Open ;
    end;
    If Not(Dm_Sv.QColrtran1.Bof and Dm_Sv.QColrtran1.Eof) Then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QColrtran1.First;
      WHILE Not Dm_Sv.QColrtran1.Eof Do
      begin
        If Dm_Sv.QOthtran1.State=Dsbrowse Then
        Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring   := Dm_Sv.QColrtran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring    := Dm_Sv.QColrtran1.Fieldbyname('CODE').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring   := Dm_Sv.QColrtran1.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat      := 1;
        Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat     := Dm_Sv.QColrtran1.Fieldbyname('REDU').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat   := Dm_Sv.QColrtran1.Fieldbyname('Price').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat  := Dm_Sv.QColrtran1.Fieldbyname('Price').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat  := Dm_Sv.QColrtran1.Fieldbyname('NetPric').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QColrtran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat  := Dm_Sv.QColrtran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring    := '4';//Dm_Sv.QOthinvoi1FLAG.Asstring;
        Dm_Sv.QOthtran1.post;

        Dm_Sv.QColrtran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end
    Else
    SFMain.RaiseException('ไม่มีข้อมูล');
  End;
end;


procedure TSvIn_40.AddBtn5Click(Sender: TObject);
begin
  Application.CreateForm(TFJobdate,FJobdate);
  FJobdate.Opt:='JOB';
  if FJobdate.ShowModal = MrOk then
  Begin
    XCusno := FJobdate.Edit4.text;
    With Dm_Sv.Query1 Do
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:EDIT1 ');
      Params[0].asstring := FJobdate.Edit3.text;
      Open;
      If Not(Bof and Eof) Then
      Begin
        If Dm_Sv.Query1.FieldByName('Status').Asstring='W' Then
        SFMain.RaiseException('ยังไม่ปิด Job');

        Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring     := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
        Dm_Sv.QOthinvoi1.FieldByName('STRNO').Asstring     := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;

        If XCusno<>'' Then
          Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
        Else
        If Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring<>Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring Then
        Begin
          MessageBeep(0);
          If MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่',mtconfirmation,[Mbyes,mbno],0)=MRyes Then
          Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
        End;
      End
      Else
      SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');
    end;
    //
    with Dm_Sv.QOuttran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO=:XJOB AND CUSCOD LIKE :XCUS AND (CLAIM=''Y'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.Query1.Fieldbyname('Jobno').Asstring;
      Params[1].Asstring := XCusno+'%';
      Open ;
    end;
    If Not(Dm_Sv.QOuttran1.Bof and Dm_Sv.QOuttran1.Eof) Then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QOuttran1.First;
      WHILE Not Dm_Sv.QOuttran1.Eof Do
      begin
        If Dm_Sv.QOthtran1.State=Dsbrowse Then
        Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring   := Dm_Sv.QOuttran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring    := Dm_Sv.QOuttran1.Fieldbyname('CODE').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring   := Dm_Sv.QOuttran1.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat      := Dm_Sv.QOuttran1.Fieldbyname('Qty').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat     := Dm_Sv.QOuttran1.Fieldbyname('REDU').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat   := Dm_Sv.QOuttran1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat  := Dm_Sv.QOuttran1.Fieldbyname('TOTPRIC').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat  := Dm_Sv.QOuttran1.Fieldbyname('TOTCOST').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat  := Dm_Sv.QOuttran1.Fieldbyname('NETPRIC').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOuttran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat  := Dm_Sv.QOuttran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring    := '5';//Dm_Sv.QOthinvoi1FLAG.Asstring;
        Dm_Sv.QOthtran1.post;
        Dm_Sv.QOuttran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end
    Else
    SFMain.RaiseException('ไม่มีข้อมูล');
  End;
end;

procedure TSvIn_40.DBRadioGroup2Click(Sender: TObject);
begin
  DBCheckBox1.Enabled := (DBRadioGroup2.Itemindex=1) AND (SavBtn.Enabled=True);
  DBCheckBox1.Checked := DBRadioGroup2.Itemindex=1;
  PrnBtn2.Enabled :=DBRadioGroup2.Itemindex<>2;
  SpeedButton3.Enabled  := (DBRadioGroup2.Itemindex=1) and (Dm_Sv.QOthinvoi1.FieldByName('TAXNO').Asstring='');

  DBEdit5Change(Sender);

  If Dm_SV.QOthinvoi1.State in Dseditmodes Then
  Begin
    If DBCheckBox1.Checked Then
     Dm_SV.QOthinvoi1ISSUTAX.Asstring  :='Y'
    Else
     Dm_SV.QOthinvoi1ISSUTAX.Asstring  :='N';
  End;
end;


procedure TSvIn_40.FldCombo1BtnClick(Sender: TObject);
begin
  If Not(Dm_Sv.QOthinvoi1.State In Dseditmodes) Then  Exit;

  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalLocat=Mrok Then
  begin
    Dm_Sv.QOthinvoi1.FieldByName('LOCAT').Asstring := fSrcDlg1.KeyNo;
    Edit2.text := fSrcDlg1.qrFindDat.Fieldbyname('LOCATNAM').Asstring;
  End;
end;


procedure TSvIn_40.FldCombo3BtnClick(Sender: TObject);
begin
  If Not(Dm_Sv.QOthinvoi1.State In Dseditmodes) Then  Exit;

  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalAR=Mrok Then
  Begin
    Dm_Sv.QOthinvoi1.Fieldbyname('Cuscod').Asstring := fSrcDlg1.KeyNo;
  End;
end;

procedure TSvIn_40.DBRadioGroup1Click(Sender: TObject);
begin
  DBRadioGroup4.Enabled := DBRadioGroup1.Itemindex<>0;
end;

procedure TSvIn_40.DBRadioGroup4Click(Sender: TObject);
begin
  If DBRadioGroup4.Itemindex=1 Then
  begin
    Dm_Sv.QOthinvoi1.FieldByName('TAXDT').AsDateTime:= Now;
    DBRadioGroup2.Itemindex :=1;
    DBCheckBox1.Enabled := False;
  end;
  DBRadioGroup2.Enabled := DBRadioGroup4.Itemindex =0;

end;


procedure TSvIn_40.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvIn_40.FldCombo1Change(Sender: TObject);
begin
      with Query1 do
      Begin
        sql.clear;
        close;
        Sql.add('SELECT * FROM LOCATMST WHERE LOCATCOD=:Xloc');
        params[0].Asstring := DBEdit1.text;
        open;
      End;
      Edit2.text := Query1.Fieldbyname('LOCATNAM').Asstring;
end;

procedure TSvIn_40.DBkbd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        case key of
        Vk_F7 : EditBtnClick(Sender);
        Vk_F8 : DelBtnClick(Sender);
        Vk_F2 : SaveBtnClick(Sender);
        Vk_F5 : InsBtnClick(Sender);
        end;
end;

procedure TSvIn_40.DBGrid1EditButtonClick(Sender: TObject);
begin
  If DbGrid1.SelectedField.FieldName = 'JOBNO' then
  Begin
    Application.CreateForm(THelpjob,Helpjob);
    HelpJob.State := 1;
    if Helpjob.ShowModal = MrOk then
    Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring  := Helpjob.QHlp.FieldByName('JOBNO').Asstring;
  End;

  If DbGrid1.SelectedField.FieldName = 'CODE' then
  Begin
     Application.Createform(TfSrcDlg1,fSrcDlg1);
     If fSrcDlg1.ShowModalSvpart=Mrok Then
     begin
       Dm_Sv.QOthtran1.FieldByName('CODE').Asstring  := fSrcDlg1.qrFindDat.FieldByName('CODE').Asstring;
     End;
  end;

  If DbGrid1.SelectedField.FieldName = 'SERVCOD' then
  begin
    Application.Createform(TfSrcDlg1,fSrcDlg1);
    If fSrcDlg1.ShowModalOffic=Mrok Then
    begin
       Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := fSrcDlg1.Keyno;
    End;
  End;
end;

procedure TSvIn_40.FbtLocatClick(Sender: TObject);
begin
  If Not(Dm_Sv.QOthinvoi1.State In Dseditmodes) Then  Exit;

  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalLocat=Mrok Then
  begin
    Dm_Sv.QOthinvoi1.FieldByName('LOCAT').Asstring := fSrcDlg1.KeyNo;
    Edit2.text := fSrcDlg1.qrFindDat.Fieldbyname('LOCATNAM').Asstring;
  End;
end;

procedure TSvIn_40.DBEdit1Change(Sender: TObject);
begin
      with Query1 do
      Begin
        sql.clear;
        close;
        Sql.add('SELECT * FROM LOCATMST WHERE LOCATCOD=:Xloc');
        params[0].Asstring := DBEdit1.text;
        open;
      End;
      Edit2.text := Query1.Fieldbyname('LOCATNAM').Asstring;
end;

procedure TSvIn_40.FbtCuscodClick(Sender: TObject);
begin
  If Not(Dm_Sv.QOthinvoi1.State In Dseditmodes) Then  Exit;

  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalAR=Mrok Then
  Begin
    Dm_Sv.QOthinvoi1.Fieldbyname('Cuscod').Asstring := fSrcDlg1.KeyNo;
  End;
end;

procedure TSvIn_40.DBEdit5Change(Sender: TObject);
begin
  with Dm_Sv.Query3 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT Cuscod,Snam,Name1,Name2,Credit FROM ARMAST WHERE CUSCOD= :XCUSCOD');
    Params[0].Asstring := DBEdit5.Text;
    Open;
    Edit1.Text := Dm_Sv.Query3.Fieldbyname('SNam').Asstring+' '+Dm_Sv.Query3.Fieldbyname('Name1').Asstring+' '+Dm_Sv.Query3.Fieldbyname('Name2').Asstring;
  end;
end;

procedure TSvIn_40.DBMemo1Click(Sender: TObject);
begin
    SvIn_40.KeyPreview := False;
end;

procedure TSvIn_40.DBMemo1Exit(Sender: TObject);
begin
   SvIn_40.KeyPreview := True;
end;

ENd.
