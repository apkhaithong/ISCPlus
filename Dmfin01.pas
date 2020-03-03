unit Dmfin01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmfin = class(TDataModule)
    QChqmast: TFDQuery;
    QChqtran: TFDQuery;
    Sochqmast: TDataSource;
    SoChqtran: TDataSource;
    Qarothr: TFDQuery;
    Soarothr: TDataSource;
    QChqmastTMBILL: TStringField;
    QChqmastLOCATRECV: TStringField;
    QChqmastTMBILDT: TDateField;
    QChqmastBILLNO: TStringField;
    QChqmastBILLDT: TDateField;
    QChqmastCUSCOD: TStringField;
    QChqmastPAYTYP: TStringField;
    QChqmastCHQNO: TStringField;
    QChqmastCHQDT: TDateField;
    QChqmastRECVDT: TDateField;
    QChqmastCHQBR: TStringField;
    QChqmastCHQAMT: TFloatField;
    QChqmastACCTNO: TStringField;
    QChqmastTRAD: TFloatField;
    QChqmastPAYINDT: TDateField;
    QChqmastPAYINACC: TStringField;
    QChqmastPAYDT: TDateField;
    QChqmastAMTPAID: TFloatField;
    QChqmastCHQTMP: TFloatField;
    QChqmastRVPERCD: TStringField;
    QChqmastRCHQDT: TDateField;
    QChqmastRCHQCD: TStringField;
    QChqmastFLAG: TStringField;
    QChqmastMEMO1: TMemoField;
    QChqmastCANDT: TDateField;
    QChqmastUSERID: TStringField;
    QChqmastPOSTDT: TDateField;
    QChqtranTMBILL: TStringField;
    QChqtranLOCATRECV: TStringField;
    QChqtranTMBILDT: TDateField;
    QChqtranCHQNO: TStringField;
    QChqtranCHQDT: TDateField;
    QChqtranTSALE: TStringField;
    QChqtranPAYFOR: TStringField;
    QChqtranCONTNO: TStringField;
    QChqtranLOCATPAY: TStringField;
    QChqtranCUSCOD: TStringField;
    QChqtranTAXRT: TFloatField;
    QChqtranPAYAMT: TFloatField;
    QChqtranPAYAMT_N: TFloatField;
    QChqtranPAYAMT_V: TFloatField;
    QChqtranDISCT: TFloatField;
    QChqtranPAYINT: TFloatField;
    QChqtranDSCINT: TFloatField;
    QChqtranNETPAY: TFloatField;
    QChqtranPAYDT: TDateField;
    QChqtranFLAG: TStringField;
    QChqtranYFLAG: TStringField;
    QChqtranCANDT: TDateField;
    QChqtranUSERID: TStringField;
    QChqtranPOSTDT: TDateField;
    QChqmastUpdatestatus: TStringField;
    QChqtranUpdatestatus: TStringField;
    Query1: TFDQuery;
    QChqtranTAXNO: TStringField;
    QChqtranTAXFL: TStringField;
    QContno: TFDQuery;
    QArpay: TFDQuery;
    QChqmastTAXFL: TStringField;
    QChqtranPAYTYP: TStringField;
    QChqtranNOPAY: TFloatField;
    QChqtranF_PAR: TStringField;
    QChqtranF_PAY: TFloatField;
    QChqtranL_PAR: TStringField;
    QChqtranL_PAY: TFloatField;
    QBillmas: TFDQuery;
    QBillmasBILLNO: TStringField;
    QBillmasLOCATRECV: TStringField;
    QBillmasBILLDT: TDateField;
    QBillmasTMBILL: TStringField;
    QBillmasFLAG: TStringField;
    QBillmasINPDT: TDateField;
    QBillmasUSERID: TStringField;
    QBillmasUpdatestatus: TStringField;
    QTaxtran: TFDQuery;
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
    QChqtrn1: TFDQuery;
    QChqmastTAXNO: TStringField;
    QTaxtranTMBILL: TStringField;
    ShwChqtrn: TFDQuery;
    Canchqmst: TFDQuery;
    SoShwChqtrn: TDataSource;
    SoCanChqmst: TDataSource;
    CanChqtrn: TFDQuery;
    QArmast: TFDQuery;
    Table1: TFDTable;
    QIntrMast: TFDQuery;
    SoTable1: TDataSource;
    Query2: TFDQuery;
    QChqmastDOSBILL: TStringField;
    QChqmastNOPRNTB: TFloatField;
    QChqmastNOPRNBL: TFloatField;
    QChqmastCHQBK: TStringField;
    Query3: TFDQuery;
    qrArpayNopay: TFDQuery;
    QChqmastINPDT: TDateField;
    QChqtranINPDT: TDateField;
    QChqmastINPDATE: TDateTimeField;
    QChqtranINPDATE: TDateTimeField;
    QChqtranDOSBILL: TStringField;
    QTaxtranFINCOD: TStringField;
    QChqtranVATRTPAY: TFloatField;
    QChqtranVATAMTPAY: TFloatField;
    SoCRDChqtran: TDataSource;
    SoCRDchqmast: TDataSource;
    CRdChqmas: TFDQuery;
    CRdChqtran: TFDQuery;
    CRdChqmasUpdatestatus: TStringField;
    CRdChqtranUpdatestatus: TStringField;
    QChqmastPOSTGL: TStringField;
    QChqmastREFDOCNO: TStringField;
    CRdChqtranTMBILL: TStringField;
    CRdChqtranLOCATRECV: TStringField;
    CRdChqtranTMBILDT: TDateField;
    CRdChqtranCHQNO: TStringField;
    CRdChqtranCHQDT: TDateField;
    CRdChqtranTSALE: TStringField;
    CRdChqtranPAYFOR: TStringField;
    CRdChqtranCONTNO: TStringField;
    CRdChqtranLOCATPAY: TStringField;
    CRdChqtranCUSCOD: TStringField;
    CRdChqtranPAYTYP: TStringField;
    CRdChqtranTAXRT: TFloatField;
    CRdChqtranPAYAMT: TFloatField;
    CRdChqtranPAYAMT_N: TFloatField;
    CRdChqtranPAYAMT_V: TFloatField;
    CRdChqtranDISCT: TFloatField;
    CRdChqtranPAYINT: TFloatField;
    CRdChqtranDSCINT: TFloatField;
    CRdChqtranNETPAY: TFloatField;
    CRdChqtranPAYDT: TDateField;
    CRdChqtranNOPAY: TFloatField;
    CRdChqtranF_PAR: TStringField;
    CRdChqtranF_PAY: TFloatField;
    CRdChqtranL_PAR: TStringField;
    CRdChqtranL_PAY: TFloatField;
    CRdChqtranTAXNO: TStringField;
    CRdChqtranTAXFL: TStringField;
    CRdChqtranINPDT: TDateField;
    CRdChqtranFLAG: TStringField;
    CRdChqtranYFLAG: TStringField;
    CRdChqtranCANDT: TDateField;
    CRdChqtranUSERID: TStringField;
    CRdChqtranPOSTDT: TDateField;
    CRdChqtranDOSBILL: TStringField;
    CRdChqtranINPDATE: TDateTimeField;
    CRdChqtranVATRTPAY: TFloatField;
    CRdChqtranVATAMTPAY: TFloatField;
    CRdChqtranDUTYAMT: TFloatField;
    QChqtranDIVICOD: TStringField;
    CRdChqmasTMBILL: TStringField;
    CRdChqmasLOCATRECV: TStringField;
    CRdChqmasTMBILDT: TDateField;
    CRdChqmasBILLNO: TStringField;
    CRdChqmasBILLDT: TDateField;
    CRdChqmasCUSCOD: TStringField;
    CRdChqmasPAYTYP: TStringField;
    CRdChqmasCHQNO: TStringField;
    CRdChqmasCHQDT: TDateField;
    CRdChqmasRECVDT: TDateField;
    CRdChqmasCHQBK: TStringField;
    CRdChqmasCHQBR: TStringField;
    CRdChqmasCHQAMT: TFloatField;
    CRdChqmasACCTNO: TStringField;
    CRdChqmasTRAD: TFloatField;
    CRdChqmasPAYINDT: TDateField;
    CRdChqmasPAYINACC: TStringField;
    CRdChqmasPAYDT: TDateField;
    CRdChqmasAMTPAID: TFloatField;
    CRdChqmasCHQTMP: TFloatField;
    CRdChqmasTAXNO: TStringField;
    CRdChqmasRVPERCD: TStringField;
    CRdChqmasRCHQDT: TDateField;
    CRdChqmasRCHQCD: TStringField;
    CRdChqmasFLAG: TStringField;
    CRdChqmasTAXFL: TStringField;
    CRdChqmasMEMO1: TMemoField;
    CRdChqmasINPDT: TDateField;
    CRdChqmasCANDT: TDateField;
    CRdChqmasUSERID: TStringField;
    CRdChqmasPOSTDT: TDateField;
    CRdChqmasDOSBILL: TStringField;
    CRdChqmasNOPRNTB: TFloatField;
    CRdChqmasNOPRNBL: TFloatField;
    CRdChqmasINPDATE: TDateTimeField;
    CRdChqmasPOSTGL: TStringField;
    CRdChqmasREFDOCNO: TStringField;
    SoChqtran_Oth: TDataSource;
    QChqtran_Oth: TFDQuery;
    QChqtran_OthPAYFOR: TStringField;
    QChqtran_OthDESCRIPTION: TStringField;
    QChqtran_OthAMOUNT: TFloatField;
    QChqtran_OthCANFL: TStringField;
    QChqtran_OthCANDT: TDateTimeField;
    SoChqtran_Dec: TDataSource;
    QChqtran_Dec: TFDQuery;
    SoChqtran_Typ: TDataSource;
    QChqtran_Typ: TFDQuery;
    QChqtran_DecPAYFOR: TStringField;
    QChqtran_DecDESCRIPTION: TStringField;
    QChqtran_DecAMOUNT: TFloatField;
    QChqtran_DecCANFL: TStringField;
    QChqtran_DecCANDT: TDateTimeField;
    QChqtran_TypPAYCODE: TStringField;
    QChqtran_TypBANKCOD: TStringField;
    QChqtran_TypCHQNO: TStringField;
    QChqtran_TypDTONCHQ: TDateField;
    QChqtran_TypBANKBOOKCOD: TStringField;
    QChqtran_TypDTONBANK: TDateField;
    QChqtran_TypBANKLOCAT: TStringField;
    QChqtran_TypAMOUNT: TFloatField;
    QChqtran_TypCANFL: TStringField;
    QChqtran_TypCANDT: TDateTimeField;
    QChqtran_TypTMBILL: TStringField;
    QChqtran_TypTMBILDT: TDateField;
    QChqtran_DecTMBILL: TStringField;
    QChqtran_DecTMBILDT: TDateField;
    QChqtran_OthTMBILL: TStringField;
    QChqtran_OthTMBILDT: TDateField;
    QChqmastCHQTMP_OTH: TFloatField;
    QChqmastCHQTMP_DEC: TFloatField;
    QChqmastCHQTMP_TYP: TFloatField;
    QChqmastRLBILL: TStringField;
    QChqmastTOTAL: TFloatField;
    procedure QChqmastCalcFields(DataSet: TDataSet);
    procedure QChqmastLOCATRECVValidate(Sender: TField);
    procedure QChqmastCUSCODValidate(Sender: TField);
    procedure QChqmastTMBILDTValidate(Sender: TField);
    procedure QChqmastNewRecord(DataSet: TDataSet);
    procedure QChqmastBeforePost(DataSet: TDataSet);
    procedure QChqmastAfterPost(DataSet: TDataSet);
    procedure QChqtranPAYFORValidate(Sender: TField);
    procedure QChqtranCONTNOValidate(Sender: TField);
    procedure QChqtranNewRecord(DataSet: TDataSet);
    procedure QChqmastAfterCancel(DataSet: TDataSet);
    procedure QChqtranAfterPost(DataSet: TDataSet);
    procedure QChqtranBeforePost(DataSet: TDataSet);
    procedure QChqtranPAYAMTValidate(Sender: TField);
    procedure QBillmasAfterPost(DataSet: TDataSet);
    procedure QBillmasLOCATRECVValidate(Sender: TField);
    procedure QBillmasNewRecord(DataSet: TDataSet);
    procedure QBillmasBeforePost(DataSet: TDataSet);
    procedure QBillmasCalcFields(DataSet: TDataSet);
    procedure QTaxtranNewRecord(DataSet: TDataSet);
    procedure CanchqmstAfterPost(DataSet: TDataSet);
    procedure QTaxtranTAXDTValidate(Sender: TField);
    procedure QTaxtranAfterPost(DataSet: TDataSet);
    procedure CanchqmstBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure QChqtranPAYFORChange(Sender: TField);
    procedure QChqtranPAYAMTChange(Sender: TField);
    procedure QChqtranVATRTPAYValidate(Sender: TField);
    procedure QChqtranDISCTValidate(Sender: TField);
    procedure QChqtranVATRTPAYChange(Sender: TField);
    procedure QChqtranPAYINTValidate(Sender: TField);
    procedure QChqmastPAYTYPChange(Sender: TField);
    procedure CRdChqmasTMBILDTValidate(Sender: TField);
    procedure CRdChqmasCalcFields(DataSet: TDataSet);
    procedure CRdChqmasNewRecord(DataSet: TDataSet);
    procedure CRdChqmasLOCATRECVValidate(Sender: TField);
    procedure CRdChqmasAfterPost(DataSet: TDataSet);
    procedure CRdChqmasBeforePost(DataSet: TDataSet);
    procedure CRdChqmasAfterCancel(DataSet: TDataSet);
    procedure CRdChqtranAfterPost(DataSet: TDataSet);
    procedure CRdChqtranNewRecord(DataSet: TDataSet);
    procedure CRdChqtranDISCTChange(Sender: TField);
    procedure CRdChqtranPAYINTChange(Sender: TField);
    procedure CRdChqtranVATRTPAYChange(Sender: TField);
    procedure QChqtran_OthPAYFORValidate(Sender: TField);
    procedure QChqtran_DecPAYFORValidate(Sender: TField);
    procedure QChqtran_TypPAYCODEValidate(Sender: TField);
    procedure QChqtran_OthAfterPost(DataSet: TDataSet);
    procedure QChqtran_DecAfterPost(DataSet: TDataSet);
    procedure QChqtran_TypAfterPost(DataSet: TDataSet);
    procedure QChqtran_OthBeforePost(DataSet: TDataSet);
    procedure QChqtran_DecBeforePost(DataSet: TDataSet);
    procedure QChqtran_TypBeforePost(DataSet: TDataSet);
    procedure QChqmastCHQTMPValidate(Sender: TField);
    procedure QChqmastCHQTMP_OTHValidate(Sender: TField);
    procedure QChqmastCHQTMP_DECValidate(Sender: TField);
    procedure QChqtran_OthPAYFORChange(Sender: TField);
    procedure QChqtran_DecPAYFORChange(Sender: TField);
    procedure QChqtran_TypCHQNOValidate(Sender: TField);
    procedure QChqtran_TypBANKBOOKCODValidate(Sender: TField);
    procedure QChqtran_TypDTONCHQValidate(Sender: TField);
    procedure QChqtran_TypBANKLOCATValidate(Sender: TField);
    procedure QChqtran_TypAMOUNTValidate(Sender: TField);
    procedure QChqmastUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
    function CalDelay: Double;
  public
    { Public declarations }
    TFkang, TFDisc, TFintr, BalFprof, Tkang, TDisc, Tintr, Balprof: Double;
    Totprc_a, Paid_a, XCount, XCount1, XCount2, XCount3: Double;
    Sumintr, Paidintr, Tdscintr, XVatamt: Double;
    XPayfor, RB, FinCod011: string;
    procedure Uparpay;
    procedure CanCelTmBill;
    procedure RunBill;
    procedure RunTaxno;
    procedure DscPaymnt;
    procedure CanCelCRDTmBill;
  end;

