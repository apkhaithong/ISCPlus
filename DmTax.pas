unit Dmtax;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDm_Tax = class(TDataModule)
    SoTaxtran: TDataSource;
    QTaxtran: TFDQuery;
    SoLastNo: TDataSource;
    QLastNo: TFDQuery;
    Query2: TFDQuery;
    QArpay: TFDQuery;
    Query1: TFDQuery;
    QTaxtranLOCAT: TStringField;
    QTaxtranTAXNO: TStringField;
    QTaxtranTAXDT: TDateField;
    QTaxtranTSALE: TStringField;
    QTaxtranCONTNO: TStringField;
    QTaxtranCUSCOD: TStringField;
    QTaxtranSNAM: TStringField;
    QTaxtranNAME1: TStringField;
    QTaxtranNAME2: TStringField;
    QTaxtranSTRNO: TStringField;
    QTaxtranREFNO: TStringField;
    QTaxtranREFDT: TDateField;
    QTaxtranVATRT: TFloatField;
    QTaxtranNETAMT: TFloatField;
    QTaxtranVATAMT: TFloatField;
    QTaxtranTOTAMT: TFloatField;
    QTaxtranDESCP: TStringField;
    QTaxtranFPAR: TStringField;
    QTaxtranFPAY: TFloatField;
    QTaxtranLPAR: TStringField;
    QTaxtranLPAY: TFloatField;
    QTaxtranINPDT: TDateField;
    QTaxtranFLAG: TStringField;
    QTaxtranCANDT: TDateField;
    QTaxtranTAXTYP: TStringField;
    QTaxtranTAXFLG: TStringField;
    QTaxtranUSERID: TStringField;
    QTaxtranFLCANCL: TStringField;
    QTaxtranTMBILL: TStringField;
    QArmast1: TFDQuery;
    QChqtran: TFDQuery;
    QCanTxtrn: TFDQuery;
    SoCanTxTrn: TDataSource;
    QArStopV: TFDQuery;
    SoQArStopV: TDataSource;
    SoCredSal: TDataSource;
    QCredSal: TFDQuery;
    QCredSalLOCAT: TStringField;
    QCredSalTAXNO: TStringField;
    QCredSalTAXDT: TDateField;
    QCredSalTSALE: TStringField;
    QCredSalCONTNO: TStringField;
    QCredSalCUSCOD: TStringField;
    QCredSalSNAM: TStringField;
    QCredSalNAME1: TStringField;
    QCredSalNAME2: TStringField;
    QCredSalSTRNO: TStringField;
    QCredSalREFNO: TStringField;
    QCredSalREFDT: TDateField;
    QCredSalVATRT: TFloatField;
    QCredSalNETAMT: TFloatField;
    QCredSalVATAMT: TFloatField;
    QCredSalTOTAMT: TFloatField;
    QCredSalDESCP: TStringField;
    QCredSalFPAR: TStringField;
    QCredSalFPAY: TFloatField;
    QCredSalLPAR: TStringField;
    QCredSalLPAY: TFloatField;
    QCredSalINPDT: TDateField;
    QCredSalFLAG: TStringField;
    QCredSalCANDT: TDateField;
    QCredSalTAXTYP: TStringField;
    QCredSalTAXFLG: TStringField;
    QCredSalUSERID: TStringField;
    QCredSalFLCANCL: TStringField;
    QCredSalTMBILL: TStringField;
    SoTaxtrn2: TDataSource;
    QTaxtrn2: TFDQuery;
    QCredSalUpdateStatus: TStringField;
    QDBConfig: TFDQuery;
    QArSaleM: TFDQuery;
    SoArSaleM: TDataSource;
    QCredSalRTNSTK: TStringField;
    QInvtran1: TFDQuery;
    SoInvtran1: TDataSource;
    QCredAgn: TFDQuery;
    SoCredAgn: TDataSource;
    QCredAgnLOCAT: TStringField;
    QCredAgnTAXNO: TStringField;
    QCredAgnTAXDT: TDateField;
    QCredAgnTSALE: TStringField;
    QCredAgnCONTNO: TStringField;
    QCredAgnCUSCOD: TStringField;
    QCredAgnSNAM: TStringField;
    QCredAgnNAME1: TStringField;
    QCredAgnNAME2: TStringField;
    QCredAgnSTRNO: TStringField;
    QCredAgnREFNO: TStringField;
    QCredAgnREFDT: TDateField;
    QCredAgnVATRT: TFloatField;
    QCredAgnNETAMT: TFloatField;
    QCredAgnVATAMT: TFloatField;
    QCredAgnTOTAMT: TFloatField;
    QCredAgnDESCP: TStringField;
    QCredAgnFPAR: TStringField;
    QCredAgnFPAY: TFloatField;
    QCredAgnLPAR: TStringField;
    QCredAgnLPAY: TFloatField;
    QCredAgnINPDT: TDateField;
    QCredAgnFLAG: TStringField;
    QCredAgnCANDT: TDateField;
    QCredAgnTAXTYP: TStringField;
    QCredAgnTAXFLG: TStringField;
    QCredAgnUSERID: TStringField;
    QCredAgnFLCANCL: TStringField;
    QCredAgnTMBILL: TStringField;
    QCredAgnRTNSTK: TStringField;
    QCredAgnUpdateStatus: TStringField;
    QAr_trans: TFDQuery;
    SoAr_Trans: TDataSource;
    QCredSal2: TFDQuery;
    SoCredSal2: TDataSource;
    QCredSal2LOCAT: TStringField;
    QCredSal2TAXNO: TStringField;
    QCredSal2TAXDT: TDateField;
    QCredSal2TSALE: TStringField;
    QCredSal2CONTNO: TStringField;
    QCredSal2CUSCOD: TStringField;
    QCredSal2SNAM: TStringField;
    QCredSal2NAME1: TStringField;
    QCredSal2NAME2: TStringField;
    QCredSal2STRNO: TStringField;
    QCredSal2REFNO: TStringField;
    QCredSal2REFDT: TDateField;
    QCredSal2VATRT: TFloatField;
    QCredSal2NETAMT: TFloatField;
    QCredSal2VATAMT: TFloatField;
    QCredSal2TOTAMT: TFloatField;
    QCredSal2DESCP: TStringField;
    QCredSal2FPAR: TStringField;
    QCredSal2FPAY: TFloatField;
    QCredSal2LPAR: TStringField;
    QCredSal2LPAY: TFloatField;
    QCredSal2INPDT: TDateField;
    QCredSal2FLAG: TStringField;
    QCredSal2CANDT: TDateField;
    QCredSal2TAXTYP: TStringField;
    QCredSal2TAXFLG: TStringField;
    QCredSal2USERID: TStringField;
    QCredSal2FLCANCL: TStringField;
    QCredSal2TMBILL: TStringField;
    QCredSal2RTNSTK: TStringField;
    QCredSal2FINCOD: TStringField;
    QCredSal2UpdateStatus: TStringField;
    SoCredBuy1: TDataSource;
    QCredBuy1: TFDQuery;
    QCrByInvT1: TFDQuery;
    SoCrByInvT1: TDataSource;
    QCredBuy1UpdateStatus: TStringField;
    QTaxBuy2: TFDQuery;
    SoTaxBuy2: TDataSource;
    QCredBuy2: TFDQuery;
    SoCredBuy2: TDataSource;
    QCredBuy2UpdateStatus: TStringField;
    QCrByInvT2: TFDQuery;
    SoCrByInvT2: TDataSource;
    QCanArpay: TFDQuery;
    QArresv: TFDQuery;
    QCredSalFINCOD: TStringField;
    QCredSalPAYFOR: TStringField;
    QCredSalRESONCD: TStringField;
    QCredAgnFINCOD: TStringField;
    QCredAgnPAYFOR: TStringField;
    QCredAgnRESONCD: TStringField;
    QCredSal2PAYFOR: TStringField;
    QCredSal2RESONCD: TStringField;
    QCanChqtr: TFDQuery;
    QTaxtranRTNSTK: TStringField;
    QTaxtranFINCOD: TStringField;
    QTaxtranPAYFOR: TStringField;
    QTaxtranRESONCD: TStringField;
    QArinopt: TFDQuery;
    SoArinopt: TDataSource;
    QOptMast: TFDQuery;
    SoOptmast: TDataSource;
    QCredBuy1TAXNO: TStringField;
    QCredBuy1TAXDATE: TDateField;
    QCredBuy1TAXREFNO: TStringField;
    QCredBuy1DESC1: TStringField;
    QCredBuy1CUSCOD: TStringField;
    QCredBuy1VATRT: TFloatField;
    QCredBuy1AMOUNT: TFloatField;
    QCredBuy1REDU: TFloatField;
    QCredBuy1BALANCE: TFloatField;
    QCredBuy1VAT: TFloatField;
    QCredBuy1TOTTAX: TFloatField;
    QCredBuy1FLAG: TStringField;
    QCredBuy1CANCEL: TStringField;
    QCredBuy1USERID: TStringField;
    QCredBuy1TIME1: TDateTimeField;
    QCredBuy1CANCELID: TStringField;
    QCredBuy1CANDAT: TDateTimeField;
    QCredBuy1POSTGLDT: TDateTimeField;
    QCredBuy1LOCAT: TStringField;
    QCredBuy1RECVDT: TDateField;
    QCredBuy1YEAR1: TStringField;
    QCredBuy1TAXTYP: TStringField;
    QCredBuy2TAXNO: TStringField;
    QCredBuy2TAXDATE: TDateField;
    QCredBuy2TAXREFNO: TStringField;
    QCredBuy2DESC1: TStringField;
    QCredBuy2CUSCOD: TStringField;
    QCredBuy2VATRT: TFloatField;
    QCredBuy2AMOUNT: TFloatField;
    QCredBuy2REDU: TFloatField;
    QCredBuy2BALANCE: TFloatField;
    QCredBuy2VAT: TFloatField;
    QCredBuy2TOTTAX: TFloatField;
    QCredBuy2FLAG: TStringField;
    QCredBuy2CANCEL: TStringField;
    QCredBuy2USERID: TStringField;
    QCredBuy2TIME1: TDateTimeField;
    QCredBuy2CANCELID: TStringField;
    QCredBuy2CANDAT: TDateTimeField;
    QCredBuy2POSTGLDT: TDateTimeField;
    QCredBuy2LOCAT: TStringField;
    QCredBuy2RECVDT: TDateField;
    QCredBuy2YEAR1: TStringField;
    QCredBuy2TAXTYP: TStringField;
    QCredBuy1STRNO: TStringField;
    QCredBuy2STRNO: TStringField;
    qCredResv: TFDQuery;
    qCredResvUpdateStatus: TStringField;
    qCredResvLOCAT: TStringField;
    qCredResvTAXNO: TStringField;
    qCredResvTAXDT: TDateField;
    qCredResvTSALE: TStringField;
    qCredResvCONTNO: TStringField;
    qCredResvCUSCOD: TStringField;
    qCredResvSNAM: TStringField;
    qCredResvNAME1: TStringField;
    qCredResvNAME2: TStringField;
    qCredResvSTRNO: TStringField;
    qCredResvREFNO: TStringField;
    qCredResvREFDT: TDateField;
    qCredResvVATRT: TFloatField;
    qCredResvNETAMT: TFloatField;
    qCredResvVATAMT: TFloatField;
    qCredResvTOTAMT: TFloatField;
    qCredResvDESCP: TStringField;
    qCredResvFPAR: TStringField;
    qCredResvFPAY: TFloatField;
    qCredResvLPAR: TStringField;
    qCredResvLPAY: TFloatField;
    qCredResvINPDT: TDateField;
    qCredResvFLAG: TStringField;
    qCredResvCANDT: TDateField;
    qCredResvTAXTYP: TStringField;
    qCredResvTAXFLG: TStringField;
    qCredResvUSERID: TStringField;
    qCredResvFLCANCL: TStringField;
    qCredResvTMBILL: TStringField;
    qCredResvRTNSTK: TStringField;
    qCredResvFINCOD: TStringField;
    qCredResvDOSTAX: TStringField;
    qCredResvPAYFOR: TStringField;
    qCredResvRESONCD: TStringField;
    SoCredResv: TDataSource;
    procedure QCredSalNewRecord(DataSet: TDataSet);
    procedure QCredSalCalcFields(DataSet: TDataSet);
    procedure QCredSalBeforePost(DataSet: TDataSet);
    procedure QCredSalAfterPost(DataSet: TDataSet);
    procedure QCredSalTAXDTValidate(Sender: TField);
    procedure QCredSalLOCATValidate(Sender: TField);
    procedure QCredSalNETAMTValidate(Sender: TField);
    procedure QCredSalAfterCancel(DataSet: TDataSet);
    procedure QCredSalTAXTYPValidate(Sender: TField);
    procedure QCredSalSTRNOValidate(Sender: TField);
    procedure QCredAgnNewRecord(DataSet: TDataSet);
    procedure QCredAgnCalcFields(DataSet: TDataSet);
    procedure QCredAgnLOCATValidate(Sender: TField);
    procedure QCredAgnTAXDTValidate(Sender: TField);
    procedure QCredAgnSTRNOValidate(Sender: TField);
    procedure QCredAgnNETAMTValidate(Sender: TField);
    procedure QCredAgnTAXTYPValidate(Sender: TField);
    procedure QCredAgnBeforePost(DataSet: TDataSet);
    procedure QCredAgnAfterPost(DataSet: TDataSet);
    procedure QCredAgnAfterCancel(DataSet: TDataSet);
    procedure QCredSal2NewRecord(DataSet: TDataSet);
    procedure QCredSal2CalcFields(DataSet: TDataSet);
    procedure QCredSal2LOCATValidate(Sender: TField);
    procedure QCredSal2TAXDTValidate(Sender: TField);
    procedure QCredSal2NETAMTValidate(Sender: TField);
    procedure QCredSal2BeforePost(DataSet: TDataSet);
    procedure QCredSal2AfterCancel(DataSet: TDataSet);
    procedure QCredSal2AfterPost(DataSet: TDataSet);
    procedure QCredBuy1NewRecord(DataSet: TDataSet);
    procedure QCredBuy1CalcFields(DataSet: TDataSet);
    procedure QCredBuy1BeforePost(DataSet: TDataSet);
    procedure QCredBuy1AfterPost(DataSet: TDataSet);
    procedure QCredBuy1AfterCancel(DataSet: TDataSet);
    procedure QCredBuy1LOCATValidate(Sender: TField);
    procedure QCredBuy1STRNOValidate(Sender: TField);
    procedure QCredBuy1TAXTYPValidate(Sender: TField);
    procedure QCredBuy2NewRecord(DataSet: TDataSet);
    procedure QCredBuy2CalcFields(DataSet: TDataSet);
    procedure QCredBuy2BeforePost(DataSet: TDataSet);
    procedure QCredBuy2AfterPost(DataSet: TDataSet);
    procedure QCredBuy2AfterCancel(DataSet: TDataSet);
    procedure QCredBuy2LOCATValidate(Sender: TField);
    procedure QCredBuy2TAXTYPValidate(Sender: TField);
    procedure QCanTxtrnAfterPost(DataSet: TDataSet);
    procedure QTaxtranAfterPost(DataSet: TDataSet);
    procedure QCredSal2TAXNOValidate(Sender: TField);
    procedure QCredSalTAXNOValidate(Sender: TField);
    procedure QCredAgnTAXNOValidate(Sender: TField);
    procedure QCredBuy1TAXNOValidate(Sender: TField);
    procedure QCredBuy2TAXNOValidate(Sender: TField);
    procedure QCredBuy1TAXDATEValidate(Sender: TField);
    procedure QCredBuy1BALANCEValidate(Sender: TField);
    procedure QCredBuy2TAXDATEValidate(Sender: TField);
    procedure QCredBuy2BALANCEValidate(Sender: TField);
    procedure qCredResvNewRecord(DataSet: TDataSet);
    procedure qCredResvCalcFields(DataSet: TDataSet);
    procedure qCredResvBeforePost(DataSet: TDataSet);
    procedure qCredResvAfterPost(DataSet: TDataSet);
    procedure qCredResvAfterCancel(DataSet: TDataSet);
    procedure qCredResvLOCATValidate(Sender: TField);
    procedure qCredResvTAXDTValidate(Sender: TField);
    procedure qCredResvREFNOValidate(Sender: TField);
    procedure qCredResvCUSCODChange(Sender: TField);
    procedure QCredSalUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QCredAgnUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QCredSal2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure qCredResvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QCredBuy1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QCredBuy2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpTaxno;
    procedure UpBefTax;
    procedure UpBefTax2;
    function RunNo02(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
  end;

var
  Dm_Tax: TDm_Tax;
  Duplicate: Boolean;
  XFpar, XLpar: string;

implementation

uses
  Dmsec, Dm1, DueFrm10, Functn01, USoftFirm;

{$R *.DFM}
procedure TDm_Tax.UpTaxNo;
var
  HF, LF, LV, KV: string;
  DV: TdateTime;
begin
  HF := 'H_TXPAY';
  LF := 'L_TXPAY';
  LV := Qarpay.FieldByName('locat').Asstring;
  DV := Qarpay.FieldByName('Ddate').AsDateTime;
  KV := QArPay.FieldByName('TaxInv').Asstring;

  if (Qarpay.FieldByName('Damt').AsFloat - Qarpay.FieldByName('Taxpay').AsFloat > 0) and
    (Qarpay.FieldByName('V_Damt').AsFloat > 0) then
  begin
    with QArmast1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT A.LOCAT AS LOCAT,A.CONTNO AS CONTNO,' +
        'A.CUSCOD AS CUSCOD,A.STRNO AS STRNO,B.SNAM AS SNAM,' +
        'B.NAME1 AS NAME1,B.NAME2 AS NAME2 FROM ARMAST A,CUSTMAST B ' +
        'WHERE A.CONTNO =:V0 AND A.LOCAT=:V1 AND A.CUSCOD=B.CUSCOD ');
      Params[0].Asstring := QArPay.FieldByName('CONTNO').Asstring;
      Params[1].Asstring := QArPay.FieldByName('LOCAT').Asstring;
      Open;
    end;

    if QArPay.FieldByName('Taxamt').Asfloat > 0 then
      XFpar := '*'
    else
      XFpar := '';
    XLpar := '';

    QArPay.Edit;
    QArPay.FieldByName('TaxInv').Asstring := RunNo02(HF, LF, LV, DV);
    QArPay.FieldByName('Taxdt').Asdatetime := Qarpay.FieldByName('Ddate').AsdateTime;

    with QTaxtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM TAXTRAN WHERE TAXNO =:EDIT1 ');
      Params[0].Asstring := '';
      Open;
      INSERT;
    end;

    QTaxtranLocat.Asstring := Qarpay.Fieldbyname('locat').Asstring;
    QTaxtranTaxno.Asstring := QArPay.Fieldbyname('TaxInv').Asstring;
    QTaxtranTaxdt.AsDateTime := QArPay.Fieldbyname('Taxdt').Asdatetime;
    QTaxtranTsale.Asstring := 'H';
    QTaxtranCONTNO.Asstring := QArmast1.Fieldbyname('CONTNO').Asstring;
    QTaxtranCuscod.Asstring := QArmast1.Fieldbyname('Cuscod').Asstring;
    QTaxtranSnam.Asstring := QArmast1.Fieldbyname('Snam').Asstring;
    QTaxtranName1.Asstring := QArmast1.Fieldbyname('Name1').Asstring;
    QTaxtranName2.Asstring := QArmast1.Fieldbyname('Name2').Asstring;
    QTaxtranStrno.Asstring := QArmast1.Fieldbyname('Strno').Asstring;
    QTaxtranFpar.Asstring := XFpar;
    QTaxtranFpay.AsFloat := QArPay.Fieldbyname('nopay').Asfloat;
    QTaxtranLpay.AsFloat := QArPay.Fieldbyname('nopay').Asfloat;
    QTaxtranLpar.Asstring := '';
    QTaxtranVatrt.AsFloat := QArPay.Fieldbyname('Vatrt').AsFloat;
    QTaxtranVatamt.Asfloat := Qarpay.Fieldbyname('V_Damt').AsFloat - Qarpay.Fieldbyname('Taxamt').AsFloat;
    QTaxtranTotamt.Asfloat := Qarpay.Fieldbyname('Damt').AsFloat - Qarpay.Fieldbyname('Taxpay').AsFloat;
    QTaxtranNetamt.Asfloat := QTaxtranTotamt.Asfloat - QTaxtranVatamt.Asfloat;
    QTaxtranDescp.Asstring := 'ค่างวด';
   { If FTaxdue1.CheckBox1.Checked Then
     QTaxtranTaxFlg.Asstring := 'A'  //ยื่นเพิ่มเติม
    Else    }
    QTaxtranTaxFlg.Asstring := 'N'; //ยื่นปกติ
    QTaxtranTaxtyp.Asstring := 'D'; //ค่างวดตามดิว
    QTaxtranInpDt.AsDateTime := Now;
    QTaxtranUserid.Asstring := SFMain.Xuser_id;

    QArPay.FieldByName('Taxamt').Asfloat := QArpay.FieldByName('V_Damt').Asfloat;
    QArPay.FieldByName('Taxpay').Asfloat := QArpay.FieldByName('Damt').Asfloat;
    QArPay.Post;

    QTaxtran.Post;
  end;
