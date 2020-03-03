unit FinSal11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, AdvGlowButton,
  AdvOfficeStatusBar, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, AdvToolBar, AdvPanel, ActnList,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, System.Actions,
  BusinessSkinForm;

type
  TFFinSal2 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit2: TcxDBTextEdit;
    DBDtTax: TcxDBDateEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    ActionList1: TActionList;
    atEdit: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    tbCrtTax: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnTax: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure tbCrtTaxClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure PrnTaxClick(Sender: TObject);
    procedure atEditExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Xcontno : String ;
  end;

var
  FFinSal2: TFFinSal2;
  Xtaxno : string;
  VPayres : Double;

implementation
Uses DmSal,FinSal10,Dm1,USoftFirm, unfrPreview , Dmsec;

{$R *.DFM}

procedure TFFinSal2.FormCreate(Sender: TObject);
Var LV,HF,LF,SQLTXT : String;
    DV : TDateTime ;
begin
  With Dm_sal Do
  Begin
    With QFinSUpd Do
    Begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM ARFINC WHERE CONTNO=:EDIT1');
      Params[0].Asstring := FFinSal1.S;
      open;
    End;
    With QCustMast Do
    Begin
       Close;
       Sql.clear;
       Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST '+
               'WHERE CUSCOD=:Var0');
       Params[0].Asstring :=QFinSUpd.Fieldbyname('CUSCOD').Asstring;
       open;
    end;
    WITH QCshTax DO
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
      params[0].asstring := QFinSUpd.Fieldbyname('TAXNO').Asstring;
      open;
   end;

    if QDbConfig.fieldbyname('R_TXFINC').AsString ='Y' then
    begin
      DBedit2.Properties.ReadOnly := True;
      DBedit2.Style.Color := clSilver;
    end else
    begin
      DBedit2.Properties.ReadOnly := False;
      DBedit2.Style.Color := clWhite;
      DBDtTax.Style.Color := clWhite;
    end;

    if Dm_sal.QFinSUpdTAXNO.AsString <> '' then
    Begin
      DBDtTax.Style.Color    := clSilver;  DBDtTax.Properties.ReadOnly := True;
      DBEdit2.Style.Color    := clSilver;  DBEdit2.Properties.ReadOnly := True;
      tbCrtTax.Enabled := False;
    End Else
    Begin
       DBDtTax.Style.Color    := clWhite;  DBDtTax.Properties.ReadOnly := False;
       tbCrtTax.Enabled := True;
    End;
  End;
end;

procedure TFFinSal2.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFFinSal2.tbCrtTaxClick(Sender: TObject);
Var LV,HF,LF,SQLTXT : String;
    DV : TDateTime ;