var
  Dmfin: TDmfin;
  Duplicate: Boolean;
  Xdescp: string;
  Vat1, Fpay_b, Lpay_b, Xpayamt, XVatamt, XIntAmt: Double;
  XDelay, Xintr: Double;
  XFduedt, XLduedt, Tdate, DDate_a, Lpayd_b: TDateTime;
  Lpaya_b, Addintr_a, Paydwn_a, nResvAmt_a: Double;

implementation

uses
  Dmsec, Dm1, USoftFirm, Functn01, ShwDisc, Caldisc, DmCal, FincRecv;

{$R *.DFM}

procedure TDmfin.QChqmastCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
'Inserted', 'Deleted');
begin
  if QChqmast.CachedUpdates then
    QChqmastUpdateStatus.Value := UpdateStatusStr[QChqmast.UpdateStatus];
end;

procedure TDmfin.QChqmastLOCATRECVValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:0 ');
    Params[0].Asstring := QChqmastLOCATRECV.Asstring;
    Open;
    if (Bof and Eof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;
  //
  QChqmastTMBILDTValidate(Sender);
end;

procedure TDmfin.QChqmastCUSCODValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select Cuscod,Snam,Name1,Name2 From Custmast Where Cuscod=:0 ');
    Params[0].AsString := QChqmastCUSCOD.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสลูกค้า');
  end;
end;

procedure TDmfin.QChqmastTMBILDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT, cdigit: string;
  DV: TdateTime;
  ckdigit: integer;
begin
  HF := 'H_TMPBILL';
  LF := 'L_TMPBILL';
  //IF QChqmastTMBILDT.AsDateTime > Date then
  //SFMain.RaiseException('ระบุวันที่ก่อนวันปัจจุบัน...!');

  if not (Dm01.QDBConfig.Active) then
    Dm01.QDBConfig.Open;
  if Dm01.QDBConfig.Fieldbyname('R_TMPBILL').asstring = 'Y' then
  begin
    LV := QChqmast.Fieldbyname('LOCATRECV').asstring;
    DV := QChqmast.Fieldbyname('TMBILDT').asDatetime;

    if QChqmastUpdateStatus.Value = 'Inserted' then
    begin
      if ckdigit = 1 then
      begin
        SQLTXT := 'SELECT MAX(TMBILL) AS MAXNO FROM CHQMAS WHERE LOCATRECV=:0 AND ' +
          'SUBSTR(TMBILL,2,1)=:1 AND SUBSTR(TMBILL,4,2)=:2 AND SUBSTR(TMBILL,6,2)=:3';
        QChqmastTMBILL.Asstring := Dm01.Maxno1(HF, LF, LV, SQLTXT, DV);
      end
      else
      begin
        SQLTXT := 'SELECT MAX(TMBILL) AS MAXNO FROM CHQMAS WHERE LOCATRECV=:0 AND ' +
          'SUBSTR(TMBILL,2,2)=:1 AND SUBSTR(TMBILL,5,2)=:2 AND SUBSTR(TMBILL,7,2)=:3';
        QChqmastTMBILL.Asstring := Dm01.Maxno(HF, LF, LV, SQLTXT, DV);
      end;
    end;


//    If QChqmastUpdateStatus.Value='Inserted' Then
//    begin
//        QChqmastTMBILL.Asstring := Dm01.RunNo01(HF,LF,LV,DV);
//    end;
  end;
end;

procedure TDmfin.QChqmastUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDmfin.QChqmastNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  XPayfor := '';
  ClearAsFloat(QChqmast);
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  QChqmastLOCATRECV.Asstring := SFMain.XLocat;
  QChqmastTMBILDT.AsDatetime := SFMain.CR_DATE;
  QChqmastINPDT.AsDatetime := DATE;
  QChqmastINPDATE.AsDatetime := Now;
  QChqmastUSERID.Asstring := SFMain.XUser_ID;
  QChqmastFlag.Asstring := 'H';
  QChqmastPAYTYP.Asstring := '01';
  QChqmastREFDOCNO.Asstring := '';
  QChqmastRLBILL.AsString := 'Y';
  QChqmastPOSTGL.AsString := 'N';
end;

procedure TDmfin.QChqmastBeforePost(DataSet: TDataSet);
var
  N1, N2: Double;
begin
  Clearasstring(QChqmast);
  QChqtran.First;
  QChqtran_Oth.First;
  QChqtran_Dec.First;
  QChqtran_Typ.First;
  {If QChqmastPaytyp.asstring ='02' Then
  If QChqmastCHQNO.Asstring ='' Then
     SFMain.RaiseException('ยังไม่บันทึกเลขที่เช็ค')
  Else
  If QChqmastCHQDT.Asstring ='' Then
     SFMain.RaiseException('ยังไม่บันทึกวันที่เช็ค')
  Else
  If QChqmastCHQBK.Asstring ='' Then
     SFMain.RaiseException('ยังไม่บันทึกรหัสธนาคาร');
  If (QChqmastPaytyp.asstring ='02') and (QChqmastChqAmt.Asfloat <> QChqmastChqtmp.Asfloat) Then
  SFMain.RaiseException('ยอดรวมไม่เท่ากับยอดหน้าเช็ค');
  If (QChqmastPaytyp.asstring ='01') Then
  Begin
     QChqmastChqno.asstring   := '' ;
     QChqmastChqBk.asstring   := '' ;
     QChqmastChqBr.asstring   := '' ;
     QChqmastChqDt.asDatetime := QChqmastTmbildt.asDatetime;
  end;}
  QChqmastChqDt.asDatetime := QChqmastTmbildt.asDatetime;
  //
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT LOCATCD,CLOSEDT FROM INVLOCAT WHERE LOCATCD= :0');
    Params[0].AsString := QChqmastLOCATRECV.Asstring;
    Open;
    if (FieldByName('CLOSEDT').Asdatetime >= QChqmast.Fieldbyname('TMBILDT').asDatetime) then
      SFMain.RaiseException('ไม่สามารถบันทึกวันที่ใบรับก่อนวันปิดงวดบัญชี');
    if (FieldByName('CLOSEDT').Asdatetime >= QChqmast.Fieldbyname('INPDT').asDatetime) then
      SFMain.RaiseException('ไม่สามารถบันทึกรายการก่อนวันปิดงวดบัญชี');
  end;
  //

  if (QChqmastUpdateStatus.Value = 'Inserted') then
  begin
    N1 := 0;
    N2 := 0;
    //Rerun
    if Duplicate then
      QChqmastTMBILDTValidate(QChqmastTMBILDT);
    //
    QChqtran.DisableControls;
    QChqtran.AfterPost := Nil;
    QChqtran.BeforePost := Nil;
    QChqtran.First;
    while not QChqtran.Eof do
    begin
      N1 := N2 + QChqtranPayamt.Asfloat - QChqtranDisct.Asfloat - QChqtranVATAMTPAY.AsFloat -
        QChqtranPayInt.Asfloat - QChqtranDscInt.Asfloat;
      N2 := N2 + QChqtranNetpay.Asfloat;
      QChqtran.Edit;
      QChqtran.Fieldbyname('TMBILL').Asstring := QChqMastTMBILL.Asstring;
      QChqtran.fieldbyname('Tmbildt').asdatetime := QchqmastTmbildt.Asdatetime;
      QChqtran.Fieldbyname('PAYTYP').Asstring := QChqMastPAYTYP.Asstring;
      QChqtran.Fieldbyname('CHQNO').Asstring := QChqMastCHQNO.Asstring;
      QChqtran.fieldbyname('LocatRecv').asstring := QchqmastLocatrecv.Asstring;

      QChqtran.fieldbyname('Chqdt').asdatetime := QchqmastTmbildt.Asdatetime;
      QChqtran.fieldbyname('Chqdt').asdatetime := QchqmastChqdt.Asdatetime;
      QChqtran.fieldbyname('Paydt').asdatetime := QchqmastTmbildt.Asdatetime;
      QChqtran.Next;
    end;
    QChqtran.AfterPost := QChqtranAfterPost;
    QChqtran.BeforePost := QChqtranBeforePost;
    QChqtran.EnableControls;
    if FRound(N1, 2) <> FRound(N2, 2) then
      SFMain.RaiseException('ยอดรับสุทธิไม่ถูกต้อง กรุณาเคาะ Ent ให้สุดบรรทัด');

    QChqtran_Oth.DisableControls;
    QChqtran_Oth.AfterPost := Nil;
    QChqtran_Oth.BeforePost := Nil;
    QChqtran_Oth.First;
    while not QChqtran_Oth.Eof do
    begin
      QChqtran_Oth.Edit;
      QChqtran_Oth.Fieldbyname('TMBILL').Asstring := QChqMastTMBILL.Asstring;
      QChqtran_Oth.fieldbyname('Tmbildt').asdatetime := QchqmastTmbildt.Asdatetime;

      QChqtran_Oth.Next;
    end;
    QChqtran_Oth.AfterPost := QChqtran_OthAfterPost;
    QChqtran_Oth.BeforePost := QChqtran_OthBeforePost;
    QChqtran_Oth.EnableControls;

    QChqtran_Dec.DisableControls;
    QChqtran_Dec.AfterPost := Nil;
    QChqtran_Dec.BeforePost := Nil;
    QChqtran_Dec.First;
    while not QChqtran_Dec.Eof do
    begin
      QChqtran_Dec.Edit;
      QChqtran_Dec.Fieldbyname('TMBILL').Asstring := QChqMastTMBILL.Asstring;
      QChqtran_Dec.fieldbyname('Tmbildt').asdatetime := QchqmastTmbildt.Asdatetime;

      QChqtran_Dec.Next;
    end;
    QChqtran_Dec.AfterPost := QChqtran_DecAfterPost;
    QChqtran_Dec.BeforePost := QChqtran_DecBeforePost;
    QChqtran_Dec.EnableControls;

    QChqtran_Typ.DisableControls;
    QChqtran_Typ.AfterPost := Nil;
    QChqtran_Typ.BeforePost := Nil;
    QChqtran_Typ.First;
    while not QChqtran_Typ.Eof do
    begin
      QChqtran_Typ.Edit;
      QChqtran_Typ.Fieldbyname('TMBILL').Asstring := QChqMastTMBILL.Asstring;
      QChqtran_Typ.fieldbyname('Tmbildt').asdatetime := QchqmastTmbildt.Asdatetime;

      QChqtran_Typ.Next;
    end;
    QChqtran_Typ.AfterPost := QChqtran_TypAfterPost;
    QChqtran_Typ.BeforePost := QChqtran_TypBeforePost;
    QChqtran_Typ.EnableControls;
  end;

  if Sochqmast.State = dsEdit then
  begin
    QChqtran_Oth.DisableControls;
    QChqtran_Oth.AfterPost := Nil;
    QChqtran_Oth.BeforePost := Nil;
    QChqtran_Oth.First;
    while not QChqtran_Oth.Eof do
    begin
      QChqtran_Oth.Edit;
      QChqtran_Oth.Fieldbyname('TMBILL').Asstring := QChqMastTMBILL.Asstring;
      QChqtran_Oth.fieldbyname('Tmbildt').asdatetime := QchqmastTmbildt.Asdatetime;

      QChqtran_Oth.Next;
    end;
    QChqtran_Oth.AfterPost := QChqtran_OthAfterPost;
    QChqtran_Oth.BeforePost := QChqtran_OthBeforePost;
    QChqtran_Oth.EnableControls;

    QChqtran_Dec.DisableControls;
    QChqtran_Dec.AfterPost := Nil;
    QChqtran_Dec.BeforePost := Nil;
    QChqtran_Dec.First;
    while not QChqtran_Dec.Eof do
    begin
      QChqtran_Dec.Edit;
      QChqtran_Dec.Fieldbyname('TMBILL').Asstring := QChqMastTMBILL.Asstring;
      QChqtran_Dec.fieldbyname('Tmbildt').asdatetime := QchqmastTmbildt.Asdatetime;

      QChqtran_Dec.Next;
    end;
    QChqtran_Dec.AfterPost := QChqtran_DecAfterPost;
    QChqtran_Dec.BeforePost := QChqtran_DecBeforePost;
    QChqtran_Dec.EnableControls;

    QChqtran_Typ.DisableControls;
    QChqtran_Typ.AfterPost := Nil;
    QChqtran_Typ.BeforePost := Nil;
    QChqtran_Typ.First;
    while not QChqtran_Typ.Eof do
    begin
      QChqtran_Typ.Edit;
      QChqtran_Typ.Fieldbyname('TMBILL').Asstring := QChqMastTMBILL.Asstring;
      QChqtran_Typ.fieldbyname('Tmbildt').asdatetime := QchqmastTmbildt.Asdatetime;

      QChqtran_Typ.Next;
    end;
    QChqtran_Typ.AfterPost := QChqtran_TypAfterPost;
    QChqtran_Typ.BeforePost := QChqtran_TypBeforePost;
    QChqtran_Typ.EnableControls;
  end;
end;

procedure TDmfin.QChqmastAfterPost(DataSet: TDataSet);
var
  S, Loc, Xcont, Xloc: string;
begin
  S := QChqmastTMBILL.Asstring;
  Loc := QChqmastLocatRECV.Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QChqmast.Active then
      if (QChqmast.ApplyUpdates = 0) then
        QChqmast.CommitUpdates
      else
        raise Exception.Create(QChqmast.RowError.Message);
    if QChqtran.Active then
      if (QChqtran.ApplyUpdates = 0) then
        QChqtran.CommitUpdates
      else
        raise Exception.Create(QChqtran.RowError.Message);
    if QChqtran_Oth.Active then
      if (QChqtran_Oth.ApplyUpdates = 0) then
        QChqtran_Oth.CommitUpdates
      else
        raise Exception.Create(QChqtran_Oth.RowError.Message);
    if QChqtran_Dec.Active then
      if (QChqtran_Dec.ApplyUpdates = 0) then
        QChqtran_Dec.CommitUpdates
      else
        raise Exception.Create(QChqtran_Dec.RowError.Message);
    if QChqtran_Typ.Active then
      if (QChqtran_Typ.ApplyUpdates = 0) then
        QChqtran_Typ.CommitUpdates
      else
        raise Exception.Create(QChqtran_Typ.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    if QArpay.Active then
      if (QArpay.ApplyUpdates = 0) then
        QArpay.CommitUpdates
      else
        raise Exception.Create(QArpay.RowError.Message);
    if QArmast.Active then
      if (QArmast.ApplyUpdates = 0) then
        QArmast.CommitUpdates
      else
        raise Exception.Create(QArmast.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QChqmast.Edit;
    QChqmast.Fieldbyname('TAXNO').asstring := '';
    raise;
  end;
  //
  with QChqMast do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQMAS WHERE TMBILL=:V0 AND LOCATRECV=:V1 ');
    Params[0].asstring := S;
    Params[1].asstring := Loc;
    Open;
  end;

  with QChqtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN WHERE TMBILL=:V0 AND LOCATRECV=:V1 ');
    Params[0].asstring := S;
    Params[1].asstring := Loc;
    Open;
  end;

  with QChqtran_Oth do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN_OTH WHERE TMBILL=:V0 ');
    Params[0].asstring := S;
    Open;
  end;

  with QChqtran_Dec do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN_DEC WHERE TMBILL=:V0 ');
    Params[0].asstring := S;
    Open;
  end;

  with QChqtran_Typ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN_TYP WHERE TMBILL=:V0 ');
    Params[0].asstring := S;
    Open;
  end;
end;

procedure TDmfin.QChqtranPAYFORValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PAYFOR WHERE FORCODE=:EDIT1');
    params[0].asstring := QChqtranPAYFOR.Asstring;
    Open;
    if (Bof and Eof) then
      SFMain.RaiseException('ไม่พบรหัสการชำระ');
    Xdescp := Query1.Fieldbyname('FORDESC').Asstring;
    QChqtranTAXFL.Asstring := Query1.Fieldbyname('TAXFL').Asstring;
    if QChqmastTAXFL.Asstring = '' then
      QChqmastTAXFL.Asstring := QChqtranTAXFL.Asstring
    else if QChqmastTAXFL.Asstring <> QChqtranTAXFL.Asstring then
      SFMain.RaiseException('กรุณาแยกรายการชำระที่มีภาษีและไม่มีภาษีออกจากกัน');
    //
    if (XPayfor = '') then
      Xpayfor := QChqtranPayfor.Asstring;
    {Else
    If (QChqtranPayfor.Asstring='001')or(Xpayfor='001') Then
       SFMain.RaiseException('รายการชำระค่าสินค้าเงินสด ชำระรวมกับรายการอื่นไม่ได้ ')
    Else
    If (QChqtranPayfor.Asstring='003')or(Xpayfor='003') Then
       SFMain.RaiseException('รายการชำระค่าดาวน์ไฟแนนซ์ ชำระรวมกับรายการอื่นไม่ได้ ')
    Else
    If (QChqtranPayfor.Asstring='004')or(Xpayfor='004') Then
       SFMain.RaiseException('รายการชำระค่างวดไฟแนนซ์ ชำระรวมกับรายการอื่นไม่ได้ ')
    Else
    If (QChqtranPayfor.Asstring='005')or(Xpayfor='005') Then
       SFMain.RaiseException('รายการชำระค่าเงินอุปกรณ์เสริม ชำระรวมกับรายการอื่นไม่ได้ ')
    Else
    If (QChqtranPayfor.Asstring='008')or(Xpayfor='008') Then
       SFMain.RaiseException('รายการชำระค่าเงินจอง ชำระรวมกับรายการอื่นไม่ได้ ')
    Else
    If (QChqtranPayfor.Asstring='009')or(Xpayfor='009') Then
       SFMain.RaiseException('รายการชำระค่ารถขายส่ง ชำระรวมกับรายการอื่นไม่ได้ '); }
  end;
  //
  if QChqtranPAYFOR.Asstring = '001' then
    DmFin.QChqtranTsale.Asstring := 'C'
  else if QChqtranPAYFOR.Asstring = '003' then
    DmFin.QChqtranTsale.Asstring := 'F'
  else if QChqtranPAYFOR.Asstring = '004' then
    DmFin.QChqtranTsale.Asstring := 'F'
  else if QChqtranPAYFOR.Asstring = '005' then
    DmFin.QChqtranTsale.Asstring := 'O'
  else if QChqtranPAYFOR.Asstring = '008' then
    DmFin.QChqtranTsale.Asstring := 'R'
  else if QChqtranPAYFOR.Asstring = '009' then
    DmFin.QChqtranTsale.Asstring := 'A'
  else if QChqtranPAYFOR.Asstring = '011' then
    DmFin.QChqtranTsale.Asstring := 'F'
  else if QChqtranPAYFOR.Asstring = '099' then
    DmFin.QChqtranTsale.Asstring := 'F'
  else
  //sfmain.AdvSmoothMessageDialog2.Caption := 'กรุณาตรวจสอบข้อมูล';
  //sfmain.AdvSmoothMessageDialog2.HTMLText.Text := 'รับชำระเงินจากลูกหนี้ที่ตั้งไว้แล้ว?<br/>ต้องการทำรายการต่อหรือไม่?';
  //if sfmain.AdvSmoothMessageDialog2.ExecuteDialog = mrOk then
if MessageDlg('รับชำระเงินจากลูกหนี้ที่ตั้งไว้แล้ว ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DmFin.QChqtranTsale.Asstring := 'X'
  else
    DmFin.QChqtranTsale.Asstring := 'T';
end;

procedure TDmfin.QChqtranCONTNOValidate(Sender: TField);
var
  Xrt1, Xvt, Xvat1, Xvat2, Xnopay_1, XNopay_2: Double;
  Fixp: string;
begin
  {ค่ารถขายสด  Payfor=001}
  if QChqtranTsale.Asstring = 'C' then
    with QContno do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTNO,LOCAT,VATRT,INCLVAT,TOTPRC,SMPAY,SMCHQ,TOTPRC-SMPAY-SMCHQ AS BALANCE,CUSCOD,SDATE FROM ARCRED WHERE CONTNO=:0 ');
      Params[0].Asstring := QChqtran.Fieldbyname('CONTNO').Asstring;
      Open;
      if not (Bof and Eof) then
      begin
        if QChqmastTmbildt.AsDatetime < QContno.Fieldbyname('SDATE').AsdateTime then
          SFMain.RaiseException('ชำระเงินก่อนวันทำสัญญาขาย');
        QChqtran.FieldByname('Cuscod').Asstring := QContno.Fieldbyname('Cuscod').Asstring;
        if QChqmast.FieldByname('Cuscod').Asstring = '' then
          QChqmast.FieldByname('Cuscod').Asstring := QChqtran.FieldByname('Cuscod').Asstring
        else if (QChqmast.FieldByname('Cuscod').Asstring <> '') and
          (QChqmast.FieldByname('Cuscod').Asstring <> QChqtran.FieldByname('Cuscod').Asstring) then
          SFMain.RaiseException('รหัสลูกค้าไม่ตรงกัน');
        QChqtran.FieldByname('Locatpay').Asstring := QContno.Fieldbyname('Locat').Asstring;
        QChqtran.FieldByname('PayAmt').AsFloat := QContno.Fieldbyname('Balance').Asfloat;
        QChqtran.FieldByname('TAXRT').AsFloat := QContno.Fieldbyname('VATRT').Asfloat;
      //--- เก็บยอดคงเหลือไว้ตรวจสอบ---
        Totprc_a := QContno.Fieldbyname('Totprc').Asfloat;
        Paid_a := QContno.Fieldbyname('Smpay').Asfloat + QContno.Fieldbyname('Smchq').Asfloat;
      end
      else
        SFMain.RaiseException('ไม่มีสัญญาหมายเลขนี้');
    end;
  //--- ขายไฟแนนซ์---
  if QChqtranTsale.Asstring = 'F' then
  begin
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT MAX(TMBILDT) TMBILDT,PAYAMT FROM CHQTRAN ' +
        'WHERE CUSCOD =:0 AND PAYFOR=''008'' AND FLAG <> ''C'' ' +
        'GROUP BY PAYAMT');
      params[0].AsString := QChqtran.FieldByname('Cuscod').Asstring;
      open;
    end;

    with QContno do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTNO,LOCAT,CUSCOD,NDAWN,VATDWN,DSCPRC,PAYDWN,PAYFIN,NFINAN,VATFIN, ' +
        'RESVNO,TOTPRC,TOTPRES,SMPAY,VATRT,INCLVAT,CRDAMT,' +
        'TOTPRC-SMPAY-SMCHQ-DSCPRC AS BALTOT_A,SMCHQ,(NDAWN+VATDWN)-DSCPRC-PAYDWN AS TOTDWN_A,' +
        'PAYDWN,NDAWN+VATDWN-PAYDWN AS BALDWN_A,NFINAN+VATFIN AS TOTFINC_A,' +
        'PAYFIN,NFINAN+VATFIN-PAYFIN+COMITN AS BALFINC_A,SDATE,STRNO,SALCOD,FINCOD,TOT_UPAY ' +
        'FROM ARFINC WHERE CONTNO=:0 ');
      Params[0].Asstring := QChqtranContno.Asstring;
      Open;
      if (Bof and Eof) then
        SFMain.RaiseException('ไม่มีสัญญาของลูกค้ารหัสนี้');

      if QChqmastTmbildt.AsDatetime < QContno.Fieldbyname('SDATE').AsdateTime then
        SFMain.RaiseException('ชำระเงินก่อนวันทำสัญญาขาย');
      QChqtran.FieldByname('CUSCOD').Asstring := QContno.Fieldbyname('CUSCOD').Asstring;
      QChqtran.FieldByname('Locatpay').Asstring := QContno.Fieldbyname('Locat').Asstring;
      QChqtran.FieldByname('TAXRT').AsFloat := QContno.Fieldbyname('VATRT').Asfloat;

      if QChqmast.FieldByname('CUSCOD').Asstring = '' then
        QChqmast.FieldByname('CUSCOD').Asstring := QChqtran.FieldByname('CUSCOD').Asstring
      else if QChqmast.FieldByname('CUSCOD').Asstring <> QChqtran.FieldByname('CUSCOD').Asstring then
        SFMain.RaiseException('รหัสลูกค้าไม่ตรงกัน');
      if QContno.Fieldbyname('TOTPRC').Asfloat = 0 then
        SFMain.RaiseException('ยอดหนี้ได้ทำการลดหนี้ไปแล้ว');

      if (QChqtran.FieldByname('Payfor').Asstring = '003') then
      begin
        QChqtran.FieldByname('PayAmt').AsFloat := QContno.Fieldbyname('TOTDWN_A').Asfloat;
        Totprc_a := QContno.Fieldbyname('BALTOT_A').Asfloat;
        Paid_a := QContno.Fieldbyname('PAYDWN').Asfloat;
      end
      else if (QChqtran.FieldByname('Payfor').Asstring = '004') then
      begin
        QChqtran.FieldByname('PayAmt').AsFloat := QContno.Fieldbyname('BALFINC_A').Asfloat;
        Totprc_a := QContno.Fieldbyname('NFINAN').Asfloat + QContno.Fieldbyname('VATFIN').Asfloat;
        Paid_a := QContno.Fieldbyname('PAYFIN').Asfloat;
      end
      else if (QChqtran.FieldByname('Payfor').Asstring = '011') then
      begin
        Totprc_a := QContno.Fieldbyname('Totprc').Asfloat;
        Paid_a := QContno.Fieldbyname('Smpay').Asfloat + QContno.Fieldbyname('Smchq').Asfloat;
        FinCod011 := QContno.Fieldbyname('FINCOD').Asstring;
      end
      else if (QChqtran.FieldByName('Payfor').AsString = '099') then
      begin
        QChqtran.FieldByName('PayAmt').AsFloat := QContno.fieldbyname('TOT_UPAY').AsFloat;
        Totprc_a := QContno.fieldbyname('TOT_UPAY').AsFloat;
        Paid_a := QContno.fieldbyname('SMPAY').AsFloat + QContno.fieldbyname('SMCHQ').AsFloat - QContno.fieldbyname('PAYDWN').AsFloat;
      end;
    end;
  end;
  //--- ขายอุปกรณ์---
  if QChqtranTsale.Asstring = 'O' then
  begin
    with QContno do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTNO,LOCAT,SDATE,VATRT,INCLVAT,OPTPTOT,SMPAY, ' +
        'SMCHQ,OPTPTOT-SMPAY-SMCHQ AS BALANCE,CUSCOD FROM AROPTMST WHERE CONTNO=:Edit1 ');
      Params[0].Asstring := QChqtranContno.Asstring;
      Open;
      if (Bof and Eof) then
        SFMain.RaiseException('ไม่มีสัญญาของลูกค้ารหัสนี้');

      if QChqmastTmbildt.AsDatetime < QContno.Fieldbyname('SDATE').AsdateTime then
        SFMain.RaiseException('ชำระเงินก่อนวันทำสัญญาขาย');
      QChqtran.FieldByname('Cuscod').Asstring := QContno.Fieldbyname('Cuscod').Asstring;
      QChqtran.FieldByname('Locatpay').Asstring := QContno.Fieldbyname('Locat').Asstring;
      if QChqmast.FieldByname('Cuscod').Asstring = '' then
        QChqmast.FieldByname('Cuscod').Asstring := QChqtran.FieldByname('Cuscod').Asstring
      else if QChqmast.FieldByname('Cuscod').Asstring <> QChqtran.FieldByname('Cuscod').Asstring then
        SFMain.RaiseException('รหัสลูกค้าไม่ตรงกัน');
      QChqtran.FieldByname('PayAmt').Asfloat := QContno.Fieldbyname('Balance').Asfloat;
      QChqtran.FieldByname('TAXRT').AsFloat := QContno.Fieldbyname('VATRT').Asfloat;
      Totprc_a := QContno.Fieldbyname('OPTPTOT').Asfloat;
      Paid_a := QContno.Fieldbyname('Smpay').Asfloat + QContno.Fieldbyname('Smchq').Asfloat;
    end;
  end;
  //--- เงินจองรถ---
  if QChqtranTsale.Asstring = 'R' then
  begin
    with QContno do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT RESVNO,LOCAT,RESVDT,RESPAY,VATRT,' +
        'SMPAY,SMCHQ,RESPAY-SMPAY-SMCHQ AS BALANCE,STRNO,CUSCOD ' +
        'FROM ARRESV WHERE RESVNO=:Edit1 AND FLCANCLE <>''C'' ');
      Params[0].Asstring := QChqtranContno.Asstring;
      Open;
      if (Bof and Eof) then
        SFMain.RaiseException('ไม่มีสัญญาของลูกค้ารหัสนี้');

      if QChqmastTmbildt.AsDatetime < QContno.Fieldbyname('RESVDT').AsdateTime then
        SFMain.RaiseException('ชำระเงินก่อนวันจองรถ');
      QChqtran.FieldByname('Cuscod').Asstring := QContno.Fieldbyname('Cuscod').Asstring;
      QChqtran.FieldByname('Locatpay').Asstring := QContno.Fieldbyname('Locat').Asstring;
      QChqtran.FieldByname('TAXRT').AsFloat := QContno.Fieldbyname('VATRT').Asfloat;
      if QChqmast.FieldByname('Cuscod').Asstring = '' then
        QChqmast.FieldByname('Cuscod').Asstring := QChqtran.FieldByname('Cuscod').Asstring
      else if QChqmast.FieldByname('Cuscod').Asstring <> QChqtran.FieldByname('Cuscod').Asstring then
        SFMain.RaiseException('รหัสลูกค้าไม่ตรงกัน');
      QChqtran.FieldByname('PayAmt').Asfloat := QContno.Fieldbyname('Balance').Asfloat;
      Totprc_a := QContno.Fieldbyname('Respay').Asfloat;
      Paid_a := QContno.Fieldbyname('Smpay').Asfloat + QContno.Fieldbyname('Smchq').Asfloat;
    end;
  end;
  //--- ขายส่งรถ---
  if QChqtranTsale.Asstring = 'A' then
  begin
    with QContno do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTNO,LOCAT,SDATE,TOTPRC,SMPAY,SMCHQ,TOTPRC-SMPAY-SMCHQ AS BALANCE,CUSCOD,VATRT,INCLVAT ' +
        'FROM AR_INVOI WHERE CONTNO=:Edit1 ');
      Params[0].Asstring := QChqtranContno.Asstring;
      Open;
      if (Bof and Eof) then
        SFMain.RaiseException('ไม่มีสัญญาของลูกค้ารหัสนี้');

      if QChqmastTmbildt.AsDatetime < QContno.Fieldbyname('SDATE').AsdateTime then
        SFMain.RaiseException('ชำระเงินก่อนวันทำสัญญาขาย');
      QChqtran.FieldByname('Cuscod').Asstring := QContno.Fieldbyname('Cuscod').Asstring;
      QChqtran.FieldByname('Locatpay').Asstring := QContno.Fieldbyname('Locat').Asstring;
      QChqtran.FieldByname('TAXRT').AsFloat := QContno.Fieldbyname('VATRT').Asfloat;
      if QChqmast.FieldByname('Cuscod').Asstring = '' then
        QChqmast.FieldByname('Cuscod').Asstring := QChqtran.FieldByname('Cuscod').Asstring
      else if QChqmast.FieldByname('Cuscod').Asstring <> QChqtran.FieldByname('Cuscod').Asstring then
        SFMain.RaiseException('รหัสลูกค้าไม่ตรงกัน');
      QChqtran.FieldByname('PayAmt').Asfloat := QContno.Fieldbyname('Balance').Asfloat;
      Totprc_a := QContno.Fieldbyname('Totprc').Asfloat;
      Paid_a := QContno.Fieldbyname('Smpay').Asfloat + QContno.Fieldbyname('Smchq').Asfloat;
    end;
  end;

  // ---ลูกหนี้อื่นๆ---
  if QChqtranTsale.Asstring = 'X' then
  begin
    with QContno do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM AROTHR WHERE ARCONT=:CONT_A AND PAYFOR=:XPAYFOR');
      Params[0].Asstring := QChqtranContno.Asstring;
      Params[1].Asstring := QChqtranPayfor.Asstring;
      Open;
      if not (Bof and Eof) then   //--- ตั้งลูกหนี้ ---
      begin
        if QChqmastTmbildt.AsDatetime < QContno.Fieldbyname('ARDATE').AsdateTime then
          SFMain.RaiseException('ชำระเงินก่อนวันทำสัญญาขาย');
        QChqtran.FieldByname('Cuscod').Asstring := QContno.Fieldbyname('Cuscod').Asstring;
        QChqtran.FieldByname('Locatpay').Asstring := QContno.Fieldbyname('Locat').Asstring;
        QChqtran.FieldByname('TAXRT').AsFloat := QContno.Fieldbyname('VATRT').Asfloat;
        QChqtran.FieldByname('PayAmt').Asfloat := QContno.Fieldbyname('Payamt').Asfloat -
          QContno.Fieldbyname('Smpay').Asfloat - QContno.Fieldbyname('Smchq').Asfloat;
        if QChqmast.FieldByname('Cuscod').Asstring = '' then
          QChqmast.FieldByname('Cuscod').Asstring := QChqtran.FieldByname('Cuscod').Asstring
        else if QChqmast.FieldByname('Cuscod').Asstring <> QChqtran.FieldByname('Cuscod').Asstring then
          SFMain.RaiseException('รหัสลูกค้าไม่ตรงกัน');
        Totprc_a := QContno.Fieldbyname('Payamt').Asfloat;
        Paid_a := QContno.Fieldbyname('Smpay').Asfloat + QContno.Fieldbyname('Smchq').Asfloat;
      end
      else
        SFMain.RaiseException('ไม่พบสัญญาในลูกหนี้อื่น !!!... ');
    end;
  end;



  // ---ลูกหนี้อื่น ไม่ได้ตั้งลูกหนี้---
  if QChqtranTsale.Asstring = 'T' then
  begin
    with QContno do
    begin
      Close;
      SQL.Clear;
      Sql.Add('SELECT CUSCOD,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD=:EDIT1');
      Params[0].Asstring := QChqtranContno.Asstring;
      Open;
      if (Bof and Eof) then
        SFMain.RaiseException('ไม่มีรหัสลูกค้ารายนี้ในแฟ้มประวัติ ' + #13#13 + 'กรุณา Setup รหัสลูกค้าก่อน');

      QChqtran.FieldByname('Cuscod').Asstring := QContno.Fieldbyname('Cuscod').Asstring;
      QChqtran.FieldByname('Locatpay').Asstring := QChqmastLOCATRECV.Asstring;
      if not Dm01.QCondpay.Active then
        Dm01.QCondpay.Open;
      if QChqmast.FieldByName('Taxfl').Asstring = 'Y' then
        QChqtran.FieldByname('TAXRT').AsFloat := Dm01.QCondpay.Fieldbyname('VAT').Asfloat
      else
        QChqtran.FieldByname('TAXRT').AsFloat := Dm01.QCondpay.Fieldbyname('VAT').Asfloat;
      if QChqmast.FieldByname('Cuscod').Asstring = '' then
        QChqmast.FieldByname('Cuscod').Asstring := QChqtran.FieldByname('Cuscod').Asstring
      else if QChqmast.FieldByname('Cuscod').Asstring <> QChqtran.FieldByname('Cuscod').Asstring then
        SFMain.RaiseException('รหัสลูกค้าไม่ตรงกัน');
    end;
  end;
end;

procedure TDmfin.QChqtranNewRecord(DataSet: TDataSet);
begin
  if QchqmastPaytyp.Asstring = '' then
    SFMain.RaiseException('ยังไม่ระบุชำระโดย');
  if QchqmastTmbill.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกใบรับชั่วคราว');
  ClearAsFloat(QChqtran);
  QChqtran.fieldbyname('Tmbill').asstring := QchqmastTmbill.Asstring;
  QChqtran.fieldbyname('DOSBILL').asstring := QchqmastDOSBILL.Asstring;
  QChqtran.fieldbyname('Tmbildt').asdatetime := QchqmastTmbildt.Asdatetime;
  QChqtran.fieldbyname('LocatRecv').asstring := QchqmastLocatrecv.Asstring;
  QChqtran.fieldbyname('Paytyp').asstring := QchqmastPaytyp.Asstring;
  QChqtran.fieldbyname('Chqdt').asdatetime := QchqmastTmbildt.Asdatetime;
  QChqtran.fieldbyname('Flag').asstring := 'H';
  QChqtran.fieldbyname('INPDT').AsDatetime := Now;
  QChqtran.fieldbyname('INPDATE').AsDatetime := Now;
  QChqtran.fieldbyname('USERID').Asstring := SFMain.XUser_ID;
end;

procedure TDmfin.QChqmastAfterCancel(DataSet: TDataSet);
begin
  if QChqmast.Active then
    QChqmast.CancelUpdates;
  if QChqtran.Active then
    QChqtran.CancelUpdates;
  if QChqtran_Oth.Active then
    QChqtran_Oth.CancelUpdates;
  if QChqtran_Dec.Active then
    QChqtran_Dec.CancelUpdates;
  if QChqtran_Typ.Active then
    QChqtran_Typ.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
  if QArpay.Active then
    QArpay.CancelUpdates;
end;

procedure TDmfin.QChqtranAfterPost(DataSet: TDataSet);
var
  Smnettot, nTotal: double;
  bk: Tbookmark;
  Xpayfor, XContno: string;
begin
  QChqtran.DisableControls;
  Smnettot := 0;
  Xpayamt := 0;
  bk := QChqtran.GetBookmark;
  Xpayfor := QChqtranPAYFOR.Asstring;
  XContno := QChqtranContno.Asstring;
  XCount := 0;

  QChqtran.first;
  while not QChqtran.Eof do
  begin
    if (QChqtran.FieldByname('PAYFOR').Asstring = Xpayfor) and
      (QChqtran.FieldByname('CONTNO').Asstring = XContno) then
    begin
      XCount := XCount + 1;
    end;
    Xpayamt := Xpayamt + QChqtranPAYAMT.Asfloat;
    Smnettot := Smnettot + QChqtranNETPAY.AsFloat;
    nTotal := nTotal + QChqtranNETPAY.AsFloat;
    QChqtran.Next;
  end;

  if QChqmast.State = Dsbrowse then
    QChqmast.Edit;
  QChqmastCHQTMP.Asfloat := Fround(Smnettot, 2);
  QChqmastChqAmt.Asfloat := Fround(Smnettot, 2);

  QChqtran.EnableControls;
  QChqtran.GotoBookMark(bk);
  QChqtran.FreeBookmark(bk);

  if XCount > 1 then
    SFMain.RaiseException('บันทึกข้อมูลไม่ได้เพราะมีรายการซ้ำ');
end;

procedure TDmfin.QChqtranBeforePost(DataSet: TDataSet);
begin
  if QChqtranPAYFOR.Asstring = '' then
    SFMain.RaiseException('ยังไม่ระบุประเภทการชำระ');
  if QChqtranCONTNO.Asstring = '' then
    SFMain.RaiseException('ยังไม่ระบุเลขที่สัญญา');
  if QChqmastUpdateStatus.Value = 'Inserted' then
    ClearAsFloat(QChqtran);
end;

procedure TDmFin.CanCelTmBill;
var
  S: string;
begin
  if QChqtranPayfor.Asstring = '008' then
  begin
    with Query1 do
    begin
      Close;
      Sql.clear;
      Sql.Add('SELECT CONTNO,RESVNO,LOCAT FROM ARCRED WHERE RESVNO=:V0 AND LOCAT=:V1 ' +
        'UNION SELECT CONTNO,RESVNO,LOCAT FROM ARFINC WHERE RESVNO=:V0 AND LOCAT=:V1');
      Params[0].Asstring := QChqtran.Fieldbyname('Contno').Asstring;
      Params[1].Asstring := QChqtran.Fieldbyname('Locatpay').Asstring;
      Open;
      if not (Bof and Eof) then
        SFMain.RaiseException('ใบจองนี้ขายรถแล้วไม่สามารถยกเลิกการรับเงินได้');
    end;
  end;

  QChqtran.First;
  while not (QChqtran.Eof) do
  begin
    QChqtran.Edit;
    QChqTranFlag.Asstring := 'C';
    QChqTranCandt.Asdatetime := Now;
    QChqTranUserid.Asstring := SFMain.Xuser_id;
    QChqtran.Next;
  end;

  QChqtran_Oth.First;
  while not (QChqtran_Oth.Eof) do
  begin
    QChqtran_Oth.Edit;
    QChqtran_OthCanfl.Asstring := 'C';
    QChqtran_OthCandt.Asdatetime := Now;
    QChqtran_Oth.Next;
  end;

  QChqtran_Dec.First;
  while not (QChqtran_Dec.Eof) do
  begin
    QChqtran_Dec.Edit;
    QChqtran_DecCanfl.Asstring := 'C';
    QChqtran_DecCandt.Asdatetime := Now;
    QChqtran_Dec.Next;
  end;

  QChqtran_Typ.First;
  while not (QChqtran_Typ.Eof) do
  begin
    QChqtran_Typ.Edit;
    QChqtran_TypCanfl.Asstring := 'C';
    QChqtran_TypCandt.Asdatetime := Now;
    QChqtran_Typ.Next;
  end;
  //---ยกเลิก Chqmast---
  QChqmast.Edit;
  QChqmastFlag.Asstring := 'C';
  QChqmastCandt.Asdatetime := Now;
  QChqmastUserid.Asstring := SFMain.Xuser_id;
  QChqmast.Post;
  // ยกเลิกใบกำกับภาษี
  if QChqmastTaxno.Asstring <> '' then
    with QTaxtran do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT * FROM TAXTRAN WHERE TAXNO=:TAXNO_A ');
      Params[0].Asstring := QChqmastTaxno.Asstring;
      Open;
      if not (BOF and Eof) then
      begin
        QTaxtran.Edit;
        FieldByname('Flag').Asstring := 'C';
        FieldByname('Candt').AsDatetime := Now;
        FieldByname('Userid').Asstring := SFMain.Xuser_id;
        FieldByname('SNAM').AsString := '';
        FieldByname('NAME1').AsString := '';
        FieldByname('NAME2').AsString := '';
        FieldByname('VATRT').AsFloat := 0;
        FieldByname('NETAMT').AsFloat := 0;
        FieldByname('VATAMT').AsFloat := 0;
        FieldByname('TOTAMT').AsFloat := 0;
        QTaxtran.Post;
      end;
    end;
end;

procedure TDmfin.QChqtranPAYAMTValidate(Sender: TField);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM VIEW_SALEALLGL WHERE CONTNO=:CONTNO');
    params[0].AsString := QChqtranCONTNO.AsString;
    open;
    if not (query1.Eof and query1.Bof) then
    begin
      if QChqtranPAYAMT.AsFloat > query1.FieldByName('KANG').AsFloat then
        SFMain.RaiseException('ยอดชำระที่บันทึกมากกว่ายอดคงเหลือ<br/>กรุณาตรวจสอบข้อมูลก่อนบันทึก..!');
    end;
  end;

  if QChqtranTaxrt.Asfloat > 0 then
  begin
    QChqtranPAYAMT_V.Asfloat := Fround(QChqtranPAYAMT.Asfloat * QChqtranTAXRT.Asfloat / (100 + QChqtranTAXRT.Asfloat), 2);
    QChqtranPAYAMT_N.Asfloat := QChqtranPAYAMT.Asfloat - QChqtranPAYAMT_V.Asfloat;
    QChqtranVATAMTPAY.AsFloat := Fround((QChqtranPAYAMT_N.Asfloat * QChqtranVATRTPAY.AsFloat) / 100, 2);
  end
  else
  begin
    QChqtranPAYAMT_V.Asfloat := 0;
    QChqtranPAYAMT_N.Asfloat := QChqtranPAYAMT.Asfloat;
    QChqtranVATAMTPAY.AsFloat := Fround((QChqtranPAYAMT.Asfloat * QChqtranVATRTPAY.AsFloat) / 100, 2);
  end;
end;

procedure TDmfin.QBillmasAfterPost(DataSet: TDataSet);
var
  S1, L1: string;
begin
  S1 := QBillmas.Fieldbyname('BILLNO').Asstring;
  L1 := QBillmas.Fieldbyname('LOCATRECV').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QBillmas.Active then
      if (QBillmas.ApplyUpdates = 0) then
        QBillmas.CommitUpdates
      else
        raise Exception.Create(QBillmas.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QBillmas.Edit;
    QBillmas.Post;
    S1 := QBillmas.Fieldbyname('BILLNO').Asstring;
    L1 := QBillmas.Fieldbyname('LOCATRECV').Asstring;
  end;
   //
  with QBillmas do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM BILLMAS WHERE BILLNO=:BILL AND LOCATRECV=:LOC');
    Params[0].Asstring := S1;
    Params[1].AsString := L1;
    Open;
  end;
end;

procedure TDmFin.RunBill;
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM PAYTYP WHERE PAYCODE=:PAY_A');
    Params[0].Asstring := QChqmastPaytyp.Asstring;
    Open;
    if (BOF and EOF) then
      SFMain.RaiseException('ไม่พบรหัสประเภทการชำระเงิน')
    else
      Rb := Query1.FieldByname('Rlbill').Asstring;
  end;

  Rb := Query1.FieldByname('Rlbill').Asstring;
  //---RB='Y' Run Bill---
  if (RB = 'Y') and (QChqmast.Fieldbyname('BILLNO').asstring = '') then
  begin
    with QBillmas do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT * FROM BILLMAS WHERE BILLNO=:XBILL');
      Params[0].Asstring := '';
      Open;
      Insert;
    end;
    Dmfin.QBillmas.Post;
  end;
end;

procedure TDmfin.Runtaxno;
var
  Tax_nop: Double;
begin
  // --- ออกใบกำกับภาษี ---
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  if QChqmastTAXFL.Asstring = 'Y' then
  begin
    with Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select Cuscod,Snam,Name1,Name2 From Custmast Where Cuscod= :0');
      Params[0].AsString := QChqmastCuscod.Asstring;
      Open;
    end;
    //
    with QTaxtran do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1 AND LOCAT=:EDIT2');
      Params[0].Asstring := '';
      Params[1].Asstring := '';
      Open;
      XVatamt := FRound(Xpayamt * Dm01.QCondpay.Fieldbyname('Vat').Asfloat / (100 + Dm01.QCondpay.Fieldbyname('Vat').Asfloat), 2);
      Vat1 := Dm01.QCondpay.Fieldbyname('Vat').Asfloat;
      if (Xvatamt > 0) then
      begin
        if (Copy(QChqtranPAYFOR.Asstring, 1, 1) <> '0') or (QChqtranPAYFOR.Asstring = '001') or
          (QChqtranPAYFOR.Asstring = '004') or (QChqtranPAYFOR.Asstring = '011') then
        begin
          Insert;
          Fieldbyname('Locat').Asstring := QChqtranLocatpay.Asstring;
          QTaxtran.fieldbyname('Taxdt').asdatetime := QchqmastTmbildt.Asdatetime;
          if (QChqtranPAYFOR.Asstring = '001') then
          begin
            Fieldbyname('Tsale').Asstring := 'C';
            Fieldbyname('Taxtyp').Asstring := 'S';
          end
          else if (QChqtranPAYFOR.Asstring = '004') then
          begin
            Fieldbyname('Tsale').Asstring := 'F';
            Fieldbyname('Taxtyp').Asstring := 'S';
          end
          else
          begin
            QTaxtran.fieldbyname('Taxdt').asdatetime := QchqmastTmbildt.Asdatetime;
            Fieldbyname('Tsale').Asstring := QChqtran.Fieldbyname('TSALE').Asstring;
            Fieldbyname('Taxtyp').Asstring := 'O';
            Fieldbyname('Vatrt').Asfloat := Dm01.QCondpay.Fieldbyname('Vat').Asfloat;
          end;
          Fieldbyname('Tmbill').Asstring := QChqmast.Fieldbyname('Tmbill').Asstring;
          Fieldbyname('Contno').Asstring := QChqtran.Fieldbyname('Contno').Asstring;
          Fieldbyname('Cuscod').Asstring := QChqtran.Fieldbyname('Cuscod').Asstring;
          Fieldbyname('Snam').Asstring := Query1.Fieldbyname('Snam').Asstring;
          Fieldbyname('Name1').Asstring := Query1.Fieldbyname('Name1').Asstring;
          Fieldbyname('Name2').Asstring := Query1.Fieldbyname('Name2').Asstring;
          Fieldbyname('Strno').Asstring := '';
          Fieldbyname('Descp').Asstring := Xdescp;
          Fieldbyname('Totamt').Asfloat := Xpayamt;
          Fieldbyname('Vatamt').Asfloat := XVatamt;
          Fieldbyname('Netamt').Asfloat := Xpayamt - XVatamt;
          Fieldbyname('Taxflg').Asstring := 'N';
          Fieldbyname('InpDt').AsDateTime := Now;
          Fieldbyname('Userid').Asstring := SFMain.Xuser_id;
          if QChqtranPAYFOR.Asstring = '011' then
            Fieldbyname('FINCOD').Asstring := Fincod011;
          QTaxtran.Post;
        end;
      end;
    end;
  end;
end;

procedure TDmfin.QBillmasLOCATRECVValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT, XPAYFOR, RF, cdigit: string;
  DV: TdateTime;
  ckdigit: integer;
begin
  XPAYFOR := Qchqtran.FieldByName('PAYFOR').AsString;
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  if (XPAYFOR = '001') then
  begin
    if Dm01.QCondpay.FieldByName('CALREG').AsString = 'Y' then
    begin
      HF := 'H_BILLNO';
      LF := 'L_BILLNO';
      RF := 'R_BILLNO';
    end
    else
    begin
      HF := 'H_BILLCS';
      LF := 'L_BILLCS';
      RF := 'R_BILLCS';
    end;
  end
  else if (XPAYFOR = '003') or (XPAYFOR = '004') then
  begin
    if Dm01.QCondpay.FieldByName('CALREG').AsString = 'Y' then
    begin
      HF := 'H_BILLNO';
      LF := 'L_BILLNO';
      RF := 'R_BILLNO';
    end
    else
    begin
      HF := 'H_BILLFN';
      LF := 'L_BILLFN';
      RF := 'R_BILLFN';
    end;
  end
  else if (XPAYFOR = '008') or (XPAYFOR = '009') then
  begin
    if Dm01.QCondpay.FieldByName('CALREG').AsString = 'Y' then
    begin
      HF := 'H_BILLNO';
      LF := 'L_BILLNO';
      RF := 'R_BILLNO';
    end
    else
    begin
      HF := 'H_BILLAG';
      LF := 'L_BILLAG';
      RF := 'R_BILLAG';
    end;
  end
  else if (XPAYFOR = '005') then
  begin
    if Dm01.QCondpay.FieldByName('CALREG').AsString = 'Y' then
    begin
      HF := 'H_BILLNO';
      LF := 'L_BILLNO';
      RF := 'R_BILLNO';
    end
    else
    begin
      HF := 'H_BILLOP';
      LF := 'L_BILLOP';
      RF := 'R_BILLOP';
    end;
  end
  else
  begin
    HF := 'H_BILOTH';
    LF := 'L_BILOTH';
    RF := 'R_BILOTH';
  end;

  if not Dm01.QCondPay.Active then
    Dm01.QCondPay.Open;
  cdigit := Trim(Dm01.QCondPay.FieldByName(HF).AsString);
  ckdigit := length(cdigit);

  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  if Dm01.QDBConfig.Fieldbyname(RF).asstring = 'Y' then
  begin
    LV := QChqmast.Fieldbyname('LOCATRECV').asstring;

    if QChqmast.Fieldbyname('Paytyp').asstring <> '02' then
      DV := QChqmast.Fieldbyname('TMBILDT').asDatetime
    else
      DV := QChqmast.Fieldbyname('PAYDT').asDatetime;

//    If (QChqmast.Fieldbyname('BILLNO').asstring='') Then
//    begin
//      QBillmasBILLNO.Asstring := Dm01.RunDocNo(HF,LF,LV,DV);
//    end;

    if (QChqmast.Fieldbyname('BILLNO').asstring = '') then
    begin
      if ckdigit = 1 then
      begin
        SQLTXT := 'SELECT MAX(BILLNO) AS MAXNO FROM BILLMAS WHERE LOCATRECV=:EDIT1 AND ' +
          'SUBSTR(BILLNO,2,1)=:EDIT2 AND SUBSTR(BILLNO,4,2)=:EDIT3 AND SUBSTR(BILLNO,6,2)=:EDIT4';
        QBillmasBILLNO.Asstring := Dm01.Maxno1(HF, LF, LV, SQLTXT, DV);
      end
      else
      begin
        SQLTXT := 'SELECT MAX(BILLNO) AS MAXNO FROM BILLMAS WHERE LOCATRECV=:EDIT1 AND ' +
          'SUBSTR(BILLNO,2,2)=:EDIT2 AND SUBSTR(BILLNO,5,2)=:EDIT3 AND SUBSTR(BILLNO,7,2)=:EDIT4';
        QBillmasBILLNO.Asstring := Dm01.Maxno(HF, LF, LV, SQLTXT, DV);
      end;
    end;
  end
  else
    QBillmasBILLNO.Asstring := InputBox('บันทึกเลขที่ใบเสร็จ', 'เลขที่ใบเสร็จ', '');
end;

procedure TDmfin.QBillmasNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QBillmas);
  QBillmas.FieldByName('LOCATRECV').Asstring := QChqmastLOCATRECV.Asstring;
end;

procedure TDmfin.QBillmasBeforePost(DataSet: TDataSet);
begin
  if QBillmasUpdateStatus.Value = 'Inserted' then
  begin
    //Rerun
    if Duplicate then
      QBillmasLOCATRECVValidate(QBillmasLOCATRECV);
    QBillmas.FieldByName('FLAG').Asstring := QChqmastFLAG.Asstring;
    QBillmas.FieldByName('Tmbill').Asstring := QChqmastTmbill.Asstring;
    if QChqmastPaytyp.Asstring = '02' then
      QBillmas.FieldByName('billdt').Asdatetime := QChqmastPAYDT.Asdatetime
    else
      QBillmas.FieldByName('billdt').Asdatetime := QChqmastTMBILDT.Asdatetime;
    QBillmas.FieldByName('inpdt').Asdatetime := QChqmast.FieldByName('inpdt').Asdatetime;
    QBillmas.FieldByName('userid').Asstring := QChqmastuserid.Asstring;
  end;
end;

procedure TDmfin.QBillmasCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if QBillmas.CachedUpdates then
    QBillmasUpdateStatus.Value := UpdateStatusStr[QBillmas.UpdateStatus];
end;

procedure TDmfin.QTaxtranNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QTaxtran);
end;

