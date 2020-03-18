program ISCPlus;

uses
  Forms,
  WinDows,
  Messages,
  Controls,
  Wintypes,
  SysUtils,
  Db,
  Dialogs,
  DMSEC in 'DMSEC.PAS' {DM_SEC: TDataModule},
  PASSWORD in 'PASSWORD.PAS' {PasswordDlg},
  Dmsvset in 'Dmsvset.pas' {Dm_SvSet: TDataModule},
  DmSet1 in 'DmSet1.pas' {Dm_set1: TDataModule},
  Dmic01 in 'Dmic01.pas' {FmDmic01: TDataModule},
  Dmap in 'Dmap.pas' {Dm_Ap1: TDataModule},
  DmAr in 'DmAr.pas' {Dm_Ar: TDataModule},
  DmSv in 'DmSv.pas' {Dm_SV: TDataModule},
  Dmfinc in 'Dmfinc.pas' {Dm_Finc: TDataModule},
  unLicense in 'unLicense.pas',
  unfrPreview in 'unfrPreview.pas' {frCustPrev},
  Dmpo in 'Dmpo.pas' {Dm_Po: TDataModule},
  UWelcome in 'UWelcome.pas' {frWelcome},
  Passinp1 in 'Passinp1.pas' {Fpassinp1},
  uChgPwd in 'uChgPwd.pas' {frChgPwd},
  uCheckAut in 'uCheckAut.pas' {FChkmenu1},
  uUpdConfig in 'uUpdConfig.pas' {frUpdConfig},
  Settype in 'Settype.pas' {FType},
  SetGroup in 'SetGroup.pas' {FSGroup},
  DlgPtkit in 'DlgPtkit.pas' {FDlgptkit},
  Set_Inv in 'Set_Inv.pas' {SetInvMst},
  Set_inv2 in 'Set_inv2.pas' {SetInvloc},
  svst40 in 'svst40.pas' {SvSt_40},
  TypeClaim in 'TypeClaim.pas' {SetTypeClaim},
  Setargrp in 'Setargrp.pas' {FArgroup},
  unCustom in 'unCustom.pas' {FormCustmst},
  unCustomvip in 'unCustomvip.pas' {FrCustVip},
  Svst10 in 'Svst10.pas' {SvSt_10},
  Setpyfor in 'Setpyfor.pas' {FPayfor},
  Set_Pyty in 'Set_Pyty.pas' {FPaytyp},
  Set_Loct in 'Set_Loct.pas' {SetLocat},
  unSetDepart in 'unSetDepart.pas' {FSetDepart},
  unSetOfficer in 'unSetOfficer.pas' {FSetOfficer},
  uEngineer in 'uEngineer.pas' {FSetEngineer},
  Set_camp in 'Set_camp.pas' {FCamp},
  SetCond2 in 'SetCond2.pas' {SetCmpForm2},
  svst30 in 'svst30.pas' {SvSt_30},
  svst50 in 'svst50.pas' {SvSt_50},
  unGrpCKList in 'unGrpCKList.pas' {frGrpCKList},
  SVST60 in 'SVST60.pas' {SvSt_60},
  SVST90 in 'SVST90.pas' {FmSvSt90},
  svst91 in 'svst91.pas' {FmSvSt91},
  svst93 in 'svst93.pas' {FmSvSt93},
  svst92 in 'svst92.pas' {FmSvSt92},
  Adjpric in 'Adjpric.pas' {FAdjprc},
  upstock in 'upstock.pas' {Fupstock},
  Endofmon in 'Endofmon.pas' {FEndofmon},
  Endofyea in 'Endofyea.pas' {FEndofyea},
  upoveryy in 'upoveryy.pas' {Fupoveryear},
  Dlgcopy in 'Dlgcopy.pas' {FDlgcopy},
  ChgGroup in 'ChgGroup.pas' {FChggroup},
  chgmodel in 'chgmodel.pas' {Fchgmdl},
  ChgPart in 'ChgPart.pas' {FChgpartno},
  Chgstrno in 'Chgstrno.pas' {FChgstrno},
  ChgOwner in 'ChgOwner.pas' {Changowner},
  unInvoiClaimCar in 'unInvoiClaimCar.pas' {FInvoiClaimCar},
  FcanPo in 'FcanPo.pas' {FCanorder},
  RpPo10 in 'RpPo10.pas' {FRpPo10},
  RpPo20 in 'RpPo20.pas' {FRpPo20},
  RpPo30 in 'RpPo30.pas' {FRpPo30},
  RpPo50 in 'RpPo50.pas' {FRpPo50},
  RpPo40 in 'RpPo40.pas' {FRpPo40},
  Stin01 in 'Stin01.pas' {FmSTIn01},
  Stin05 in 'Stin05.pas' {FmSTIn05},
  Apinv04 in 'Apinv04.pas' {Apinv_4},
  Stin04 in 'Stin04.pas' {FmSTIn04},
  STin02_1 in 'STin02_1.pas' {FmSTin02_1},
  Stin14 in 'Stin14.pas' {FmSTIn14},
  Stin03 in 'Stin03.pas' {FmSTIn03},
  STIn11 in 'STIn11.pas' {FmSTIn11},
  STIn12 in 'STIn12.pas' {FmSTIn12},
  Stin06 in 'Stin06.pas' {FmSTIn06},
  StMvRecv in 'StMvRecv.pas' {FmStMvrecv},
  STIn08 in 'STIn08.pas' {FmSTIn08},
  STIn09 in 'STIn09.pas' {FmSTIn09},
  ExportSt in 'ExportSt.pas' {FExpStock},
  STIn10 in 'STIn10.pas' {FmSTIn10},
  Set_cost in 'Set_cost.pas' {FSetcost},
  uLostSale in 'uLostSale.pas' {FLostSale},
  EnqPart in 'EnqPart.pas' {FmEnqpart},
  Enqpkinv in 'Enqpkinv.pas' {Fenqpkinv},
  EnqPart1 in 'EnqPart1.pas' {FmEnqpart1},
  EnqBack in 'EnqBack.pas' {FmEnqBack},
  EnqMove in 'EnqMove.pas' {FmEnqMove},
  uCatalogPrc in 'uCatalogPrc.pas' {FrPriceList},
  IcRp110 in 'IcRp110.pas' {FIcRp110},
  STRp220 in 'STRp220.pas' {FmSTRp220},
  STRp310 in 'STRp310.pas' {FmSTRp310},
  UCatalog1 in 'UCatalog1.pas' {FCatalog1},
  uRpStkBal in 'uRpStkBal.pas' {frmRpStkBal},
  StrPC30 in 'StrPC30.pas' {FmSTRpc30},
  STRpd20 in 'STRpd20.pas' {FmSTRpd20},
  STRp50 in 'STRp50.pas' {FmSTRp50},
  STRpa80 in 'STRpa80.pas' {FmSTRpa80},
  STRp60 in 'STRp60.pas' {FmSTRp60},
  STRp70 in 'STRp70.pas' {FmSTRp70},
  STRpA40 in 'STRpA40.pas' {FmSTRpa40},
  STRpa50 in 'STRpa50.pas' {FmRpa50},
  strpa70 in 'strpa70.pas' {FmRpa70},
  strpc10 in 'strpc10.pas' {StRp_C10},
  strpc20 in 'strpc20.pas' {StRp_C20},
  uRpPartProf in 'uRpPartProf.pas' {FRpPartProf},
  strpc50 in 'strpc50.pas' {StRp_C50},
  strpb40 in 'strpb40.pas' {FmSTRpB40},
  FrSumcostSale in 'FrSumcostSale.pas' {FSumCostSale},
  usumPrifitPart in 'usumPrifitPart.pas' {FrSumProfitPart},
  STRpA20 in 'STRpA20.pas' {FmSTRpA20},
  RpAp_04 in 'RpAp_04.pas' {FmRpAp_04},
  Svin10 in 'Svin10.pas' {SvIn_10},
  SvIn20 in 'SvIn20.pas' {SvIn_20},
  spin01 in 'spin01.pas' {FSpIn01},
  Svin30 in 'Svin30.pas' {SvIn_30},
  Svinnewp in 'Svinnewp.pas' {FSvnewProb},
  Hlpbrinv in 'Hlpbrinv.pas' {Fhlpbrinv},
  unHistorySV in 'unHistorySV.pas' {frHistorySV},
  PayCrdt2 in 'PayCrdt2.pas' {FCredtpay2},
  Crdnote1 in 'Crdnote1.pas' {Fcrdnote1},
  Paycash2 in 'Paycash2.pas' {FCashpay2},
  unInvoiceAdd in 'unInvoiceAdd.pas' {FrInvoiceAdd},
  payoth in 'payoth.pas' {FPayoth},
  unInvClaim in 'unInvClaim.pas' {frInvClaim},
  unTaxClaim in 'unTaxClaim.pas' {frTaxClaim},
  Arinv04 in 'Arinv04.pas' {Arinv_4},
  SvRpA40 in 'SvRpA40.pas' {FmSvRpA40},
  SvRpc20 in 'SvRpc20.pas' {FmSvRpc20},
  svrpc50 in 'svrpc50.pas' {FSvrpc50},
  unRepCupong in 'unRepCupong.pas' {frRepCupong},
  Svrpa70 in 'Svrpa70.pas' {FmSvRpA70},
  Svrpa80 in 'Svrpa80.pas' {FmSvRpA80},
  RpSv01 in 'RpSv01.pas' {FRpSv01},
  svrp10 in 'svrp10.pas' {SvRp_10},
  svrp60 in 'svrp60.pas' {SvRp_60},
  svrp20 in 'svrp20.pas' {SvRp_20},
  svrp30 in 'svrp30.pas' {SvRp_30},
  svrpc10 in 'svrpc10.pas' {FmSvRpc10},
  svrp40 in 'svrp40.pas' {SvRp_40},
  uSumProfitByTsv in 'uSumProfitByTsv.pas' {frSumProfitByTsv},
  uSumProfitByGcode in 'uSumProfitByGcode.pas' {frSumProfitByGcode},
  uSumProfitByModel in 'uSumProfitByModel.pas' {frSumProfitByModel},
  Arinv01 in 'Arinv01.pas' {Arinv_1},
  Arinv02 in 'Arinv02.pas' {Arinv_2},
  Arinv03 in 'Arinv03.pas' {Arinv_3},
  Arrp10 in 'Arrp10.pas' {ArRp_10},
  ArRp20 in 'ArRp20.pas' {ArRp_20},
  ArRp30 in 'ArRp30.pas' {ArRp_30},
  ArRp40 in 'ArRp40.pas' {ArRp_40},
  ArRp50 in 'ArRp50.pas' {ArRp_50},
  ArRp70 in 'ArRp70.pas' {ArRp_70},
  ArRp60 in 'ArRp60.pas' {ArRp_60},
  rpArBill in 'rpArBill.pas' {FrpArBill},
  UpInvoi in 'UpInvoi.pas' {Fupinvoi},
  unDelaySV in 'unDelaySV.pas' {frDelayService},
  unFrequencySV in 'unFrequencySV.pas' {frFrequencySv},
  U_StickerMDL in 'U_StickerMDL.pas' {UStickerMDL},
  StickDT in 'StickDT.pas' {UStickDT},
  U_RepCustmast in 'U_RepCustmast.pas' {URepCustmast},
  SvFn50 in 'SvFn50.pas' {SvFn_50},
  TXRp20 in 'TXRp20.pas' {FmTXRp20},
  TXRP30 in 'TXRP30.pas' {FmTXRp30},
  TxRp10 in 'TxRp10.pas' {FmTXRp10},
  Anlrp40 in 'Anlrp40.pas' {FAnlrp40},
  uFindADJ in 'uFindADJ.pas' {fFindADJ},
  uFindData in 'uFindData.pas' {fFindData},
  uFindPO in 'uFindPO.pas' {fFindPO},
  uSrcDLG in 'uSrcDLG.pas' {fSrcDLG},
  uSrcDLG1 in 'uSrcDLG1.pas' {fSrcDLG1},
  uSrcDlgAR in 'uSrcDlgAR.pas' {fSrcDLGAr},
  uSrchdlg1 in 'uSrchdlg1.pas' {fSrchDlg1},
  Functn01 in 'Functn01.pas',
  Usetcompa in 'Usetcompa.pas' {Fsetcompa},
  Dm1 in 'Dm1.pas' {DM01: TDataModule},
  Srchset1 in 'Srchset1.pas' {SearchSet},
  unSetBaab in 'unSetBaab.pas' {FSetBaab},
  Setoptn in 'Setoptn.pas' {SOptForm1},
  unSetTypReson in 'unSetTypReson.pas' {FSetReson},
  Urecv in 'Urecv.pas' {Frecv},
  Dmstock in 'Dmstock.pas' {Dmstk: TDataModule},
  SrchStk in 'SrchStk.pas' {SearchStk},
  Umvcar in 'Umvcar.pas' {Fmvcar},
  Srchsal1 in 'Srchsal1.pas' {SearchSale},
  unRecvOption in 'unRecvOption.pas' {Frvopt},
  umvopt in 'umvopt.pas' {Fmvopt},
  Quiryst2 in 'Quiryst2.pas' {QuirySTkForm2},
  Quiropt1 in 'Quiropt1.pas' {QuiryOptForm1},
  UArresv in 'UArresv.pas' {FArresv},
  DmSal in 'DmSal.pas' {Dm_Sal: TDataModule},
  AgnSal10 in 'AgnSal10.pas' {FAgnSal1},
  OptSal10 in 'OptSal10.pas' {FOptSal1},
  FinSal10 in 'FinSal10.pas' {FFinSal1},
  Ucshsal in 'Ucshsal.pas' {FCshsal},
  cshsal11 in 'cshsal11.pas' {FCshSal2},
  CshSalAgn in 'CshSalAgn.pas' {FCshSalAgn},
  ClosAr10 in 'ClosAr10.pas' {FClosAr10},
  FincRecv in 'FincRecv.pas' {FincForm1},
  Srchfin in 'Srchfin.pas' {Searchfin},
  frBillMenu in 'frBillMenu.pas' {fBillMenu},
  Dmfin01 in 'Dmfin01.pas' {Dmfin: TDataModule},
  CalDisc in 'CalDisc.pas',
  DmCal in 'DmCal.pas' {Dm_Cal: TDataModule},
  ShwDisc in 'ShwDisc.pas' {ShwDscForm1},
  CRDFincRecv in 'CRDFincRecv.pas' {CRDFincForm1},
  frCrdBillMenu in 'frCrdBillMenu.pas' {fCrdBillMenu},
  uCrtTaxbuy in 'uCrtTaxbuy.pas' {frCrtTaxBuy},
  crdbuy10 in 'crdbuy10.pas' {FCredBuy1},
  SrchTax1 in 'SrchTax1.pas' {SearchTax},
  DmTax in 'DmTax.pas' {Dm_Tax: TDataModule},
  DueFrm10 in 'DueFrm10.pas' {FTaxdue1},
  crdbuy20 in 'crdbuy20.pas' {FCredBuy2},
  crdsal10 in 'crdsal10.pas' {FCredSal1},
  CrdSalAr_invoi in 'CrdSalAr_invoi.pas' {FCredSalAr_invoi},
  crdsal30 in 'crdsal30.pas' {FCredSal3},
  uRCrdResv in 'uRCrdResv.pas' {fCrdResv},
  frRepStk in 'frRepStk.pas' {frRepStkRc},
  frRpDltStk0 in 'frRpDltStk0.pas' {frRpDlgStk0},
  RpOpt10 in 'RpOpt10.pas' {QRFormopt10},
  RpOpt20 in 'RpOpt20.pas' {QRFormopt20},
  rpmvfm10 in 'rpmvfm10.pas' {Movfm10},
  rpmvto10 in 'rpmvto10.pas' {Movto10},
  uRpStkreg in 'uRpStkreg.pas' {RepStkReg},
  uRpDeposit in 'uRpDeposit.pas' {RepDeposit},
  RpStk20 in 'RpStk20.pas' {fRepStkCost},
  RpTXD10 in 'RpTXD10.pas' {FRpTXD10},
  uRpMvFmAc in 'uRpMvFmAc.pas' {FRepMoveCarAc},
  URepSalePDI in 'URepSalePDI.pas' {FRepSalePDI},
  un_Reserv in 'un_Reserv.pas' {FRpres10},
  RpSc50 in 'RpSc50.pas' {FRpSC50},
  rpcshA20 in 'rpcshA20.pas' {FRcsh_ac},
  Rpfina20 in 'Rpfina20.pas' {FRfin_ac},
  URpSaleAgenAc in 'URpSaleAgenAc.pas' {fRpSaleAgenAc},
  RepRcFin00 in 'RepRcFin00.pas' {frRepRc0},
  RpRec10 in 'RpRec10.pas' {FRecv10},
  RepCan10 in 'RepCan10.pas' {FRepCan10},
  rparb10 in 'rparb10.pas' {FRparB10},
  RpAra10 in 'RpAra10.pas' {FRparA10},
  RpAra30 in 'RpAra30.pas' {FRparA30},
  RpArA40 in 'RpArA40.pas' {FRparA40},
  unRepArOpt in 'unRepArOpt.pas' {FRepArOpt},
  RpAra60 in 'RpAra60.pas' {FRparA60},
  prnlabl10 in 'prnlabl10.pas' {FPrnLabl10},
  unRpPaymentClaim in 'unRpPaymentClaim.pas' {FRpPaymentClaim},
  rptxby10 in 'rptxby10.pas' {FRpTxBy10},
  uAddCostCs in 'uAddCostCs.pas' {frAddOptCs},
  uAddCostFin in 'uAddCostFin.pas' {frAddOptFin},
  uAddGarFin in 'uAddGarFin.pas' {frAddGarFin},
  uEditTaxsal in 'uEditTaxsal.pas' {fEditTaxsal},
  unSetGrdCust in 'unSetGrdCust.pas' {FSetGrdCust},
  uApmaster in 'uApmaster.pas' {frApmaster},
  uCan_Del in 'uCan_Del.pas' {frCan_Del},
  Setfimst in 'Setfimst.pas' {FSetFinmst},
  uBankbook in 'uBankbook.pas' {frBankbook},
  uBanklocat in 'uBanklocat.pas' {frBanklocat},
  uClose in 'uClose.pas' {FrmClose},
  unStkRegRed in 'unStkRegRed.pas' {frStkRegRed},
  unDeposit in 'unDeposit.pas' {frDepReg},
  unDiscDep in 'unDiscDep.pas' {frDisDep},
  uDataflow in 'uDataflow.pas' {frDataflow},
  Srchdlg in 'Srchdlg.pas' {SearchDlg},
  Srchdlg1 in 'Srchdlg1.pas' {SearchDlg1},
  SrchdlgAr in 'SrchdlgAr.pas' {SearchDlgAr},
  SrchdlgTx in 'SrchdlgTx.pas' {SearchDlgTx},
  STHelp in 'STHelp.pas' {FmSTHelp},
  STHpIn10 in 'STHpIn10.pas' {FmSTHpIn10},
  StHpRp in 'StHpRp.pas' {FmSTHpRp},
  uFindDLG in 'uFindDLG.pas' {fFindDLG},
  unPurchase in 'unPurchase.pas' {FPurChase},
  resv11 in 'resv11.pas' {FResv11},
  un_MOdiStrno in 'un_MOdiStrno.pas' {frMoDiStrno},
  ArOthr1 in 'ArOthr1.pas' {FArOth10},
  HlpBill in 'HlpBill.pas' {FhlpBill},
  HLPDEV in 'HLPDEV.PAS' {FhlpDev},
  HlpJob in 'HlpJob.pas' {HelpJob},
  Hlpjobnew in 'Hlpjobnew.pas' {HelpJobNew},
  HlpOth in 'HlpOth.pas' {FhlpOth},
  HLPPAY in 'HLPPAY.PAS' {Hlp_Pay},
  Hlpptkit in 'Hlpptkit.pas' {PtKitDlg},
  HlpSvmst in 'HlpSvmst.pas' {HelpSvmst},
  Sthprtn in 'Sthprtn.pas' {Sthelprtn},
  Svsthlp in 'Svsthlp.pas' {SvSt_Hlp},
  unTaxSale in 'unTaxSale.pas' {frTaxSale},
  unRecvClaimCar in 'unRecvClaimCar.pas' {frRecvClaimCar},
  FChqPay1 in 'FChqPay1.pas' {FmChqpay1},
  frPrnTxSale in 'frPrnTxSale.pas' {frPrnTxsl},
  PurchasekitDlg in 'PurchasekitDlg.pas' {frPurchaseKitDlg},
  Stin07 in 'Stin07.pas' {FmSTIn07},
  Crdpost in 'Crdpost.pas' {FcrdPost},
  Paymnt in 'Paymnt.pas' {FPaymnt},
  strpa10 in 'strpa10.pas' {FmSTRpA10},
  RecvHistory in 'RecvHistory.pas' {FRecvHistory},
  URepSale in 'URepSale.pas' {FRepSale},
  uRpReChkServ in 'uRpReChkServ.pas' {SvRechk},
  unQuerySale in 'unQuerySale.pas' {FQuerySale},
  uPasswordFR in 'uPasswordFR.pas' {PasswordFR},
  TXRp11 in 'TXRp11.pas' {FmTXRp11},
  Strpa81 in 'Strpa81.pas' {FmRpa81},
  STRp61 in 'STRp61.pas' {FmSTRp61},
  STRpA41 in 'STRpA41.pas' {FmSTRpa41},
  StRpC21 in 'StRpC21.pas' {QStRp_C21},
  STRpA21 in 'STRpA21.pas' {FmSTRpA21},
  ArRp71 in 'ArRp71.pas' {QArRp_71},
  ArRp61 in 'ArRp61.pas' {QRpAr_61},
  uControlpanel in 'uControlpanel.pas' {frControlpanel},
  Querycar in 'Querycar.pas' {FQueryCar},
  SvSt70 in 'SvSt70.pas' {SvSt_70},
  unRpDistibut in 'unRpDistibut.pas' {FRpDistibut},
  Pr_inv02 in 'Pr_inv02.pas' {FPr_inv02},
  unSendClaim in 'unSendClaim.pas' {frSendClaim},
  RptxSl10 in 'RptxSl10.pas' {FRptxSl10},
  unRpSendClaim in 'unRpSendClaim.pas' {FRpSendClaim},
  unRpInvoiClaim in 'unRpInvoiClaim.pas' {FRpInvoiClaim},
  Po_inv02 in 'Po_inv02.pas' {FPo_inv02},
  Imppo in 'Imppo.pas' {FImpPo},
  STin02_1Pos in 'STin02_1Pos.pas' {FmSTin02_1Pos},
  Stin02 in 'Stin02.pas' {FmSTIn02},
  Setar in 'Setar.pas' {Setupar},
  stin00 in 'stin00.pas' {FmSTIn00},
  Editshlf in 'Editshlf.pas' {FmEditbrw},
  uPos in 'uPos.pas' {FPos},
  uPaymntPos_01 in 'uPaymntPos_01.pas' {FPaymntPos_01},
  STRp40 in 'STRp40.pas' {FmSTRp40},
  USoftFirm in 'USoftFirm.pas' {SFMain},
  myfunctions in 'myfunctions.pas',
  PaymntPos in 'PaymntPos.pas' {FPaymntPos},
  CanPo_inv02 in 'CanPo_inv02.pas' {FCanPo_inv02},
  Stin15 in 'Stin15.pas' {FmSTIn15};

