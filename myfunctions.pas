unit myfunctions;

interface

implementation

uses
  SysUtils, Classes, fs_iinterpreter, Vcl.Graphics, Vcl.StdCtrls, Vcl.Forms,
  n2wMoney, DateUtils, Caldisc, Functn01, System.Math, USoftFirm;
          // you can also add a reference to any other external library here
type
  TFunctions = class(TfsRTTIModule)
  private
    function CallMethod(Instance: TObject; ClassType: TClass; const MethodName: string; var Params: Variant): Variant;
    //function CallMethod2(Instance: TObject; ClassType: TClass; const MethodName: string; var Params: Variant): TBitmap;
  public
    constructor Create(AScript: TfsScript); override;
  end;

var paypr, netpr, payprof, netprof, nextFee :Double;
    day1,month1,year1 :string;
    memo1 : TMemo;
    n2wCont: Tn2wMoney;

function BathText(value: Double): String;
begin
  if not Assigned(n2wCont) then
    n2wCont := Tn2wMoney.Create(nil);
  n2wCont.Value := value;
  Result := n2wCont.Text;
end;

function DateText(value: TDateTime; format: String): String;
var
  sDateText: string;
  dDateValue: TDateTime;
begin
  dDateValue := IncYear(value,543);
  sDateText := FormatDateTime(format, dDateValue);
  Result := sDateText;
end;

function CalInt(contno: string; ardate: TDateTime): Double;
begin
//  CalDisc.XContno := DmMain.GetContid(contno);
//  CalDisc.XDate := ardate;
//  if (DmMain.CheckCalint(contno) = '1') then
//    CalDisc.CalInt1
//  else
//    CalDisc.CalInt2;
//  Result := CalDisc.Sumintr - CalDisc.Paidintr;
end;

function NetProfit(contid: Integer; ardate: TDateTime): Double;
begin
//  DmMain.CalProfit(paypr, netpr, contid, ardate);
  Result := netpr;
end;

function PayProfit(contid: Integer; ardate: TDateTime): Double;
begin
//  DmMain.CalProfit(paypr, netpr, contid, ardate);
  Result := paypr;
end;

function CalIntRv(contno: string; ardate: TDateTime): Double;
begin
//  Caldisc.Xcontno := DmMain.GetContid(contno);
//  Caldisc.XDate   := ardate;
//  if DmMain.CheckCalint(contno) = '1' then
//    Caldisc.CalInt1
//  else
//    Caldisc.CalInt2;
//  Result := CalDisc.Sumintr;
end;

function Nf(contid: Integer; ardate: TDateTime): Double;
begin
//  DmMain.CalProfitcloseac1(payprof, netprof, contid, ardate);
  Result := netprof;
end;

function Nf1(contno: String; ardate: TDateTime): Double;
begin
//  DmMain.CalnetProfit(payprof, netprof, contno, ardate);
  Result := netprof;
end;

function CalDisct(contid: Integer; ardate: TDateTime): Double;
begin
//  Caldisc.Xcontno := contid;
//  Caldisc.XDate := IncMonth(ardate, 1);
//  Caldisc.CalDiscStr1;
//  Result := Caldisc.TFDisc;
    Result := 0;
end;

function NextProfit(contid: Integer; ardate: TDateTime; tmbill: string; nPayamt : Double): Double;
begin
//  DmMain.NewProfit(contid, ardate, tmbill, nPayamt, 0);
//  nextFee := DmMain.nFee4;
//  Result := DmMain.netp4;
end;

function MyRoundTo(const AValue: Double; const ADigit: TRoundToRange; const ARoundMode: TRoundingMode): Double;
var
  LFactor: Double;
begin
  SetRoundMode(ARoundMode);
  LFactor := IntPower(10, ADigit);
  Result := Round(AValue / LFactor) * LFactor;
end;


{ TFunctions }

