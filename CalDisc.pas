unit CalDisc;

interface
Uses DBIProcs,Dialogs,SysUtils;
Type Tnopay = 1..100;
Var Vat1,Operat,BalFProf,BalFProfStr,BalFProfEff,TFDisc,TFKang: Double;
    Sumintr,Sumintr1,Paidintr,Paidintr1,Tdscintr,Addintr_a,Xintamt :Double;
    XContno,Xlocat,XStrno,XDay,ShowDesc,nSchema : String ;
    Ddate_a,Xdate,TDate,XFDueDt,XLDueDt,LTdate  : TDateTime;
    SumDsc,Xlate,Xlate1,Nopay_I,Xdisc_a,SumProf,SumProfSTR,SumProfEff,TProf_a,TFDiscpc :Double;
    Xdelay,XIntr,CDay,TCDay : Double;
    year,year1,month,month1,Montho,day,day1:Word;
    Tnopay_a : Tnopay;
  Procedure CalDisc1;
  Procedure CalDisc2;
  Procedure CalDisc3;
  Procedure CalDisc4;
  Procedure OpenTab;
  Procedure CalInt1;
  Procedure CalInt2;
  Procedure CalInt3;
  Procedure CalInt4;
  Procedure SrchRate(Lost_a:Double) ;

implementation
uses Dmcal,Functn01;

procedure CalDisc1;{คำนวณส่วนลดตัดสดตาม Table1}
begin
  ShowDesc := 'ตัดสดตามตารางที่ 1';
  OpenTab;
  Xdisc_a :=0;
  Sumprof :=0;
  SumprofSTR :=0;
  SumProfEFF := 0;

  Dm_cal.Table1.TableName  := nSchema+'.TABLE1';
  Dm_cal.QCondpay.SQL.Text := 'SELECT * FROM '+nSchema+'.CONDPAY';
 { Dm_cal.QArpay.SQL.Text   := 'SELECT NOPAY,DDATE,DAMT,DATE1,PAYMENT,VATRT,DELAY,INTAMT,NPROF,STRPROF,INTEFFR FROM '+nSchema+'.ARPAY';
  Dm_cal.Qinvtran.SQL.Text := 'SELECT STRNO,STAT FROM '+nSchema+'.INVTRAN';  }

  If Not Dm_cal.Table1.Active Then Dm_cal.Table1.Open;
  If Not Dm_cal.QCondpay.Active Then Dm_cal.QCondpay.Open;
  Vat1  := Dm_cal.QCondpay.Fieldbyname('Vat').Asfloat;
  Operat:= Dm_cal.QCondpay.Fieldbyname('Operate').Asfloat;{ค่าดำเนินการ}
  //
  Tnopay_a := Dm_cal.QArmast.Fieldbyname('T_nopay').Value;
  {}
  Dm_cal.QArpay.First;
  While not Dm_cal.QArpay.Eof do
  begin
    Nopay_I := Dm_cal.QArpay.Fieldbyname('Nopay').Asfloat;
    Vat1    := Dm_cal.QArpay.Fieldbyname('Vatrt').Asfloat;
    Xlate   := Dm_cal.QArpay.Fieldbyname('Ddate').Asdatetime-XDate;
    If Xlate>0 Then
    begin
      If Dm_cal.Table1.Findkey([Nopay_I]) Then
      begin
       Case Tnopay_a Of
        1..10  :Xdisc_a :=Dm_cal.Table1.Fieldbyname('PERD10').asfloat;
        11..12 :Xdisc_a :=Dm_cal.Table1.Fieldbyname('PERD12').asfloat;
        13..18 :Xdisc_a :=Dm_cal.Table1.Fieldbyname('PERD18').asfloat;
        19..24 :Xdisc_a :=Dm_cal.Table1.Fieldbyname('PERD24').asfloat;
        25..30 :Xdisc_a :=Dm_cal.Table1.Fieldbyname('PERD30').asfloat;
        31..36 :Xdisc_a :=Dm_cal.Table1.Fieldbyname('PERD36').asfloat;
        37..42 :Xdisc_a :=Dm_cal.Table1.Fieldbyname('PERD42').asfloat;
        43..48 :Xdisc_a :=Dm_cal.Table1.Fieldbyname('PERD48').asfloat;
        49..54 :Xdisc_a :=Dm_cal.Table1.Fieldbyname('PERD54').asfloat;
        55..100:Xdisc_a :=Dm_cal.Table1.Fieldbyname('PERD60').asfloat;
       end;
      end;
      Break;
    end  else
    begin
      SumProf := SumProf + Dm_cal.QArpay.Fieldbyname('NProf').Asfloat;
      SumProfSTR := SumProfSTR + Dm_cal.QArpay.Fieldbyname('STRPROF').Asfloat;
      SumProfEFF := SumProfEFF + Dm_cal.QArpay.Fieldbyname('INTEFFR').Asfloat;
      If Nopay_i>=Tnopay_a Then
      begin
         XDisc_a:=0;
         Break;
      end;
    end;
    Dm_cal.QArpay.Next;
  end;
  BalFprof := Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProf ;
  BalFProfStr:= Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProfSTR ;
  BalFProfEFF:= Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProfEFF ;
  If BalFProf > 0 Then
     SumDsc :=FRound(BalFprof*Xdisc_a/100,2)
  Else
     SumDsc :=0;
  TFDisc := FRound(SumDsc,2);
