unit DlgBarcd;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, DB, Dbkbd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFDlgBarcd = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    Label14: TLabel;
    Edit2: TEdit;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    BitBtn2: TBitBtn;
    DBkbd1: TDBkbd;
    Label1: TLabel;
    QInvmast: TFDQuery;
//    procedure DBEdit4Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FldCombo1BtnClick(Sender: TObject);
    procedure FldCombo1Exit(Sender: TObject);
    procedure FldCombo1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LVPrice, XSys: string;
  end;

var
  FDlgBarcd: TFDlgBarcd;

implementation

uses
  Dmic01, Stin00, Functn01, DMSET1, SrchDlg, Set_Inv, USoftFirm;
{$R *.DFM}

procedure TFDlgBarcd.BitBtn2Click(Sender: TObject);
begin
  if XSys = 'PK' then
    FmDmic01.Pktran.Append;
  //
  if XSys = 'RC' then
    FmDmic01.Rctran.Append;

//  DBEdit4.Setfocus;
//  FldCombo1.SetFocus;

{  DBEdit4.Text := '';
  FldCombo1.Text := '';}
end;

procedure TFDlgBarcd.FormShow(Sender: TObject);
begin
//  FldCombo1.SetFocus;
  //DBEdit4.Setfocus;
  if XSys = 'PK' then
    DBEdit4.Datasource := FmDmic01.SoPkTran;
  //
  if XSys = 'RC' then
    DBEdit4.Datasource := FmDmic01.SoRcTran;
  with QInvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST WHERE BARCODE = :XBAR ');
    Params[0].Asstring := SearchDlg.KeyNo;
    Open;
  end;
end;

procedure TFDlgBarcd.Edit2Exit(Sender: TObject);
begin
{  Try
    Strtofloat(Edit2.text);
  Except
    Edit2.Setfocus;
    Raise;
  end; }
end;

procedure TFDlgBarcd.FldCombo1BtnClick(Sender: TObject);
begin
  Application.Createform(TSearchDlg, SearchDlg);
  if SearchDlg.ShowModalbarcode = Mrok then
  begin
    with QInvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE BARCODE = :XBAR ');
      Params[0].Asstring := SearchDlg.KeyNo;
      Open;
    end;
    if SetinvMst.QInvmast.Bof and SetinvMst.QInvmast.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
  end;
end;

