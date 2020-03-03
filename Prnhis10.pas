unit Prnhis10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids,
  RzButton, RzPanel, RzRadGrp, RzLabel, RzRadChk, Mask, RzEdit, RzSpnEdt,
  ToolEdit;

type
  TFprnhis10 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    BitBtn3: TRzBitBtn;
    PrintBtn: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RadioGroup1: TRzRadioGroup;
    CheckBox1: TRzCheckBox;
    SpinEdit1: TRzSpinEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    aReport : TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprnhis10 : TFprnhis10;

implementation
uses Enqhist1,Prnhis11, DmSv,Pickdate;

{$R *.DFM}

procedure TFprnhis10.BitBtn3Click(Sender: TObject);
begin
   Application.CreateForm(TFPrnhis11,FPrnhis11);
   aReport := FPrnhis11.QuickReport;
   aReport.preview;
   with Dm_SV.Query3 do
   begin
      Close;
      Sql.Clear;
      Sql.Add('DELETE FROM TEMPTB2');
      ExecSql;
   end;
end;

procedure TFprnhis10.PrintBtnClick(Sender: TObject);
begin
   Application.CreateForm(TFPrnhis11,FPrnhis11);
   aReport := FPrnhis11.QuickReport;
   aReport.Print;
   with Dm_SV.Query3 do
   begin
      Close;
      Sql.Clear;
      Sql.Add('DELETE FROM TEMPTB2');
      ExecSql;
   end;
end;

procedure TFprnhis10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFprnhis10.FormCreate(Sender: TObject);
begin
  Label6.Caption := FEnqHist.QSvmast.Fieldbyname('Strno').Asstring;
end;




procedure TFprnhis10.RzBitBtn3Click(Sender: TObject);
begin
        Close;
end;

end.
