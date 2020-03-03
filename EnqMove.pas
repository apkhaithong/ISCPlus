unit EnqMove;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, Mask, DBCtrls, ComCtrls,
  ImgList, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, AdvGlowButton, cxDropDownEdit, cxCalendar,
  cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters,
  cxNavigator, dxCore, cxDateUtils, dxDateRanges;

type
  TFmEnqMove = class(TForm)
    Label7: TLabel;
    DBGrid1: TcxGrid;
    DBGrid1DBTableView1: TcxGridDBTableView;
    DBGrid1DBTableView1MOVFRM: TcxGridDBColumn;
    DBGrid1DBTableView1MOVTO: TcxGridDBColumn;
    DBGrid1DBTableView1PARTNO: TcxGridDBColumn;
    DBGrid1DBTableView1DESC1: TcxGridDBColumn;
    DBGrid1DBTableView1QTYMOV: TcxGridDBColumn;
    DBGrid1DBTableView1MOVDT: TcxGridDBColumn;
    DBGrid1DBTableView1MOVNO: TcxGridDBColumn;
    DBGrid1DBTableView1OFFICCOD: TcxGridDBColumn;
    DBGrid1Level1: TcxGridLevel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Bevel1: TBevel;
    Edit1: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    edFDate: TcxDateEdit;
    edDateTo: TcxDateEdit;
    enqBtn: TAdvGlowButton;
    closeBtn: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure enqBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEnqMove: TFmEnqMove;
  XDate,FrmDate,ToDate : TDateTime;
  XDay,XYear,XMonth : Word;

implementation

uses DmSet1,Dmic01,uSrcDlg,uSoftfirm;

{$R *.DFM}

procedure TFmEnqMove.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmEnqMove := Nil;
  Action :=caFree;
end;

procedure TFmEnqMove.FormShow(Sender: TObject);
begin
  edFdate.date  := date;
  edDateTo.Date :=date;
end;

procedure TFmEnqMove.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmEnqMove.enqBtnClick(Sender: TObject);
Var Ed2,Ed3,Ed4 : String;
begin
 {  If Edit1.Text ='' Then SFMain.RaiseException('ÂÑ§äÁèÃËÑÊÊÒ¢ÒâÍ¹ÂéÒÂ');
   If Edit6.Text ='' Then SFMain.RaiseException('ÂÑ§äÁèÃËÑÊÊÒ¢ÒÃÑºâÍ¹');
  }
   With FmDmic01.QEnqMv Do
   begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT A.MovFrm,A.MovTo,A.Movdt,A.Movno,A.Officcod, '+
             'A.Flag,B.Movno,B.Partno,B.Qtymov,B.Uprice,B.Totprc, '+
             'C.Partno,C.desc1 '+
             'From Mv_invoi A,Mv_Trans B,Invmast C '+
             'Where (A.MovFrm Like :XLocat) and (A.MovTo Like :XLocat1) '+
             'and (A.Movdt >=:XDate) and (A.Movdt <=:XDate1) and '+
             '(A.Movno = B.Movno) and (B.PartNo >=:XPart) and  '+
             '(B.PartNo <=:XPart1) And (A.Flag = ''T'') '+
             'and (B.PartNo = C.PartNo) Order By A.MovFrm,B.PartNo ');
     If edit4.text = '' Then
        Ed3 := ''
     Else
        Ed3 := Edit4.text;

     If edit5.text = '' Then
        Ed4 := 'ââââââââ'
     Else
        Ed4 := Edit5.text;

     Params[0].AsString := Edit1.text+'%';
     Params[1].AsString := Edit6.text+'%';
     Params[2].AsDate   := edFDate.Date;
     Params[3].AsDate   := edDateTo.Date;
     Params[4].AsString := Ed3;
     Params[5].AsString := Ed4;
     Open;
     If Bof and Eof Then
     SFMain.RaiseException('äÁèÁÕ¢éÍÁÙÅ');
   end;

end;

procedure TFmEnqMove.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSTK','HDSTK02_C_4');
end;

procedure TFmEnqMove.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl,0,0);
    Key := #0;
  end;
end;

procedure TFmEnqMove.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
    Edit1.text := fSrcDlg.Keyno;
end;

procedure TFmEnqMove.Edit6PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
    Edit6.text := fSrcDlg.Keyno;
end;

procedure TFmEnqMove.Edit4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
    Edit4.text := fSrcDlg.KeyNo;
end;

procedure TFmEnqMove.Edit5PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
    Edit5.text := fSrcDlg.KeyNo;
end;

end.
