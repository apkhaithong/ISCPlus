unit Functn01;

interface
uses
     //DBTables,DBITypes,DBIProcs, SysUtils,DB,Math,Dialogs,
     Windows, SysUtils,classes,DB, dbgrids,dbctrls,Forms, Controls,Dialogs,
     stdctrls,extctrls,mask, Graphics, JPeg, DBClient, MidasLib,Registry,DateUtils, Types,
     Math,DBIProcs,

     {cx Components}
     cxGraphics, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
     cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
     cxGridCustomView, cxGridCustomTableView, cxGridTableView,
     cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, cxTextEdit,
     cxSpinEdit, cxDBEdit, cxImageComboBox, cxDropDownEdit, cxCheckBox,
     cxButtonEdit, cxCalendar, cxMaskEdit, cxMemo,cxPC, cxLookupEdit,
     cxDBLookupEdit, cxDBLookupComboBox,

     {TMS Components}
     AdvPanel,

     {dx Components}
     dxStatusBar,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

//  procedure Dbisave_chg(Table1:TFDTable);
  Function GenCont(Pf:string):string;
  Function FRound(Amt:Double;Dec:word):Double;
  function Rounder(var Value: Double; Decimals: Integer): Double;
  procedure ClearAsFloat(DataSet: TDataSet);
  procedure ClearAsString(DataSet: TDataSet);
  // เปลี่ยนตัวเลขเป็นตัวอักษร}
  Procedure ChgNtoS(Var Amt:String);
  Procedure ChqNum(Var WordAmt:String;Expamt:Longint);
  Procedure MainChg(Var WordAmt:String;Totamt:Double);
        { การเรียกใช้ [MainChg(WordAmt,TotAmt);]
          WordAmt = คืนค่าที่เป็นอักษร , TotAmt = ส่งค่าเป็นตัวเลข}
  // เปลี่ยนวันที่เป็นตัวอักษร}
  Procedure ChqDatetoS(Var Day1,Month1,Year1:String; Chang:Integer; ValueDate:TDateTime);
       { การเรียกใช้ [ChqDatetoS(WordDate,ValueDate);]
         WordDate = คืนค่าที่เป็นอักษร , ValueDate = ส่งค่าเป็นวันที่}
  function MoneyToStrTH(Var money: Currency): string;
  Procedure LDay(Var Day1:String;ValueDate:TDateTime );
  Function Next_Mth(Dte_a,Fdate_a:Tdatetime;Tupay_a:Double):TdateTime;
  Procedure Do_StateChange_in_Mode(Source_Onpage : TComponent;DsState_Mode:TDataSetState);
  Procedure Do_Check_Object_Parent(objParent : TComponent;DsState_Mode : TDataSetState);

implementation

Procedure Do_Check_Object_Parent(objParent : TComponent;DsState_Mode:TDataSetState);
Var
  n : Integer;
Begin
   {Parent of components...}
  If objParent is TcxGroupBox then
     for n := 0 To (objParent as TcxGroupBox).ControlCount - 1 do
         Do_StateChange_in_Mode((objParent as TcxGroupBox).Controls[n],DsState_Mode);

  If objParent is TcxTabSheet then
     for n := 0 To (objParent as TcxTabSheet).ControlCount - 1 do
         Do_StateChange_in_Mode((objParent as TcxTabSheet).Controls[n],DsState_Mode);

  If objParent is TAdvPanel then
     for n := 0 To (objParent as TAdvPanel).ControlCount - 1 do
         Do_StateChange_in_Mode((objParent as TAdvPanel).Controls[n],DsState_Mode);
end;

Procedure Do_StateChange_in_Mode(Source_Onpage : TComponent; DsState_Mode:TDataSetState);
Var
  n : Word;