constructor TFunctions.Create;
begin
  inherited Create(AScript);
  with AScript do
  begin
    AddMethod('function BathText(value: Double): String', CallMethod, 'scim', ' BathText function convert currency to thai text');
    AddMethod('function DateText(value: TDateTime; format: String): String', CallMethod, 'scim', ' DateText function convert date to thai year');
    AddMethod('function FileExists(filepath: string): Boolean', CallMethod, 'scim', ' Check File already exists');
    AddMethod('function CalInt(contno: string; ardate: TDateTime)', CallMethod, 'scim', ' CalInt function return penalties net');
    AddMethod('function NetProfit(contid: Integer; ardate: TDateTime)', CallMethod, 'scim', ' NetProfit function return balance profit contract');
    AddMethod('function PayProfit(contid: Integer; ardate: TDateTime)', CallMethod, 'scim', ' PayProfit function return profit recognized contract');
    AddMethod('function CalIntRv(contno: string; ardate: TDateTime)', CallMethod, 'scim', ' CalIntRv function return payment penalties');
    AddMethod('function Nf(contid: Integer; ardate: TDateTime)', CallMethod, 'scim', ' Nf function return profit recv close account');
    AddMethod('function Nf1(contno: String; ardate: TDateTime)', CallMethod, 'scim', ' Nf1 function return profit recv');
    AddMethod('function CalDisct(contid: Integer; ardate: TDateTime)', CallMethod, 'scim', ' CalDisct function return disct close account');
    AddMethod('function FRound(value: Double;  decimal: integer)', CallMethod, 'scim', ' FRound ROUND function return Double');
    AddMethod('function NextProfit(contid: Integer; ardate: TDateTime; tmbill: String; amount: Double)', CallMethod, 'scim', ' NextProfit function Calculate profit next due. return Double');
    AddMethod('function NextFee(contid: Integer; ardate: TDateTime; amount: Double)', CallMethod, 'scim', ' NextProfit function Calculate profit next due. return Double');
    AddMethod('function CREATEBARCODE(A, B, C, D:String):String', CallMethod,'scim','');
    AddMethod('function RoundTo(AValue: Double; ADigit: Integer; ARoundMode: string): Double', CallMethod,'scim','RoundMode: Down, Up, Nearest, Truncate');
    AddMethod('function DateThai(Chang: Integer; ValueDate: TDateTime): String', CallMethod, 'scim', ' DateThai function convert date to thai year');
  end;
end;

function TFunctions.CallMethod(Instance: TObject; ClassType: TClass; const MethodName: string; var Params: Variant): Variant;
var
  ARoundMode: TRoundingMode;
begin
  if MethodName = 'BATHTEXT' then
    Result := BathText(Params[0])
  else if MethodName = 'DATETEXT' then
    Result := DateText(Params[0], Params[1])
  else if MethodName = 'FILEEXISTS' then
    result := FileExists(Params[0])
  else if MethodName = 'CALINT' then
    Result := CalInt(Params[0], Params[1])
  else if MethodName = 'NETPROFIT' then
    Result := NetProfit(Params[0], Params[1])
  else if MethodName = 'PAYPROFIT' then
    Result := PayProfit(Params[0], Params[1])
  else if MethodName = 'CALINTRV' then
    Result := CalIntRv(Params[0], Params[1])
  else if MethodName = 'NF' then
    Result := Nf(Params[0], Params[1])
  else if MethodName = 'NF1' then
    Result := Nf1(Params[0], Params[1])
  else if MethodName = 'CALDISCT' then
    Result := Nf1(Params[0], Params[1])
  else if MethodName = 'FROUND' then
    Result := FRound(Params[0],Params[1])
  else if MethodName = 'NEXTPROFIT' then
    Result := NextProfit(Params[0],Params[1],Params[2],Params[3])
  else if MethodName = 'NEXTFEE' then
    Result := nextFee
  else if MethodName = 'CREATEBARCODE' then
    Result := '|'+Params[0]+#13+Params[1]+#13+Params[2]+#13+Params[3]
  else if MethodName = 'ROUNDTO' then
  begin
    if (UpperCase(Params[2]) = 'DOWN') then
      ARoundMode := TRoundingMode.rmDown
    else if (UpperCase(Params[2]) = 'UP') then
      ARoundMode := TRoundingMode.rmUp
    else if (UpperCase(Params[2]) = 'NEAREST') then
      ARoundMode := TRoundingMode.rmNearest
    else
      ARoundMode := TRoundingMode.rmTruncate;
    Result := MyRoundTo(Params[0], Params[1], ARoundMode);
  end
  else if MethodName = 'DATETHAI' then
  begin
    Result := SFMain.DateThai(Params[0], Params[1]);
  end;

    //StringReplace('|'+Params[0]+#13+Params[1]+#13+Params[2]+#13+Params[3],#$A,'',[rfReplaceAll]);
end;

initialization
  fsRTTIModules.Add(TFunctions);

end.



