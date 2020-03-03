unit ArRp60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, Printers, Grids, DBGrids, ImgList,
  ComCtrls, ToolWin, RzSpnEdt, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, BusinessSkinForm;

type
  TArRp_60 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit_Locat: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevbtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    aReport : TQuickRep;
    Procedure PickReport;
  public
    SortText : String;
    { Public declarations }
  end;

var
  ArRp_60: TArRp_60;

implementation

uses  ArRp61, DmAr,uSrcDlg,uSoftfirm;

{$R *.DFM}

procedure TArRp_60.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key = #13) then
  Begin
   Perform(Wm_nextDlgctl,0,0);
   Key := #0;
  End;
end;

procedure TArRp_60.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := Cafree;
 ArRp_60 := nil;
end;

procedure TArRp_60.PrevbtnClick(Sender: TObject);
begin
  showmessage('อยู่ระหว่างการปรับปรุง..!');
end;

procedure TArRp_60.PickReport;
begin

end;



procedure TArRp_60.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO','HDREP02_5_7');
end;

procedure TArRp_60.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArRp_60.Edit_LocatPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModallOCAT=Mrok Then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TArRp_60.FormShow(Sender: TObject);
begin
   label2.caption := 'ณ.วันที่ '+Datetostr(date);
   Edit_Locat.Text    := SFMain.Xlocat;
   Edit_Locat.Properties.ReadOnly:= SFMain.XChgLoc <>'Y';
end;

end.
