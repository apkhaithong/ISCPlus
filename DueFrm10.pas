unit DueFrm10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Mask,
  DBCtrls, Gauges, ExtCtrls, Buttons, StdCtrls, Dbkbd, ComCtrls, ImgList,
  ToolWin, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxCore, cxDateUtils;

type
  TFTaxdue1 = class(TForm)
    Label2: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    spbLocat: TSpeedButton;
    Label3: TLabel;
    Bevel1: TBevel;
    Gauge1: TGauge;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Edit5: TEdit;
    Label13: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    CloseBtn: TToolButton;
    PrnBtn: TToolButton;
    CrtBtn: TToolButton;
    ToolButton1: TToolButton;
    wwFdate: TcxDateEdit;
    wwTdate: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spbLocatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure CrtBtnClick(Sender: TObject);
    procedure wwFdateChange(Sender: TObject);
    procedure wwFdateExit(Sender: TObject);
  private
    { Private declarations }
    Procedure FindRec;
    Procedure FindLast;
    Procedure Gentax;
  public
    { Public declarations }
  end;

var
  FTaxdue1: TFTaxdue1;
  CYr,Cmn,Cday : word;

implementation
Uses Dmsec,DmTax,SrchSet1,Srchsal1, USoftFirm, Dm1;

{$R *.DFM}

procedure TFTaxdue1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Dm_tax.QTaxtran.Close;
   Dm_tax.Query2.Close;
   Dm_tax.QArpay.Close;
   Action := CaFree ;
end;

procedure TFTaxdue1.spbLocatClick(Sender: TObject);
begin
   Application.CreateForm(TSearchSet,SearchSet);
   if SearchSet.ShowModalSetLocat = MrOk then
      Edit3.text := SearchSet.Keyno;
end;

procedure TFTaxdue1.FindRec;
begin
  FindLast;
  If  DM_Tax.QLastno.bof and DM_Tax.QLastno.EOF Then
  begin
       DM_Tax.QLastno.Insert;
       DM_Tax.QLastno.FieldByName('Locat').Asstring     := Edit3.Text;
       DM_Tax.QLastno.FieldByName('Cr_year').Asstring   := IntToStr(CYr);
       DM_Tax.QLastno.FieldByName('Cr_Month').Asstring  := Dm01.ZeroLead(IntToStr(Cmn),2);
       DM_Tax.QLastno.FieldByName('LRUNTAX').AsDateTime := wwTDate.Date;
       DM_Tax.QLastno.Post;
  end
  ELSE
  Begin
     If DM_Tax.QLastno.FieldByName('LRUNTAX').Asstring <> '' Then
     If  wwFDate.Date > (DM_Tax.QLastno.FieldByName('LRUNTAX').value+1) Then 
     begin
         wwFDate.setfocus;
         Raise Exception.create('วันที่ Run ใบกำกับไม่ต่อเนื่อง');
     end;
     if wwTDate.Date >DM_Tax.QLastno.FieldByName('LRUNTAX').Asdatetime Then
     Begin
        DM_Tax.QLastno.Edit;
        DM_Tax.QLastno.FieldByName('LRUNTAX').Asdatetime := wwTDate.Date;
        DM_Tax.QLastno.Post;
     end;
  END;
  Dm_sec.HI_DBMS.ApplyUpdateS([DM_Tax.QLastno]);
  gentax;
end;

