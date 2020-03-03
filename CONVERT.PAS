unit Convert;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, StdCtrls, Buttons, ComCtrls, Gauges, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, 
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, 
  FireDAC.Phys, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, 
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFTransfer = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QCollect: TFDQuery;
    QSvmast: TFDQuery;
    HI_INCOME: TFDConnection;
    HI_INVEN: TFDConnection;
    Query1: TFDQuery;
    Gauge1: TGauge;
    QArmast: TFDQuery;
    QCustmast: TFDQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure HI_INCOMELogin(Database: TFDConnection; LoginParams: TStrings);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransfer: TFTransfer;

implementation

{$R *.DFM}

procedure TFTransfer.BitBtn1Click(Sender: TObject);
var M1,p : Longint;
    S,XTYPE,XMDLCOD:string;
begin
  XTYPE   :='9999';
  XMDLCOD :='9999';
  With QCollect Do
  begin
    close;
    Sql.Clear;
    Sql.Add('Select * from Collect_View');
    Open;
    If Qcollect.Bof and Qcollect.Eof Then
    SFMain.RaiseException('ไม่มีข้อมูลการขาย');
  end;
  M1 := QCollect.RecordCount;
  Gauge1.Maxvalue :=M1;
  P:= 1;

  Qcollect.First;
  While Not QCollect.Eof Do
  Begin
    S := QCollect.Fieldbyname('Strno').asstring;

    With Query1 Do
    begin
      Close;
      SQl.Clear;
      Sql.Add('SELECT * FROM TYPEMST WHERE TYPENAM =:EDIT1');
      Params[0].Asstring :=QCollect.Fieldbyname('TYPE').asstring;
      OPEN;
      IF Not(Query1.Bof and Query1.Eof) Then
      XTYPE := Query1.Fieldbyname('TypeCod').Asstring;
    end;

    With Query1 Do
    begin
      Close;
      SQl.Clear;
      Sql.Add('SELECT * FROM MODELMST WHERE DESC =:EDIT1');
      Params[0].Asstring :=QCollect.Fieldbyname('MODEL').asstring;
      OPEN;
      IF Not(Query1.Bof and Query1.Eof) Then
      XMDLCOD := Query1.Fieldbyname('MDLCod').Asstring;
    end;

    With QCustmast Do
    begin
     close;
     Sql.Clear;
     Sql.Add('Select A.CUSCOD,A.SNAM,A.NAME1,A.NAME2,B.ADDR1,'+
     'B.ADDR2,B.TUMB,B.AUMP,B.PROV,B.ZIP FROM CUSTMAST A,CUSTADDR B '+
     'WHERE A.ADDRNO=B.ADDRNO AND A.CUSCOD=:EDIT1');
     Params[0].Asstring :=QCollect.Fieldbyname('CUSCOD').asstring;
     Open;
    end;

    With QArmast Do
    begin
      Close;
      SQl.Clear;
      Sql.Add('SELECT * FROM ARMAST WHERE CUSCOD=:EDIT1');
      Params[0].Asstring :=QCollect.Fieldbyname('CUSCOD').asstring;
      OPEN;
      IF QArmast.Bof and Qarmast.Eof Then
      begin
        With Qarmast Do
        begin
          Qarmast.Insert;
          Fieldbyname('Cuscod').Asstring := QCustmast.Fieldbyname('Cuscod').asstring;
          Fieldbyname('Snam').Asstring   := QCustmast.Fieldbyname('Snam').asstring;
          Fieldbyname('Name1').Asstring  := QCustmast.Fieldbyname('Name1').asstring;
          Fieldbyname('Name2').Asstring  := QCustmast.Fieldbyname('Name2').asstring;
          Fieldbyname('Addr1').Asstring  := QCustmast.Fieldbyname('Addr1').asstring;
          Fieldbyname('Addr2').Asstring  := QCustmast.Fieldbyname('Addr2').asstring;
          Fieldbyname('Tumb').Asstring   := QCustmast.Fieldbyname('Tumb').asstring;
          Fieldbyname('Aump').Asstring   := QCustmast.Fieldbyname('Aump').asstring;
          Fieldbyname('Prov').Asstring   := QCustmast.Fieldbyname('Prov').asstring;
          Fieldbyname('Zip').Asstring    := QCustmast.Fieldbyname('Zip').asstring;
          Fieldbyname('Sallev').Asstring := '1';
          Fieldbyname('Disct').AsFloat   := 0;
          Fieldbyname('Credit').AsFloat  := 0;
          Qarmast.Post;
        end;
      end;
    END;

    With Qsvmast Do
    begin
      Close;
      SQl.Clear;
      Sql.Add('SELECT * FROM SVMAST WHERE STRNO=:EDIT1');
      Params[0].Asstring :=s;
      OPEN;
      If Qsvmast.Eof and Qsvmast.Bof Then
      begin
        With Qsvmast Do
        begin
          Qsvmast.Insert;
          Fieldbyname('Strno').Asstring  := QCollect.Fieldbyname('Strno').Asstring;
          Fieldbyname('engno').Asstring  := QCollect.Fieldbyname('engno').Asstring;
          Fieldbyname('Regno').Asstring  := QCollect.Fieldbyname('Regno').Asstring;
          Fieldbyname('Baab').Asstring   := QCollect.Fieldbyname('Baab').Asstring;
          Fieldbyname('Color').Asstring  := QCollect.Fieldbyname('Color').Asstring;
          Fieldbyname('CC').Asstring     := QCollect.Fieldbyname('CC').Asstring;
          Fieldbyname('Sdate').Asstring  := QCollect.Fieldbyname('Sdate').Asstring;
          Fieldbyname('Cuscod').Asstring := QCollect.Fieldbyname('Cuscod').Asstring;
          Fieldbyname('Custype').Asstring := '1';
          Fieldbyname('Type').Asstring   := XTYPE;
          Fieldbyname('Mdlcod').Asstring := XMDLCOD;
          Qsvmast.POST;
        end;
      end;
    end;
    Qcollect.Next;
    P := P+1;
    Gauge1.Progress := P;
  end;

end;

procedure TFTransfer.HI_INCOMELogin(Database: TFDConnection;
  LoginParams: TStrings);
begin
  LoginParams.Values['USER NAME']   := 'Hiincome';
  LoginParams.Values['PASSWORD']    := '';
end;

procedure TFTransfer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFTransfer.BitBtn2Click(Sender: TObject);
begin
        Close;
end;

end.
