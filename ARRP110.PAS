unit ARRP110;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, DB, printers,Grids,DBGrids,
  ComCtrls, Mask;

type
  TArRp_110 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Option: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    FSortRadio: TRadioGroup;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Edit2: TEdit;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Edit3: TEdit;
    SpeedButton3: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Edit4: TEdit;
    SpeedButton4: TSpeedButton;
    Label4: TLabel;
    RadioGroup2: TRadioGroup;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    aReport : TQuickRep;
    Procedure PickReport;
    procedure SQLCreate;

  public
    SortText : String;
    { Public declarations }
  end;

var
  ArRp_110: TArRp_110;

implementation

uses Pickdate,ArRp111,DmAr,Srchdlg;

{$R *.DFM}

procedure TArRp_110.SpeedButton1Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModallOCAT=Mrok Then
  begin
    Edit1.Text := Searchdlg.Keyno;
  End;
end;

procedure TArRp_110.SpeedButton2Click(Sender: TObject);
begin
 Application.CreateForm(TBrDateForm,BrDateForm);
 if BrDateForm.ShowModal = MrOk then
  Edit2.Text := DateToStr(BrDateForm.Date);
end;

procedure TArRp_110.FormCreate(Sender: TObject);
begin
  Edit2.Text   := DateToStr(Now-365);
  Edit4.Text   := DateToStr(Now);
end;

procedure TArRp_110.BitBtn2Click(Sender: TObject);
begin
  PickReport;
  aReport.Preview;
  aReport.Free;
end;

procedure TArRp_110.SQLCreate;
begin


{   Dm_RpAr.QArpay.Datasource := Dm_RpAr.SoArinv1;
   WITH Dm_RpAr.QArpay DO
   begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT INVNO,SUM(PAYMENT) As SUM1 FROM ARPAY WHERE (INVNO =:INVNO) '+
              'AND (DATE1 <= :XDATE) GROUP BY INVNO ');
      Params[1].AsDate := StrToDate(Edit2.Text) ;
      Open;
   end;

   WITH Dm_RpAr.Query3 DO
   begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TEMPTB1 ');
      Open;
   end;

   Dm_RpAr.QArinv1.First;
   While Not Dm_RpAr.QArinv1.Eof do
   Begin
      if Dm_RpAr.QArinv1.fieldbyname('NETTOTAL').AsFloat <> Dm_RpAr.QArpay.Fieldbyname('SUM1').AsFloat Then
      Begin
         Dm_RpAr.Query3.Insert;
         Dm_RpAr.Query3.Fieldbyname('Locat').AsString    := Dm_RpAr.QArinv1.Fieldbyname('Locat').AsString;
         Dm_RpAr.Query3.Fieldbyname('Cuscod').AsString   := Dm_RpAr.QArinv1.Fieldbyname('Cuscode').AsString;
         Dm_RpAr.Query3.Fieldbyname('Taxno').AsString    := Dm_RpAr.QArinv1.Fieldbyname('Invno').AsString;
         Dm_RpAr.Query3.Fieldbyname('Taxdate').AsDateTime:= Dm_RpAr.QArinv1.Fieldbyname('InvDate').AsDateTime;
         Dm_RpAr.Query3.Fieldbyname('Cost').AsFloat      := Dm_RpAr.QArinv1.Fieldbyname('Nettotal').AsFloat;
         Dm_RpAr.Query3.Fieldbyname('QtyOrd').AsFloat    := Dm_RpAr.QArpay.Fieldbyname('SUm1').AsFloat;
         Dm_RpAr.Query3.Fieldbyname('QtyOut').AsFloat    := Dm_RpAr.QArinv1.Fieldbyname('Nettotal').AsFloat-
                                                            Dm_RpAr.QArpay.Fieldbyname('SUm1').AsFloat;
         Dm_RpAr.Query3.Next;
      End;
      Dm_RpAr.QArinv1.Next;
   End; }
end;

procedure TArRp_110.PickReport;
begin
  Case FSortRadio.ItemIndex Of
    0 : SortText := 'เรียงตามรหัสลูกหนี้,วันที่';
    1 : SortText := 'เรียงตามใบกำกับภาษี';
    2 : SortText := 'เรียงตามวันครบกำหนด';
  End;
  Application.CreateForm(TQArRp_111,QArRp_111);
  aReport := QArRp_111.QRep;
end;


procedure TArRp_110.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key = #13) then
  Begin
   Perform(Wm_nextDlgctl,0,0);
   Key := #0;
  End;
end;

procedure TArRp_110.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TArRp_110.BitBtn1Click(Sender: TObject);
begin
  PickReport;
  aReport.Print;
  aReport.Free;
end;


procedure TArRp_110.SpeedButton3Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalAR=Mrok Then
  begin
    Edit3.Text := Searchdlg.Keyno;
  End;
end;



procedure TArRp_110.SpeedButton4Click(Sender: TObject);
begin
 Application.CreateForm(TBrDateForm,BrDateForm);
 if BrDateForm.ShowModal = MrOk then
  Edit4.Text := DateToStr(BrDateForm.Date);
end;


end.
