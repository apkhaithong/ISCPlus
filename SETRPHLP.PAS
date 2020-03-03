unit SetRpHlp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmHpRp = class(TForm)
    DBGrid_Loc: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RadioGroup1: TRadioGroup;
    Query1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid_Inv: TDBGrid;
    Grid_Group: TDBGrid;
    DBGrid_typ: TDBGrid;
    DBGrid_Ap: TDBGrid;
    DBGrid_Ar: TDBGrid;
    DBGrid1_Pty: TDBGrid;
    DBGrid1_BK: TDBGrid;
    DBGrid1_Rt: TDBGrid;
    DBGrid1_off: TDBGrid;
    DBGrid1_Bo: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmHpRp: TFmHpRp;

implementation

{$R *.DFM}

procedure TFmHpRp.BitBtn1Click(Sender: TObject);
begin
  WITH Query1 DO
   begin
    close;
    sql.clear;
     If DBGrid1_Bo.Visible Then
        Sql.add('SELECT * FROM BOOK WHERE BKCODE LIKE :EDIT1');
     If DBGrid1_OFF.Visible Then
        Sql.add('SELECT * FROM OFFICER WHERE OFFICCOD LIKE :EDIT1');
     If DBGrid1_Rt.visible Then
        Sql.add('SELECT * FROM RTCHQ WHERE RTCODE LIKE :EDIT1');
     If DBGrid1_BK.Visible Then
        Sql.add('SELECT * FROM BKMAST WHERE BKCODE LIKE :EDIT1');
     If DBGrid1_Pty.visible Then
        Sql.add('SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1');
     If DBGrid_Ap.Visible Then
        sql.add('SELECT APCODE,APNAME,ADDR1,ADDR2 FROM APMAST '+
                'WHERE (APCODE LIKE :EDIT1) ORDER BY APCODE');
     if DBGrid_Ar.Visible then
        Sql.Add('SELECT CUSCOD,SNAM,NAME1,NAME2 '+
                'FROM ARMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
     If Grid_Group.Visible Then
        sql.add('SELECT * FROM GroupMst WHERE GroupCod LIKE :EDIT1 ORDER BY GroupCod');
     if Dbgrid_Inv.Visible then
     begin
       If RadioGroup1.Itemindex =0 Then
          Sql.Add('SELECT PARTNO,DESC,TYPE,MODEL,NETPRC '+
                  'FROM INVMAST WHERE PARTNO LIKE :EDIT1 ORDER BY PARTNO');
       If RadioGroup1.Itemindex =1 Then
          Sql.Add('SELECT PARTNO,DESC,TYPE,MODEL,NETPRC '+
                  'FROM INVMAST WHERE DESC LIKE :EDIT1 ORDER BY DESC');
     end;
     if Dbgrid_Loc.Visible then
        Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD LIKE :EDIT1 ORDER BY LOCATCOD');
     if DBGrid_typ.visible Then
        Sql.add('SELECT * FROM TYPEMST WHERE TYPECOD LIKE :EDIT1');
    Params[0].asstring := EDIT1.TEXT+'%' ;
    open;
   end;
end;

procedure TFmHpRp.FormCreate(Sender: TObject);
var  N :word ;
begin
  for N :=0 TO ComponentCount - 1 DO
   BEGIN
    IF ComponentS[N] IS TDBGRID THEN
       TDbgrid(Components[N]).visible := false;
   END;
end;

procedure TFmHpRp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TFmHpRp.FormShow(Sender: TObject);
begin
  RadioGroup1.Itemindex :=0;
  if Dbgrid_Inv.Visible then
  begin
    FmHpRp.Height := 290;
    RadioGroup1.Visible := True;
  end
  Else
    FmHpRp.Height := 260;
end;

end.
