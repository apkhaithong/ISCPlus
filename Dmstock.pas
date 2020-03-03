unit Dmstock;

interface

uses
  SysUtils, Classes, DB, FireDAC.Phys.Intf, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDmstk = class(TDataModule)
    QInvoi: TFDQuery;
    SoQinvoi: TDataSource;
    QInvtrn: TFDQuery;
    SoQinvtrn: TDataSource;
    QInvoiRECVNO: TStringField;
    QInvoiRECVDT: TDateField;
    QInvoiLOCAT: TStringField;
    QInvoiINVNO: TStringField;
    QInvoiINVDT: TDateField;
    QInvoiAPCODE: TStringField;
    QInvoiVATRT: TFloatField;
    QInvoiNETCST: TFloatField;
    QInvoiNETVAT: TFloatField;
    QInvoiNETTOT: TFloatField;
    QInvoiTAXNO: TStringField;
    QInvoiTAXDT: TDateField;
    QInvoiFLTAX: TStringField;
    QInvoiVATTYP: TStringField;
    QInvoiMEMO1: TMemoField;
    QInvoiDESCP: TStringField;
    QInvoiCREDTM: TFloatField;
    QInvoiDUEDATE: TDateField;
    QInvoiINPDT: TDateTimeField;
    QInvoiUSERID: TStringField;
    QInvoiUPD: TStringField;
    QInvtrnRECVNO: TStringField;
    QInvtrnRECVDT: TDateField;
    QInvtrnGCODE: TStringField;
    QInvtrnTYPE: TStringField;
    QInvtrnMODEL: TStringField;
    QInvtrnBAAB: TStringField;
    QInvtrnCOLOR: TStringField;
    QInvtrnCC: TFloatField;
    QInvtrnSTAT: TStringField;
    QInvtrnSTRNO: TStringField;
    QInvtrnENGNO: TStringField;
    QInvtrnREGNO: TStringField;
    QInvtrnKEYNO: TStringField;
    QInvtrnREFNO: TStringField;
    QInvtrnMILERT: TFloatField;
    QInvtrnCRLOCAT: TStringField;
    QInvtrnMOVENO: TStringField;
    QInvtrnMOVEDT: TDateField;
    QInvtrnRVCODE: TStringField;
    QInvtrnRVLOCAT: TStringField;
    QInvtrnSTDCOST: TFloatField;
    QInvtrnCRCOST: TFloatField;
    QInvtrnDISCT: TFloatField;
    QInvtrnNETCOST: TFloatField;
    QInvtrnCRVAT: TFloatField;
    QInvtrnTOTCOST: TFloatField;
    QInvtrnVATRT: TFloatField;
    QInvtrnNADDCOST: TFloatField;
    QInvtrnVADDCOST: TFloatField;
    QInvtrnTADDCOST: TFloatField;
    QInvtrnSTDPRC: TFloatField;
    QInvtrnSDATE: TDateField;
    QInvtrnPRICE: TFloatField;
    QInvtrnBONUS: TFloatField;
    QInvtrnTSALE: TStringField;
    QInvtrnCONTNO: TStringField;
    QInvtrnCURSTAT: TStringField;
    QInvtrnCRDTXNO: TStringField;
    QInvtrnCRDAMT: TFloatField;
    QInvtrnRESVNO: TStringField;
    QInvtrnRESVDT: TDateField;
    QInvtrnFLAG: TStringField;
    QInvtrnMEMO1: TMemoField;
    QInvtrnPOSTDT: TDateField;
    QInvtrnINPDT: TDateTimeField;
    QInvtrnUSERID: TStringField;
    QInvtrnMANUYR: TStringField;
    QInvoiUpdateStatus: TStringField;
    TaxBuy: TFDQuery;
    Query1: TFDQuery;
    Qinvmovt: TFDQuery;
    SoInvmovt: TDataSource;
    Qinvmovm: TFDQuery;
    SoInvmovm: TDataSource;
    QinvmovmMOVENO: TStringField;
    QinvmovmMOVEDT: TDateField;
    QinvmovmMOVENM: TStringField;
    QinvmovmMOVERV: TStringField;
    QinvmovmMOVEFM: TStringField;
    QinvmovmMOVETO: TStringField;
    QinvmovmMEMO1: TMemoField;
    QinvmovmUpdateStatus: TStringField;
    QinvmovtMOVENO: TStringField;
    QinvmovtSTRNO: TStringField;
    QinvmovtMOVEDT: TDateField;
    QinvmovtMOVEFM: TStringField;
    QinvmovtMOVETO: TStringField;
    Qinvtran: TFDQuery;
    QOptinv: TFDQuery;
    QOpttran: TFDQuery;
    SoOptinv: TDataSource;
    SoOpttran: TDataSource;
    QOptinvRECVNO: TStringField;
    QOptinvRVLOCAT: TStringField;
    QOptinvRECVDT: TDateField;
    QOptinvINVNO: TStringField;
    QOptinvINVDT: TDateField;
    QOptinvAPCODE: TStringField;
    QOptinvVATRT: TFloatField;
    QOptinvCREDIT: TFloatField;
    QOptinvDUEDT: TDateField;
    QOptinvTAXNO: TStringField;
    QOptinvTAXDT: TDateField;
    QOptinvFLTAX: TStringField;
    QOptinvDESCP: TStringField;
    QOptinvTSALE: TStringField;
    QOptinvRVCODE: TStringField;
    QOptinvTOTCST: TFloatField;
    QOptinvDSCRAT: TFloatField;
    QOptinvDSCAMT: TFloatField;
    QOptinvNETCST: TFloatField;
    QOptinvNETVAT: TFloatField;
    QOptinvNETTOT: TFloatField;
    QOptinvSPAYMT: TFloatField;
    QOptinvSDISC: TFloatField;
    QOptinvFLAG: TStringField;
    QOptinvLPAYDT: TDateField;
    QOptinvINPDT: TDateTimeField;
    QOptinvUSERID: TStringField;
    QOptinvUPD: TStringField;
    QOptinvUpdateStatus: TStringField;
    QOpttranRECVNO: TStringField;
    QOpttranRVLOCAT: TStringField;
    QOpttranOPTCODE: TStringField;
    QOpttranOPTNAME: TStringField;
    QOpttranQTY: TFloatField;
    QOpttranAVGCST: TFloatField;
    QOpttranUNITCST: TFloatField;
    QOpttranTOTCST: TFloatField;
    QOpttranDSCAMT: TFloatField;
    QOpttranNETCST: TFloatField;
    QOpttranNETVAT: TFloatField;
    QOpttranVATRT: TFloatField;
    QOpttranINPDT: TDateTimeField;
    QOpttranUSERID: TStringField;
    QOpttranRECVDT: TDateField;
    QOptMovm: TFDQuery;
    QOptMovt: TFDQuery;
    SoOptMovm: TDataSource;
    SoOptMovt: TDataSource;
    QOptMovmMOVENO: TStringField;
    QOptMovmMOVEDT: TDateField;
    QOptMovmMOVENM: TStringField;
    QOptMovmMOVERV: TStringField;
    QOptMovmMOVEFM: TStringField;
    QOptMovmMOVETO: TStringField;
    QOptMovmMEMO1: TMemoField;
    QOptMovmUpdateStatus: TStringField;
    QOptMovtMOVENO: TStringField;
    QOptMovtOPTCODE: TStringField;
    QOptMovtMOVEDT: TDateField;
    QOptMovtMOVQTY: TFloatField;
    QOptMovtMOVEFM: TStringField;
    QOptMovtMOVETO: TStringField;
    QOptmst: TFDQuery;
    Query2: TFDQuery;
    Query3: TFDQuery;
    Query4: TFDQuery;
    QInvtrnTAXIN: TStringField;
    QinvmovtINPDATE: TDateTimeField;
    QinvmovmINPDATE: TDateTimeField;
    QinvmovmUSERID: TStringField;
    QInvtrnDORECV: TStringField;
    TaxBuyTAXNO: TStringField;
    TaxBuyTAXDATE: TDateField;
    TaxBuyTAXREFNO: TStringField;
    TaxBuyDESC1: TStringField;
    TaxBuyCUSCOD: TStringField;
    TaxBuyVATRT: TFloatField;
    TaxBuyAMOUNT: TFloatField;
    TaxBuyREDU: TFloatField;
    TaxBuyBALANCE: TFloatField;
    TaxBuyVAT: TFloatField;
    TaxBuyTOTTAX: TFloatField;
    TaxBuyFLAG: TStringField;
    TaxBuyCANCEL: TStringField;
    TaxBuyUSERID: TStringField;
    TaxBuyTIME1: TDateTimeField;
    TaxBuyCANCELID: TStringField;
    TaxBuyCANDAT: TDateTimeField;
    TaxBuyPOSTGLDT: TDateTimeField;
    TaxBuyLOCAT: TStringField;
    TaxBuyRECVDT: TDateField;
    TaxBuyYEAR1: TStringField;
    TaxBuyTAXTYP: TStringField;
    TaxBuySTRNO: TStringField;
    QInvoiPURCHANO: TStringField;
    QOptinvBUYNO: TStringField;
    QInvtrnAPCODE: TStringField;
    QInvoiPOSTGL: TStringField;
    QInvtrnLOCATION: TStringField;
    procedure QInvoiNewRecord(DataSet: TDataSet);
    procedure QInvoiCalcFields(DataSet: TDataSet);
    procedure QInvoiBeforePost(DataSet: TDataSet);
    procedure QInvoiBeforeDelete(DataSet: TDataSet);
    procedure QInvoiAfterPost(DataSet: TDataSet);
    procedure QInvoiAfterEdit(DataSet: TDataSet);
    procedure QInvoiAfterCancel(DataSet: TDataSet);
    procedure QInvtrnNewRecord(DataSet: TDataSet);
    procedure QInvtrnBeforePost(DataSet: TDataSet);
    procedure QInvtrnAfterPost(DataSet: TDataSet);
    procedure QInvoiRECVDTValidate(Sender: TField);
    procedure QInvoiLOCATValidate(Sender: TField);
    procedure QInvoiINVNOValidate(Sender: TField);
    procedure QInvoiINVDTValidate(Sender: TField);
    procedure QInvoiCREDTMValidate(Sender: TField);
    procedure QInvtrnTYPEValidate(Sender: TField);
    procedure QInvtrnMODELValidate(Sender: TField);
    procedure QInvtrnBAABValidate(Sender: TField);
    procedure QInvtrnCOLORValidate(Sender: TField);
    procedure QInvtrnSTRNOValidate(Sender: TField);
    procedure QInvtrnRVCODEValidate(Sender: TField);
    procedure QInvtrnCRCOSTValidate(Sender: TField);
    procedure QInvtrnGCODEValidate(Sender: TField);
    procedure QinvmovmNewRecord(DataSet: TDataSet);
    procedure QinvmovmCalcFields(DataSet: TDataSet);
    procedure QinvmovmBeforePost(DataSet: TDataSet);
    procedure QinvmovmBeforeDelete(DataSet: TDataSet);
    procedure QinvmovmAfterPost(DataSet: TDataSet);
    procedure QinvmovmAfterCancel(DataSet: TDataSet);
    procedure QinvmovmMOVEDTValidate(Sender: TField);
    procedure QinvmovmMOVENMValidate(Sender: TField);
    procedure QinvmovmMOVERVValidate(Sender: TField);
    procedure QinvmovmMOVEFMValidate(Sender: TField);
    procedure QinvmovmMOVETOValidate(Sender: TField);
    procedure QinvmovtNewRecord(DataSet: TDataSet);
    procedure QinvmovtBeforeClose(DataSet: TDataSet);
    procedure QinvmovtAfterOpen(DataSet: TDataSet);
    procedure QOptinvNewRecord(DataSet: TDataSet);
    procedure QOptinvCalcFields(DataSet: TDataSet);
    procedure QOptinvBeforePost(DataSet: TDataSet);
    procedure QOptinvBeforeDelete(DataSet: TDataSet);
    procedure QOptinvAfterPost(DataSet: TDataSet);
    procedure QOptinvAfterEdit(DataSet: TDataSet);
    procedure QOptinvAfterCancel(DataSet: TDataSet);
    procedure QOptinvRVLOCATValidate(Sender: TField);
    procedure QOptinvRECVDTValidate(Sender: TField);
    procedure QOptinvINVNOValidate(Sender: TField);
    procedure QOptinvINVDTValidate(Sender: TField);
    procedure QOptinvAPCODEValidate(Sender: TField);
    procedure QOpttranNewRecord(DataSet: TDataSet);
    procedure QOpttranBeforePost(DataSet: TDataSet);
    procedure QOpttranAfterPost(DataSet: TDataSet);
    procedure QOptMovmNewRecord(DataSet: TDataSet);
    procedure QOptMovmCalcFields(DataSet: TDataSet);
    procedure QOptMovmBeforePost(DataSet: TDataSet);
    procedure QOptMovmBeforeDelete(DataSet: TDataSet);
    procedure QOptMovmAfterPost(DataSet: TDataSet);
    procedure QOptMovmAfterCancel(DataSet: TDataSet);
    procedure QOptMovmMOVEDTValidate(Sender: TField);
    procedure QOptMovmMOVENMValidate(Sender: TField);
    procedure QOptMovmMOVERVValidate(Sender: TField);
    procedure QOptMovmMOVEFMValidate(Sender: TField);
    procedure QOptMovmMOVETOValidate(Sender: TField);
    procedure QOptMovtOPTCODEValidate(Sender: TField);
    procedure QOptMovtNewRecord(DataSet: TDataSet);
    procedure QOptMovtBeforeClose(DataSet: TDataSet);
    procedure QOptMovtAfterOpen(DataSet: TDataSet);
    procedure QinvmovtSTRNOValidate(Sender: TField);
    procedure QinvmovtBeforeDelete(DataSet: TDataSet);
    procedure QInvtrnCRVATValidate(Sender: TField);
    procedure QinvmovtSTRNOChange(Sender: TField);
    procedure QInvoiAPCODEValidate(Sender: TField);
    procedure QOpttranOPTCODEChange(Sender: TField);
    procedure QOpttranDSCAMTChange(Sender: TField);
    procedure QOpttranQTYChange(Sender: TField);
    procedure QInvoiUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QinvmovmUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QOptinvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QOptMovmUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Dmstk: TDmstk;
  XYear, XMonth, XDay: Word;
  XDate: TdateTime;
  XRVCODE, XTYPE, XMODEL, XBAAB, XCOLOR, XCC, XGCODE, XTAXNO: string;
  Duplicate: Boolean;
  XNCOST, XVCOST, XTCOST: Double;

