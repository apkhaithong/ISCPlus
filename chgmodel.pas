unit chgmodel;

interface        
                             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, RzButton, RzPanel, RzRadGrp, Mask,
  RzEdit, RzPrgres, RzSpnEdt, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  cxLookAndFeelPainters, cxGroupBox, cxRadioGroup, cxGraphics, cxLookAndFeels,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm;

type
  TFchgmdl = class(TForm)
    AdvPanel1: TAdvPanel;
    ProgressBar1: TRzProgressBar;
    Label40: TLabel;
    Label3: TLabel;
    Edit1: TcxButtonEdit;
    RadioGroup1: TcxRadioGroup;
    Query1: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    ChgBtn: TAdvGlowButton;
    BtnClose: TAdvGlowButton;
    Edit2: TcxButtonEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure ChgbtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure Edit2PropertiesChange(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fchgmdl: TFchgmdl;

implementation
uses DmSvSet,uSrcdlg, USoftFirm, Dmsec;
{$R *.DFM}

procedure TFchgmdl.ChgbtnClick(Sender: TObject);
begin
  If Edit1.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสเดิม');
  If Edit2.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสใหม่');

  if RadioGroup1.itemindex=0 Then
  begin
    ProgressBar1.Percent := 10;
    with Query1 do
    begin
     close;
     Sql.Clear;
     Sql.Add('UPDATE SVMAST SET MDLCOD=:EDIT1 WHERE MDLCOD=:EDIT2');
     params[0].asstring := edit2.text;
     params[1].asstring := edit1.text;
     EXECSQL;
    end;
    ProgressBar1.Percent := 20;


    with Query1 do
    begin
     close;
     Sql.Clear;
     Sql.Add('UPDATE GRPORD SET MDLCOD=:EDIT1 WHERE MDLCOD=:EDIT2');
     params[0].asstring := edit2.text;
     params[1].asstring := edit1.text;
     EXECSQL;
    end;
    ProgressBar1.Percent := 60;
    with Query1 do
    begin
     close;
     Sql.Clear;
     Sql.Add('UPDATE GRPSERV SET MDLCOD=:EDIT1 WHERE MDLCOD=:EDIT2');
     params[0].asstring := edit2.text;
     params[1].asstring := edit1.text;
     EXECSQL;
    end;
    ProgressBar1.Percent := 75;

    with Query1 do
    begin
     close;
     Sql.Clear;
     Sql.Add('UPDATE SERVTRAN SET MDLCOD=:EDIT1 WHERE MDLCOD=:EDIT2');
     params[0].asstring := edit2.text;
     params[1].asstring := edit1.text;
     EXECSQL;
    end;
    ProgressBar1.Percent := 80;

    with Query1 do
    begin
     close;
     Sql.Clear;
     Sql.Add('UPDATE COLRTRAN SET MDLCOD=:EDIT1 WHERE MDLCOD=:EDIT2');
     params[0].asstring := edit2.text;
     params[1].asstring := edit1.text;
     EXECSQL;
    end;
    ProgressBar1.Percent := 85;


    with Query1 do
    begin
      close;
      Sql.Clear;
      Sql.Add('UPDATE JOBORDER SET MDLCOD =:EDIT1 WHERE MDLCOD=:EDIT2 ');
      params[0].asstring := edit2.text;
      params[1].asstring := edit1.text;
      EXECSQL;
    end;
    ProgressBar1.Percent := 100;
  end;
end;


procedure TFchgmdl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  Fchgmdl := nil;
end;

procedure TFchgmdl.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_8');
  RadioGroup1.itemindex:=0;
end;

procedure TFchgmdl.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalModel=Mrok Then
    edit1.text := fSrcDlg.Keyno;
end;

procedure TFchgmdl.Edit1PropertiesChange(Sender: TObject);
begin
  edit2.enabled := edit1.text<>'';
end;

procedure TFchgmdl.Edit2PropertiesChange(Sender: TObject);
begin
  Chgbtn.enabled := edit2.text<>'';
end;

procedure TFchgmdl.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFchgmdl.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End;
end;

procedure TFchgmdl.Edit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalModel=Mrok Then
    edit1.text := fSrcDlg.Keyno;
end;

end.
