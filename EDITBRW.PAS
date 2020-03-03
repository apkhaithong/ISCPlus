unit EditBrw;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, Mask, DBCtrls,
  ImgList, ComCtrls, ToolWin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmEditbrw = class(TForm)
    BitBtn1: TBitBtn;
    QHlpbinv: TFDQuery;
    DataSource1: TDataSource;
    DBGrid_Inv: TDBGrid;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit3: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Query1: TFDQuery;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    SaveBtn: TToolButton;
    CloseBtn: TToolButton;
    ImageList1: TImageList;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEditbrw: TFmEditbrw;

implementation

uses IcMenu,Dmic01,Srchdlg, DmSet1;

{$R *.DFM}

procedure TFmEditbrw.BitBtn1Click(Sender: TObject);
begin
  If Edit1.Text ='' Then SFMain.RaiseException('ยังไม่บันทึกรหัสสาขา');
  WITH Qhlpbinv DO
   begin
    close;
    sql.clear;
    If RadioGroup1.Itemindex =0 Then
       Sql.Add('SELECT  PARTNO,LOCAT,DESC1,GROUP1,SHELF FROM INVENTOR  '+
       'WHERE  LOCAT=:Edit1 AND PARTNO LIKE :EDIT2 ');

    If RadioGroup1.Itemindex =1 Then
       Sql.Add('SELECT  A.PARTNO,A.LOCAT,A.YEAR1,A.DESC1,A.GROUP1,A.PRICE1,A.PRICE2,A.PRICE3,A.PRICE4,A.SHELF,A.CODE_T,B.ALLO_12  FROM INVENTOR A,INVANLS B '+
       'WHERE A.PARTNO=B.PARTNO AND A.LOCAT=B.LOCAT AND A.YEAR1 = B.YEAR1 AND A.LOCAT=:Edit1 AND A.DESC1 LIKE :EDIT2 ');

    Params[0].asstring := EDIT1.TEXT;
    Params[1].asstring := EDIT2.TEXT+'%' ;
    open;
   end;
end;

procedure TFmEditbrw.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QHlpbinv.Close;
  Query1.Close;
  Action :=caFree;
end;

procedure TFmEditbrw.FormShow(Sender: TObject);
begin
  RadioGroup1.Itemindex :=0;
  Edit1.Text := Mainform.Xlocat;
  with Query1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:XCODE');
   PARAMS[0].ASSTRING :=EDIT1.TEXT;
   Open ;
  end;
  Edit3.Text := QUERY1.Fieldbyname('Locatnam').Asstring;
end;

procedure TFmEditbrw.SpeedButton1Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalLocat=Mrok Then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD = :XCUSCOD ');
      Params[0].Asstring := SearchDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
    SFMain.RaiseException('ไม่พบข้อมูล');
    Edit1.Text := Dm_Set1.Query1.Fieldbyname('Locatcod').Asstring;
    Edit3.Text := Dm_Set1.Query1.Fieldbyname('Locatnam').Asstring;
  end;
end;

procedure TFmEditbrw.DataSource1StateChange(Sender: TObject);
begin
  SaveBtn.Enabled := DataSource1.DataSet.State = DsEdit;
  If DataSource1.DataSet.State = DsInsert Then
  DataSource1.DataSet.cancel;
end;

procedure TFmEditbrw.SaveBtnClick(Sender: TObject);
begin
  If QHlpbinv.State=Dsedit Then
  QHlpbinv.Post;
  FmDmic01.HI_DBMS.ApplyUpdates([QHlpbinv]);
end;

procedure TFmEditbrw.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) then
   If not (ActiveControl is TDbGrid ) Then
   Begin
      Perform(Wm_nextDlgctl,0,0);
      Key := #0;
   End
   Else If (ActiveControl is TDbGrid ) Then
   With TDBGrid(ActiveControl) Do
      If Selectedindex < (FieldCount-1) Then
         Selectedindex := Selectedindex+1
      else
      begin
         Selectedindex := 2;
         If QHlpbinv.State = DsEdit Then
            QHlpbinv.Next;
      end;

end;

procedure TFmEditbrw.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

end.
