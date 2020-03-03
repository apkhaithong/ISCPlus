unit Svin50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, DB, ExtCtrls, Grids, DBGrids, Mask, DBCtrls,
  Dbkbd, ToolWin, RzSpnEdt, RzDBGrid;

type
  TSvIn_50 = class(TForm)
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    DBEdit19: TDBEdit;
    Label32: TLabel;
    DBEdit29: TDBEdit;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    DBEdit8: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    Label9: TLabel;
    DBEdit33: TDBEdit;
    Label10: TLabel;
    DBEdit34: TDBEdit;
    Label11: TLabel;
    Label34: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Label35: TLabel;
    TabSheet6: TTabSheet;
    Label36: TLabel;
    DBEdit38: TDBEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit39: TDBEdit;
    DBEdit41: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label22: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit28: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit10: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    TabSheet7: TTabSheet;
    Label46: TLabel;
    SpeedButton8: TSpeedButton;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label47: TLabel;
    DBEdit17: TDBEdit;
    Label48: TLabel;
    DBEdit40: TDBEdit;
    DBkbd1: TDBkbd;
    TabSheet3: TTabSheet;
    Label43: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label51: TLabel;
    DBEdit42: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit11: TDBEdit;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit43: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBEdit55: TDBEdit;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    DBEdit50: TDBEdit;
    Label28: TLabel;
    DBEdit51: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    Label56: TLabel;
    DBEdit56: TDBEdit;
    Label57: TLabel;
    DBEdit57: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    Label41: TLabel;
    Label44: TLabel;
    DBEdit54: TDBEdit;
    Label58: TLabel;
    DBEdit59: TDBEdit;
    Label59: TLabel;
    DBEdit60: TDBEdit;
    Label60: TLabel;
    DBEdit61: TDBEdit;
    Label54: TLabel;
    Label61: TLabel;
    DBEdit62: TDBEdit;
    Label55: TLabel;
    Edit4: TEdit;
    ToolBar1: TToolBar;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    CloseBtn: TToolButton;
    ToolButton6: TToolButton;
    ToolButton5: TToolButton;
    Bevel1: TBevel;
    Bevel4: TBevel;
    DBGrid_Sv: TRzDBGrid;
    SvInBtn: TRzRapidFireButton;
    SvDlBtn: TRzRapidFireButton;
    AutoBtn: TRzRapidFireButton;
    DBGrid_Pt: TRzDBGrid;
    SpeedButton9: TRzRapidFireButton;
    DBGrid_OL: TRzDBGrid;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    procedure SaveBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SvInBtnClick(Sender: TObject);
    procedure DBGrid_SvDblClick(Sender: TObject);
    procedure DBGrid_SvColExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure SvDlBtnClick(Sender: TObject);
    procedure OLCnBtnClick(Sender: TObject);
    procedure OtCnBtnClick(Sender: TObject);
    procedure ClCnBtnClick(Sender: TObject);
    procedure AutoBtnClick(Sender: TObject);
    procedure DBGrid_PtDblClick(Sender: TObject);
    procedure DBGrid_PtColExit(Sender: TObject);
    procedure DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBCheckBox2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid_OLColExit(Sender: TObject);
    procedure DBGrid_OLDblClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBGrid_SvEditButtonClick(Sender: TObject);
    procedure DBGrid_PtEditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvIn_50: TSvIn_50;
  XOFFICER :String;

implementation

uses DmSv,Pickdate,SvHlp20,svcaltim,Hlpjob,Prnjob10,
     Srchdlg1,prnprt10;

{$R *.DFM}

procedure TSvIn_50.SaveBtnClick(Sender: TObject);
begin
  Dm_Sv.QJoborder2.Post;
end;

procedure TSvIn_50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Sv.QJoborder2.Close;
  Dm_Sv.QServtran1.close;
  Dm_Sv.QOiltran1.close ;
  Dm_Sv.QOuttran1.close ;
  Dm_Sv.QColrtran1.close;
  Dm_Sv.QParttran1.close;
  Dm_Sv.Qsvmast.close;
  Dm_Sv.QModelmst.Close;
  
  Action := Cafree;
end;