end;

procedure CalDisc2; //คำนวณส่วนลดตัดสดตาม Table2 สคบ.
begin
  ShowDesc := 'ตัดสดตามตารางที่ 2 ';
  OpenTab;
  Xdisc_a :=0;
  Sumprof :=0;
  SumprofSTR :=0;
  SumProfEFF := 0;

  Dm_cal.Table1.TableName  := nSchema+'.TABLE2';
  Dm_cal.QCondpay.SQL.Text := 'SELECT * FROM '+nSchema+'.CONDPAY';
 { Dm_cal.QArpay.SQL.Text   := 'SELECT NOPAY,DDATE,DAMT,DATE1,PAYMENT,VATRT,DELAY,INTAMT,NPROF,STRPROF,INTEFFR FROM '+nSchema+'.ARPAY';
  Dm_cal.Qinvtran.SQL.Text := 'SELECT STRNO,STAT FROM '+nSchema+'.INVTRAN';}

  If Not Dm_cal.Table2.Active Then Dm_cal.Table2.Open;
  If Not Dm_cal.QCondpay.Active Then Dm_cal.QCondpay.Open;
  Vat1  := Dm_cal.QCondpay.Fieldbyname('Vat').Asfloat;
  Operat:= Dm_cal.QCondpay.Fieldbyname('Operate').Asfloat;{ค่าดำเนินการ}
  //
  Tnopay_a := Dm_cal.QArmast.Fieldbyname('T_nopay').Value;
  TProf_a  := Dm_cal.QArmast.Fieldbyname('NPROFIT').Asfloat;
  Dm_cal.QArpay.First;
  While not Dm_cal.QArpay.Eof do
  begin
    Nopay_I := Dm_cal.QArpay.Fieldbyname('Nopay').Asfloat;
    Vat1    := Dm_cal.QArpay.Fieldbyname('Vatrt').Asfloat;
    Xlate   := Dm_cal.QArpay.Fieldbyname('Ddate').Asdatetime-XDate;
    If Xlate>0 Then
    begin
      If Dm_cal.Table2.Findkey([Nopay_I]) Then
      begin
       Case Tnopay_a Of
        1..10  :Xdisc_a :=Dm_cal.Table2.Fieldbyname('PERD10').asfloat;
        11..12 :Xdisc_a :=Dm_cal.Table2.Fieldbyname('PERD12').asfloat;
        13..18 :Xdisc_a :=Dm_cal.Table2.Fieldbyname('PERD18').asfloat;
        19..24 :Xdisc_a :=Dm_cal.Table2.Fieldbyname('PERD24').asfloat;
        25..30 :Xdisc_a :=Dm_cal.Table2.Fieldbyname('PERD30').asfloat;
        31..36 :Xdisc_a :=Dm_cal.Table2.Fieldbyname('PERD36').asfloat;
        37..42 :Xdisc_a :=Dm_cal.Table2.Fieldbyname('PERD42').asfloat;
        43..48 :Xdisc_a :=Dm_cal.Table2.Fieldbyname('PERD48').asfloat;
        49..54 :Xdisc_a :=Dm_cal.Table2.Fieldbyname('PERD54').asfloat;
        55..100:Xdisc_a :=Dm_cal.Table2.Fieldbyname('PERD60').asfloat;
       end;
      end;
      Break;
    end
    else
    begin
      SumProf := SumProf + Dm_cal.QArpay.Fieldbyname('NProf').Asfloat;
      SumProfSTR := SumProfSTR + Dm_cal.QArpay.Fieldbyname('STRPROF').Asfloat;
      SumProfEFF := SumProfEFF + Dm_cal.QArpay.Fieldbyname('INTEFFR').Asfloat;
      If Nopay_i>=Tnopay_a Then
      begin
         XDisc_a:=0;
         Break;
      end;
    end;
    Dm_cal.QArpay.Next;
  end;

  BalFprof := Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProf ;
  BalFProfStr:= Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProfSTR ;
  BalFProfEFF:= Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProfEFF ;

  If TProf_a > 0 Then
     SumDsc :=FRound(Tprof_a*Xdisc_a/100,2)
  Else
     SumDsc :=0;
  If TProf_a-SumDsc<Operat Then
     SumDsc:=0;

     TFDisc := FRound(SumDsc,2);
end;

