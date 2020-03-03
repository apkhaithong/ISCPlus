unit DlgTrnf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Gauges, ExtCtrls, Db,  ComCtrls,
  ToolWin, RzButton, RzPanel, RzRadGrp, Mask, RzEdit, RzSpnEdt,
  RzDbkbd, DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, 
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, 
  FireDAC.Phys, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, 
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait;

type
  TFTrnferhi = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    RadioGp2: TRadioGroup;
    Edit3: TEdit;
    Gauge1: TGauge;
    Label3: TLabel;
    HI_HP: TFDConnection;
    QCollect: TFDQuery;
    Query1: TFDQuery;
    QSvmast: TFDQuery;
    QArmast: TFDQuery;
    QTypmst: TFDQuery;
    Tmodel1: TFDTable;
    DataSource1: TDataSource;
    Query2: TFDQuery;
    Tmodel: TFDQuery;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Label7: TLabel;
    Query3: TFDQuery;
    Query4: TFDQuery;
    RzRadioGroup1: TRzRadioGroup;
    RzBitBtn1: TRzRapidFireButton;
    Label6: TLabel;
    Label9: TLabel;
    RzRapidFireButton1: TRzRapidFireButton;
    Label4: TLabel;
    edPassword: TEdit;
    Label5: TLabel;
    RzDBkbd1: TRzDBkbd;
    qLocatHp: TFDQuery;
    dsLocat: TDataSource;
    DBLLocatHp: TDBLookupComboBox;
    edLocat: TEdit;
    cbTsale: TComboBox;
    FromDate: TDateTimePicker;
    ToDate: TDateTimePicker;
    procedure Edit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QSvmastAfterPost(DataSet: TDataSet);
    procedure RadioGp2Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzRadioGroup1Click(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLLocatHpClick(Sender: TObject);
  private
    { Private declarations }
    Function ZeroLead(St:String;len:integer):String;
  public
    { Public declarations }
  end;

var
  FTrnferhi: TFTrnferhi;
  XSCM :String;

implementation
uses DMSEC,dmsvset,USoftFirm;
{$R *.DFM}
Function TFTrnferhi.ZeroLead(St:String;len:integer):String;
Var  Zero,Chr1 : string;
  j, ll : integer;

begin
   Chr1  := Trim(St);
   Zero := '';
   ll   := length(Chr1);
   if len<ll Then len:=ll;
      for j:=1 to len-ll do
          Zero := Zero+'0';
   Result := Zero+Chr1;
end;


procedure TFTrnferhi.Edit3Exit(Sender: TObject);
begin
  If (RadioGp2.Itemindex=1) Then
  Try
   StrToDate(Edit3.Text);
  except
   MessageDlg('วันที่ไม่ถูกต้อง',mtError,[mbOK],0);
   Edit3.SetFocus;
  end;
end;


procedure TFTrnferhi.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSET', 'FILE08_8');
  Edit2.Text := Dm_SEC.XSchema;
  HI_HP.Connected := False;
  FromDate.Date := Date;
  ToDate.Date := Date;
  RadioGp2Click(Sender);
end;

procedure TFTrnferhi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  HI_HP.Connected := False;
  Action := Cafree;
end;

procedure TFTrnferhi.QSvmastAfterPost(DataSet: TDataSet);
begin
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if QSvmast.Active then
      if (QSvmast.ApplyUpdates = 0) then
        QSvmast.CommitUpdates
      else
        raise Exception.Create(QSvmast.RowError.Message);
    if QArmast.Active then
      if (QArmast.ApplyUpdates = 0) then
        QArmast.CommitUpdates
      else
        raise Exception.Create(QArmast.RowError.Message);
    if QTypmst.Active then
      if (QTypmst.ApplyUpdates = 0) then
        QTypmst.CommitUpdates
      else
        raise Exception.Create(QTypmst.RowError.Message);
    if Tmodel.Active then
      if (Tmodel.ApplyUpdates = 0) then
        Tmodel.CommitUpdates
      else
        raise Exception.Create(Tmodel.RowError.Message);
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TFTrnferhi.RadioGp2Click(Sender: TObject);
begin
   FromDate.Visible := RadioGp2.Itemindex=1;
   ToDate.Visible   := RadioGp2.Itemindex=1;
   Label6.Visible   := RadioGp2.Itemindex=1;
   Label9.Visible   := RadioGp2.Itemindex=1;
   Label3.Visible   := RadioGp2.Itemindex=0;
   Edit3.Visible    := RadioGp2.Itemindex=0;
//   SpbStrno.Visible := RadioGp2.Itemindex=0;
end;

procedure TFTrnferhi.ToolButton5Click(Sender: TObject);
begin
        Close;
end;

procedure TFTrnferhi.ToolButton3Click(Sender: TObject);
Var  Xopt,S2,S3,XLocatnm,XModel,Xtsl:String;
     P:longint;
     LModel : Integer;
begin
  if edLocat.Text = '' then
     SFMain.RaiseException('ยังไม่ระบุสาขาที่จะโอนข้อมูล');
  LModel:= 0;
  with Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select * from SYSIBM.SYSTABLES where NAME=''VIEW_COLECT'' AND Creator=:Xschma');
    Params[0].Asstring := Edit1.Text;
    Open;
    If Bof and Eof Then
    Begin
       Close;
       Sql.Clear;
       Sql.Add('CREATE VIEW   VIEW_COLECT(LOCAT,CUSCOD,STRNO,ENGNO,SDATE,SNAM,NAME1,NAME2,'+
               'ADDRNO,ADDR1,ADDR2,TUMB,AUMP,PROV,ZIP ,'+
               'TYPE,MODEL,BAAB,COLOR,CC,TSALE  )  AS '+
               'SELECT A.LOCAT,A.CUSCOD,A.STRNO,D.ENGNO,A.SDATE,B.SNAM,B.NAME1,B.NAME2,'+
               'B.ADDRNO,C.ADDR1,C.ADDR2,C.TUMB,E.AUMPDES,F.PROVDES,C.ZIP , '+
               'D.TYPE,D.MODEL,D.BAAB,D.COLOR,D.CC,A.TSALE '+
               'FROM ARMAST A, CUSTMAST B, CUSTADDR C,INVTRAN D,SETAUMP E,SETPROV F '+
               ' WHERE '+
               'A.CUSCOD=B.CUSCOD AND B.CUSCOD=C.CUSCOD AND '+
               'B.ADDRNO=C.ADDRNO AND  A.STRNO=D.STRNO AND C.AUMPCOD=E.AUMPCOD AND '+
               'C.PROVCOD=F.PROVCOD '+
               'UNION  '+
               'SELECT A.LOCAT,A.CUSCOD,A.STRNO,D.ENGNO,A.SDATE,B.SNAM,B.NAME1,B.NAME2,'+
       'B.ADDRNO,C.ADDR1,C.ADDR2,C.TUMB,E.AUMPDES,F.PROVDES,C.ZIP , '+
       'D.TYPE,D.MODEL,D.BAAB,D.COLOR,D.CC,A.TSALE '+
       'FROM ARCRED  A, CUSTMAST B, CUSTADDR C,INVTRAN D,SETAUMP E,SETPROV F '+
       ' WHERE '+
       'A.CUSCOD=B.CUSCOD AND B.CUSCOD=C.CUSCOD AND '+
       'B.ADDRNO=C.ADDRNO AND  A.STRNO=D.STRNO AND C.AUMPCOD=E.AUMPCOD AND  '+
       'C.PROVCOD=F.PROVCOD  '+
       'UNION   '+
       'SELECT A.LOCAT,A.CUSCOD,A.STRNO,D.ENGNO,A.SDATE,B.SNAM,B.NAME1,B.NAME2, '+
       'B.ADDRNO,C.ADDR1,C.ADDR2,C.TUMB,E.AUMPDES,F.PROVDES,C.ZIP ,'+
       'D.TYPE,D.MODEL,D.BAAB,D.COLOR,D.CC,A.TSALE  '+
       'FROM ARFINC  A, CUSTMAST B, CUSTADDR C,INVTRAN D,SETAUMP E,SETPROV F '+
       ' WHERE '+
       'A.CUSCOD=B.CUSCOD AND B.CUSCOD=C.CUSCOD AND '+
       'B.ADDRNO=C.ADDRNO AND  A.STRNO=D.STRNO AND C.AUMPCOD=E.AUMPCOD AND '+
       'C.PROVCOD=F.PROVCOD  ');
       ExecSQL;
    End;
  end;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT MAX(MDLCOD) AS MDL FROM MODELMST '+
            'WHERE SUBSTR(MDLCOD,1,3)=''MDL'' ');
    Open;
    If FieldByName('MDL').AsString <> '' Then
    Begin
      LModel := StrtoInt(Copy(Query1.FieldByName('MDL').AsString,4,3));
    End;
  End;
  case cbTsale.ItemIndex of
       0: XTSL := ' AND TSALE LIKE ''C%'' ';
       1: XTSL := ' AND TSALE LIKE ''H%'' ';
       2: XTSL := ' AND TSALE LIKE ''F%'' ';
       3: XTSL := ' AND TSALE LIKE ''%'' ';
   End;

  Case RadioGp2.Itemindex of
   0: XOPT:=' WHERE STRNO =:XSTRNO AND LOCAT =:XLOCAT '+XTSL;
   1: XOPT:=' WHERE (SDATE >=:DATE1 AND SDATE<=:DATE2) AND LOCAT =:XLOCAT '+XTSL;
   2: XOPT:='';
  End;
  //
  With QCollect Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM VIEW_COLECT '+XOPT);
    If RadioGp2.Itemindex=0 Then
    Begin
       Params[0].Asstring := EDIT3.TEXT;
       Params[1].Asstring := edLocat.Text;
    end  Else
    If RadioGp2.Itemindex=1 Then
    Begin
       Params[0].Asdate := FromDate.Date;
       Params[1].Asdate := ToDate.Date;
       Params[2].Asstring := edLocat.Text;
    End;
    Open;
  End;

  If Not(QCollect.Bof and QCollect.Eof) Then
  Begin
    Gauge1.Visible :=True;
    P := 0;
    Gauge1.Maxvalue := QCollect.RecordCount;
    QCollect.First;
    While not QCollect.Eof Do
    Begin
      // Check ตัวถัง
      With QSvmast Do
      Begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM SVMAST WHERE STRNO=:XSTR');
        Params[0].asstring := QCollect.Fieldbyname('STRNO').Asstring;
        Open;
      End;
      If QSvmast.Bof and QSvmast.Eof Then
      Begin
        // Check ประวัติลูกค้า
        With QArmast Do
        Begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ARMAST WHERE (NAME1=:0 AND NAME2=:1) OR (CUSCOD=:2) ');
          Params[0].asstring := QCollect.Fieldbyname('NAME1').Asstring;
          Params[1].asstring := QCollect.Fieldbyname('NAME2').Asstring;
          Params[2].asstring := QCollect.Fieldbyname('CUSCOD').Asstring;
          Open;
          If (QArmast.Bof and QArmast.Eof) Then
          Begin
            QArmast.Insert;
            FieldByName('CUSCOD').Asstring := QCollect.FieldByName('CUSCOD').AsString;
            FieldByName('SNAM').AsString   := QCollect.FieldByName('SNAM').AsString;
            FieldByName('NAME1').AsString  := QCollect.FieldByName('NAME1').AsString;
            FieldByName('NAME2').AsString  := QCollect.FieldByName('NAME2').AsString;
            FieldByName('ADDR1').AsString  := QCollect.FieldByName('ADDR1').AsString;
            FieldByName('ADDR2').AsString  := QCollect.FieldByName('ADDR2').AsString;
            FieldByName('TUMB').AsString   := QCollect.FieldByName('TUMB').AsString;
            FieldByName('AUMP').AsString   := QCollect.FieldByName('AUMP').AsString;
            FieldByName('PROV').AsString   := QCollect.FieldByName('PROV').AsString;
            FieldByName('ZIP').AsString    := QCollect.FieldByName('ZIP').AsString;
            Fieldbyname('MAIL').Asstring   := 'Y';
            Fieldbyname('SALLEV').Asstring := '1';
            QArmast.Post;
          End;
        End;
        //  ยี่ห้อรถ
        With QTypmst Do
        Begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM TYPEMST WHERE TYPENAM=:EDIT1 OR TYPECOD=:EDIT2 ');
          Params[0].asstring := QCollect.FieldByName('TYPE').AsString;
          Params[1].asstring := Copy(QCollect.FieldByName('TYPE').AsString,1,3);
          Open;
          If QTypmst.Bof and QTypmst.Eof Then
          Begin
            Insert;
            FieldByName('TYPECOD').AsString := Copy(QCollect.FieldByName('TYPE').AsString,1,3);
            FieldByName('TYPENAM').AsString := QCollect.FieldByName('TYPE').AsString;
            Post;
          End;
        End;
        //
        With TModel Do
        Begin
          With Query1 Do
          Begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM MODELMST WHERE DESC=:Edit1 ');
          Params[0].asstring := QCollect.FieldByName('MODEL').AsString;
          Open;
          end;
          If (Query1.Bof and Query1.Eof) Then
          Begin
            Close;
            Sql.Clear;
            Sql.Add('SELECT * FROM MODELMST WHERE MDLCOD=:Edit1 ');
            Params[0].asstring := '';
            Open;

            LModel := LModel+1;
            S2 := FloatTostr(LModel);
            S3 := ZeroLead(S2,3);
            XModel := 'MD-'+S3;

            TModel.Insert;
            TModel.FieldByName('MDLCOD').AsString := XModel;
            TModel.FieldByName('DESC').AsString := QCollect.FieldByName('MODEL').AsString;;
            Post;
          End
          Else
          XModel := Query1.FieldByName('MDLCOD').AsString
        End;
        //
        With Query2 Do
        Begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:XLOC');
          Params[0].asstring := QCollect.FieldByName('LOCAT').AsString;
          Open;
          If Not(Bof and Eof) Then
          Xlocatnm :=Query2.Fieldbyname('Locatnm').asstring;
        End;
        //

        QSvmast.Insert;
        QSvmast.FieldByName('CUSCOD').AsString := QArmast.FieldByName('CUSCOD').AsString;
        QSvmast.FieldByName('STRNO').AsString  := QCollect.FieldByName('STRNO').AsString;
        QSvmast.FieldByName('ENGNO').AsString  := QCollect.FieldByName('ENGNO').AsString;
        QSvmast.FieldByName('TYPE').AsString   := QTypmst.FieldByName('TYPECOD').AsString;
        QSvmast.FieldByName('MDLCOD').AsString := XModel;
        QSvmast.FieldByName('BAAB').AsString   := QCollect.FieldByName('BAAB').AsString;
        QSvmast.FieldByName('COLOR').AsString  := QCollect.FieldByName('COLOR').AsString;
        QSvmast.FieldByName('CC').AsString     := QCollect.FieldByName('CC').AsString;
        QSvmast.FieldByName('SDATE').AsDateTime:= QCollect.FieldByName('SDATE').AsDateTime;
        QSvmast.FieldByName('FIRSTDT').AsDateTime:= QCollect.FieldByName('SDATE').AsDateTime;
        QSvmast.FieldByName('CUSTYPE').AsString := '1';
        QSvmast.FieldByName('Buyfrom').AsString := Xlocatnm;
        QSvmast.Post;
      End;
      P := P+1;
      Gauge1.Progress := P;
      QCollect.Next;
    End;
  End Else
  Begin
    ToolButton3.Enabled := True;
    SFMain.RaiseException('ไม่พบข้อมูลในระบบเช่าซื้อ');
  end;
  Gauge1.Progress := 0;
  Gauge1.Visible :=False;
  Label7.Caption := '...Success...';
  ToolButton3.Enabled := True;