procedure TSvIn_50.FormKeyPress(Sender: TObject; var Key: Char);
begin
{ If (Key = #13) then
  If not (ActiveControl is TDbGrid )   then
   Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
   End
  Else If (ActiveControl is TDbGrid ) Then
   With TDBGrid(ActiveControl) Do
    If Selectedindex < (FieldCount-1) Then
      Selectedindex := Selectedindex+1
    else
     begin
      Selectedindex := 0;
      if PageControl1.ActivePage = Tabsheet2 then
       begin
        If Dm_Sv.QServtran1.State = Dsedit   Then
         Dm_Sv.QServtran1.Next;
        If Dm_Sv.QServtran1.State = DsInsert Then
         Dm_Sv.QServtran1.Append;
      end;
      if PageControl1.ActivePage = Tabsheet3 then
       begin
        If Dm_Sv.QOiltran1.State  = Dsedit   Then
         Dm_Sv.QOiltran1.Next;
        If Dm_Sv.QOiltran1.State  = DsInsert Then
         Dm_Sv.QOiltran1.Append;
       end;
      if PageControl1.ActivePage = Tabsheet4 then
       begin
        If Dm_Sv.QOuttran1.State  = Dsedit   Then
         Dm_Sv.QOuttran1.Next;
        If Dm_Sv.QOuttran1.State  = DsInsert Then
         Dm_Sv.QOuttran1.Append;
       end;
      if PageControl1.ActivePage = Tabsheet5 then
       begin
        If Dm_Sv.QColrtran1.State = Dsedit   Then
         Dm_Sv.QColrtran1.Next;
        If Dm_Sv.QColrtran1.State = DsInsert Then
         Dm_Sv.QColrtran1.Append;
       end;
     end; }
end;

procedure TSvIn_50.SvInBtnClick(Sender: TObject);
begin
  Dm_Sv.QServtran1.Append;
end;

procedure TSvIn_50.DBGrid_SvDblClick(Sender: TObject);
begin
if DBGrid_Sv.Readonly = False then
  begin
   If DbGrid_Sv.SelectedField.FieldName = 'CODE' then
   begin
     If Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring = '' Then
     SFMain.RaiseException('ยังไม่บันทึกหมายเลข JOB');
     Application.Createform(TSearchDlg1,SearchDlg1);
     If SearchDlg1.ShowModalTabsv=Mrok Then
     begin
       Dm_Sv.QServtran1.FieldByName('CODE').Asstring := SearchDlg1.Hquery1.FieldByName('SVCODE').Asstring;
       Dm_Sv.QServtran1.FieldByName('DESC1').Asstring := SearchDlg1.Hquery1.FieldByName('DESC').Asstring;
       Dm_Sv.QServtran1.FieldByName('FRT').AsFloat := SearchDlg1.Hquery1.FieldByName('FRT').AsFloat;
     End;
   end;

   If DbGrid_Sv.SelectedField.FieldName = 'SERVCOD' then
   begin
     Application.Createform(TSearchDlg1,SearchDlg1);
     If SearchDlg1.ShowModalOffic=Mrok Then
     begin
       with Dm_Sv.Query1 do
       begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD = :XCODE ');
         Params[0].Asstring := SearchDlg1.KeyNo;
         Open;
       end;
       If Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
       SFMain.RaiseException('ไม่มีข้อมูล');
       Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('OFFICCOD').Asstring;
     End;
   End;
  end;

  If DbGrid_Sv.SelectedField.FieldName = 'SERTIME' then
  begin
    Application.CreateForm(TFsvtime,Fsvtime);
    Fsvtime.Jobno1  := dm_sv.QServtran1.FieldByName('JOBNO').Asstring;
    Fsvtime.Servcod1:= dm_sv.QServtran1.FieldByName('Servcod').Asstring;
    Fsvtime.Code1   := dm_sv.QServtran1.FieldByName('Code').Asstring;
    Fsvtime.Flag1   := '1';
    Fsvtime.SvTime.Close;
    Fsvtime.SvTime.MasterSource := Dm_sv.SoServtran1;

    if Fsvtime.ShowModal = MrOk then
    begin
      with Dm_sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT Sum(UseTime) As UseTime FROM SVTIME WHERE JOBNO= :XJOB AND SERVCOD= :XSVCOD AND CODE=:Xcode '+
        ' AND FLAG =:Xflag');
        Params[0].Asstring := dm_sv.QServtran1.FieldByName('JOBNO').Asstring;
        Params[1].Asstring := dm_sv.QServtran1.FieldByName('Servcod').Asstring;
        Params[2].Asstring := dm_sv.QServtran1.FieldByName('Code').Asstring;
        Params[3].Asstring := '1';
        Open;
      end;
      dm_sv.QServtran1.FieldByName('SERTIME').AsFloat:=Dm_sv.Query1.FieldByName('Usetime').Asfloat;
    end;
  end;

end;

