unit UpInvoi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Gauges, StdCtrls, Buttons, Db, Grids, DBGrids, ImgList, ComCtrls, ToolWin,
  ExtCtrls, RzSpnEdt, RzPanel, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, BusinessSkinForm;

type
  TFupinvoi = class(TForm)
    AdvPanel1: TAdvPanel;
    Gauge1: TGauge;
    Label4: TLabel;
    Label6: TLabel;
    Label20: TLabel;
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    Prnbtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    Query1: TFDQuery;
    QRcinv: TFDQuery;
    Query2: TFDQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure PrnbtnClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fupinvoi: TFupinvoi;

implementation
uses Dmar,Srchdlgar,uSrcDlgAR,uSoftfirm;
{$R *.DFM}




procedure TFupinvoi.PrnbtnClick(Sender: TObject);
Var I,M,P : Longint;
     smpa,dis :real;
begin

  with  query1 do
  begin
  close;
  Sql.Clear;
  Sql.add('Select  INVNO,CUSCODE  FROM   ARINVOI  WHERE  CANDAT IS NULL AND LOCAT LIKE :0 AND INVNO LIKE:1 ');
          Params[0].asstring := Edit1.Text+'%';
          Params[1].asstring := Edit2.Text+'%';
          Open;

  end;

  Gauge1.Maxvalue := Query1.RecordCount;
  P:=1;
  Query1.First;
  
  while Not( Query1.Eof) do
  Begin
  Gauge1.Progress := p;

  with query2 do
  begin
  close;
  Sql.Clear;
  Sql.add(' SELECT  invno,cuscode,sum(total) as total,sum(disamt) as disamt from  arpaytrn where '+
          ' invno =:0 and  cuscode =:1 and candat is null group by invno,cuscode ');
            params[0].asstring := Query1.fieldbyname('invno').asstring;
            params[1].asstring := Query1.fieldbyname('cuscode').asstring;

            open;
  end;

  smpa := QUery2.fieldbyname('total').asfloat;
  dis := QUery2.fieldbyname('disamt').asfloat;

  with query2 do
  begin
  close;
  Sql.Clear;
  Sql.add(' SELECT  b.invno,a.cuscode,sum(b.payamt) as total  from  arbill a,arbiltr b  where '+
          ' a.arbilno = b.arbilno and b.invno =:0 and  a.cuscode =:1 and (a.refbil <> '''' and a.refbil is not null) group by invno,cuscode ');
            params[0].asstring := Query1.fieldbyname('invno').asstring;
            params[1].asstring := Query1.fieldbyname('cuscode').asstring;

            open;
  end;
  smpa := smpa+ QUery2.fieldbyname('total').asfloat;

  with  query2 do
  begin
  close;
  Sql.Clear;
  Sql.add('update  arinvoi set smpay =:0,reduaft =:1 where invno =:2 and cuscode =:3 ');
           params[0].asfloat := smpa;
           params[1].asfloat := dis;
           params[2].asstring := Query1.fieldbyname('invno').asstring;
           params[3].asstring := Query1.fieldbyname('cuscode').asstring;
          execsql;

  end;

  p := p+1;

  QUery1.Next;
  end;


  with  query1 do
  begin
  close;
  Sql.Clear;
  Sql.add('update  arinvoi set kang =nettotal-smpay-smchq-rtnamt  ');
           execsql;

  end;

  Prnbtn.Enabled := True;
  Gauge1.Progress :=0;
  Label4.Visible :=True;
end;

procedure TFupinvoi.Edit1Change(Sender: TObject);
begin
  Prnbtn.Enabled := Edit1.Text<>'';
end;


procedure TFupinvoi.CloseBtnClick(Sender: TObject);
begin
 close;
end;

procedure TFupinvoi.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDFIN','HDFIN02_4');
end;

procedure TFupinvoi.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR,fSrcDlgAR);
  If fSrcDlgAR.ShowModalLocat=Mrok Then
  Edit1.Text := fSrcDlgAR.Keyno;
end;

procedure TFupinvoi.Edit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 Application.Createform(TfSrcDlgAR,fSrcDlgAR);
 If fSrcDlgAR.ShowModalArinv=Mrok Then
    edit2.text := fSrcDlgAR.Keyno;
end;

procedure TFupinvoi.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key = #13) then
  Begin
   Perform(Wm_nextDlgctl,0,0);
   Key := #0;
  End;
end;

procedure TFupinvoi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
  Fupinvoi := nil;
end;

end.
