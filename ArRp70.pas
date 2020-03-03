unit Arrp70;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, AdvGlowButton, AdvToolBar, AdvGroupBox,
  AdvOfficeButtons, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm;

type
  TArRp_70 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label20: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioG1: TAdvOfficeRadioGroup;
    Edit_Locat: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure PrevbtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrnbtnClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    aReport : TQuickRep;
    Procedure PickReport;                                            
  public
    { Public declarations }
  end;

var
  ArRp_70: TArRp_70;

implementation

uses ArRp71,DmAr,uSrcDlg,uSoftfirm;

{$R *.DFM}

procedure TArRp_70.PrevbtnClick(Sender: TObject);
begin
  showmessage('อยู่ระหว่างการปรับปรุง..!');
end;

procedure TArRp_70.PickReport;
begin
 Application.CreateForm(TQArRp_71,QArRp_71);
 aReport := QArRp_71.QRep;
end;


procedure TArRp_70.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End;
end;

procedure TArRp_70.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  ArRp_70 := nil;
end;

procedure TArRp_70.PrnbtnClick(Sender: TObject);
begin
  if Edit2.Text<>'' then
  Begin
      PickReport;
      aReport.Print;
  end else
  Begin
     MessageDlg(' ยังไม่ได้ใส่รหัสลูกค้า ? ', mtinformation, [mbok],0);
     exit;
  end;

end;

procedure TArRp_70.Edit2Change(Sender: TObject);
begin
//  PrnBtn.Enabled := Edit2.Text<>'';
//  PrveBtn.Enabled := Edit2.Text<>'';
end;

procedure TArRp_70.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO','HDREP02_5_6');
end;

procedure TArRp_70.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArRp_70.Edit_LocatPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TArRp_70.Edit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalAR=Mrok Then
    Edit2.Text := fSrcDlg.Keyno;
end;

procedure TArRp_70.FormShow(Sender: TObject);
begin
   Edit_Locat.Text    := SFMain.Xlocat;
   Edit_Locat.Properties.ReadOnly:= SFMain.XChgLoc <>'Y';
   Edit_DateTo.Date   := Date;
   Edit_DateFrom.Date := Date;
end;

end.