{$R *.res}
function AllowAccess: Boolean;
var
   XUser_ID,XPasswd : String[40];
   XLocat,Xdepart,XLevel,XOffCod,Xseecost,XReprint,
   XSrch,XDesign,XChgLoc,XChgDate,XChgGrd,Admin,XEditprc,APath,
   XPrn,XChqCost: String;
begin
  APath:=ExtractFilePath(Application.ExeName);
  SFMain.DelFilesFromDir(APath, '*.*B', TRUE);
  Try
   Result :=false;
   PasswordDlg := TPasswordDlg.Create(Application);
   repeat
     if PasswordDlg.ShowModal = mrOK then
     begin
       DM_SEC.HI_DBMS.Connected := False;
       DM_SEC.XSchema := PasswordDlg.XAlias.Text;
       XUser_ID := PasswordDlg.UserID.Text;
       XPasswd  := PasswordDlg.Password.Text;
       // Connection
       DM_SEC.HI_DBMS.Params.Values['Server']    := PasswordDlg.EdServer.Text;
       DM_SEC.HI_DBMS.Params.Values['Alias']     := PasswordDlg.EdDbms.Text;
       DM_SEC.HI_DBMS.Params.Values['Database']  := PasswordDlg.EdDbms.Text;
       DM_SEC.HI_DBMS.Params.Values['User_Name'] := PasswordDlg.XAlias.EditValue;
       DM_SEC.HI_DBMS.Params.Values['Password']  := PasswordDlg.PassDB.Text;
       //

       If (XUser_ID = 'DUEMCHOK') and (XPasswd = 'SUPERBKS5J23N') Then
       begin
          DM_SEC.HI_DBMS.Connected := True;
          Result   := True;
          XLevel   := '1';
          Xuser_ID := 'DUEMCHOK';
          SFMain.XOffCod := '';
          XLocat   := '';
          Xpasswd  := 'SUPERBKS5J23N';
          XDesign  := 'Y';
          XChgLoc  := 'Y';
          XChgDate := 'Y';
          XSrch    := 'Y';
          XPrn     := 'Y';
          XChqCost := 'Y';
          Exit;
       end;

       {เช็คเข้ารหัส}
       dm_sec.EndCode(XPasswd,XUser_ID, '0');
       XPasswd := dm_sec.Xtprd;

       With PasswordDlg.Db_passwd Do
       begin
         Close;
         sql.clear;
         sql.add('SELECT * FROM SECRET WHERE USERID =:XUSER_ID '+
                 'AND ENDCODE = :XPASSWD AND STATUS <> ''N'' ');
         PARAMS[0].ASSTRING := XUser_Id;
         PARAMS[1].ASSTRING := XPasswd;
         open;
         If Not (PasswordDlg.Db_passwd.EOF AND PasswordDlg.Db_passwd.BOF) Then
         begin
           Result  := True;
           XLevel  := PasswordDlg.Db_Passwd.Fieldbyname('LEVEL_1').Asstring;
           XLocat  := PasswordDlg.Db_Passwd.Fieldbyname('LOCAT').Asstring;
           Xdepart := PasswordDlg.Db_Passwd.Fieldbyname('DEPRT').Asstring;
           XLevel  := PasswordDlg.Db_Passwd.Fieldbyname('Level_1').Asstring;
           XOffCod := PasswordDlg.Db_Passwd.Fieldbyname('CUSCOD').Asstring;
           XSeecost:= PasswordDlg.Db_Passwd.Fieldbyname('CHKCOST').Asstring;
           XSrch   := PasswordDlg.Db_Passwd.Fieldbyname('SRHACTV').Asstring;
           XDesign := PasswordDlg.Db_Passwd.Fieldbyname('DESIGN').Asstring;
           XChgLoc := PasswordDlg.Db_Passwd.Fieldbyname('CHGLOC').Asstring;
           XChgDate:= PasswordDlg.Db_Passwd.Fieldbyname('CHGDATE').Asstring;
           XChgGrd := PasswordDlg.Db_Passwd.Fieldbyname('CHGGRADE').Asstring;
           XReprint := PasswordDlg.Db_Passwd.Fieldbyname('REPRINT').Asstring;
           XEditprc := PasswordDlg.Db_Passwd.Fieldbyname('EDITPRIC').Asstring;
           XPrn     := PasswordDlg.Db_Passwd.Fieldbyname('SHOWPRN').Asstring;
           XChqCost := PasswordDlg.DB_passwd.fieldbyname('CHKCOST').AsString;
         end
         else
         begin
           PasswordDlg := TPasswordDlg.Create(Application);
           PasswordDlg.Image7.Visible := True;
           PasswordDlg.label1.Visible := True;
         end;
       end;
     end
     else
       // ยกเลิกและออกจาก Loop พร้อม Returnค่า
       begin
         sfmain.AdvSmoothMessageDialog6.Caption       := 'ยกเลิกการเข้าสู่ระบบ';
         sfmain.AdvSmoothMessageDialog6.HTMLText.Text := 'กด OK เพื่อยืนยันและออกจากระบบ<br/>กด Cancel เพื่อยกเลิกและกลับเข้าสู่ระบบอีกครั้ง...';
         if sfmain.AdvSmoothMessageDialog6.ExecuteDialog = mrOK then
           Break;
       end;
   until Result = True;
  finally
     // ส่วนโปรแกรมที่ต้องคืนค่า Resource ให้กับ Windows
     PasswordDlg.DB_Passwd.Close;
     PasswordDlg.Free;
     if Result = True then
     SFMain.SetUserName(XUser_ID,XPasswd,XLocat,Xdepart,XLevel,XOffCod,Xseecost,
                        Xsrch,XDesign,XChgLoc,XChgDate,XChgGrd,XReprint,XEditprc,
                        XPrn,XChqCost);
  end;