procedure TDmFin.Uparpay;
var
  Payment_a, Npayment, Lost_a, Vatrt_F, Vatrt_L, Vatamt: Double;
  Delay_a, Advdue_a, Fpay_a, Lpay_a, Dlday_a, D1, D2, Delyrt_a: Double;
  Fpar_a, Lpar_a: string;
  Date_a: Tdatetime;
  YNopay: Integer;
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select count(tmbill) As nopay From chqtran Where ' +
      'Contno= :0 and locatpay=:1 and ' +
      '(payfor = ''006'' or payfor=''007'') ');
    Params[0].Asstring := QChqtranContno.Asstring;
    Params[1].Asstring := QChqtranLocatpay.Asstring;
    Open;
    if (eof and bof) then
      YNopay := 1
    else
      YNopay := FieldByName('Nopay').AsInteger;
  end;
  with QArPay do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM ARPAY WHERE CONTNO=:CONT_A AND LOCAT=:LOCAT_A ');
    Params[0].Asstring := QChqtranContno.Asstring;
    Params[1].Asstring := QChqtranLocatpay.Asstring;
    Open;
    if (BOF and Eof) then
      SFMain.RaiseException('ไม่มีตารางสัญญาค่างวด');
  end;
  //--- Payfor007 ---
  if (QChqtran.FieldByname('Payfor').Asstring = '007') then
  begin
    Delyrt_a := QContno.Fieldbyname('Delyrt').Asfloat; //-- อัตาเบี้ยปรับล่าช้า --
    Dlday_a := QContno.Fieldbyname('Dlday').Asfloat;
    if QChqmastPaydt.Asstring = '' then
      Date_a := QChqmastTmbildt.Asdatetime
    else
      Date_a := QChqmastPaydt.Asdatetime;
    //Vat1    := QContno.Fieldbyname('Vatrt').Asfloat;
    QArpay.First;
    while not Qarpay.Eof do
    begin
      D1 := D1 + FRound(QArpay.Fieldbyname('Damt').Asfloat, 2);
      D2 := D2 + FRound(QArpay.Fieldbyname('Payment').Asfloat, 2);
      QArpay.Next;
    end;
    if (D1 = D2) and (D1 <> 0) and (D2 <> 0) then
      SFMain.RaiseException('ลูกค้ารายนี้จ่ายงวดครบแล้ว');
    {ตรวจสอบยอดคงเหลือและยอดชำระ}
    D1 := FRound(QChqtranPayamt.Asfloat, 2);
    D2 := FRound(QContno.Fieldbyname('TOTKANG').Asfloat, 2);
    if D1 > D2 then
      SFMain.RaiseException('ชำระค่างวดมากกว่ายอดคงเหลือ');
    {ตรวจสอบยอดค้างดาวน์}
    D1 := FRound(QContno.Fieldbyname('TOTDWN').Asfloat, 2);
    D2 := FRound(QContno.Fieldbyname('Paydwn').Asfloat, 2);
    if D1 <> D2 then
      SFMain.RaiseException('ยังชำระเงินดาวน์ไม่ครบ');
  end;
  //--------------------------------------------------------
  //--- Payfor006 or Payfor007 ---
  if (QChqtran.FieldByname('Payfor').Asstring = '006') or
    (QChqtran.FieldByname('Payfor').Asstring = '007') or
    (QChqtran.FieldByname('Payfor').Asstring = '901') then
  begin
    //--- Update Armast use Trigger AFTINS_PAY006---
    //--- Update Arpay and Chqtran ---
    Delyrt_a := QContno.Fieldbyname('Delyrt').Asfloat; //-- อัตราเบี้ยปรับล่าช้า --
    Dlday_a := QContno.Fieldbyname('Dlday').Asfloat;
    if QChqmastPaydt.Asstring = '' then
      Date_a := QChqmastTmbildt.Asdatetime
    else
      Date_a := QChqmastPaydt.Asdatetime;

    QArPay.First;
    while (not QArpay.Eof) and (QArpay.Fieldbyname('Damt').Asfloat = QArpay.Fieldbyname('Payment').Asfloat) do
      QArPay.Next;

    Fpay_a := QArpay.Fieldbyname('Nopay').Asfloat;
    Lpay_a := QArpay.Fieldbyname('Nopay').Asfloat;
    Vatrt_F := QArpay.Fieldbyname('Vatrt').Asfloat;
    Vatrt_L := QArpay.Fieldbyname('Vatrt').Asfloat;
    Lost_a := FRound((QArpay.Fieldbyname('Damt').Asfloat - QArpay.Fieldbyname('Payment').Asfloat), 2);
    Vat1 := QArpay.Fieldbyname('Vatrt').Asfloat;
    Vatamt := 0;

    if Date_a > (QArpay.Fieldbyname('Ddate').Asdatetime + Dlday_a) then
    begin
      Delay_a := Date_a - QArpay.Fieldbyname('Ddate').Asdatetime;
      Advdue_a := 0;
    end
    else if Date_a < QArpay.Fieldbyname('Ddate').Asdatetime then
    begin
      Advdue_a := QArpay.Fieldbyname('Ddate').Asdatetime - Date_a;
      Delay_a := 0;
    end
    else
    begin
      Advdue_a := 0;
      Delay_a := 0;
    end;
    //
    if Lost_a <> QArpay.Fieldbyname('Damt').Asfloat then {มีการจ่ายไปบางส่วนแล้ว}
    begin
      Fpar_a := '*';
      if QChqtran.Fieldbyname('Payamt').Asfloat >= Lost_a then
      begin
        Payment_a := QArpay.Fieldbyname('Damt').Asfloat;
        Npayment := FRound(QChqtran.Fieldbyname('Payamt').Asfloat - Lost_a, 2);
        Lpar_a := '';
        Vatamt := Vatamt + (QArpay.Fieldbyname('V_Damt').Asfloat - QArpay.Fieldbyname('V_Payment').Asfloat);
      end
      else
      begin
        Payment_a := FRound(QArpay.Fieldbyname('Payment').Asfloat + QChqtran.Fieldbyname('Payamt').Asfloat, 2);
        Npayment := 0;
        Lpar_a := '*';
        Vatamt := Vatamt + FRound(QChqtran.Fieldbyname('Payamt').Asfloat * Vat1 / (100 + Vat1), 2);
      end;
    end
    else
    begin
      Fpar_a := '';
      if QChqtran.Fieldbyname('Payamt').Asfloat >= QArpay.Fieldbyname('Damt').Asfloat then
      begin
        Payment_a := QArpay.Fieldbyname('Damt').Asfloat;
        Npayment := FRound(QChqtran.Fieldbyname('Payamt').Asfloat - QArpay.Fieldbyname('Damt').Asfloat, 2);
        Lpar_a := '';
        Vatamt := Vatamt + QArpay.Fieldbyname('V_Damt').Asfloat;
      end
      else
      begin
        Payment_a := FRound(QChqtran.Fieldbyname('Payamt').Asfloat, 2);
        Npayment := 0;
        Lpar_a := '*';
        Vatamt := Vatamt + FRound(QChqtran.Fieldbyname('Payamt').Asfloat * Vat1 / (100 + Vat1), 2);
      end;
    end;
    //
    QArpay.Edit;
    Vat1 := QArpay.Fieldbyname('Vatrt').Asfloat;
    QArpay.Fieldbyname('Date1').Asdatetime := Date_a;
    QArpay.Fieldbyname('Payment').Asfloat := Payment_a;
    if QArpay.Fieldbyname('Damt').Asfloat = QArpay.Fieldbyname('Payment').Asfloat then
      QArpay.Fieldbyname('V_Payment').Asfloat := QArpay.Fieldbyname('V_Damt').Asfloat
    else
      QArpay.Fieldbyname('V_Payment').Asfloat := FRound(QArpay.Fieldbyname('Payment').Asfloat * Vat1 / (100 + Vat1), 2);
    QArpay.Fieldbyname('N_Payment').Asfloat := QArpay.Fieldbyname('Payment').Asfloat - QArpay.Fieldbyname('V_Payment').Asfloat;
    QArpay.Fieldbyname('delay').Asfloat := Delay_a;
    QArpay.Fieldbyname('Advdue').Asfloat := Advdue_a;
    QArpay.Next;

    while (not QArpay.Eof) and (Npayment > 0) do
    begin
      Vat1 := QArpay.Fieldbyname('Vatrt').Asfloat;
      Vatrt_L := QArpay.Fieldbyname('Vatrt').Asfloat;
      if Date_a > (QArpay.Fieldbyname('Ddate').Asdatetime + Dlday_a) then
      begin
        Delay_a := Date_a - QArpay.Fieldbyname('Ddate').Asdatetime;
        Advdue_a := 0;
      end
      else if Date_a < QArpay.Fieldbyname('Ddate').Asdatetime then
      begin
        Advdue_a := QArpay.Fieldbyname('Ddate').Asdatetime - Date_a;
        Delay_a := 0;
      end
      else
      begin
        Advdue_a := 0;
        Delay_a := 0;
      end;
      if Npayment >= QArpay.Fieldbyname('Damt').Asfloat then
      begin
        Payment_a := QArpay.Fieldbyname('Damt').Asfloat;
        Npayment := FRound(Npayment - QArpay.Fieldbyname('Damt').Asfloat, 2);
        Vatamt := Vatamt + QArpay.Fieldbyname('V_Damt').Asfloat;
      end
      else
      begin
        Payment_a := Npayment;
        Npayment := 0;
        Vatamt := Vatamt + FRound(Payment_a * Vat1 / (100 + Vat1), 2);
      end;

      QArpay.Edit;
      QArpay.Fieldbyname('Date1').Asdatetime := Date_a;
      QArpay.Fieldbyname('Payment').Asfloat := Payment_a;
      if QArpay.Fieldbyname('Damt').Asfloat = QArpay.Fieldbyname('Payment').Asfloat then
        QArpay.Fieldbyname('V_Payment').Asfloat := QArpay.Fieldbyname('V_Damt').Asfloat
      else
        QArpay.Fieldbyname('V_Payment').Asfloat := FRound(Payment_a * Vat1 / (100 + Vat1), 2);
      QArpay.Fieldbyname('N_Payment').Asfloat := Payment_a - QArpay.Fieldbyname('V_Payment').Asfloat;
      QArpay.Fieldbyname('delay').Asfloat := Delay_a;
      QArpay.Fieldbyname('Advdue').Asfloat := Advdue_a;
      //Check Last Nopay
      Lpay_a := QArpay.Fieldbyname('Nopay').Asfloat;
      Lost_a := FRound(QArpay.Fieldbyname('Damt').Asfloat - QArpay.Fieldbyname('Payment').Asfloat, 2);
      if Lost_a = 0 then
        Lpar_a := ''
      else
        Lpar_a := '*';
      QArpay.Next;
    end;
    //QArpay.Post;
    if Vatrt_F <> Vatrt_L then
      SFMain.RaiseException('มีภาษีสองอัตราในการรับเงินรายการนี้');

    QChqtran.FieldByName('Nopay').AsInteger := YNopay;
    QChqtran.FieldByName('F_par').Asstring := Fpar_a;
    QChqtran.FieldByName('F_pay').AsFloat := Fpay_a;
    QChqtran.FieldByName('L_par').Asstring := Lpar_a;
    QChqtran.FieldByName('L_pay').AsFloat := Lpay_a;
    QChqtran.FieldByName('TAXRT').AsFloat := VAT1;
    QChqtran.FieldByName('Payamt_v').AsFloat := Vatamt;
    QChqtran.FieldByName('Payamt_N').AsFloat := QChqtran.FieldByName('Payamt').AsFloat - QChqtran.FieldByName('Payamt_v').AsFloat;
  end;
