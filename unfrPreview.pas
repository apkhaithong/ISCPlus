unit unfrPreview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Buttons, RzSpnEdt, ComCtrls, ToolWin,
  ActnList, RzStatus, AdvGlowButton, AdvPanel,
  AdvSplitter,IniFiles, System.Actions;

type
  TfrCustPrev = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    procedure frSpeedButton4Click(Sender: TObject);
    procedure frSpeedButton5Click(Sender: TObject);
    procedure frSpeedButton6Click(Sender: TObject);
    procedure frSpeedButton7Click(Sender: TObject);
    procedure RFBtnLoad1Click(Sender: TObject);
    procedure frSpeedButton9Click(Sender: TObject);
    procedure frSpeedButton10Click(Sender: TObject);
    procedure frSpeedButton1Click(Sender: TObject);
    procedure frSpeedButton2Click(Sender: TObject);
    procedure frSpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RFBtnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RFBtnFirstClick(Sender: TObject);
    procedure RFBtnLastClick(Sender: TObject);
    procedure RFBtnNextClick(Sender: TObject);
    procedure RFBtnPrevClick(Sender: TObject);
    procedure RFBtnLoadClick(Sender: TObject);
    procedure RFBtnSaveClick(Sender: TObject);
    procedure RFBtnPrintClick(Sender: TObject);
    procedure RFBtnCloseClick(Sender: TObject);
    procedure RFBtnEditPageClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure RFBtnPageNfitClick(Sender: TObject);
    procedure RFBtnPagefitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    nZoom : String;
  public
    { Public declarations }
  end;

var
  frCustPrev: TfrCustPrev;
  TSVConfig : TiniFile;

implementation
uses uSoftFirm, uPaymntPos_01, uPos;

{$R *.DFM}

procedure TfrCustPrev.frSpeedButton4Click(Sender: TObject);
begin
//  frPreview1.First;
end;

procedure TfrCustPrev.frSpeedButton5Click(Sender: TObject);
begin
//  frPreview1.Prev;
end;

procedure TfrCustPrev.frSpeedButton6Click(Sender: TObject);
begin
//  frPreview1.Next;
end;

procedure TfrCustPrev.frSpeedButton7Click(Sender: TObject);
begin
//  frPreview1.Last;
end;

procedure TfrCustPrev.RFBtnLoad1Click(Sender: TObject);
begin
//  frPreview1.LoadFromFile;
end;

procedure TfrCustPrev.frSpeedButton9Click(Sender: TObject);
begin
//  frPreview1.SaveToFile;
end;

procedure TfrCustPrev.frSpeedButton10Click(Sender: TObject);
begin
//  frPreview1.Print;
end;

procedure TfrCustPrev.frSpeedButton1Click(Sender: TObject);
begin
//  frPreview1.Zoom := frPreview1.Zoom - 10;
end;

procedure TfrCustPrev.frSpeedButton2Click(Sender: TObject);
begin
//  frPreview1.Zoom := 100;
  nZoom := '1';
end;

procedure TfrCustPrev.frSpeedButton3Click(Sender: TObject);
begin
//  frPreview1.Zoom := frPreview1.Zoom + 10;
end;

procedure TfrCustPrev.FormActivate(Sender: TObject);
begin
  TSVConfig   := TiniFile.Create(ExtractFilePath(Application.ExeName)+'SVConfig.ini');
  nZoom       := TSVConfig.ReadString('frPreview','ZoomOption','');
  if nZoom = '' then nZoom := '2';

  if nZoom = '1' then
  begin
//    frSpeedButton2.Down := True;
    frSpeedButton2Click(nil);
  end else
  if nZoom = '2' then
  begin
//    RFBtnPageNfit.Down := True;
    RFBtnPageNfitClick(nil);
  end else
  begin
//    RFBtnPagefit.Down := True;
    RFBtnPagefitClick(nil);
  end;

  if Assigned(FPaymntPos_01) Then
    begin
      RFBtnPrintClick(Sender);
      Close;
    end;
end;

procedure TfrCustPrev.RFBtnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrCustPrev.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  frPreview1.Window.FormKeyDown(Sender, Key, Shift);
end;

procedure TfrCustPrev.RFBtnFirstClick(Sender: TObject);
begin
//  frPreview1.First;
end;

procedure TfrCustPrev.RFBtnLastClick(Sender: TObject);
begin
//  frPreview1.Last;
end;

procedure TfrCustPrev.RFBtnNextClick(Sender: TObject);
begin
//  frPreview1.Next;
end;

procedure TfrCustPrev.RFBtnPrevClick(Sender: TObject);
begin
//  frPreview1.Prev;
end;

procedure TfrCustPrev.RFBtnLoadClick(Sender: TObject);
begin
//  frPreview1.LoadFromFile;
end;

procedure TfrCustPrev.RFBtnSaveClick(Sender: TObject);
begin
//  frPreview1.SaveToFile;
end;

procedure TfrCustPrev.RFBtnPrintClick(Sender: TObject);
begin
//  frPreview1.Print;
end;

procedure TfrCustPrev.RFBtnCloseClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrCustPrev.RFBtnEditPageClick(Sender: TObject);
begin
//  frPreview1.PageSetupDlg;
end;

procedure TfrCustPrev.Action1Execute(Sender: TObject);
begin
  RFBtnCloseClick(Sender);
end;

procedure TfrCustPrev.RFBtnPageNfitClick(Sender: TObject);
begin
//  frPreview1.Zoom := 150;
  nZoom := '2';
end;

procedure TfrCustPrev.RFBtnPagefitClick(Sender: TObject);
begin
//  frPreview1.TwoPages;
  nZoom := '3';
end;

procedure TfrCustPrev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TSVConfig   := TiniFile.Create(ExtractFilePath(Application.ExeName)+'SVConfig.ini');
  TSVConfig.WriteString('frPreview','ZoomOption',nZoom);
end;

end.