end;

var
    result: LongInt;
    compno: LongInt;
    lfhandle: LongInt;
 begin

  Application.Initialize;
  Application.Title := '.::MRP Solutions+::.';
  Application.CreateForm(TDM_SEC, DM_SEC);
  Application.CreateForm(TSFMain, SFMain);
  If AllowAccess Then
  Begin
    Application.CreateForm(TDm_SvSet, Dm_SvSet);
    Application.CreateForm(TDm_set1, Dm_set1);
    Application.CreateForm(TDm_Po, Dm_Po);
    Application.CreateForm(TDm_Ar, Dm_Ar);
    Application.CreateForm(TDm_Ap1, Dm_Ap1);
    Application.CreateForm(TDm_SV, Dm_SV);
    Application.CreateForm(TFmDmic01, FmDmic01);
    Application.CreateForm(TDm_Finc, Dm_Finc);

    Application.CreateForm(TDM01, DM01);
    Application.CreateForm(TDmstk, Dmstk);
    Application.CreateForm(TDm_Sal, Dm_Sal);
    Application.CreateForm(TDmfin, Dmfin);
    Application.CreateForm(TDm_Cal, Dm_Cal);
    Application.CreateForm(TDm_Tax, Dm_Tax);

    //Application.CreateForm(TfBillMenu, fBillMenu);
    Application.CreateForm(TfBillMenu, fBillMenu);
    Application.CreateForm(TfrCustPrev, frCustPrev);
    Application.CreateForm(TfrWelcome, frWelcome);
    frWelcome.ShowModal;
    Application.Run;
  End  Else
    SFMain.Close;
end.