Procedure CalDisc3;//คำนวณส่วนลดตัดสดตามวันชำระล่วงหน้า
begin
  ShowDesc := 'ตัดสดตามวันชำระล่วงหน้าเป็น %';
  OpenTab;

  Dm_cal.QCondpay.SQL.Text := 'SELECT * FROM '+nSchema+'.CONDPAY';
 { Dm_cal.QArpay.SQL.Text   := 'SELECT NOPAY,DDATE,DAMT,DATE1,PAYMENT,VATRT,DELAY,INTAMT,NPROF,STRPROF,INTEFFR FROM '+nSchema+'.ARPAY';
  Dm_cal.Qinvtran.SQL.Text := 'SELECT STRNO,STAT FROM '+nSchema+'.INVTRAN';}
    
  If Not Dm_cal.QCondpay.Active Then Dm_cal.QCondpay.Open;
  Operat:= Dm_cal.QCondpay.Fieldbyname('Operate').Asfloat;//ค่าดำเนินการ
  Vat1  := Dm_cal.QArmast.Fieldbyname('Vatrt').Asfloat;
  TProf_a  := Dm_cal.QArmast.Fieldbyname('NPROFIT').Asfloat;
  SumProf := 0;
  SumDsc := 0 ;
  SumProfSTR := 0;
  SumProfEFF := 0;
  Dm_cal.QArpay.First;
  While not Dm_cal.QArpay.Eof do
  begin
    Xlate  := Dm_cal.QArpay.Fieldbyname('Ddate').Asdatetime-XDate;
    Vat1    := Dm_cal.QArpay.Fieldbyname('Vatrt').Asfloat;
    If (Xlate>0) Then
      SumDsc := SumDsc + (Xlate/30)*(Dm_cal.QArpay.Fieldbyname('N_Damt').Asfloat)
                                   *(Dm_cal.QCondpay.FieldByName('Disc_rt').AsFloat/100)
    else
    begin
      SumProf := SumProf + Dm_cal.QArpay.Fieldbyname('NProf').Asfloat;
      SumProfSTR := SumProfSTR + Dm_cal.QArpay.Fieldbyname('STRPROF').Asfloat;
      SumProfEFF := SumProfEFF + Dm_cal.QArpay.Fieldbyname('INTEFFR').Asfloat;
    end;
      Dm_cal.QArpay.Next;
  end;
       BalFprof := Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProf ;
       BalFProfStr:= Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProfSTR ;
       BalFProfEFF:= Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProfEFF ;

    If SumDsc>=Operat Then
       SumDsc:=SumDsc-Operat
    Else
       SumDsc:=0;
       TFDisc := FRound(SumDsc,2);
end;

Procedure CalDisc4;//คำนวณส่วนลดตัดสดตามวันชำระล่วงหน้า  พีระมอเตอร์
begin
  OpenTab;
  ShowDesc := 'คำนวณตามเปอเซ็นต์ส่วนลด';
  Dm_cal.QCondpay.SQL.Text := 'SELECT * FROM '+nSchema+'.CONDPAY';
  {Dm_cal.QArpay.SQL.Text   := 'SELECT * FROM '+nSchema+'.ARPAY';
  Dm_cal.Qinvtran.SQL.Text := 'SELECT STRNO,STAT FROM '+nSchema+'.INVTRAN';}

  If Not Dm_cal.QCondpay.Active Then Dm_cal.QCondpay.Open;
  Operat:= Dm_cal.QCondpay.Fieldbyname('Operate').Asfloat;//ค่าดำเนินการ
  Vat1  := Dm_cal.QArmast.Fieldbyname('Vatrt').Asfloat;
  TProf_a  := Dm_cal.QArmast.Fieldbyname('NPROFIT').Asfloat;
  Xdelay :=  Dm_cal.QArmast.Fieldbyname('DLDAY').Asfloat;
  SumProf := 0;
  SumDsc := 0 ;
  SumProfSTR := 0;
  SumProfEFF := 0;
  Dm_cal.QArpay.First;
  While not Dm_cal.QArpay.Eof do
  begin
    LDay(XDay,Dm_cal.QArpay.Fieldbyname('Ddate').Asdatetime);
    CDay := StrToint(Xday);
    Xlate1 := (Dm_cal.QArpay.Fieldbyname('Ddate').Asdatetime-XDate)+Xdelay;
    Xlate  := Dm_cal.QArpay.Fieldbyname('Ddate').Asdatetime-XDate;
    Vat1   := Dm_cal.QArpay.Fieldbyname('Vatrt').Asfloat;
    If (Xlate>0) and (Xlate1>=TCDay) Then
       SumDsc := SumDsc + (Xlate/30)*(Dm_cal.QArpay.Fieldbyname('N_Damt').Asfloat)
                                    *(Dm_cal.QCondpay.FieldByName('Disc_rt').AsFloat/100)
    else
    begin
       SumProf := SumProf + Dm_cal.QArpay.Fieldbyname('NProf').Asfloat;
       SumProfSTR := SumProfSTR + Dm_cal.QArpay.Fieldbyname('STRPROF').Asfloat;
       SumProfEFF := SumProfEFF + Dm_cal.QArpay.Fieldbyname('INTEFFR').Asfloat;
    end;
    TCDay := CDay;
    Dm_cal.QArpay.Next;
  end;
       BalFprof := Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProf ;
       BalFProfStr:= Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProfSTR ;
       BalFProfEFF:= Dm_cal.QArmast.Fieldbyname('NProfit').Asfloat-SumProfEFF ;
    If SumDsc>=Operat Then
       SumDsc:=SumDsc-Operat
    Else
       SumDsc:=0;
    if Dm_Cal.Qinvtran.FieldByName('STAT').AsString='N' then
    begin
        TFDiscpc := 0;
        TFDisc := 0;
        BalFProfStr := 0;
        BalFProfEFF := 0;
    end else
    begin
       TFDiscpc := FRound(SumDsc,2);
       if Dm_cal.QArmast.Fieldbyname('ACTICOD').AsString = '1' then
          TFDisc := FRound(BalFProfStr,2)
       else
          TFDisc := FRound(BalFProfStr*0.5,2);
    end;
