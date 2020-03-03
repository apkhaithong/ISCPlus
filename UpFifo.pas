unit UpFifo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, Mask, DBCtrls, Spin,
  Grids, DBGrids, Gauges, ExtCtrls, printers, ComCtrls, RzButton, RzRadChk,
  RzPanel, RzLabel, RzEdit, RzSpnEdt, RzPrgres,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFupfifo = class(TForm)
    QPART: TFDQuery;
    Qlocat: TFDQuery;
    Gauge1: TGauge;
    QFifocard: TFDQuery;
    QFifobal: TFDQuery;
    QFifostak: TFDQuery;
    Query1: TFDQuery;
    QStkcard: TFDQuery;
    Gauge2: TGauge;
    Label9: TLabel;
    Label11: TLabel;
    GroupBox1: TRzGroupBox;
    CheckBox2: TRzCheckBox;
    CheckBox3: TRzCheckBox;
    OkBtn: TRzBitBtn;
    CloseBtn: TRzBitBtn;
    ProgressBar1: TRzProgressBar;
    Label10: TRzLabel;
    Label4: TRzLabel;
    GroupBox2: TGroupBox;
    Label1: TRzLabel;
    Label7: TRzLabel;
    Label2: TRzLabel;
    Label8: TRzLabel;
    GroupBox3: TGroupBox;
    Label3: TRzLabel;
    Label5: TRzLabel;
    Label6: TRzLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit6: TEdit;
    Edit3: TEdit;
    Button1: TRzRapidFireButton;
    Button2: TRzRapidFireButton;
    Button3: TRzRapidFireButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OkBtnClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure Edit2ButtonClick(Sender: TObject);
    procedure Edit3ButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Process;
    procedure Query_Stack;
    procedure ProcessOut(Buf:Double;Doc:String);
    procedure InsertBal(MM:Integer;YY:Integer);
    //

  public
    { Public declarations }
  end;

var
  Fupfifo: TFupfifo;
  Year, Month, Day : Word;
  Buf,Minonh,Xonh,BufCost :Double;
  XMon,Xyea :Integer;
  Dt:Tdatetime;

implementation
uses Dmic01,Srchdlg,Functn01,ShowDlg,uSrcDlg,uSoftFirm;
{$R *.DFM}



procedure TFupfifo.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('','IC06_6');
  Label4.Caption  := '';
  DecodeDate(Now, Year, Month, Day);
  SpinEdit1.Value := Month;
  SpinEdit2.Value := Year;
  SpinEdit3.Value := Month;
  SpinEdit4.Value := Year;
end;

procedure TFupfifo.Process;
Var S1,LC,PT : String;
    I,P,Loop,MM,YY : Longint;
