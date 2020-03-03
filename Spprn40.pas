unit Spprn40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids,
  ComCtrls, ToolWin, FR_Class;

type
  TFSpprn40 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    tbDesign: TToolButton;
    ToolButton4: TToolButton;
    frReport1: TfrReport;
    ToolButton5: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure tbDesignClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure FormShow(Sender: TObject);
  private
    aReport : TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSpprn40 : TFSpprn40;

implementation
uses USoftFirm,Dmsv,DmSvSet,unInvoiceAdd,unfrPreview;

{$R *.DFM}

procedure TFSpprn40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFSpprn40.ToolButton1Click(Sender: TObject);
begin
  if Label6.caption = '' then
  begin
      MessageDlg(' ไม่มีเลขที่ Invoice เสริม',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
  end;
  If FrInvoiceAdd.DBRadioGroup4.itemindex=0 Then
  Begin
   Label6.Caption := FrInvoiceAdd.DBEdit2.Text;
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'FORMS\fr_PrnSVInvS1.frf');
  end  Else
  begin
   Label6.Caption := FrInvoiceAdd.DBEdit2.Text;
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'FORMS\fr_PrnSVInvS2.frf');
  end;
  frCustPrev.Caption := 'Preview - '+frReport1.FileName;
  frReport1.Preview := frCustPrev.frPreview1;
  if frReport1.PrepareReport then
  Begin
     frReport1.ShowPreparedReport;
     frCustPrev.ShowModal;
  end;
end;

procedure TFSpprn40.ToolButton2Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ Invoice เสริม',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
  If FrInvoiceAdd.DBRadioGroup4.itemindex=0 Then
  Begin
   Label6.Caption := FrInvoiceAdd.DBEdit2.Text;
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnSVInvS1.frf');
  end
  Else
  begin
   Label6.Caption := FrInvoiceAdd.DBEdit2.Text;
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnSVInvS2.frf');
  end;
  frReport1.PrepareReport;
  frReport1.PrintPreparedReportDlg;
end;

procedure TFSpprn40.ToolButton4Click(Sender: TObject);
begin
  Label1.Caption := '';
  Label6.Caption := '';
  Close;
end;

procedure TFSpprn40.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        If UpperCase(ParName)='PINVNO' THEN
           PARVALUE:=LABEL6.Caption;

end;

procedure TFSpprn40.tbDesignClick(Sender: TObject);
begin
   If FrInvoiceAdd.DBRadioGroup4.itemindex=0 Then
   Begin
      Label6.Caption := FrInvoiceAdd.DBEdit2.Text;
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnSVInvS1.frf');
   end   Else
   begin
      Label6.Caption := FrInvoiceAdd.DBEdit2.Text;
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnSVInvS2.frf');
   end;
      frReport1.DesignReport;
end;

procedure TFSpprn40.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;

end;

procedure TFSpprn40.FormShow(Sender: TObject);
begin
    tbDesign.Visible := SFMain.XDesign = 'Y';
end;

end.