end;

Procedure SrchRate(Lost_a:Double) ;
Var XRateFDt,XRateLDt : Tdatetime;
    Xadd : String;
begin
   XFDueDt  := DDate_a;
   XLduedt  := TDate;
   With Dm_cal Do
   Begin
     QIntrMast.First;
     While not QIntrMast.EOF Do
     Begin
       If (XFDuedt >= QINTRMAST.FieldByName('FrmDate').AsDateTime) Then
       Begin
         If (XFDuedt <= QINTRMAST.FieldByName('ToDate').AsDateTime) Then
         Begin
            //อัตราเบี้ยปรับจากวันที่
            XRateFDt := QINTRMAST.FieldByName('FrmDate').AsDateTime ;
            XINTR    := QINTRMAST.FieldByName('InTr').Asfloat ;
            If XLDuedt < QINTRMAST.FieldByName('ToDate').AsDateTime Then
            Begin
               XDelay   := XLDuedt-XFDuedt ;                 // เดิม +1 วัน
               If Xadd ='Y' Then
                  XDelay   := XDelay+1;
               XRateLDt := XLDuedt ;
               Xadd     := 'N';
            end
            Else
            begin
               XRateLDt := QINTRMAST.FieldByName('ToDate').AsDateTime ;
               XDelay   := XRateLDt-XFDuedt ;
               If Xadd ='Y' Then
                  XDelay   := XDelay+1;
               XFDuedt  := QINTRMAST.FieldByName('ToDate').AsDateTime+1 ;
               Xadd     := 'Y';
            end;
            Xintamt := Xintamt+FRound(lost_a*(Xintr+Addintr_a)*XDelay/(365*100),2) ;
         end ;
       End;
       QINTRMAST.Next;
     End;
   End;
End;


procedure OpenTab;
Begin
  With Dm_cal.QArmast Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM '+nSchema+'.ARMAST WHERE CONTNO=:0 AND LOCAT=:1 ');
    Params[0].Asstring := Xcontno;
    Params[1].Asstring := XLocat;
    Open;
  end;
  TFkang := Dm_cal.QArmast.Fieldbyname('Totprc').Asfloat-
            Dm_cal.QArmast.Fieldbyname('SmPay').Asfloat-
            Dm_cal.QArmast.Fieldbyname('SmChq').Asfloat;

  With Dm_cal.QArpay Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM '+nSchema+'.ARPAY WHERE CONTNO=:0 AND LOCAT=:1 ORDER BY NOPAY');
    Params[0].Asstring := Xcontno;
    Params[1].Asstring := XLocat;
    Open;
    First;
  end;

  With Dm_cal.Qinvtran Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM '+nSchema+'.INVTRAN WHERE STRNO=:0');
    Params[0].Asstring := XStrno;
    Open;
    First;
  end;
end;

Procedure CaLInt1 ;
//(Var SvCont,SvLoc:String;Var SVDate:TDatetime);
Var Date_a :Tdatetime;
    XLate_a,YLate_a,XDscint,Delyrt_a,
    Lost_a,Yamt,Dlday_a,Intr_a :Double;
