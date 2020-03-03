unit Resv11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, BusinessSkinForm,
  cxTextEdit, AdvGlowButton, AdvPanel;

type
  TFResv11 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    BitBtn2: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvGlowButton1: TAdvGlowButton;
    FldEdit1: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XResvno : string;
  end;

var
  FResv11: TFResv11;

implementation

uses DmSec,Dm1, DmSal,UArresv,Functn01,uSoftFirm;

{$R *.DFM}

procedure TFResv11.FormCreate(Sender: TObject);
Var V : Double ;
    LV,HF,LF,SQLTXT,Xtaxno : String;
    DV : TDateTime ;
begin
   If (Dm01.QCondpay.FieldByName('Resvtx').Asstring = 'Y') Then
   Begin
     With Dm_sal Do
     Begin
        With QResvUpd Do
        Begin
          Close;
          Sql.clear;
          Sql.add('SELECT * FROM ARRESV WHERE RESVNO=:EDIT1');
          Params[0].Asstring := FArresv.S;
          open;
        End;
        With Query1 Do
        Begin
           Close;
           Sql.clear;
           Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST '+
                   'WHERE CUSCOD=:Var0');
           Params[0].Asstring :=Dm_sal.QResvUpd.Fieldbyname('CUSCOD').Asstring;
           open;
        end;
        If (QResvUpdRespay.Asfloat >0)and(QResvUpdVatrt.Asfloat>0) Then
        Begin
           QResvUpd.Edit ;
           QResvUpdTaxdt.Asdatetime := QResvUpdResvdt.Asdatetime;
           V  := FRound(QResvUpd.FieldByname('Respay').Asfloat*QResvUpdVatrt.Asfloat/(100+QResvUpdVatrt.Asfloat),2);
           LV := QResvUpd.FieldByName('Locat').Asstring;
           DV := QResvUpd.FieldByName('RESVDT').Asdatetime;
           HF := 'H_TXRESV';
           LF := 'L_TXRESV';
           IF  XRunTax = 'Y' Then
           begin
              SQLTXT :='SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND '+
                       'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 '+
                       'AND SUBSTR(TAXNO,7,2)=:EDIT4';

              If Duplicate2 Then
                 QResvUpdTAXNO.Asstring    := Dm01.MaxNo(HF,LF,LV,SQLTXT,DV)
              ELSE
                 QResvUpdTAXNO.Asstring    := Dm01.RunNo01(HF,LF,LV,DV);
           end
           Else
           begin
              Xtaxno := InputBox('ป้อนเลขที่ใบกำกับภาษี  ','ใบกำกับภาษีเลขที่  ','');
              QResvUpdTAXNO.Asstring    := Xtaxno ;
              While Copy(QResvUpdTAXNO.Asstring,1,3) = Dm01.ChkDupRun(HF,LF,LV) Do
              Begin
                 If MessageDlg('หมวดเอกสารซ้ำกับเลข Run ต้องการป้อนเลขที่ใบกำกับใหม่ ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                 Begin
                    Xtaxno := InputBox('ป้อนเลขที่ใบกำกับภาษี  ','ใบกำกับภาษีเลขที่  ','');
                    QResvUpdTAXNO.Asstring    := Xtaxno ;
                 end
                 Else
                    sfmain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');
              End;
           end;

           WITH QTAXTRAN DO
           begin
              close;
              sql.clear;
              sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
              params[0].asstring := '';
              open;
              Insert;
           end;
          {ออกใบกำกับ เงินจอง}
           QTaxtranLocat.Asstring  := QResvUpdLocat.Asstring;
           QTaxtranTaxno.Asstring  := QResvUpdTaxno.Asstring;
           QTaxtranTaxdt.AsDateTime := QResvUpdTaxdt.AsDatetime;
           QTaxtranTsale.Asstring  := 'R';
           QTaxtranContno.Asstring := QResvUpdResvno.Asstring;
           QTaxtranCuscod.Asstring := QResvUpdCuscod.Asstring;
           QTaxtranDescp.Asstring  := 'ใบกำกับเงินจอง';
           QTaxtranSnam.Asstring   := Query1.FieldByName('Snam').Asstring;
           QTaxtranName1.Asstring  := Query1.FieldByName('Name1').Asstring;
           QTaxtranName2.Asstring  := Query1.FieldByName('Name2').Asstring;
           QTaxtranStrno.Asstring  := QResvUpdStrno.Asstring;
           QTaxtranVatrt.AsFloat   := QResvUpdVatrt.Asfloat;
           QTaxtranVatamt.Asfloat  := V;
           QTaxtranNetamt.Asfloat  := QResvUpdResPay.Asfloat-V;
           QTaxtranTotamt.Asfloat  := QResvUpdResPay.Asfloat;
           QTaxtranTaxtyp.Asstring := 'R';
           QTaxtranTaxFlg.Asstring := 'N';
           QTaxtranUserid.Asstring := QResvUpdUserid.AsString;
           QTaxtranInpDt.AsDateTime := Now;
           QTaxtran.Post;
           QResvUpd.Post ;
        end;
     end;
   End;
end;

procedure TFResv11.BitBtn2Click(Sender: TObject);
Var D : Double ;
    LV,HF,LF,SQLTXT : String;
    DV : TDateTime ;
begin
   With Dm_sal Do
   Begin
      If Not QResvUpd.Active Then
             QResvUpd.Open;
      QResvUpd.Edit ;
      QResvUpdTaxdt.Asdatetime := QResvUpdResvdt.Asdatetime;
      D := StrToFloat(FloatTostrF(QResvUpd.FieldByname('Respay').Asfloat*100/(100+QResvUpdVatrt.Asfloat),ffFixed,15,2)) ;
      LV := QResvUpd.FieldByName('Locat').Asstring;
      DV := QResvUpd.FieldByName('RESVDT').Asdatetime;
      HF := 'H_TXRESV';
      LF := 'L_TXRESV';
      IF  XRunTax = 'Y' Then
      begin
         SQLTXT :='SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND '+
                  'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 '+
                  'AND SUBSTR(TAXNO,7,2)=:EDIT4';

         //If Duplicate2 Then
            QResvUpdTAXNO.Asstring    := Dm01.MaxNo(HF,LF,LV,SQLTXT,DV);
         //ELSE
            //QResvUpdTAXNO.Asstring    := Dm01.RunNo01(HF,LF,LV,DV);
      end
      Else
      begin
        If Copy(QResvUpdTAXNO.Asstring,1,3) = Dm01.ChkDupRun(HF,LF,LV) Then
           Raise Exception.create('หมวดเอกสารซ้ำกับเลข Run');
      end;
      //Edit1.Text := QResvUpdTAXNO.Asstring ;

      {ออกใบกำกับ เงินจอง}
      WITH QTAXTRAN DO
      begin
         close;
         sql.clear;
         sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
         params[0].asstring := '';
         open;
         Insert;
      end;
      QTaxtranLocat.Asstring   := QResvUpdLocat.Asstring;
      QTaxtranTaxno.Asstring   := QResvUpdTaxno.Asstring;
      QTaxtranTaxdt.AsDateTime := QResvUpdTaxdt.AsDatetime;
      QTaxtranTsale.Asstring   := 'R';
      QTaxtranContno.Asstring  := QResvUpdResvno.Asstring;
      QTaxtranCuscod.Asstring  := QResvUpdCuscod.Asstring;
      QTaxtranDescp.Asstring  := 'ใบกำกับเงินจอง';
      QTaxtranSnam.Asstring   := Query1.FieldByName('Snam').Asstring;
      QTaxtranName1.Asstring  := Query1.FieldByName('Name1').Asstring;
      QTaxtranName2.Asstring  := Query1.FieldByName('Name2').Asstring;
      QTaxtranStrno.Asstring  := QResvUpdStrno.Asstring;
      QTaxtranVatrt.AsFloat   := QResvUpdVatrt.Asfloat;
      QTaxtranNetamt.Asfloat  := D;
      QTaxtranVatamt.Asfloat  := QResvUpdResPay.Asfloat-D;
      QTaxtranTotamt.Asfloat  := QResvUpdResPay.Asfloat;
      QTaxtranTaxtyp.Asstring := 'R';
      QTaxtranTaxFlg.Asstring := 'N';
      QTaxtranInpDt.AsDateTime := Now;
      QTaxtran.Post;
      QResvUpd.Post ;
   end;
end;

end.