end;

procedure TDmfin.CanchqmstAfterPost(DataSet: TDataSet);
var
  S, Loc: string;
begin
  S := Canchqmst.Fieldbyname('TMBILL').Asstring;
  Loc := Canchqmst.Fieldbyname('LOCATRECV').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if Canchqmst.Active then
      if (Canchqmst.ApplyUpdates = 0) then
        Canchqmst.CommitUpdates
      else
        raise Exception.Create(Canchqmst.RowError.Message);
    if CanChqtrn.Active then
      if (CanChqtrn.ApplyUpdates = 0) then
        CanChqtrn.CommitUpdates
      else
        raise Exception.Create(CanChqtrn.RowError.Message);
    if QArpay.Active then
      if (QArpay.ApplyUpdates = 0) then
        QArpay.CommitUpdates
      else
        raise Exception.Create(QArpay.RowError.Message);
    if QTaxtran.Active then
      if (QTaxtran.ApplyUpdates = 0) then
        QTaxtran.CommitUpdates
      else
        raise Exception.Create(QTaxtran.RowError.Message);
    if Qarmast.Active then
      if (Qarmast.ApplyUpdates = 0) then
        Qarmast.CommitUpdates
      else
        raise Exception.Create(Qarmast.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    Canchqmst.Edit;
    raise;
  end;
   //
  with Canchqmst do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQMAS WHERE TMBILL=:v0 and LOCATRECV=:v1');
    Params[0].asstring := S;
    Params[1].asstring := Loc;
    Open;
  end;

  with QContno do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT A.CONTNO,A.LOCATPAY,A.TMBILL,B.SNAM,B.NAME1,B.NAME2,' +
      'C.STRNO,C.DLDAY,C.SDate,C.NDawn,C.VatDwn,C.Vatrt ' +
      'FROM CHQTRAN A,CUSTMAST B,ARMAST C WHERE ' +
      'A.CONTNO=C.CONTNO AND A.CUSCOD=B.CUSCOD AND A.TMBILL=:XBILL AND A.LOCATRECV=:LOC');
    Params[0].Asstring := S;
    Params[1].Asstring := Loc;
    Open;
  end;

  with ShwChqtrn do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT * FROM CHQTRAN WHERE CONTNO=:XCONT AND LOCATPAY=:V1 ' +
      'AND (PAYFOR=''006'' OR PAYFOR=''007'') ORDER BY TMBILDT');
    Params[0].Asstring := QContno.Fieldbyname('Contno').Asstring;
    Params[1].Asstring := QContno.Fieldbyname('Locatpay').Asstring;
    Open;
  end;

  ShwChqtrn.First;
  while not (ShwChqtrn.eof) do
  begin
    if (CanChqmst.Fieldbyname('Tmbill').Asstring <> ShwChqtrn.Fieldbyname('Tmbill').Asstring) then
      ShwChqtrn.Next
    else if (CanChqmst.Fieldbyname('Locatrecv').Asstring <> ShwChqtrn.Fieldbyname('Locatrecv').Asstring) then
      ShwChqtrn.Next
    else
      Break;
  end;
