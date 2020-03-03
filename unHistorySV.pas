unit unHistorySV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, DB,
  Dbkbd, ImgList, ToolWin, RzDBGrid, RzLabel, RzDBLbl, AdvSmoothTabPager, cxMemo,
  cxDBEdit, cxTextEdit, cxControls, cxContainer, cxEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxLookAndFeelPainters,
  AdvGlowButton, AdvToolBar, AdvPanel, cxGroupBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, AdvGroupBox, cxPC, cxLookAndFeels, dxBarBuiltInMenu, dxDateRanges,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxCore, cxDateUtils, cxNavigator, Vcl.ActnList, cxDropDownEdit,
  cxImageComboBox, cxButtonEdit, cxMaskEdit, cxCalendar, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrHistorySV = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    EnqBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    PageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    DBGrid1: TcxGrid;
    DBGrid1DBTableView1: TcxGridDBTableView;
    DBGrid1DBTableView1RECVDATE: TcxGridDBColumn;
    DBGrid1DBTableView1JOBNO: TcxGridDBColumn;
    DBGrid1DBTableView1LOCAT: TcxGridDBColumn;
    DBGrid1DBTableView1RLKILOMT: TcxGridDBColumn;
    DBGrid1DBTableView1REPTYPE: TcxGridDBColumn;
    DBGrid1DBTableView1GROUP1: TcxGridDBColumn;
    DBGrid1DBTableView1RECVCOD: TcxGridDBColumn;
    DBGrid1DBTableView1PAYCOD: TcxGridDBColumn;
    DBGrid1DBTableView1CUSCOD: TcxGridDBColumn;
    DBGrid1DBTableView1RFINSHDT: TcxGridDBColumn;
    DBGrid1DBTableView1APP_DATE: TcxGridDBColumn;
    DBGrid1DBTableView1APP_MILE: TcxGridDBColumn;
    DBGrid1DBTableView1INSPECT: TcxGridDBColumn;
    DBGrid1Level1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    DBGrid_Sv: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    AdvPanel3: TAdvPanel;
    Label17: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit10: TcxDBTextEdit;
    DBEdit27: TcxDBTextEdit;
    DBEdit28: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    RzDBGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1NO: TcxGridDBColumn;
    cxGridDBTableView1REPDESC: TcxGridDBColumn;
    cxGridDBTableView1FLAG: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    AdvPanel4: TAdvPanel;
    Label27: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit11: TcxDBTextEdit;
    DBEdit25: TcxDBTextEdit;
    DBEdit26: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    DBGrid_Pt: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3PARTNO: TcxGridDBColumn;
    cxGridDBTableView3QTY: TcxGridDBColumn;
    cxGridDBTableView3UPRICE: TcxGridDBColumn;
    cxGridDBTableView3REDU1: TcxGridDBColumn;
    cxGridDBTableView3NETPRC: TcxGridDBColumn;
    cxGridDBTableView3TOTPRC: TcxGridDBColumn;
    cxGridDBTableView3CLAIM: TcxGridDBColumn;
    cxGridDBTableView3NETFL: TcxGridDBColumn;
    cxGridDBTableView3SERVCOD: TcxGridDBColumn;
    cxGridDBTableView3FRT: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet5: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    DBGrid_Ot: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView5CODE: TcxGridDBColumn;
    cxGridDBTableView5DESC1: TcxGridDBColumn;
    cxGridDBTableView5QTY: TcxGridDBColumn;
    cxGridDBTableView5UCOST: TcxGridDBColumn;
    cxGridDBTableView5TOTPRIC: TcxGridDBColumn;
    cxGridDBTableView5REDU: TcxGridDBColumn;
    cxGridDBTableView5NETPRIC: TcxGridDBColumn;
    cxGridDBTableView5SERVCOD: TcxGridDBColumn;
    cxGridDBTableView5SERTIME: TcxGridDBColumn;
    cxGridDBTableView5OTTIME: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    AdvPanel5: TAdvPanel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit4: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    cxGroupBox6: TcxGroupBox;
    DBGrid_Cr: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBTableView6CODE: TcxGridDBColumn;
    cxGridDBTableView6DESC1: TcxGridDBColumn;
    cxGridDBTableView6PRICE: TcxGridDBColumn;
    cxGridDBTableView6REDU: TcxGridDBColumn;
    cxGridDBTableView6NETPRIC: TcxGridDBColumn;
    cxGridDBTableView6SERVCOD: TcxGridDBColumn;
    cxGridDBTableView6SERTIME: TcxGridDBColumn;
    cxGridDBTableView6OTTIME: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    AdvPanel7: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit7: TcxDBTextEdit;
    DBEdit23: TcxDBTextEdit;
    DBEdit24: TcxDBTextEdit;
    QJoborder3: TFDQuery;
    QJoborder3JOBNO: TStringField;
    QJoborder3LOCAT: TStringField;
    QJoborder3STRNO: TStringField;
    QJoborder3CUSCOD: TStringField;
    QJoborder3MDLCOD: TStringField;
    QJoborder3RUNNO: TStringField;
    QJoborder3RECVDATE: TDateField;
    QJoborder3RECVTIME: TStringField;
    QJoborder3FINSDATE: TDateField;
    QJoborder3FINSTIME: TStringField;
    QJoborder3RFINSHDT: TDateField;
    QJoborder3RFINSHTM: TStringField;
    QJoborder3RLKILOMT: TFloatField;
    QJoborder3KILOMT: TFloatField;
    QJoborder3RECVCOD: TStringField;
    QJoborder3CUST_IN: TStringField;
    QJoborder3PAYCOD: TStringField;
    QJoborder3CUST_OUT: TStringField;
    QJoborder3APP_DATE: TDateField;
    QJoborder3APP_MILE: TFloatField;
    QJoborder3REPTYPE: TStringField;
    QJoborder3GROUP1: TStringField;
    QJoborder3REPBAY: TStringField;
    QJoborder3PAYDATE: TDateField;
    QJoborder3INSPECT: TStringField;
    QJoborder3REPCOD: TStringField;
    QJoborder3VATTYPE: TStringField;
    QJoborder3VAT: TFloatField;
    QJoborder3PARTDISC: TFloatField;
    QJoborder3PARTNET: TFloatField;
    QJoborder3PARTVAT: TFloatField;
    QJoborder3PARTTOT: TFloatField;
    QJoborder3OILDISC: TFloatField;
    QJoborder3OILNET: TFloatField;
    QJoborder3OILVAT: TFloatField;
    QJoborder3OILTOT: TFloatField;
    QJoborder3SERVDISC: TFloatField;
    QJoborder3SERVNET: TFloatField;
    QJoborder3SERVVAT: TFloatField;
    QJoborder3SERVTOT: TFloatField;
    QJoborder3OUTJDISC: TFloatField;
    QJoborder3OUTJNET: TFloatField;
    QJoborder3OUTJVAT: TFloatField;
    QJoborder3OUTJTOT: TFloatField;
    QJoborder3COLORDISC: TFloatField;
    QJoborder3COLORNET: TFloatField;
    QJoborder3COLORVAT: TFloatField;
    QJoborder3COLORTOT: TFloatField;
    QJoborder3OTHERDISC: TFloatField;
    QJoborder3OTHERNET: TFloatField;
    QJoborder3OTHERVAT: TFloatField;
    QJoborder3OTHERTOT: TFloatField;
    QJoborder3TSV_DISC: TFloatField;
    QJoborder3TSV_NET: TFloatField;
    QJoborder3TSV_VAT: TFloatField;
    QJoborder3TSV_TOT: TFloatField;
    QJoborder3TAXDATE: TDateField;
    QJoborder3PTAXNO: TStringField;
    QJoborder3STAXNO: TStringField;
    QJoborder3BILDATE: TDateField;
    QJoborder3BILLNO: TStringField;
    QJoborder3FLAGCAN: TStringField;
    QJoborder3CANDATE: TDateField;
    QJoborder3STATUS: TStringField;
    QJoborder3MEMO1: TMemoField;
    QJoborder3SVFLAG: TStringField;
    QJoborder3TOPNO: TStringField;
    QJoborder3PREORDNO: TStringField;
    QJoborder3ADDNET: TFloatField;
    QJoborder3ADDVAT: TFloatField;
    QJoborder3ADDTOT: TFloatField;
    QJoborder3PARTCOST: TFloatField;
    QJoborder3USERID: TStringField;
    QJoborder3TIME1: TDateTimeField;
    QJoborder3CANCELID: TStringField;
    QJoborder3CANDAT: TDateTimeField;
    QJoborder3POSTGLDT: TDateTimeField;
    QJoborder3INV1_PT: TFloatField;
    QJoborder3INV1_SV: TFloatField;
    QJoborder3INV2_PT: TFloatField;
    QJoborder3INV2_SV: TFloatField;
    QJoborder3DISCPT: TFloatField;
    QJoborder3DISCSV: TFloatField;
    QJoborder3DISCOL: TFloatField;
    QJoborder3DISCCO: TFloatField;
    QJoborder3OUTADD: TFloatField;
    QJoborder3OILCOST: TFloatField;
    QJoborder3FRRATE: TFloatField;
    QJoborder3FRCODE: TStringField;
    QJoborder3CAMPNO: TStringField;
    QJoborder3REFNO: TFloatField;
    QJoborder3FLAG: TStringField;
    QJoborder3ISCODE: TStringField;
    QJoborder3STATCOD: TStringField;
    QJoborder3REDUAMT: TFloatField;
    QJoborder3CUPONGNO: TStringField;
    QJoborder3SV_TIME: TFloatField;
    QJoborder3OT_TIME: TFloatField;
    QJoborder3OUTJOBNO: TStringField;
    QJoborder3RTPART: TStringField;
    QJoborder3CLCAR: TStringField;
    SoJoborder3: TDataSource;
    Qsvmast: TFDQuery;
    Sosvmast: TDataSource;
    Query1: TFDQuery;
    QModelmst: TFDQuery;
    QServtran: TFDQuery;
    QOiltran: TFDQuery;
    QOiltranJOBNO: TStringField;
    QOiltranPARTNO: TStringField;
    QOiltranPKNO: TStringField;
    QOiltranLOCAT: TStringField;
    QOiltranJOBDATE: TDateField;
    QOiltranPKDATE: TDateField;
    QOiltranUPRICE: TFloatField;
    QOiltranQTY: TFloatField;
    QOiltranNETFL: TStringField;
    QOiltranREDU1: TFloatField;
    QOiltranREDU2: TFloatField;
    QOiltranREDU3: TFloatField;
    QOiltranNETPRC: TFloatField;
    QOiltranTOTPRC: TFloatField;
    QOiltranSERVCOD: TStringField;
    QOiltranFRT: TFloatField;
    QOiltranSERTIME: TFloatField;
    QOiltranSVCOLOR: TStringField;
    QOiltranCLAIM: TStringField;
    QOiltranSERIALNO: TStringField;
    QOiltranTAXNO: TStringField;
    QOiltranYEAR1: TStringField;
    QOiltranTAXDATE: TDateField;
    QOiltranAVGCOST: TFloatField;
    QOiltranUSERID: TStringField;
    QOiltranTIME1: TDateTimeField;
    QOiltranINV1_PT: TFloatField;
    QOiltranINV2_PT: TFloatField;
    QOiltranGROUP1: TStringField;
    QOiltranBILCLAIM: TStringField;
    QOiltranDISCAMT: TFloatField;
    QOiltranFREE: TStringField;
    QOiltranCAMPNO: TStringField;
    QOiltranCAMFLG: TStringField;
    QOiltranCUSCOD: TStringField;
    QOiltranCLAIMDT: TDateField;
    QOiltranCLAIMOK: TStringField;
    QOiltranCLAIMTEC: TFloatField;
    QOiltranCUPONGNO: TStringField;
    QOuttran: TFDQuery;
    QOuttranJOBNO: TStringField;
    QOuttranCODE: TStringField;
    QOuttranLOCAT: TStringField;
    QOuttranJOBDATE: TDateField;
    QOuttranUCOST: TFloatField;
    QOuttranUPRICE: TFloatField;
    QOuttranFRT: TFloatField;
    QOuttranQTY: TFloatField;
    QOuttranTOTPRIC: TFloatField;
    QOuttranREDU: TFloatField;
    QOuttranNETPRIC: TFloatField;
    QOuttranTOTCOST: TFloatField;
    QOuttranSERVCOD: TStringField;
    QOuttranSERTIME: TFloatField;
    QOuttranOTTIME: TFloatField;
    QOuttranJOBTYP: TStringField;
    QOuttranUSERID: TStringField;
    QOuttranDESC1: TStringField;
    QOuttranTIME1: TDateTimeField;
    QOuttranTAXNO: TStringField;
    QOuttranTAXDATE: TDateField;
    QOuttranCLAIM: TStringField;
    QOuttranBILCLAIM: TStringField;
    QOuttranCUSCOD: TStringField;
    QOuttranCLAIMDT: TDateField;
    QOuttranCLAIMOK: TStringField;
    QOuttranCLAIMTEC: TFloatField;
    qColrtran: TFDQuery;
    qColrtranJOBNO: TStringField;
    qColrtranCODE: TStringField;
    qColrtranLOCAT: TStringField;
    qColrtranJOBDATE: TDateField;
    qColrtranFRT: TFloatField;
    qColrtranPRICE: TFloatField;
    qColrtranREDU: TFloatField;
    qColrtranNETPRIC: TFloatField;
    qColrtranSERVCOD: TStringField;
    qColrtranSERTIME: TFloatField;
    qColrtranOTTIME: TFloatField;
    qColrtranJOBTYP: TStringField;
    qColrtranCLAIM: TStringField;
    qColrtranMDLCOD: TStringField;
    qColrtranUSERID: TStringField;
    qColrtranDESC1: TStringField;
    qColrtranTIME1: TDateTimeField;
    qColrtranTAXNO: TStringField;
    qColrtranTAXDATE: TDateField;
    qColrtranDISCAMT: TFloatField;
    qColrtranWARNO: TStringField;
    qColrtranBILCLAIM: TStringField;
    qColrtranUCOST: TFloatField;
    qColrtranTOTCOST: TFloatField;
    qColrtranCUSCOD: TStringField;
    qColrtranCLAIMDT: TDateField;
    qColrtranCLAIMOK: TStringField;
    qColrtranCLAIMTEC: TFloatField;
    qParttran: TFDQuery;
    qParttranJOBNO: TStringField;
    qParttranPARTNO: TStringField;
    qParttranPKNO: TStringField;
    qParttranLOCAT: TStringField;
    qParttranJOBDATE: TDateField;
    qParttranPKDATE: TDateField;
    qParttranUPRICE: TFloatField;
    qParttranQTY: TFloatField;
    qParttranNETFL: TStringField;
    qParttranREDU1: TFloatField;
    qParttranREDU2: TFloatField;
    qParttranREDU3: TFloatField;
    qParttranNETPRC: TFloatField;
    qParttranTOTPRC: TFloatField;
    qParttranSERVCOD: TStringField;
    qParttranFRT: TFloatField;
    qParttranSERTIME: TFloatField;
    qParttranSVCOLOR: TStringField;
    qParttranCLAIM: TStringField;
    qParttranSERIALNO: TStringField;
    qParttranTAXNO: TStringField;
    qParttranYEAR1: TStringField;
    qParttranTAXDATE: TDateField;
    qParttranAVGCOST: TFloatField;
    qParttranUSERID: TStringField;
    qParttranTIME1: TDateTimeField;
    qParttranINV1_PT: TFloatField;
    qParttranINV2_PT: TFloatField;
    qParttranGROUP1: TStringField;
    qParttranBILCLAIM: TStringField;
    qParttranDISCAMT: TFloatField;
    qParttranFREE: TStringField;
    qParttranCAMPNO: TStringField;
    qParttranCAMFLG: TStringField;
    qParttranCUSCOD: TStringField;
    qParttranCLAIMDT: TDateField;
    qParttranCLAIMOK: TStringField;
    qParttranCLAIMTEC: TFloatField;
    qParttranCUPONGNO: TStringField;
    QOrdrep: TFDQuery;
    QOrdrepJOBNO: TStringField;
    QOrdrepNO: TFloatField;
    QOrdrepREPDESC: TStringField;
    QOrdrepFLAG: TStringField;
    QOrdrepUSERID: TStringField;
    QOrdrepTIME1: TDateTimeField;
    QOrdrepCODE: TStringField;
    QOrdrepFRT: TFloatField;
    QOrdrepESTPRIC: TFloatField;
    QOrdrepGRPHD: TStringField;
    QOrdrepMEMO1: TMemoField;
    dsServTran: TDataSource;
    dsOloTran: TDataSource;
    dsOuttran: TDataSource;
    dsColrtran: TDataSource;
    dsParttran: TDataSource;
    dsOrdrep: TDataSource;
    dsDetailOli: TDataSource;
    qrDetailOli: TFDQuery;
    DsDetailPt: TDataSource;
    qrDetailPt: TFDQuery;
    cxGroupBox7: TcxGroupBox;
    Label40: TLabel;
    Label43: TLabel;
    Label47: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label42: TLabel;
    Label45: TLabel;
    Label21: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label30: TLabel;
    RzDBLabel1: TcxDBTextEdit;
    RzDBLabel4: TcxDBTextEdit;
    RzDBLabel7: TcxDBTextEdit;
    RzDBLabel2: TcxDBTextEdit;
    RzDBLabel5: TcxDBTextEdit;
    RzDBLabel8: TcxDBTextEdit;
    RzDBLabel3: TcxDBTextEdit;
    RzDBLabel6: TcxDBTextEdit;
    RzDBLabel11: TcxDBTextEdit;
    RzDBLabel14: TcxDBTextEdit;
    RzDBLabel12: TcxDBTextEdit;
    RzDBLabel15: TcxDBTextEdit;
    Edit3: TcxTextEdit;
    RzDBLabel19: TcxDBTextEdit;
    RzDBLabel16: TcxDBTextEdit;
    Label29: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxGroupBox9: TcxGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label50: TLabel;
    Label58: TLabel;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    DBEdit22: TcxDBButtonEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxGroupBox10: TcxGroupBox;
    Label59: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBButtonEdit4: TcxDBButtonEdit;
    cxDBButtonEdit5: TcxDBButtonEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    QCustmast: TFDQuery;
    QCustmastCUSCOD: TStringField;
    QCustmastSNAM: TStringField;
    QCustmastNAME1: TStringField;
    QCustmastNAME2: TStringField;
    QCustmastNICKNM: TStringField;
    QCustmastBIRTHDT: TDateField;
    QCustmastADDRNO: TStringField;
    QCustmastIDCARD: TStringField;
    QCustmastIDNO: TStringField;
    QCustmastISSUBY: TStringField;
    QCustmastISSUDT: TDateField;
    QCustmastEXPDT: TDateField;
    QCustmastAGE: TFloatField;
    QCustmastNATION: TStringField;
    QCustmastOCCUP: TStringField;
    QCustmastOFFIC: TStringField;
    QCustmastGRADE: TStringField;
    QCustmastACPDT: TDateField;
    QCustmastUSERID: TStringField;
    QCustmastMINCOME: TFloatField;
    QCustmastMAXCRED: TFloatField;
    QCustmastUpdateStatus: TStringField;
    QCustmastMEMBCOD: TStringField;
    QCustmastGRPCUS: TStringField;
    QCustmastPICTURE: TStringField;
    QCustmastCREDIT: TFloatField;
    QCustmastDISCT: TFloatField;
    QCustmastSALLEV: TStringField;
    QCustmastSINCOME: TFloatField;
    QCustmastADDR_I: TStringField;
    QCustmastRODE_I: TStringField;
    QCustmastTUMB_I: TStringField;
    QCustmastAUMPID_I: TStringField;
    QCustmastPROVID_I: TStringField;
    QCustmastZIP_I: TStringField;
    QCustmastTELP_I: TStringField;
    QCustmastADDR_II: TStringField;
    QCustmastRODE_II: TStringField;
    QCustmastTUMB_II: TStringField;
    QCustmastAUMPID_II: TStringField;
    QCustmastPROVID_II: TStringField;
    QCustmastZIP_II: TStringField;
    QCustmastTELP_II: TStringField;
    QCustmastTEXT: TMemoField;
    QCustmastPROSPECT: TStringField;
    QCustmastEMAIL1: TStringField;
    QCustmastTAXID: TStringField;
    Socustmast: TDataSource;
    AdvPanel6: TAdvPanel;
    DBEdit17: TRzDBLabel;
    Label33: TLabel;
    AdvPanel8: TAdvPanel;
    RzDBLabel9: TRzDBLabel;
    Label34: TLabel;
    AdvPanel9: TAdvPanel;
    RzDBLabel10: TRzDBLabel;
    Label35: TLabel;
    qrDetailOu: TFDQuery;
    DsDetailOu: TDataSource;
    QServtranJOBNO: TStringField;
    QServtranCODE: TStringField;
    QServtranLOCAT: TStringField;
    QServtranJOBDATE: TDateField;
    QServtranFRT: TFloatField;
    QServtranPRICE: TFloatField;
    QServtranREDU: TFloatField;
    QServtranNETPRIC: TFloatField;
    QServtranSERVCOD: TStringField;
    QServtranSERTIME: TFloatField;
    QServtranOTTIME: TFloatField;
    QServtranJOBTYP: TStringField;
    QServtranCLAIM: TStringField;
    QServtranMDLCOD: TStringField;
    QServtranUSERID: TStringField;
    QServtranDESC1: TStringField;
    QServtranTIME1: TDateTimeField;
    QServtranINV1_SV: TFloatField;
    QServtranINV2_SV: TFloatField;
    QServtranBILCLAIM: TStringField;
    QServtranTAXNO: TStringField;
    QServtranTAXDATE: TDateField;
    QServtranUPRICE: TFloatField;
    QServtranDISCAMT: TFloatField;
    QServtranCAMPNO: TStringField;
    QServtranCAMFLG: TStringField;
    QServtranCUSCOD: TStringField;
    QServtranCLAIMDT: TDateField;
    QServtranCLAIMOK: TStringField;
    QServtranCLAIMTEC: TFloatField;
    QServtranCUPONGNO: TStringField;
    cxGridDBTableView2CODE: TcxGridDBColumn;
    cxGridDBTableView2FRT: TcxGridDBColumn;
    cxGridDBTableView2PRICE: TcxGridDBColumn;
    cxGridDBTableView2REDU: TcxGridDBColumn;
    cxGridDBTableView2NETPRIC: TcxGridDBColumn;
    cxGridDBTableView2CLAIM: TcxGridDBColumn;
    cxGridDBTableView2DESC1: TcxGridDBColumn;
    Label69: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    cxTabSheet6: TcxTabSheet;
    DBMemo1: TcxDBMemo;
    DBGrid1DBTableView1REPCOD: TcxGridDBColumn;
    cxGridDBTableView2SERVCOD: TcxGridDBColumn;
    AdvGlowButton1: TAdvGlowButton;
    cxGroupBox11: TcxGroupBox;
    cxTabSheet7: TcxTabSheet;
    cxGroupBox8: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label61: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    Label32: TLabel;
    DBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBImageComboBox2: TcxDBImageComboBox;
    RzDBLabel18: TcxDBTextEdit;
    Label70: TLabel;
    Label71: TLabel;
    ActionList1: TActionList;
    actEditPrn: TAction;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    cxDBTextEdit27: TcxDBTextEdit;
    QCustmastTEL_MOBILE: TStringField;
    QCustmastTEL_HOME: TStringField;
    QCustmastTEL_OFFICE: TStringField;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReportTableObject1: TfrxReportTableObject;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxReport1: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure CheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure RzDBLabel5PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit3PropertiesChange(Sender: TObject);
    procedure DBEdit22PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit2PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit4PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit5PropertiesChange(Sender: TObject);
    procedure RzDBLabel12PropertiesChange(Sender: TObject);
    procedure RzDBLabel4PropertiesChange(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frHistorySV: TfrHistorySV;

implementation

uses
  uSrcDLG, uSoftfirm, DMSEC, Dm1, uncustom;
{$R *.DFM}

procedure TfrHistorySV.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSV', 'HDSV3_06');
  QSvmast.Close;
end;

procedure TfrHistorySV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QJoborder3.Close;
  QSvmast.Close;
  frHistorySV := Nil;
  Action := Cafree;
end;

procedure TfrHistorySV.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 2 then
  begin
    with QServtran do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = :XNO ');
      Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring;
      Open;
    end;
    with QOrdrep do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = :XNO ');
      Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring;
      Open;
    end;
  end;
    //
  if PageControl1.ActivePageIndex = 3 then
  begin
    with QOiltran do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PARTTRAN WHERE JOBNO = :XNO AND GROUP1=''OL'' ');
      Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring;
      Open;
    end;

    SFMain.Do_Show_DisplayFormat_Floating(QOiltran);
    with qrDetailOli do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,DESC1 FROM INVMAST WHERE PARTNO=:PARTNO');
      Open;
    end;

    with QParttran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO AND GROUP1<>''OL'' ');
      Params[0].AsString := QJOborder3.FieldByName('JOBNO').Asstring;
      Open;
    end;
    SFMain.Do_Show_DisplayFormat_Floating(QParttran);

    with qrDetailPt do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,DESC1 FROM INVMAST WHERE PARTNO=:PARTNO');
      Open;
    end;
  end;

  if PageControl1.ActivePageIndex = 4 then
  begin
    with QOuttran do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO = :XNO ');
      Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring;
      Open;
    end;
    SFMain.Do_Show_DisplayFormat_Floating(QOuttran);

    with qrDetailOu do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,DESC1 FROM INVMAST WHERE PARTNO=:CODE');
      Open;
    end;

    with QColrtran do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO = :XNO ');
      Params[0].Asstring := QJoborder3.FieldByName('JOBNO').Asstring;
      Open;
    end;
    SFMain.Do_Show_DisplayFormat_Floating(QColrtran);
  end;
end;

procedure TfrHistorySV.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalSvmst = Mrok then
  begin
    with QSvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SVMAST WHERE STRNO =:XSTRNO  ');
      Params[0].Asstring := fSrcDlg.Keyno;
      Open;
    end;
    if QSvmast.Bof and QSvmast.eof then
      SFMain.RaiseException('ไม่พบข้อมูลในแฟ้มประวัติรถ');

    with QCustmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD =:XCUSCOD ');
      Params[0].Asstring := QSvmast.Fieldbyname('CUSCOD').Asstring;
      Open;
    end;

    with QJoborder3 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE STRNO = :XNO ORDER BY RECVDATE');
      Params[0].Asstring := QSvmast.Fieldbyname('Strno').Asstring;
      Open;
    end;

    with QModelmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD= :0  ');
      Params[0].Asstring := QJoborder3.FieldByName('MDLCOD').Asstring;
      Open;
    end;

    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT TYPECOD,TYPEDES FROM SETTYPE WHERE TYPECOD= :0  ');
      Params[0].Asstring := QSvmast.FieldByName('TYPE').Asstring;
      Open;
    end;

    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD= :0  ');
      Params[0].Asstring := QSvmast.FieldByName('MDLCOD').Asstring;
      Open;
      if not (Bof and Eof) then
    end;

    PageControl1.Enabled := True;
  end;
end;

procedure TfrHistorySV.CheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 { with QJoborder3 do
  begin
    Close;
    Sql.Clear;
    If CheckBox1.checked Then
       Sql.Add('SELECT * FROM JOBORDER WHERE STRNO = :XNO ORDER BY RECVDATE DESC')
    Else
       Sql.Add('SELECT * FROM JOBORDER WHERE STRNO = :XNO ORDER BY RECVDATE');
    Params[0].Asstring := QSvmast.Fieldbyname('Strno').Asstring ;
    Open ;
  end;  }
end;

procedure TfrHistorySV.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrHistorySV.RzDBLabel5PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := SFMain.FindShowDesc('SETMODEL', 'MODELDES', 'MODELCOD', RzDBLabel5.text);
end;

procedure TfrHistorySV.cxDBButtonEdit1PropertiesChange(Sender: TObject);
begin
  cxTextEdit3.Text := DM01.FindShowDesc('INSURAN', 'ISNAME', 'ISCODE', cxDBButtonEdit1.Text);
end;

procedure TfrHistorySV.cxDBButtonEdit3PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := DM01.FindShowDesc('FINMAST', 'FINNAME', 'FINCODE', cxDBButtonEdit3.Text);
end;

procedure TfrHistorySV.DBEdit22PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM SETAUMP WHERE AUMPCOD=:XAUMP ');
    Params[0].asstring := DBEdit22.Text;
    OPEN;
    Edit1.Text := Query1.FieldByName('AumpDes').asstring;
  end;
end;

procedure TfrHistorySV.cxDBButtonEdit2PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM SETPROV WHERE PROVCOD=:XPROV ');
    Params[0].asstring := cxDBButtonEdit2.Text;
    OPEN;
    Edit2.Text := Query1.FieldByName('ProvDes').asstring;
  end;
end;

procedure TfrHistorySV.cxDBButtonEdit4PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM SETAUMP WHERE AUMPCOD=:XAUMP ');
    Params[0].asstring := cxDBButtonEdit4.Text;
    OPEN;
    cxTextEdit5.Text := Query1.FieldByName('AumpDes').asstring;
  end;
end;

procedure TfrHistorySV.cxDBButtonEdit5PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM SETPROV WHERE PROVCOD=:XPROV ');
    Params[0].asstring := cxDBButtonEdit5.Text;
    OPEN;
    cxTextEdit2.Text := Query1.FieldByName('ProvDes').asstring;
  end;
end;

procedure TfrHistorySV.RzDBLabel12PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD= :XNO  ');
    Params[0].Asstring := QSvmast.FieldByName('Cuscod').Asstring;
    Open;
    Edit3.Text := Query1.Fieldbyname('NAME1').Asstring + ' ' +
      Query1.Fieldbyname('NAME2').Asstring;
  end;
end;

procedure TfrHistorySV.RzDBLabel4PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('SETTYPE', 'TYPEDES', 'TYPECOD', RzDBLabel4.text);
end;

procedure TfrHistorySV.PrnBtnClick(Sender: TObject);
begin
  if not Assigned(FormCustmst) then
    FormCustmst := TFormCustmst.Create(Application);
  FormCustmst.Show;

  with FormCustmst.QCustmast do
  begin
    close;
    sql.Clear;
    sql.Add('select * from CUSTMAST where CUSCOD=:edit1');
    params[0].AsString := RzDBLabel12.Text;
    open;
    edit;
  end;
end;

procedure TfrHistorySV.FormShow(Sender: TObject);
begin
  cxDateEdit1.Date := date;
  cxDateEdit2.Date := date;
end;

procedure TfrHistorySV.AdvGlowButton1Click(Sender: TObject);
begin
  if RzDBLabel1.Text = '' then
    sfmain.RaiseException('เลือกหมายเลขรถ ก่อนดูรายการ..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FR_JOBHistory.fr3', '1');
end;

procedure TfrHistorySV.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if (UPperCase(VarName) = 'VFDATE') then
    Value := cxDateEdit1.Date;
  if (UPperCase(VarName) = 'VTDATE') then
    Value := cxDateEdit2.date;
  if (UPperCase(VarName) = 'VJOBNO') then
    Value := QJoborder3JOBNO.AsString;
  if (UPperCase(VarName) = 'VSTRNO') then
    Value := RzDBLabel1.Text;
end;

procedure TfrHistorySV.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FR_JOBHistory.fr3', '2');
end;

procedure TfrHistorySV.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

