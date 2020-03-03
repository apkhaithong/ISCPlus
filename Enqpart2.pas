unit Enqpart2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, Mask, DBCtrls,
  Spin, ImgList, ComCtrls, ToolWin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmEnqpart2 = class(TForm)
    Query2: TFDQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    SpinEdit1: TSpinEdit;
    Edit1: TEdit;
    Panel2: TPanel;
    DBGrid_Inv: TDBGrid;
    Query1: TFDQuery;
    QTemptb2: TFDQuery;
    Label4: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    EnqBtn: TToolButton;
    CloseBtn: TToolButton;
    ImageList1: TImageList;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEnqpart2: TFmEnqpart2;
  Year,Month,Day :Word;
implementation

uses DmSet1,Srchdlg, USoftFirm;

{$R *.DFM}

procedure TFmEnqpart2.BitBtn1Click(Sender: TObject);
Var S1,S2,Pt1,Pt2 : String;
begin
  If Edit1.Text='' Then
  SFMain.RaiseException('ยังไม่ระบุรหัสสาขา');
  With Query1 Do
  begin
    close;
    sql.clear;
    Sql.Add('DELETE FROM TEMPTB2 ');
    EXECSQL;
  end;

  With Query1 Do
  begin
    close;
    sql.clear;
    Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO=:1 AND LOCAT=:2');
    Params[0].Asstring := Edit2.Text;
    Params[1].Asstring := Edit1.Text;
    Open;
    If Not(Bof and Eof) Then
    If Query1.Fieldbyname('Code_T').Asstring='' Then
    SFMain.RaiseException('ไม่มีรหัสทดแทน');
    Pt1:= Query1.Fieldbyname('PARTNO').Asstring;
    Pt2:= Query1.Fieldbyname('Code_T').Asstring;
    Label4.Caption:=Query1.Fieldbyname('Desc1').Asstring;
  end;

  With QTemptb2 Do
  begin
    close;
    sql.clear;
    Sql.Add('SELECT * FROM TEMPTB2 WHERE PARTNO='''' ');
    Open;
  end;

  While PT1<>PT2 do
  Begin
    WITH Query2   DO
    begin
      S1 := 'B.ONHN_'+Inttostr(SpinEdit1.value);
      S2 := 'B.ALLO_'+Inttostr(SpinEdit1.value);
      close;
      sql.clear;
      Sql.Add('SELECT  A.LOCAT,A.PARTNO,A.YEAR1,A.DESC1,A.GROUP1,A.PRICE1,A.PRICE2,A.PRICE3,A.PRICE4,A.SHELF,A.CODE_T,'+S2+' AS ALO,'+S1+' As ONH ,'+
       'B.LOCAT,A.GROUP1,A.NETPRC  FROM INVENTOR A,INVANLS B '+
       'WHERE A.LOCAT =:EDIT1 AND A.PARTNO =:EDIT2 AND '+
       '(A.PARTNO=B.PARTNO) AND (A.LOCAT=B.LOCAT) AND (A.YEAR1 = B.YEAR1) ');
      Params[0].asstring := EDIT1.TEXT;
      Params[1].asstring := PT2;
      open;
    end;
    If Not(Query2.Bof and Query2.Eof) Then
    Begin
      QTemptb2.Insert;
      With QTemptb2 Do
      begin
        Fieldbyname('Locat').Asstring  := Query2.Fieldbyname('Locat').Asstring;
        Fieldbyname('Partno').Asstring := Query2.Fieldbyname('Partno').Asstring;
        Fieldbyname('Desc').Asstring   := Query2.Fieldbyname('Desc1').Asstring;
        Fieldbyname('Onhn').Asfloat    := Query2.Fieldbyname('Alo').Asfloat;
        Fieldbyname('Demn_1').AsFloat  := Query2.Fieldbyname('Price1').AsFloat;
        Fieldbyname('Demn_2').AsFloat  := Query2.Fieldbyname('Price2').AsFloat;
        Fieldbyname('Demn_3').AsFloat  := Query2.Fieldbyname('Price3').AsFloat;
        Fieldbyname('Demn_4').AsFloat  := Query2.Fieldbyname('Price4').AsFloat;
        Fieldbyname('Jobno').Asstring  := Query2.Fieldbyname('Shelf').Asstring;
        Fieldbyname('Group1').Asstring := Query2.Fieldbyname('Group1').Asstring;
        Fieldbyname('Model').Asstring  := Query2.Fieldbyname('Netprc').Asstring;
      end;
      QTemptb2.Post;
    end;

    If Not(Query2.Bof and Query2.Eof) Then
    Begin
      If Query2.Fieldbyname('Code_T').Asstring<>'' Then
       Pt2:= Query2.Fieldbyname('Code_T').Asstring
      Else
       Pt2:=Pt1;
    end;

  end;

end;

procedure TFmEnqpart2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QTemptb2.Close;
  Action :=caFree;
end;

procedure TFmEnqpart2.FormShow(Sender: TObject);
begin
  DecodeDate(Now,Year,Month,Day);
  SpinEdit1.value := Month;
end;


procedure TFmEnqpart2.SpeedButton1Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalLocat=Mrok Then
  EDIT1.TEXT := SearchDlg.Keyno;
end;


procedure TFmEnqpart2.SpeedButton2Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalParts=Mrok Then
  EDIT2.TEXT := SearchDlg.Keyno;
end;




procedure TFmEnqpart2.FormCreate(Sender: TObject);
begin
  Edit1.Text := sfMain.Xlocat;
  Label4.Caption :='';
end;


procedure TFmEnqpart2.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.