begin
  //---------------------------------------------------------
  //                      คำนวณเบี้ยปรับ MRR+10%
  //---------------------------------------------------------
  OpenTab;
  With Dm_cal.Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SUM(PAYINT) AS PAID,SUM(DSCINT) AS DSCINT FROM '+nSchema+'.CHQTRAN '+
    'WHERE CONTNO=:V0 AND LOCATPAY=:V1  '+
    'AND (PAYFOR=''006'' OR PAYFOR=''007'' OR PAYFOR=''901'') AND FLAG<>''C'' ');
    Params[0].Asstring := XContno ;
    Params[1].Asstring := XLocat ;
    Open;
  End;
  //--- Sum ยอดเบี้ยปรับที่ชำระแล้ว---
  Sumintr  := 0;
  Paidintr := Dm_cal.Query1.Fieldbyname('Paid').asfloat;
  Tdscintr := Dm_cal.Query1.Fieldbyname('Dscint').asfloat;

  Dlday_a  := 0;
  Delyrt_a := 0;
  With Dm_cal.QChqtrn1 Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT Tmbildt,Paydt,Payamt,Payint FROM '+nSchema+'.CHQTRAN WHERE CONTNO=:V0 AND LOCATPAY=:V1 '+
    'AND (PAYFOR=''006'' OR PAYFOR=''007'' OR PAYFOR=''901'') AND FLAG<>''C'' ORDER BY PayDT,F_PAY ');
    Params[0].Asstring := Xcontno ;
    Params[1].Asstring := XLocat ;
    Open;
  end;
  //
  Dlday_a  := Dm_cal.QArmast.Fieldbyname('Dlday').Asfloat;
  Delyrt_a := Dm_cal.QArmast.Fieldbyname('Delyrt').Asfloat;
  Date_a   := XDate;

  If Not Dm_cal.QCondpay.Active Then Dm_cal.QCondpay.Open;
  Addintr_a := Dm_cal.QCondpay.Fieldbyname('Addintr').Asfloat;
  With Dm_cal Do
  Begin
    With QIntrMast Do
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM '+nSchema+'.INTRMAST WHERE TODATE >= :V0 '+
            'ORDER BY FRMDATE');
      Params[0].Asdate:= Qarmast.FieldByName('FDate').AsdateTime;
      Open;
      If (Bof and Eof) Then
        Raise Exception.Create('กำหนดอัตราดอกเบี้ย MRR ไม่ครอบคลุมสัญญา');
    End;
    QChqtrn1.First;
    XDscint :=0;
    XLate_a :=0;
    YLate_a :=0;
    QArPay.First;
    DDate_a  := QArpay.Fieldbyname('Ddate').Asdatetime;
    Lost_a   := QArpay.Fieldbyname('Damt').Asfloat;
    Xintamt  := 0;
    While (not QChqtrn1.Eof)and(QChqtrn1.Fieldbyname('Payamt').Asfloat=0) and (QChqtrn1.Fieldbyname('Payint').Asfloat>0) Do
       QChqtrn1.Next;
    While not QChqtrn1.Eof do
    begin
      Yamt  := QChqtrn1.Fieldbyname('Payamt').Asfloat;
      If QChqtrn1.Fieldbyname('Paydt').AsString = '' Then
        Tdate := QChqtrn1.Fieldbyname('Tmbildt').Asdatetime
      Else
        Tdate := QChqtrn1.Fieldbyname('Paydt').Asdatetime;
      While (Yamt>0) and (not QArpay.eof) Do
      begin
        If Yamt > Lost_a Then
        Begin
           If (TDate - DDate_a) > Dlday_a Then
              SrchRate(LOST_A) ;
           Yamt := Yamt-Lost_a;
           Lost_a := 0;
        End
        Else
        Begin
           If (TDate > DDate_a) Then
           begin
              If TDate-QArpay.Fieldbyname('Ddate').Asdatetime > Dlday_a Then
                 SrchRate(LOST_A) ;
              DDate_a := TDate ;
           end;
           Lost_a  := Lost_a-Yamt;
           Yamt := 0;
        end;
        If Lost_a = 0 Then
        Begin
           If QChqtrn1.Fieldbyname('Paydt').AsString ='' Then
              Xlate_a:= QChqtrn1.Fieldbyname('Tmbildt').Asdatetime -
                        QArpay.Fieldbyname('Ddate').Asdatetime
           Else
              Xlate_a:= QChqtrn1.Fieldbyname('Paydt').Asdatetime -
                        QArpay.Fieldbyname('Ddate').Asdatetime ;
           If XLate_a < 0 Then Xlate_a := 0;
           QArpay.Edit ;
           QArpay.FieldByName('Intamt').Asfloat := FRound(XIntAmt,2) ;
           QArpay.FieldByName('Delay').Asfloat  := XLate_a ;
           //---Sum เบี้ยปรับ---
           Sumintr := Sumintr+FRound(XIntAmt,2);
           QArpay.Next;
           XIntAmt  := 0 ;
           Lost_a  := QArpay.Fieldbyname('Damt').Asfloat;
           DDate_a := QArpay.Fieldbyname('Ddate').AsDateTime ;
        End;
      End;
      QChqtrn1.Next;
    End;
    //
    Yamt  := 0 ;
    Tdate := XDate ;
    While not (Qarpay.Eof) Do
    begin
      XLate_a := TDate-QArpay.FieldByName('Ddate').AsDateTime ;
      If XLate_a < 0 Then Xlate_a := 0;
      If (TDate - DDate_a) > Dlday_a Then
         SrchRate(LOST_A) ;
      QArpay.Edit ;
      QArpay.FieldByName('Intamt').Asfloat := FRound(XIntAmt,2) ;
      QArpay.FieldByName('Delay').Asfloat  := XLate_a ;
      //---Sum เบี้ยปรับ---
      Sumintr := Sumintr+FRound(XIntAmt,2);

      QArpay.Next;
      XIntAmt  := 0 ;
      Lost_a  := QArpay.Fieldbyname('Damt').Asfloat;
      DDate_a := QArpay.Fieldbyname('Ddate').AsDateTime ;
    end;
  end;
  //ShowInt;
end;


Procedure CaLInt2 ; // เปอร์เซนต์ ต่อเดือน
Var Date_a :Tdatetime;
    XLate_a,YLate_a,XDscint,Delyrt_a,
    Lost_a,Yamt,Dlday_a,Intr_a :Double;