procedure TSvIn_50.DBGrid_SvColExit(Sender: TObject);
Var Xsvrt1,Xsvrt2,amt:Double;
begin
  If Not(Dm_Sv.Condpay.Active) Then Dm_Sv.Condpay.Open;
  If Dm_Sv.Condpay.Fieldbyname('Multifr').Asstring='Y' Then
  Begin
    Xsvrt1 := Dm_Sv.QJoborder2.FieldByName('FRRATE').AsFloat;
  end
  Else
  begin
    Xsvrt1 := Dm_Sv.Condpay.Fieldbyname('Svrate').Asfloat;
    Xsvrt2 := Dm_Sv.Condpay.Fieldbyname('Svrate2').Asfloat;
  End;

  If Not(Dm_Sv.QServtran1.State In DsEditmodes) Then Dm_Sv.QServtran1.Edit;
  If DBGrid_Sv.SelectedField.FieldName = 'CODE' Then
  begin
    If Dm_Sv.QServtran1.FieldByName('CODE').Asstring = ''  Then
    SFMain.RaiseException('ยังไม่บันทึก  รหัสค่าบริการ  ') ;

    with Dm_Sv.QTabserv do
    begin
      Close;
      Sql.Clear;
      If Dm_Sv.QServtran1.FieldByName('MDLCOD').Asstring<>'' Then
      Begin
        Sql.Add('SELECT * FROM TABSERV WHERE SVCODE= :XCODE AND MDLCOD=:XMD ');
        Params[0].Asstring := Dm_Sv.QServtran1.FieldByName('CODE').Asstring;
        Params[1].Asstring := Dm_Sv.QServtran1.FieldByName('MDLCOD').Asstring;
      End
      Else
      Begin
        Sql.Add('SELECT * FROM TABSERV WHERE SVCODE= :XCODE ');
        Params[0].Asstring := Dm_Sv.QServtran1.FieldByName('CODE').Asstring;
      End;
      Open;
    end;
    If Not(Dm_Sv.QTabserv.Bof and Dm_Sv.QTabserv.eof) then
    begin
      If Dm_Sv.QServtran1.State = DsInsert Then
      Begin
        Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat  := Xsvrt1;
        Dm_Sv.QServtran1.FieldByName('Desc1').Asstring  := Dm_Sv.QTabserv.FieldByName('DESC').Asstring;
        Dm_Sv.QServtran1.FieldByName('FRT').AsFloat     := Dm_Sv.QTabserv.FieldByName('FRT').AsFloat;
      End;
    end;

    If XOFFICER<>'' Then
       Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring :=XOFFICER
    Else
    If Dm_Sv.QServtran1.State = DsInsert Then
       Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('RECVCOD').Asstring;
    //
    If Dm_Sv.QServtran1.State = DsInsert Then
    Begin
      Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat    := Xsvrt1;

      If (Dm_Sv.QTabserv.Bof and Dm_Sv.QTabserv.Eof ) Or (Dm_Sv.QTabserv.Fieldbyname('Status').asstring<>'A') Then
         Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat := Dm_Sv.QServtran1.FieldByName('FRT').AsFloat*Dm_Sv.QServtran1.FieldByName('Uprice').AsFloat
      Else
      If Dm_Sv.QTabserv.Fieldbyname('Status').asstring='A' Then
      Begin
        Dm_Sv.QServtran1.FieldByName('FRT').AsFloat    := 1;
        Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QTabserv.FieldByName('SVPRIC').AsFloat;
      End;
    End;
  end;
  //
  If  (DBGrid_Sv.SelectedField.FieldName = 'FRT')   OR
      (DBGrid_Sv.SelectedField.FieldName = 'UPRICE') OR
      (DBGrid_Sv.SelectedField.FieldName = 'REDU')  OR
      (DBGrid_Sv.SelectedField.FieldName = 'DISCAMT') Then
  begin
    Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat := Dm_Sv.QServtran1.FieldByName('FRT').AsFloat*Dm_Sv.QServtran1.FieldByName('Uprice').AsFloat;
    Amt := Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat*(1-Dm_Sv.QServtran1.FieldByName('REDU').AsFloat/100) ;
    Dm_Sv.QServtran1.FieldByName('NETPRIC').AsFloat := StrTofloat(FloattostrF((Amt-Dm_Sv.QServtran1.FieldByName('Discamt').AsFloat),ffFixed,15,2));
  End;


  If DBGrid_Sv.SelectedField.FieldName = 'SERVCOD' Then
  begin
   with Dm_Sv.QOfficer do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD= :XCODE  ');
     Params[0].Asstring := Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring;
     Open;
    end;
   if Dm_Sv.QOfficer.Bof and Dm_Sv.QOfficer.eof then
     SFMain.RaiseException('ไม่มีรหัสพนักงานนี้ในแฟ้มข้อมูล');
   If Not(Dm_Sv.QServtran1.State In DsEditmodes) Then Dm_Sv.QServtran1.Edit;
   Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOfficer.FieldByName('OFFICCOD').Asstring;

   XOFFICER := Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring;
  end;
end;


procedure TSvIn_50.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage :=TabSheet1;
  Dm_sv.Condpay.Open;

  with Dm_Sv.QJoborder2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNO ');
    Params[0].Asstring := '' ;
    Open ;
  end;

end;

procedure TSvIn_50.CancBtnClick(Sender: TObject);
begin
 if Dm_Sv.QJoborder2.Active then
    Dm_Sv.QJoborder2.Cancel;
 if Dm_Sv.QSvmast.Active then
    Dm_Sv.QSvmast.Close;

 with Dm_Sv.QJoborder2 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM JOBORDER WHERE  JOBNO= :XNO ');
   Params[0].Asstring := ''  ;
   Open;
  end;
 with Dm_Sv.QServtran1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM SERVTRAN WHERE  JOBNO= :XNO ');
   Params[0].Asstring :='';
   Open;
  end;
 with Dm_Sv.QOiltran1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM PARTTRAN WHERE  JOBNO= :XNO ');
   Params[0].Asstring := '';
   Open;
  end;
 with Dm_Sv.QOuttran1  do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO = :XNO ');
   Params[0].Asstring := '' ;
   Open ;
  end;
 with Dm_Sv.QColrtran1  do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO = :XNO ');
   Params[0].Asstring := '' ;
   Open ;
  end;
 With Dm_Sv.QParttran1 Do
   begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO');
    Params[0].AsString := '';
    Open;
   end;

   with Dm_Sv.QModelmst do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM MODELMST WHERE MDLCOD= :XMDL  ');
     Params[0].Asstring := '';
     Open;
   end;

end;

procedure TSvIn_50.DataSource1StateChange(Sender: TObject);
Var N:word;
begin
  SavBtn.Enabled  := (DataSource1.State in DsEditmodes)and
                     ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  CancBtn.Enabled := DataSource1.State in DsEditmodes;
  CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
  Enqbtn.Enabled  := (DataSource1.State=Dsbrowse);
  //
  If DataSource1.Dataset.State = Dsbrowse Then
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TDBEdit)and (TDBEdit(Components[n]).Tag=0)  Then
        begin
          TDBEdit(Components[n]).Readonly := True;
          TDBEdit(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TDBGrid)and (TDBGrid(Components[n]).Tag=0)  Then
        begin
          TDBGrid(Components[n]).Readonly := True;
          TDBGrid(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TDBCheckBox)and (TDBCheckBox(Components[n]).Tag=0)  Then
        begin
          TDBCheckBox(Components[n]).Enabled := False;
        end;

      end;
    End
    Else
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TDBEdit)and (TDBEdit(Components[n]).Tag=0)  Then
        begin
          TDBEdit(Components[n]).Readonly := False;
          TDBEdit(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TDBGrid)and (TDBGrid(Components[n]).Tag=0)  Then
        begin
          TDBGrid(Components[n]).Readonly := False;
          TDBGrid(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TDBCheckBox)and (TDBCheckBox(Components[n]).Tag=0)  Then
        begin
          TDBCheckBox(Components[n]).Enabled := True;
        end;

      end;
    End;
  
end;

