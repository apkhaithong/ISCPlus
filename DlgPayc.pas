unit DlgPayc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Db, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxMaskEdit, cxButtonEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, RzButton,
  RzBorder, AdvGlowButton, AdvToolBar, AdvPanel, BusinessSkinForm, dxStatusBar,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFOutcar = class(TForm)
    Label34: TLabel;
    Label10: TLabel;
    Label35: TLabel;
    Label9: TLabel;
    QParttran: TFDQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    SavBtn: TAdvGlowButton;
    CanBtn1: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    FinDate: TcxDBDateEdit;
    DBEdit35: TcxDBButtonEdit;
    DBEdit36: TcxDBButtonEdit;
    DBEdit18: TcxDBTextEdit;
    procedure CanBtn1Click(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit35PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DBEdit36PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOutcar: TFOutcar;
  Qty : Array[1..12] of Double;
  XYear, XMonth, XDay : Word;
  Xdate:TDateTime;
  Allo,Onhn:String;
  Mon,I :word;

implementation
uses Dmsv,Srchdlg,uSrcDlg,svin30, USoftFirm;
{$R *.DFM}

procedure TFOutcar.CanBtn1Click(Sender: TObject);
begin
  If Dm_sv.QJoborder2.FieldByName('Status').Asstring<>'R' Then
  SFMain.RaiseException('ยังไม่มีการรับรถ');

  If (Dm_sv.QJoborder2.FieldByName('PTAXNO').Asstring<>'') and
     (Dm_sv.QJoborder2.FieldByName('PTAXNO').Asstring<>'FREE') and
     (Dm_sv.QJoborder2.FieldByName('PTAXNO').Asstring<>'SVCLAIM') Then
  SFMain.RaiseException('ออกใบกำกับภาษีแล้ว #'+Dm_sv.QJoborder2.FieldByName('PTAXNO').Asstring);

  With Dm_sv.Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT TAXNO FROM TAXSAL WHERE JOBNO=:1 AND CANCELID IS NULL');
    Params[0].Asstring := Dm_sv.QJoborder2.FieldByName('Jobno').Asstring;
    Open;
    If Not(Bof and Eof) Then
    SFMain.RaiseException('ออกใบกำกับภาษี อินวอยส์เสริมแล้ว # '+Dm_sv.Query1.Fieldbyname('Taxno').Asstring);
  end;

  if MessageDlg(' แน่ใจหรือไม่ที่จะยกเลิกการรับรถ',mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    If Dm_sv.QJoborder2.State =Dsbrowse Then Dm_sv.QJoborder2.Edit;
    Dm_sv.QJoborder2.FieldByName('PAYCOD').Asstring:= '';
    Dm_sv.QJoborder2.FieldByName('PAYDate').Asstring:= '';
    Dm_sv.QJoborder2.FieldByName('CUST_OUT').Asstring:= '';
    Dm_sv.QJoborder2.FieldByName('INSPECT').Asstring:= '';
    Dm_sv.QJoborder2.FieldByName('Status').Asstring := 'F';
    Dm_sv.QJoborder2.FieldByName('PTAXNO').Asstring := '';
    Dm_sv.QJoborder2.FieldByName('TAXDATE').Asstring := '';
    Dm_sv.QJoborder2.Post;
  end;
  //
  SavBtn.Enabled     := Dm_sv.QJoborder2.FieldByName('Status').Asstring<>'R';
  CanBtn1.Enabled    := Not SavBtn.Enabled;
  DBEdit35.Enabled   := SavBtn.Enabled;
  DBEdit36.Enabled   := SavBtn.Enabled;
  DBEdit18.Enabled   := SavBtn.Enabled;
end;

procedure TFOutcar.SavBtnClick(Sender: TObject);
Var  Year, Month, Day: Word;
     YY:String;
begin
  DecodeDate(Dm_Sv.QJOborder2.FieldByName('PAYDATE').Asdatetime, Year, Month, Day);
  YY:=Inttostr(Year);
  If Not Dm_Sv.CondPay.Active Then Dm_Sv.CondPay.Open;
  If (YY<>'1899') AND (YY<>Dm_Sv.CondPay.Fieldbyname('Curyear').Asstring) Then
  SFMain.RaiseException('บันทึกปีทำงานผิด ปีทำงานปัจจุบัน คือ'+Dm_Sv.CondPay.Fieldbyname('Curyear').Asstring);  

  If Dm_Sv.QJOborder2.FieldByName('PAYDATE').Asstring ='' Then
  SFMain.RaiseException('ยังไม่บันทึกวันที่รับรถ');

  If Dm_Sv.QJOborder2.FieldByName('PAYCOD').Asstring ='' Then
  SFMain.RaiseException('ยังไม่บันทึกผู้ปล่อยรถ');

  If Dm_sv.QJoborder2.FieldByName('Status').Asstring='W' Then
  SFMain.RaiseException('ยังไม่ปิด JOB');

  If (Dm_sv.QJoborder2.FieldByName('TSV_TOT').AsFloat+
     Dm_sv.QJoborder2.FieldByName('PARTTOT').AsFloat+
     Dm_sv.QJoborder2.FieldByName('OILTOT').AsFloat) =0 Then
  begin
    Dm_sv.QJoborder2.Edit;
    Dm_sv.QJoborder2.FieldByName('Status').Asstring    := 'R';
  end  Else
  If Dm_sv.QJoborder2.FieldByName('Status').Asstring<>'R' Then
  SFMain.RaiseException('ยังไม่รับชำระเงิน');

  If Dm_sv.QJoborder2.State In Dseditmodes Then
  Begin
    Dm_sv.QJoborder2.Post;
  end;
  //
  SavBtn.Enabled := Dm_sv.QJoborder2.FieldByName('Status').Asstring<>'R';
  CanBtn1.Enabled := Not SavBtn.Enabled;
  FinDate.Enabled := SavBtn.Enabled;
  DBEdit35.Enabled := SavBtn.Enabled;
  DBEdit36.Enabled := SavBtn.Enabled;
  DBEdit18.Enabled := SavBtn.Enabled;

end;

procedure TFOutcar.FormShow(Sender: TObject);
begin
  With QParttran Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO ');
    Params[0].AsString := Dm_Sv.QJOborder2.FieldByName('JOBNO').Asstring;
    If Not QParttran.Prepared Then QParttran.Prepare;
    Open;
  end;

  SavBtn.Enabled := Dm_sv.QJoborder2.FieldByName('Status').Asstring<>'R';
  CanBtn1.Enabled := Not SavBtn.Enabled;
  If Dm_sv.QJoborder2.FieldByName('Status').Asstring<>'R' Then
  Begin
    If Dm_Sv.QJOborder2.State=Dsbrowse Then Dm_Sv.QJOborder2.Edit;
    Dm_Sv.QJOborder2.FieldByName('Paydate').Asdatetime:= Date;
    Dm_Sv.QJOborder2.FieldByName('Cust_out').Asstring := Dm_Sv.QJOborder2.FieldByName('Cust_in').Asstring;
    Dm_Sv.QJOborder2.FieldByName('INSPECT').Asstring  := Dm_Sv.QJOborder2.FieldByName('RECVCOD').Asstring;
  end;

  FinDate.Enabled := SavBtn.Enabled;
  DBEdit35.Enabled := SavBtn.Enabled;
  DBEdit36.Enabled := SavBtn.Enabled;
  DBEdit18.Enabled := SavBtn.Enabled;

end;

procedure TFOutcar.DBEdit35PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalOffic=Mrok Then
  begin
   Dm_sv.QJoborder2.Edit;
   Dm_Sv.QJoborder2.FieldByName('INSPECT').Asstring:= fSrcDlg.KeyNo;
  End;
end;

procedure TFOutcar.DBEdit36PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalOffic=Mrok Then
  begin
   Dm_sv.QJoborder2.Edit;
   Dm_Sv.QJoborder2.FieldByName('PAYCOD').Asstring:= fSrcDlg.KeyNo;
  End;

end;

procedure TFOutcar.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFOutcar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
   Begin
       Perform(Wm_NextDlgCtl,0,0);
       Key := #0;
   End;
end;

procedure TFOutcar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
