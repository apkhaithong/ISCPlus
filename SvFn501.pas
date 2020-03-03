unit SvFn501;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers,Grids,DBGrids,
  ComCtrls, Mask, ImgList, ToolWin, FR_Class, wwdbdatetimepicker;
type
  TSvFn_501 = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Panel2: TPanel;
    SalRadio: TRadioGroup;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Edit2: TEdit;
    SpeedButton4: TSpeedButton;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    CloseBtn: TToolButton;
    ImageList1: TImageList;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PreveiwBitBtnClick(Sender: TObject);
    procedure PrintBitBtnClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure SalRadioClick(Sender: TObject);
  private
    { Private declarations }
    aReport : TQuickRep;
    Procedure PickReport;
  public
    { Public declarations }
    OptnText,SalText,frPath  : String;
  end;

var
  SvFn_501: TSvFn_501;

implementation

uses  Srchdlg;

{$R *.DFM}

procedure TSvFn_501.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree ;
end;

procedure TSvFn_501.FormCreate(Sender: TObject);
begin
 ShortDateFormat     := ('DD/MM/YYYY');
 RadioGroup1.ItemIndex := 0 ;
 SalRadio.ItemIndex  := 2;
end;

procedure TSvFn_501.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key = #13) then
  Begin
   Perform(Wm_nextDlgctl,0,0);
   Key := #0;
  End;
end;

procedure TSvFn_501.PreveiwBitBtnClick(Sender: TObject);
begin
        frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\REPORT\rp_SumArPaytrn.frf');
        frReport1.ShowReport;
end;

procedure TSvFn_501.PickReport;
begin
  Case SalRadio.ItemIndex Of
   0:SalText := 'ขายหน้าร้าน';
   1:SalText := 'ขายศูนย์บริการ';
   2:SalText := 'หน้าร้านและศูนย์บริการ';
//   3:SalText := 'หมวดขายรถ';
  End;
{  Application.CreateForm(TQSvFn_51,QSvFn_51);
  aReport := QSvFn_51.QRep; }

end;

procedure TSvFn_501.PrintBitBtnClick(Sender: TObject);
begin
        frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\REPORT\rp_SumArPaytrn.frf');
        frReport1.PrepareReport;
        frReport1.PrintPreparedReportDlg;
end;

procedure TSvFn_501.SpeedButton3Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalPAYTYP=Mrok Then
  Begin
    Edit1.Text :=SearchDlg.kEYNO;
    Label1.Caption := SearchDlg.HQuery1.FieldByName('PAYDESC').Asstring;
  end;
end;


procedure TSvFn_501.SpeedButton4Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalLocat=Mrok Then
  Begin
    Edit2.Text :=SearchDlg.kEYNO;
  end;
end;

procedure TSvFn_501.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvFn_501.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
Var flag :String;
begin
        If UpperCase(ParName)='PFDATE' Then
        ParValue := FDATE.DateTime;
        If  UpperCase(ParName)='PTDATE' Then
        ParValue := TDATE.DateTime;
        If UpperCase(ParName)='PPAYTYP' Then
         ParValue := edit1.Text+'%';
        If UpperCase(ParName)='PBRACH' Then
        ParValue := edit2.Text+'%';
        If UpperCase(ParName)='PSALT' Then
        ParValue := Label5.Caption+'%';
end;

procedure TSvFn_501.SalRadioClick(Sender: TObject);
begin
        If SalRadio.ItemIndex=0 Then
           Label5.Caption:='1';
        If SalRadio.ItemIndex=1 Then
           Label5.Caption:='2';
        If SalRadio.ItemIndex=2 Then
           Label5.Caption:='';   
end;

end.