procedure TSvIn_50.EditBtnClick(Sender: TObject);
begin
 Application.CreateForm(THelpjob,Helpjob);
 HelpJob.State := 1;
 if HelpJob.ShowModal = MrOk then
  begin
   with Dm_Sv.QJoborder2 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNO ');
     Params[0].Asstring := Helpjob.QHlp.FieldByName('JOBNO').Asstring ;
     If Not Dm_Sv.QJoborder2.Prepared Then Dm_Sv.QJoborder2.Prepare;
     Open ;
     Edit;
    end;
   if Dm_Sv.QJOborder2.Bof and Dm_Sv.QJOborder2.eof then
    SFMain.RaiseException('ไม่มีข้มมูล ');
   If Dm_Sv.QJoborder2.FieldByName('Status').Asstring='R' Then
   SFMain.RaiseException('ลูกค้ารับรถไปแล้ว');

   If Dm_Sv.QJoborder2.FieldByName('Status').Asstring='W' Then Edit4.Text :='อยู่ระหว่างการซ่อม';
   If Dm_Sv.QJoborder2.FieldByName('Status').Asstring='F' Then Edit4.Text :='ซ่อมเสร็จแล้วรอลูกค้ามารับ';


   with Dm_Sv.QSvmast do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM View_SVMAST WHERE STRNO= :XSTRNO  ');
     Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('STRNO').Asstring;
     If Not Dm_Sv.QSvmast.Prepared Then Dm_Sv.QSvmast.Prepare;
     Open;
   end;
   
    if Dm_Sv.QSvmast.Bof and Dm_Sv.QSvmast.eof then
    SFMain.RaiseException('ไม่มีขอ้มูล.ในแฟ้มประวัติรถ');

   with Dm_Sv.QServtran1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = :XNO ');
     Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring ;
     If Not Dm_Sv.QServtran1.Prepared Then Dm_Sv.QServtran1.Prepare;
     Open ;
    end;

   With Dm_Sv.QParttran1 Do
   begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO AND GROUP1<>''OL'' ');
    Params[0].AsString := Dm_Sv.QJOborder2.FieldByName('JOBNO').Asstring;
    If Not Dm_Sv.QParttran1.Prepared Then Dm_Sv.QParttran1.Prepare;
    Open;
   end;
   //
   with Dm_Sv.QOiltran1 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO AND GROUP1=''OL'' ');
    Params[0].AsString := Dm_Sv.QJOborder2.FieldByName('JOBNO').Asstring;
    If Not Dm_Sv.QOiltran1.Prepared Then Dm_Sv.QOiltran1.Prepare;
    Open;
   end;

  end;
end;

procedure TSvIn_50.BitBtn6Click(Sender: TObject);
Var  XPric  : Double;
begin
 if Dm_Sv.QOuttran1.Active then
  begin
   XPric := Dm_Sv.QOuttran1.FieldByName('NETPRIC').AsFloat;
   Dm_Sv.QJoborder2.FieldByName('OUTAMT').AsFloat := Dm_Sv.QJoborder2.FieldByName('OUTAMT').AsFloat - XPric ;

  end;
end;

procedure TSvIn_50.BitBtn8Click(Sender: TObject);
Var  XPric  : Double;
begin
 if Dm_Sv.QColrtran1.Active then
  begin
   XPric := Dm_Sv.QColrtran1.FieldByName('NETPRIC').AsFloat;
   Dm_Sv.QJoborder2.FieldByName('COLRAMT').AsFloat := Dm_Sv.QJoborder2.FieldByName('COLRAMT').AsFloat - XPric ;
   Dm_Sv.QColrtran1.Delete;
  end;
end;

procedure TSvIn_50.PageControl1Enter(Sender: TObject);
begin
 SvIn_50.OnkeyDown  := nil;
 SvIn_50.OnkeyPress := nil;
end;

procedure TSvIn_50.DBGrid3Enter(Sender: TObject);
begin
 SvIn_50.OnkeyDown  := nil;
 SvIn_50.OnkeyPress := nil;
end;

procedure TSvIn_50.SvDlBtnClick(Sender: TObject);
begin
 if MessageDlg(' แน่ใจหรือไม่ที่จะยกเลิกรายการค่าบิรการนี้ ',mtInformation, [mbYes, mbNo], 0) = mrYes then
  Dm_Sv.QServtran1.delete;
end;

procedure TSvIn_50.OLCnBtnClick(Sender: TObject);
begin
 Dm_Sv.QJoborder2.FieldByName('SERVAMT').AsFloat := Dm_Sv.QJoborder2.FieldByName('OILAMT').AsFloat
                                                 - Dm_Sv.QOiltran1.FieldByName('NETPRIC').AsFloat;
 if Dm_Sv.QOiltran1.Active then Dm_Sv.QOiltran1.CancelUpdates;
end;

procedure TSvIn_50.OtCnBtnClick(Sender: TObject);
begin
 Dm_Sv.QJoborder2.FieldByName('OUTJAMT').AsFloat := Dm_Sv.QJoborder2.FieldByName('OUTJAMT').AsFloat
                                                 - Dm_Sv.QOuttran1.FieldByName('NETPRIC').AsFloat;
 if Dm_Sv.QOuttran1.Active then Dm_Sv.QOuttran1.CancelUpdates;
end;

procedure TSvIn_50.ClCnBtnClick(Sender: TObject);
begin
 Dm_Sv.QJoborder2.FieldByName('COLRAMT').AsFloat := Dm_Sv.QJoborder2.FieldByName('COLORAMT').AsFloat
                                                 - Dm_Sv.QColrtran1.FieldByName('NETPRIC').AsFloat ;
 if Dm_Sv.QColrtran1.Active then Dm_Sv.QColrtran1.CancelUpdates;
end;

