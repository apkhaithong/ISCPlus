unit Fpoi2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, ComCtrls, RzDBGrid, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Menus,
  cxLookAndFeelPainters, cxButtons, AdvGlowButton, cxContainer, cxTextEdit,
  cxLookAndFeels, AdvPanel, BusinessSkinForm, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, dxDateRanges;

type
  TFPoinv2 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label9: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    ProgressBar1: TProgressBar;
    cxGrid1: TcxGrid;
    cxDBGridTran: TcxGridDBTableView;
    cxDBGridTranPARTNO: TcxGridDBColumn;
    cxDBGridTranDESC: TcxGridDBColumn;
    cxDBGridTranONHN: TcxGridDBColumn;
    cxDBGridTranORDER: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Edit8: TcxTextEdit;
    Edit3: TcxTextEdit;
    Edit4: TcxTextEdit;
    BitBtn1: TAdvGlowButton;
    BitBtn3: TcxButton;
    BitBtn2: TcxButton;
    QPoinv1: TFDQuery;
    QPoinv1PONO: TStringField;
    QPoinv1APCODE: TStringField;
    QPoinv1PODATE: TDateField;
    QPoinv1POLOCAT: TStringField;
    QPoinv1TRANF: TStringField;
    QPoinv1VAT: TFloatField;
    QPoinv1TOTAL: TFloatField;
    QPoinv1DISCT: TFloatField;
    QPoinv1NETCOST: TFloatField;
    QPoinv1VATAMT: TFloatField;
    QPoinv1TOTCOST: TFloatField;
    QPoinv1OFFICCOD: TStringField;
    QPoinv1COSTFLG: TStringField;
    QPoinv1USERID: TStringField;
    QPoinv1TIME1: TDateTimeField;
    QPoinv1CANCELID: TStringField;
    QPoinv1CANDAT: TDateTimeField;
    QPoinv1POSTGLDT: TDateTimeField;
    QPoinv1Updatestatus: TStringField;
    QPoinv1REFNO: TStringField;
    QPoinv1POTYPE: TStringField;
    QPoinv1FLAG: TStringField;
    QPoinv1DISCTYP: TStringField;
    QPoinv1DUERECV: TDateField;
    QPoinv1CHCODE: TStringField;
    QPoinv1CHRATE: TFloatField;
    QPoinv1DUEDATE: TDateField;
    QPoinv1TPCODE: TStringField;
    QPoinv1RLCODE: TStringField;
    QPoinv1MEMO1: TMemoField;
    QPoinv1CREDTM: TFloatField;
    QPoinv1PRCFLG: TStringField;
    DataSource1: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SQLCreate;
    Function CalDemn(XYear,XMonth:integer; Xpartno,Xlocat:String):Integer;
  end;
               
var
  FPoinv2: TFPoinv2;
  XTypecod,X,Ed8,Xpartno,Xlocat : String;
  XYear,XMonth,XDay : Word;
  XDate    : TDateTime;
  NDemn6,NDemn5,NDemn4,NDemn3,NDemn2,NDemn1 : integer;
  XAVGDemn,QtyOr : double;

implementation
uses Dmpo, USoftFirm;

{$R *.DFM}

procedure TFPoinv2.FormCreate(Sender: TObject);
begin
   XDate := QPoinv1PODATE.AsDateTime;;
   DecodeDate(XDate, XYear, XMonth, XDay);
   Edit8.Text := '0.50';
   Edit3.Text := '0.50';
   Edit4.Text := '1.00';
end;

procedure TFPoinv2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFPoinv2.BitBtn1Click(Sender: TObject);
begin
  SQLCreate;
end;

Function TFPoinv2.CalDemn(XYear,XMonth:integer; Xpartno,Xlocat:String):Integer;
var Demn,NDemn : String;
    SDemn,Num,XDemn : Integer;
