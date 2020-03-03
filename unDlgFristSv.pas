unit unDlgFristSv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers,Grids,DBGrids,
  ComCtrls, Mask, ImgList, ToolWin, FR_DSet, FR_DBSet, FR_Class,
  RzEdit, RzSpnEdt, ToolEdit;

type
  TfrDlgFristSv = class(TForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrnBtn: TToolButton;
    PrevBtn: TToolButton;
    ToolButton3: TToolButton;
    frReport1: TfrReport;
    EditBtn: TToolButton;
    ToolButton2: TToolButton;
    GroupBox1: TGroupBox;
    edDoc: TEdit;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PreveiwBitBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrintBitBtnClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
   { Private declarations }
  public
    { Public declarations }

  end;

var
  frDlgFristSv: TfrDlgFristSv;

implementation

uses unCalFirstSv,uSoftfirm, unfrPreview;

{$R *.DFM}

procedure TfrDlgFristSv.ExitBitBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TfrDlgFristSv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrDlgFristSv.PreveiwBitBtnClick(Sender: TObject);
begin
   frReport1.LoadFromFile(sfmain.frpath+'\REPORTs\fr_FirstService.frf');
   frCustPrev.Caption := 'Preview - '+frReport1.FileName;
   frReport1.Preview := frCustPrev.frPreview1;
   if frReport1.PrepareReport then
   Begin
      frReport1.ShowPreparedReport;
      frCustPrev.ShowModal;
   end;
end;

procedure TfrDlgFristSv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
    Begin
     Perform(Wm_nextDlgctl,0,0);
     Key := #0;
    End;

end;

procedure TfrDlgFristSv.FormCreate(Sender: TObject);
begin
   ShortDateFormat     := ('DD/MM/YYYY');
   edDoc.Text := frCalFirstSv.DBEdit16.Text;
end;

procedure TfrDlgFristSv.PrintBitBtnClick(Sender: TObject);
begin
  frReport1.LoadFromFile(sfmain.frpath+'\REPORTs\fr_FirstService.frf');
  frReport1.PrepareReport;
  frReport1.PrintPreparedReportDlg;
end;

procedure TfrDlgFristSv.ToolButton3Click(Sender: TObject);
begin
 CLOSE;
end;

procedure TfrDlgFristSv.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
  Var XSort,XSelDt : String;
begin
        If UpperCase(ParName)='PDOCNO' then
           ParValue:=EdDoc.Text;

end;

procedure TfrDlgFristSv.EditBtnClick(Sender: TObject);
begin
   frReport1.LoadFromFile(sfmain.frpath+'\REPORTs\fr_FirstService.frf');
   frReport1.DesignReport;
end;

procedure TfrDlgFristSv.FormShow(Sender: TObject);
begin
    EditBtn.Visible    := Sfmain.XDesign = 'Y';
end;

end.
