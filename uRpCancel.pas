unit uRpCancel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls,
  wwdbdatetimepicker, ExtCtrls, RzPanel, RzRadGrp, FR_Class,  DB, Dbkbd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFRpCancel = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    frReport1: TfrReport;
    RzRadioGroup1: TRzRadioGroup;
    RzRadioGroup2: TRzRadioGroup;
    Query1: TFDQuery;
    DBkbd1: TDBkbd;
    RzCheckGroup1: TRzRadioGroup;
    procedure RzRadioGroup1Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzCheckGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRpCancel: TFRpCancel;


implementation
uses uSoftFirm,uSrcDLG;
{$R *.dfm}


procedure TFRpCancel.RzRadioGroup1Click(Sender: TObject);
begin
        If RzRadioGroup1.ItemIndex=3 Then
        RzRadioGroup2.Visible := True
        Else
        RzRadioGroup2.Visible := False;
        if RzCheckGroup1.ItemIndex = 0 Then
        LMDLabel1.Caption := 'จากวันที่ยกเลิก'
        Else
        Begin
                Case RzRadioGroup1.ItemIndex Of
                0 : LMDLabel1.Caption := 'จากวันที่ปรับปรุงยอด';
                1 : LMDLabel1.Caption := 'จากวันที่ใบกำกับหน้าร้าน';
                2 : LMDLabel1.Caption := 'จากวันที่ใบแจ้งซ่อม';
                3 : LMDLabel1.Caption := 'จากวันที่เบิกสินค้า';
                4 : LMDLabel1.Caption := 'จากวันที่รับสินค้า';
                5 : LMDLabel1.Caption := 'จากวันที่ลดหนี้';
                End;
        End;        
end;

procedure TFRpCancel.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
Var Xflag,XDT :String;
begin
        IF RzRadioGroup2.ItemIndex=0 Then
        Xflag := '1'
        else
        Xflag := '3';

        If RzCheckGroup1.ItemIndex=0 Then
        XDT := '1'
        Else
        XDT := '2';

        If UpperCase(ParName)='PXDT' Then
        ParValue := XDT;
        if Uppercase(ParName)='PFDATE' Then
        ParValue := FDATE.Date;
        if Uppercase(ParName)='PTDATE' Then
        ParValue := TDATE.Date;
        if Uppercase(ParName)='PFLAG' Then
        ParValue := Xflag;
        if UpperCase(ParName)='PCANCELID' Then
        ParValue := Edit1.Text;
end;

procedure TFRpCancel.Edit1ButtonClick(Sender: TObject);
begin
        Application.CreateForm(TfSrcDLG,fSrcDLG);
        if fSrcDLG.ShowModalOffic=mrOK Then
        Begin
        Edit1.Text := fSrcDlg.Keyno;
        With Query1 DO
        Begin
            Close;
            sql.Clear;
            sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD=:0');
            Params[0].AsString := fSrcDLG.Keyno;
            Open;
            if (Eof and Bof) Then
               Begin
                   MessageDlg('ไม่มีรหัสนี้ในแฟ้มประวัติพนักงาน', mtWarning, [mbOK], 0);
                   Abort;
               End Else
               Label1.Caption := Query1.fieldByName('OFFICNAM').AsString;
        End;
        End;

end;

procedure TFRpCancel.Edit1Change(Sender: TObject);
begin
        With Query1 DO
        Begin
            Close;
            sql.Clear;
            sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD=:0');
            Params[0].AsString := Edit1.Text;
            Open;
            if (Eof and Bof) Then
               Begin
                   MessageDlg('ไม่มีรหัสนี้ในแฟ้มประวัติพนักงาน', mtWarning, [mbOK], 0);
                   Abort;
               End Else
               Label1.Caption := Query1.fieldByName('OFFICNAM').AsString;
        End;
end;

procedure TFRpCancel.FormCreate(Sender: TObject);
begin
        Edit1.Clear;
        Label1.Caption := '';
        FDATE.Date := Now;
        TDATE.Date := Now;