begin
   NDemn1 := 0;   NDemn2 := 0;   NDemn3 := 0;
   NDemn4 := 0;   NDemn5 := 0;   NDemn6 := 0;
   SDemn := 0;
   Num   := 0;
   with Dm_po.Query20 do
   begin
      Close;
      SQL.Clear;
      SQL.ADD('select * from invanls where (partno =:xpartno) and '+
              '(locat =:xlocat) and (Year1 =:xyear) ');
      PARAMS[0].Asstring := XPartno;
      PARAMS[1].Asstring := Xlocat;
      PARAMS[2].Asstring := inttostr(XYear);
      Open;
   end;
   XMonth := XMonth-1;
   While (XMonth >= 1) and (Num <= 6) do
   Begin
      Num   := Num +1;
      Demn  := 'Demn_'+inttostr(XMonth);
      SDemn := SDemn+Dm_po.Query20.FieldByname(Demn).AsInteger;
      Case  num of
         1 : NDemn1 := Dm_po.Query20.FieldByname(Demn).AsInteger;
         2 : NDemn2 := Dm_po.Query20.FieldByname(Demn).AsInteger;
         3 : NDemn3 := Dm_po.Query20.FieldByname(Demn).AsInteger;
         4 : NDemn4 := Dm_po.Query20.FieldByname(Demn).AsInteger;
         5 : NDemn5 := Dm_po.Query20.FieldByname(Demn).AsInteger;
         6 : NDemn6 := Dm_po.Query20.FieldByname(Demn).AsInteger;
      end;
      XMonth:= XMonth - 1;
   end;

   XYear := XYear-1;
   with Dm_po.Query20 do
   begin
      Close;
      SQL.Clear;
      SQL.ADD('select * from invanls where (partno =:xpartno) and '+
              '(locat =:xlocat) and (Year1 =:xyear) ');
      PARAMS[0].Asstring := XPartno;
      PARAMS[1].Asstring := Xlocat;
      PARAMS[2].Asstring := inttostr(XYear);
      Open;
    end;

    If not((Dm_po.Query20.Bof) and (Dm_po.Query20.eof)) Then
    begin
       XMonth := 12;
       While (XMonth >= 1) and (Num <= 6) do
       Begin
          Num   := Num +1;
          Demn  := 'Demn_'+inttostr(XMonth);
          SDemn := SDemn+Dm_po.Query20.FieldByname(Demn).AsInteger;
          Case  num of
            1 : NDemn1 := Dm_po.Query20.FieldByname(Demn).AsInteger;
            2 : NDemn2 := Dm_po.Query20.FieldByname(Demn).AsInteger;
            3 : NDemn3 := Dm_po.Query20.FieldByname(Demn).AsInteger;
            4 : NDemn4 := Dm_po.Query20.FieldByname(Demn).AsInteger;
            5 : NDemn5 := Dm_po.Query20.FieldByname(Demn).AsInteger;
            6 : NDemn6 := Dm_po.Query20.FieldByname(Demn).AsInteger;
          end;
          XMonth:= XMonth - 1;
       end;
    end;
    XAVGDemn :=  SDemn/num;
End;


procedure TFPoinv2.SQLCreate;
Var ed1,Ed2,Ed3,Ed4,Onhn,XQtyor: String;
    Xonhn,BK,Xon,Oc,Lt,Tc,QtyOr : Double;
    M,P : Longint;
begin
   With Dm_Po.QTemp Do
   begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TEMPTB2 WHERE PARTNO =:XPARTNO');
      Params[0].AsString := '';
      Open;
   end;

    With Dm_po.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT * From Inventor '+
              'Where (Locat =:XLocat) and (Year1 =:XYear) '+
              'Order By Locat');
      Params[0].AsString    := QPoinv1Polocat.AsString;
      Params[1].AsString    := InttoStr(XYear);
      Open;
      M := RecordCount;
    end;

   Dm_po.Query26.DATASOURCE := Dm_po.SoQuery1;
   With Dm_po.Query26 Do
   begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT * From Invanls '+
             'Where (Locat =:Locat) and (Year1 =:Year1) '+
             'and (PartNo =:PartNo) ');
     Open;
   End;
   Onhn := 'Onhn_'+inttostr(XMonth);

    ProgressBar1.Max := M;
    P := 1;
    Dm_po.Query1.first;
    While Not Dm_po.Query1.Eof do
    Begin
       ProgressBar1.Position := P;
       P := P+1;
       XPartno := Dm_po.Query1.FieldByname('Partno').AsString;
       XLocat  := Dm_po.Query1.FieldByname('Locat').AsString;
       CalDemn(XYear,XMonth,Xpartno,Xlocat);
       Xonhn    :=  Dm_po.Query26.FieldByname(Onhn).AsFloat;
       BK       :=  Dm_po.Query1.FieldByname('BackOrd').AsFloat;
       Xon      :=  Dm_po.Query1.FieldByname('OnOrder').AsFloat;
       Oc       :=  strtoFloat(edit8.text);
       Lt       :=  strtoFloat(edit3.text);
       Tc       :=  strtoFloat(edit4.text);
       QtyOr    :=  (oc+lt)*(XAVGDemn*tc)+Bk+(XAVGDemn*Oc)-(Xonhn+Xon);
       if  QtyOr > 0 Then
       begin
          Dm_po.Qtemp.Insert;
          Dm_po.Qtemp.FieldByname('PARTNO').AsString := Dm_po.Query1.FieldByname('PartNo').AsString;
          Dm_po.Qtemp.FieldByname('DESC').AsString   := Dm_po.Query1.FieldByname('DESC1').AsString;
          Dm_po.Qtemp.FieldByname('Locat').AsString  := Dm_po.Query1.FieldByname('Netprc').AsString;
          Dm_po.Qtemp.FieldByname('ONHN').AsFloat    := Dm_po.Query1.FieldByname('StdBuy').AsFloat;
          XQtyor := floattostrf(QtyOr,ffFixed,12,0);
          Dm_po.Qtemp.FieldByname('ORDER').AsFloat   := Strtofloat(XQtyor);
          Dm_po.Qtemp.Next;
       end;
       Dm_po.Query1.Next
    End;
    ProgressBar1.Position := M;
    ProgressBar1.Position := 0;
    If Dm_po.Qtemp.Bof and Dm_po.Qtemp.Eof Then
       SFMain.RaiseException(' ไม่มีรายการสินค้าที่จะต้องสั่งซื้อ ');
end;


end.