end;

//---คำนวณวันล่าช้า---
function TDmFin.CalDelay: Double;
var
  XLate_a, Lost, Dlday_a: Double;
  Date_a: Tdatetime;
begin
  {คำนวณวันล่าช้า}
  if not (Qarmast.Active) then
    with Qarmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT DLDAY,DELYRT FROM ARMAST WHERE CONTNO=:V0 AND LOCAT=:V1');
      Params[0].Asstring := QChqtran.Fieldbyname('Contno').Asstring;
      Params[1].Asstring := QChqtran.Fieldbyname('LocatPay').Asstring;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบสัญญา');
    end;
  Dlday_a := QArmast.Fieldbyname('Dlday').Asfloat;

  Date_a := QChqmastTmbildt.Asdatetime;
  Lost := QArpay.Fieldbyname('Damt').Asfloat - QArpay.Fieldbyname('Payment').Asfloat;
  if QArpay.Fieldbyname('Date1').Asstring = '' then
  begin
    if Date_a > (QArpay.Fieldbyname('Ddate').Asdatetime + Dlday_a) then
      XLate_a := Date_a - QArpay.Fieldbyname('Ddate').Asdatetime
    else
      XLate_a := 0;
  end
  else
  begin
    if Lost > 0 then
    begin
      if Date_a > (QArpay.Fieldbyname('Ddate').Asdatetime + Dlday_a) then
        XLate_a := Date_a - QArpay.Fieldbyname('Ddate').Asdatetime
      else
        XLate_a := 0;
    end
    else
    begin     {Lost=0 ชำระเต็มงวด}
      if QArpay.Fieldbyname('date1').Asdatetime > (QArpay.Fieldbyname('Ddate').Asdatetime + Dlday_a) then
        XLate_a := QArpay.Fieldbyname('date1').Asdatetime - QArpay.Fieldbyname('Ddate').Asdatetime
      else
        XLate_a := 0;
    end;
  end;
  Result := XLate_a;