end;

procedure TFRpCancel.ToolButton2Click(Sender: TObject);
begin
        if RzRadioGroup1.ItemIndex=0 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelAdjust.frf')

        Else if RzRadioGroup1.ItemIndex=1 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelIcinvoice.frf')

        Else if RzRadioGroup1.ItemIndex=2 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelJob.frf')

        Else if RzRadioGroup1.ItemIndex=3 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelPkinvoice.frf')

        Else if RzRadioGroup1.ItemIndex=4 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelRcinvoice.frf')

        Else if RzRadioGroup1.ItemIndex=5 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelRtinvoice.frf')

        Else
        Begin
                MessageDlg('กรุณาระบุรายงานก่อน', mtWarning, [mbOK], 0);
                Abort;
        End;
        frReport1.PrepareReport;
        frReport1.PrintPreparedReportDlg;
end;

procedure TFRpCancel.ToolButton1Click(Sender: TObject);
begin
        if RzRadioGroup1.ItemIndex=0 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelAdjust.frf')

        Else if RzRadioGroup1.ItemIndex=1 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelIcinvoice.frf')

        Else if RzRadioGroup1.ItemIndex=2 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelJob.frf')

        Else if RzRadioGroup1.ItemIndex=3 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelPkinvoice.frf')

        Else if RzRadioGroup1.ItemIndex=4 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelRcinvoice.frf')

        Else if RzRadioGroup1.ItemIndex=5 Then
                frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelRtinvoice.frf')

        Else
        Begin
                MessageDlg('กรุณาระบุรายงานก่อน', mtWarning, [mbOK], 0);
                Abort;
        End;
        frReport1.ShowReport;
end;

procedure TFRpCancel.ToolButton3Click(Sender: TObject);
begin
        Close;
end;

procedure TFRpCancel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFRpCancel.DBkbd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key=VK_F4 Then
        Begin
                if SFMAIN.XDesign<>'Y' Then
                Begin
                        MessageDlg('ไม่อนุญาตให้แก้ไข', mtWarning, [mbOK], 0);
                        Abort;
                End
                Else
                Begin
                if RzRadioGroup1.ItemIndex=0 Then
                        frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelAdjust.frf')

                Else if RzRadioGroup1.ItemIndex=1 Then
                        frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelIcinvoice.frf')

                Else if RzRadioGroup1.ItemIndex=2 Then
                        frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelJob.frf')

                Else if RzRadioGroup1.ItemIndex=3 Then
                        frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelPkinvoice.frf')

                Else if RzRadioGroup1.ItemIndex=4 Then
                        frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelRcinvoice.frf')

                Else if RzRadioGroup1.ItemIndex=5 Then
                        frReport1.LoadFromFile(SFmain.frpath+'\REPORT\rp_CancelRtinvoice.frf')

                Else
                        Begin
                                MessageDlg('กรุณาระบุรายงานก่อน', mtWarning, [mbOK], 0);
                                Abort;
                        End;
                frReport1.DesignReport;
                End;
        end;
end;

procedure TFRpCancel.RzCheckGroup1Click(Sender: TObject);
begin
        if RzCheckGroup1.ItemIndex = 0 Then
        LMDLabel1.Caption := 'จากวันที่ยกเลิก'
        Else
        Begin
                Case RzRadioGroup1.ItemIndex Of
                0 : LMDLabel1.Caption := 'จากวันที่ปรับปรุงยอด';
                1 : LMDLabel1.Caption := 'จากวันที่ใบกำกับหน้าร้าน';
                2 : LMDLabel1.Caption := 'จากวันที่ใบแจ้งซ่อม';
                3 : LMDLabel1.Caption := 'จากวันที่เบิกสินค้า';
                4 : LMDLabel1.Caption := 'จากวันที่รับสินค้า';
                5 : LMDLabel1.Caption := 'จากวันที่ลดหนี้';
                End;
        End;

end;

end.
