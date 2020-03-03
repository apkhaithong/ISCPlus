unit frCrdBillMenu;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons,
  ExtCtrls, Spin, Db, Messages, Dialogs, Mask, DBCtrls, Grids, DBGrids, ComCtrls,
  ImgList, ToolWin, n2wMoney, ActnList, AdvGlowButton, AdvToolBar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, System.Actions, AdvPanel;

type
  TfCrdBillMenu = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    ActionList1: TActionList;
    acPreview: TAction;
    acPrint: TAction;
    acDesigner: TAction;
    acClose: TAction;
    Label3: TLabel;
    acPayReg: TAction;
    Bevel2: TBevel;
    edLocat: TcxTextEdit;
    edLocName: TcxTextEdit;
    edTmbFm: TcxTextEdit;
    edBillFm: TcxTextEdit;
    AdvPanel1: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    tbPreview: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    tbClose: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbCloseClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure FormShow(Sender: TObject);
    procedure tbPreviewClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;


var
  fCrdBillMenu: TfCrdBillMenu;

implementation

uses  USoftFirm,CRDFincRecv, unfrPreview;

{$R *.DFM}

procedure TfCrdBillMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TfCrdBillMenu.tbCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TfCrdBillMenu.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
//  If UPPERCASE(NAME)='BAHTTEXT' Then
//  begin
//      SFMain.N2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.N2wBill.Text;
//  end;
//  If UPPERCASE(NAME)='DATETOTHAI' Then
//     VAL := SFMain.DateToThai(FRPARSER.Calc(P1),FRPARSER.Calc(P2));
end;

procedure TfCrdBillMenu.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  if Uppercase(ParName)='VTMBILL' then
     ParValue := EdtmbFm.Text;
  if Uppercase(ParName)='VLOCRECV' then
     ParValue := EdLocat.Text;
end;

procedure TfCrdBillMenu.FormShow(Sender: TObject);
begin
  EdTmbfm.Text   := CRDFincForm1.FldEdit4.Text;
  EdBillfm.Text  := CRDFincForm1.dbEdit11.Text;
  Edlocat.Text   := CRDFincForm1.DBLocat.Text;
  edLocName.Text := CRDFincForm1.Edit2.Text;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  if SFMain.XLevel = '1' then
//     FrReport1.ModifyPrepared := True;
end;

procedure TfCrdBillMenu.tbPreviewClick(Sender: TObject);
begin
//   frReport1.LoadFromFile(SFMain.frPath+'FORMS\fr_CrdTmpbill.fr3');
//   frCustPrev.Caption := 'Preview - '+frReport1.FileName;
//   frReport1.Preview := frCustPrev.frPreview1;
//   if frReport1.PrepareReport then
//   Begin
//     frReport1.ShowPreparedReport;
//     frCustPrev.ShowModal;
//   end;
end;

procedure TfCrdBillMenu.DesignBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(SFMain.frPath+'\FORMS\fr_CrdTmpbill.fr3');
//  frReport1.DesignReport;
end;

end.