end;

//---------------------------------------------------------
//                      คำนวณส่วนลดตัดสด
//---------------------------------------------------------
procedure TDmFin.DscPaymnt;
begin
{  CalDisc.XContno := QChqtranContno.Asstring;
  CalDisc.XLocat  := QChqtranLoCatPay.Asstring;
  CalDisc.Xdate   := QChqmastTmbildt.Asdatetime;

  With QArmast Do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT TOTPRC,SMPAY,SMCHQ,T_NOPAY,NPRICE,NCSHPRC,VATRT,'+
    'NPROFIT,CALDSC FROM ARMAST WHERE CONTNO=:XCONT AND LOCAT=:V1');
    Params[0].Asstring := QChqtranContno.Asstring;
    Params[1].Asstring := QChqtranLoCatPay.Asstring;
    Open;
    If (BOF and Eof) then
    SFMain.RaiseException('ไม่พบเลขที่สัญญานี้');
  end;
  TFintr := CalDisc.Sumintr-CalDisc.Paidintr ;
  TFkang :=QArmast.Fieldbyname('Totprc').Asfloat-QArmast.Fieldbyname('SmPay').Asfloat-
          QArmast.Fieldbyname('SmChq').Asfloat;

  If Not(Dm01.QCondpay.Active) Then Dm01.QCondpay.Open;
  If QArmast.Fieldbyname('Caldsc').Asstring = '1' then
     Caldisc1 ;
  If QArmast.Fieldbyname('Caldsc').Asstring = '2' then
     Caldisc2 ;
  If QArmast.Fieldbyname('Caldsc').Asstring = '3' then
     Caldisc3 ;
  If QArmast.Fieldbyname('Caldsc').Asstring = '4' then
     Caldisc4 ;

  ShwDscForm1.TKang   := CalDisc.TFKang;
  ShwDscForm1.TDisc   := CalDisc.TFDisc ;
  ShwDscForm1.BalProf := CalDisc.BalFProf;
  ShwDscForm1.BalProfSTR := CalDisc.BalFProfSTR;
  ShwDscForm1.Tintr   := TFintr;     }
