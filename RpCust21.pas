unit Rpcust21;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, quickrpt, Qrctrls, Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmRpCust21 = class(TForm)
    QCust10: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    QOrder: TFDQuery;
    DataSource1: TDataSource;
    QParttran: TFDQuery;
    DataSource2: TDataSource;
    QServtran: TFDQuery;
    DataSource3: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRpCust21: TFmRpCust21;

implementation
uses RpCust20;
{$R *.DFM}

procedure TFmRpCust21.FormCreate(Sender: TObject);
Var XOrder : String;
begin
  condpay.open;
  QRLabel4.caption   := CondpayCOMP_NM.Asstring;
  QRLabel4.Left      := 1;
  QRLabel4.Width     := 750;
  QRLabel4.Alignment := taCenter;
  QRLabel5.Left      := 1;
  QRLabel5.Width     := 750;
  QRLabel5.Alignment := taCenter;

  case FmRpCust20.RadioGp2.ItemIndex of
    0 : Begin
          XOrder := 'Order By J.Recvdate ';
          QRLabel13.Caption  := 'Sort By : วันที่แจ้งซ่อม';
        End;
    1 : Begin
          XOrder := 'Order By J.JOBNO  ';
          QRLabel13.Caption := 'Sort By : เลขที่ JOB';
        End;
    2 : Begin
          XOrder := 'Order By J.Reptype  ';
          QRLabel13.Caption := 'Sort By : ประเภทการซ่อม';
        End;
    3 : Begin
          XOrder := 'Order By B.Mdlcod  ';
          QRLabel13.Caption := 'Sort By : รหัสรุ่นรถ';
        End;

  End;
  QOrder.Close;
  QParttran.Close;
  QServtran.Close;

  with QCust10 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select J.JOBNO,J.Cuscod,J.Recvdate,J.RLKILOMT,J.Strno,J.Reptype,'+
            'B.Mdlcod,B.Regno,A.Snam,A.Name1,A.Name2,A.Addr1,A.Addr2, '+
            'A.Tumb,A.Aumpdes,A.Provdes,a.Provcod,A.Zip,A.Telp,A.Telp,J.Memo1 '+
            'From Joborder J,View_Cust A,Svmast B '+
            'Where (J.CusCod=A.CusCod) And (J.Strno=B.Strno) and '+
            'J.Locat like:0 and (J.Recvdate Between :1 And :2) '+
            'And B.Mdlcod Like :3 '+XOrder);

    Params[0].AsString := FmRpCust20.Edit_Locat.Text+'%';
    Params[1].AsDate   := FmRpCust20.Edit_DateFrom.Date;
    Params[2].AsDate   := FmRpCust20.Edit_DateTo.Date;
    Params[3].AsString := FmRpCust20.Edit4.Text+'%';
    Open;
  end;
  If FmRpCust20.CheckBox1.Checked Then  QOrder.Open;
  If FmRpCust20.CheckBox2.Checked Then  QParttran.Open;
  If FmRpCust20.CheckBox3.Checked Then  QServtran.Open;
end;

procedure TFmRpCust21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   QCust10.Close;
   Action := Cafree;
end;

procedure TFmRpCust21.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var S:string;
    I:Integer;