begin
  //--- Sum ยอดเบี้ยปรับที่ชำระแล้ว---
  OpenTab;
  With Dm_cal.Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SUM(PAYINT) AS PAID,SUM(DSCINT) AS DSCINT FROM '+nSchema+'.CHQTRAN '+
    'WHERE CONTNO=:V0 AND LOCATPAY=:V1 '+
    'AND (PAYFOR=''006'' OR PAYFOR=''007'' OR PAYFOR=''901'') AND FLAG<>''C'' ');
    Params[0].Asstring := XContno ;
    Params[1].Asstring := XLocat  ;
    Open;
  End;
  Sumintr  := 0;
  Paidintr := Dm_cal.Query1.Fieldbyname('Paid').asfloat;
  Tdscintr := Dm_cal.Query1.Fieldbyname('Dscint').asfloat;
  Dlday_a  := 0;
  Delyrt_a := 0;
  With Dm_cal.QChqtrn1 Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT tmbill,Tmbildt,Paydt,Payamt,Payint FROM '+nSchema+'.CHQTRAN WHERE CONTNO=:V0 AND LOCATPAY=:V1 '+
    'AND (PAYFOR=''006'' OR PAYFOR=''007'' OR PAYFOR=''901'') AND (FLAG<>''C'') ORDER BY PayDT,F_PAY ');
    Params[0].Asstring := XContno ;
    Params[1].Asstring := XLocat ;
    Open;
  end;
  Dm_cal.QChqtrn1.First;

  With Dm_cal Do
  Begin
    Dlday_a  := QArmast.Fieldbyname('Dlday').Asfloat;
    Delyrt_a := QArmast.Fieldbyname('Delyrt').Asfloat;
    Date_a   := XDate;
    XDscint :=0;
    XLate_a :=0;
    YLate_a :=0;
    QArPay.First;
    DDate_a  := QArpay.Fieldbyname('Ddate').Asdatetime;
    Lost_a   := QArpay.Fieldbyname('Damt').Asfloat;
    Xintamt  := 0;
    While (not QChqtrn1.Eof) and (QChqtrn1.Fieldbyname('Payamt').Asfloat=0) Do
       QChqtrn1.Next;
    While not QChqtrn1.Eof do
    begin
      Yamt  := QChqtrn1.Fieldbyname('Payamt').Asfloat;
      If QChqtrn1.Fieldbyname('Paydt').AsString = '' Then
         Tdate := QChqtrn1.Fieldbyname('Tmbildt').Asdatetime
      Else
         Tdate := QChqtrn1.Fieldbyname('Paydt').Asdatetime;
      While (Yamt>0) and (not QArpay.eof) Do
      begin
        If Yamt > Lost_a Then
        Begin
           If (TDate - DDate_a) > Dlday_a Then
           begin
              XDelay  := TDate - DDate_a ;
              Xintamt := Xintamt+FRound(lost_a*Delyrt_a*XDelay/(30*100),2);
           end;
           Yamt := Yamt-Lost_a;
           Lost_a := 0;
        End Else
        Begin
           If (TDate > DDate_a) Then
           begin
              If TDate-QArpay.Fieldbyname('Ddate').Asdatetime > Dlday_a Then
              begin
                 XDelay  := TDate - DDate_a ;
                 Xintamt := Xintamt+FRound(lost_a*Delyrt_a*XDelay/(30*100),2);
                 DDate_a := TDate ;
              end;
           end;
           Lost_a  := Lost_a-Yamt;
           Yamt := 0;
        end;
        If Lost_a = 0 Then
        Begin
           If QChqtrn1.Fieldbyname('Paydt').Asstring = '' Then
              Xlate_a:= QChqtrn1.Fieldbyname('Tmbildt').Asdatetime -
                        QArpay.Fieldbyname('Ddate').Asdatetime
           Else
              Xlate_a:= QChqtrn1.Fieldbyname('Paydt').Asdatetime -
                        QArpay.Fieldbyname('Ddate').Asdatetime ;
           If XLate_a < 0 Then Xlate_a := 0;
           QArpay.Edit ;
           QArpay.FieldByName('Intamt').Asfloat := FRound(XIntAmt,2) ;
           QArpay.FieldByName('Delay').Asfloat  := XLate_a ;
           //---Sum เบี้ยปรับ---
           Sumintr := Sumintr+FRound(XIntAmt,2);

           QArpay.Next;
           XIntAmt  := 0 ;
           Lost_a  := QArpay.Fieldbyname('Damt').Asfloat;
           DDate_a := QArpay.Fieldbyname('Ddate').AsDateTime ;
        End;
      End;
      QChqtrn1.Next;
    End;
    //
    Yamt  := 0 ;
    Tdate := XDate;
    While not (Qarpay.Eof) Do
    begin
      If (TDate - DDate_a) > Dlday_a Then
      begin
        XDelay  := TDate - DDate_a ;
        Xintamt := Xintamt+FRound(lost_a*Delyrt_a*XDelay/(30*100),2) ;
      end;
      Xlate_a:= XDate-QArpay.Fieldbyname('Ddate').Asdatetime ;

      If XLate_a < 0 Then Xlate_a := 0;
      QArpay.Edit ;
      QArpay.FieldByName('Intamt').Asfloat := FRound(XIntAmt,2) ;
      QArpay.FieldByName('Delay').Asfloat  := XLate_a ;
      //---Sum เบี้ยปรับ---
      Sumintr := Sumintr+FRound(XIntAmt,2);
      QArpay.Next;

      XIntAmt  := 0 ;
      Lost_a  := QArpay.Fieldbyname('Damt').Asfloat;
      DDate_a := QArpay.Fieldbyname('Ddate').AsDateTime ;
    end;
  End;
  //ShowInt;
