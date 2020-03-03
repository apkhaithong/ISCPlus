unit SvRpA50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers ,
  ComCtrls, Mask, Grids, DBGrids;

type
  TFmSvRpA50 = class(TForm)
    Label6: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Edit_DateTo: TEdit;
    SpeedButton2: TSpeedButton;
    Edit_dateFrom: TEdit;
    PrnBtn: TBitBtn;
    PrevBtn: TBitBtn;
    BitBtn3: TBitBtn;
    Sortradio: TRadioGroup;
    Label4: TLabel;
    EDIT_LOCAT: TEdit;
    SpeedButton3: TSpeedButton;
    Label7: TLabel;
    Edit_Type: TEdit;
    SpeedButton4: TSpeedButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    procedure SpeedButton2Click(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    aReport : TQuickRep;
    Procedure PickReport;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpA50: TFmSvRpA50;

implementation
uses Pickdate, SvRpA51,Srchdlg1;

{$R *.DFM}
procedure TFmSvRpA50.PickReport;
begin
    Application.CreateForm(TFmSvRpA51,FmSvRpA51);
    aReport := FmSvRpA51.QRep;
   { if RadioGp1.ItemIndex=0 then
       aReport.Page.Orientation := poPortrait
    else
       aReport.Page.Orientation := poLandscape;
       }
end;

procedure TFmSvRpA50.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TBrdateForm,BrdateForm);
  if BrDateForm.ShowModal = mrOk then
     Edit_DateTo.Text := DateToStr(BrDateForm.Date);
end;

procedure TFmSvRpA50.PrevBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Preview;
end;

procedure TFmSvRpA50.PrnBtnClick(Sender: TObject);
begin
   PickReport;
   aReport.Print;
end;

procedure TFmSvRpA50.FormCreate(Sender: TObject);
begin
   ShortDateFormat       := ('DD/MM/YYYY');
   Edit_DateFrom.Text    := DateToStr(Now-1);
   Edit_DateTo.Text      := DateToStr(Now);
   Sortradio.ItemIndex:= 0;
end;

procedure TFmSvRpA50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TFmSvRpA50.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TBrdateForm,BrdateForm);
  if BrDateForm.ShowModal = mrOk then
     Edit_DateFrom.Text := DateToStr(BrDateForm.Date);
end;


procedure TFmSvRpA50.SpeedButton3Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg1,SearchDlg1);
  If SearchDlg1.ShowModalLocat=Mrok Then
  begin
    EDIT_LOCAT.TEXT := SearchDlg1.Keyno;
  end;
end;

procedure TFmSvRpA50.SpeedButton4Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg1,SearchDlg1);
  If SearchDlg1.ShowModalSvtype=Mrok Then
  Edit_Type.Text := SearchDlg1.Keyno;
end;



end.
