unit Dlgjobdt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, RzSpnEdt;

type
  TFJobdate = class(TForm)
    Label2: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Edit3: TEdit;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    FbtJob: TRzRapidFireButton;
    FbtInvoice: TRzRapidFireButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FbtJobClick(Sender: TObject);
    procedure FbtInvoiceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Opt :String;
  end;

var
  FJobdate: TFJobdate;

implementation
uses Hlpjob,DlgHelp;
{$R *.DFM}


procedure TFJobdate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFJobdate.RadioGroup1Click(Sender: TObject);
begin
  Label1.Visible  := (RadioGroup1.Itemindex=0);
  Edit3.Visible   := Label1.Visible;
  Edit4.Visible   := Label1.Visible;
  Label5.Visible  := Label1.Visible;
  fbtJob.Visible := Label1.Visible;
  fbtInvoice.Visible := Label1.Visible;

  Label2.Visible       := (RadioGroup1.Itemindex=1);
  Label6.Visible       := Label2.Visible;
  edFDate.Visible      := Label2.Visible;
  edDateTo.Visible     := Label2.Visible;
  Label3.Visible       := Label2.Visible;
  Label4.Visible       := Label1.Visible;
end;

procedure TFJobdate.FormShow(Sender: TObject);
begin
  RadioGroup1.Visible := (Opt='DATE');
  If Opt='DATE' Then
  RadioGroup1.Itemindex := 1;
  Label4.Visible  := Opt='JOB';
end;

procedure TFJobdate.Edit3Change(Sender: TObject);
begin
  Edit4.Enabled := Edit3.Text<>'';
  fbtInvoice.Enabled := Edit4.Enabled;
end;

procedure TFJobdate.FbtJobClick(Sender: TObject);
begin
 Application.CreateForm(THelpjob,Helpjob);
 HelpJob.State := 1;
 if HelpJob.ShowModal = MrOk then
    Edit3.Text := Helpjob.QHlp.FieldByName('JOBNO').Asstring;
end;

procedure TFJobdate.FbtInvoiceClick(Sender: TObject);
begin
 Application.CreateForm(TFDlgHelp,FDlgHelp);
 FDlgHelp.Jobno := Edit3.Text;
 if FDlgHelp.ShowModal = MrOk then
    Edit4.text := FDlgHelp.Query1.Fieldbyname('Cuscod').Asstring;
end;

end.