end;

procedure TDm_Tax.UpBefTax;
var
  HF, LF, LV, KV: string;
  DV: TdateTime;
begin
  with QArmast1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT A.LOCAT AS LOCAT,A.CONTNO AS CONTNO,' +
      'A.CUSCOD AS CUSCOD,A.STRNO AS STRNO,B.SNAM AS SNAM,' +
      'B.NAME1 AS NAME1,B.NAME2 AS NAME2 FROM ARMAST A,CUSTMAST B ' +
      'WHERE A.CONTNO =:V0 AND A.LOCAT=:V1 AND A.CUSCOD=B.CUSCOD ');
    Params[0].Asstring := QArPay.FieldByName('CONTNO').Asstring;
    Params[1].Asstring := QArPay.FieldByName('LOCAT').Asstring;
    Open;
  end;

  HF := 'H_TXPAY';
  LF := 'L_TXPAY';
  LV := Qarpay.FieldByName('locat').Asstring;
  DV := QChqtran.FieldByName('Paydt').AsDateTime;
  KV := QArPay.FieldByName('TaxInv').Asstring;

  if (QArpay.FieldByName('DDATE').AsDateTime > DV) and
    (QArpay.FieldByName('DAMT').AsFloat > QArpay.FieldByName('Taxpay').AsFloat) and
    (Qarpay.FieldByName('V_Damt').AsFloat > 0) then
  begin
    if Dm_tax.QArpay.FieldByName('Taxamt').Asfloat > 0 then
      XFpar := '*'
    else
      XFpar := '';
    QArPay.Edit;
    QArPay.FieldByName('TaxInv').Asstring := RunNo02(HF, LF, LV, DV);
    QArPay.FieldByName('Taxdt').Asdatetime := DV;
    QArPay.FieldByName('Taxamt').Asfloat := Dm_tax.QArpay.FieldByName('Taxamt').Asfloat; //+FTaxBef1.XTaxamt;
    QArPay.FieldByName('Taxpay').Asfloat := Dm_tax.QArpay.FieldByName('Taxpay').Asfloat; //+FTaxBef1.Xpaytax;

    if Dm_tax.QArpay.FieldByName('Taxpay').Asfloat < Dm_tax.QArpay.FieldByName('Damt').Asfloat then
      XLpar := '*'
    else
      XLpar := '';
    QArPay.Post;

    with QTaxtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM TAXTRAN WHERE TAXNO =:EDIT1 ');
      Params[0].Asstring := '';
      Open;
      INSERT;
    end;

    QTaxtranLocat.Asstring := Qarpay.Fieldbyname('locat').Asstring;
    QTaxtranTaxno.Asstring := QArPay.Fieldbyname('TaxInv').Asstring;
    QTaxtranTaxdt.AsDateTime := QArPay.Fieldbyname('Taxdt').Asdatetime;
    QTaxtranTsale.Asstring := 'H';
    QTaxtranCONTNO.Asstring := QArmast1.Fieldbyname('CONTNO').Asstring;
    QTaxtranCuscod.Asstring := QArmast1.Fieldbyname('Cuscod').Asstring;
    QTaxtranSnam.Asstring := QArmast1.Fieldbyname('Snam').Asstring;
    QTaxtranName1.Asstring := QArmast1.Fieldbyname('Name1').Asstring;
    QTaxtranName2.Asstring := QArmast1.Fieldbyname('Name2').Asstring;
    QTaxtranStrno.Asstring := QArmast1.Fieldbyname('Strno').Asstring;
    QTaxtranFpar.Asstring := XFpar;
    QTaxtranFpay.AsFloat := QArPay.Fieldbyname('nopay').Asfloat;
    QTaxtranLpay.AsFloat := QArPay.Fieldbyname('nopay').Asfloat;
    QTaxtranLpar.Asstring := XLpar;
    QTaxtranVatrt.AsFloat := QArPay.Fieldbyname('Vatrt').AsFloat;
    QTaxtranNetamt.Asfloat := 0; //FTaxBef1.XPaytax-FTaxBef1.XTaxamt;
    QTaxtranVatamt.Asfloat := 0; //FTaxBef1.XTaxamt;
    QTaxtranTotamt.Asfloat := 0; //FTaxBef1.XPaytax;
    QTaxtranDescp.Asstring := 'ค่างวด';
    QTaxtranTmbill.Asstring := QChqtran.Fieldbyname('Tmbill').Asstring;
     //If FTaxBef1.CheckBox1.Checked Then
        //QTaxtranTaxFlg.Asstring := 'A'  //ยื่นเพิ่มเติม
     //Else
    QTaxtranTaxFlg.Asstring := 'N'; //ยื่นปกติ
    QTaxtranTaxtyp.Asstring := 'B'; //ค่างวดตามดิว
    QTaxtranInpDt.AsDateTime := Now;
    QTaxtranUserid.Asstring := SFMain.Xuser_id;

    Dm_tax.QChqtran.FieldByName('Taxno').asstring := QTaxtranTaxno.Asstring;
    QTaxtran.Post;
  end;