//-----------------------------------

  CalDisc.XContno := QChqtranContno.Asstring;
  CalDisc.XLocat := QChqtranLoCatPay.Asstring;
  CalDisc.Xdate := QChqmastTmbildt.Asdatetime;
  with QArmast do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT TOTPRC,SMPAY,SMCHQ,T_NOPAY,NPRICE,NCSHPRC,VATRT,' +
      'NPROFIT,CALDSC FROM ARMAST WHERE CONTNO=:XCONT AND LOCAT=:V1');
    Params[0].Asstring := QChqtranContno.Asstring;
    Params[1].Asstring := QChqtranLoCatPay.Asstring;
    Open;
    if (BOF and Eof) then
      SFMain.RaiseException('ไม่พบเลขที่สัญญานี้');
  end;
  Tintr := (CalDisc.Sumintr - CalDisc.Paidintr);

  if not (Dm01.QCondpay.Active) then
    Dm01.QCondpay.Open;
  if QArmast.Fieldbyname('Caldsc').Asstring = '1' then
    Caldisc1;
  if QArmast.Fieldbyname('Caldsc').Asstring = '2' then
    Caldisc2;
  if QArmast.Fieldbyname('Caldsc').Asstring = '3' then
    Caldisc3;
  if QArmast.Fieldbyname('Caldsc').Asstring = '4' then
    Caldisc4;

  ShwDscForm1.TKang := CalDisc.TFKang;
  if Dm_cal.QArmast.Fieldbyname('Caldsc').Asstring = '4' then
    ShwDscForm1.TDisc := CalDisc.TFDiscpc
  else
    ShwDscForm1.TDisc := CalDisc.TFDisc;
  ShwDscForm1.BalProf := CalDisc.BalFProf;
  ShwDscForm1.BalProfStr := CalDisc.BalFProfStr;
  ShwDscForm1.Tintr := Tintr;
  ShwDscForm1.Label6.Caption := CalDisc.ShowDesc;
end;

procedure TDmfin.QTaxtranTAXDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  QChqtran.First;
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;

  if (Copy(QChqtran.Fieldbyname('PAYFOR').asstring, 1, 1) <> '0') or
    (QChqtran.Fieldbyname('PAYFOR').asstring = '010') or
    (QChqtran.Fieldbyname('PAYFOR').asstring = '012') or
    (QChqtran.Fieldbyname('PAYFOR').asstring = '011') then
  begin
 //    if Dm01.QCondpay.FieldByName('VERSION').AsString='Y' then
 //    begin
    HF := 'H_TXOTHR';
    LF := 'L_TXOTHR';
  //   end else
 //    begin
  //      HF := 'H_TXOTHR';
  //      LF := 'L_TXOTHR';
 //   end;
  end
  else if (QChqtran.Fieldbyname('PAYFOR').asstring = '001') then
  begin
    if Dm01.QCondpay.FieldByName('VERSION').AsString = 'Y' then
    begin
      HF := 'H_TXINV';
      LF := 'L_TXINV';
    end
    else
    begin
      HF := 'H_TXCASH';
      LF := 'L_TXCASH';
    end;
  end
  else if (QChqtran.Fieldbyname('PAYFOR').asstring = '004') then
  begin
    if Dm01.QCondpay.FieldByName('VERSION').AsString = 'Y' then
    begin
      HF := 'H_TXINV';
      LF := 'L_TXINV';
    end
    else
    begin
      HF := 'H_TXFINC';
      LF := 'L_TXFINC';
    end;
  end
  else
if (Copy(QChqtran.Fieldbyname('PAYFOR').asstring, 1, 1) <> '0') then
    SFMain.RaiseException('กำหนดเงื่อนไขRunใบกำกับภาษีในการชำระไม่ถูกต้อง');
  if not DM01.QDBConfig.Active then
    Dm01.QDBConfig.Open;

  if Dm01.QDBConfig.Fieldbyname('R_TXPAY').asstring = 'Y' then
  begin
    LV := QChqtran.Fieldbyname('LOCATPAY').asstring;
    DV := QChqtran.Fieldbyname('TMBILDT').asDatetime;
   //    If (QChqmast.Fieldbyname('TAXNO').asstring='') Then
     //  begin
    QTaxtranTAXNO.Asstring := Dm01.RunNo01(HF, LF, LV, DV);
  end;
  // end Else
  //     QTaxtranTAXNO.Asstring := InputBox('บันทึกเลขที่ใบกำกับ','เลขที่ใบกำกับ','');
end;

procedure TDmfin.QTaxtranAfterPost(DataSet: TDataSet);
var
  S1: string;
begin
  S1 := Qtaxtran.Fieldbyname('TAXNO').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QTaxtran.Active then
      if (QTaxtran.ApplyUpdates = 0) then
        QTaxtran.CommitUpdates
      else
        raise Exception.Create(QTaxtran.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QTaxtran.Edit;
    QTaxtran.Post;
    S1 := QTaxtran.Fieldbyname('TAXNO').Asstring;
  end;
   //
  with QTaxtran do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM TAXTRAN WHERE TAXNO=:XTAX');
    Params[0].Asstring := S1;
    Open;
  end;
end;

procedure TDmfin.CanchqmstBeforePost(DataSet: TDataSet);
begin
  if (CanChqtrn.Fieldbyname('Payfor').Asstring = '002') or
    (CanChqtrn.Fieldbyname('Payfor').Asstring = '006') or
    (CanChqtrn.Fieldbyname('Payfor').Asstring = '007') then
  begin
    Lpayd_b := QArmast.FieldByName('SDate').Asdatetime;
    Lpaya_b := 0;
    with Query2 do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT TMBILL,TMBILDT,PAYAMT,Case when  paydt IS NULL  then  TMBILDT  else  PAYDT end as paydt,' +
        'FLAG FROM CHQTRAN WHERE CONTNO=:0 AND LOCATPAY=:1 AND ' +
        '(PAYFOR=''002'' OR PAYFOR=''006'' OR PAYFOR=''007'') AND ' +
        'FLAG <> ''C'' AND TMBILL<>:2  ' +
        'ORDER BY PAYDT,TMBILL');
      Params[0].Asstring := CanChqtrn.FieldByName('Contno').Asstring;
      Params[1].Asstring := CanChqtrn.FieldByName('LocatPay').Asstring;
      Params[2].Asstring := CanChqtrn.FieldByName('TmBill').Asstring;
      Open;
      if not (eof and bof) then
      begin
        Last;
        Lpayd_b := FieldByName('Paydt').Asdatetime;
        Lpaya_b := FieldByName('Payamt').AsFloat;
      end;
    end;
    with Query3 do
    begin
      Close;
      Sql.clear;
      Sql.Add('UPDATE ARMAST SET LPAYD=:0,LPAYA=:1 WHERE CONTNO=:2 AND LOCAT=:3');
      Params[0].AsDateTime := Lpayd_b;
      Params[1].AsFloat := Lpaya_b;
      Params[2].Asstring := CanChqtrn.Fieldbyname('Contno').Asstring;
      Params[3].Asstring := CanChqtrn.Fieldbyname('Locatpay').Asstring;
      ExecSQL;
    end;
  end;
end;

procedure TDmfin.DataModuleCreate(Sender: TObject);
begin
  Application.CreateForm(TShwDscForm1, ShwDscForm1);
end;

procedure TDmfin.QChqtranPAYFORChange(Sender: TField);
var
  XKang, Maxdistint, Maxdist: Double;
begin
  if (DmFin.QChqmast.State = Dsinsert) then
  begin
    if (DmFin.QChqtranPAYFOR.Asstring = '') then
      MessageDlg('ยังไม่ระบุประเภทการชำระ', mtError, [mbOK], 0);
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM PAYFOR WHERE FORCODE=:XPAYFOR');
      Params[0].AsString := DmFin.QChqtran.fieldbyname('PAYFOR').Asstring;
      Open;
    end;
  end;
end;

procedure TDmfin.QChqtranPAYAMTChange(Sender: TField);
var
  D: Double;
begin
  if (DmFin.QChqmast.State = DsInsert) then
  begin
    if DmFin.QChqtranDisct.Asfloat > DmFin.QChqtranPayamt.Asfloat then
    //SFMain.RaiseException('ส่วนลดมากกว่ายอดชำระ...!');
      DmFin.QChqtranPayamt.Asfloat := 0;

    D := (DmFin.QChqtranPayamt.Asfloat + DmFin.QChqtranPAYINT.AsFloat) - DmFin.QChqtranDisct.Asfloat - DmFin.QChqtranVATAMTPAY.AsFloat;

    DmFin.QChqtranNetpay.Asfloat := FROUND(D, 2);
  end;
end;

procedure TDmfin.QChqtranVATRTPAYValidate(Sender: TField);
begin
  QChqtranPAYAMTValidate(Sender);
end;

procedure TDmfin.QChqtranDISCTValidate(Sender: TField);
var
  D: Double;
begin
  if (DmFin.QChqmast.State = DsInsert) then
  begin
    if DmFin.QChqtranDisct.Asfloat > DmFin.QChqtranPayamt.Asfloat then
    //SFMain.RaiseException('ส่วนลดมากกว่ายอดชำระ...!');
      DmFin.QChqtranPayamt.Asfloat := 0;

    D := (DmFin.QChqtranPayamt.Asfloat + DmFin.QChqtranPAYINT.AsFloat) - DmFin.QChqtranDisct.Asfloat - DmFin.QChqtranVATAMTPAY.AsFloat;

    DmFin.QChqtranNetpay.Asfloat := FROUND(D, 2);
  end;
end;

procedure TDmfin.QChqtranVATRTPAYChange(Sender: TField);
begin
  QChqtranDISCTValidate(Sender);
end;

procedure TDmfin.QChqtranPAYINTValidate(Sender: TField);
var
  D: Double;
begin
  if (DmFin.QChqmast.State = DsInsert) then
  begin
    if DmFin.QChqtranDisct.Asfloat > DmFin.QChqtranPayamt.Asfloat then
    //SFMain.RaiseException('ส่วนลดมากกว่ายอดชำระ...!');
      DmFin.QChqtranPayamt.Asfloat := 0;

    D := (DmFin.QChqtranPayamt.Asfloat + DmFin.QChqtranPAYINT.AsFloat) - DmFin.QChqtranDisct.Asfloat - DmFin.QChqtranVATAMTPAY.AsFloat;

    DmFin.QChqtranNetpay.Asfloat := FROUND(D, 2);
  end;
end;

procedure TDmfin.QChqmastPAYTYPChange(Sender: TField);
begin
//   FincForm1.cxGrid1DBTableView1PAYINT.Options.Editing := QChqmastPAYTYP.AsString = '90';
end;

procedure TDmfin.CRdChqmasTMBILDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT, cdigit: string;
  DV: TdateTime;
  ckdigit: integer;
begin
  HF := 'H_RESVDIS';
  LF := 'L_RESVDIS';

  if not (Dm01.QDBConfig.Active) then
    Dm01.QDBConfig.Open;
  if Dm01.QDBConfig.Fieldbyname('R_RESVDIS').asstring = 'Y' then
  begin
    LV := CRdChqmas.Fieldbyname('LOCATRECV').asstring;
    DV := CRdChqmas.Fieldbyname('TMBILDT').asDatetime;

    if CRdChqmasUpdateStatus.Value = 'Inserted' then
    begin
      if ckdigit = 1 then
      begin
        SQLTXT := 'SELECT MAX(TMBILL) AS MAXNO FROM CRDCHQMAS WHERE LOCATRECV=:0 AND ' +
          'SUBSTR(TMBILL,2,1)=:1 AND SUBSTR(TMBILL,4,2)=:2 AND SUBSTR(TMBILL,6,2)=:3';
        CRdChqmasTMBILL.Asstring := Dm01.Maxno1(HF, LF, LV, SQLTXT, DV);
      end
      else
      begin
        SQLTXT := 'SELECT MAX(TMBILL) AS MAXNO FROM CRDCHQMAS WHERE LOCATRECV=:0 AND ' +
          'SUBSTR(TMBILL,2,2)=:1 AND SUBSTR(TMBILL,5,2)=:2 AND SUBSTR(TMBILL,7,2)=:3';
        CRdChqmasTMBILL.AsString := Dm01.Maxno(HF, LF, LV, SQLTXT, DV);
      end;
    end;
  end;
end;

procedure TDmfin.CRdChqmasCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
          'Inserted', 'Deleted');
begin
  if CRdChqmas.CachedUpdates then
    CRdChqmasUpdateStatus.Value := UpdateStatusStr[CRdChqmas.UpdateStatus];
end;

procedure TDmfin.CRdChqmasNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(CRdChqmas);
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  CRdChqmasLOCATRECV.Asstring := SFMain.XLocat;
  CRdChqmasTMBILDT.AsDatetime := DATE;
  CRdChqmasINPDT.AsDatetime := DATE;
  CRdChqmasINPDATE.AsDatetime := Now;
  CRdChqmasUSERID.Asstring := SFMain.XUser_ID;
  CRdChqmasFlag.Asstring := 'D';
end;

procedure TDmfin.CRdChqmasLOCATRECVValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:0 ');
    Params[0].Asstring := CRdChqmasLOCATRECV.Asstring;
    Open;
    if (Bof and Eof) then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;
  //
  CRdChqmasTMBILDTValidate(Sender);
end;

procedure TDmfin.CRdChqmasAfterPost(DataSet: TDataSet);
var
  S, Loc, Xcont, Xloc: string;