//  RzBitBtn1Click(Sender);
end;

procedure TFTrnferhi.RzBitBtn1Click(Sender: TObject);
Var P:longint;
begin
  XSCM := Edit1.Text;
  With Query4 Do
  Begin
      Close;
      sql.Clear;
      sql.Add('SELECT V.CUSCOD,V.STRNO FROM '+XSCM+'.VIEW_COLECT V,SVMAST S WHERE V.STRNO=S.STRNO AND V.CUSCOD<>S.CUSCOD');
      Open;
  End;
  If NOT (Query4.Bof and Query4.Eof) Then
  Begin
    Gauge1.Visible :=True;
    P := 0;
    Gauge1.Maxvalue := Query4.RecordCount;
    Query4.First;

    While not Query4.Eof Do
    Begin
       With Query3 Do
       Begin
         Close;
         Sql.Clear;
         Sql.Add('UPDATE SVMAST SET CUSCOD=:1 WHERE STRNO=:2');
         Params[0].asstring:=Query4.fieldByName('CUSCOD').AsString;
         Params[1].asstring:=Query4.fieldByName('STRNO').AsString;
         ExecSql;
      End;
      With Query3 Do
      Begin
        Close;
        Sql.Clear;
        Sql.Add('UPDATE JOBORDER SET CUSCOD=:1 WHERE STRNO=:2');
        Params[0].asstring:=Query4.fieldByName('CUSCOD').AsString;
        Params[1].asstring:=Query4.fieldByName('STRNO').AsString;
        ExecSql;
      End;
      With Query3 Do
      Begin
        Close;
        Sql.Clear;
        Sql.Add('UPDATE STKCARD SET CUSCOD=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
        Params[0].asstring:=Query4.fieldByName('CUSCOD').AsString;
        Params[1].asstring:=Query4.fieldByName('STRNO').AsString;
        ExecSql;
      End;

      With Query3 Do
      Begin
        Close;
        Sql.Clear;
        Sql.Add('UPDATE ARINVOI SET CUSCODE=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
        Params[0].asstring:=Query4.fieldByName('CUSCOD').AsString;
        Params[1].asstring:=Query4.fieldByName('STRNO').AsString;
        ExecSql;
      End;
      With Query3 Do
      Begin
        Close;
        Sql.Clear;
        Sql.Add('UPDATE ARPAYTRN SET CUSCODE=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
        Params[0].asstring:=Query4.fieldByName('CUSCOD').AsString;
        Params[1].asstring:=Query4.fieldByName('STRNO').AsString;
        ExecSql;
      End;
      With Query3 Do
      Begin
        Close;
        Sql.Clear;
        Sql.Add('UPDATE OTHINVOI SET CUSCOD=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
        Params[0].asstring:=Query4.fieldByName('CUSCOD').AsString;
        Params[1].asstring:=Query4.fieldByName('STRNO').AsString;
        ExecSql;
      End;
      With Query3 Do
      Begin
        Close;
        Sql.Clear;
        Sql.Add('UPDATE PK_INVOI SET CUSCOD=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
        Params[0].asstring:=Query4.fieldByName('CUSCOD').AsString;
        Params[1].asstring:=Query4.fieldByName('STRNO').AsString;
        ExecSql;
      End;
      With Query3 Do
      Begin
        Close;
        Sql.Clear;
        Sql.Add('UPDATE TAXSAL SET CUSCOD=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
        Params[0].asstring:=Query4.fieldByName('CUSCOD').AsString;
        Params[1].asstring:=Query4.fieldByName('STRNO').AsString;
        ExecSql;
     End;
     With Query3 Do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('UPDATE AR_SERV SET CUSCOD=:1 WHERE JOBNO IN(SELECT JOBNO FROM JOBORDER WHERE STRNO=:2 )');
       Params[0].asstring:=Query4.fieldByName('CUSCOD').AsString;
       Params[1].asstring:=Query4.fieldByName('STRNO').AsString;
       ExecSql;
     End;
      P := P+1;
      Gauge1.Progress := P;
      Query4.Next;
  End;
  End Else
  Begin
     MessageDlg('ไม่มีการเปลี่ยนแปลงรหัสลูกค้าในระบบเช่าซื้อ', mtWarning, [mbOK], 0);
     Abort;
  End;

  Gauge1.Progress := 0;
  Gauge1.Visible :=False;
  Label7.Caption := '...Success...';
  ToolButton3.Enabled := True;
End;


procedure TFTrnferhi.RzRadioGroup1Click(Sender: TObject);
begin
        if RzRadioGroup1.ItemIndex=0 Then
            Edit1.Text := 'SFHP'
        Else
            Edit1.Text := 'TSFHP';
end;

procedure TFTrnferhi.RzRapidFireButton1Click(Sender: TObject);
begin
  HI_HP.Connected := False;
  HI_HP.Params.Strings[0] := 'USER NAME='+Edit1.Text;
  HI_HP.Params.Strings[1] := 'DB2 DSN='+DM_SEC.XDB;
  HI_HP.Params.Strings[2] := 'PASSWORD='+edPassword.Text;
  HI_HP.Connected := True;
  qLocatHp.Active := true;
  ToolButton3.Enabled := True;
  RzRapidFireButton1.Enabled := False;
end;

procedure TFTrnferhi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F11 then
  begin
    if Ftrnferhi.Height <= 320 then
       Ftrnferhi.Height := 365
    else
    if Ftrnferhi.Height >= 365 then
       Ftrnferhi.Height := 320;
  end;
end;

procedure TFTrnferhi.DBLLocatHpClick(Sender: TObject);
begin
    edLocat.Text := qLocatHp.fieldbyname('LOCATCD').AsString;
end;

end.