implementation

uses
  USoftfirm, Dmsec, dm1, functn01, Umvcar;
{$R *.dfm}

procedure TDmstk.QInvoiNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QInvoi);
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  QInvoi.FieldByName('FLTAX').Asstring := 'N';
  QInvoi.FieldByName('VATTYP').Asstring := 'Y';
  QInvoi.FieldByName('UPD').AsString := 'Y';
  QInvoi.FieldByName('CREDTM').AsFloat := 0;
  QInvoi.FieldByName('LOCAT').Asstring := SFMain.XLocat;
  QInvoi.FieldByName('RECVDT').AsDatetime := SFMain.CR_DATE;
  QInvoi.FieldByName('INVDT').AsDatetime := SFMain.CR_DATE;
  QInvoi.FieldByName('INPDT').AsDatetime := Now;
  QInvoi.FieldByName('USERID').Asstring := SFMain.XUser_ID;
  QInvoi.FieldByName('VATRT').AsFloat := Dm01.QCondpay.Fieldbyname('Vat').asfloat;
  XNCOST := 0;
  XVCOST := 0;
  XTCOST := 0;
end;

procedure TDmstk.QInvoiRECVDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_RECVCR';
  LF := 'L_RECVCR';
  if QInvoiRECVDT.AsDateTime > Date then
    SFMain.RaiseException('ระบุวันที่ก่อนวันปัจจุบัน...!');

  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  if Dm01.QDBConfig.Fieldbyname('R_RECVCR').asstring = 'Y' then
  begin
    LV := QInvoi.Fieldbyname('Locat').asstring;
    DV := QInvoi.Fieldbyname('Recvdt').asDatetime;
    if QInvoiUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(RECVNO) AS MAXNO FROM INVINVO WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(RECVNO,2,2)=:EDIT2 AND SUBSTR(RECVNO,5,2)=:EDIT3 AND SUBSTR(RECVNO,7,2)=:EDIT4';
      QInvoiRECVNO.Asstring := Dm01.Maxno(HF, LF, LV, SQLTXT, DV);
    end;
  end;