end;

procedure TDm_Tax.UpBefTax2;
var
  HF, LF, LV, KV: string;
  DV: TdateTime;
  XVatamt, XTotamt, XFpay: Double;
begin
  with QArmast1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT A.LOCAT AS LOCAT,A.CONTNO AS CONTNO,' +
      'A.CUSCOD AS CUSCOD,A.STRNO AS STRNO,B.SNAM AS SNAM,' +
      'B.NAME1 AS NAME1,B.NAME2 AS NAME2 FROM ARMAST A,CUSTMAST B ' +
      'WHERE A.CONTNO =:V0 AND A.LOCAT=:V1 AND A.CUSCOD=B.CUSCOD ');
    Params[0].Asstring := QArPay.FieldByName('CONTNO').Asstring;
    Params[1].Asstring := QArPay.FieldByName('LOCAT').Asstring;
    Open;
  end;

  HF := 'H_TXPAY';
  LF := 'L_TXPAY';
  LV := Qarpay.FieldByName('locat').Asstring;
  DV := QChqtran.FieldByName('Paydt').AsDateTime;
  KV := RunNo02(HF, LF, LV, DV); //QArPay.FieldByName('TaxInv').Asstring;


  XFpay := 0;
  if Dm_tax.QArpay.FieldByName('Taxamt').Asfloat > 0 then
  begin
    if (Dm_tax.QArpay.FieldByName('Taxamt').Asfloat = Dm_tax.QArpay.FieldByName('V_damt').Asfloat) then
      XFpar := ''
    else
    begin
      XFpar := '*';
      XFpay := Dm_tax.QArpay.FieldByName('Nopay').AsFloat;
    end;
  end
  else
    XFpar := '';

  XLpar := '';
  XTotamt := 0;
  XVatamt := 0;

  while not QArpay.Eof do
  begin
    if QChqtran.FieldByName('Paydt').AsDateTime <= Dm_tax.QArpay.FieldByName('DDate').AsDatetime then
    begin
      if (QArpay.FieldByName('DAMT').AsFloat > QArpay.FieldByName('Taxpay').AsFloat) and
        (Qarpay.FieldByName('V_Damt').AsFloat > 0) then
      begin
        if XFpay = 0 then
          XFpay := Dm_tax.QArpay.FieldByName('Nopay').AsFloat;
        XTotamt := XTotamt + (Dm_tax.QArpay.FieldByName('Damt').Asfloat -
          Dm_tax.QArpay.FieldByName('Taxpay').Asfloat);
        XVatamt := XVatamt + (Dm_tax.QArpay.FieldByName('V_Damt').Asfloat -
          Dm_tax.QArpay.FieldByName('Taxamt').Asfloat);

        QArPay.Edit;
        QArPay.FieldByName('TaxInv').Asstring := KV; //RunNo02(HF,LF,LV,DV);
        QArPay.FieldByName('Taxdt').Asdatetime := DV;
        QArPay.FieldByName('Taxamt').Asfloat := Dm_tax.QArpay.FieldByName('V_Damt').Asfloat;
        QArPay.FieldByName('Taxpay').Asfloat := Dm_tax.QArpay.FieldByName('Damt').Asfloat;
      end;
    end;
    QArPay.Next;
  end;

  if XVatamt > 0 then
  begin
    with QTaxtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM TAXTRAN WHERE TAXNO =:EDIT1 ');
      Params[0].Asstring := '';
      Open;
      INSERT;
    end;

    QTaxtranLocat.Asstring := Qarpay.Fieldbyname('locat').Asstring;
    QTaxtranTaxno.Asstring := QArPay.Fieldbyname('TaxInv').Asstring;
    QTaxtranTaxdt.AsDateTime := QArPay.Fieldbyname('Taxdt').Asdatetime;
    QTaxtranTsale.Asstring := 'H';
    QTaxtranCONTNO.Asstring := QArmast1.Fieldbyname('CONTNO').Asstring;
    QTaxtranCuscod.Asstring := QArmast1.Fieldbyname('Cuscod').Asstring;
    QTaxtranSnam.Asstring := QArmast1.Fieldbyname('Snam').Asstring;
    QTaxtranName1.Asstring := QArmast1.Fieldbyname('Name1').Asstring;
    QTaxtranName2.Asstring := QArmast1.Fieldbyname('Name2').Asstring;
    QTaxtranStrno.Asstring := QArmast1.Fieldbyname('Strno').Asstring;
    QTaxtranFpar.Asstring := XFpar;
    QTaxtranFpay.AsFloat := XFpay;
    QTaxtranLpay.AsFloat := QArPay.Fieldbyname('nopay').Asfloat;
    QTaxtranLpar.Asstring := XLpar;
    QTaxtranVatrt.AsFloat := QArPay.Fieldbyname('Vatrt').AsFloat;
    QTaxtranNetamt.Asfloat := XTotamt - XVatamt;
    QTaxtranVatamt.Asfloat := XVatamt;
    QTaxtranTotamt.Asfloat := XTotamt;
    QTaxtranDescp.Asstring := 'รับชำระค่างวด';
    QTaxtranTmbill.Asstring := QChqtran.Fieldbyname('Tmbill').Asstring;
     //If FTaxBef1.CheckBox1.Checked Then
        //QTaxtranTaxFlg.Asstring := 'A'  //ยื่นเพิ่มเติม
     //Else
    QTaxtranTaxFlg.Asstring := 'N'; //ยื่นปกติ
    QTaxtranTaxtyp.Asstring := 'B'; //ค่างวดตามดิว
    QTaxtranInpDt.AsDateTime := Now;
    QTaxtranUserid.Asstring := SFMain.Xuser_id;

    Dm_tax.QChqtran.FieldByName('Taxno').asstring := QTaxtranTaxno.Asstring;

    QTaxtran.Post;

     //Dm_sec.HI_DBMS.ApplyUpdateS([Dm_Tax.QLastno,Dm_Tax.QArpay]);
  end;
