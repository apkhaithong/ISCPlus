unit Stprn10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ComCtrls, ToolWin;

type
  TFmStprn10 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    EditBtn: TToolButton;
    ToolButton4: TToolButton;
    raSelFrm: TRadioGroup;
    procedure ToolButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditBtnClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure ToolButton2Click(Sender: TObject);
  private
    aReport: TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn10: TFmStprn10;

implementation

uses
  Dmic01, Stin07, uSoftfirm;

{$R *.DFM}

procedure TFmStprn10.ToolButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TFmStprn10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFmStprn10.EditBtnClick(Sender: TObject);
begin
//   if raSelFrm.ItemIndex = 0 then
//      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_QaInvoi.frf')
//   else
//      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnReserv.frf');
//      frREport1.DesignReport;
end;

procedure TFmStprn10.ToolButton1Click(Sender: TObject);
begin
//   if raSelFrm.ItemIndex = 0 then
//      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_QaInvoi.frf')
//   else
//      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnReserv.frf');
//      frREport1.ShowReport;
end;

procedure TFmStprn10.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFmStprn10.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PQANO' then
    ParValue := Label6.Caption;
end;

procedure TFmStprn10.ToolButton2Click(Sender: TObject);
begin
//   if raSelFrm.ItemIndex = 0 then
//      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_QaInvoi.frf')
//   else
//      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnReserv.frf');
//      frReport1.PrepareReport;
//      frReport1.PrintPreparedReportDlg;
end;

end.