procedure TFDlgBarcd.FldCombo1Exit(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  SmUcost1, SmUcost2, SmUcost3, Ucost1, Ucost2, Ucost3, Net: Double;
begin
  with Dm_Set1.Query3 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST WHERE BARCODE = :XBAR ');
    Params[0].Asstring := SetinvMst.QInvmast.FieldByName('BARCODE').Asstring;
    Open;
    DBEDIT4.Text := Dm_Set1.Query3.Fieldbyname('PARTNO').Asstring;
  end;
  if XSys = 'PK' then
    if (FmDmic01.Pktran.State = Dsinsert) and (DBedit4.text <> '') then
    begin
      with FmDmic01.Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
          'LOCAT = :Edit2');
        PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
        PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
        Open;
{      If Bof and Eof Then
      SFMain.RaiseException('ไม่พบรหัสสินค้า'); }
      end;
      if FmDmic01.Query1.Fieldbyname('GROUP1').Asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึกกลุ่มสินค้าในแฟ้มสาขา ' + FmDmic01.PkTranPklocat.asstring);

      FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LvPrice).AsFloat;
      FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;

      FmDmic01.PkTranQtyord.AsFloat := Strtofloat(Edit2.Text);
      FmDmic01.PkTranQtyOut.AsFloat := Strtofloat(Edit2.Text);

      FmDmic01.PkTranGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
    //
      FmDmic01.PkTranREDU1.AsFloat := FmDmic01.PkinvDisct.AsFloat;

      Pric1 := (FmDmic01.PktranUPrice.value * (FmDmic01.PktranRedu1.Asfloat / 100));
      SmPric1 := FmDmic01.PktranUPrice.value - Pric1;
      Pric2 := SmPric1 * (FmDmic01.Pktranredu2.Asfloat / 100);
      SmPric2 := SmPric1 - Pric2;
      Pric3 := SmPric2 * (FmDmic01.Pktranredu3.Asfloat / 100);
      SmPric3 := SmPric2 - Pric3;
      FmDmic01.PktranNetprc.AsFloat := SmPric3;
      if UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y' then
        FmDmic01.PktranNetprc.AsFloat := 0;

      FmDmic01.PktranTotPrc.AsFloat := StrTofloat(FloattostrF((FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat), ffFixed, 15, 2));

      FmDmic01.Pktran.Append;
{    DBEdit4.Setfocus;
    FldCombo1.SetFocus; }
      BitBtn2.SetFocus;
    end;
  //
  if XSys = 'RC' then
    if (FmDmic01.Rctran.State = Dsinsert) and (DBedit4.text <> '') then
    begin
      with FmDmic01.Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
          'LOCAT = :Edit2');
        PARAMS[0].ASSTRING := FmDmic01.RcTranPartno.asstring;
        PARAMS[1].ASSTRING := FmDmic01.RctranRECVLOC.asstring;
        Open;
{      If FmDmic01.Query1.Bof and FmDmic01.Query1.Eof Then
      SFMain.RaiseException('ไม่พบรหัสสินค้า'); }
      end;
    //
      FmDmic01.RctranQTYORD.AsFloat := Strtofloat(Edit2.Text);
      FmDmic01.RctranQTYRECV.AsFloat := Strtofloat(Edit2.Text);

      if FmSTIn00.CheckBox1.Checked then
        FmDmic01.Rctran.FieldByname('UCOST').AsFloat := FmDmic01.Query1.Fieldbyname('PRICE1').Asfloat
      else
      begin
        if FmDmic01.Query1.Fieldbyname('STDBUY').Asfloat > 0 then
          FmDmic01.Rctran.FieldByname('UCOST').AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').Asfloat
        else
          FmDmic01.Rctran.FieldByname('UCOST').AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').Asfloat;
      end;
      FmDmic01.RctranREDU1.ASFloat := FmDmic01.RcinvDisct.ASFloat;

      if FmDmic01.RctranPONO.Asstring <> '' then
      begin
        with FmDmic01.Query1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT *  FROM PO_TRANS WHERE POLOCAT = :Edit1 AND PONO =:EDIT2 AND PARTNO=:Edit3');
          PARAMS[0].ASSTRING := FmDmic01.RctranRECVLOC.Asstring;
          PARAMS[1].ASSTRING := FmDmic01.RctranPONO.Asstring;
          PARAMS[2].ASSTRING := FmDmic01.RctranPARTNO.asstring;
          Open;
          if Bof and Eof then
            SFMain.RaiseException('ไม่พบรหัสนี้ในแฟ้มข้อมูลสั่งซื้อ');
        end;
        FmDmic01.RctranQTYORD.AsFloat := FmDmic01.Query1.Fieldbyname('Balance').Asfloat;
        FmDmic01.RctranUCOST.AsFloat := FmDmic01.Query1.Fieldbyname('ORDCOST').AsFloat;
        FmDmic01.RctranRedu1.AsFloat := FmDmic01.Query1.Fieldbyname('REDU').AsFloat;
      end;
    //
      Ucost1 := (FmDmic01.RctranUcost.Asfloat * (FmDmic01.Rctranredu1.Asfloat / 100));
      SmUcost1 := FmDmic01.RctranUcost.Asfloat - Ucost1;
      Ucost2 := SmUcost1 * (FmDmic01.Rctranredu2.Asfloat / 100);
      SmUcost2 := SmUcost1 - Ucost2;
      Ucost3 := SmUcost2 * (FmDmic01.Rctranredu3.Asfloat / 100);
      SmUcost3 := SmUcost2 - Ucost3;
      FmDmic01.Rctran.FieldByname('Netcost').AsFloat := SmUcost3;
      FmDmic01.RctranNettot.AsFloat := Fround((FmDmic01.RctranNetCost.AsFloat * FmDmic01.RcTranQtyRecv.AsFloat), 2);
    //
      if FmDmic01.RcinvVATTYPE.Asstring = '1' then
      begin
        Net := Fround(FmDmic01.RctranNettot.AsFloat * (100 / (100 + FmDmic01.RcinvVatrt.AsFloat)), 2);
        FmDmic01.RctranVatcost.AsFloat := FmDmic01.RctranNettot.AsFloat - Net;
      end;
{  with Dm_Set1.QInvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST WHERE BARCODE = :XBAR ');
    Params[0].Asstring := Dm_Set1.QInvmast.FieldByName('BARCODE').Asstring;
    Open;
    DBEDIT4.Text := Dm_Set1.QInvmast.Fieldbyname('PARTNO').Asstring;
  end; }
    end;
end;

procedure TFDlgBarcd.FldCombo1Change(Sender: TObject);
begin
  with Dm_Set1.Query3 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST WHERE BARCODE = :XBAR ');
    Params[0].Asstring := SetinvMst.QInvmast.FieldByName('BARCODE').Asstring;
    Open;
    DBEDIT4.Text := Dm_Set1.Query3.Fieldbyname('PARTNO').Asstring;
  end;
end;

procedure TFDlgBarcd.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.