end;

function TDm_Tax.RunNo02(HField, LField, Lvalue: string; Dvalue: TdateTime): string;
var
  PF, HH, Lc, YY, Mm, S2, S3, Y1: string;
  LN, V1: Double;
begin
    //RunNo02('H_TXPAY','L_TXPAY',Qarpay.FieldByName('locat').Asstring,DV=QChqtran.FieldByName('Tmbildt').AsDateTime)
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if not Dm01.QCondPay.Active then
    Dm01.QCondPay.Open;
  HH := Dm01.QCondPay.Fieldbyname(HField).Asstring;
  Lc := Lvalue;    //arpay.Locat
  YY := Copy(DateTostr(Dvalue), 7, 4); //chqtran.Tmbildt
  Y1 := Copy(YY, 3, 2);
  Mm := Copy(DateTostr(Dvalue), 4, 2);

    {}
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT SHORTL FROM INVLOCAT WHERE LOCATCD=:LOCAT_A');
    Params[0].Asstring := Lc;
    Open;
    if (Query1.Eof) and (Query1.Bof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา ' + Lc + ' ตรวจสอบ รหัสผ่าน ช่องประจำสาขา ')
    else
      PF := Query1.FieldByname('SHORTL').Asstring;
  end;
    {Query Lastno Table}
  with QLastno do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT LOCAT,CR_YEAR,CR_MONTH,' + LField + ' FROM LASTNO ' +
      'WHERE LOCAT  = :LOCAT_A ' +
      ' AND CR_YEAR = :CRY ' +
      ' AND CR_MONTH= :CRM ');
    Params[0].Asstring := Lc;
    Params[1].Asstring := YY;
    Params[2].Asstring := Mm;
    Open;
    if (QLASTNO.Eof) and (QLASTNO.Bof) then
    begin
      QLastNo.Insert;
      QLastNo.Fieldbyname('Locat').Asstring := Lc;
      QLastNo.Fieldbyname('Cr_year').Asstring := YY;
      QLastNo.Fieldbyname('Cr_Month').Asstring := Mm;
      QLastNo.Post;
    end;
    LN := QLastNo.FieldByname(LField).AsFloat;
    V1 := LN + 1;
    S2 := FloatTostr(V1);
    S3 := Dm01.ZeroLead(S2, 4);
    Result := PF + HH + '-' + Y1 + Mm + S3;
      {Update Lastno}
    if V1 > QLastNo.Fieldbyname(LField).AsFloat then
    begin
      QLastNo.Edit;
      QLastNo.Fieldbyname(LField).AsFloat := V1;
      QLastNo.Post;
    end;
  end;
end;

procedure TDm_Tax.QCredSalNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(DataSet);
  Duplicate := False;
  if QCredSal.Active then
  begin
    ClearAsFloat(DataSet);
    QCredSal.Fieldbyname('DESCP').Asstring := 'ใบลดหนี้ขายรถทั้งคัน';
    QCredSal.Fieldbyname('TAXTYP').Asstring := '6';
    QCredSal.Fieldbyname('TAXFLG').Asstring := 'N';
    QCredSal.Fieldbyname('RtnStk').Asstring := 'Y';
    QCredSal.Fieldbyname('LOCAT').Asstring := SFMain.Xlocat;
    QCredSal.Fieldbyname('TAXDT').AsDateTime := Date;
  end;
end;

procedure TDm_Tax.QCredSalCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QCredSal.CachedUpdates then
    QCredSalUpdateStatus.Value := UpdateStatusStr[QCredSal.UpdateStatus];
end;

procedure TDm_Tax.QCredSalBeforePost(DataSet: TDataSet);
begin
  ClearAsString(DataSet);
  if (QCredSalUpdateStatus.Value = 'Inserted') then
    if Duplicate then
      QCredSalTaxdtValidate(QCredSalTaxdt);

  if QCredSalRefno.Value = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบกำกับที่อ้างถึง');

  if QCredSalTotamt.value = 0 then
    SFMain.RaiseException('ยังไม่บันทึกยอดเงินที่ลดหนี้');

  if QArSaleM.FieldByName('TOTPRC').AsFloat <= 0 then
    SFMain.RaiseException('รายการนี้ยอดขายเป็นศูนย์ออกใบลดหนี้ไม่ได้');

  if QCredSalTAXno.Value = '' then
  begin
    MessageBeep(0);
    if MessageDlg('ไม่มีข้อมูลที่จะบันทึก ยกเลิกการจัดเก็บ', mtError, [mbok], 0) = MrOk then
      QCredSal.Cancel;
  end;

  if (QCredSalUpdateStatus.Value = 'Inserted') then
  begin
    if QArSaleM.FieldByName('Resvno').Asstring <> '' then
    begin
      with QArresv do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT RESVNO,SDATE FROM ARRESV WHERE RESVNO=:0');
        Params[0].Asstring := QArSaleM.FieldByName('RESVNO').Asstring;
        Open;
        Edit;
        FieldByName('Sdate').Asstring := '';
        Post;
      end;
    end;

    QArSaleM.Edit;
    QArSaleM.FieldByName('NPRICE').AsFloat := QArSaleM.FieldByName('NPRICE').AsFloat - QCredSalNETAmt.AsFloat;
    QArSaleM.FieldByName('VATPRC').AsFloat := QArSaleM.FieldByName('VATPRC').AsFloat - QCredSalVATAmt.AsFloat;
    QArSaleM.FieldByName('TOTPRC').AsFloat := QArSaleM.FieldByName('TOTPRC').AsFloat - QCredSalTOTAmt.AsFloat;
    QArSaleM.FieldByName('Crdtxno').Asstring := QCredSalTaxno.Asstring;
    QArSaleM.FieldByName('CrdAmt').AsFloat := QCredSalTotAmt.AsFloat;
    QArSaleM.Post;

    QInvtran1.Edit;
    QInvtran1.FieldByname('Sdate').Asstring := '';
    QInvtran1.FieldByname('TSale').Asstring := '';
    QInvtran1.FieldByname('Flag').Asstring := 'D';
    QInvtran1.FieldByname('Contno').Asstring := '';
    QInvtran1.FieldByname('Price').Asfloat := 0;
    QInvtran1.Post;

    QArinopt.First;
    while not Dm_tax.QArinopt.eof do
    begin
      QArinopt.Edit;
      QArinopt.FieldByName('RtnFlag').Asstring := 'R';
      QArinopt.Next;
    end;

    QCredSalUserId.Asstring := SFMain.Xuser_Id;
    QCredSalInpDt.AsDatetime := Now;
  end;