end;

Procedure CaLInt3 ;  // แบบค่าคงที่
Var Date_a :Tdatetime;
    XLate_a,YLate_a,XDscint,Delyrt_a,
    Lost_a,Yamt,Dlday_a,Intr_a :Double;
begin
  //--- Sum ยอดเบี้ยปรับที่ชำระแล้ว---
  OpenTab;
  With Dm_cal.Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SUM(PAYINT) AS PAID,SUM(DSCINT) AS DSCINT FROM '+nSchema+'.CHQTRAN '+
    'WHERE CONTNO=:V0 AND LOCATPAY=:V1 '+
    'AND (PAYFOR=''006'' OR PAYFOR=''007'' OR PAYFOR=''901'') AND FLAG<>''C'' ');
    Params[0].Asstring := XContno ;
    Params[1].Asstring := XLocat  ;
    Open;
  End;
  Sumintr  := 0;
  Paidintr := Dm_cal.Query1.Fieldbyname('Paid').asfloat;
  Tdscintr := Dm_cal.Query1.Fieldbyname('Dscint').asfloat;

  Dlday_a  := 0;
  Delyrt_a := 0;

  With Dm_cal.QChqtrn1 Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT tmbill,Tmbildt,Paydt,Payamt,Payint FROM '+nSchema+'.CHQTRAN WHERE CONTNO=:V0 AND LOCATPAY=:V1 '+
    'AND (PAYFOR=''006'' OR PAYFOR=''007'' OR PAYFOR=''901'') AND (FLAG<>''C'') ORDER BY PayDT,F_PAY ');
    Params[0].Asstring := XContno ;
    Params[1].Asstring := XLocat ;
    Open;
  end;
  Dm_cal.QChqtrn1.First;
  With Dm_cal Do
  Begin
    Dlday_a  := QArmast.Fieldbyname('Dlday').Asfloat;
    Delyrt_a := QArmast.Fieldbyname('Delyrt').Asfloat;
    Date_a   := XDate;
    XDscint :=0;
    XLate_a :=0;
    YLate_a :=0;
    QArPay.First;
    DDate_a  := QArpay.Fieldbyname('Ddate').Asdatetime;
    Lost_a   := QArpay.Fieldbyname('Damt').Asfloat;
    Xintamt  := 0;
    While (not QChqtrn1.Eof) and (QChqtrn1.Fieldbyname('Payamt').Asfloat=0) Do
       QChqtrn1.Next;
    While not QChqtrn1.Eof do
    begin
      Yamt  := QChqtrn1.Fieldbyname('Payamt').Asfloat;
      If QChqtrn1.Fieldbyname('Paydt').AsString = '' Then
        Tdate := QChqtrn1.Fieldbyname('Tmbildt').Asdatetime
      Else
        Tdate := QChqtrn1.Fieldbyname('Paydt').Asdatetime;
        DecodeDate(DDate_a, Year, Month, Day);
        DecodeDate(TDate, Year1, Month1, Day1);
      While (Yamt>0) and (not QArpay.eof) Do
      begin
        If Yamt > Lost_a Then
        Begin
           If (TDate - DDate_a) > Dlday_a Then
           begin
              XDelay  := TDate - DDate_a ;
                 if (Xintamt>0) and (QArpay.FieldByName('NOPAY').AsFloat>QArmast.FieldByName('T_NOPAY').AsFloat) then
                      Xintamt := Xintamt+Delyrt_a
                 else  Xintamt := Delyrt_a;
           end;
           Yamt := Yamt-Lost_a;
           Lost_a := 0;
        End
        Else
        Begin
           If (TDate > DDate_a) Then
           begin
              If TDate-QArpay.Fieldbyname('Ddate').Asdatetime > Dlday_a Then
              begin
                 XDelay  := TDate - DDate_a ;
                 if (Xintamt>0) and (QArpay.FieldByName('NOPAY').AsFloat>QArmast.FieldByName('T_NOPAY').AsFloat) then
                     Xintamt := Xintamt+Delyrt_a
                 else Xintamt := Delyrt_a;
                 DDate_a := TDate ;
              end;
           end;
           Lost_a  := Lost_a-Yamt;
           Yamt := 0;
        end;
        If Lost_a = 0 Then
        Begin
           If QChqtrn1.Fieldbyname('Paydt').Asstring = '' Then
              Xlate_a:= QChqtrn1.Fieldbyname('Tmbildt').Asdatetime -
                        QArpay.Fieldbyname('Ddate').Asdatetime
           Else
              Xlate_a:= QChqtrn1.Fieldbyname('Paydt').Asdatetime -
                        QArpay.Fieldbyname('Ddate').Asdatetime ;
           If XLate_a < 0 Then Xlate_a := 0;
           QArpay.Edit ;
           QArpay.FieldByName('Intamt').Asfloat := FRound(XIntAmt,2) ;
           QArpay.FieldByName('Delay').Asfloat  := XLate_a ;//Tdate-DDate_a ;
           //---Sum เบี้ยปรับ---
           Sumintr := Sumintr+FRound(XIntAmt,2);

           QArpay.Next;
           XIntAmt  := 0 ;
           Lost_a  := QArpay.Fieldbyname('Damt').Asfloat;
           DDate_a := QArpay.Fieldbyname('Ddate').AsDateTime ;
        End;
      End;
      QChqtrn1.Next;
    End;
    //
    Yamt  := 0 ;
    Tdate := XDate;
    While not (Qarpay.Eof) Do
    begin
      If (TDate - DDate_a) > Dlday_a Then
      begin
        if (Xintamt>0) and (QArpay.FieldByName('NOPAY').AsFloat>QArmast.FieldByName('T_NOPAY').AsFloat) then
            Xintamt := Xintamt+Delyrt_a
        else  Xintamt := Delyrt_a;
      end;
      Xlate_a:= XDate-QArpay.Fieldbyname('Ddate').Asdatetime ;
      If XLate_a < 0 Then Xlate_a := 0;
      QArpay.Edit ;
      QArpay.FieldByName('Intamt').Asfloat := FRound(XIntAmt,2) ;
      QArpay.FieldByName('Delay').Asfloat  := XLate_a ;
      //---Sum เบี้ยปรับ---
      Sumintr := Sumintr+FRound(XIntAmt,2);
      QArpay.Next;
      XIntAmt  := 0 ;
      Lost_a  := QArpay.Fieldbyname('Damt').Asfloat;
      DDate_a := QArpay.Fieldbyname('Ddate').AsDateTime ;
    end;
  End;