Procedure TFTaxdue1.Gentax;
begin
   With Dm_tax.Query2 Do
   Begin
    Close;
    Sql.clear;
    SQL.Add('SELECT CONTNO,DDATE FROM ARPAY WHERE (DDATE BETWEEN :0 AND :1) AND '+
            '(LOCAT LIKE :2) AND VATRT > 0 AND CONTNO LIKE :3 '+
            'AND CONTNO NOT IN (SELECT CONTNO FROM ARMAST WHERE FLSTOPV=''S'' AND   '+
            '(DTSTOPV <= ARPAY.DDATE)) ORDER BY DDATE,CONTNO ');
    Params[0].Asdate  := wwFDate.Date;
    Params[1].Asdate  := wwTDate.Date;
    Params[2].Asstring:= edit3.text+'%';
    Params[3].Asstring:= edit6.text+'%';
    Open;
    Gauge1.MaxValue := RecordCount;
    if BOF and EOF then
       Raise Exception.create('ไม่มีลูกหนี้ถึงดิวในช่วงนี้');
   End;
   Gauge1.Progress := 0;
   Dm_tax.Query2.First;
   While Not Dm_tax.Query2.Eof Do
   Begin
     with  Dm_tax.Qarpay Do
     begin
       close;
       SQL.Clear;
       Sql.Add('SELECT * FROM ARPAY WHERE CONTNO=:0 AND DDATE=:1 ');
       Params[0].Asstring:= Dm_tax.Query2.FieldByName('CONTNO').AsString;
       Params[1].Asdate  := Dm_tax.Query2.FieldByName('DDATE').AsDateTime;
       Open;
       Gauge1.Progress := Gauge1.Progress+1;
       If (Dm_tax.Qarpay.FieldByName('Damt').AsFloat-Dm_tax.Qarpay.FieldByName('TaxPay').AsFloat) > 0 Then
          Dm_tax.Uptaxno;
       Dm_tax.Query2.Next;
     end;
    End;
end;

procedure TFTaxdue1.FindLast;
begin
   DecodeDate(wwFDate.Date,Cyr,Cmn,Cday) ;
   WITH DM_Tax.QLastno DO
   Begin
      Close;
      Sql.Clear;
      Sql.add('SELECT LOCAT,CR_YEAR,CR_MONTH,L_TXPAY,LRUNTAX '+
              'FROM LASTNO WHERE (LOCAT =:V0) AND '+
              'CR_YEAR =:V1 AND CR_MONTH =:V2 ');
      params[0].asstring := Edit3.Text;
      Params[1].Asstring := IntToStr(Cyr);
      Params[2].Asstring := Dm01.ZeroLead(IntToStr(Cmn),2);
      Open;
   END;
End;

procedure TFTaxdue1.FormCreate(Sender: TObject);
begin
   Edit3.Text := SFMain.Xlocat;
   edit3.Enabled := SFMain.XChgloc='Y';
   spbLocat.Enabled := SFMain.XChgloc='Y';

   wwFDate.Date := Date;
   wwTDate.Date := Date;

   FindLast;
   Edit5.Text := DateToStr(DM_Tax.QLastno.FieldByName('LRUNTAX').AsDateTime);
   Edit4.Text := IntToStr(DM_Tax.QLastno.FieldByName('L_TXPAY').AsInteger);
end;

procedure TFTaxdue1.SpeedButton2Click(Sender: TObject);
begin
   Application.CreateForm(TSearchSale,SearchSale);
   if SearchSale.ShowModalArMast = MrOk then
      Edit6.text := SearchSale.Keyno;
end;

procedure TFTaxdue1.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFTaxdue1.CrtBtnClick(Sender: TObject);
begin

  If Copy(wwFDate.Text,4,2)<>Copy(wwTDate.Text,4,2) Then
  begin
      MessageBeep(0);
      wwTDate.Setfocus;
      Raise Exception.Create('Run เลขที่ใบกำกับ ภายในเดือนเท่านั้น');
  end;

  If wwTDate.Date > Date Then
  Begin
      MessageBeep(0);
      wwTDate.Setfocus;
      Raise Exception.Create('Run เลขที่ใบกำกับก่อนวันปัจจุบันไม่ได้');
   End;
   If Edit3.Text='' Then
      Raise Exception.create('ยังไม่ได้บันทึกรหัสสาขา');
      FindRec;
      FindLast;
end;

procedure TFTaxdue1.wwFdateChange(Sender: TObject);
begin
   FindLast;
   Edit5.Text := DateToStr(DM_Tax.QLastno.FieldByName('LRUNTAX').AsDateTime);
   Edit4.Text := IntToStr(DM_Tax.QLastno.FieldByName('L_TXPAY').AsInteger);
end;

procedure TFTaxdue1.wwFdateExit(Sender: TObject);
begin
   FindLast;
   Edit4.Text := IntToStr(DM_Tax.QLastno.FieldByName('L_TXPAY').AsInteger);
end;

end.
