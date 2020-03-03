unit OptSal11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFOptSal2 = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Xcontno : String ;
  end;

var
  FOptSal2: TFOptSal2;
  XTaxno : String;

implementation

uses Dmsec,DmSal, OptSal10, Dm1,USoftFirm;

{$R *.DFM}

procedure TFOptSal2.FormCreate(Sender: TObject);
Var LV,HF,LF,SQLTXT : String;
    DV : TDateTime ;
begin
  With Dm_sal Do
  Begin
    With QOptSUpd Do
    Begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM AROPTMST WHERE CONTNO=:EDIT1');
      Params[0].Asstring := FOptSal1.S;
      open;
      If Bof and Eof Then
      Raise Exception.Create('ไม่พบเลขที่สัญญา #'+FOptSal1.S);
    End;
    With Query1 Do
    Begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST '+
              'WHERE CUSCOD=:Var0');
      Params[0].Asstring :=Dm_sal.QOptSUpd.Fieldbyname('CUSCOD').Asstring;
      open;
    end;

    If (QOptSUpdOptPVt.Asfloat >0) Then
    Begin
      QOptSUpd.Edit ;
      QOptSUpdTaxdt.Asdatetime := QOptSUpdSdate.Asdatetime;
      LV := QOptSUpd.FieldByName('Locat').Asstring;
      DV := QOptSUpd.FieldByName('SDATE').Asdatetime;
      HF := 'H_TXOPT';
      LF := 'L_TXOPT';
      IF  XRunTax = 'Y' Then
      begin
        SQLTXT :='SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND '+
                 'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 '+
                 'AND SUBSTR(TAXNO,7,2)=:EDIT4';

        If Duplicate2 Then
           QOptSUpdTAXNO.Asstring    := Dm01.MAXNO(HF,LF,LV,SQLTXT,DV)
        ELSE
           QOptSUpdTAXNO.Asstring    := Dm01.RunNo01(HF,LF,LV,DV);
        end
        Else
        begin
          Xtaxno := InputBox('ป้อนเลขที่ใบกำกับภาษี  ','ใบกำกับภาษีเลขที่  ','');
          QOptSUpdTAXNO.Asstring    := Xtaxno ;
          While Copy(QOptSUpdTAXNO.Asstring,1,3) = Dm01.ChkDupRun(HF,LF,LV) Do
          Begin
            If MessageDlg('หมวดเอกสารซ้ำกับเลขRun ต้องการป้อนเลขที่ใบกำกับใหม่ ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            Begin
               Xtaxno := InputBox('ป้อนเลขที่ใบกำกับภาษี  ','ใบกำกับภาษีเลขที่  ','');
               QOptSUpdTAXNO.Asstring    := Xtaxno ;
            end
            Else
               Raise Exception.create('หมวดเอกสารซ้ำกับเลข Run');
          End;
        end;
        Edit1.Text := QOptSUpdTAXNO.Asstring ;

        WITH QCshTax DO
        begin
          close;
          sql.clear;
          sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
          params[0].asstring := '';
          open;
          Insert;
        end;
        //ออกใบกำกับ ภาษีขายอุปกรณ์เสริม
        QCshTaxLocat.Asstring  := QOptSUpdLocat.Asstring;
        QCshTaxTaxno.Asstring  := QOptSUpdTaxno.Asstring;
        QCshTaxTaxdt.AsDateTime := QOptSUpdTaxdt.AsDatetime;
        QCshTaxTsale.Asstring  := 'O';
        QCshTaxContno.Asstring := QOptSUpdContno.Asstring;
        QCshTaxCuscod.Asstring := QOptSUpdCuscod.Asstring;
        QCshTaxDescp.Asstring  := 'ใบกำกับขายอุปกรณ์เสริม';
        QCshTaxSnam.Asstring   := Query1.FieldByName('Snam').Asstring;
        QCshTaxName1.Asstring  := Query1.FieldByName('Name1').Asstring;
        QCshTaxName2.Asstring  := Query1.FieldByName('Name2').Asstring;
        QCshTaxVatrt.AsFloat   := QOptSUpdVatrt.Asfloat;
        QCshTaxNetamt.Asfloat  := QOptSUpdOPTPRC.Asfloat;
        QCshTaxVatamt.Asfloat  := QOptSUpdOPTPVT.Asfloat;
        QCshTaxTotamt.Asfloat  := QOptSUpdOPTPTOT.Asfloat;
        QCshTaxTaxtyp.Asstring := 'S';
        QCshTaxTaxFlg.Asstring := 'N';
        QCshTaxInpDt.AsDateTime := Now;
        QCshTaxUserid.AsString := SFMain.Xuser_Id;
        QCshTax.Post;
        QOptSUpd.Post ;
     end;
  end;
end;

procedure TFOptSal2.BitBtn2Click(Sender: TObject);
Var D : Double ;
    LV,HF,LF,SQLTXT : String;
    DV : TDateTime ;
begin
   With Dm_sal Do
   Begin
      If Not QOptSUpd.Active Then
         QOptSUpd.Open;
      QOptSUpd.Edit ;
      QOptSUpdTaxdt.Asdatetime := QOptSUpdSdate.Asdatetime;
      LV := QOptSUpd.FieldByName('Locat').Asstring;
      DV := QOptSUpd.FieldByName('SDATE').Asdatetime;
      HF := 'H_TXOPT';
      LF := 'L_TXOPT';
      IF  XRunTax = 'Y' Then
      begin
        SQLTXT :='SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND '+
                 'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 '+
                 'AND SUBSTR(TAXNO,7,2)=:EDIT4';

        If Duplicate2 Then
           QOptSUpdTAXNO.Asstring    := Dm01.MAXNO(HF,LF,LV,SQLTXT,DV)
        ELSE
           QOptSUpdTAXNO.Asstring    := Dm01.RunNo01(HF,LF,LV,DV);
        end
      Else
      begin
          Xtaxno := InputBox('ป้อนเลขที่ใบกำกับภาษี  ','ใบกำกับภาษีเลขที่  ','');
          QOptSUpdTAXNO.Asstring    := Xtaxno ;
          While Copy(QOptSUpdTAXNO.Asstring,1,3) = Dm01.ChkDupRun(HF,LF,LV) Do
          Begin
            If MessageDlg('หมวดเอกสารซ้ำกับเลขRun ต้องการป้อนเลขที่ใบกำกับใหม่ ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            Begin
               Xtaxno := InputBox('ป้อนเลขที่ใบกำกับภาษี  ','ใบกำกับภาษีเลขที่  ','');
               QOptSUpdTAXNO.Asstring    := Xtaxno ;
            end
            Else
               Raise Exception.create('หมวดเอกสารซ้ำกับเลข Run');
          End;
      end;
      Edit1.Text := QOptSUpdTAXNO.Asstring ;

      WITH QCshTax DO
      begin
          close;
          sql.clear;
          sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
          params[0].asstring := '';
          open;
          Insert;
      end;
        //ออกใบกำกับ ภาษีขายอุปกรณ์เสริม
      QCshTaxLocat.Asstring  := QOptSUpdLocat.Asstring;
      QCshTaxTaxno.Asstring  := QOptSUpdTaxno.Asstring;
      QCshTaxTaxdt.AsDateTime := QOptSUpdTaxdt.AsDatetime;
      QCshTaxTsale.Asstring  := 'O';
      QCshTaxContno.Asstring := QOptSUpdContno.Asstring;
      QCshTaxCuscod.Asstring := QOptSUpdCuscod.Asstring;
      QCshTaxDescp.Asstring  := 'ใบกำกับขายอุปกรณ์เสริม';
      QCshTaxSnam.Asstring   := Query1.FieldByName('Snam').Asstring;
      QCshTaxName1.Asstring  := Query1.FieldByName('Name1').Asstring;
      QCshTaxName2.Asstring  := Query1.FieldByName('Name2').Asstring;
      QCshTaxVatrt.AsFloat   := QOptSUpdVatrt.Asfloat;
      QCshTaxNetamt.Asfloat  := QOptSUpdOPTPRC.Asfloat;
      QCshTaxVatamt.Asfloat  := QOptSUpdOPTPVT.Asfloat;
      QCshTaxTotamt.Asfloat  := QOptSUpdOPTPTOT.Asfloat;
      QCshTaxTaxtyp.Asstring := 'S';
      QCshTaxTaxFlg.Asstring := 'N';
      QCshTaxInpDt.AsDateTime := Now;
      QCshTaxUserid.AsString := SFMain.Xuser_Id;
      QCshTax.Post;
      QOptSUpd.Post ;
   end;
end;

end.