procedure TSvIn_50.AutoBtnClick(Sender: TObject);
begin
 Application.CreateForm(TSvInHlp_20,SvInHlp_20);
 SvInHlp_20.Grid_Serv.Visible := True;
 with SvInHlp_20.QHlpServ do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM GRPSERV WHERE GCODE=:EDIT1 AND MDLCOD LIKE :XMDLCOD');
   Params[0].Asstring := Dm_Sv.QJoborder2.FieldByname('GROUP1').asstring;
   Params[1].Asstring := Dm_Sv.QJoborder1.FieldByname('MDLCOD').asstring+'%';
   Open ;
   EDit;
  end;
 if SvInHlp_20.ShowModal = MrOk then
  begin
   SvInHlp_20.QHlpServ.First ;
   While not(SvInHlp_20.QHlpServ.Eof) do
    begin
     if SvInHlp_20.QHlpServ.FieldByName('MARK').Asstring = '' then
      begin
       Dm_Sv.QServtran1.Append;
       Dm_Sv.QServtran1.FieldByName('code').AsString  := SvInHlp_20.QHlpServ.FieldByName('SvCode').Asstring;
       Dm_Sv.QServtran1.FieldByName('Desc1').AsString := SvInHlp_20.QHlpServ.FieldByName('Desc1').Asstring;

       with Dm_Sv.QTabserv do
       begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT * FROM TABSERV WHERE SVCODE= :XCODE AND MDLCOD= :XMDL ');
         Params[0].Asstring := Dm_Sv.QServtran1.FieldByName('CODE').Asstring;
         Params[1].Asstring := Dm_Sv.QJoborder2.FieldByName('MDLCOD').Asstring;
         Open;
       end;
       If not(Dm_Sv.QTabserv.Bof and Dm_Sv.QTabserv.Eof) Then
       begin
         Dm_Sv.QServtran1.FieldByName('CODE').Asstring   := Dm_Sv.QTabserv.FieldByName('SVCODE').Asstring;
         Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat   := Dm_Sv.QTabserv.FieldByName('SVPRIC').AsFloat;
         Dm_Sv.QServtran1.FieldByName('FRT').AsFloat     := Dm_Sv.QTabserv.FieldByName('FRT').AsFloat;
         Dm_Sv.QServtran1.FieldByName('SERTIME').AsFloat := Dm_Sv.QTabserv.FieldByName('FRT').AsFloat;
         Dm_Sv.QServtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat ;
         Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring:=Dm_Sv.QJoborder2.FieldByName('RECVCOD').Asstring;
         Dm_Sv.QServtran1.Post;
       end;
      end;
     SvInHlp_20.QHlpServ.Next;
    end;
  end;
end;

procedure TSvIn_50.DBGrid_PtDblClick(Sender: TObject);
begin
   If DBGrid_Pt.SelectedField.FieldName = 'SERVCOD' then
   begin
     Application.Createform(TSearchDlg1,SearchDlg1);
     If SearchDlg1.ShowModalOffic=Mrok Then
     begin
       With Dm_Sv.Query1 do
       begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD = :XCODE ');
         Params[0].Asstring := SearchDlg1.Keyno;
         Open;
       end;
       If Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
       SFMain.RaiseException('ไม่มีข้อมูล');
       Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('OFFICCOD').Asstring;
     end;
   end;

  If DBGrid_Pt.SelectedField.FieldName = 'SERTIME' then
  begin
    Application.CreateForm(TFsvtime,Fsvtime);
    Fsvtime.Jobno1  := dm_sv.QParttran1.FieldByName('JOBNO').Asstring;
    Fsvtime.Servcod1:= dm_sv.QParttran1.FieldByName('Servcod').Asstring;
    Fsvtime.Code1   := dm_sv.QParttran1.FieldByName('Code').Asstring;
    Fsvtime.Flag1   := '5';
    Fsvtime.SvTime.Close;
    Fsvtime.SvTime.MasterSource := Dm_sv.SoParttran1;

    if Fsvtime.ShowModal = MrOk then
    begin
      with Dm_sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT Sum(UseTime) As UseTime FROM SVTIME WHERE JOBNO= :XJOB AND SERVCOD= :XSVCOD AND CODE=:Xcode '+
        ' AND FLAG =:Xflag');
        Params[0].Asstring := dm_sv.QParttran1.FieldByName('JOBNO').Asstring;
        Params[1].Asstring := dm_sv.QParttran1.FieldByName('Servcod').Asstring;
        Params[2].Asstring := dm_sv.QParttran1.FieldByName('Code').Asstring;
        Params[3].asstring := '5';
        Open;
      end;
      If Dm_Sv.QParttran1.State=Dsbrowse Then Dm_Sv.QParttran1.Edit;
      dm_sv.QParttran1.FieldByName('SERTIME').AsFloat:=Dm_sv.Query1.FieldByName('Usetime').Asfloat;
    end;
  end;
end;