end;

procedure TDm_Tax.QCredSalAfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QCredSal.FieldByName('Taxno').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QArresv.Active then
      if (QArresv.ApplyUpdates = 0) then
        QArresv.CommitUpdates
      else
        raise Exception.Create(QArresv.RowError.Message);
    if QCredSal.Active then
      if (QCredSal.ApplyUpdates = 0) then
        QCredSal.CommitUpdates
      else
        raise Exception.Create(QCredSal.RowError.Message);
    if QArSaleM.Active then
      if (QArSaleM.ApplyUpdates = 0) then
        QArSaleM.CommitUpdates
      else
        raise Exception.Create(QArSaleM.RowError.Message);
    if QInvtran1.Active then
      if (QInvtran1.ApplyUpdates = 0) then
        QInvtran1.CommitUpdates
      else
        raise Exception.Create(QInvtran1.RowError.Message);
    if QArinopt.Active then
      if (QArinopt.ApplyUpdates = 0) then
        QArinopt.CommitUpdates
      else
        raise Exception.Create(QArinopt.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QCredSal.Edit;
    raise;
  end;
end;

procedure TDm_Tax.QCredSalTAXDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if QCredSalUpdateStatus.Value = 'Inserted' then
  begin
    LV := QCredSal.FieldByName('Locat').Asstring;
    DV := QCredSal.FieldByName('Taxdt').Asdatetime;
    HF := 'H_TCSALE';
    LF := 'L_TCSALE';
    if QDbConfig.FieldByName('R_TCSALE').Asstring = 'Y' then
    begin
      QCredSalTAXNO.Asstring := Dm01.RunNo01(HF, LF, LV, DV);
    end;
  end;
end;

procedure TDm_Tax.QCredSalLOCATValidate(Sender: TField);
begin
  if QCredSalTaxdt.Asstring <> '' then
    QCredSalTaxdtValidate(QCredSal.FieldByname('TAXDT'));
end;

procedure TDm_Tax.QCredSalNETAMTValidate(Sender: TField);
var
  E: Double;
begin
  E := FRound(QCredSalNetAmt.Value * QCredSalVatrt.Value / 100, 2);
  QCredSalVatAmt.Asfloat := E;
  QCredSalTotAmt.Asfloat := QCredSalNetAmt.Value + E;
end;

procedure TDm_Tax.QCredSalAfterCancel(DataSet: TDataSet);
begin
  if QCredSal.Active then
    QCredSal.CancelUpdates;
  if QArSaleM.Active then
    QArSaleM.CancelUpdates;
  if QInvtran1.Active then
    QInvtran1.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDm_Tax.QCredSalTAXTYPValidate(Sender: TField);
begin
  if QCredSal.FieldByName('Taxtyp').Asstring <> '6' then
    SFMain.RaiseException('ต้องเป็นใบลดหนี้ประเภท 6 เท่านั้น');
end;

procedure TDm_Tax.QCredSalUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Tax.QCredSalSTRNOValidate(Sender: TField);
begin
  with QInvtran1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT STRNO,SDATE,PRICE,TSALE,CONTNO,' +
      'CURSTAT,FLAG  FROM INVTRAN ' +
      'WHERE STRNO =:V0 ');
    Params[0].Asstring := QCredSalSTRNO.AsString;
    OPEN;
    if Eof and bof then
      SFMain.RaiseException('ไม่มีรถเลขตัวถังนี้ในสต็อก');
  end;
end;

procedure TDm_Tax.QCredAgnNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(DataSet);
  Duplicate := False;
  if QCredAgn.Active then
  begin
    ClearAsFloat(DataSet);
    QCredAgn.FieldByName('LOCAT').AsString := SFMain.Xlocat;
    QCredAgn.FieldByName('TAXDT').AsDateTime := Date;
    QCredAgn.Fieldbyname('DESCP').Asstring := 'ใบลดหนี้ขายรถทั้งคัน';
    QCredAgn.Fieldbyname('TAXTYP').Asstring := '7';
    QCredAgn.Fieldbyname('TAXFLG').Asstring := 'N';
    QCredAgn.Fieldbyname('RtnStk').Asstring := 'Y'
  end;
end;

procedure TDm_Tax.QCredAgnCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QCredAgn.CachedUpdates then
    QCredAgnUpdateStatus.Value := UpdateStatusStr[QCredAgn.UpdateStatus];
end;

procedure TDm_Tax.QCredAgnLOCATValidate(Sender: TField);
begin
  if QCredAgnTaxdt.Asstring <> '' then
    QCredAgnTaxdtValidate(QCredAgn.FieldByname('TAXDT'));
end;

procedure TDm_Tax.QCredAgnTAXDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if QCredAgnUpdateStatus.Value = 'Inserted' then
  begin
    LV := QCredAgn.FieldByName('Locat').Asstring;
    DV := QCredAgn.FieldByName('Taxdt').Asdatetime;
    HF := 'H_TCSALE';
    LF := 'L_TCSALE';
    if QDbConfig.FieldByName('R_TCSALE').Asstring = 'Y' then
    begin
      SQLTXT := 'SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(TAXNO,7,2)=:EDIT4';
      QCredAgnTAXNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV)
    end;
  end;
end;

procedure TDm_Tax.QCredAgnSTRNOValidate(Sender: TField);
begin
  with QInvtran1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT STRNO,SDATE,PRICE,TSALE,CONTNO,' +
      'CURSTAT,FLAG  FROM INVTRAN ' +
      'WHERE STRNO =:V0 ');
    Params[0].Asstring := QCredAgnSTRNO.AsString;
    OPEN;
    if Eof and bof then
      SFMain.RaiseException('ไม่มีรถเลขตัวถังนี้ในสต็อก');
  end;
end;

procedure TDm_Tax.QCredAgnNETAMTValidate(Sender: TField);
var
  E: Double;
begin
  E := FRound(QCredAgnNetAmt.Value * QCredAgnVatrt.Value / 100, 2);
  QCredAgnVatAmt.Asfloat := E;
  QCredAgnTotAmt.Asfloat := QCredAgnNetAmt.Value + E;
end;

procedure TDm_Tax.QCredAgnTAXTYPValidate(Sender: TField);
begin
  if QCredAgn.FieldByName('Taxtyp').Asstring <> '7' then
    SFMain.RaiseException('ต้องเป็นใบลดหนี้ประเภท 7 เท่านั้น');
end;

procedure TDm_Tax.QCredAgnUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Tax.QCredAgnBeforePost(DataSet: TDataSet);
begin
  ClearAsString(DataSet);
  if (QCredAgnUpdateStatus.Value = 'Inserted') then
    if Duplicate then
      QCredAgnTaxdtValidate(QCredAgnTaxdt);

  if QCredAgnRefno.Value = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบกำกับที่อ้างถึง');
  if QCredAgnStrno.Value = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขตัวถังรถ');

  if QCredAgnTotamt.value = 0 then
    SFMain.RaiseException('ยังไม่บันทึกยอดเงินที่ลดหนี้');

  if QArSaleM.FieldByName('TOTPRC').AsFloat <= 0 then
    SFMain.RaiseException('รายการนี้ยอดขายเป็นศูนย์ออกใบลดหนี้ไม่ได้');

  if QCredAgnTAXno.Value = '' then
  begin
    MessageBeep(0);
    if MessageDlg('ไม่มีข้อมูลที่จะบันทึก ยกเลิกการจัดเก็บ', mtError, [mbok], 0) = MrOk then
      QCredAgn.Cancel;
  end;

  if (QCredAgnUpdateStatus.Value = 'Inserted') then
  begin

    QArSaleM.Edit;
    QArSaleM.FieldByName('NPRICE').AsFloat := QArSaleM.FieldByName('NPRICE').AsFloat - QCredAgnNETAmt.AsFloat;
    QArSaleM.FieldByName('VATPRC').AsFloat := QArSaleM.FieldByName('VATPRC').AsFloat - QCredAgnVATAmt.AsFloat;
    QArSaleM.FieldByName('TOTPRC').AsFloat := QArSaleM.FieldByName('TOTPRC').AsFloat - QCredAgnTOTAmt.AsFloat;
    QArSaleM.FieldByName('CrdAmt').AsFloat := QArSaleM.FieldByName('CrdAmt').AsFloat + QCredAgnTotAmt.AsFloat;
    QArSaleM.Post;

    QAr_Trans.Edit;
    QAr_Trans.FieldByName('NPRICE').AsFloat := QAr_Trans.FieldByName('NPRICE').AsFloat - QCredAgnNETAmt.AsFloat;
    QAr_Trans.FieldByName('VATPRC').AsFloat := QAr_Trans.FieldByName('VATPRC').AsFloat - QCredAgnVATAmt.AsFloat;
    QAr_Trans.FieldByName('TOTPRC').AsFloat := QAr_Trans.FieldByName('TOTPRC').AsFloat - QCredAgnTOTAmt.AsFloat;
    QAr_Trans.FieldByName('CrdAmt').AsFloat := QAr_Trans.FieldByName('CrdAmt').AsFloat + QCredAgnTotAmt.AsFloat;
    QAr_Trans.FieldByName('CrdTxno').Asstring := QCredAgn.FieldByName('Taxno').Asstring;
    QAr_Trans.Post;

    QInvtran1.Edit;
    QInvtran1.FieldByname('Sdate').Asstring := '';
    QInvtran1.FieldByname('TSale').Asstring := '';
    QInvtran1.FieldByname('Flag').Asstring := 'D';
    QInvtran1.FieldByname('Contno').Asstring := '';
    QInvtran1.FieldByname('Price').Asfloat := 0;
    QInvtran1.Post;

    QCredAgnUserId.Asstring := SFMain.Xuser_Id;
    QCredAgnInpDt.AsDatetime := Now;
  end;