end;

procedure TDmstk.QInvoiUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDmstk.QInvoiLOCATValidate(Sender: TField);
begin
  if QInvoiLOCAT.Asstring <> '' then
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOC ');
      Params[0].Asstring := QInvoiLOCAT.Asstring;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสสาขา');
    end;
  if QInvoiRECVDT.Asstring <> '' then
    QInvoiRECVDTValidate(QInvoiRECVDT);
end;

procedure TDmstk.QInvoiINVNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT INVNO FROM APINVOI WHERE INVNO=:1');
    Params[0].Asstring := QInvoiINVNO.Asstring;
    Open;
    if not (Bof and Eof) then
      SFMain.RaiseException('เลขที่ใบส่งสินค้าซ้ำในระบบเจ้าหนี้');
  end;
end;

procedure TDmstk.QInvoiINVDTValidate(Sender: TField);
begin
  if QInvoiInvdt.Asstring <> '' then
    DMstk.QInvoiDUEDATE.Asdatetime := DMstk.QInvoiINVDT.Asdatetime + DMstk.QInvoi.Fieldbyname('credtm').asfloat;
end;

procedure TDmstk.QInvoiCREDTMValidate(Sender: TField);
begin
  if QInvoiInvdt.Asstring <> '' then
    DMstk.QInvoiDUEDATE.Asdatetime := DMstk.QInvoiINVDT.Asdatetime + DMstk.QInvoi.Fieldbyname('credtm').asfloat;
end;

procedure TDmstk.QInvtrnTYPEValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT * FROM SETTYPE WHERE TYPECOD=:XCOD');
    Params[0].asstring := QInvtrnTYPE.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสยี่ห้อ');
  end;
end;

procedure TDmstk.QInvtrnMODELValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD=:XCOD');
    Params[0].asstring := QInvtrnMODEL.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสรุ่น');
  end;
end;

procedure TDmstk.QInvtrnBAABValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT * FROM SETBAAB WHERE BAABCOD=:XCOD');
    Params[0].asstring := QInvtrnBAAB.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบแบบรถในแฟ้มข้อมูล');
  end;
end;

procedure TDmstk.QInvtrnCOLORValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT * FROM SETCOLOR WHERE COLORCOD=:XCOD');
    Params[0].asstring := QInvtrnCOLOR.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบสีในแฟ้มข้อมูล');
  end;
end;

procedure TDmstk.QInvtrnSTRNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT STRNO FROM INVTRAN WHERE STRNO=:XCOD');
    Params[0].asstring := QInvtrnSTRNO.Asstring;
    Open;
    if not (Bof and Eof) then
      SFMain.RaiseException('หมายเลขถังนี้มีในแฟ้มข้อมูลแล้ว');
  end;
end;

procedure TDmstk.QInvtrnRVCODEValidate(Sender: TField);
begin
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:XCOD');
    Params[0].asstring := QInvtrnRVCODE.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสพนักงาน');
  end;
end;

procedure TDmstk.QInvtrnCRCOSTValidate(Sender: TField);
var
  E: Real;
begin
  if qInvoI.FieldByName('VATTYP').AsString = 'Y' then
  begin
    QInvtrn.FieldByName('TOTCOST').asfloat := (QInvtrn.FieldByName('CRCOST').asfloat - QInvtrn.FieldByName('DISCT').asfloat);
    E := FRound(QInvtrn.FieldByName('TOTCOST').asfloat * QInvtrn.FieldByName('VATRT').asfloat / (100 + QInvtrn.FieldByName('VATRT').asfloat), 2);
    QInvtrn.FieldByName('CRVAT').asfloat := E; //StrTofloat(FloatToStrf(E,ffFixed,15,2));
    QInvtrn.FieldByName('NETCOST').asfloat := QInvtrn.FieldByName('TOTCOST').asfloat - E;
  end
  else
  begin
    QInvtrn.FieldByName('NETCOST').asfloat := QInvtrn.FieldByName('CRCOST').asfloat - QInvtrn.FieldByName('DISCT').asfloat;
    E := FRound(QInvtrn.FieldByName('NETCOST').asfloat * QInvtrn.FieldByName('VATRT').asfloat / 100, 2);
    QInvtrn.FieldByName('CRVAT').asfloat := E; //StrTofloat(FloatToStrf(E,ffFixed,15,2));
    QInvtrn.FieldByName('TOTCOST').asfloat := QInvtrn.FieldByName('NETCOST').asfloat + E;
  end;
end;

procedure TDmstk.QInvtrnGCODEValidate(Sender: TField);
begin
  if QinvtrnGCODE.asstring = '' then
    SFMain.RaiseException('ระบบยี่ห้อสินค้า');
  with Query1 do
  begin
    close;
    Sql.clear;
    Sql.Add('SELECT * FROM SETGROUP WHERE GCODE=:XCOD');
    Params[0].asstring := QInvtrnGCODE.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสกลุ่มสินค้า');
  end;
end;

procedure TDmstk.QInvoiCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
        'Inserted', 'Deleted');
begin
  if QInvoi.CachedUpdates then
    QInvoiUpdateStatus.Value := UpdateStatusStr[QInvoi.UpdateStatus];
end;

procedure TDmstk.QInvoiBeforePost(DataSet: TDataSet);
var
  Xapname: string;