procedure TSvIn_50.DBGrid_PtColExit(Sender: TObject);
Var Amt:Double;
begin
  If Dm_Sv.QParttran1.State =Dsinsert Then
  Begin
    Dm_Sv.QParttran1.Cancel;
    Showmessage('เพิ่มรายการ ไม่ได้ ต้องเบิกจ่ายด้านอะไหล่');
  end;

  DBGrid_Pt.Columns[3].Readonly := Dm_sv.QParttran1.Fieldbyname('NETFL').Asstring='N';

  If DBGrid_Pt.SelectedField.FieldName = 'REDU1' Then
  begin
    Dm_sv.QParttran1.Edit;

    If XOFFICER<>'' Then
      Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring :=XOFFICER
    Else
      Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring:= dm_sv.QJoborder2.FieldByName('RECVCOD').Asstring;

    Dm_sv.QParttran1.Fieldbyname('Netprc').asfloat :=(1-Dm_sv.QParttran1.Fieldbyname('Redu1').asfloat/100)*Dm_sv.QParttran1.Fieldbyname('Uprice').asfloat;
    Amt := Dm_sv.QParttran1.Fieldbyname('Netprc').asfloat*Dm_sv.QParttran1.Fieldbyname('Qty').asfloat;
    Dm_sv.QParttran1.Fieldbyname('Totprc').asfloat := StrTofloat(FloattostrF((Amt),ffFixed,15,2));
  end;

  If DBGrid_Pt.SelectedField.FieldName = 'SERVCOD' Then
  begin
   with Dm_Sv.QOfficer do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD= :XCODE  ');
     Params[0].Asstring := Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring;
     Open;
    end;
   if Dm_Sv.QOfficer.Bof and Dm_Sv.QOfficer.eof then
     SFMain.RaiseException('ไม่มีรหัสพนักงานนี้ในแฟ้มข้อมูล');

   If Not(Dm_Sv.QParttran1.State In DsEditmodes) Then Dm_Sv.QParttran1.Edit;
   Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOfficer.FieldByName('OFFICCOD').Asstring;
   XOFFICER := Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring;
  end;

end;

procedure TSvIn_50.DBCheckBox1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Dm_Sv.QParttran1.Post;
end;

procedure TSvIn_50.SpeedButton8Click(Sender: TObject);
begin
  if MessageDlg('ต้องการดึงรายการคำสั่งซ่อม ? ',mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    with Dm_Sv.Query1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = :XNO ');
     Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring ;
     Open ;
    end;

    Dm_Sv.Query1.First ;
    While not(Dm_Sv.Query1.Eof) do
    begin
       Dm_Sv.QServtran1.Append;
       Dm_Sv.QServtran1.FieldByName('CODE').Asstring   := '00';
       Dm_Sv.QServtran1.FieldByName('DESC1').Asstring  := Dm_Sv.Query1.Fieldbyname('REPDESC').Asstring;
       Dm_Sv.QServtran1.FieldByName('FRT').AsFloat     := 1;
       Dm_Sv.QServtran1.Post;
      Dm_Sv.Query1.Next;
    end;
  end;
end;




procedure TSvIn_50.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFprnpart10,Fprnpart10);
  Fprnpart10.Label6.caption := DBEdit30.text;
  Fprnpart10.ShowModal;
end;
procedure TSvIn_50.DBCheckBox2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var Xsvrt:Double;
begin
  If (Dm_Sv.QServtran1.FieldByName('Claim').Asstring ='N') and
     (MessageDlg('ต้องการให้คำนวณจากอัตราเคลมที่ Setup ไว้ หรือไม่ ?',MtConfirmation,[mbYes,mbNo],0)=MrYes) Then
  Begin
   If Not(Dm_Sv.Condpay.Active) Then Dm_Sv.Condpay.Open;
   IF DBCheckBox2.Checked Then
    Xsvrt := Dm_Sv.Condpay.Fieldbyname('Svrate2').Asfloat
   Else
    Xsvrt := Dm_Sv.Condpay.Fieldbyname('Svrate').Asfloat;

   Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat:= Dm_Sv.QServtran1.FieldByName('FRT').AsFloat*XSvrt;
   Dm_Sv.QServtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat*
         (1-Dm_Sv.QServtran1.FieldByName('REDU').AsFloat/100) ;

  end;
  Dm_Sv.QServtran1.Post;
end;

procedure TSvIn_50.PageControl1Change(Sender: TObject);
Var Vatamt,SumNet,Sumtot:Double;
begin
  If Dm_Sv.QJoborder2.FieldByName('Vattype').Asstring='2' Then
  Begin
    SumNet := Dm_Sv.QJoborder2.FieldByName('Partnet').AsFloat+
              Dm_Sv.QJoborder2.FieldByName('oilnet').AsFloat+
              Dm_Sv.QJoborder2.FieldByName('TSv_net').AsFloat;
    Vatamt := Sumnet *Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat/100;
    Sumtot := Sumnet+Vatamt;
  End
  Else
  Begin
    Sumtot := Dm_Sv.QJoborder2.FieldByName('Parttot').AsFloat+
              Dm_Sv.QJoborder2.FieldByName('oiltot').AsFloat+
              Dm_Sv.QJoborder2.FieldByName('TSv_tot').AsFloat;
    Vatamt := Sumtot*Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat/(100+Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat);
    SumNet := Sumtot-Vatamt;
  End;
  Edit1.text := Formatfloat('#,##0.00',Sumnet);
  Edit2.text := Formatfloat('#,##0.00',Vatamt);
  Edit3.text := Formatfloat('#,##0.00',Sumtot);

end;

