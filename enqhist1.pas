unit Enqhist1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, DB, Dbkbd, ImgList, ToolWin, RzDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFEnqHist = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit28: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit10: TDBEdit;
    Label23: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit26: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit11: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label24: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit5: TDBEdit;
    Label25: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    DBEdit23: TDBEdit;
    Label5: TLabel;
    DBEdit24: TDBEdit;
    Label36: TLabel;
    DBEdit38: TDBEdit;
    Label37: TLabel;
    DBEdit8: TDBEdit;
    Label38: TLabel;
    DBEdit9: TDBEdit;
    Label39: TLabel;
    DBEdit19: TDBEdit;
    QJoborder3: TFDQuery;
    SoJoborder3: TDataSource;
    QOthInvoi: TFDQuery;
    SoOthinv: TDataSource;
    Qsvmast: TFDQuery;
    Sosvmast: TDataSource;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    TabSheet10: TTabSheet;
    DBMemo1: TDBMemo;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    EnqBtn: TToolButton;
    CloseBtn: TToolButton;
    PrnBtn: TToolButton;
    GroupBox1: TGroupBox;
    Label40: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit45: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit18: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit17: TDBEdit;
    Edit3: TEdit;
    Label7: TLabel;
    DBGrid1: TRzDBGrid;
    Bevel1: TBevel;
    CheckBox1: TCheckBox;
    Bevel2: TBevel;
    DBGrid_Sv: TRzDBGrid;
    DBGrid_OL: TRzDBGrid;
    Bevel3: TBevel;
    Bevel4: TBevel;
    DBGrid_Ot: TRzDBGrid;
    DBGrid_Cr: TRzDBGrid;
    Bevel5: TBevel;
    Bevel6: TBevel;
    DBGrid_Pt: TRzDBGrid;
    RzDBGrid1: TRzDBGrid;
    Bevel7: TBevel;
    DBGrid3: TRzDBGrid;
    Bevel8: TBevel;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure CheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEnqHist: TFEnqHist;

implementation
uses DmSv,Srchdlg1,Prnhis10,uSrcDlg1,uSoftfirm;
{$R *.DFM}

procedure TFEnqHist.FormCreate(Sender: TObject);
begin
  sfmain.Check_right(HSV,'SV03');
  PageControl1.ActivePage :=TabSheet1;
  PageControl1.Enabled := False;
  Dm_Sv.QSvmast.Close;
end;

procedure TFEnqHist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QJoborder3.Close;
  QSvmast.Close;
  QOthInvoi.Close;
  FEnqHist := Nil;   
  Action :=Cafree;
end;

procedure TFEnqHist.PageControl1Change(Sender: TObject);
begin
  If QJoborder3.FieldByName('JOBNO').Asstring='' Then
  SFMain.RaiseException('ยังไม่มี JOB งาน สำหรับรถคันนี้');

  If PageControl1.ActivePage =TabSheet3 Then
   with Dm_Sv.QServtran1 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = :XNO ');
     Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring ;
     Open ;
    end;
    //
   If PageControl1.ActivePage =TabSheet4 Then
   Begin
     with Dm_Sv.QOiltran1 do
     begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM PARTTRAN WHERE JOBNO = :XNO AND GROUP1=''OL'' ');
       Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring ;
       Open ;
     end;
   End;

   If PageControl1.ActivePage =TabSheet5 Then
   with Dm_Sv.QOuttran1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO = :XNO ');
     Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring ;
     Open ;
    end;
   If PageControl1.ActivePage =TabSheet6 Then
   with Dm_Sv.QColrtran1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO = :XNO ');
     Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring ;
     Open ;
    end;
   If PageControl1.ActivePage =TabSheet7 Then
   Begin
     With Dm_Sv.QParttran1 Do
     begin
       Close;
       SQL.Clear;
       SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO AND GROUP1<>''OL'' ');
       Params[0].AsString := QJOborder3.FieldByName('JOBNO').Asstring;
       Open;
     end;
   End;

   If PageControl1.ActivePage =TabSheet8 Then
   with Dm_Sv.QOrdrep1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = :XNO ');
     Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring ;
     Open ;
    end;
   If PageControl1.ActivePage =TabSheet9 Then
   with QOthInvoi do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM OTHINVOI WHERE JOBNO = :XNO ');
     Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring ;
     Open ;
    end;

end;

procedure TFEnqHist.EnqBtnClick(Sender: TObject);
begin
 Application.Createform(TfSrcDlg1,fSrcDlg1);
 If fSrcDlg1.ShowModalSvmst=Mrok Then
 begin
   with QSvmast do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM SVMAST WHERE STRNO= :XSTRNO  ');
     Params[0].Asstring := fSrcDlg1.Keyno ;
     Open;
   end;
   if QSvmast.Bof and QSvmast.eof then
   SFMain.RaiseException('ไม่มีขอ้มูล.ในแฟ้มประวัติรถ');

   If length(QSvmast.FieldByName('MDLCOD').Asstring)>10 Then
   SFMain.RaiseException('รหัสรุ่นรถยาวเกิน 10 ตัว กรุณาแก้ไขก่อน  ->หมายเลขถังรถ '+QSvmast.FieldByName('STRNO').Asstring);

   with QJoborder3 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM JOBORDER WHERE STRNO = :XNO ORDER BY RECVDATE');
     Params[0].Asstring := QSvmast.Fieldbyname('Strno').Asstring ;
     Open ;
    end;

   with Dm_Sv.QModelmst do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM MODELMST WHERE MDLCOD= :XMDL  ');
     Params[0].Asstring := QJoborder3.FieldByName('MDLCOD').Asstring ;
     Open;
   end;

   with Dm_Sv.Query1 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM ArMAST WHERE CUSCOD= :XNO  ');
     Params[0].Asstring := QSvmast.FieldByName('Cuscod').Asstring ;
     Open;
     Edit3.Text := Dm_sv.Query1.Fieldbyname('NAME1').Asstring+' '+
                   Dm_sv.Query1.Fieldbyname('NAME2').Asstring;
   end;

   with Dm_Sv.Query1 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT TYPECOD,TYPENAM FROM TYPEMST WHERE TYPECOD= :XNO  ');
     Params[0].Asstring := QSvmast.FieldByName('TYPE').Asstring ;
     Open;
   end;

   with Dm_Sv.Query1 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM MODELMST WHERE MDLCOD= :XNO  ');
     Params[0].Asstring := QSvmast.FieldByName('MDLCOD').Asstring ;
     Open;
     If Not(Bof and Eof) Then
   end;    

   PageControl1.Enabled := True;
 End;
end;

procedure TFEnqHist.PrnBtnClick(Sender: TObject);
begin
 If Not(QSvmast.Active) Then
  SFMain.RaiseException('ยังไม่ Query ประวัติ');
  Application.CreateForm(TFprnhis10,Fprnhis10);
  Fprnhis10.Label6.caption := DBEdit39.text;
  Fprnhis10.ShowModal;
end;


procedure TFEnqHist.CheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  with QJoborder3 do
  begin
    Close;
    Sql.Clear;
    If CheckBox1.checked Then
       Sql.Add('SELECT * FROM JOBORDER WHERE STRNO = :XNO ORDER BY RECVDATE DESC')
    Else
       Sql.Add('SELECT * FROM JOBORDER WHERE STRNO = :XNO ORDER BY RECVDATE');
    Params[0].Asstring := QSvmast.Fieldbyname('Strno').Asstring ;
    Open ;
  end;
end;

procedure TFEnqHist.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.
