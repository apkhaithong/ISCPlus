unit Avgcost;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Gauges, Spin, DB, Grids, DBGrids;

type
  TFAvgcost = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Gauge1: TGauge;
    Bevel1: TBevel;
    SpinEdit1: TSpinEdit;
    Label4: TLabel;
    Button1: TButton;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAvgcost: TFAvgcost;

implementation
Uses Dmic01;
{$R *.DFM}

procedure TFAvgcost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFAvgcost.FormCreate(Sender: TObject);
Var XYear, XMonth, XDay :Word;
    Xdate :Tdatetime;
begin
  Xdate := FmDmic01.Rcinv2.FieldByname('Recvdt').Asdatetime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  FmDmic01.Condpay.Open;
{  If FmDmic01.Condpay.FieldByname('CurMonth').Asstring='12' Then
    Edit1.Text := Floattostr(Strtofloat(FmDmic01.Condpay.FieldByname('Curyear').Asstring)+1)
  Else
  }
  Edit1.Text := FmDmic01.Condpay.FieldByname('Curyear').Asstring;
  SpinEdit1.Text := FmDmic01.Condpay.FieldByname('CurMonth').Asstring;
  SpinEdit1.Text := Inttostr(Xmonth);
end;

procedure TFAvgcost.Button1Click(Sender: TObject);
Var P,M,I,Mon:Longint;
    MM : Array[1..12] of Integer;
    Allo,Onhn,Demn,Sale,Cost,Xpart,Xlocat,XFlg,YY : string;
    XBAL1,Baltot,XCost1,XQty : Double;
    Fdate,Ldate:Tdatetime;
    Y1,Y2 : Real;
begin
  Xyear  := Strtoint(Edit1.Text);
  MM[1] := 31;
  MM[2] := 28;
  MM[3] := 31;
  MM[4] := 30;
  MM[5] := 31;
  MM[6] := 30;
  MM[7] := 31;
  MM[8] := 31;
  MM[9] := 30;
  MM[10] := 31;
  MM[11] := 30;
  MM[12] := 31;

  Y1 := Xyear/4;
  Y2 := Round(Xyear/4);
  If Y1=Y2 Then
    MM[2] :=29
  Else
    MM[2] :=28;

  Mon := SpinEdit1.Value;
  M   := Mon;
  YY  := Edit1.Text;

  If M=1 Then M:=13 Else M:=M-1;
  Fdate := strtodate('01/'+Inttostr(Mon)+'/'+YY);
  Ldate := Strtodate(Inttostr(MM[Mon])+'/'+Inttostr(Mon)+'/'+YY);

  Gauge1.Visible := True;
  With FmDmic01.Query1 Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO =:XRECVNO');
    PARAMS[0].ASSTRING := Label4.caption;
    OPEN;
  End;
  If not(FmDmic01.Query1.Eof and FmDmic01.Query1.Bof) Then
  begin
    FmDmic01.Query1.First;
    While Not FmDmic01.Query1.Eof Do
    begin
      Gauge1.MaxValue :=FmDmic01.Query1.RecordCount;
      P := 0;
      with FmDmic01.QInvanls do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVANLS WHERE YEAR1=:EDIT AND PARTNO=:XX');
        Params[0].asstring := Edit1.text;
        Params[1].asstring := FmDmic01.Query1.Fieldbyname('Partno').asstring;
        Open;
        If FmDmic01.QInvanls.bof and FmDmic01.QInvanls.Eof Then
        SFMain.RaiseException('ไม่มีรหัสสินค้าในแฟ้มหลัก');
      end;
      FmDmic01.QInvanls.First;
      While Not FmDmic01.QInvanls.Eof Do
      Begin
        Xpart := FmDmic01.QInvanls.Fieldbyname('Partno').Asstring;
        XLocat:= FmDmic01.QInvanls.Fieldbyname('Locat').Asstring;
        Allo := 'Allo_'+inttostr(M);
        Onhn := 'Onhn_'+inttostr(M);
        Cost := 'Cost_'+inttostr(M);
        XBAL1 := FmDmic01.QInvanls.Fieldbyname(Onhn).AsFloat;
        XCOST1:= FmDmic01.QInvanls.Fieldbyname(Cost).AsFloat;
        Baltot:= Xbal1*Xcost1;

        with FmDmic01.QStkcard do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM STKCARD WHERE LOC=:EDIT1 AND PARTNO=:EDIT2 AND '+
          'YEAR1=:EDIT3 AND STKDATE>=:Edit4 AND STKDATE<=:EDIT5 ');
          Params[0].asstring := XLocat;
          Params[1].asstring := Xpart;
          Params[2].asstring := YY;
          Params[3].asDATE   := Fdate;
          Params[4].asDATE   := Ldate;
          Open;
        end;

        If Not(FmDmic01.QStkcard.Bof and FmDmic01.QStkcard.Eof) Then
        Begin
          FmDmic01.QStkcard.First;
          While Not FmDmic01.QStkcard.Eof Do
          begin
            XFlg    := FmDmic01.QStkcard.Fieldbyname('Flag').Asstring;
            XQty    := FmDmic01.QStkcard.Fieldbyname('Qtyin').AsFloat-
             FmDmic01.QStkcard.Fieldbyname('Qtyout').AsFloat;

            XBal1 := Xbal1+Xqty;

            If Xqty>0 Then
            begin
             Baltot := Baltot+(Xqty*FmDmic01.QStkcard.Fieldbyname('Netcost').AsFloat);
             If XBal1>0 Then
                XCost1 := Baltot/Xbal1;
            end
            Else
             Baltot := Baltot+(Xqty*Xcost1);

            FmDmic01.QStkcard.Edit;
            FmDmic01.QStkcard.Fieldbyname('Avgcost').AsFloat:= Xcost1;
            FmDmic01.QStkcard.Post;
            FmDmic01.QStkcard.Next;
          end;

          If Xcost1>0 Then
          Begin
            FmDmic01.QInvanls.Edit;
            I := Mon;
            Cost := 'Cost_'+inttostr(I);
            FmDmic01.QInvanls.FieldByname(Cost).AsFloat := Xcost1;
            FmDmic01.QInvanls.Post;
          end;
        end;
        FmDmic01.QInvanls.Next;
      end;
      FmDmic01.HI_DBMS.ApplyUpdates([FmDmic01.QInvanls,FmDmic01.QStkcard]);
      //
      P := P+1;
      Gauge1.Progress := P;
      FmDmic01.Query1.Next;
    end;
  end;
  FmDmic01.QInvanls.Close;
  FmDmic01.QStkcard.Close;
  Close;

end;

end.