end;

procedure TDm_Tax.QCredAgnAfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QCredAgn.FieldByName('Taxno').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QCredAgn.Active then
      if (QCredAgn.ApplyUpdates = 0) then
        QCredAgn.CommitUpdates
      else
        raise Exception.Create(QCredAgn.RowError.Message);
    if QArSaleM.Active then
      if (QArSaleM.ApplyUpdates = 0) then
        QArSaleM.CommitUpdates
      else
        raise Exception.Create(QArSaleM.RowError.Message);
    if QAr_trans.Active then
      if (QAr_trans.ApplyUpdates = 0) then
        QAr_trans.CommitUpdates
      else
        raise Exception.Create(QAr_trans.RowError.Message);
    if QInvtran1.Active then
      if (QInvtran1.ApplyUpdates = 0) then
        QInvtran1.CommitUpdates
      else
        raise Exception.Create(QInvtran1.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QCredAgn.Edit;
    raise;
  end;
end;

procedure TDm_Tax.QCredAgnAfterCancel(DataSet: TDataSet);
begin
  if QCredAgn.Active then
    QCredAgn.CancelUpdates;
  if QArSaleM.Active then
    QArSaleM.CancelUpdates;
  if QInvtran1.Active then
    QInvtran1.CancelUpdates;
  if QAr_Trans.Active then
    QAr_Trans.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDm_Tax.QCredSal2NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(DataSet);
  Duplicate := False;
  if QCredSal2.Active then
  begin
    ClearAsFloat(DataSet);
    QCredSal2.Fieldbyname('LOCAT').Asstring := SFMain.Xlocat;
    QCredSal2.Fieldbyname('TAXDT').AsDateTime := Date;
    QCredSal2.Fieldbyname('DESCP').Asstring := 'ใบลดหนี้ขายบางส่วน';
    QCredSal2.Fieldbyname('TAXTYP').Asstring := '8';
    QCredSal2.Fieldbyname('TAXFLG').Asstring := 'N';
    QCredSal2.Fieldbyname('RtnStk').Asstring := 'N';
  end;
end;

procedure TDm_Tax.QCredSal2CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QCredSal2.CachedUpdates then
    QCredSal2UpdateStatus.Value := UpdateStatusStr[QCredSal2.UpdateStatus];
end;

procedure TDm_Tax.QCredSal2LOCATValidate(Sender: TField);
begin
  if QCredSal2Taxdt.Asstring <> '' then
    QCredSal2TaxdtValidate(QCredSal2.FieldByname('TAXDT'));
end;

procedure TDm_Tax.QCredSal2TAXDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if QCredSal2UpdateStatus.Value = 'Inserted' then
  begin
    LV := QCredSal2.FieldByName('Locat').Asstring;
    DV := QCredSal2.FieldByName('Taxdt').Asdatetime;
    HF := 'H_TCSALE';
    LF := 'L_TCSALE';
    if QDbConfig.FieldByName('R_TCSALE').Asstring = 'Y' then
    begin
      QCredSal2TAXNO.Asstring := Dm01.RunNo01(HF, LF, LV, DV);
    end;
  end;
end;

procedure TDm_Tax.QCredSal2NETAMTValidate(Sender: TField);
var
  E: Double;
begin
  E := FRound(QCredSal2NetAmt.Value * QCredSal2Vatrt.Value / 100, 2);
  QCredSal2VatAmt.Asfloat := E;
  QCredSal2TotAmt.Asfloat := QCredSal2NetAmt.Value + E;
end;

procedure TDm_Tax.QCredSal2BeforePost(DataSet: TDataSet);
begin
  ClearAsString(DataSet);
  if (QCredSal2UpdateStatus.Value = 'Inserted') then
    if Duplicate then
      QCredSal2TaxdtValidate(QCredSal2Taxdt);

  if QCredSal2Refno.Value = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบกำกับที่อ้างถึง');

  if QCredSal2Totamt.value = 0 then
    SFMain.RaiseException('ยังไม่บันทึกยอดเงินที่ลดหนี้');

  if QCredSal2TAXno.Value = '' then
  begin
    MessageBeep(0);
    if MessageDlg('ไม่มีข้อมูลที่จะบันทึก ยกเลิกการจัดเก็บ', mtError, [mbok], 0) = MrOk then
      QCredSal2.Cancel;
  end;

  if (QCredSal2UpdateStatus.Value = 'Inserted') then
  begin
    if (QCredSal2Tsale.Asstring = 'C') or
      ((QCredSal2Tsale.Asstring = 'F') and (QCredSal2TAXTYP.Asstring = 'S')) or
      (QCredSal2Tsale.Asstring = 'A') then
    begin
      QArSaleM.Edit;
      QArSaleM.FieldByName('NPRICE').AsFloat := QArSaleM.FieldByName('NPRICE').AsFloat - QCredSal2NETAmt.AsFloat;
      QArSaleM.FieldByName('VATPRC').AsFloat := QArSaleM.FieldByName('VATPRC').AsFloat - QCredSal2VATAmt.AsFloat;
      QArSaleM.FieldByName('TOTPRC').AsFloat := QArSaleM.FieldByName('TOTPRC').AsFloat - QCredSal2TOTAmt.AsFloat;
      QArSaleM.FieldByName('CrdAmt').AsFloat := QArSaleM.FieldByName('CrdAmt').AsFloat + QCredSal2TotAmt.AsFloat;
      QArSaleM.Post;
    end;

    QCredSal2UserId.Asstring := SFMain.Xuser_Id;
    QCredSal2InpDt.AsDatetime := Now;
  end;
end;

procedure TDm_Tax.QCredSal2AfterCancel(DataSet: TDataSet);
begin
  if QCredSal2.Active then
    QCredSal2.CancelUpdates;
  if QArSaleM.Active then
    QArSaleM.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDm_Tax.QCredSal2AfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QCredSal2.FieldByName('Taxno').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QCredSal2.Active then
      if (QCredSal2.ApplyUpdates = 0) then
        QCredSal2.CommitUpdates
      else
        raise Exception.Create(QCredSal2.RowError.Message);
    if QArSaleM.Active then
      if (QArSaleM.ApplyUpdates = 0) then
        QArSaleM.CommitUpdates
      else
        raise Exception.Create(QArSaleM.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QCredSal2.Edit;
    raise;
  end;
end;

procedure TDm_Tax.QCredBuy1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  //ClearAsFloat(DataSet);

  QCredBuy1.Fieldbyname('LOCAT').Asstring := sfmain.Xlocat;
  QCredBuy1TAXDATE.AsDateTime := sfmain.XCurDtFrmDB;
  QCredBuy1.Fieldbyname('DESC1').Asstring := 'ใบลดหนี้ซื้อรถทั้งคัน';
  QCredBuy1.Fieldbyname('TAXTYP').Asstring := '1';
end;

procedure TDm_Tax.QCredBuy1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QCredBuy1.CachedUpdates then
    QCredBuy1UpdateStatus.Value := UpdateStatusStr[QCredBuy1.UpdateStatus];
end;

procedure TDm_Tax.QCredBuy1BeforePost(DataSet: TDataSet);
begin
  ClearAsString(DataSet);
  if (QCredBuy1UpdateStatus.Value = 'Inserted') then
    if Duplicate then
      QCredBuy1TaxdateValidate(QCredBuy1Taxdate);

  if QCredBuy1TAXRefno.Value = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบกำกับที่อ้างถึง...!');

  if QCredBuy1TotTAX.value = 0 then
    SFMain.RaiseException('ยังไม่บันทึกยอดเงินที่ลดหนี้');

  if QCrByInvT1.FieldByName('FLAG').Asstring = 'C' then
    SFMain.RaiseException('รถคันนี้ถูกขายแล้วออกใบลดหนี้ทั้งคันไม่ได้...!');

  if QCredBuy1TAXno.Value = '' then
  begin
    MessageBeep(0);
    if MessageDlg('ไม่มีข้อมูลที่จะบันทึก ยกเลิกการจัดเก็บ...!', mtError, [mbok], 0) = MrOk then
      QCredBuy1.Cancel;
  end;

  if (QCredBuy1UpdateStatus.Value = 'Inserted') then
  begin
    if Fround((QCrByInvT2.FieldByName('RTNAMT').Asfloat + QCredBuy1TOTTAX.Value), 2) >
      QCrByInvT2.FieldByName('NETTOTAL').Asfloat then
      SFMain.RaiseException('ออกใบลดหนี้มากกว่ายอดเงินในใบกำกับภาษี...!');
    if (QCrByInvT2.FieldByName('TNopay').Asfloat > 1) then
      SFMain.RaiseException('รายการนี้มีการตั้งดิวการชำระต้องลบตารางก่อน...!');
    QCrByInvT2.Edit;
    QCrByInvT2.FieldByName('RtnAmt').Asfloat := QCrByInvT2.FieldByName('RtnAmt').Asfloat + QCredBuy1TOTTAX.AsFloat;
    QCrByInvT2.FieldByName('RtnDate').AsDateTime := QCredBuy1TaxDAtE.AsDateTime;
    QCrByInvT2.Post;
      //
    if FRound((QCrByInvT1.FieldByName('CrdAmt').Asfloat + QCredBuy1TOTTAX.Value), 2) >
      QCrByInvT1.FieldByName('TOTCOST').Asfloat then
      SFMain.RaiseException('ออกใบลดหนี้มากกว่าภาษีซื้อ...!');
    QCrByInvT1.Edit;
    QCrByInvT1.FieldByName('CrdAmt').Asfloat := QCrByInvT1.FieldByName('CrdAmt').Asfloat + QCredBuy1TOTTAX.AsFloat;
    QCrByInvT1.Post;
      //
    QCredBuy1Flag.Asstring := '1';
    QCredBuy1UserId.Asstring := SFMain.Xuser_Id;
    QCredBuy1TIME1.AsDatetime := Now;
  end;
end;

procedure TDm_Tax.QCredBuy1AfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QCredBuy1.FieldByName('Taxno').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QCredBuy1.Active then
      if (QCredBuy1.ApplyUpdates = 0) then
        QCredBuy1.CommitUpdates
      else
        raise Exception.Create(QCredBuy1.RowError.Message);
    if QCrByInvT2.Active then
      if (QCrByInvT2.ApplyUpdates = 0) then
        QCrByInvT2.CommitUpdates
      else
        raise Exception.Create(QCrByInvT2.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QCredBuy1.Edit;
    raise;
  end;
end;

procedure TDm_Tax.QCredBuy1AfterCancel(DataSet: TDataSet);
begin
  if QCredBuy1.Active then
    QCredBuy1.CancelUpdates;
  if QCrByInvT2.Active then
    QCrByInvT2.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDm_Tax.QCredBuy1LOCATValidate(Sender: TField);
begin
  if QCredBuy1Taxdate.Asstring <> '' then
    QCredBuy1TaxdateValidate(QCredBuy1.FieldByname('TAXDATE'));
end;

procedure TDm_Tax.QCredBuy1STRNOValidate(Sender: TField);
begin
  with QCrByInvT1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT STRNO,SDATE,PRICE,TSALE,CONTNO,' +
      'CURSTAT,FLAG  FROM INVTRAN ' +
      'WHERE STRNO =:V0 ');
    Params[0].Asstring := QCredBuy1STRNO.AsString;
    OPEN;
    if Eof and bof then
      SFMain.RaiseException('ไม่มีรถเลขตัวถังนี้ในสต็อก...!');
  end;
  if QCrByInvT1.FieldByName('Flag').Asstring = 'C' then
    SFMain.RaiseException('รถเลขตัวถังนี้ถูกขายแล้ว...!');
end;

procedure TDm_Tax.QCredBuy1TAXTYPValidate(Sender: TField);
begin
  if QCredBuy1.FieldByName('Taxtyp').Asstring <> '1' then
    SFMain.RaiseException('ต้องเป็นใบลดหนี้ประเภท 1 เท่านั้น');
end;

procedure TDm_Tax.QCredBuy1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Tax.QCredBuy2NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  //ClearAsFloat(DataSet);

  QCredBuy2.Fieldbyname('LOCAT').Asstring := sfmain.Xlocat;
  QCredBuy2TAXDATE.AsDateTime := sfmain.XCurDtFrmDB;
  QCredBuy2.Fieldbyname('DESC1').Asstring := 'ใบลดหนี้ซื้อรถบางส่วน';
  QCredBuy2.Fieldbyname('TAXTYP').Asstring := '2';
end;

procedure TDm_Tax.QCredBuy2CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QCredBuy2.CachedUpdates then
    QCredBuy2UpdateStatus.Value := UpdateStatusStr[QCredBuy2.UpdateStatus];
end;

procedure TDm_Tax.QCredBuy2BeforePost(DataSet: TDataSet);
begin
  if (QCredBuy2UpdateStatus.Value = 'Inserted') then
  begin
    ClearAsString(DataSet);
    if (QCredBuy2UpdateStatus.Value = 'Inserted') then
      if Duplicate then
        QCredBuy2TaxdateValidate(QCredBuy2Taxdate);

    if QCredBuy2Taxrefno.Value = '' then
      SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบกำกับที่อ้างถึง...!');

    if QCredBuy2Tottax.value = 0 then
      SFMain.RaiseException('ยังไม่บันทึกยอดเงินที่ลดหนี้...!');

    if QCredBuy2TAXno.Value = '' then
    begin
      MessageBeep(0);
      if MessageDlg('ไม่มีข้อมูลที่จะบันทึก ยกเลิกการจัดเก็บ', mtError, [mbok], 0) = MrOk then
        QCredBuy2.Cancel;
    end;
  end;

  if (QCredBuy2UpdateStatus.Value = 'Inserted') then
  begin
      {process บันทึกยอดลดหนี้ ใน ApInvoi}
    if (QCrByInvT2.FieldByName('RtnAmt').Asfloat + QCredBuy2TOTTAX.AsFloat) >
      QCrByInvT2.FieldByName('NETTOTAL').Asfloat then
      SFMain.RaiseException('ออกใบลดหนี้มากกว่ายอดเงินในใบกำกับภาษี');
    if (QCrByInvT2.FieldByName('RtnAmt').Asfloat >
      QCrByInvT2.FieldByName('KANG').Asfloat) then
      SFMain.RaiseException('ออกใบลดหนี้มากกว่ายอดเงินคงเหลือ');
    if (QCrByInvT2.FieldByName('TNopay').Asfloat > 1) then
      SFMain.RaiseException('รายการนี้มีการตั้งดิวการชำระต้องลบตารางก่อน');
    QCrByInvT2.Edit;
    QCrByInvT2.FieldByName('RtnAmt').Asfloat := QCrByInvT2.FieldByName('RtnAmt').Asfloat + QCredBuy2TOTTAX.AsFloat;
    QCrByInvT2.FieldByName('RtnDate').AsDateTime := QCredBuy2TaxDate.AsDateTime;
    QCrByInvT2.Post;
      //
    if (QCrByInvT1.FieldByName('CrdAmt').Asfloat + QCredBuy2TOTTAX.AsFloat) >
      QCrByInvT1.FieldByName('TOTCOST').Asfloat then
      SFMain.RaiseException('ออกใบลดหนี้มากกว่าภาษีซื้อ');
    QCrByInvT1.Edit;
    QCrByInvT1.FieldByName('CrdAmt').Asfloat := QCrByInvT1.FieldByName('CrdAmt').Asfloat + QCredBuy2TOTTAX.AsFloat;
    QCrByInvT1.Post;
      //
    QCredBuy2Flag.Asstring := '2';
    QCredBuy2UserId.Asstring := SFMain.Xuser_Id;
    QCredBuy2Time1.AsDatetime := Now;
  end;
end;

procedure TDm_Tax.QCredBuy2AfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QCredBuy2.FieldByName('Taxno').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QCredBuy2.Active then
      if (QCredBuy2.ApplyUpdates = 0) then
        QCredBuy2.CommitUpdates
      else
        raise Exception.Create(QCredBuy2.RowError.Message);
    if QCrByInvT2.Active then
      if (QCrByInvT2.ApplyUpdates = 0) then
        QCrByInvT2.CommitUpdates
      else
        raise Exception.Create(QCrByInvT2.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QCredBuy2.Edit;
    raise;
  end;
end;

procedure TDm_Tax.QCredBuy2AfterCancel(DataSet: TDataSet);
begin
  if QCredBuy2.Active then
    QCredBuy2.CancelUpdates;
  if QTaxBuy2.Active then
    QTaxBuy2.CancelUpdates;
  if QCrByInvT2.Active then
    QCrByInvT2.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDm_Tax.QCredBuy2LOCATValidate(Sender: TField);
begin
  if QCredBuy2Taxdate.Asstring <> '' then
    QCredBuy2TaxdateValidate(QCredBuy2.FieldByname('TAXDATE'));
end;

procedure TDm_Tax.QCredBuy2BALANCEValidate(Sender: TField);
var
  E: Double;
begin
  E := FRound(QCredBuy2Balance.Value * QCredBuy2VatRT.Value / 100, 2);
  QCredBuy2Vat.Asfloat := E;
  QCredBuy2TotTAX.Asfloat := QCredBuy2Balance.Value + E;
end;

procedure TDm_Tax.QCredBuy2TAXTYPValidate(Sender: TField);
begin
  if QCredBuy2.FieldByName('Taxtyp').Asstring <> '2' then
    SFMain.RaiseException('ต้องเป็นใบลดหนี้ประเภท 2 เท่านั้น');
end;

procedure TDm_Tax.QCredBuy2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Tax.QCanTxtrnAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QArpay.Active then
      if (QArpay.ApplyUpdates = 0) then
        QArpay.CommitUpdates
      else
        raise Exception.Create(QArpay.RowError.Message);
    if QCanChqtr.Active then
      if (QCanChqtr.ApplyUpdates = 0) then
        QCanChqtr.CommitUpdates
      else
        raise Exception.Create(QCanChqtr.RowError.Message);
    if QCanTxtrn.Active then
      if (QCanTxtrn.ApplyUpdates = 0) then
        QCanTxtrn.CommitUpdates
      else
        raise Exception.Create(QCanTxtrn.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QCanTxtrn.Edit;
    raise;
  end;
end;

procedure TDm_Tax.QTaxtranAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QTaxtran.Active then
      if (QTaxtran.ApplyUpdates = 0) then
        QTaxtran.CommitUpdates
      else
        raise Exception.Create(QTaxtran.RowError.Message);
    if QArpay.Active then
      if (QArpay.ApplyUpdates = 0) then
        QArpay.CommitUpdates
      else
        raise Exception.Create(QArpay.RowError.Message);
    if QLastno.Active then
      if (QLastno.ApplyUpdates = 0) then
        QLastno.CommitUpdates
      else
        raise Exception.Create(QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QTaxtran.Edit;
    raise;
  end;
end;

procedure TDm_Tax.QCredSal2TAXNOValidate(Sender: TField);
begin
  if QCredSal2TAXNO.asstring = '' then
    SFMain.RaiseException('กรุณาป้อนเลขที่ใบลดหนี้...!');
end;

procedure TDm_Tax.QCredSal2UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Tax.QCredSalTAXNOValidate(Sender: TField);
begin
  if QCredSalTAXNO.asstring = '' then
    SFMain.RaiseException('กรุณาป้อนเลขที่ใบลดหนี้...!');
end;

procedure TDm_Tax.QCredAgnTAXNOValidate(Sender: TField);
begin
  if QCredAgnTAXNO.asstring = '' then
    SFMain.RaiseException('กรุณาป้อนเลขที่ใบลดหนี้...!');
end;

procedure TDm_Tax.QCredBuy1TAXNOValidate(Sender: TField);
begin
  if QCredBuy1TAXNO.asstring = '' then
    SFMain.RaiseException('กรุณาป้อนเลขที่ใบลดหนี้...!');
end;

procedure TDm_Tax.QCredBuy2TAXNOValidate(Sender: TField);
begin
  if QCredBuy2TAXNO.asstring = '' then
    SFMain.RaiseException('กรุณาป้อนเลขที่ใบลดหนี้...!');
end;

procedure TDm_Tax.QCredBuy1TAXDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if QCredBuy1UpdateStatus.Value = 'Inserted' then
  begin
    LV := QCredBuy1.FieldByName('Locat').Asstring;
    DV := QCredBuy1.FieldByName('Taxdate').Asdatetime;
    HF := 'H_TCBUY';
    LF := 'L_TCBUY';
    if QDbConfig.FieldByName('R_TCBUY').Asstring = 'Y' then
    begin
      SQLTXT := 'SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(TAXNO,7,2)=:EDIT4';
      QCredBuy1TAXNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV)
    end;
  end;
end;

procedure TDm_Tax.QCredBuy1BALANCEValidate(Sender: TField);
var
  E: Double;
begin
  E := FRound(QCredBuy1Balance.Value * QCredBuy1VatRT.Value / 100, 2);
  QCredBuy1Vat.Asfloat := E;
  QCredBuy1TotTax.Asfloat := QCredBuy1Balance.Value + E;
end;

procedure TDm_Tax.QCredBuy2TAXDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if QCredBuy2UpdateStatus.Value = 'Inserted' then
  begin
    LV := QCredBuy2.FieldByName('Locat').Asstring;
    DV := QCredBuy2.FieldByName('Taxdate').Asdatetime;
    HF := 'H_TCBUY';
    LF := 'L_TCBUY';
    if QDbConfig.FieldByName('R_TCBUY').Asstring = 'Y' then
    begin
      SQLTXT := 'SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(TAXNO,7,2)=:EDIT4';
      QCredBuy2TAXNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV)
    end;
  end;
end;

procedure TDm_Tax.qCredResvNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(DataSet);
  Duplicate := False;
  if qCredResv.Active then
  begin
    ClearAsFloat(DataSet);
    qCredResv.FieldByName('Locat').Asstring := SFMain.Xlocat;
    qCredResv.FieldByName('Taxdt').Asdatetime := Date;

    qCredResv.Fieldbyname('DESCP').Asstring := 'ใบลดหนี้เงินจอง';
    qCredResv.Fieldbyname('TAXTYP').Asstring := '9';
    qCredResv.Fieldbyname('TAXFLG').Asstring := 'N';
    qCredResv.Fieldbyname('RtnStk').Asstring := 'N';
  end;
end;

procedure TDm_Tax.qCredResvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if qCredResv.CachedUpdates then
    qCredResvUpdateStatus.Value := UpdateStatusStr[qCredResv.UpdateStatus];
end;

procedure TDm_Tax.qCredResvBeforePost(DataSet: TDataSet);
begin
  ClearAsString(DataSet);
  if (qCredResvUpdateStatus.Value = 'Inserted') then
    if Duplicate then
      qCredResvTaxdtValidate(qCredResvTaxdt);

  if qCredResvRefno.Value = '' then
    raise Exception.Create('ยังไม่บันทึกเลขที่ใบกำกับที่อ้างถึง');

  if qCredResvTotamt.value = 0 then
    raise Exception.Create('ยังไม่บันทึกยอดเงินที่ลดหนี้');

  if qCredResvTAXno.Value = '' then
  begin
    MessageBeep(0);
    if MessageDlg('ไม่มีข้อมูลที่จะบันทึก ยกเลิกการจัดเก็บ', mtError, [mbok], 0) = MrOk then
      qCredResv.Cancel;
  end;

  if (qCredResvUpdateStatus.Value = 'Inserted') then
  begin
    if (qCredResvTsale.Asstring = 'R') then
    begin
      QArSaleM.Edit;
      QArSaleM.FieldByName('CrdTXNO').AsString := qCredResvTaxno.Asstring;
      QArSaleM.FieldByName('Crdtxdt').AsDateTime := qCredResvTAXDT.AsDateTime;
      QArSaleM.FieldByName('CrdAmt').AsFloat := qCredResvTotAmt.AsFloat;
      QArSaleM.Post;
    end;

    qCredResvUserId.Asstring := SFMain.Xuser_Id;
    qCredResvInpDt.AsDatetime := Now;
  end;
end;

procedure TDm_Tax.qCredResvAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qCredResv.Active then
      if (qCredResv.ApplyUpdates = 0) then
        qCredResv.CommitUpdates
      else
        raise Exception.Create(qCredResv.RowError.Message);
    if QArSaleM.Active then
      if (QArSaleM.ApplyUpdates = 0) then
        QArSaleM.CommitUpdates
      else
        raise Exception.Create(QArSaleM.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qCredResv.Edit;
    raise;
  end;
end;

procedure TDm_Tax.qCredResvAfterCancel(DataSet: TDataSet);
begin
  if qCredResv.Active then
    qCredResv.CancelUpdates;
  if QArSaleM.Active then
    QArSaleM.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDm_Tax.qCredResvLOCATValidate(Sender: TField);
begin
  if qCredResvTaxdt.Asstring <> '' then
    qCredResvTaxdtValidate(qCredResv.FieldByname('TAXDT'));
end;

procedure TDm_Tax.qCredResvTAXDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if qCredResvUpdateStatus.Value = 'Inserted' then
  begin
    LV := qCredResv.FieldByName('Locat').Asstring;
    DV := qCredResv.FieldByName('Taxdt').Asdatetime;
    HF := 'H_TCSALE';
    LF := 'L_TCSALE';
    if QDbConfig.FieldByName('R_TCSALE').Asstring = 'Y' then
    begin
      SQLTXT := 'SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(TAXNO,7,2)=:EDIT4';
      qCredResvTAXNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV)
    end;
  end;
end;

procedure TDm_Tax.qCredResvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDm_Tax.qCredResvREFNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    SQL.ADD('SELECT * ' +
      'FROM TAXTRAN ' +
      'WHERE REFNO = :EDIT1 AND FLAG <> ''C'' ');
    params[0].asstring := qCredResvREFNO.AsString;
    open;
    if not (Query1.eof and Query1.bof) then
    begin
      //if (Query1.fieldbyname('RTNAMT').AsFloat > 0) then
      sfmain.RaiseException('เอกสารที่เลือก ทำใบลดหนี้แล้ว<br/>กรุณาตรวจสอบรายการนี้อีกครั้ง..!');
    end;
  end;
end;

procedure TDm_Tax.qCredResvCUSCODChange(Sender: TField);
begin
  with Dm_Tax.Query1 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST ' +
      'WHERE CUSCOD=:Var0');
    Params[0].Asstring := Dm_Tax.qCredResv.Fieldbyname('CUSCOD').Asstring;
    open;

    Dm_Tax.qCredResv.FieldByName('SNAM').Asstring := Dm_tax.Query1.FieldByName('SNAM').AsString;
    Dm_Tax.qCredResv.FieldByName('NAME1').Asstring := Dm_tax.Query1.FieldByName('NAME1').AsString;
    Dm_Tax.qCredResv.FieldByName('NAME2').Asstring := Dm_tax.Query1.FieldByName('NAME2').AsString;
  end;
end;

end.