procedure TSvIn_50.DBGrid_OLColExit(Sender: TObject);
Var Amt :Double;
begin
  If Dm_Sv.QOiltran1.State =Dsinsert Then
  Begin
    Dm_Sv.QOiltran1.Cancel;
    Showmessage('เพิ่มรายการ ไม่ได้ ต้องเบิกจ่ายด้านอะไหล่');
  end;

  DBGrid_OL.Columns[3].Readonly := Dm_sv.QOiltran1.Fieldbyname('NETFL').Asstring='N';

  If DBGrid_OL.SelectedField.FieldName = 'REDU1'  Then
  begin
    Dm_sv.QOiltran1.Edit;

    If XOFFICER<>'' Then
      Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring :=XOFFICER
    Else
      Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring:= dm_sv.QJoborder2.FieldByName('RECVCOD').Asstring;

    Dm_sv.QOiltran1.Fieldbyname('Netprc').asfloat := (1-Dm_sv.QOiltran1.Fieldbyname('Redu1').asfloat/100)*Dm_sv.QOiltran1.Fieldbyname('Uprice').asfloat;
    Amt := Dm_sv.QOiltran1.Fieldbyname('Netprc').asfloat*Dm_sv.QOiltran1.Fieldbyname('Qty').asfloat;
    Dm_sv.QOiltran1.Fieldbyname('Totprc').asfloat := StrTofloat(FloattostrF((Amt),ffFixed,15,2));
  end;

  If DBGrid_OL.SelectedField.FieldName = 'SERVCOD' Then
  begin
   with Dm_Sv.QOfficer do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD= :XCODE  ');
     Params[0].Asstring := Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring;
     Open;
    end;
   if Dm_Sv.QOfficer.Bof and Dm_Sv.QOfficer.eof then
     SFMain.RaiseException('ไม่มีรหัสพนักงานนี้ในแฟ้มข้อมูล');

   If Not(Dm_Sv.QOiltran1.State In DsEditmodes) Then Dm_Sv.QOiltran1.Edit;
   Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOfficer.FieldByName('OFFICCOD').Asstring;
   XOFFICER := Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring;
  end;
end;

procedure TSvIn_50.DBGrid_OLDblClick(Sender: TObject);
begin
   If DBGrid_OL.SelectedField.FieldName = 'SERVCOD' then
   begin
     Application.Createform(TSearchDlg1,SearchDlg1);
     If SearchDlg1.ShowModalOffic=Mrok Then
     begin
       With Dm_Sv.Query1 do
       begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD = :XCODE ');
         Params[0].Asstring := SearchDlg1.KeyNo;
         Open;
       end;
       If Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
       SFMain.RaiseException('ไม่มีข้อมูล');
       Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('OFFICCOD').Asstring;
     end;
   end;

  If DBGrid_OL.SelectedField.FieldName = 'SERTIME' then
  begin
    Application.CreateForm(TFsvtime,Fsvtime);
    Fsvtime.Jobno1  := dm_sv.QOiltran1.FieldByName('JOBNO').Asstring;
    Fsvtime.Servcod1:= dm_sv.QOiltran1.FieldByName('Servcod').Asstring;
    Fsvtime.Code1   := dm_sv.QOiltran1.FieldByName('Code').Asstring;
    Fsvtime.Flag1   := '6';
    Fsvtime.SvTime.Close;
    Fsvtime.SvTime.MasterSource := Dm_sv.SoParttran1;

    if Fsvtime.ShowModal = MrOk then
    begin
      with Dm_sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT Sum(UseTime) As UseTime FROM SVTIME WHERE JOBNO= :XJOB AND SERVCOD= :XSVCOD AND CODE=:Xcode '+
        ' AND FLAG =:Xflag');
        Params[0].Asstring := dm_sv.QOiltran1.FieldByName('JOBNO').Asstring;
        Params[1].Asstring := dm_sv.QOiltran1.FieldByName('Servcod').Asstring;
        Params[2].Asstring := dm_sv.QOiltran1.FieldByName('Code').Asstring;
        Params[3].asstring := '6';
        Open;
      end;
      If Dm_Sv.QOiltran1.State=Dsbrowse Then Dm_Sv.QOiltran1.Edit;
      dm_sv.QOiltran1.FieldByName('SERTIME').AsFloat:=Dm_sv.Query1.FieldByName('Usetime').Asfloat;
    end;
  end;
end;



procedure TSvIn_50.EnqBtnClick(Sender: TObject);
begin
 Application.CreateForm(THelpjob,Helpjob);
 HelpJob.State := 1;
 if HelpJob.ShowModal = MrOk then
  begin
   with Dm_Sv.QJoborder2 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNO ');
     Params[0].Asstring := Helpjob.QHlp.FieldByName('JOBNO').Asstring ;
     If Not Dm_Sv.QJoborder2.Prepared Then Dm_Sv.QJoborder2.Prepare;
     Open ;
     Edit;
    end;
   if Dm_Sv.QJOborder2.Bof and Dm_Sv.QJOborder2.eof then
    SFMain.RaiseException('ไม่มีข้มมูล ');
   If Dm_Sv.QJoborder2.FieldByName('Status').Asstring='R' Then
   SFMain.RaiseException('ลูกค้ารับรถไปแล้ว');

   If Dm_Sv.QJoborder2.FieldByName('Status').Asstring='W' Then Edit4.Text :='อยู่ระหว่างการซ่อม';
   If Dm_Sv.QJoborder2.FieldByName('Status').Asstring='F' Then Edit4.Text :='ซ่อมเสร็จแล้วรอลูกค้ามารับ';


   with Dm_Sv.QSvmast do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM View_SVMAST WHERE STRNO= :XSTRNO  ');
     Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('STRNO').Asstring;
     If Not Dm_Sv.QSvmast.Prepared Then Dm_Sv.QSvmast.Prepare;
     Open;
   end;
   
    if Dm_Sv.QSvmast.Bof and Dm_Sv.QSvmast.eof then
    SFMain.RaiseException('ไม่มีขอ้มูล.ในแฟ้มประวัติรถ');

   with Dm_Sv.QServtran1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = :XNO ');
     Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring ;
     If Not Dm_Sv.QServtran1.Prepared Then Dm_Sv.QServtran1.Prepare;
     Open ;
    end;

   With Dm_Sv.QParttran1 Do
   begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO AND GROUP1<>''OL'' ');
    Params[0].AsString := Dm_Sv.QJOborder2.FieldByName('JOBNO').Asstring;
    If Not Dm_Sv.QParttran1.Prepared Then Dm_Sv.QParttran1.Prepare;
    Open;
   end;
   //
   with Dm_Sv.QOiltran1 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO AND GROUP1=''OL'' ');
    Params[0].AsString := Dm_Sv.QJOborder2.FieldByName('JOBNO').Asstring;
    If Not Dm_Sv.QOiltran1.Prepared Then Dm_Sv.QOiltran1.Prepare;
    Open;
   end;

  end;