Begin
   if DsState_Mode = dsBrowse then
   begin   {Browse Mode}
     {cxDBComponents}
     If (Source_Onpage is TcxDBButtonEdit) and ((Source_Onpage as TcxDBButtonEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBButtonEdit).Properties.ReadOnly     := True;
       (Source_Onpage as TcxDBButtonEdit).Style.Color             := clBtnFace;
     end;

     If (Source_Onpage is TcxDBTextEdit) and ((Source_Onpage as TcxDBTextEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBTextEdit).Properties.ReadOnly       := True;
       (Source_Onpage as TcxDBTextEdit).Style.Color               := clBtnFace;
     end;

     If (Source_Onpage is TcxDBDateEdit) and ((Source_Onpage as TcxDBDateEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBDateEdit).Properties.ReadOnly       := True;
       (Source_Onpage as TcxDBDateEdit).Style.Color               := clBtnFace;
     end;

     If (Source_Onpage is TcxTextEdit) and ((Source_Onpage as TcxTextEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxTextEdit).Style.Color                 := clBtnFace;
     end;

     If (Source_Onpage is Tcxdbmemo) and ((Source_Onpage as Tcxdbmemo).Tag  = 0)  Then
     begin
       (Source_Onpage as Tcxdbmemo).Properties.ReadOnly           := True;
       (Source_Onpage as Tcxdbmemo).Style.Color                   := clBtnFace;
     end;

     If (Source_Onpage is TcxDBLookupComboBox) and ((Source_Onpage as TcxDBLookupComboBox).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBLookupComboBox).Properties.ReadOnly := True;
       (Source_Onpage as TcxDBLookupComboBox).Style.Color         := clBtnFace;
     end;

     If (Source_Onpage is TcxDBImageComboBox) and ((Source_Onpage as TcxDBImageComboBox).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBImageComboBox).Properties.ReadOnly  := True;
       (Source_Onpage as TcxDBImageComboBox).Style.Color          := clBtnFace;
     end;

     If (Source_Onpage is TcxDBCurrencyEdit) and ((Source_Onpage as TcxDBCurrencyEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBCurrencyEdit).Properties.ReadOnly   := True;
       (Source_Onpage as TcxDBCurrencyEdit).Style.Color           := clBtnFace;
     end;

     If (Source_Onpage is TcxDBCalcEdit) and ((Source_Onpage as TcxDBCalcEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBCalcEdit).Properties.ReadOnly   := True;
       (Source_Onpage as TcxDBCalcEdit).Style.Color           := clBtnFace;
     end;

     If (Source_Onpage is TcxDBComboBox) and ((Source_Onpage as TcxDBComboBox).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBComboBox).Properties.ReadOnly       := True;
       (Source_Onpage as TcxDBComboBox).Style.Color               := clBtnFace;
     end;

     {cxComponents}
     If (Source_Onpage is TcxButtonEdit) and ((Source_Onpage as TcxButtonEdit).Tag  = 1)  Then
        (Source_Onpage as TcxButtonEdit).Style.Color              := clBtnFace;

     If (Source_Onpage is TcxTextEdit) and ((Source_Onpage as TcxTextEdit).Tag  = 1)  Then
        (Source_Onpage as TcxTextEdit).Style.Color                := clBtnFace;

     If (Source_Onpage is TcxDateEdit) and ((Source_Onpage as TcxDateEdit).Tag  = 1)  Then
        (Source_Onpage as TcxDateEdit).Style.Color                := clBtnFace;
   end else
   begin   {Insert or Edit Mode}
     {cxDBComponents}
     If (Source_Onpage is TcxDBButtonEdit) and ((Source_Onpage as TcxDBButtonEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBButtonEdit).Properties.ReadOnly     := False;
       (Source_Onpage as TcxDBButtonEdit).Style.Color             := clWhite;
     end;

     If (Source_Onpage is TcxDBTextEdit) and ((Source_Onpage as TcxDBTextEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBTextEdit).Properties.ReadOnly       := False;
       (Source_Onpage as TcxDBTextEdit).Style.Color               := clWhite;
     end;

     If (Source_Onpage is TcxDBDateEdit) and ((Source_Onpage as TcxDBDateEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBDateEdit).Properties.ReadOnly       := False;
       (Source_Onpage as TcxDBDateEdit).Style.Color               := clWhite;
     end;

     If (Source_Onpage is TcxTextEdit) and ((Source_Onpage as TcxTextEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxTextEdit).Style.Color                 := clWhite;
     end;

     If (Source_Onpage is Tcxdbmemo) and ((Source_Onpage as Tcxdbmemo).Tag  = 0)  Then
     begin
       (Source_Onpage as Tcxdbmemo).Properties.ReadOnly           := False;
       (Source_Onpage as Tcxdbmemo).Style.Color                   := clWhite;
     end;

     If (Source_Onpage is TcxDBLookupComboBox) and ((Source_Onpage as TcxDBLookupComboBox).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBLookupComboBox).Properties.ReadOnly := False;
       (Source_Onpage as TcxDBLookupComboBox).Style.Color         := clWhite;
     end;

     If (Source_Onpage is TcxDBImageComboBox) and ((Source_Onpage as TcxDBImageComboBox).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBImageComboBox).Properties.ReadOnly  := False;
       (Source_Onpage as TcxDBImageComboBox).Style.Color          := clWhite;
     end;

     If (Source_Onpage is TcxDBCurrencyEdit) and ((Source_Onpage as TcxDBCurrencyEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBCurrencyEdit).Properties.ReadOnly   := False;
       (Source_Onpage as TcxDBCurrencyEdit).Style.Color           := clWhite;
     end;

     If (Source_Onpage is TcxDBCalcEdit) and ((Source_Onpage as TcxDBCalcEdit).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBCalcEdit).Properties.ReadOnly       := False;
       (Source_Onpage as TcxDBCalcEdit).Style.Color               := clWhite;
     end;

     If (Source_Onpage is TcxDBComboBox) and ((Source_Onpage as TcxDBComboBox).Tag  = 0)  Then
     begin
       (Source_Onpage as TcxDBComboBox).Properties.ReadOnly       := False;
       (Source_Onpage as TcxDBComboBox).Style.Color               := clWhite;
     end;

     {cxComponents}
     If (Source_Onpage is TcxButtonEdit) and ((Source_Onpage as TcxButtonEdit).Tag  = 1)  Then
        (Source_Onpage as TcxButtonEdit).Style.Color              := clWhite;

     If (Source_Onpage is TcxTextEdit) and ((Source_Onpage as TcxTextEdit).Tag  = 1)  Then
        (Source_Onpage as TcxTextEdit).Style.Color                := clWhite;

     If (Source_Onpage is TcxDateEdit) and ((Source_Onpage as TcxDateEdit).Tag  = 1)  Then
        (Source_Onpage as TcxDateEdit).Style.Color                := clWhite;
   end;

     {Check "Tag2"}
     if Source_Onpage is TcxDBButtonEdit  then
     begin
       if (Source_Onpage as TcxDBButtonEdit).Tag  = 2 then
       begin
         (Source_Onpage as TcxDBButtonEdit).Properties.ReadOnly   := True;
         (Source_Onpage as TcxDBButtonEdit).Style.Color           := clBtnFace;
       end;
     end;

     if Source_Onpage is TcxDBTextEdit  then
     begin
       if (Source_Onpage as TcxDBTextEdit).Tag  = 2 then
       begin
         (Source_Onpage as TcxDBTextEdit).Properties.ReadOnly     := True;
         (Source_Onpage as TcxDBTextEdit).Style.Color             := clBtnFace;
       end;
     end;

     if Source_Onpage is TcxDBDateEdit  then
     begin
       if (Source_Onpage as TcxDBDateedit).Tag  = 2 then
       begin
         (Source_Onpage as TcxDBDateedit).Properties.ReadOnly     := True;
         (Source_Onpage as TcxDBDateedit).Style.Color             := clBtnFace;
       end;
     end;

     if Source_Onpage is TcxDBMemo  then
     begin
       if (Source_Onpage as TcxDBMemo).Tag  = 2 then
       begin
         (Source_Onpage as TcxDBMemo).Properties.ReadOnly         := True;
         (Source_Onpage as TcxDBMemo).Style.Color                 := clBtnFace;
       end;
     end;

   if DsState_Mode = dsBrowse then
   begin
     If (Source_Onpage is TdxStatusBar) and ((Source_Onpage as TdxStatusBar).Tag  = 0)  Then
        (Source_Onpage as TdxStatusBar).Panels[3].Text := 'Data State : Browse mode';
   end else
   if DsState_Mode = dsInsert then
   begin
     If (Source_Onpage is TdxStatusBar) and ((Source_Onpage as TdxStatusBar).Tag  = 0)  Then
        (Source_Onpage as TdxStatusBar).Panels[3].Text := 'Data State : Insert mode';
   end else
   begin
     If (Source_Onpage is TdxStatusBar) and ((Source_Onpage as TdxStatusBar).Tag  = 0)  Then
        (Source_Onpage as TdxStatusBar).Panels[3].Text := 'Data State : Edit mode';
   end;
End;

Function Next_Mth(Dte_a,Fdate_a:Tdatetime;Tupay_a:Double):TdateTime;
Var Mon : Array[1..12] of Integer;
    Year1,Year2: double;
    K,M,C,D,MDay,Mn,Yr:Integer;
    S:String;
begin
  Mon[1] := 31;
  Mon[2] := 28;
  Mon[3] := 31;
  Mon[4] := 30;
  Mon[5] := 31;
  Mon[6] := 30;
  Mon[7] := 31;
  Mon[8] := 31;
  Mon[9] := 30;
  Mon[10] := 31;
  Mon[11] := 30;
  Mon[12] := 31;
  S     := copy(datetostr(Dte_a),7,4);
  Yr    := StrtoInt(S) ;
  Year1 := Strtofloat(S)/4;
  S     := FloatToStrF(Year1,ffFixed,15,2);
  Year1 := StrTofloat(S);
  Year2 := int(Year1);
  If Year1=Year2 Then
    Mon[2] :=29
  Else
    Mon[2] :=28;
  C := StrToint(copy(datetostr(FDate_a),1,2));
  D := StrToint(copy(datetostr(Dte_a),1,2));
  M := StrToint(copy(datetostr(Dte_a),4,2));
  Mn:= Strtoint(Floattostr(Tupay_a));
  K := M+Mn;
  If K>12 Then
  begin
    K  := K-12;
    Yr := Yr + 1 ;
  end;
  Mday := Mon[K] ;
  If C > D Then D := C ;
  If D > Mday Then D := Mday ;
  Result := EncodeDate(Yr, K, D);
end;

Procedure ChqDatetoS(Var Day1,Month1,Year1:String; Chang:Integer; ValueDate:TDateTime);
Var  day,month,year : Word;
begin
  DecodeDate(ValueDate, Year, Month, Day);
  Case Chang of
    1 : Begin
          Case Month of
            1 : month1 := '01';
            2 : month1 := '02';
            3 : month1 := '03';
            4 : month1 := '04';
            5 : month1 := '05';
            6 : month1 := '06';
            7 : month1 := '07';
            8 : month1 := '08';
            9 : month1 := '09';
           10 : month1 := '10';
           11 : month1 := '11';
           12 : month1 := '12';
          End;
          Day1  := InttoStr(Day);
          Year1 := Inttostr(year+543);
        End;
    2 : Begin
          Case Month of
            1 : month1 := 'มกราคม';
            2 : month1 := 'กุมภาพันธ์';
            3 : month1 := 'มีนาคม' ;
            4 : month1 := 'เมษายน';
            5 : month1 := 'พฤษภาคม';
            6 : month1 := 'มิถุนายน';
            7 : month1 := 'กรกฎาคม';
            8 : month1 := 'สิงหาคม';
            9 : month1 := 'กันยายน';
           10 : month1 := 'ตุลาคม';
           11 : month1 := 'พฤศจิกายน';
           12 : month1 := 'ธันวาคม';
          End;
          Day1  := InttoStr(Day);
          Year1 := inttostr(year+543);
        end;
  End;
end;

Procedure ChgNtoS(Var Amt:String);
begin
   if Amt = '0' then Amt := '';
   if Amt = '1' then Amt := 'หนึ่ง';
   if Amt = '2' then Amt := 'สอง';
   if Amt = '3' then Amt := 'สาม';
   if Amt = '4' then Amt := 'สี่';
   if Amt = '5' then Amt := 'ห้า';
   if Amt = '6' then Amt := 'หก';
   if Amt = '7' then Amt := 'เจ็ด';
   if Amt = '8' then Amt := 'แปด';
   if Amt = '9' then Amt := 'เก้า';
end;

Procedure ChqNum(Var WordAmt:String;Expamt:Longint);
Var Num    : LongInt;
    Amt    : String;
    ChkOne : Boolean;
begin
       ChkOne := False;
       if (expamt >= 10) and (expamt < 20) then
       begin
             Wordamt := 'สิบ';
             ExpAmt  := Trunc(ExpAmt) mod 10;
             if ExpAmt = 1 then
                   ChkOne := True;
       end;
       while (expamt > 0) do
         begin
            if expamt >= 1000000 then
              begin
                Num := Trunc(expamt) div 1000000;
                Amt := inttostr(Num);
                ChgNtoS(Amt);
                Amt := Amt + 'ล้าน';
                ExpAmt  := Trunc(ExpAmt) mod 1000000;
              end
            else
              if (expamt >= 100000) and (expamt < 1000000) then
              begin
                Num := Trunc(expamt) div 100000;
                Amt := inttostr(Num);
                ChgNtoS(Amt);
                Amt := Amt + 'แสน';
                ExpAmt  := Trunc(ExpAmt) mod 100000;
              end
            else
              if (expamt >= 10000) and (expamt < 100000) then
              begin
                Num := Trunc(expamt) div 10000;
                Amt := inttostr(Num);
                ChgNtoS(Amt);
                Amt := Amt + 'หมื่น';
                ExpAmt  := Trunc(ExpAmt) mod 10000;
              end
            else
              if (expamt >= 1000) and (expamt < 10000) then
              begin
                Num := Trunc(expamt) div 1000;
                Amt := inttostr(Num);
                ChgNtoS(Amt);
                Amt := Amt + 'พัน';
                ExpAmt  := Trunc(ExpAmt) mod 1000;
              end
            else
              if (expamt >= 100) and (expamt < 1000) then
              begin
                Num := Trunc(expamt) div 100;
                Amt := inttostr(Num);
                ChgNtoS(Amt);
                Amt := Amt + 'ร้อย';
                ExpAmt  := Trunc(ExpAmt) mod 100;
              end
            else
              if (expamt >= 10) and (expamt < 100) then
              begin
                Num := Trunc(expamt) div 10;
                if ( Num = 2 ) then
                  begin
                     Amt := 'ยี่สิบ';
                     ExpAmt  := Trunc(ExpAmt) mod 10;
                  end
                else
                  begin
                     Amt := inttostr(Num);
                     If Amt<>'1' Then
                     Begin
                      ChgNtoS(Amt);
                      Amt := Amt + 'สิบ';
                     End
                     Else
                     Amt := 'สิบ';
                     ExpAmt  := Trunc(ExpAmt) mod 10;
                  end;
                if ExpAmt = 1 then
                   ChkOne := True;
              end
            else
              if (expamt >= 1) and (expamt < 10) then
              begin
                Num := Trunc(expamt) div 1;
                Amt := inttostr(Num);
                ChgNtoS(Amt);
                Amt := Amt;
                ExpAmt  := Trunc(ExpAmt) mod 1;
                if ChkOne = True then
                  Amt := 'เอ็ด';
              end;
            WordAmt := Wordamt + Amt;
         end;
end;

Procedure MainChg(Var WordAmt:String;Totamt:Double);
Var Tempstr,AMT,WORDTot,WordNum,WordDec,WDecamt    : String;
    expamt,Million,Decimal : longint;
begin
         WORDAMT := '';
         WordTot := FloattoStrF(TotAmt,ffFixed,15,2);
         WordNum := Copy(WordTot,1,Pos('.',WordTot)-1);
         WordDec := Copy(WordTot,Pos('.',WordTot)+1,2);//(Length(WordTot)-Pos('.',WordTot)));
         Expamt  := Strtoint(WordNum);
         Decimal := Strtoint(WordDec);
         if (expamt >= 1000000)  then
            begin
               million := (expamt div 1000000);
               expamt  := (expamt - (million * 1000000));
               ChqNum(WordAmt,million);
               WordAmt := WordAmt + 'ล้าน' ;
            end;
         if (expamt > 0 ) and (expamt < 1000000) then
             begin
                ChqNum(WordAmt,Expamt);
                if (Decimal <= 0) then
                   WordAmt := WordAmt + 'บาทถ้วน'
                else
                   WordAmt := WordAmt + 'บาท' ;
            end;
         if (Decimal > 0 ) then
            begin
               //ChqNum(WordAmt,Decimal);
               WDecamt:='';
               ChqNum(WDecamt,Decimal);
               WordAmt := WordAmt +WDecamt+ 'สตางค์' ;
            end;
end;

//procedure Dbisave_chg(Table1:TFDTable);
//begin
//  DBisavechanges(table1.handle);
//end;

Function GenCont(Pf:string):string;
Var S1,s2:string;
   I:integer;
begin
  Randomize;
  S1:=formatdatetime('yymmdd',now);
  S2:=formatdatetime('hhnnss',now);
  Result:= Pf+S1+S2+Inttostr(random(9));
end;

procedure ClearAsFloat(DataSet: TDataSet);
Var S:String;
    I:Integer;
begin
  For I:= 0 to DataSet.FieldCount-1 Do
  begin
    If (DataSet.Fields[I].dataType = ftFloat) and
       (DataSet.Fields[I].Isnull) Then
    begin
      S := DataSet.Fields[I].FieldName;
      DataSet.Fieldbyname(S).Asfloat := 0;
    end;
  End;
end;

procedure ClearAsstring(DataSet: TDataSet);
Var S:String;
    I:Integer;
begin
  For I:= 0 to DataSet.FieldCount-1 Do
  begin
    If (DataSet.Fields[I].dataType = ftstring) and
       (DataSet.Fields[I].Isnull) Then
    begin
      S := DataSet.Fields[I].FieldName;
      DataSet.Fieldbyname(S).Asstring := '';
    end;
  End;
end;

function MoneyToStrTH(var money: Currency): string;
const
  ThaiUnitValues: array [1..7] of string[5] =
    ('','สิบ','ร้อย','พัน','หมื่น','แสน','ล้าน');

  ThaiDigits: array ['0'..'9'] of string[5] =
    ('ศูนย์','หนึ่ง','สอง','สาม','สี่','ห้า','หก','เจ็ด','แปด','เก้า');
var
    ThaiStr: string;
    IntegerStr: string; // an integer part of money.
    FloatStr: string; // an float part of money.
    DegitIndex, UnitValue: Byte;
    CurrDigit : char;
begin
  Str(Int(money):0:0, IntegerStr);
  DegitIndex:= Length(IntegerStr);
  UnitValue:= 1;
  while (DegitIndex > 0) do
  begin
    CurrDigit:= IntegerStr[DegitIndex];
    if (CurrDigit > '0') then
    begin
      ThaiStr:= ThaiUnitValues[UnitValue]+ThaiStr;
      if ((UnitValue = 1) or (UnitValue = 7)) and // เป็นเลขหลักหน่วยหรือหลักล้าน
         (CurrDigit = '1') and                    // เป็นตัวเลข "1"
         (DegitIndex > 1) then                    // ไม่ใช่ตัวแรกสุด
      begin
        if (IntegerStr[DegitIndex-1]>'0') then // จะเปลี่ยนเป็นเอ็ดเมื่อหลักสิบมีค่าเท่านั้น
          ThaiStr:= 'เอ็ด'+ThaiStr;
      end else
      if (UnitValue=2) then
      begin
        if (CurrDigit='1') then {No Operation}
        else if(CurrDigit='2') then ThaiStr:= 'ยี่'+ThaiStr
        else ThaiStr:= ThaiDigits[CurrDigit]+ThaiStr;
      end else
         ThaiStr:= ThaiDigits[CurrDigit]+ThaiStr;
    end else
    begin
      if UnitValue=7 then
        ThaiStr:= ThaiUnitValues[7]+ThaiStr;
      if (DegitIndex = 1) then
        ThaiStr:= ThaiDigits[CurrDigit]+ThaiStr;
    end;
    if (UnitValue=7) then
      UnitValue:= 2
    else
    begin
      Inc(UnitValue);
    end;
    Dec(DegitIndex);
  end;
  ThaiStr:= ThaiStr+'บาท';

  Str(Round(Frac(money)*100), FloatStr);
  if FloatStr='0' then
    ThaiStr:= ThaiStr+'ถ้วน'
  else
  begin
    if IntegerStr='0' then ThaiStr:= '';
    if Length(FloatStr)=1 then
      ThaiStr:= ThaiStr+ThaiDigits[FloatStr[1]]
    else
    begin
      if FloatStr[1]>'2' then
        ThaiStr:= ThaiStr+ThaiDigits[FloatStr[1]]
      else if FloatStr[1]='2' then
        ThaiStr:= ThaiStr+'ยี่';
      ThaiStr:= ThaiStr+ThaiUnitValues[2];
      if FloatStr[2]>'1' then
        ThaiStr:= ThaiStr+ThaiDigits[FloatStr[2]]
      else if FloatStr[2]='1' then
        ThaiStr:= ThaiStr+'เอ็ด';
    end;
    ThaiStr:= ThaiStr+'สตางค์'
  end;
  Result:= ThaiStr
end;

Function FRound(Amt:Double;Dec:word):Double;
Var Tmp:Double;
begin
  FRound := StrTofloat(Floattostrf(amt+0.0005,ffFixed,15,Dec));
end;

function Rounder(var Value: Double; Decimals: Integer): Double;
var 
  j: Integer; 
  A: Double; 
begin 
  A := 1; 
  case Decimals of 
    0: A := 1;
    1: A := 10; 
    else 
      for j := 1 to Decimals do 
        A := A * 10; 
  end; 
  Result := Int((Value * A) + 0.5) / A; 
end;

Procedure LDay(Var Day1:String;ValueDate:TDateTime );
Var  day,month,year : Word;
begin
   DecodeDate(ValueDate, Year, Month, Day);
   Case Month of
       1 : Day1 := '31';
       2 : Day1 := '28';
       3 : Day1 := '31';
       4 : Day1 := '30';
       5 : Day1 := '31';
       6 : Day1 := '30';
       7 : Day1 := '31';
       8 : Day1 := '31';
       9 : Day1 := '30';
       10 : Day1 := '31';
       11 : Day1 := '30';
       12 : Day1 := '31';
   End;
   If (Round(Year/4)*4 = year) and
      (Month = 2) Then
      Day1 := '29' ;
end;



end.