begin
  Minonh :=0;
  Buf :=0;
  Dt := Strtodate('01/'+Inttostr(XMon)+'/'+inttostr(XYea));
  If XMon=1 Then
  Begin
    MM:=12;
    YY:=Xyea-1;
  End
  Else
  begin
    MM:=Xmon-1;
    YY:=Xyea;
  end;
  //
   Gauge1.Visible := True;
   //
   With QStkcard Do
   begin
     Close;
     Sql.Clear;
     Sql.add('SELECT LOC,PARTNO,STKDATE,PKNO,QTYIN,QTYOUT,NETCOST,FLAG FROM STKCARD WHERE LOC=:EDIT1 '+
       'AND PARTNO =:XPART AND YEAR(STKDATE)=:Y AND MONTH(STKDATE)=:M  ORDER BY LOC,PARTNO,STKDATE');
     params[0].asstring := edit1.text;
     params[1].asstring := Qpart.Fieldbyname('Partno').Asstring;
     params[2].asFloat  := Xyea;//SpinEdit2.Value;
     params[3].asFloat  := XMon;
     Open;
   end;

   With QFifocard Do
   begin
     Close;
     Sql.Clear;
     Sql.add('SELECT * FROM FIFOCARD WHERE LOCAT='''' AND PARTNO='''' ');
     Open;
   end;
   //
   With QFifobal Do
   begin
     Close;
     Sql.Clear;
     Sql.add('SELECT * FROM FIFOBAL WHERE LOCAT='''' ');
     Open;
   end;
   //
   With QFifostak Do
   begin
     Close;
     Sql.Clear;
     Sql.add('SELECT * FROM FIFOSTAK WHERE LOCAT='''' AND PARTNO='''' ');
     Open;
   end;
   //
   Gauge1.Maxvalue := QStkcard.RecordCount;

   If Not(QStkcard.Bof and QStkcard.Eof) Then
   Begin
     P:=1;
     QStkcard.First;
     //
     InsertBal(MM,YY);
     //
     While Not QStkcard.Eof Do
     Begin
       If QStkcard.Fieldbyname('Qtyin').Asfloat>0 Then
       Begin
         With QFifostak do
         begin
           insert;
           Fieldbyname('Locat').Asstring   := QStkcard.Fieldbyname('Loc').Asstring;
           Fieldbyname('Partno').Asstring  := QStkcard.Fieldbyname('Partno').Asstring;
           Fieldbyname('Date1').Asdatetime := QStkcard.Fieldbyname('StkDate').Asdatetime;
           Fieldbyname('Docno').Asstring   := QStkcard.Fieldbyname('Pkno').Asstring;
           Fieldbyname('Qty').AsFloat      := QStkcard.Fieldbyname('Qtyin').AsFloat;
           Fieldbyname('Cost').AsFloat     := QStkcard.Fieldbyname('Netcost').AsFloat;
           Fieldbyname('Tcost').AsFloat    := QStkcard.Fieldbyname('Qtyin').AsFloat*QStkcard.Fieldbyname('Netcost').AsFloat;
           Fieldbyname('Onh').AsFloat      := QStkcard.Fieldbyname('Qtyin').AsFloat;
           Fieldbyname('Item').AsFloat     := 0;
           Post;
         end;
         BufCost :=QStkcard.Fieldbyname('Netcost').AsFloat;
         //
         Query_Stack;
         //
         Loop:=1;
         Query1.First;
         While Not Query1.Eof do
         Begin
           With Qfifocard do
           begin
             insert;
             Fieldbyname('Locat').Asstring   := QStkcard.Fieldbyname('Loc').Asstring;
             Fieldbyname('Partno').Asstring  := QStkcard.Fieldbyname('Partno').Asstring;
             Fieldbyname('Stkdate').Asdatetime := QStkcard.Fieldbyname('StkDate').Asdatetime;
             Fieldbyname('Docno').Asstring   := QStkcard.Fieldbyname('Pkno').Asstring;
             If (Loop=1) Then
             Begin
               Fieldbyname('Qty1').AsFloat     := QStkcard.Fieldbyname('Qtyin').AsFloat;
               Fieldbyname('Cost1').AsFloat    := QStkcard.Fieldbyname('Netcost').AsFloat;
               Fieldbyname('Tcost1').AsFloat   := QStkcard.Fieldbyname('Qtyin').AsFloat*QStkcard.Fieldbyname('Netcost').AsFloat;
             End;
             Fieldbyname('Qty3').AsFloat     := Query1.Fieldbyname('Onh').AsFloat;
             Fieldbyname('Cost3').AsFloat    := Query1.Fieldbyname('Cost').AsFloat;
             Fieldbyname('Tcost3').AsFloat   := Query1.Fieldbyname('Onh').AsFloat*QFifostak.Fieldbyname('Cost').AsFloat;
             Fieldbyname('Flag').Asstring    := QStkcard.Fieldbyname('Flag').Asstring;
             Fieldbyname('Item').AsFloat     := 0;
             Qfifocard.Post;
           end;
           Loop:=Loop+1;
           Query1.Next;
         End;
       End
       Else
       If QStkcard.Fieldbyname('Qtyout').Asfloat>0 Then
       Begin
         ProcessOut(QStkcard.Fieldbyname('Qtyout').Asfloat,QStkcard.Fieldbyname('Pkno').Asstring);
       End;
       Gauge1.Progress := P;
       P:=P+1;
       QStkcard.Next;
     End;
     //--
     If Minonh>0 Then
     Begin
       Query_Stack;
       If Not(Query1.Bof and Query1.Eof) Then
       Begin
         QStkcard.Last;
         ProcessOut(Minonh,'REVERSE');
       End;
     end;
     //-- insert Fifobal here---
     With QFifocard Do
     begin
       Close;
       Sql.Clear;
       Sql.add('SELECT * FROM FIFOCARD ORDER BY LOCAT,PARTNO,STKDATE,ITEM' );
       Open;
     end;
     Qfifocard.Last;
     LC := Qfifocard.Fieldbyname('LOCAT').Asstring;
     PT := Qfifocard.Fieldbyname('PARTNO').Asstring;
     S1 := Qfifocard.Fieldbyname('Docno').Asstring;
     With QFifocard Do
     begin
       Close;
       Sql.Clear;
       Sql.add('SELECT * FROM FIFOCARD WHERE DOCNO=:V1 AND LOCAT=:V2 AND PARTNO=:V3 AND NOT(QTY3 IS NULL) ORDER BY ITEM ' );
       Params[0].Asstring := S1;
       Params[1].Asstring := LC;
       Params[2].Asstring := PT;
       Open;
     end;
     If Not(QFifocard.Bof and QFifocard.Eof) Then
     Begin
       Qfifocard.Last;
       DecodeDate(QFifocard.Fieldbyname('Stkdate').Asdatetime, Year, Month, Day);

       With Query1 Do
       begin
         Close;
         Sql.Clear;
         Sql.add('SELECT * FROM FIFOBAL WHERE LOCAT=:V1 AND YEAR1=:v2 AND MONTH1=:v3 AND PARTNO=:v4');
         Params[0].Asstring := Lc;
         Params[1].AsFloat  := Year;
         Params[2].AsFloat  := Month;
         Params[3].Asstring := PT;
         Open;
         If Not(Bof and Eof) Then
         Begin
           Close;
           Sql.Clear;
           Sql.add('DELETE FROM FIFOBAL WHERE LOCAT=:V1 AND YEAR1=:v2 AND MONTH1=:v3 AND PARTNO=:v4');
           Params[0].Asstring := Lc;
           Params[1].AsFloat  := Year;
           Params[2].AsFloat  := Month;
           Params[3].Asstring := PT;
           ExecSql;
         end;
       end;
       //
       QFifocard.First;
       While Not QFifocard.Eof do
       Begin
         With QFifobal Do
         begin
           Close;
           Sql.Clear;
           Sql.add('SELECT * FROM FIFOBAL WHERE LOCAT=''''  ');
           Open;
           Insert;
           Fieldbyname('Locat').Asstring := Lc;
           Fieldbyname('YEAR1').AsFloat  := Year;
           Fieldbyname('MONTH1').AsFloat := Month;
           Fieldbyname('PARTNO').Asstring:= PT;
           Fieldbyname('GROUP1').Asstring:= Qpart.Fieldbyname('GROUP1').Asstring;
           Fieldbyname('TYPE').Asstring  := Qpart.Fieldbyname('TYPE').Asstring;
           Fieldbyname('Qty').AsFloat    := QFifocard.Fieldbyname('Qty3').AsFloat;
           Fieldbyname('Cost').AsFloat   := QFifocard.Fieldbyname('Cost3').AsFloat ;
           Fieldbyname('TCost').AsFloat  := QFifocard.Fieldbyname('TCost3').AsFloat ;

           Fieldbyname('Item').AsFloat   := 0;
           QFifobal.Post;
         end;
         QFifocard.Next;
       End;
     End;
   End
   Else
   //-- No Transaction ---
   Begin
     InsertBal(MM,YY);
     With QFifocard Do
     begin
       Close;
       Sql.Clear;
       Sql.add('SELECT * FROM FIFOCARD ORDER BY LOCAT,PARTNO,STKDATE,ITEM' );
       Open;
     end;
     If Not(QFifocard.Eof and QFifocard.Eof) Then
     Begin
       QFifocard.First;
       DecodeDate(QFifocard.Fieldbyname('Stkdate').Asdatetime, Year, Month, Day);
       With Query1 Do
       begin
         Close;
         Sql.Clear;
         Sql.add('SELECT * FROM FIFOBAL WHERE LOCAT=:V1 AND YEAR1=:v2 AND MONTH1=:v3 AND PARTNO=:v4');
         Params[0].Asstring := Qpart.Fieldbyname('Locat').Asstring;
         Params[1].AsFloat  := Year;
         Params[2].AsFloat  := Month;
         Params[3].Asstring := Qpart.Fieldbyname('Partno').Asstring;
         Open;
         If Not(Bof and Eof) Then
         Begin
           Close;
           Sql.Clear;
           Sql.add('DELETE FROM FIFOBAL WHERE LOCAT=:V1 AND YEAR1=:v2 AND MONTH1=:v3 AND PARTNO=:v4');
           Params[0].Asstring := Qpart.Fieldbyname('Locat').Asstring;
           Params[1].AsFloat  := Year;
           Params[2].AsFloat  := Month;
           Params[3].Asstring := Qpart.Fieldbyname('Partno').Asstring;
           ExecSql;
         end;
       end;
     While Not QFifocard.Eof do
     Begin
       With QFifobal Do
       begin
         Close;
         Sql.Clear;
         Sql.add('SELECT * FROM FIFOBAL WHERE LOCAT=''''  ');
         Open;
         Insert;
         Fieldbyname('Locat').Asstring := Qpart.Fieldbyname('Locat').Asstring;
         Fieldbyname('YEAR1').AsFloat  := Year;
         Fieldbyname('MONTH1').AsFloat := Month;
         Fieldbyname('PARTNO').Asstring:= Qpart.Fieldbyname('Partno').Asstring;
         Fieldbyname('GROUP1').Asstring:= Qpart.Fieldbyname('GROUP1').Asstring;
         Fieldbyname('TYPE').Asstring  := Qpart.Fieldbyname('TYPE').Asstring;
         Fieldbyname('Qty').AsFloat    := QFifocard.Fieldbyname('Qty3').AsFloat;
         Fieldbyname('Cost').AsFloat   := QFifocard.Fieldbyname('Cost3').AsFloat ;
         Fieldbyname('TCost').AsFloat  := QFifocard.Fieldbyname('TCost3').AsFloat ;
         Fieldbyname('Item').AsFloat   := 0;
         QFifobal.Post;
       end;
       QFifocard.Next;
     End;
     end;
   End;

end;

procedure TFupfifo.Query_Stack;
begin
  With Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM FIFOSTAK WHERE LOCAT=:V1 AND PARTNO=:V2 AND ONH>0');
    Params[0].Asstring := QStkcard.Fieldbyname('Loc').Asstring;
    Params[1].Asstring := QStkcard.Fieldbyname('Partno').Asstring;
    OPEN;
  End;
end;

procedure TFupfifo.ProcessOut(Buf:Double;Doc:String);
Var S1 : String;
    Loop : Longint;
begin
  With QFifostak do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM FIFOSTAK WHERE LOCAT=:V1 AND PARTNO=:V2 AND ONH>0');
    Params[0].Asstring := QStkcard.Fieldbyname('Loc').Asstring;
    Params[1].Asstring := QStkcard.Fieldbyname('Partno').Asstring;
    OPEN;
    If (Bof and Eof) Then
    Begin
      Minonh := Minonh+Buf;
      S1:='*';
    End
    Else S1:='';
  end;

  If Not (QFifostak.Bof and QFifostak.Eof) Then
  begin
    QFifostak.First;
    While Buf>0 Do
    Begin
      Query_Stack;
      //
      if (Query1.Bof and Query1.Eof) Then
      begin
        With Qfifocard do
        begin
          insert;
          Fieldbyname('Locat').Asstring   := QStkcard.Fieldbyname('Loc').Asstring;
          Fieldbyname('Partno').Asstring  := QStkcard.Fieldbyname('Partno').Asstring;
          Fieldbyname('Stkdate').Asdatetime:= QStkcard.Fieldbyname('StkDate').Asdatetime;
          Fieldbyname('Docno').Asstring   := Doc;
          //
          Fieldbyname('Qtyout').AsFloat   := QStkcard.Fieldbyname('Qtyout').Asfloat;
          Fieldbyname('Qty2').AsFloat     := Buf;
          Fieldbyname('Cost2').AsFloat    := Bufcost;
          Fieldbyname('Tcost2').AsFloat   := Bufcost*Buf;
          //
          Fieldbyname('Qty3').AsFloat     := -Buf;
          Fieldbyname('Cost3').AsFloat    := Bufcost;
          Fieldbyname('Tcost3').AsFloat   := -Buf*Bufcost;
          Fieldbyname('Flag').Asstring    := QStkcard.Fieldbyname('Flag').Asstring;
          Fieldbyname('Userid').Asstring  := '+';//S1;
          Fieldbyname('Item').AsFloat     := 0;
          Fieldbyname('Time1').Asdatetime := Now;
          Qfifocard.Post;

          Minonh := Minonh+Buf;
          Buf:=0;
          Break;
        end;
      end;

      Query1.First;
      If Buf>Query1.Fieldbyname('Onh').Asfloat Then
      Begin
        Xonh := Query1.Fieldbyname('Onh').Asfloat;

        QFifostak.edit;
        QFifostak.Fieldbyname('Onh').Asfloat:= 0;
        QFifostak.Post;

        With Qfifocard do
        begin
          insert;
          Fieldbyname('Locat').Asstring   := QStkcard.Fieldbyname('Loc').Asstring;
          Fieldbyname('Partno').Asstring  := QStkcard.Fieldbyname('Partno').Asstring;
          Fieldbyname('Stkdate').Asdatetime := QStkcard.Fieldbyname('StkDate').Asdatetime;
          Fieldbyname('Docno').Asstring   := Doc;
          Fieldbyname('Qtyout').AsFloat   := QStkcard.Fieldbyname('Qtyout').Asfloat;
          Fieldbyname('Qty2').AsFloat     := Xonh;
          Fieldbyname('Cost2').AsFloat    := QFifostak.Fieldbyname('Cost').AsFloat;
          Fieldbyname('Tcost2').AsFloat   := Xonh*QFifostak.Fieldbyname('Cost').AsFloat;
          Fieldbyname('Flag').Asstring    := QStkcard.Fieldbyname('Flag').Asstring;
          Fieldbyname('Userid').Asstring  := S1;
          Fieldbyname('Item').AsFloat     := 0;
          Fieldbyname('Time1').Asdatetime := Now;
          Qfifocard.Post;
        end;
        Buf:=Buf-Xonh;
        BufCost := QFifostak.Fieldbyname('Cost').AsFloat;
      End
      Else
      Begin
        QFifostak.edit;
        QFifostak.Fieldbyname('Onh').Asfloat:= QFifostak.Fieldbyname('Onh').Asfloat-Buf;
        QFifostak.Post;
        //
        Query_Stack;
        //
        If (Query1.Bof and Query1.Eof) Then
        Begin
          //-- Stock =0 --
          With Qfifocard do
          begin
            insert;
            Fieldbyname('Locat').Asstring   := QStkcard.Fieldbyname('Loc').Asstring;
            Fieldbyname('Partno').Asstring  := QStkcard.Fieldbyname('Partno').Asstring;
            Fieldbyname('Stkdate').Asdatetime := QStkcard.Fieldbyname('StkDate').Asdatetime;
            Fieldbyname('Docno').Asstring   := Doc;
            Fieldbyname('Qtyout').AsFloat   := QStkcard.Fieldbyname('Qtyout').Asfloat;
            Fieldbyname('Qty2').AsFloat     := Xonh;
            Fieldbyname('Cost2').AsFloat    := QFifostak.Fieldbyname('Cost').AsFloat;
            Fieldbyname('Tcost2').AsFloat   := Xonh*QFifostak.Fieldbyname('Cost').AsFloat;
            Fieldbyname('Qty3').AsFloat     := 0;
            Fieldbyname('Cost3').AsFloat    := Bufcost;
            Fieldbyname('Tcost3').AsFloat   := 0;
            Fieldbyname('Flag').Asstring    := QStkcard.Fieldbyname('Flag').Asstring;
            Fieldbyname('Userid').Asstring  := S1;
            Fieldbyname('Item').AsFloat     := 0;
            Fieldbyname('Time1').Asdatetime := Now;
            Qfifocard.Post;
          end;
        end
        Else
        Begin
          // --Stock >0 --
          Loop:=1;
          Query1.First;
          While Not Query1.Eof do
          Begin
            With Qfifocard do
            begin
              insert;
              Fieldbyname('Locat').Asstring   := QStkcard.Fieldbyname('Loc').Asstring;
              Fieldbyname('Partno').Asstring  := QStkcard.Fieldbyname('Partno').Asstring;
              Fieldbyname('Stkdate').Asdatetime := QStkcard.Fieldbyname('StkDate').Asdatetime;
              Fieldbyname('Docno').Asstring   := Doc;
              //
              if Loop=1 Then
              Begin
                Fieldbyname('Qtyout').AsFloat   := QStkcard.Fieldbyname('Qtyout').Asfloat;
                Fieldbyname('Qty2').AsFloat     := Buf;
                Fieldbyname('Cost2').AsFloat    := QFifostak.Fieldbyname('Cost').AsFloat;
                Fieldbyname('Tcost2').AsFloat   := Buf*QFifostak.Fieldbyname('Cost').AsFloat;
              End;
              //
              Fieldbyname('Qty3').AsFloat     := Query1.Fieldbyname('Onh').AsFloat;
              Fieldbyname('Cost3').AsFloat    := Query1.Fieldbyname('Cost').AsFloat;
              Fieldbyname('Tcost3').AsFloat   := Query1.Fieldbyname('Onh').AsFloat*Query1.Fieldbyname('Cost').AsFloat;

              Fieldbyname('Flag').Asstring    := QStkcard.Fieldbyname('Flag').Asstring;
              Fieldbyname('Userid').Asstring  := S1;
              Fieldbyname('Item').AsFloat     := 0;
              Fieldbyname('Time1').Asdatetime := Now;
              Qfifocard.Post;
            end;
            Loop:=Loop+1;
            BufCost := Query1.Fieldbyname('Cost').AsFloat;
            Query1.Next;
          end;
        end;
        Buf:=0;
      End;
      If Not QFifostak.Eof Then
      QFifostak.Next;
    end;
  End
  Else
  //-- No Stock --
  Begin
    With Qfifocard do
    begin
      insert;
      Fieldbyname('Locat').Asstring   := QStkcard.Fieldbyname('Loc').Asstring;
      Fieldbyname('Partno').Asstring  := QStkcard.Fieldbyname('Partno').Asstring;
      Fieldbyname('Stkdate').Asdatetime := QStkcard.Fieldbyname('StkDate').Asdatetime;
      Fieldbyname('Docno').Asstring   := Doc;
      //
      Fieldbyname('Qtyout').AsFloat   := QStkcard.Fieldbyname('Qtyout').Asfloat;
      Fieldbyname('Qty2').AsFloat     := Buf;
      Fieldbyname('Cost2').AsFloat    := Bufcost;
      Fieldbyname('Tcost2').AsFloat   := Bufcost*QStkcard.Fieldbyname('Qtyout').Asfloat;;
      //
      Fieldbyname('Qty3').AsFloat     := -Minonh;
      Fieldbyname('Cost3').AsFloat    := Bufcost;
      Fieldbyname('Tcost3').AsFloat   := -Minonh*Bufcost;
      Fieldbyname('Flag').Asstring    := QStkcard.Fieldbyname('Flag').Asstring;
      Fieldbyname('Userid').Asstring  := S1;
      Fieldbyname('Item').AsFloat     := 0;
      Fieldbyname('Time1').Asdatetime := Now;
      Qfifocard.Post;
    end;
  End;
end;

procedure TFupfifo.InsertBal(MM:Integer;YY:Integer);
Var S1 : String;
    Loop : Longint;
begin
  With QFifobal Do
  begin
    Close;
    Sql.Clear;
    Sql.add('SELECT * FROM FIFOBAL WHERE LOCAT=:V1 AND YEAR1=:v2 AND MONTH1=:v3 AND PARTNO=:v4');
    Params[0].Asstring := Qpart.Fieldbyname('Locat').Asstring;
    Params[1].AsFloat  := YY;
    Params[2].AsFloat  := MM;
    Params[3].Asstring := Qpart.Fieldbyname('Partno').Asstring;
    Open;
  end;
  If Not(QFifobal.Bof and QFifobal.Eof) Then
  Begin
    QFifobal.First;
    While Not QFifobal.Eof Do
    Begin
      With QFifostak do
      begin
        insert;
        Fieldbyname('Locat').Asstring   := Qpart.Fieldbyname('Locat').Asstring;
        Fieldbyname('Partno').Asstring  := Qpart.Fieldbyname('Partno').Asstring;
        Fieldbyname('Date1').Asdatetime := Dt;
        Fieldbyname('Docno').Asstring   := 'B/F';
        Fieldbyname('Qty').AsFloat      := QFifobal.Fieldbyname('Qty').AsFloat;
        Fieldbyname('Cost').AsFloat     := QFifobal.Fieldbyname('Cost').AsFloat;
        Fieldbyname('Tcost').AsFloat    := QFifobal.Fieldbyname('TCost').AsFloat;
        Fieldbyname('Onh').AsFloat      := QFifobal.Fieldbyname('Qty').AsFloat;
        Fieldbyname('Item').AsFloat     := 0;
        Post;
      end;
      BufCost :=QStkcard.Fieldbyname('Netcost').AsFloat;
      QFifobal.Next;
    end;
    //
    //Query_Stack;

    With Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM FIFOSTAK WHERE LOCAT=:V1 AND PARTNO=:V2 ');
      Params[0].Asstring := QPart.Fieldbyname('Locat').Asstring;
      Params[1].Asstring := Qpart.Fieldbyname('Partno').Asstring;
      OPEN;
    End;
    //
    Loop:=1;
    Query1.First;
    While Not Query1.Eof do
    Begin
      With Qfifocard do
      begin
        insert;
        Fieldbyname('Locat').Asstring   := QPart.Fieldbyname('Locat').Asstring;
        Fieldbyname('Partno').Asstring  := Qpart.Fieldbyname('Partno').Asstring;
        Fieldbyname('Stkdate').Asdatetime := Query1.Fieldbyname('date1').Asdatetime;
        Fieldbyname('Docno').Asstring   := Query1.Fieldbyname('Docno').Asstring;
        Fieldbyname('Qty3').AsFloat     := Query1.Fieldbyname('Onh').AsFloat;
        Fieldbyname('Cost3').AsFloat    := Query1.Fieldbyname('Cost').AsFloat;
        Fieldbyname('Tcost3').AsFloat   := Query1.Fieldbyname('Onh').AsFloat*Query1.Fieldbyname('Cost').AsFloat;
        Fieldbyname('Flag').Asstring    := 'B';
        Fieldbyname('Item').AsFloat     := 0;
        Qfifocard.Post;
      end;
      Loop:=Loop+1;
      If Query1.Fieldbyname('Onh').AsFloat<0 Then
      Minonh := Minonh+ABS(Query1.Fieldbyname('Onh').AsFloat);
      Query1.Next;
    End;
  end
  Else
  Begin
    With QFifostak do
    begin
      insert;
      Fieldbyname('Locat').Asstring   := Qpart.Fieldbyname('Locat').Asstring;
      Fieldbyname('Partno').Asstring  := Qpart.Fieldbyname('Partno').Asstring;
      Fieldbyname('Date1').Asdatetime := Dt;
      Fieldbyname('Docno').Asstring   := 'B/F';
      Fieldbyname('Qty').AsFloat      := 0;
      Fieldbyname('Cost').AsFloat     := 0;
      Fieldbyname('Tcost').AsFloat    := 0;
      Fieldbyname('Onh').AsFloat      := 0;
      Fieldbyname('Item').AsFloat     := 0;
      Post;
    end;
    With Qfifocard do
    begin
      insert;
      Fieldbyname('Locat').Asstring   := QPart.Fieldbyname('Locat').Asstring;
      Fieldbyname('Partno').Asstring  := Qpart.Fieldbyname('Partno').Asstring;
      Fieldbyname('Stkdate').Asdatetime := Dt;
      Fieldbyname('Docno').Asstring   := 'B/F';
      Fieldbyname('Qty3').AsFloat     := 0;
      Fieldbyname('Cost3').AsFloat    := 0;
      Fieldbyname('Tcost3').AsFloat   := 0;
      Fieldbyname('Flag').Asstring    := 'B';
      Fieldbyname('Item').AsFloat     := 0;
      Qfifocard.Post;
    end;
  End;
end;

procedure TFupfifo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QStkcard.Close;
  QPart.Close;
  QFifocard.Close;
  QFifoBal.Close;
  QFifoStak.Close;

  Action :=Cafree;
end;


procedure TFupfifo.OkBtnClick(Sender: TObject);
Var I,P,StartM,StartY,EndM,EndY,BgM :Longint;
begin
  //
  OkBtn.Enabled := False;
  CloseBtn.Enabled := False;
  //
  With Query1 Do
  begin
    Close;
    Sql.Clear;
    Sql.add('SELECT LOCAT FROM FIFOBAL ');
    Open;
    If bof and eof Then
    Begin
      Messagedlg('ข้อมูลยอดคงเหลือยกมายังไม่มี เริ่มต้นตั้งแต่เดือน 1',Mtinformation,[mbok],0);
      SpinEdit1.Value := 1;
      SpinEdit1.Enabled := False;
      //

      Close;
      Sql.clear;
      Sql.add('INSERT INTO FIFOBAL(LOCAT,YEAR1,MONTH1,PARTNO,ITEM,GROUP1,'+
      'TYPE,QTY,COST,TCOST)  SELECT A.LOCAT,INT(A.YEAR1)-1,12,A.PARTNO,1,A.GROUP1,'+
      'A.TYPE,B.ALLO_13,B.COST_13,B.ALLO_13*B.COST_13  FROM INVENTOR A,'+
      'INVANLS B WHERE A.LOCAT=B.LOCAT AND A.PARTNO=B.PARTNO AND '+
      'A.YEAR1=B.YEAR1');
      Execsql;
      //
    end;
  end;

  With Qlocat Do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD Like :EDIT ');
    Params[0].asstring:=Edit1.Text+'%';
    Open;
    If Bof and Eof Then
    Begin
      OkBtn.Enabled    := True;
      CloseBtn.Enabled := True;
      SFMain.RaiseException('ไม่พบรหัสสาขา');
    end;
  end;
  Gauge2.Maxvalue := Qlocat.RecordCount;
  I:=1;
  Qlocat.First;
  While Not Qlocat.Eof Do
  Begin
   Edit1.Text:=Qlocat.fieldbyname('Locatcod').Asstring;
   Edit1.Update;
   Gauge2.Progress :=I;
  //
  With QPart Do
  begin
    Close;
    Sql.Clear;
    If CheckBox2.Checked Then
    Begin
      Sql.add('SELECT LOCAT,PARTNO,GROUP1,TYPE FROM INVENTOR WHERE LOCAT=:EDIT1 '+
              'ORDER BY LOCAT,PARTNO');
      params[0].asstring := Qlocat.Fieldbyname('Locatcod').Asstring;
    End Else
    Begin
      Sql.add('SELECT LOCAT,PARTNO,GROUP1,TYPE FROM INVENTOR WHERE LOCAT=:EDIT1 '+
              'AND PARTNO >=:V1 AND PARTNO <=:V2 ORDER BY LOCAT,PARTNO');
      params[0].asstring := Qlocat.Fieldbyname('Locatcod').Asstring;
      params[1].asstring := edit2.text;
      params[2].asstring := edit3.text;
    End;
    Open;
    If Bof and Eof Then
    Begin
      OkBtn.Enabled    := True;
      CloseBtn.Enabled := True;
      SFMain.RaiseException('ไม่พบรหัสสินค้า');
    End;
    QPart.First;
    Edit2.Text := Qpart.Fieldbyname('Partno').Asstring;
    QPart.Last;
    Edit3.Text := Qpart.Fieldbyname('Partno').Asstring;

  end;
  ProgressBar1.PartsComplete:= Qpart.RecordCount;
  //
  StartM := SpinEdit1.Value;
  StartY := SpinEdit2.Value;
  EndM   := SpinEdit3.Value;
  EndY   := SpinEdit4.Value;

  Qpart.First;
  P:=1;
  While Not Qpart.Eof Do
  Begin
    BgM:=StartM;
    ProgressBar1.Percent :=P;

    For XYea:=StartY To SpinEdit4.Value Do
    Begin
      If Xyea<EndY Then
         EndM:=12
      Else
         EndM:= SpinEdit3.Value;

      For Xmon:=BgM To EndM Do
      begin
        Label4.caption := Qpart.Fieldbyname('Partno').Asstring+'  Month: '+Inttostr(XMon)+'  Year: '+Inttostr(XYea);
        Label4.Update;

        With Query1 Do
        begin
          Close;
          Sql.Clear;
          Sql.Add('DELETE FROM FIFOCARD');
          EXECSQL;
          //
          Close;
          Sql.Clear;
          Sql.Add('DELETE FROM FIFOSTAK');
          EXECSQL;
        end;
        Process;
      end;
      BgM:=1;
    end;
    P:=P+1;
    Qpart.Next;
  end;
   I:=I+1;
   Qlocat.Next;
  End;

  Gauge2.Progress :=0;
  ProgressBar1.Percent :=0;
  OkBtn.Enabled := True;
  CloseBtn.Enabled := True;
  Gauge1.Progress :=0;
  Label4.Caption  := 'Successful...';
  Label4.Update;
end;




procedure TFupfifo.CheckBox2Click(Sender: TObject);
begin
  If CheckBox2.Checked Then
  Begin
    Edit2.Text:= '';
    Edit3.Text:= '';
    Edit2.Enabled := False;
    Edit3.Enabled := False;
  End Else
  Begin
    Edit2.Enabled := True;
    Edit3.Enabled := True;
  End;
end;

procedure TFupfifo.CheckBox3Click(Sender: TObject);
begin
  If CheckBox3.Checked Then
  Begin
    Edit1.Text:= '';
    Edit1.Enabled := False;
  End  Else
  Begin
    Edit1.Enabled := True;
  End;
end;

procedure TFupfifo.CloseBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TFupfifo.Edit1ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
     Edit1.Text := fSrcDlg.Keyno;
end;

procedure TFupfifo.Edit2ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
     Edit2.Text := fSrcDlg.Keyno;
end;

procedure TFupfifo.Edit3ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
     Edit3.Text := fSrcDlg.Keyno;
end;

procedure TFupfifo.Button1Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
  begin
     Edit1.Text := fSrcDlg.Keyno;
     Edit6.Text := fSrcDlg.qrFindDat.fieldbyname('LOCATNM').AsString;
  end;
end;

procedure TFupfifo.Button2Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
     Edit2.Text := fSrcDlg.Keyno;
end;

procedure TFupfifo.Button3Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
     Edit3.Text := fSrcDlg.Keyno;
end;

end.