begin
   DBEdit11.SetFocus;
   if Dm_Sal.QFinSUpdTAXDT.AsString ='' then
   SFMain.RaiseException('ยังไม่ระบุวันที่ใบกำกับ..');
   if ((Dm_Sal.QFinSUpdTAXNO.AsString ='') and (Dm_sal.QDbConfig.fieldbyname('R_TXFINC').AsString='N')) then
   SFMain.RaiseException('ยังไม่ระบุเลขที่ใบกำกับ..');
   //
   With Dm_sal Do
   Begin
     if Not QDbConfig.Active then QDbConfig.Open;
     XRunTax := QDbConfig.fieldbyname('R_TXFINC').AsString;

      If not QFinSUpd.Active Then
         QFinSUpd.Active ;
      //If (QFinSUpdVatPrc.Asfloat-QFinSUpdVatPres.Asfloat) >0 Then
      //Begin
           QFinSUpd.Edit ;
           QFinSUpdTaxdt.Asdatetime := QFinSUpdTAXDT.Asdatetime;
           LV := QFinSUpd.FieldByName('Locat').Asstring;
           DV := QFinSUpd.FieldByName('TAXDT').Asdatetime;
           if not Dm01.QCondpay.Active Then Dm01.QCondpay.Open;
           if DM01.QCondpay.FieldByName('VERSION').AsString ='Y'  then
           begin
             HF := 'H_TXINV';
             LF := 'L_TXINV';
           end else
           begin
             HF := 'H_TXFINC';
             LF := 'L_TXFINC';
           end;

           IF  XRunTax = 'Y' Then
           begin
              QFinSUpdTAXNO.Asstring    := Dm01.RunNo01(HF,LF,LV,DV);
           end;
         //  Edit1.Text := QFinSUpdTAXNO.Asstring ;

           WITH QCshTax DO
           begin
              close;
              sql.clear;
              sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
              params[0].asstring := '';
              open;
              Insert;
           end;
           //ออกใบกำกับ ภาษีขายส่งไฟแนนซ์
           QCshTaxTsale.Asstring  := 'F';
           QCshTaxLocat.Asstring  := QFinSUpdLocat.Asstring;
           QCshTaxTaxno.Asstring  := QFinSUpdTaxno.Asstring;
           QCshTaxTaxdt.AsDateTime := QFinSUpdTaxdt.AsDatetime;
           QCshTaxContno.Asstring := QFinSUpdContno.Asstring;
           QCshTaxFincod.Asstring := QFinSUpdFincod.Asstring;
           QCshTaxCuscod.Asstring := QFinSUpdCuscod.Asstring;
           QCshTaxDescp.Asstring  := 'ใบกำกับภาษีขายส่งไฟแนนซ์';
           QCshTaxSnam.Asstring   := QCustMast.FieldByName('Snam').Asstring;
           QCshTaxName1.Asstring  := QCustMast.FieldByName('Name1').Asstring;
           QCshTaxName2.Asstring  := QCustMast.FieldByName('Name2').Asstring;
           QCshTaxStrno.Asstring  := QFinSUpdStrno.Asstring;
           QCshTaxVatrt.AsFloat   := QFinSUpdVatrt.Asfloat;
           QCshTaxNetamt.Asfloat  := QFinSUpdNprice.Asfloat;
           QCshTaxVatamt.Asfloat  := QFinSUpdVatPrc.Asfloat;
           QCshTaxTotamt.Asfloat  := QFinSUpdTotPrc.Asfloat;
           QCshTaxTaxtyp.Asstring := 'S';
           QCshTaxTaxFlg.Asstring := 'N';
           QCshTaxFlag.Asstring   := '';
           QCshTaxInpDt.AsDateTime := Now;
           QCshTaxUserid.AsString := SFMain.Xuser_Id;
           QCshTax.Post;
           QFinSUpd.Post ;

        //Run Credit Note
        With QFinSUpd Do
        Begin
          Close;
          Sql.clear;
          Sql.add('SELECT * FROM ARFINC WHERE CONTNO=:EDIT1');
          Params[0].Asstring := FFinSal1.S;
          open;
        End;

        With Query1 Do
        Begin
          Close;
          Sql.clear;
          Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST '+
                  'WHERE CUSCOD=:Var0');
          Params[0].Asstring :=QFinSUpd.Fieldbyname('CUSCOD').Asstring;
          open;
        end;

        WITH QResv DO
        begin
          close;
          sql.clear;
          sql.add('SELECT * FROM ARRESV WHERE RESVNO=:XRESVNO');
          Params[0].asstring := QFinSUpd.Fieldbyname('Resvno').Asstring ;
          OPEN;
        end;
        If (QResv.FieldByName('Vatrt').AsFloat = 7) and
        not ((QResv.FieldByName('Taxno').Asstring = '') Or
             (QResv.FieldByName('Taxno').Asstring = '')) Then
        Begin
          LV := QFinSUpd.FieldByName('Locat').Asstring;
          DV := QFinSUpd.Fieldbyname('Sdate').AsDateTime ;
          HF := 'H_TCRESV';
          LF := 'L_TCRESV';

          WITH QDiscTax DO
          begin
              close;
              sql.clear;
              sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
              params[0].asstring := '';
              open;
              Insert;
          end;
            IF  XRunTax = 'Y' Then
            begin
              SQLTXT :='SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND '+
                       'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 '+
                       'AND SUBSTR(TAXNO,7,2)=:EDIT4';
              If Duplicate2 Then
                 QDiscTaxTAXNO.Asstring    := Dm01.MAXNO(HF,LF,LV,SQLTXT,DV)
              ELSE
                 QDiscTaxTAXNO.Asstring    := Dm01.RunNo01(HF,LF,LV,DV);
            end Else
            begin
              Xtaxno := InputBox('ป้อนเลขที่ใบกำกับภาษี  ','ใบกำกับภาษีเลขที่  ','');
              QDiscTaxTAXNO.Asstring    := Xtaxno ;
              While Copy(QDiscTaxTAXNO.Asstring,1,3) = Dm01.ChkDupRun(HF,LF,LV) Do
              Begin
                If MessageDlg('หมวดเอกสารซ้ำกับเลขRun ต้องการป้อนเลขที่ใบกำกับใหม่ ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                Begin
                  Xtaxno := InputBox('ป้อนเลขที่ใบกำกับภาษี  ','ใบกำกับภาษีเลขที่  ','');
                  QDiscTaxTAXNO.Asstring    := Xtaxno ;
                end
                Else
                  SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');
              End;
            end;
           //   Edit2.Text := QDiscTaxTAXNO.Asstring ;
              VPayres:=StrToFloat(FloatToStrF((QResv.FieldByName('ResPay').Asfloat*QResv.FieldByName('Vatrt').Asfloat)/(100+QResv.FieldByName('Vatrt').Asfloat),ffFixed,12,2)) ;

             //ออกใบลดหนี้ ภาษีขายส่งไฟแนนซ์
             QDiscTaxTsale.Asstring   := 'R'; //ใบลดหนี้เงินจอง
             QDiscTaxLocat.Asstring   := QFinSUpd.FieldByName('Locat').Asstring;
             QDiscTaxTaxdt.AsDateTime := QFinSUpd.Fieldbyname('Sdate').AsDateTime;
             QDiscTaxContno.Asstring  := QFinSUpdContno.Asstring;
             QDiscTaxCuscod.Asstring  := QFinSUpdCuscod.Asstring;
             QDiscTaxDescp.Asstring   := 'ใบลดหนี้เงินจองจากการขายส่งไฟแนนซ์';
             QDiscTaxSnam.Asstring    := QCustMast.FieldByName('Snam').Asstring;
             QDiscTaxName1.Asstring   := QCustMast.FieldByName('Name1').Asstring;
             QDiscTaxName2.Asstring   := QCustMast.FieldByName('Name2').Asstring;
             QDiscTaxStrno.Asstring   := QFinSUpdStrno.Asstring;
             QDiscTaxREFNO.Asstring   := QFinSUpdTaxno.Asstring;
             QDiscTaxRefDt.AsDateTime := QFinSUpdTaxdt.AsDatetime;
             QDiscTaxVatrt.AsFloat    := QResv.FieldByName('Vatrt').Asfloat;
             QDiscTaxNetamt.Asfloat   := QResv.FieldByName('ResPay').Asfloat-VPayres;
             QDiscTaxVatamt.Asfloat   := VPayres;
             QDiscTaxTotamt.Asfloat   := QResv.FieldByName('ResPay').Asfloat;
             QDiscTaxTaxtyp.Asstring  := '9'; //S:ขาย+,C:ลดหนี้-
             QDiscTaxTaxFlg.Asstring  := 'N'; //ยื่นปกติ
             QDiscTaxInpDt.AsDateTime := Now;
             QDiscTaxUserid.AsString := SFMain.Xuser_Id;
             QDiscTax.Post;
        End;
      //End;
   End;
   FormCreate(Sender);
    // DBEdit11.SetFocus;
end;

procedure TFFinSal2.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  if (UPperCase(ParName)='VCONTNO') then
      ParValue := DBEdit2.Text;
end;

procedure TFFinSal2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFFinSal2.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
//  If UPPERCASE(NAME)='BAHTTEXT' Then
//  begin
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  end;
//  If UPPERCASE(NAME)='DATETOTHAI' THEN
//     VAL := SFMain.DateToThai(FRPARSER.Calc(P1),FRPARSER.Calc(P2));
end;

procedure TFFinSal2.PrnTaxClick(Sender: TObject);
begin
//  DM_Sec.Do_Prev_Edit_FastReport(frReport1,'fr_ArcFinc.frf','1'); {1 = Preview Report}
end;

procedure TFFinSal2.atEditExecute(Sender: TObject);
begin
//  DM_Sec.Do_Prev_Edit_FastReport(frReport1,'fr_ArcFinc.frf','2'); {2 = Design Report}
end;

end.
