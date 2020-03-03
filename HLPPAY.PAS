unit HlpPay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, DB, ExtCtrls;

type
  THlp_Pay = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Hlp_Pay: THlp_Pay;

implementation

uses DmAr;

{$R *.DFM}

procedure THlp_Pay.FormShow(Sender: TObject);
begin
  with Dm_Ar.QUERY1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT CUSCODE,LOCAT,INVNO,INVDATE,INVDUE,TAXNO,TAXDATE,JOBNO,(KANG-RTNAMT) AS KANG,TNOPAY AS '+
    'NOPAY  FROM ARINVOI WHERE (FLAG=''2'' OR FLAG=''D'') AND TNOPAY=1 AND KANG>0 AND LOCAT=:EDIT1 AND '+
    'CUSCODE=:EDIT2  ' +
    'UNION '+
    'SELECT A.CUSCODE,B.LOCAT,B.INVNO,A.INVDATE,B.DDATE AS '+
    'INVDUE,TAXNO,TAXDATE,JOBNO,(B.DAMT-B.PAYMENT) AS KANG,B.NOPAY FROM ARINVOI A, '+
    'ARPAY B WHERE (A.INVNO=B.INVNO) AND KANG>0 AND B.LOCAT=:EDIT1 '+
    'AND A.CUSCODE=:EDIT2 ORDER BY INVDUE,INVNO ');

    Params[0].Asstring := DM_AR.QArbillLOCAT.Asstring;
    Params[1].Asstring := DM_AR.QArbillCUSCODE.Asstring;
    Open;
  end;
end;

procedure THlp_Pay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure THlp_Pay.BitBtn2Click(Sender: TObject);
begin
// If Dm_Ap1.QAppay.Active Then  Dm_Ap1.QAppay.Cancel;
end;

end.
