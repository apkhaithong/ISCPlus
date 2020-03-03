unit uRepTaxDaily;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ToolWin, RzSpnEdt, AdvGlowButton, AdvToolBar, cxDropDownEdit, cxCalendar,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  AdvGroupBox, AdvOfficeButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils;

type
  TFRepTaxDaily = class(TForm)
    SalRadio: TAdvOfficeRadioGroup;
    Label1: TLabel;
    Edit_Locat: TcxButtonEdit;
    Label5: TLabel;
    Edit_DateFrom: TcxDateEdit;
    Label4: TLabel;
    Edit_DateTo: TcxDateEdit;
    AdvToolBar1: TAdvToolBar;
    PrevBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure FormShow(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    OptnText, SalText: string;
  end;

var
  FRepTaxDaily: TFRepTaxDaily;

implementation

uses
  USoftFirm, uSrcDlg, unfrPreview;

{$R *.DFM}

procedure TFRepTaxDaily.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFRepTaxDaily.FormCreate(Sender: TObject);
begin
  SFMain.Check_right(HREP, 'REP05_01');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_DateFrom.Date := Date;
  Edit_DateTo.Date := Date;
end;

procedure TFRepTaxDaily.EditBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(SFMAIN.frpath + '\FR\Rp_TaxDaily.frf');
//  frReport1.DesignReport;
end;

procedure TFRepTaxDaily.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFRepTaxDaily.frReport1GetValue(const ParName: string; var ParValue: Variant);
var
  PTypeSale: string;
begin
  if UpperCase(ParName) = 'PLOCAT' then
    ParValue := Edit_Locat.Text + '%';
  if UpperCase(ParName) = 'FDATE' then
    ParValue := Edit_DateFrom.Date;
  if UpperCase(ParName) = 'TDATE' then
    ParValue := Edit_DateTo.Date;
  case SalRadio.ItemIndex of
    0:
      PTypeSale := 'IC%';
    1:
      PTypeSale := 'SV%';
    2:
      PTypeSale := '%';
  end;
  if UpperCase(ParName) = 'PSLTYPE' then
    ParValue := PTypeSale;
  if UpperCase(ParName) = 'PLOCAT1' then
  begin
    if Edit_Locat.Text = '' then
      ParValue := ''
    else
      ParValue := Edit_Locat.Text;
  end;
end;

procedure TFRepTaxDaily.FormShow(Sender: TObject);
begin
  Editbtn.Visible := sfmain.XDesign = 'Y';
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  SalRadio.ItemIndex := 2;
end;

procedure TFRepTaxDaily.PrevBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(SFMAIN.frpath + '\FR\Rp_TaxDaily.frf');
//  frCustPrev.Caption := 'Preview - ' + frReport1.FileName;
//  frReport1.Preview := frCustPrev.frPreview1;
//  if frReport1.PrepareReport then
//  begin
//    frReport1.ShowPreparedReport;
//    frCustPrev.ShowModal;
//  end;
end;

procedure TFRepTaxDaily.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.kEYNO;
end;

procedure TFRepTaxDaily.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

