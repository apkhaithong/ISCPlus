unit Enqpkrt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, DB, ExtCtrls, ImgList,
  ComCtrls, ToolWin;

type
  TFEnqPkRt = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    EnqBtn: TToolButton;
    CloseBtn: TToolButton;
    ImageList1: TImageList;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEnqPkRt: TFEnqPkRt;

implementation
Uses Dmic01,SrchDlg;
{$R *.DFM}

procedure TFEnqPkRt.BitBtn1Click(Sender: TObject);
begin
  If Edit1.Text <>'' Then
  With FmDmic01.Query1 Do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT T.PKNO,T.PARTNO,T.QTYOUT,T.JOBNO,'+
    'T.FLAG,M.PARTNO,M.DESC1 '+
    ',CASE T.FLAG WHEN ''3'' THEN ''เบิก''  WHEN  ''S'' THEN ''คืน'' END AS STAT '+
    ' FROM PK_TRANS T, '+
    'INVENTOR M WHERE (T.PARTNO=M.PARTNO) AND (T.PKLOCAT=M.LOCAT) AND '+
    '(T.FLAG=''3'' OR T.FLAG=''S'') AND T.JOBNO=:EDIT1 ORDER BY T.JOBNO,T.PARTNO,T.FLAG');
    Params[0].Asstring := EDIT1.TEXT;
    OPEN;
  end;
end;

procedure TFEnqPkRt.SpeedButton1Click(Sender: TObject);
begin
 Application.Createform(TSearchDlg,SearchDlg);
 If SearchDlg.ShowModalAllJob=Mrok Then
 begin
  Edit1.text  := SearchDlg.Keyno ;
  BitBtn1Click(Sender);
 end;
end;

procedure TFEnqPkRt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmDmic01.Query1.Close;
  Action := Cafree;
end;

procedure TFEnqPkRt.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.