begin
  Clearasstring(QInvoi);
  //
  QInvtrn.First;
  if QInvtrn.State in dseditmodes then
    QInvtrn.Post;

  if QInvtrn.Eof and QInvtrn.Bof then
    SFMain.RaiseException('ยังไม่บันทึกรับรถ [click ที่ปุ่ม เพิ่มรายการ ก่อน] ');

  if QInvoi.FieldByName('Recvdt').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกวันรับสินค้า');
  if QInvoi.FieldByName('Apcode').asstring = '' then
    SFMain.RaiseException('ยังไม่มีรหัสเจ้าหนี้');
  if QInvoi.FieldByName('INVNO').asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบส่งสินค้า');
  if QInvoi.FieldByName('INVDT').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกวันรับส่งสินค้า');

  QInvtrn.First;
  if QInvoiUpdateStatus.Value = 'Inserted' then
  begin
    QInvoiRECVDTValidate(QInvoiRECVDT);
    QInvtrn.DisableControls;
    QInvtrn.AfterPost := Nil;
    QInvtrn.First;
    while not QInvtrn.Eof do
    begin
      QInvtrn.Edit;
      if QInvtrn.Fieldbyname('Strno').Asstring = '' then
        QInvtrn.Delete
      else
        QInvtrn.Fieldbyname('RECVNO').Asstring := QInvoiRECVNO.Asstring;

      QInvtrn.Next;
    end;
    QInvtrn.AfterPost := QInvtrnAfterPost;
    QInvtrn.EnableControls;
  end
  else
  begin
    QInvtrn.DisableControls;
    QInvtrn.AfterPost := Nil;
    QInvtrn.First;
    while not QInvtrn.Eof do
    begin
      QInvtrn.Edit;
      if QInvtrn.Fieldbyname('TSale').Asstring = '' then
        QInvtrn.Fieldbyname('RECVDT').AsDatetime := QInvoiRECVDT.AsDateTime;
      QInvtrn.FieldByName('CRLOCAT').AsString := QInvoiLOCAT.AsString;
      QInvtrn.Next;
    end;
    QInvtrn.AfterPost := QInvtrnAfterPost;
    QInvtrn.EnableControls;
    //
    with DMstk.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT RECVNO,TNOPAY FROM APINVOI WHERE RECVNO = :RECVNO');
      Params[0].Asstring := QInvoiRECVNO.Asstring;
      Open;
      if not (Eof and bof) then
        if FieldByName('TNopay').Asfloat > 1 then
          SFMain.RaiseException('ตั้งตารางการชำระเงินในระบบเจ้าหนี้แล้ว');
    end;
  end;
end;

procedure TDmstk.QInvoiBeforeDelete(DataSet: TDataSet);
begin
  QInvtrn.AfterDelete := Nil;
  Qinvtrn.First;
  while not Qinvtrn.Eof do
    Qinvtrn.Delete;
  QInvtrn.AfterDelete := QInvtrnAfterPost;
end;

procedure TDmstk.QInvoiAfterEdit(DataSet: TDataSet);
begin
  if (QInvtrn.FieldByName('Flag').Asstring = 'D') and
    (QInvtrn.FieldByName('Contno').Asstring = '') then
    QInvtrn.Edit;
end;

procedure TDmstk.QInvoiAfterCancel(DataSet: TDataSet);
begin
  if QInvoi.Active then
    QInvoi.CancelUpdates;
  if QInvtrn.Active then
    QInvtrn.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDmstk.QInvtrnNewRecord(DataSet: TDataSet);
begin
  Clearasfloat(QInvtrn);
  QInvtrn.FieldByName('RECVNO').Asstring := QInvoi.FieldByName('RECVNO').Asstring;
  QInvtrn.FieldByName('CRLOCAT').Asstring := QInvoi.FieldByName('LOCAT').Asstring;
  QInvtrn.FieldByName('RVLOCAT').Asstring := QInvoi.FieldByName('LOCAT').Asstring;
  QInvtrn.FieldByName('RECVDT').Asdatetime := QInvoi.FieldByName('RECVDT').Asdatetime;
  QInvtrn.FieldByName('VATRT').AsFloat := QInvoi.FieldByName('VATRT').AsFloat;
  QInvtrn.FieldByName('Stat').Asstring := 'N';
  QInvtrn.FieldByName('TAXIN').Asstring := 'N';
  QInvtrn.FieldByName('Flag').Asstring := 'D';
  QInvtrn.FieldByName('INPDT').AsDatetime := Now;
  QInvtrn.FieldByName('USERID').Asstring := SFMain.XUser_ID;
  if Xtype <> '' then
  begin
    QInvtrn.FieldByName('TYPE').Asstring := XTYPE;
    QInvtrn.FieldByName('MODEL').Asstring := XMODEL;
    QInvtrn.FieldByName('BAAB').Asstring := XBAAB;
    QInvtrn.FieldByName('COLOR').Asstring := XCOLOR;
    QInvtrn.FieldByName('RVCODE').Asstring := XRVCODE;
    QInvtrn.FieldByName('CC').Asstring := XCC;
    QInvtrn.FieldByName('GCODE').Asstring := XGCODE;
  end;
end;

procedure TDmstk.QInvtrnBeforePost(DataSet: TDataSet);
begin
  if QInvtrnGCODE.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกประเภทสินค้า');
  if QInvtrnRVCODE.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสผู้รับรถ');
  if QInvtrnTYPE.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสยี่ห้อ');
  if QInvtrnMODEL.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสรุ่น');
  if QInvtrnBAAB.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสแบบ');
  if QInvtrnCOLOR.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสสี');
  if QInvtrnSTRNO.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกหมายเลขถัง');
  if QInvtrnEngno.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกหมายเลขเครื่อง');
  if QInvtrnStdprc.Asfloat = 0 then
    SFMain.RaiseException('ยังไม่บันทึกราคาขายมาตรฐาน');

  XRVCODE := QInvtrn.FieldByName('RVCODE').Asstring;
  XTYPE := QInvtrn.FieldByName('TYPE').Asstring;
  XMODEL := QInvtrn.FieldByName('MODEL').Asstring;
  XBAAB := QInvtrn.FieldByName('BAAB').Asstring;
  XCOLOR := QInvtrn.FieldByName('COLOR').Asstring;
  XCC := QInvtrn.FieldByName('CC').Asstring;
  XGCODE := QInvtrn.FieldByName('GCODE').Asstring;
  QInvtrn.FieldByName('RVLOCAT').Asstring := QInvoi.FieldByName('LOCAT').Asstring;
  if qInvtrn.State = DsInsert then
  begin
    QInvtrn.FieldByName('CRLOCAT').Asstring := QInvoi.FieldByName('LOCAT').Asstring;
    QInvtrn.FieldByName('RECVDT').Asdatetime := QInvoi.FieldByName('RECVDT').Asdatetime;
    QInvtrn.FieldByName('VATRT').AsFloat := QInvoi.FieldByName('VATRT').AsFloat;
  end;
  if qInvtrn.State = DsEdit then
  begin
    QInvtrnRECVNO.AsString := QInvoi.fieldbyname('RECVNO').AsString;
    QInvtrnRECVDT.AsDateTime := QInvoi.fieldbyname('RECVDT').AsDateTime;
    QInvtrnVATRT.AsFloat := QInvoi.fieldbyname('VATRT').AsFloat;
    QInvtrnCRLOCAT.AsString := QInvoi.fieldbyname('LOCAT').AsString;
  end;
end;

procedure TDmstk.QInvtrnAfterPost(DataSet: TDataSet);
var
  XNetcst, XNetvat, XNetTot: double;
  SAmt: string;
  bk: Tbookmark;