end;


Procedure CaLInt4 ;
Var Date_a :Tdatetime;
    XLate_a,YLate_a,XDscint,Delyrt_a,
    TLost,Lost_a,Yamt,Dlday_a,Intr_a :Double;
begin
  //--- Sum ยอดเบี้ยปรับที่ชำระแล้ว---
  OpenTab;
  With Dm_cal.Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SUM(PAYINT) AS PAID,SUM(DSCINT) AS DSCINT FROM '+nSchema+'.CHQTRAN '+
    'WHERE CONTNO=:V0 AND LOCATPAY=:V1 '+
    'AND (PAYFOR=''006'' OR PAYFOR=''007'' OR PAYFOR=''901'') AND FLAG<>''C'' ');
    Params[0].Asstring := XContno ;
    Params[1].Asstring := XLocat  ;
    Open;
  End;
  Sumintr  := 0;
  Paidintr := Dm_cal.Query1.Fieldbyname('Paid').asfloat;
  Tdscintr := Dm_cal.Query1.Fieldbyname('Dscint').asfloat;
  Dlday_a  := 0;
  Delyrt_a := 0;
  With Dm_cal.QChqtrn1 Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT tmbill,Tmbildt,Paydt,Payamt_N,Payint FROM '+nSchema+'.CHQTRAN WHERE CONTNO=:V0 AND LOCATPAY=:V1 '+
    'AND (PAYFOR=''006'' OR PAYFOR=''007'' OR PAYFOR=''901'') AND (FLAG<>''C'') ORDER BY PayDT,F_PAY ');
    Params[0].Asstring := XContno ;
    Params[1].Asstring := XLocat ;
    Open;
  end;
  Dm_cal.QChqtrn1.First;

  With Dm_cal Do
  Begin
    Dlday_a  := QArmast.Fieldbyname('Dlday').Asfloat;
    Delyrt_a := QArmast.Fieldbyname('Delyrt').Asfloat;
    Date_a   := XDate;
    XDscint :=0;
    XLate_a :=0;
    YLate_a :=0;
    QArPay.First;
    DDate_a  := QArpay.Fieldbyname('Ddate').Asdatetime;
    TDate    := QArpay.Fieldbyname('Date1').Asdatetime;
    Lost_a   := QArpay.Fieldbyname('N_Damt').Asfloat;
    TLost   := QArpay.Fieldbyname('N_Damt').Asfloat;
    Xintamt  := 0;
      While (not QArpay.eof) Do
      begin
           If (TDate - DDate_a) > Dlday_a Then
           begin
              XDelay  := TDate - DDate_a ;
              Xintamt := Xintamt+FRound(Tlost*Delyrt_a/100,2);
              If TDate = 0 then
                 TLost := Tlost+Lost_a
              Else Lost_a := 0;
           end else
           Begin
              Lost_a := 0;
              XDelay := 0;
           End;
           QArpay.Edit ;
           QArpay.FieldByName('Intamt').Asfloat := FRound(XIntAmt,2) ;
           QArpay.FieldByName('Delay').Asfloat  := XDelay;
           //---Sum เบี้ยปรับ---
           Sumintr := Sumintr+FRound(XIntAmt,2);

           QArpay.Next;
           XIntAmt  := 0 ;
           Lost_a  := QArpay.Fieldbyname('N_Damt').Asfloat;
           DDate_a := QArpay.Fieldbyname('Ddate').AsDateTime ;
           TDate  := QArpay.Fieldbyname('Date1').Asdatetime;
           if Tdate = 0 then
              TDate := XDate;
      End;
  End;
  //ShowInt;
end;

end.