begin
   QRLabel1.Caption := 'ชื่อ    :';
   QRLabel2.Caption := 'ที่อยู่ :';
   QRLabel6.Caption := '';
   With QCust10 Do
   Begin
     QRLabel1.Caption := QRLabel1.Caption+fieldbyname('SNam').AsString+
                         fieldbyname('Name1').AsString+'  '+
                         fieldbyname('Name2').AsString+' ['+fieldbyname('Cuscod').AsString+']'+' ';

     QRLabel2.Caption := QRLabel2.Caption+fieldbyname('Addr1').AsString+
                         fieldbyname('Addr2').AsString;
     If fieldbyname('Tumb').AsString <> '' Then
        QRLabel2.Caption := QRLabel2.Caption+'  ต.'+fieldbyname('Tumb').AsString;
     If fieldbyname('Aumpdes').AsString <> '' Then
        QRLabel2.Caption := QRLabel2.Caption+'  อ.'+fieldbyname('Aumpdes').AsString;
     If fieldbyname('Provdes').AsString <> '' Then
        QRLabel2.Caption := QRLabel2.Caption+'  จ.'+fieldbyname('Provdes').AsString;

     If fieldbyname('Telp').AsString <> '' Then
        QRLabel1.Caption :=QRLabel1.Caption+'โทรศัพท์ '+ fieldbyname('Telp').AsString+' ';

     If fieldbyname('Strno').AsString <> '' Then
        QRLabel6.Caption := fieldbyname('Strno').AsString;
   End;
   QRMemo1.Lines.Clear;
   If QOrder.Active Then
   Begin
   I:=1;
   QOrder.First;
   While Not QOrder.Eof Do
   begin
     If I=1 Then
      S:='คำสั่งซ่อม :'+Floattostr(QOrder.Fieldbyname('No').AsFloat)+') '+QOrder.Fieldbyname('Repdesc').Asstring+'      '
     Else
      S:='.             '+Floattostr(QOrder.Fieldbyname('No').AsFloat)+') '+QOrder.Fieldbyname('Repdesc').Asstring+'      ';
     QOrder.Next;
     I:=I+1;
     If Not QOrder.Eof  Then
     S:= S+ Floattostr(QOrder.Fieldbyname('No').AsFloat)+') '+QOrder.Fieldbyname('Repdesc').Asstring+'      ';
     QOrder.Next;
     I:=I+1;
     If Not QOrder.Eof  Then
     S:= S+ Floattostr(QOrder.Fieldbyname('No').AsFloat)+') '+QOrder.Fieldbyname('Repdesc').Asstring;
     QRMemo1.Lines.Add(S);
     I:=I+1;
     QOrder.Next;
   end;
   end;

   If QParttran.Active Then
   Begin
   I:=1;
   QParttran.First;
   While Not QParttran.Eof Do
   begin
     If I=1 Then
      S:='รายการอะไหล่ :'+Inttostr(I)+') '+QParttran.Fieldbyname('desc1').Asstring+'      '
     Else
      S:='.             '+Inttostr(I)+') '+QParttran.Fieldbyname('desc1').Asstring+'      ';

     QParttran.Next;
     I:=I+1;
     If Not QParttran.Eof  Then
     S:= S+ Inttostr(I)+') '+QParttran.Fieldbyname('desc1').Asstring+'      ';
     QParttran.Next;
     I:=I+1;
     If Not QParttran.Eof  Then
     S:= S+ Inttostr(I)+') '+QParttran.Fieldbyname('desc1').Asstring+'      ';
     QRMemo1.Lines.Add(S);
     I:=I+1;
     QParttran.Next;
   end;
   end;

   If QServtran.Active Then
   Begin
   I:=1;
   QServtran.First;
   While Not QServtran.Eof Do
   begin
     If I=1 Then
      S:='ค่าบริการ :'+Inttostr(I)+') '+QServtran.Fieldbyname('desc1').Asstring+'      '
     Else
      S:='.             '+Inttostr(I)+') '+QServtran.Fieldbyname('desc1').Asstring+'      ';
     QServtran.Next;
     I:=I+1;
     If Not QServtran.Eof  Then
     S:= S+ Inttostr(I)+') '+QServtran.Fieldbyname('desc1').Asstring+'      ';
     QServtran.Next;
     I:=I+1;
     If Not QServtran.Eof  Then
     S:= S+ Inttostr(I)+') '+QServtran.Fieldbyname('desc1').Asstring+'      ';
     QRMemo1.Lines.Add(S);
     I:=I+1;
     QServtran.Next;
   end;
   end;
   //
   If FmRpCust20.CheckBox5.Checked Then
   begin
     S:='';
     If QCust10.Fieldbyname('Memo1').AsString<>'' Then
     begin
      S:='หมายเหตุ :';
      S:=S+QCust10.Fieldbyname('Memo1').AsString;
      QRMemo1.Lines.Add(S);
     end;
   end;

   If FmRpCust20.CheckBox4.Checked Then
   begin
     QRMemo1.Lines.Add('บันทึกผล :'+'..........................................................................................................'+
                       '...................................................................................................................');
   end;
end;











End.