begin
  QInvtrn.DisableControls;
  bk := QInvtrn.GetBookmark;
  XNetcst := 0;
  XNetvat := 0;
  XNetTot := 0;
  QInvtrn.first;
  while not QInvtrn.Eof do
  begin
    XNetcst := XNetcst + QInvtrnNETCOST.Asfloat;
    XNetvat := XNetvat + QInvtrnCRVAT.Asfloat;
    XNetTot := XNetTot + QInvtrnTOTCOST.Asfloat;
    QInvtrn.Next;
  end;
  if QInvoi.state = Dsbrowse then
    QInvoi.edit;
  QInvoi.FieldByName('NETCST').AsFloat := XNetcst;
  QInvoi.FieldByName('NETVAT').AsFloat := XNetvat;
  QInvoi.FieldByName('NETTOT').AsFloat := XNetTot;
  QInvtrn.EnableControls;
  QInvtrn.GotoBookMark(bk);
  QInvtrn.FreeBookmark(bk);
end;

procedure TDmstk.QInvoiAfterPost(DataSet: TDataSet);
var
  S, T: string;
begin
  S := QInvoiRECVNO.Asstring;
  T := QInvoiTAXNO.AsString;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QInvoi.Active then
      if (QInvoi.ApplyUpdates = 0) then
        QInvoi.CommitUpdates
      else
        raise Exception.Create(QInvoi.RowError.Message);
    if QInvtrn.Active then
      if (QInvtrn.ApplyUpdates = 0) then
        QInvtrn.CommitUpdates
      else
        raise Exception.Create(QInvtrn.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QInvoi.Edit;
    raise;
  end;
  //
  with DMstk.QInvoi do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM INVINVO WHERE RECVNO = :RECVNO');
    Params[0].Asstring := S;
    Open;
  end;
  with DMstk.QInvtrn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM INVTRAN WHERE RECVNO = :RECVNO');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TDmstk.QinvmovmNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(Qinvmovm);
  if not (Dm01.QCondpay.Active) then
    Dm01.QCondpay.Open;
  Qinvmovm.FieldByName('MOVEFM').Asstring := SFMain.XLocat;
  Qinvmovm.FieldByName('MOVEDT').AsDatetime := SFMain.CR_DATE;
  Qinvmovm.FieldByName('INPDATE').AsDatetime := Now;
  Qinvmovm.FieldByName('USERID').Asstring := SFMain.XUser_ID;
end;

procedure TDmstk.QinvmovmUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDmstk.QinvmovmCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if Qinvmovm.CachedUpdates then
    QinvmovmUpdateStatus.Value := UpdateStatusStr[Qinvmovm.UpdateStatus];
end;

procedure TDmstk.QinvmovmBeforePost(DataSet: TDataSet);
begin
  ClearAsstring(Qinvmovm);
  //
  if (QInvmovMMOVETo.asstring = '') or (QInvmovMMOVEFM.asstring = '') then
    SFMain.RaiseException('ยังไม่ระบุสาขาที่โอนย้าย');
  if (QInvmovMMOVENm.asstring = '') then
    SFMain.RaiseException('ยังไม่ระบุผู้อนุมัติ');

  Qinvmovt.First;
  if QinvmovmUpdateStatus.Value = 'Inserted' then
  begin
    //Rerun
    if Duplicate then
    begin
      QinvmovmMOVEDTValidate(QinvmovmMOVEDT);
      //
      Qinvmovt.DisableControls;
      Qinvmovt.First;
      while not Qinvmovt.Eof do
      begin
        Qinvmovt.Edit;
        Qinvmovt.Fieldbyname('MOVENO').Asstring := QinvmovmMOVENO.Asstring;
        Qinvmovt.Next;
      end;
      Qinvmovt.EnableControls;
    end;
  end;
  Qinvmovt.First;
  while not Qinvmovt.Eof do
  begin
    Qinvmovt.Edit;
    Qinvmovt.Fieldbyname('MOVEDT').Asstring := QinvmovmMOVEDT.Asstring;
    Qinvmovt.Next;
  end;
end;

procedure TDmstk.QinvmovmBeforeDelete(DataSet: TDataSet);
begin
  Qinvmovt.First;
  while not Qinvmovt.Eof do
    Qinvmovt.Delete;
end;

procedure TDmstk.QinvmovmAfterPost(DataSet: TDataSet);
var
  Xmoveno: string;
begin
  Xmoveno := QInvmovm.fieldbyname('MOVENO').AsString;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QInvmovm.Active then
      if (QInvmovm.ApplyUpdates = 0) then
        QInvmovm.CommitUpdates
      else
        raise Exception.Create(QInvmovm.RowError.Message);
    if QInvmovt.Active then
      if (QInvmovt.ApplyUpdates = 0) then
        QInvmovt.CommitUpdates
      else
        raise Exception.Create(QInvmovt.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QInvmovm.Edit;
    raise;
  end;
  //
  with Qinvmovm do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM INVMOVM WHERE MOVENO=:XMno');
    params[0].AsString := Xmoveno;
    open;
  end;
  with Qinvmovt do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM INVMOVT WHERE MOVENO=:XMno');
    params[0].AsString := Xmoveno;
    open;
  end;
end;

procedure TDmstk.QinvmovmAfterCancel(DataSet: TDataSet);
begin
  if QInvmovm.Active then
    QInvmovm.CancelUpdates;
  if QInvmovt.Active then
    QInvmovt.CancelUpdates;
  if QInvtran.Active then
    QInvtran.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDmstk.QinvmovmMOVEDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_TFCAR';
  LF := 'L_TFCAR';
  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  if Dm01.QDBConfig.Fieldbyname('R_TFCAR').asstring = 'Y' then
  begin
    LV := QInvmovMMovefm.asstring;
    DV := QInvmovMMoveDT.asdatetime;
    if QInvmovMUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(MOVENO) AS MAXNO FROM INVMOVM WHERE MOVEFM=:EDIT1 AND ' +
        'SUBSTR(MOVENO,2,2)=:EDIT2 AND SUBSTR(MOVENO,5,2)=:EDIT3 AND SUBSTR(MOVENO,7,2)=:EDIT4';
      QInvmovMMOVENO.Asstring := Dm01.Maxno(HF, LF, LV, SQLTXT, DV);
    end;
  end;
end;

procedure TDmstk.QinvmovmMOVENMValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT');
    Params[0].Asstring := QinvmovmMOVENM.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสพนักงาน');
  end;
end;

procedure TDmstk.QinvmovmMOVERVValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT');
    Params[0].Asstring := QinvmovmMOVERV.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสพนักงาน');
  end;
end;

procedure TDmstk.QinvmovmMOVEFMValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT LOCATCD FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := QinvmovmMOVEFM.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;
  QinvmovmMOVEDTValidate(Sender);
end;

procedure TDmstk.QinvmovmMOVETOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT LOCATCD FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := QinvmovmMOVETO.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;
end;

procedure TDmstk.QinvmovtNewRecord(DataSet: TDataSet);
begin
  if QinvmovmMOVETO.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกสาขาที่จะโอนไป');
  QinvmovtMOVENO.Asstring := QinvmovmMOVENO.Asstring;
  QinvmovtMOVEDT.Asdatetime := QinvmovmMOVEDT.Asdatetime;
  QinvmovtMOVEFM.Asstring := QinvmovmMOVEFM.Asstring;
  QinvmovtMOVETO.Asstring := QinvmovmMOVETO.Asstring;
  QinvmovtINPDATE.Asdatetime := Now;
end;

procedure TDmstk.QinvmovtBeforeClose(DataSet: TDataSet);
begin
  QInvtran.Close;
end;

procedure TDmstk.QinvmovtAfterOpen(DataSet: TDataSet);
begin
  QInvtran.Open;
end;

procedure TDmstk.QOptinvNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QOptinv);
  Dm01.QCondpay.Close;
  Dm01.QCondpay.Open;
  QOptinv.FieldByName('FLTAX').Asstring := 'N';
  QOptinv.FieldByName('RVLOCAT').Asstring := SFMain.XLocat;
  QOptinv.FieldByName('RECVDT').AsDatetime := SFMain.CR_DATE;
  QOptinv.FieldByName('INPDT').AsDatetime := Now;
  QOptinv.FieldByName('USERID').Asstring := SFMain.XUser_ID;
  QOptinv.FieldByName('VATRT').AsFloat := Dm01.QCondpay.Fieldbyname('Vat').asfloat;
end;

procedure TDmstk.QOptinvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QOptInv.CachedUpdates then
    QOptInvUpdateStatus.Value := UpdateStatusStr[QOptInv.UpdateStatus];
end;

procedure TDmstk.QOptinvBeforePost(DataSet: TDataSet);
begin
  ClearAsString(QOptinv);

  if QOptinvRVLOCAT.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสสาขา');
  if QOptinvRECVDT.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกวันทึกรับ');
  if QOptinvAPCODE.asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสเจ้าหนี้');

  QOpttran.First;
  if QOptinvUpdateStatus.Value = 'Inserted' then
  begin
    //Rerun
    if Duplicate then
    begin
      QOptinvRECVDTValidate(QInvoiRECVDT);
      QOpttran.DisableControls;
      QOpttran.AfterPost := Nil;
      QOpttran.First;
      while not QInvtrn.Eof do
      begin
        QOpttran.Edit;
        QOpttran.Fieldbyname('RECVNO').Asstring := QOptinvRECVNO.Asstring;
        QOpttran.Fieldbyname('RECVDT').Asstring := QOptinvRECVDT.Asstring;
        QOpttran.Next;
      end;
      QOpttran.AfterPost := QOpttranAfterPost;
      QOpttran.EnableControls;
    end;
  end
  else
  begin
    if QOptinvUPD.Asstring = 'U' then
      QOptinvUPD.Asstring := 'X'
    else
      QOptinvUPD.Asstring := 'U';
  end;
    // insert taxbuy 02/04/2001
    //  Insert Taxbuy
  if (QOptinvTAXNO.Asstring <> '') and (QOptinvVATRT.AsFloat <> 0) then
  begin
    with Query1 do
    begin
      Close;
      Sql.clear;
      Sql.Add('SELECT APNAME FROM APMAST WHERE APCODE=:EDIT1');
      Params[0].Asstring := QOptinvAPCODE.AsString;
      Open;
    end;
    //
    with TAXBUY do
    begin
      Close;
      sql.clear;
      Sql.add('SELECT * FROM TAXBUY WHERE TAXNO = :Edit1 ');
      Params[0].Asstring := QOptinvTAXNO.Asstring;
      Open;
      insert;
    {  If Taxbuy.Eof and Taxbuy.Bof Then
         Taxbuy.Insert
      Else
         Taxbuy.Edit; }
    end;
  end;
  TAXBUYTaxno.AsString := QOptinvTAXNO.AsString;
  TAXBUYLocat.AsString := QOptinvRVLOCAT.AsString;
  TAXBUYTaxDate.AsDateTime := QOptinvTAXDT.AsDateTime;
  TAXBUYTaxRefno.AsString := QOptinvRECVNO.AsString;
  TAXBUYRecvdt.AsDateTime := QOptinvRECVDT.AsDateTime;
  TAXBUYCuscod.AsString := QOptinvAPCODE.AsString;
   // TAXBUYNAME1.AsString     := Query1.Fieldbyname('APNAME').Asstring;
  TAXBUYVatrt.AsFloat := QOptinvVATRT.AsFloat;
  TAXBUYBalance.AsFloat := QOptinvNETCST.AsFloat;
  TAXBUYVat.AsFloat := QOptinvNETVAT.AsFloat;
  TAXBUYTottax.AsFloat := QOptinvNETTOT.AsFloat;
  TAXBUYDESC1.AsString := QOptinvDESCP.AsString;
  TAXBUYFlag.AsString := '';
   //  TAXBUYTaxFlg.AsString    := QOptinvFLTAX.AsString;
  TAXBUYTaxTyp.AsString := 'O';
  TaxBuyUserId.AsString := SFMain.XUser_ID;
  ;
  TaxBuyTime1.AsDateTime := Now;
  TAXBUY.Post;
end;

procedure TDmstk.QOptinvBeforeDelete(DataSet: TDataSet);
begin
  if not (Taxbuy.eof and taxbuy.Eof) then
    Taxbuy.Delete;
  QOpttran.AfterPost := Nil;
  QOpttran.First;
  while not QOpttran.Eof do
    QOpttran.Delete;
  QOpttran.AfterPost := QOpttranAfterPost;
end;

procedure TDmstk.QOptinvAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QOptInvRECVNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QOptInv.Active then
      if (QOptInv.ApplyUpdates = 0) then
        QOptInv.CommitUpdates
      else
        raise Exception.Create(QOptInv.RowError.Message);
    if QOpttran.Active then
      if (QOpttran.ApplyUpdates = 0) then
        QOpttran.CommitUpdates
      else
        raise Exception.Create(QOpttran.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    if Taxbuy.Active then
      if (Taxbuy.ApplyUpdates = 0) then
        Taxbuy.CommitUpdates
      else
        raise Exception.Create(Taxbuy.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QOptInv.Edit;
    raise;
  end;
  {มี Trigger Update Onhand In OPTMAST}
  with QOptinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *  FROM OPTINV WHERE RECVNO = :RECVNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with QOpttran do
  begin
    CLOSE;
    SQL.Clear;
    SQL.Add('SELECT * FROM OPTTRAN WHERE RECVNO = :RECVNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with TAXBUY do
  begin
    Close;
    sql.clear;
    Sql.add('SELECT * FROM TAXBUY WHERE TAXNO = :Edit1 ');
    Params[0].Asstring := QOptinvTAXNO.Asstring;
    Open;
  end;
end;

procedure TDmstk.QOptinvAfterEdit(DataSet: TDataSet);
begin
  QOpttran.Edit;
end;

procedure TDmstk.QOptinvAfterCancel(DataSet: TDataSet);
begin
  if QOptInv.Active then
    QOptInv.CancelUpdates;
  if QOpttran.Active then
    QOpttran.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDmstk.QOptinvRVLOCATValidate(Sender: TField);
begin
  if QOptinvRVLOCAT.Asstring <> '' then
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOC ');
      Params[0].Asstring := QOptinvRVLOCAT.Asstring;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสสาขา');
    end;
  //
  QOptinvRECVDTValidate(Sender);
end;

procedure TDmstk.QOptinvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDmstk.QOptinvRECVDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_RECVOP';
  LF := 'L_RECVOP';
  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  if Dm01.QDBConfig.Fieldbyname('R_RECVOP').asstring = 'Y' then
  begin
    LV := QOptInv.Fieldbyname('RvLocat').asstring;
    DV := QOptInv.Fieldbyname('Recvdt').asDatetime;
    if QOptInvUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(RECVNO) AS MAXNO FROM OPTINV WHERE RVLOCAT=:EDIT1 AND ' +
        'SUBSTR(RECVNO,2,2)=:EDIT2 AND SUBSTR(RECVNO,5,2)=:EDIT3 AND SUBSTR(RECVNO,7,2)=:EDIT4';
      QOptInvRECVNO.Asstring := Dm01.Maxno(HF, LF, LV, SQLTXT, DV)
    end;
  end;
end;

procedure TDmstk.QOptinvINVNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT INVNO FROM OPTINV WHERE INVNO=:1');
    Params[0].Asstring := QOptinvINVNO.Asstring;
    Open;
    if not (Bof and Eof) then
      SFMain.RaiseException('เลขที่ใบส่งสินค้าซ้ำในระบบเจ้าหนี้');
  end;
end;

procedure TDmstk.QOptinvINVDTValidate(Sender: TField);
begin
  QOptinvDUEDT.Asdatetime := QOptinvINVDT.Asdatetime + QOptinvCREDIT.Asfloat;
end;

procedure TDmstk.QOptinvAPCODEValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APMAST WHERE APCODE = :XAPCOD ');
    Params[0].Asstring := QOptinvAPCODE.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสเจ้าหนี้');
    if QInvoi.State in dseditmodes then
      DMstk.QInvoiCREDTM.Asfloat := DMstk.Query1.Fieldbyname('credtm').asfloat;
  end;
end;

procedure TDmstk.QOpttranNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QOpttran);
  QOpttran.FieldByName('RECVNO').Asstring := QOptInv.FieldByName('RECVNO').Asstring;
  QOpttran.FieldByName('RECVDT').AsDatetime := QOptInv.FieldByName('RECVDT').AsDatetime;
  QOpttran.FieldByName('RVLOCAT').Asstring := QOptInv.FieldByName('RVLOCAT').Asstring;
  QOpttran.FieldByName('VATRT').AsFloat := QOptInv.FieldByName('VATRT').AsFloat;
  QOpttran.FieldByName('INPDT').AsDatetime := Now;
  QOpttran.FieldByName('USERID').Asstring := SFMain.XUser_ID;
end;

procedure TDmstk.QOpttranBeforePost(DataSet: TDataSet);
begin
  if QOptinvUpdateStatus.Value = 'Inserted' then
    if QOpttranOptcode.Asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึกอุปกรณ์');
end;

procedure TDmstk.QOpttranAfterPost(DataSet: TDataSet);
var
  XNetcst, XNetvat, XNetTot: double;
  SAmt: string;
  bk: Tbookmark;
begin
  QOpttran.DisableControls;
  bk := QOpttran.GetBookmark;
  XNetcst := 0;
  XNetvat := 0;
  XNetTot := 0;
  QOpttran.first;
  while not QOpttran.Eof do
  begin
    XNetcst := XNetcst + QOpttranNETCST.Asfloat;
    QOpttran.Next;
  end;
  XNetvat := FRound(XNetcst * QOptInvVATRT.Asfloat / 100, 2);
  XNetTot := XNetcst + XNetvat;
  if QOptinv.state = Dsbrowse then
    QOptinv.edit;
  QOptinv.FieldByName('NETCST').AsFloat := XNetcst;
  QOptinv.FieldByName('NETVAT').AsFloat := XNetvat;
  QOptinv.FieldByName('NETTOT').AsFloat := XNetTot;

  QOpttran.EnableControls;
  QOpttran.GotoBookMark(bk);
  QOpttran.FreeBookmark(bk);
end;

procedure TDmstk.QOptMovmNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QOptMovM);
  Dm01.QCondpay.Close;
  Dm01.QCondpay.Open;
  QOptMovM.FieldByName('MOVEFM').Asstring := SFMain.XLocat;
  QOptMovM.FieldByName('MOVEDT').AsDatetime := SFMain.CR_DATE;
end;

procedure TDmstk.QOptMovmUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TDmstk.QOptMovmCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QOptMovM.CachedUpdates then
    QOptMovMUpdateStatus.Value := UpdateStatusStr[QOptMovM.UpdateStatus];
end;

procedure TDmstk.QOptMovmBeforePost(DataSet: TDataSet);
begin
  ClearAsstring(QOptMovM);

  if (QOptMovMMOVETo.asstring = '') or (QOptMovMMOVEFM.asstring = '') then
    SFMain.RaiseException('ยังไม่ระบุสาขาที่โอนย้าย');
  if (QOptMovMMOVENm.asstring = '') then
    SFMain.RaiseException('ยังไม่ระบุผู้อนุมัติ');

  QOptMovT.First;
  if QOptMovMUpdateStatus.Value = 'Inserted' then
  begin
    //Rerun
    if Duplicate then
      QOptMovMMOVEDTValidate(QOptMovMMOVEDT);
    QOptMovT.DisableControls;
    QOptMovT.First;
    while not QOptMovT.Eof do
    begin
      QOptMovT.Edit;
      QOptMovT.Fieldbyname('MOVENO').Asstring := QOptMovMMOVENO.Asstring;
      QOptMovT.Next;
    end;
    QOptMovT.EnableControls;
  end;
end;

procedure TDmstk.QOptMovmBeforeDelete(DataSet: TDataSet);
begin
  QOptMovT.First;
  while not QOptMovT.Eof do
    QOptMovT.Delete;
end;

procedure TDmstk.QOptMovmAfterPost(DataSet: TDataSet);
var
  Xmoveno: string;
begin
  Xmoveno := QOptMovMMOVENO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QOptMovM.Active then
      if (QOptMovM.ApplyUpdates = 0) then
        QOptMovM.CommitUpdates
      else
        raise Exception.Create(QOptMovM.RowError.Message);
    if QOptMovT.Active then
      if (QOptMovT.ApplyUpdates = 0) then
        QOptMovT.CommitUpdates
      else
        raise Exception.Create(QOptMovT.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QOptMovM.Edit;
    raise;
  end;
  //
  with Dmstk.QOptMovM do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM OPTMOVM WHERE MOVENO = :MOVENO ');
    PARAMS[0].ASSTRING := Xmoveno;
    OPEN;
  end;
  with Dmstk.QOptMovT do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM OPTMOVT WHERE MOVENO = :MOVENO ');
    PARAMS[0].ASSTRING := Xmoveno;
    OPEN;
  end;
end;

procedure TDmstk.QOptMovmAfterCancel(DataSet: TDataSet);
begin
  if QOptMovM.Active then
    QOptMovM.CancelUpdates;
  if QOptMovT.Active then
    QOptMovT.CancelUpdates;
  if Dm01.QLastno.Active then
    Dm01.QLastno.CancelUpdates;
end;

procedure TDmstk.QOptMovmMOVEDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_TFOPT';
  LF := 'L_TFOPT';

  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  if Dm01.QDBConfig.Fieldbyname('R_TFOPT').asstring = 'Y' then
  begin
    LV := QOptMovMMovefm.asstring;
    DV := QOptMovMMoveDT.asdatetime;

    if QOptMovMUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(MOVENO) AS MAXNO FROM OPTMOVM WHERE MOVEFM=:EDIT1 AND ' +
        'SUBSTR(MOVENO,2,2)=:EDIT2 AND SUBSTR(MOVENO,5,2)=:EDIT3 AND SUBSTR(MOVENO,7,2)=:EDIT4';
      QOptMovMMOVENO.Asstring := Dm01.Maxno(HF, LF, LV, SQLTXT, DV);
    end;
  end;
end;

procedure TDmstk.QOptMovmMOVENMValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT');
    Params[0].Asstring := QOptMovMMOVENM.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสพนักงาน');
  end;
end;

procedure TDmstk.QOptMovmMOVERVValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT');
    Params[0].Asstring := QOptMovMMOVERV.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสพนักงาน');
  end;
end;

procedure TDmstk.QOptMovmMOVEFMValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT LOCATCD FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := QOptMovMMOVEFM.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;
  QOptMovMMOVEDTValidate(Sender);
end;

procedure TDmstk.QOptMovmMOVETOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT LOCATCD FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := QOptMovMMOVETO.Asstring;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;
  if Dmstk.QOptMovM.fieldbyname('MoveFm').value = Dmstk.QOptMovM.fieldbyname('MoveTo').value then
    SFMain.RaiseException('โอนย้ายภายในสาขาเดียวกันไม่ได้');
end;

procedure TDmstk.QOptMovtOPTCODEValidate(Sender: TField);
begin
  with Query1 do
  begin
    CLOSE;
    SQL.CLEAR;
    SQL.ADD('SELECT * FROM OPTMAST WHERE OPTCODE = :OPTCODE ' +
      'AND LOCAT = :LOCAT ');
    PARAMS[0].ASSTRING := QOptMovT.Fieldbyname('OPtcode').Asstring;
    PARAMS[1].ASSTRING := QOptMovT.Fieldbyname('MOVEFM').Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสอุปกรณ์นี้');
  end;
end;

procedure TDmstk.QOptMovtNewRecord(DataSet: TDataSet);
begin
  if QOptMovMMOVETO.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกสาขาที่จะโอนไป');
  QOptMovTMOVENO.Asstring := QOptMovMMOVENO.Asstring;
  QOptMovTMOVEDT.Asdatetime := QOptMovMMOVEDT.Asdatetime;
  QOptMovTMOVEFM.Asstring := QOptMovMMOVEFM.Asstring;
  QOptMovTMOVETO.Asstring := QOptMovMMOVETO.Asstring;
end;

procedure TDmstk.QOptMovtBeforeClose(DataSet: TDataSet);
begin
  QOptmst.Close;
end;

procedure TDmstk.QOptMovtAfterOpen(DataSet: TDataSet);
begin
  QOptmst.Open;
end;

procedure TDmstk.QinvmovtSTRNOValidate(Sender: TField);
begin
  with Qinvtran do
  begin
    close;
    sql.clear;
    sql.Add('SELECT * FROM INVTRAN WHERE STRNO=:XSTRNO AND CRLOCAT=:XCRLOCAT');
    params[0].AsString := Qinvmovt.fieldbyname('STRNO').Asstring;
    params[1].AsString := Qinvmovt.fieldbyname('MOVEFM').Asstring;
    open;
  end;
  if (Qinvtran.eof and Qinvtran.bof) then
    SFMain.RaiseException('ไม่มีเลขตัวถังนี้อยู่ในสต็อก');
end;

procedure TDmstk.QinvmovtBeforeDelete(DataSet: TDataSet);
begin
  with Qinvtran do
  begin
    close;
    sql.clear;
    sql.Add('SELECT * FROM INVTRAN WHERE STRNO=:XSTRNO AND FLAG=''C'' ');
    params[0].AsString := Qinvmovt.fieldbyname('STRNO').Asstring;
    open;
  end;
  if not (Qinvtran.eof and Qinvtran.bof) then
    SFMain.RaiseException('เลขตัวถังนี้ถูกขายไปแล้ว');
end;

procedure TDmstk.QInvtrnCRVATValidate(Sender: TField);
begin
  if qInvoI.FieldByName('VATTYP').AsString = 'Y' then
    QInvtrn.FieldByName('NETCOST').asfloat := QInvtrn.FieldByName('TOTCOST').asfloat -
      QInvtrn.FieldByName('CRVAT').asfloat
  else
    QInvtrn.FieldByName('TOTCOST').asfloat := QInvtrn.FieldByName('NETCOST').asfloat +
      QInvtrn.FieldByName('CRVAT').asfloat;
end;

procedure TDmstk.QinvmovtSTRNOChange(Sender: TField);
begin
  if (Fmvcar.DataSource1.DataSet.State = DsInsert) then
  begin
    with query2 do
    begin
      close;
      sql.Clear;
      sql.add('SELECT STRNO,FLAG,CRLOCAT,RECVDT FROM INVTRAN WHERE STRNO=:0 AND CRLOCAT=:1 AND FLAG=''D'' ');
      Params[0].AsString := Dmstk.QInvMovT.fieldbyname('Strno').AsString;
      Params[1].AsString := Dmstk.QInvMovT.fieldbyname('MOVEFM').AsString;
      open;
    end;
    if query2.Eof and query2.Bof then
      SFMain.RaiseException('ไม่พบขัอมูลนี้...!');
    if query2.FieldByName('RECVDT').AsDateTime > Dmstk.QInvMovT.fieldbyname('MOVEDT').AsDateTime then
      SFMain.RaiseException('ไม่สามารถโอนก่อนวันที่รับได้...!');
  end;
end;

procedure TDmstk.QInvoiAPCODEValidate(Sender: TField);
begin
  if DMstk.QInvoiAPCODE.Asstring <> '' then
    dm01.FindNoExist('APMAST', 'APCODE', QinvoiAPCODE.AsString);
end;

procedure TDmstk.QOpttranOPTCODEChange(Sender: TField);
begin
  if (DMStk.SoOpttran.State = Dsinsert) and (DMstk.QOpttran.FieldByName('optcode').asstring <> '') then
  begin
    with DMstk.Query1 do
    begin
      CLOSE;
      SQL.CLEAR;
      SQL.ADD('SELECT * FROM OPTMAST WHERE OPTCODE = :OPTCODE ' +
        'AND LOCAT = :LOCAT ');
      PARAMS[0].ASSTRING := DmStk.QOpttran.Fieldbyname('OPtcode').Asstring;
      PARAMS[1].ASSTRING := DmStk.QOptinv.Fieldbyname('RVLOCAT').Asstring;
      OPEN;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสอุปกรณ์นี้');
      DmStk.QOpttran.FieldByname('OptName').Asstring := DMstk.Query1.Fieldbyname('OptName').Asstring;
      DmStk.QOpttran.FieldByname('Unitcst').Asfloat := DMstk.Query1.Fieldbyname('UnitCst').AsFloat;
    end;
  end;
end;

procedure TDmstk.QOpttranDSCAMTChange(Sender: TField);
begin
  DmStk.QOpttran.FieldByname('TOTCST').AsFloat := DmStk.QOpttran.FieldByname('Qty').AsFloat * DmStk.QOpttran.FieldByname('UNITCST').AsFloat;
  DmStk.QOpttran.FieldByname('NETCST').AsFloat := DmStk.QOpttran.FieldByname('TOTCST').AsFloat - DmStk.QOpttran.FieldByname('DSCAMT').AsFloat;
  DmStk.QOpttran.FieldByname('NETVAT').AsFloat := DmStk.QOpttran.FieldByname('NETCST').AsFloat * DmStk.QOpttran.FieldByname('VATRT').AsFloat / 100;
end;

procedure TDmstk.QOpttranQTYChange(Sender: TField);
begin
  DmStk.QOpttran.FieldByname('TOTCST').AsFloat := DmStk.QOpttran.FieldByname('Qty').AsFloat * DmStk.QOpttran.FieldByname('UNITCST').AsFloat;
  DmStk.QOpttran.FieldByname('NETCST').AsFloat := DmStk.QOpttran.FieldByname('TOTCST').AsFloat - DmStk.QOpttran.FieldByname('DSCAMT').AsFloat;
  DmStk.QOpttran.FieldByname('NETVAT').AsFloat := DmStk.QOpttran.FieldByname('NETCST').AsFloat * DmStk.QOpttran.FieldByname('VATRT').AsFloat / 100;
end;

end.

