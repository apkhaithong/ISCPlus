unit Spprn50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids,
  n2wMoney, ImgList, ComCtrls, ToolWin, AdvGlowButton;

type
  TFSpprn50 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    PrevBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    ToolButton1: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    Xtop, Xheader, Xleft, Xfooter: Integer;
    frpath: string;
    { Public declarations }
  end;

var
  FSpprn50: TFSpprn50;
  CTP, TF: string;

implementation

uses
  DmSvSet, USoftFirm, unfrPreview;
{$R *.DFM}

procedure TFSpprn50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFSpprn50.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PBILLNO' then
    ParValue := Label6.Caption;
end;

procedure TFSpprn50.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
end;

procedure TFSpprn50.FormShow(Sender: TObject);
begin
  DesignBtn.Visible := SFMAIN.XDesign = 'Y';
end;

procedure TFSpprn50.ToolButton1Click(Sender: TObject);
begin
  Label1.Caption := '';
  Label6.Caption := '';
  Close;
end;

procedure TFSpprn50.DesignBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frPath + '\FR\fr_PrnSvBillNo.frf');
//  frReport1.DesignReport;
end;

procedure TFSpprn50.PrevBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath + '\FR\fr_PrnSvBillNo.frf');
//  frCustPrev.Caption := 'Preview - ' + frReport1.FileName;
//  frReport1.Preview := frCustPrev.frPreview1;
//  if frReport1.PrepareReport then
//  begin
//    frReport1.ShowPreparedReport;
//    frCustPrev.ShowModal;
//  end;
end;

end.