begin
  S := CRdChqmasTMBILL.Asstring;
  Loc := CRdChqmasLocatRECV.Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if CRdChqmas.Active then
      if (CRdChqmas.ApplyUpdates = 0) then
        CRdChqmas.CommitUpdates
      else
        raise Exception.Create(CRdChqmas.RowError.Message);
    if CRdChqtran.Active then
      if (CRdChqtran.ApplyUpdates = 0) then
        CRdChqtran.CommitUpdates
      else
        raise Exception.Create(CRdChqtran.RowError.Message);
    if QTaxtran.Active then
      if (QTaxtran.ApplyUpdates = 0) then
        QTaxtran.CommitUpdates
      else
        raise Exception.Create(QTaxtran.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    CRdChqmas.Edit;
    CRdChqmas.Fieldbyname('TAXNO').asstring := '';
    raise;
  end;
   //
  with CRdChqmas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CRDCHQMAS WHERE TMBILL=:V0 AND LOCATRECV=:V1 ');
    Params[0].asstring := S;
    Params[1].asstring := Loc;
    Open;
  end;

  with CRdChqtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CRDCHQTRAN WHERE TMBILL=:V0 AND LOCATRECV=:V1 ');
    Params[0].asstring := S;
    Params[1].asstring := Loc;
    Open;
  end;

  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from CRDchqmas where flag = ''D'' and billno =:NBILLNO');
    params[0].AsString := CRdChqmasBILLNO.AsString;
    open;
  end;

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('update chqmas set refdocno =:NREFDOCNO where billno =:NBILLNO and flag = ''H'' ');
    params[0].AsString := query1.fieldbyname('TMBILL').AsString;
    params[1].AsString := CRdChqmasBILLNO.AsString;
    execSql;
  end;
end;

procedure TDmfin.CRdChqmasBeforePost(DataSet: TDataSet);
var
  N1, N2: Double;
begin
  Clearasstring(CRdChqmas);
  CRdChqtran.First;

  //
  if CRdChqmasUpdateStatus.Value = 'Inserted' then
  begin
    N1 := 0;
    N2 := 0;
    //Rerun
    if Duplicate then
      CRdChqmasTMBILDTValidate(CRdChqmasTMBILDT);
    //
    CRdChqtran.DisableControls;
    CRdChqtran.AfterPost := Nil;
    CRdChqtran.BeforePost := Nil;
    CRdChqtran.First;
    while not CRdChqtran.Eof do
    begin
      N1 := N2 + CRdChqtranPayamt.Asfloat - CRdChqtranDisct.Asfloat - CRdChqtranVATAMTPAY.AsFloat +
        CRdChqtranPayInt.Asfloat - CRdChqtranDscInt.Asfloat;
      N2 := N2 + CRdChqtranNetpay.Asfloat;
      CRdChqtran.Edit;
      CRdChqtran.Fieldbyname('TMBILL').Asstring := CRdChqmasTMBILL.Asstring;
      CRdChqtran.fieldbyname('Tmbildt').asdatetime := CRdChqmasTmbildt.Asdatetime;
      CRdChqtran.Fieldbyname('PAYTYP').Asstring := CRdChqmasPAYTYP.Asstring;
      CRdChqtran.Fieldbyname('CHQNO').Asstring := CRdChqmasCHQNO.Asstring;
      CRdChqtran.fieldbyname('LocatRecv').asstring := CRdChqmasLocatrecv.Asstring;
      CRdChqtran.Next;
    end;
    CRdChqtran.AfterPost := CRdChqtranAfterPost;
    CRdChqtran.EnableControls;
    if FRound(N1, 2) <> FRound(N2, 2) then
      SFMain.RaiseException('ยอดรับสุทธิไม่ถูกต้อง กรุณาเคาะ Ent ให้สุดบรรทัด');
  end;
end;

procedure TDmfin.CRdChqmasAfterCancel(DataSet: TDataSet);
begin
  if CRdChqmas.Active then
    CRdChqmas.CancelUpdates;
  if CRdChqtran.Active then
    CRdChqtran.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDmfin.CRdChqtranAfterPost(DataSet: TDataSet);
var
  Smnettot: double;
  bk: Tbookmark;
  Xpayfor, XContno: string;
begin
  CRdChqtran.DisableControls;
  Smnettot := 0;
  Xpayamt := 0;
  bk := CRdChqtran.GetBookmark;
  Xpayfor := CRdChqtranPAYFOR.Asstring;
  XContno := CRdChqtranContno.Asstring;
  XCount := 0;

  CRdChqtran.first;
  while not CRdChqtran.Eof do
  begin
    if (CRdChqtran.FieldByname('PAYFOR').Asstring = Xpayfor) and
      (CRdChqtran.FieldByname('CONTNO').Asstring = XContno) then
    begin
      XCount := XCount + 1;
    end;
    Xpayamt := Xpayamt + CRdChqtranPAYAMT.Asfloat;
    Smnettot := Smnettot + CRdChqtranNETPAY.AsFloat;
    CRdChqtran.Next;
  end;

  if CRdChqmas.State = Dsbrowse then
    CRdChqmas.Edit;
  CRdChqmasCHQTMP.Asfloat := Fround(Smnettot, 2);
  CRdChqmasChqAmt.Asfloat := Fround(Smnettot, 2);

  CRdChqtran.EnableControls;
  CRdChqtran.GotoBookMark(bk);
  CRdChqtran.FreeBookmark(bk);

  if XCount > 1 then
    SFMain.RaiseException('บันทึกข้อมูลไม่ได้เพราะมีรายการซ้ำ');
end;

procedure TDmfin.CRdChqtranNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(CRdChqtran);
  CRdChqtran.fieldbyname('Tmbill').asstring := CRdChqmasTmbill.Asstring;
  CRdChqtran.fieldbyname('DOSBILL').asstring := CRdChqmasDOSBILL.Asstring;
  CRdChqtran.fieldbyname('Tmbildt').asdatetime := CRdChqmasTmbildt.Asdatetime;
  CRdChqtran.fieldbyname('LocatRecv').asstring := CRdChqmasLocatrecv.Asstring;
  CRdChqtran.fieldbyname('Paytyp').asstring := CRdChqmasPaytyp.Asstring;
  CRdChqtran.fieldbyname('CUSCOD').asstring := CRdChqmasCUSCOD.Asstring;
  CRdChqtran.fieldbyname('Chqdt').asdatetime := CRdChqmasTmbildt.Asdatetime;
  CRdChqtran.FieldByName('TSALE').AsString := 'R';
  CRdChqtran.fieldbyname('Flag').asstring := 'D';
  CRdChqtran.fieldbyname('INPDT').AsDatetime := Now;
  CRdChqtran.fieldbyname('INPDATE').AsDatetime := Now;
  CRdChqtran.fieldbyname('USERID').Asstring := SFMain.XUser_ID;
end;

procedure TDmFin.CanCelCRDTmBill;
begin
  CRdChqtran.First;
  while not (CRdChqtran.Eof) do
  begin
    CRdChqtran.Edit;
    CRdChqtranFlag.Asstring := 'C';
    CRdChqtranCandt.Asdatetime := Now;
    CRdChqtranUserid.Asstring := SFMain.Xuser_id;
    CRdChqtran.Next;
  end;
  //---ยกเลิก Chqmast---
  CRdChqmas.Edit;
  CRdChqmasFlag.Asstring := 'C';
  CRdChqmasCandt.Asdatetime := Now;
  CRdChqmasUserid.Asstring := SFMain.Xuser_id;
  CRdChqmas.Post;

  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from crdchqmas where flag = ''C'' and billno =:NBILLNO');
    params[0].AsString := CRdChqmasBILLNO.AsString;
    open;
  end;

  with Query2 do
  begin
    close;
    sql.Clear;
    sql.Add('update chqmas set refdocno ='''' where billno =:NBILLNO ');
    params[0].AsString := CRdChqmasBILLNO.AsString;
    execSql;
  end;
end;

procedure TDmfin.CRdChqtranDISCTChange(Sender: TField);
begin
  CRdChqtranNETPAY.Asfloat := CRdChqtranPAYAMT.Asfloat + CRdChqtranPAYINT.AsFloat - CRdChqtranDISCT.Asfloat;
end;

procedure TDmfin.CRdChqtranPAYINTChange(Sender: TField);
begin
  CRdChqtranNETPAY.Asfloat := CRdChqtranPAYAMT.Asfloat + CRdChqtranPAYINT.AsFloat - CRdChqtranDISCT.Asfloat;
end;

procedure TDmfin.CRdChqtranVATRTPAYChange(Sender: TField);
begin
  CRdChqtranNETPAY.Asfloat := CRdChqtranPAYAMT.Asfloat + CRdChqtranPAYINT.AsFloat - CRdChqtranDISCT.Asfloat;
end;

procedure TDmfin.QChqtran_OthPAYFORValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PAYFOR WHERE FORCODE=:EDIT1 AND SNCSET = ''N'' ');
    params[0].asstring := QChqtran_OthPAYFOR.Asstring;
    Open;
    if (Bof and Eof) then
      SFMain.RaiseException('ไม่พบรหัสการชำระ');
  end;
end;

procedure TDmfin.QChqtran_DecPAYFORValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PAYFOR WHERE FORCODE=:EDIT1 AND SNCSET = ''N'' ');
    params[0].asstring := QChqtran_DecPAYFOR.Asstring;
    Open;
    if (Bof and Eof) then
      SFMain.RaiseException('ไม่พบรหัสการชำระ');
  end;
end;

procedure TDmfin.QChqtran_TypPAYCODEValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PAYTYP WHERE PAYCODE=:EDIT1 ');
    params[0].asstring := QChqtran_TypPAYCODE.Asstring;
    Open;
    if (Bof and Eof) then
      SFMain.RaiseException('ไม่พบรหัสการชำระ');
  end;
  QChqmastPAYTYP.AsString := QChqtran_TypPAYCODE.Asstring;
end;

procedure TDmfin.QChqtran_OthAfterPost(DataSet: TDataSet);
var
  nChqtmpOth: double;
  bk: Tbookmark;
  Xpayfor: string;
begin
  QChqtran_Oth.DisableControls;
  nChqtmpOth := 0;
  bk := QChqtran_Oth.GetBookmark;
  Xpayfor := QChqtran_OthPAYFOR.Asstring;
  XCount1 := 0;

  QChqtran_Oth.first;
  while not QChqtran_Oth.Eof do
  begin
    if (QChqtran_Oth.FieldByname('PAYFOR').Asstring = Xpayfor) then
    begin
      XCount1 := XCount1 + 1;
    end;
    nChqtmpOth := nChqtmpOth + QChqtran_OthAMOUNT.AsFloat;
    QChqtran_Oth.Next;
  end;

  if QChqmast.State = Dsbrowse then
    QChqmast.Edit;
  QChqmastCHQTMP_OTH.Asfloat := Fround(nChqtmpOth, 2);

  QChqtran_Oth.EnableControls;
  QChqtran_Oth.GotoBookMark(bk);
  QChqtran_Oth.FreeBookmark(bk);

  if XCount2 > 1 then
    SFMain.RaiseException('บันทึกข้อมูลไม่ได้เพราะมีรายการซ้ำ');
end;

procedure TDmfin.QChqtran_DecAfterPost(DataSet: TDataSet);
var
  nChqtmpDec: double;
  bk: Tbookmark;
  Xpayfor: string;
begin
  QChqtran_Dec.DisableControls;
  nChqtmpDec := 0;
  bk := QChqtran_Dec.GetBookmark;
  Xpayfor := QChqtran_DecPAYFOR.Asstring;
  XCount2 := 0;

  QChqtran_Dec.first;
  while not QChqtran_Dec.Eof do
  begin
    if (QChqtran_Dec.FieldByname('PAYFOR').Asstring = Xpayfor) then
    begin
      XCount2 := XCount2 + 1;
    end;
    nChqtmpDec := nChqtmpDec + QChqtran_DecAMOUNT.AsFloat;
    QChqtran_Dec.Next;
  end;

  if QChqmast.State = Dsbrowse then
    QChqmast.Edit;
  QChqmastCHQTMP_DEC.Asfloat := Fround(nChqtmpDec, 2);

  QChqtran_Dec.EnableControls;
  QChqtran_Dec.GotoBookMark(bk);
  QChqtran_Dec.FreeBookmark(bk);

  if XCount2 > 1 then
    SFMain.RaiseException('บันทึกข้อมูลไม่ได้เพราะมีรายการซ้ำ');
end;

procedure TDmfin.QChqtran_TypAfterPost(DataSet: TDataSet);
var
  nChqtmpTyp: double;
  bk: Tbookmark;
  Xpaytyp: string;
begin
  QChqtran_Typ.DisableControls;
  nChqtmpTyp := 0;
  bk := QChqtran_Typ.GetBookmark;
  Xpaytyp := QChqtran_TypPAYCODE.Asstring;
  XCount3 := 0;

  QChqtran_Typ.first;
  while not QChqtran_Typ.Eof do
  begin
    if (QChqtran_Typ.FieldByname('PAYCODE').Asstring = Xpaytyp) then
    begin
      XCount3 := XCount3 + 1;
    end;
    nChqtmpTyp := nChqtmpTyp + QChqtran_TypAMOUNT.AsFloat;
    QChqtran_Typ.Next;
  end;

  if QChqmast.State = Dsbrowse then
    QChqmast.Edit;
  QChqmastCHQTMP_TYP.Asfloat := Fround(nChqtmpTyp, 2);

  QChqtran_Typ.EnableControls;
  QChqtran_Typ.GotoBookMark(bk);
  QChqtran_Typ.FreeBookmark(bk);

  if XCount3 > 1 then
    SFMain.RaiseException('บันทึกข้อมูลไม่ได้เพราะมีรายการซ้ำ');
end;

procedure TDmfin.QChqtran_OthBeforePost(DataSet: TDataSet);
begin
  if QChqmastUpdateStatus.Value = 'Inserted' then
    ClearAsFloat(QChqtran_Oth);
end;

procedure TDmfin.QChqtran_DecBeforePost(DataSet: TDataSet);
begin
  if QChqmastUpdateStatus.Value = 'Inserted' then
    ClearAsFloat(QChqtran_Dec);
end;

procedure TDmfin.QChqtran_TypBeforePost(DataSet: TDataSet);
begin
  if QChqmastUpdateStatus.Value = 'Inserted' then
    ClearAsFloat(QChqtran_Typ);
end;

procedure TDmfin.QChqmastCHQTMPValidate(Sender: TField);
begin
  if Sochqmast.State in DsEditModes then
  begin
    QChqmastTOTAL.AsFloat := FRound(((QChqmastCHQTMP.AsFloat) + (QChqmastCHQTMP_OTH.AsFloat)) - (QChqmastCHQTMP_DEC.AsFloat), 2);
  end;
end;

procedure TDmfin.QChqmastCHQTMP_OTHValidate(Sender: TField);
begin
  QChqmastCHQTMPValidate(Sender);
end;

procedure TDmfin.QChqmastCHQTMP_DECValidate(Sender: TField);
begin
  QChqmastCHQTMPValidate(Sender);
end;

procedure TDmfin.QChqtran_OthPAYFORChange(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PAYFOR WHERE FORCODE=:EDIT1 AND SNCSET = ''N'' ');
    params[0].asstring := QChqtran_OthPAYFOR.Asstring;
    Open;
    QChqtran_OthDESCRIPTION.AsString := Query1.fieldbyname('FORDESC').AsString;
  end;
end;

procedure TDmfin.QChqtran_DecPAYFORChange(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PAYFOR WHERE FORCODE=:EDIT1 AND SNCSET = ''N'' ');
    params[0].asstring := QChqtran_DecPAYFOR.Asstring;
    Open;
    QChqtran_DecDESCRIPTION.AsString := Query1.fieldbyname('FORDESC').AsString;
  end;
end;

procedure TDmfin.QChqtran_TypCHQNOValidate(Sender: TField);
begin
  QChqmastCHQNO.AsString := QChqtran_TypCHQNO.Asstring;
end;

procedure TDmfin.QChqtran_TypBANKBOOKCODValidate(Sender: TField);
begin
  QChqmastCHQBK.AsString := QChqtran_TypBANKBOOKCOD.Asstring;
end;

procedure TDmfin.QChqtran_TypDTONCHQValidate(Sender: TField);
begin
  QChqmastCHQDT.AsDateTime := QChqtran_TypDTONCHQ.AsDateTime;
end;

procedure TDmfin.QChqtran_TypBANKLOCATValidate(Sender: TField);
begin
  QChqmastCHQBR.AsString := QChqtran_TypBANKLOCAT.Asstring;
end;

procedure TDmfin.QChqtran_TypAMOUNTValidate(Sender: TField);
begin
  QChqmastCHQAMT.AsFloat := QChqtran_TypAMOUNT.AsFloat;
end;

end.