end;

procedure TSvIn_50.SavBtnClick(Sender: TObject);
begin
  Dm_Sv.QJoborder2.Post;
end;

procedure TSvIn_50.CloseBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TSvIn_50.DBGrid_SvEditButtonClick(Sender: TObject);
begin
 if DBGrid_Sv.Readonly = False then
  begin
   If DbGrid_Sv.SelectedField.FieldName = 'CODE' then
   begin
     If Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring = '' Then
     SFMain.RaiseException('ยังไม่บันทึกหมายเลข JOB');
     Application.Createform(TSearchDlg1,SearchDlg1);
     If SearchDlg1.ShowModalTabsv=Mrok Then
     begin
       Dm_Sv.QServtran1.FieldByName('CODE').Asstring := SearchDlg1.Hquery1.FieldByName('SVCODE').Asstring;
       Dm_Sv.QServtran1.FieldByName('DESC1').Asstring := SearchDlg1.Hquery1.FieldByName('DESC').Asstring;
       Dm_Sv.QServtran1.FieldByName('FRT').AsFloat := SearchDlg1.Hquery1.FieldByName('FRT').AsFloat;
     End;
   end;

   If DbGrid_Sv.SelectedField.FieldName = 'SERVCOD' then
   begin
     Application.Createform(TSearchDlg1,SearchDlg1);
     If SearchDlg1.ShowModalOffic=Mrok Then
     begin
       with Dm_Sv.Query1 do
       begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD = :XCODE ');
         Params[0].Asstring := SearchDlg1.KeyNo;
         Open;
       end;
       If Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
       SFMain.RaiseException('ไม่มีข้อมูล');
       Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('OFFICCOD').Asstring;
     End;
   End;
  end;

  If DbGrid_Sv.SelectedField.FieldName = 'SERTIME' then
  begin
    Application.CreateForm(TFsvtime,Fsvtime);
    Fsvtime.Jobno1  := dm_sv.QServtran1.FieldByName('JOBNO').Asstring;
    Fsvtime.Servcod1:= dm_sv.QServtran1.FieldByName('Servcod').Asstring;
    Fsvtime.Code1   := dm_sv.QServtran1.FieldByName('Code').Asstring;
    Fsvtime.Flag1   := '1';
    Fsvtime.SvTime.Close;
    Fsvtime.SvTime.MasterSource := Dm_sv.SoServtran1;

    if Fsvtime.ShowModal = MrOk then
    begin
      with Dm_sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT Sum(UseTime) As UseTime FROM SVTIME WHERE JOBNO= :XJOB AND SERVCOD= :XSVCOD AND CODE=:Xcode '+
        ' AND FLAG =:Xflag');
        Params[0].Asstring := dm_sv.QServtran1.FieldByName('JOBNO').Asstring;
        Params[1].Asstring := dm_sv.QServtran1.FieldByName('Servcod').Asstring;
        Params[2].Asstring := dm_sv.QServtran1.FieldByName('Code').Asstring;
        Params[3].Asstring := '1';
        Open;
      end;
      dm_sv.QServtran1.FieldByName('SERTIME').AsFloat:=Dm_sv.Query1.FieldByName('Usetime').Asfloat;
    end;
  end;
end;

procedure TSvIn_50.DBGrid_PtEditButtonClick(Sender: TObject);
begin
   If DBGrid_Pt.SelectedField.FieldName = 'SERVCOD' then
   begin
     Application.Createform(TSearchDlg1,SearchDlg1);
     If SearchDlg1.ShowModalOffic=Mrok Then
     begin
       With Dm_Sv.Query1 do
       begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD = :XCODE ');
         Params[0].Asstring := SearchDlg1.Keyno;
         Open;
       end;
       If Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
       SFMain.RaiseException('ไม่มีข้อมูล');
       Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('OFFICCOD').Asstring;
     end;
   end;

  If DBGrid_Pt.SelectedField.FieldName = 'SERTIME' then
  begin
    Application.CreateForm(TFsvtime,Fsvtime);
    Fsvtime.Jobno1  := dm_sv.QParttran1.FieldByName('JOBNO').Asstring;
    Fsvtime.Servcod1:= dm_sv.QParttran1.FieldByName('Servcod').Asstring;
    Fsvtime.Code1   := dm_sv.QParttran1.FieldByName('Code').Asstring;
    Fsvtime.Flag1   := '5';
    Fsvtime.SvTime.Close;
    Fsvtime.SvTime.MasterSource := Dm_sv.SoParttran1;

    if Fsvtime.ShowModal = MrOk then
    begin
      with Dm_sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT Sum(UseTime) As UseTime FROM SVTIME WHERE JOBNO= :XJOB AND SERVCOD= :XSVCOD AND CODE=:Xcode '+
        ' AND FLAG =:Xflag');
        Params[0].Asstring := dm_sv.QParttran1.FieldByName('JOBNO').Asstring;
        Params[1].Asstring := dm_sv.QParttran1.FieldByName('Servcod').Asstring;
        Params[2].Asstring := dm_sv.QParttran1.FieldByName('Code').Asstring;
        Params[3].asstring := '5';
        Open;
      end;
      If Dm_Sv.QParttran1.State=Dsbrowse Then Dm_Sv.QParttran1.Edit;
      dm_sv.QParttran1.FieldByName('SERTIME').AsFloat:=Dm_sv.Query1.FieldByName('Usetime').Asfloat;
    end;
  end;
end;

end.
