unit USoftFirm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  AdvToolBar, AdvToolBarStylers, AdvPreviewMenu, AdvPreviewMenuStylers,
  AdvShapeButton, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  dxGDIPlusClasses, Vcl.Menus, AdvMenus, AdvMenuStylers, AdvGlowButton,
  AdvToolBtn, Vcl.ExtCtrls, AdvNavBar, AdvOfficePager, AdvOfficePagerStylers,
  Data.DB, FireDAC.Stan.Param, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxFormats, DateUtils, ShellAPI,
  GDIPCustomItem, GDIPTextItem, GDIPImageTextItem, GDIPImageItem,
  CustomItemsContainer, AdvPolyList, AdvOfficeHint, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxFDComponents,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxExportPDF,
  frxExportXLS, frxExportText, frxExportBaseDialog, frxExportCSV, frxExportMail,
  frxChBox, frxDBXComponents, frxChart, frxDCtrl, frxGradient, frxCross, frxRich,
  frxBarcode, frxDesgn, System.ImageList, Vcl.ImgList, cxImageList, AdvPanel,
  AdvSmoothMessageDialog, n2wMoney, cxStyles, cxGridCardView, cxClasses,
  System.Actions, Vcl.ActnList, HTMLPopup, Registry, WinInet, TlHelp32, Winsock,
  NB30, IniFiles, AdvHorizontalPolyList, bsSkinData, bsDialogs;

type
  TSFMain = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvShapeButton1: TAdvShapeButton;
    StsMain: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvNavBar1: TAdvNavBar;
    AdvNavBarPanel1: TAdvNavBarPanel;
    AdvNavBarPanel2: TAdvNavBarPanel;
    AdvPolyList1: TAdvPolyList;
    N_HDSTK02_9: TImageItem;
    N_HDSTK02_8: TImageItem;
    N_HDSTK02_1: TImageItem;
    N_HDSTK02_E: TImageItem;
    N_HDSTK02_D_1: TImageItem;
    N_HDSP02: TImageItem;
    N_HDSTK02_2_1: TImageItem;
    AdvPolyList2: TAdvPolyList;
    ImageItem7: TImageItem;
    TextItem1: TTextItem;
    TextItem2: TTextItem;
    TextItem3: TTextItem;
    TextItem4: TTextItem;
    TextItem5: TTextItem;
    TextItem6: TTextItem;
    TextItem7: TTextItem;
    TextItem8: TTextItem;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvMenu: TAdvPreviewMenu;
    AdvOfficeHint1: TAdvOfficeHint;
    MainMenu1: TAdvMainMenu;
    HDSET: TMenuItem;
    HDSET01: TMenuItem;
    HDSET01_1: TMenuItem;
    HDSET01_3: TMenuItem;
    HDSET01_C: TMenuItem;
    HDSET01_4: TMenuItem;
    HDSET01_5: TMenuItem;
    HDSET01_8: TMenuItem;
    HDSET01_9: TMenuItem;
    HDSET01_A: TMenuItem;
    HDSET01_B: TMenuItem;
    HDSET02: TMenuItem;
    HDSET02_1: TMenuItem;
    HDSET02_8: TMenuItem;
    HDSET02_9: TMenuItem;
    HDSET02_A: TMenuItem;
    HDSET03: TMenuItem;
    HDSET03_1: TMenuItem;
    HDSET03_2: TMenuItem;
    HDSET03_3: TMenuItem;
    HDSET03_4: TMenuItem;
    HDSET03_5: TMenuItem;
    HDSET04: TMenuItem;
    HDSET04_1: TMenuItem;
    HDSET04_2: TMenuItem;
    HDSET04_3: TMenuItem;
    HDSET05: TMenuItem;
    HDSET05_1: TMenuItem;
    HDSTK: TMenuItem;
    HDSTK020: TMenuItem;
    HDSTK02_9: TMenuItem;
    HDSTK02_4: TMenuItem;
    HDSTK02_1: TMenuItem;
    HDSTK02_E: TMenuItem;
    HDSTK02_7: TMenuItem;
    HDSTK02_8: TMenuItem;
    HDSTK030: TMenuItem;
    HDSTK02_2_1: TMenuItem;
    HDSTK02_2_2: TMenuItem;
    HDSTK02_D: TMenuItem;
    HDSTK02_D_1: TMenuItem;
    HDSTK02_D_2: TMenuItem;
    HDSTK02_B: TMenuItem;
    HDSTK02_B_1: TMenuItem;
    HDSTK02_B_2: TMenuItem;
    HDSTK02_B_3: TMenuItem;
    HDSTK02_B_4: TMenuItem;
    HDSTK02_B_5: TMenuItem;
    HDSTK02_C: TMenuItem;
    HDSTK02_C_1: TMenuItem;
    HDSTK02_C_2: TMenuItem;
    HDSTK02_C_3: TMenuItem;
    HDSTK02_C_4: TMenuItem;
    HDSTK02_C_5: TMenuItem;
    HDSTK02_C_6: TMenuItem;
    HDSTK02_C_7: TMenuItem;
    HDSP: TMenuItem;
    HDSP01: TMenuItem;
    HDSP02: TMenuItem;
    HDSP03: TMenuItem;
    HDSP06: TMenuItem;
    HDSP04: TMenuItem;
    HDSP05: TMenuItem;
    HDSP07: TMenuItem;
    HDFIN: TMenuItem;
    HDFIN02_1: TMenuItem;
    HDFIN02_2: TMenuItem;
    HDFIN02_3: TMenuItem;
    HDFIN02_4: TMenuItem;
    HDREO: TMenuItem;
    HDREP02_2: TMenuItem;
    HDREP02_2_1: TMenuItem;
    HDREP02_2_2: TMenuItem;
    HDREP02_2_3: TMenuItem;
    HDREP02_2_4: TMenuItem;
    HDREP02_2_5: TMenuItem;
    HDREP02_3: TMenuItem;
    HDREP02_3_1: TMenuItem;
    HDREP02_3_2: TMenuItem;
    HDREP02_3_3: TMenuItem;
    HDREP02_3_4: TMenuItem;
    HDREP02_3_5: TMenuItem;
    HDREP02_3_6: TMenuItem;
    HDREP02_3_7: TMenuItem;
    HDREP02_3_8: TMenuItem;
    HDREP02_3_9: TMenuItem;
    HDREP02_3_A: TMenuItem;
    HDREP02_3_B: TMenuItem;
    HDREP02_3_C: TMenuItem;
    HDREP02_3_D: TMenuItem;
    HDREP07: TMenuItem;
    HDREP02_3_H: TMenuItem;
    HDREP02_3_I: TMenuItem;
    HDREP02_3_J: TMenuItem;
    HDREP02_3_K: TMenuItem;
    HDREP02_3_L: TMenuItem;
    HDREP02_3_N: TMenuItem;
    HDREP02_1: TMenuItem;
    HDREP02_1_1: TMenuItem;
    HDREP02_1_2: TMenuItem;
    HDREP02_1_4: TMenuItem;
    HDREP02_5: TMenuItem;
    HDREP02_5_1: TMenuItem;
    HDREP02_5_2: TMenuItem;
    HDREP02_5_3: TMenuItem;
    HDREP02_5_4: TMenuItem;
    HDREP02_5_5: TMenuItem;
    HDREP02_5_6: TMenuItem;
    HDREP02_5_7: TMenuItem;
    HDREP02_5_8: TMenuItem;
    HDREP06: TMenuItem;
    HDREP04_2: TMenuItem;
    HDREP04_4: TMenuItem;
    HDREP03: TMenuItem;
    HDREP03_4: TMenuItem;
    HDHLP: TMenuItem;
    HDHLP02: TMenuItem;
    HDHLP02_1: TMenuItem;
    HDHLP02_2: TMenuItem;
    HDHLP02_C: TMenuItem;
    HDHLP02_3: TMenuItem;
    HDHLP02_4: TMenuItem;
    HDHLP02_5: TMenuItem;
    HDHLP02_6: TMenuItem;
    HDHLP02_7: TMenuItem;
    HDHLP02_8: TMenuItem;
    HDHLP02_9: TMenuItem;
    HDHLP02_D: TMenuItem;
    LangMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    n2wBill: Tn2wMoney;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    AdvSmoothMessageDialog2: TAdvSmoothMessageDialog;
    AdvSmoothMessageDialog3: TAdvSmoothMessageDialog;
    AdvSmoothMessageDialog4: TAdvSmoothMessageDialog;
    AdvSmoothMessageDialog5: TAdvSmoothMessageDialog;
    AdvSmoothMessageDialog6: TAdvSmoothMessageDialog;
    AdvPanelStyler1: TAdvPanelStyler;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    cxImageList3: TcxImageList;
    cxImageList4: TcxImageList;
    Timer1: TTimer;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxGradientObject1: TfrxGradientObject;
    frxDialogControls1: TfrxDialogControls;
    frxChartObject1: TfrxChartObject;
    frxDBXComponents1: TfrxDBXComponents;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxMailExport1: TfrxMailExport;
    frxCSVExport1: TfrxCSVExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    QMenutrn: TFDQuery;
    QMenutrn1: TFDQuery;
    qrGetdtFrmDB: TFDQuery;
    Query1: TFDQuery;
    Query2: TFDQuery;
    qrReport: TFDQuery;
    QCondpay: TFDQuery;
    frxFDComponents1: TfrxFDComponents;
    HTMLPopup1: THTMLPopup;
    ActionList1: TActionList;
    Action2: TAction;
    Action1: TAction;
    Action3: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    styleSelected: TcxStyle;
    styleNormal: TcxStyle;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    Image1: TImage;
    bsSkinData1: TbsSkinData;
    bsCompressedSkinList1: TbsCompressedSkinList;
    bsSelectSkinDialog1: TbsSelectSkinDialog;
    bsResourceStrData1: TbsResourceStrData;
    HDSTK02_2_3: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure HDSET01_3Click(Sender: TObject);
    procedure HDSET02_3Click(Sender: TObject);
    procedure HDSET02_1Click(Sender: TObject);
    procedure HDSET02_8Click(Sender: TObject);
    procedure HDSET02_9Click(Sender: TObject);
    procedure HDSET03_1Click(Sender: TObject);
    procedure HDSET03_5Click(Sender: TObject);
    procedure FILE04_1Click(Sender: TObject);
    procedure HDSET01_4Click(Sender: TObject);
    procedure FILE07Click(Sender: TObject);
    procedure HDSET06_1Click(Sender: TObject);
    procedure HDSET06_2Click(Sender: TObject);
    procedure FILE06_3Click(Sender: TObject);
    procedure HDSET01_8Click(Sender: TObject);
    procedure HDSET01_AClick(Sender: TObject);
    procedure HDSTK02_4Click(Sender: TObject);
    procedure HDSTK02_8Click(Sender: TObject);
    procedure HDSET01_5Click(Sender: TObject);
    procedure AP01Click(Sender: TObject);
    procedure AP07_3Click(Sender: TObject);
    procedure AP07_4Click(Sender: TObject);
    procedure AP07_6Click(Sender: TObject);
    procedure AP07_5Click(Sender: TObject);
    procedure FILE08Click(Sender: TObject);
    procedure HDSV13Click(Sender: TObject);
    procedure HDFIN02_1Click(Sender: TObject);
    procedure HDFIN02_2Click(Sender: TObject);
    procedure HDFIN02_3Click(Sender: TObject);
    procedure HDFIN02_4Click(Sender: TObject);
    procedure FILE05_7Click(Sender: TObject);
    procedure HDSTK02_1Click(Sender: TObject);
    procedure HDSTK02_6Click(Sender: TObject);
    procedure HDSTK02_D_1Click(Sender: TObject);
    procedure HDSTK02_D_2Click(Sender: TObject);
    procedure HDSP03Click(Sender: TObject);
    procedure HDSTK02_7Click(Sender: TObject);
    procedure HDSTK02_2_1Click(Sender: TObject);
    procedure HDSTK02_2_2Click(Sender: TObject);
    procedure HDSTK02_B_1Click(Sender: TObject);
    procedure HDSTK02_B_2Click(Sender: TObject);
    procedure HDSTK02_B_3Click(Sender: TObject);
    procedure HDSTK02_B_4Click(Sender: TObject);
    procedure HDSTK02_C_6Click(Sender: TObject);
    procedure HDSTK02_C_1Click(Sender: TObject);
    procedure HDSTK02_C_2Click(Sender: TObject);
    procedure HDSTK02_C_3Click(Sender: TObject);
    procedure HDSTK02_C_4Click(Sender: TObject);
    procedure IC08_5Click(Sender: TObject);
    procedure HDREP02_3_8Click(Sender: TObject);
    procedure HDREP02_3_9Click(Sender: TObject);
    procedure HDREP02_3_AClick(Sender: TObject);
    procedure HDREP02_3_BClick(Sender: TObject);
    procedure HDREP02_3_CClick(Sender: TObject);
    procedure HDREP02_3_DClick(Sender: TObject);
    procedure HDREP02_3_EClick(Sender: TObject);
    procedure HDREP02_3_GClick(Sender: TObject);
    procedure HDREP02_3_HClick(Sender: TObject);
    procedure HDREP02_3_IClick(Sender: TObject);
    procedure HDREP02_3_JClick(Sender: TObject);
    procedure HDHLP02_4Click(Sender: TObject);
    procedure HDHLP02_3Click(Sender: TObject);
    procedure HDHLP02_2Click(Sender: TObject);
    procedure HDHLP02_5Click(Sender: TObject);
    procedure HDHLP02_6Click(Sender: TObject);
    procedure HDSTK02_B_5Click(Sender: TObject);
    procedure HDHLP02_1Click(Sender: TObject);
    procedure SV01Click(Sender: TObject);
    procedure HDSV1_01Click(Sender: TObject);
    procedure HDSV3_06Click(Sender: TObject);
    procedure HDSV1_02Click(Sender: TObject);
    procedure HDSV3_07Click(Sender: TObject);
    procedure HDSV1_03Click(Sender: TObject);
    procedure HDSV1_04Click(Sender: TObject);
    procedure HDSV1_05Click(Sender: TObject);
    procedure HDSET01_7Click(Sender: TObject);
    procedure HDSV2_08Click(Sender: TObject);
    procedure HDSV2_10Click(Sender: TObject);
    procedure HDSV2_09Click(Sender: TObject);
    procedure HDSV12_1Click(Sender: TObject);
    procedure HDSV12_2Click(Sender: TObject);
    procedure SV10_8Click(Sender: TObject);
    procedure SV10_4Click(Sender: TObject);
    procedure SV10_72Click(Sender: TObject);
    procedure SV10_73Click(Sender: TObject);
    procedure SV10_74Click(Sender: TObject);
    procedure SV10_75Click(Sender: TObject);
    procedure HDSET02_4Click(Sender: TObject);
    procedure HDSV11_3Click(Sender: TObject);
    procedure HDSET06_3Click(Sender: TObject);
    procedure FILE07_2Click(Sender: TObject);
    procedure FILE07_4Click(Sender: TObject);
    procedure FILE07_3Click(Sender: TObject);
    procedure FILE06_4Click(Sender: TObject);
    procedure HDSTK02_9_1Click(Sender: TObject);
    procedure HDSTK02_9_2Click(Sender: TObject);
    procedure PO04Click(Sender: TObject);
    procedure HDSET01_9Click(Sender: TObject);
    procedure FILE02_5Click(Sender: TObject);
    procedure CRM03_83Click(Sender: TObject);
    procedure SEC04Click(Sender: TObject);
    procedure IC06_6Click(Sender: TObject);
    procedure IC08_23Click(Sender: TObject);
    procedure HDSET02_6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure HDSET02_2Click(Sender: TObject);
    procedure PO03_6Click(Sender: TObject);
    procedure HDSET04_1Click(Sender: TObject);
    procedure HDSET04_2Click(Sender: TObject);
    procedure HDREP02_3_MClick(Sender: TObject);
    procedure IC08_44Click(Sender: TObject);
    procedure CRM00Click(Sender: TObject);
    procedure CRM03_4Click(Sender: TObject);
    procedure CRM03_5Click(Sender: TObject);
    procedure HDSV11_1Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure HDCRM02Click(Sender: TObject);
    procedure HDCRM01Click(Sender: TObject);
    procedure HDREP02_3_LClick(Sender: TObject);
    procedure HDSTK02_C_5Click(Sender: TObject);
    procedure HDSET01_6Click(Sender: TObject);
    procedure HDSET03_4Click(Sender: TObject);
    procedure FILE06_6Click(Sender: TObject);
    procedure PO06_1Click(Sender: TObject);
    procedure HDREP02_3_FClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvMenuMenuItems4Click(Sender: TObject);
    procedure HDSET03_6Click(Sender: TObject);
    procedure HDSET01_1Click(Sender: TObject);
    procedure HDHLP02_7Click(Sender: TObject);
    procedure HDHLP02_8Click(Sender: TObject);
    procedure HDHLP02_9Click(Sender: TObject);
    procedure HDHLP02_AClick(Sender: TObject);
    procedure HDHLP02_BClick(Sender: TObject);
    procedure HDSP04Click(Sender: TObject);
    procedure HDSTK02_AClick(Sender: TObject);
    procedure HDREP02_3_KClick(Sender: TObject);
    procedure HDREP02_3_NClick(Sender: TObject);
    procedure REP05_01Click(Sender: TObject);
    procedure HDSV11_2Click(Sender: TObject);
    procedure KeyboardLayout1Change(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure RspLangClick(Sender: TObject);
    procedure RspLang1Click(Sender: TObject);
    procedure AdvToolBarPager1CloseButtonClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure HDSET01_2Click(Sender: TObject);
    procedure HDSET02_5Click(Sender: TObject);
    procedure HDSET02_7Click(Sender: TObject);
    procedure HDSET03_3Click(Sender: TObject);
    procedure HDSTK01_1Click(Sender: TObject);
    procedure HDSTK01_2Click(Sender: TObject);
    procedure HDSTK01_3Click(Sender: TObject);
    procedure HDSTK01_4Click(Sender: TObject);
    procedure HDSTK01_5Click(Sender: TObject);
    procedure HDSTK01_6Click(Sender: TObject);
    procedure HDSL01_1Click(Sender: TObject);
    procedure HDSL01_2Click(Sender: TObject);
    procedure HDSL01_3Click(Sender: TObject);
    procedure HDSL01_4Click(Sender: TObject);
    procedure HDSL01_5Click(Sender: TObject);
    procedure HDSL01_6Click(Sender: TObject);
    procedure HDFIN01_1Click(Sender: TObject);
    procedure HDFIN01_2Click(Sender: TObject);
    procedure HDTAX01Click(Sender: TObject);
    procedure HDTAX02_1Click(Sender: TObject);
    procedure HDTAX02_2Click(Sender: TObject);
    procedure HDTAX02_3Click(Sender: TObject);
    procedure HDTAX02_4Click(Sender: TObject);
    procedure HDTAX02_5Click(Sender: TObject);
    procedure HDTAX02_6Click(Sender: TObject);
    procedure HDREP01_1_4Click(Sender: TObject);
    procedure HDREP01_1_AClick(Sender: TObject);
    procedure HDREP01_1_BClick(Sender: TObject);
    procedure HDREP01_4_5Click(Sender: TObject);
    procedure HDHLP01_1Click(Sender: TObject);
    procedure HDHLP01_2Click(Sender: TObject);
    procedure HDHLP01_3Click(Sender: TObject);
    procedure HDHLP01_4Click(Sender: TObject);
    procedure HDSET03_2Click(Sender: TObject);
    procedure HDSET05_1Click(Sender: TObject);
    procedure HDSET05_2Click(Sender: TObject);
    procedure HDSET04_3Click(Sender: TObject);
    procedure HDSTK03_1Click(Sender: TObject);
    procedure HDSTK03_2Click(Sender: TObject);
    procedure HDSTK03_3Click(Sender: TObject);
    procedure HDSET01_BClick(Sender: TObject);
    procedure ImageItem15ItemClick(Sender: TObject; Item: TCustomItem);
    procedure AdvNavBar1Change(Sender: TObject);
    procedure HDSTK01_7Click(Sender: TObject);
    procedure HDHLP01_5Click(Sender: TObject);
    procedure HDSL01_7Click(Sender: TObject);
    procedure HDTAX03Click(Sender: TObject);
    procedure ImageItem14ItemClick(Sender: TObject; Item: TCustomItem);
    procedure ImageItem16ItemClick(Sender: TObject; Item: TCustomItem);
    procedure ImageItem17ItemClick(Sender: TObject; Item: TCustomItem);
    procedure ImageItem18ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSET03_6_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSL01_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSL01_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSL01_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDFIN01_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSET03_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSTK02_D_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSV1_02ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSV1_04ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDSL01_8Click(Sender: TObject);
    procedure HDSP02Click(Sender: TObject);
    procedure HDFIN01_3Click(Sender: TObject);
    procedure HDREP04_5Click(Sender: TObject);
    procedure HDSP01Click(Sender: TObject);
    procedure HDSP05Click(Sender: TObject);
    procedure HDSP06Click(Sender: TObject);
    procedure HDREP02_1_4Click(Sender: TObject);
    procedure HDSTK02_C_7Click(Sender: TObject);
    procedure HDREP01_2_7Click(Sender: TObject);
    procedure HDREP05_1Click(Sender: TObject);
    procedure HDSP07Click(Sender: TObject);
    procedure ImageItem7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDHLP02_CClick(Sender: TObject);
    procedure HDSTK01_8Click(Sender: TObject);
    procedure N_HDSET03_6_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSTK01_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSTK02_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure P_HDSET01_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET01_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET01_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET01_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET01_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET01_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET01_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET01_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET01_9ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET01_AItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET01_BItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET02_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET02_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET02_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET02_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET02_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET02_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET02_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET02_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET02_9ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET03_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET03_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET03_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET03_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET03_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET03_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET04_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET04_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET04_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET05_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET05_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET06_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET06_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSET06_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK01_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK01_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK01_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK01_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK01_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK01_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK01_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK01_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_AItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_2_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_2_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_D_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_D_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_9_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_9_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_B_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_B_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_B_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_B_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_B_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_C_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_C_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_C_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_C_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_C_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK03_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK03_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK03_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSL01_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSL01_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSL01_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSL01_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSL01_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSL01_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSL01_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSL01_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSP01ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSP02ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSP03ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSP06ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSP04ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSP05ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSP07ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV1_01ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV1_02ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV1_03ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV1_04ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV1_05ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV2_08ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV2_09ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV2_10ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV3_06ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV3_07ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV11_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSV11_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure B_HDSV12_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure B_HDSV13ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDFIN01_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDFIN01_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDFIN01_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDFIN02_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDFIN02_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDFIN02_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDFIN02_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure B_HDTAX01ItemClick(Sender: TObject; Item: TCustomItem);
    procedure B_HDTAX03ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDTAX02_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDTAX02_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDTAX02_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDTAX02_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDTAX02_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDTAX02_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDREP01_1_1Click(Sender: TObject);
    procedure HDREP01_1_2Click(Sender: TObject);
    procedure HDREP01_1_3Click(Sender: TObject);
    procedure HDREP01_1_5Click(Sender: TObject);
    procedure HDREP01_1_6Click(Sender: TObject);
    procedure HDREP01_1_7Click(Sender: TObject);
    procedure HDREP01_1_8Click(Sender: TObject);
    procedure HDREP01_1_9Click(Sender: TObject);
    procedure HDREP01_2_1Click(Sender: TObject);
    procedure HDREP01_2_2Click(Sender: TObject);
    procedure HDREP01_2_3Click(Sender: TObject);
    procedure HDREP01_2_4Click(Sender: TObject);
    procedure HDREP01_2_5Click(Sender: TObject);
    procedure HDREP01_2_6Click(Sender: TObject);
    procedure HDREP01_4_1Click(Sender: TObject);
    procedure HDREP01_3_1Click(Sender: TObject);
    procedure HDREP01_3_2Click(Sender: TObject);
    procedure HDREP01_3_3Click(Sender: TObject);
    procedure HDREP01_4_2Click(Sender: TObject);
    procedure HDREP01_4_3Click(Sender: TObject);
    procedure HDREP01_4_4Click(Sender: TObject);
    procedure HDREP01_4_6Click(Sender: TObject);
    procedure HDREP02_2_1Click(Sender: TObject);
    procedure HDREP02_2_2Click(Sender: TObject);
    procedure HDREP02_2_3Click(Sender: TObject);
    procedure HDREP02_2_4Click(Sender: TObject);
    procedure HDREP02_2_5Click(Sender: TObject);
    procedure HDREP02_3_1Click(Sender: TObject);
    procedure HDREP02_3_2Click(Sender: TObject);
    procedure HDREP02_3_3Click(Sender: TObject);
    procedure HDREP02_3_4Click(Sender: TObject);
    procedure HDREP02_3_5Click(Sender: TObject);
    procedure HDREP02_3_6Click(Sender: TObject);
    procedure HDREP02_3_7Click(Sender: TObject);
    procedure HDREP02_4_1Click(Sender: TObject);
    procedure HDREP02_4_2Click(Sender: TObject);
    procedure HDREP02_4_3Click(Sender: TObject);
    procedure HDREP02_4_4Click(Sender: TObject);
    procedure HDREP02_4_5Click(Sender: TObject);
    procedure HDREP02_4_6Click(Sender: TObject);
    procedure HDREP02_4_7Click(Sender: TObject);
    procedure HDREP02_4_8Click(Sender: TObject);
    procedure HDREP02_4_9Click(Sender: TObject);
    procedure HDREP02_4_AClick(Sender: TObject);
    procedure HDREP02_4_BClick(Sender: TObject);
    procedure HDREP02_4_CClick(Sender: TObject);
    procedure HDREP02_4_DClick(Sender: TObject);
    procedure HDREP02_4_EClick(Sender: TObject);
    procedure HDREP02_1_1Click(Sender: TObject);
    procedure HDREP02_1_2Click(Sender: TObject);
    procedure HDREP02_5_1Click(Sender: TObject);
    procedure HDREP02_5_2Click(Sender: TObject);
    procedure HDREP02_5_3Click(Sender: TObject);
    procedure HDREP02_5_4Click(Sender: TObject);
    procedure HDREP02_5_5Click(Sender: TObject);
    procedure HDREP02_5_6Click(Sender: TObject);
    procedure HDREP02_5_7Click(Sender: TObject);
    procedure HDREP02_5_8Click(Sender: TObject);
    procedure HDREP03_1Click(Sender: TObject);
    procedure HDREP03_2Click(Sender: TObject);
    procedure HDREP03_3Click(Sender: TObject);
    procedure HDREP03_4Click(Sender: TObject);
    procedure HDREP04_1Click(Sender: TObject);
    procedure HDREP04_2Click(Sender: TObject);
    procedure HDREP04_3Click(Sender: TObject);
    procedure HDREP04_4Click(Sender: TObject);
    procedure P_HDREP01_1_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_1_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_1_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_1_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_1_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_1_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_1_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_1_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_1_9ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_1_AItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_1_BItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_2_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_2_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_2_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_2_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_2_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_2_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_2_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_4_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_4_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_4_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_4_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_4_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_2_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_2_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_2_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_2_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_2_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_9ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_AItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_BItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_CItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_DItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_EItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_FItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_GItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_HItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_IItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_JItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_KItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_LItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_3_NItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_9ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_AItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_BItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_CItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_1_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_1_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_1_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_5_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_5_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_5_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_5_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_5_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_5_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_5_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_5_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP03_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP03_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP03_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP03_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP04_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP04_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP04_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP04_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP04_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP05_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_DItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP02_4_EItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP01_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP01_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP01_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP01_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP01_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_CItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_9ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_AItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDHLP02_BItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDREP01_3_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDREP02_1_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDREP02_3_HItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDREP02_3_KItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDREP02_1_4ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDREP02_4_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_C_6ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSTK02_C_7ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_3_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_3_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDREP01_3_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure AdvMenuMenuItems3Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure N_HDSTK02_9_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDSET01_CClick(Sender: TObject);
    procedure P_HDSET01_CItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDSL01_9_1Click(Sender: TObject);
    procedure P_HDSL01_9_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure AdvToolBarPager1TabClick(Sender: TObject; Page: Integer);
    procedure N_HDSTK01_5ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSL01_9_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure P_HDSL01_9_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDSL01_9_2Click(Sender: TObject);
    procedure HDSL01_9_3Click(Sender: TObject);
    procedure HDREP01_5_1Click(Sender: TObject);
    procedure P_HDREP01_5_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDREP01_5_2Click(Sender: TObject);
    procedure P_HDREP01_5_2ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDREP01_5_3Click(Sender: TObject);
    procedure P_HDREP01_5_3ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDSTK02_9Click(Sender: TObject);
    procedure N_HDSTK02_9ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSTK02_8ItemClick(Sender: TObject; Item: TCustomItem);
    procedure N_HDSTK02_2_1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDSET02_AClick(Sender: TObject);
    procedure N_HDSP02ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HDSTK02_EClick(Sender: TObject);
    procedure N_HDSTK02_EItemClick(Sender: TObject; Item: TCustomItem);
    procedure Timer1Timer(Sender: TObject);
    procedure HDHLP02_DClick(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton20Click(Sender: TObject);
    procedure qrReportAfterPost(DataSet: TDataSet);
    procedure HDSTK02_2_3Click(Sender: TObject);
  private
    { Private declarations }
    procedure HandleMessage(var Msg: TMessage);
  protected
    { Protected declarations }
  public
    { Public declarations }
    Xuser_ID, XPasswd, Xlocat, XDepart, XLevel, XOffCod, Xseecost, Xsrch, frpath, Reggl, Security, XDesign, XChgLoc, XChgDate, XEditprc, xChgGrd, XReprint, XDatabase, XPassDB, XDriverNM, Command, nKeyLang, nMenu, XMenucode, nSkinForm, XNavBar, XPrn, XChqCost: string;
    Edit_Right, Del_Right, Insert_Right, ACCESS_Right: Boolean;
    XCurDtFrmDB, XCurDtStFrmDB, CR_DATE, CR_DATETIME: TDatetime;
    htmlpopup: thtmlpopup;
    procedure AnchorClick(sender: TObject; Anchor: string);
    procedure CreatePopup;
    procedure Check_right(Systemcod1, Menucode1: string);
    function EngToTh(EngDate: TdateTime): string;
    function ThToEng(ThDate: TdateTime): string;
    function ZeroLead(St: string; len: integer): string;
    procedure Authorize;
    procedure UPMENU(XSYD, XCOD, XDES, XParent: string);
    procedure SetUserName(NewUserName, NewPass, NewBran, NewDepart, NewLevel, NewOff, NewSeecost, Newsrch, NewDesign, NewChgLocat, NewChgDate, NewChgGrd, NewReprint, NewEditprc, NewPrn, NewChqCost: string);
    function Get_ComputerName: string;
    function Get_UserName: string;
    function FindOnExist(FColumn, FTable, FValue: string): string;
    function FindNotExist(FColumn, FTable, FValue: string): string;
    function LocalIP: string;
    function Fieldexist(FTable, FField, FValue: string): string;
    function Findexist(FTable, FField, FValue: string): string; // ����������ź�����
    function Findnoexist(FTable, FField, FValue: string): string; // �ѧ����բ������������������š�͹
    function FindShowDesc(FTable, SField, FField, FValue: string): string;
    function DateThai(Chang: Integer; ValueDate: TDateTime): string;
    procedure RaiseException(ShowMsg: string);
    procedure ShowForm(FormClass: TFormClass);
    function FileLastModified(const TheFile: string): string;
    function SetInputFormatDt(CalendarType: string): Boolean;
    function ChkIdno(Idno: string): Boolean;
    procedure DelFilesFromDir(Directory, FileMask: string; DelSubDirs: Boolean);
//    procedure SetKeyboardLanguage;
    procedure ChkInteger(TValue: string);
    procedure Do_Cancel_Delete;
    function processExists(exeFileName: string): Boolean;
    function Do_After_Post_Delete(nQuery: TFDQuery): TFDQuery;
    function DateToThai(chgdate: Integer; ValueDate: TDatetime): string;
    procedure Do_Show_DisplayFormat_Floating(nQuery: TFDQuery);
    procedure Do_AdvPolyList_Autosize;
    function GetMACAdress: string;
    function GetHardDiskSerial(const DriveLetter: char): string;
    function Do_Chk_DatainGL(FTable, FField, FValue: string): string;
    procedure Do_Chk_DateModified;
    function GetFileLastModDate(filename: string): TDateTime;
    procedure Do_ShowAdvPage_Visible;
    function Do_Ref_frxReport1(AfrxReport: TfrxReport): TfrxReport;
    procedure Do_Prev_Edit_FastReport4(nFrxReport: TfrxReport; nFrxName, Action: string);
    function Do_Call_Reports(FTable, FField, FValue: string): string;
    function Do_Show_frReports(FReport: string; AFrStream: TMemoryStream): string;
  end;

var
  SFMain: TSFMain;
  TSVConfig: TiniFile;

const
  HREP = 'HDREP';
  HHLP = 'HDHLP';

implementation

uses
  dm1, Usetcompa, Srchset1, uCan_Del, unSetBaab, Setoptn, unSetGrdCust,
  uBankbook, uBanklocat, unSetTypReson, Urecv, dmstock, SrchStk, Umvcar,
  Srchsal1, unRecvOption, umvopt, QuirySt2, Quiropt1, UArresv, DmSal, Ucshsal,
  FinSal10, AgnSal10, OptSal10, ClosAr10, FincRecv, Dmfin01, frBillMenu, Srchfin,
  CRDFincRecv, frCrdBillMenu, uCrtTaxbuy, Crdbuy10, Crdbuy20, CrdSal10,
  CrdSalAr_invoi, Crdnote1, CrdSal30, uRCrdResv, RepRcFin00, RpRec10, frRepStk,
  frRpDltStk0, RpOpt10, RpOpt20, rpmvfm10, RpMvto10, uRpStkreg, uRpDeposit,
  RpStk20, RpTXD10, uRpMvFmAc, URepSale, un_Reserv, RpSC50, RpcshA20, Rpfina20,
  URpSaleAgenAc, RepCan10, RpArB10, RpArA10, RpArA30, RpArA40, unRepArOpt,
  RpAra60, PrnLabl10, RptxSl10, RpTxBy10, uAddCostCS, uAddCostFin, Querycar,
  uAddGarFin, uEditTaxsal, unStkRegRed, unDeposit, unDiscDep, unPurchase,
  un_ModiStrno, ArOthr1, unTaxSale, unRpDistibut, FChqPay1, frPrnTxSale,
  PurchasekitDlg, uPasswordFR, TypeClaim, unSendClaim, unInvoiClaimCar,
  unRecvClaimCar, unRpSendClaim, unRpInvoiClaim, unRpPaymentClaim, Dmsec,
  Passinp1, Set_Loct, unSetofficer, unSetDepart, uApmaster, Setfimst, Set_Pyty,
  SetCond2, Set_camp, Settype, SetGroup, unCustom, Setcolor, Setargrp, SetCond1,
  Set_Inv, Set_inv2, Strp10, TXRp20, TXRP30, TxRp10, Apinv04, Stin07, CrdPost,
  unQuerySale, RpAp30, RpAp40, RpAp50, RpAp60, FcanPo, Po_inv02, RpPo20, RpPo30,
  RpPo40, RpPo50, RpPo10, Setpyfor, Arinv01, Arinv02, Arinv03, Arinv04, UpInvoi,
  Arrp10, ArRp20, ArRp30, ArRp40, ArRp50, ArRp60, ArRp70, Anlrp40, Stin03,
  Stin00, Stin14, Stin05, Stin04, Stin06, StMvRecv, STIn08, STIn09, ExportSt,
  STIn10, Enqpkinv, Enqpkrt, EnqPart, EnqPart1, EnqPart2, EnqBack, EnqMove,
  IcRp110, STRp220, STRp310, STRp40, STRpd20, RpSv01, SvFn50, STRpa50, STRpa80,
  Strp50, STRp60, STRp70, STRpA40, strpc10, strpa70, strpb40, strpc50, strpa10,
  strpc20, Endofyea, Endofmon, upstock, Dlgcopy, upoveryy, STRpA20, unConfigCalc,
  Set_cost, Adjpric, Svst10, Svin10, unHistorySV, Svin20, Hlpbrinv, spin01,
  Svin30, svrpc50, uChangePass, Svinnewp, PayCrdt2, Paycash2, payoth, SvRpA40,
  SvRpc20, STin02_1, unNoteService, Svrpa80, Svrpa70, svrpc10, svrp10, svrp20,
  svrp30, svrp40, svrp60, UCatalog1, svst20, svst30, svst40, svst50, SVST90,
  svst91, svst92, svst93, SVST60, STIn11, ChgPart, STIn12, CHKMENU, StickDT,
  U_StickerMDL, uFindData, uFindDLG, Strpd10, UpFifo, StrPC30, rpArBill,
  DlgPtkit, SvSt70, FrSumcostSale, unDelaySV, unFrequencySV, unPartNoStock,
  URepSalePDI, unInvoiceAdd, unInvClaim, unTaxClaim, unSubject, uControlpanel,
  unRepCupong, uSumProfitByGcode, uSumProfitByTsv, uSumProfitByModel,
  usumPrifitPart, uCatalogPrc, unCustomvip, unGrpCKList, uChgPwd, uCheckAut,
  uUpdConfig, uClose, uEngineer, ChgGroup, chgmodel, Chgstrno, ChgOwner,
  uLostSale, RpAp_04, U_RepCustmast, uRepTaxDaily, uWelcome, uDataflow,
  uRpPartProf, RecvHistory, uRpReChkServ, Password, Pr_inv02, STin02_1Pos,
  Stin01, Editshlf, uPos, uRpStkBal, CanPo_inv02, Stin15; //,unCalcDaySv,unCalAfterSale,unCalFirstSv,unCalAfterSv,uCalNextService;

{$R *.dfm}

procedure TSFMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSFMain.FormCreate(Sender: TObject);
begin
  AdvToolBarPager1.Win7ScenicRibbon := False;
  AdvToolBarPager1.Caption.Height := 34;
  AdvShapeButton1.Appearance.Shape := bsCustom;
  //
  TSVConfig := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'SVConfig.ini');
  nSkinForm := TSVConfig.ReadString('Setting', 'Skin Form', '');
  XNavBar := TSVConfig.ReadString('Setting', 'NavBar', '');
  XMenucode := TSVConfig.ReadString('Menu', 'page', '');
  //
  if nSkinForm = '' then
    nSkinForm := '6';
  bsSkinData1.SkinIndex := StrToInt(nSkinForm);
  //
  if XNavBar = '' then
    XNavBar := '1';
  AdvNavBar1.ActiveTabIndex := StrToInt(XNavBar);
end;

procedure TSFMain.FormShow(Sender: TObject);
const
  SqlText1 = 'SELECT O.CODE,O.NAME,P.USERID,L.LOCATNM ' +
    'FROM SECRET P,OFFICER O,INVLOCAT L ' +
    'WHERE P.CUSCOD=O.CODE AND L.LOCATCD=P.LOCAT AND P.USERID = :VUserid ';
  SqlText2 = 'SELECT CURRENT DATE AS CURDATE,' +
    'CURRENT TIMESTAMP AS CURTIMESTAMP,' +
    'CURRENT TIME AS CURDATETIME FROM CONDPAY';
var
  nLevel, Dir: string;
begin
  SFMain.frxDesigner1.Restrictions := [];

  Command := 'ISCPlus.exe' + #0;
  if SFMain.XLevel = '1' then
    nLevel := 'Admin(1)'
  else
    nLevel := 'User(2)';

  with query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MACADDRNO, ACTIVATECOD FROM KDPON WHERE FLAG = ''N'' AND MACADDRNO = :VMACADDRNO ');
    ParamByName('VMACADDRNO').AsString := SFMain.GetMACAdress;
    Open;
    if (Eof and Bof) then
    begin
      SFMain.AdvSmoothMessageDialog2.Caption := '�سŧ����¹�����ҹ�����ѧ?';
      SFMain.AdvSmoothMessageDialog2.HTMLText.Text := '�Դ��͢�����ŧ����¹�����ͧ�ҧ�ѧ���<br/>1.LINE id. : 0884939537<br/>' +
        '2.Email : scimdev2015@gmail.com<br/>' +
        '<a href="http://www.igroupall.com/">3.http://www.igroupall.com</a><br/><br/>' +
        '��ԡ "��ŧ" ����ŧ����¹�͹���';
      case SFMain.AdvSmoothMessageDialog2.ExecuteDialog of
        mrOk:
          begin
            ShowForm(TPasswordFR);
          end;
        mrCancel:
          SFMain.Close;
      end;
    end;
  end;

  Dm_Sec.Do_With_Query(actOpen, Query1, SqlText1, [SFMain.Xuser_ID]);

  Dm_Sec.Do_With_Query_No_params(actOpen, qrGetdtFrmDB, SqlText2);
  XCurDtFrmDB := qrgetdtFrmDB.fieldbyname('CURDATE').AsDateTime;
  XCurDtStFrmDB := qrgetdtFrmDB.fieldbyname('CURTIMESTAMP').AsDateTime;
  CR_DATE := qrgetdtFrmDB.fieldbyname('CURDATE').AsDateTime;
  CR_DATETIME := qrgetdtFrmDB.fieldbyname('CURTIMESTAMP').AsDateTime;
  StsMain.Panels.Items[0].Text := 'SCHEMA : ' + Dm_Sec.XSchema;
  StsMain.Panels.Items[1].Text := 'Computer : ' + Get_ComputerName;
  StsMain.Panels.Items[2].Text := 'Windows Logon : ' + Get_UserName;
  StsMain.Panels.Items[3].Text := LocalIP;
  StsMain.Panels.Items[4].Text := 'Working Date : ' + DateToStr(XCurDtFrmDB);
  StsMain.Panels.Items[5].Text := '<A href="http://www.igroupall.com">http://www.igroupall.com</A>';

  TextItem1.Caption := 'Program : ISCPlus V1.0';
  TextItem2.Caption := 'Modified : ' + FileLastModified(Command);
  TextItem3.Caption := 'Database : ' + SFMain.XDatabase;
  TextItem4.Caption := 'Schema : ' + Dm_Sec.XSchema;
  TextItem5.Caption := 'Officer : ' + Query1.fieldbyname('NAME').AsString;
  TextItem6.Caption := 'User Login : ' + SFMain.Xuser_ID;
  TextItem7.Caption := 'Branch : ' + SFMain.Xlocat;
  TextItem8.Caption := 'Level : ' + nLevel;

  Dm_Sec.QCondpay.Close;
  Dm_Sec.QCondpay.Open;
  Dm_Sec.Condpay.Close;
  Dm_Sec.Condpay.Open;

  frPath := ExtractFilePath(Application.EXEName);
  SFMain.Authorize;
  SFMain.Do_ShowAdvPage_Visible;
  SFMain.Do_AdvPolyList_Autosize;
  //
  AdvToolBar1.BeginUpdate;
  AdvToolBar1.Menu := MainMenu1;
  AdvToolBar1.EndUpdate;
end;

function TSFMain.Do_Call_Reports(FTable, FField, FValue: string): string;
var
  VTable, VField, VValue: string;
begin
  VTable := FTable;
  VField := FField;
  VValue := UpperCase(FValue);
  with qrReport do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM ' + VTable + ' WHERE ' + VField + '=:0');
    params[0].AsString := VValue;
    open;
  end;
  Result := VTable + '' + VValue;
end;

function TSFMain.Do_Show_frReports(FReport: string; AFrStream: TMemoryStream): string;
begin
  Do_Call_Reports('FRREPORTS','FRNAME',FReport);
  if qrReport.IsEmpty then
    raise Exception.Create('����� Report ' + FReport );
  AFrStream.LoadFromStream(qrReport.CreateBlobStream(qrReport.FieldByName('PATHFR'), bmRead));
end;

function TSFMain.Do_Ref_frxReport1(AfrxReport: TfrxReport): TfrxReport;
begin
  Result := AfrxReport;
end;

procedure TSFMain.Do_Prev_Edit_FastReport4(nFrxReport: TfrxReport; nFrxName, Action: string);
var
  AFrStream: TMemoryStream;
begin
  AFrStream := TMemoryStream.Create;
  try
    Do_Show_frReports(nFrxName, AFrStream);
    nFrxReport.LoadFromStream(AFrStream);
    nFrxReport.PreviewOptions.AllowEdit := False;
    nFrxReport.PreviewOptions.AllowPreviewEdit := False;
    nFrxReport.FileName := nFrxName;
    //
    if (Action = '1') then {Preview Report}
    begin
      nFrxReport.ShowReport;
    end
    else if Action = '2' then {Design Report}
    begin
      nFrxReport.DesignReport;
      //
      SFMain.AdvSmoothMessageDialog6.HTMLText.Text := 'Edited by User : ' + SFMain.Xuser_ID + '<br/>Do you want to save changes?';
      case SFMain.AdvSmoothMessageDialog6.ExecuteDialog of
        mrOk:
          begin
            qrReport.Edit;
            AFrStream.Clear;
            nFrxReport.SaveToStream(AFrStream);
            AFrStream.Position := 0;
            (qrReport.FieldByName('PATHFR') as TBlobField).LoadFromStream(AFrStream);
            qrReport.FieldByName('USERID').AsString := SFMain.Xuser_ID;
            qrReport.FieldByName('INPUTDT').AsDateTime := Now;
            qrReport.Post;
          end;
        mrCancel:
          begin
            DeleteFile(nFrxName);
          end;
      end;
    end
    else if Action = '3' then {Print Report}
    begin
      nFrxReport.PrepareReport;
      nFrxReport.Print;
    end;
  finally
    AFrStream.Free;
  end;
end;

procedure TSFMain.Do_ShowAdvPage_Visible;
var
  SysCod, MnuCodePop, MnuCodeBtn, MnuCodeNav: string;
  v, x, y, j: integer;
  n: word;
begin
  SysCod := 'HD%';
  with QMenutrn1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM MENUTRNDMS WHERE  ' +
      'USERID =:ID AND SYSTEMCOD LIKE :SYS1');
    Params[0].Asstring := XUser_Id;
    Params[1].Asstring := SysCod;
    Open;
    QMenutrn1.First;
    while not (QMenutrn1.Eof) do
    begin
         {check menu}
      MnuCodePop := 'P_' + QMenutrn1.FieldByname('MenuCode').Asstring;
      MnuCodeNav := 'N_' + QMenutrn1.FieldByname('MenuCode').Asstring;
      MnuCodeBtn := QMenutrn1.FieldByname('MenuCode').Asstring;

      if MnuCodeBtn = 'HDSTK02_9' then
        N_HDSTK02_9.Visible := QMenutrn1.FieldByname('M_Access').Asstring = 'T';
      if MnuCodeBtn = 'HDSTK02_4' then
        N_HDSTK02_8.Visible := QMenutrn1.FieldByname('M_Access').Asstring = 'T';
      if MnuCodeBtn = 'HDSTK02_1' then
        N_HDSTK02_1.Visible := QMenutrn1.FieldByname('M_Access').Asstring = 'T';
      if MnuCodeBtn = 'HDSTK02_E' then
        N_HDSTK02_E.Visible := QMenutrn1.FieldByname('M_Access').Asstring = 'T';
      if MnuCodeBtn = 'HDSTK02_D_1' then
        N_HDSTK02_D_1.Visible := QMenutrn1.FieldByname('M_Access').Asstring = 'T';
      if MnuCodeBtn = 'HDSP02' then
        N_HDSP02.Visible := QMenutrn1.FieldByname('M_Access').Asstring = 'T';
      if MnuCodeBtn = 'HDSTK02_2_1' then
        N_HDSTK02_2_1.Visible := QMenutrn1.FieldByname('M_Access').Asstring = 'T';

      QMenutrn1.Next;
    end;
  end;
end;

function TSFMain.GetFileLastModDate(filename: string): TDateTime;
var
  fileDate: integer;
begin
  Result := 0;
  fileDate := FileAge(filename);

  if fileDate > -1 then
    Result := FileDateToDateTime(fileDate);
end;

procedure TSFMain.Do_Chk_DateModified;
begin
  Dm_sec.Do_With_Query_No_params(actOpen, Query2, 'SELECT DATE(INPUTDT) AS INPUTDT FROM UPDATE_EXE WHERE PRONAME = ''ISCPLUS'' ');
  if Assigned(htmlpopup) then
    Exit;
  CreatePopup;
  htmlpopup.RollUp;
//  end;
end;

procedure TSFMain.AnchorClick(Sender: TObject; Anchor: string);
begin
  if Anchor = 'close' then
  begin
    htmlpopup.Hide;
    htmlpopup.Free;
    htmlpopup := nil;
  end
  else
    ShellExecute(0, 'open', pchar(Anchor), nil, nil, SW_NORMAL);
end;

procedure TSFMain.CreatePopup;
begin
  htmlpopup := thtmlpopup.Create(self);
  htmlpopup.Color := $00D9FFFF;
  htmlpopup.popupwidth := 200;
  htmlpopup.popupheight := 200;
  htmlpopup.bordersize := 2;
  htmlpopup.popuptop := 100;
  htmlpopup.popupleft := 100;
  htmlpopup.Font.Name := 'Tahoma';
  htmlpopup.Font.Color := clBlack;
  htmlpopup.Font.Style := [fsBold];
  htmlpopup.OnAnchorClick := AnchorClick;

  Dm_sec.Do_With_Query_No_params(actOpen, Query2, 'SELECT DATE(INPUTDT) AS INPUTDT FROM UPDATE_EXE WHERE PRONAME = ''ISCPLUS'' ');
  htmlpopup.Text.Add('<font color="clred" size="9">Hello  ' + Xuser_ID + '...</font><br><br>');
  htmlpopup.Text.Add('<font color="clred" size="9">A new version of ISCPlus is avaliable:</font><br><br>');
  htmlpopup.Text.Add('<FONT size="8">Your version :' + DatetimeToStr(GetFileLastModDate(Command)) + '</font><BR>');
  htmlpopup.Text.Add('<FONT size="8">Last update :' + DatetimeToStr(Query2.FieldByName('INPUTDT').AsDateTime) + '</font>');

  htmlpopup.Text.Add('<br><br><br>Press here to <a href="close">close</a>');
end;

function TSFMain.Do_Chk_DatainGL(FTable, FField, FValue: string): string;
var
  VTable, VField, VValue: string;
begin
  VTable := FTable;
  VField := FField;
  VValue := FValue;
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT ' + VField + ' from ' + VTable + ' where ' + VField + '=:0 and glcanflag <> ''C''');
    params[0].AsString := VValue;
    open;
    if VValue <> '' then
    begin
      if not (Eof and Bof) then
        RaiseException('ŧ��ش����ѹ����..ź������������!');
    end;
  end;
  Result := VTable + '' + VValue;
end;

procedure TSFMain.Do_AdvPolyList_Autosize;
var
  n: Word;
begin
  for n := 0 to ComponentCount - 1 do
  begin
    if (Components[n] is TAdvHorizontalPolyList) and (TAdvHorizontalPolyList(Components[n]).Tag = 0) then
    begin
      TAdvHorizontalPolyList(Components[n]).AutoSizeMode := asmControl;
      TAdvHorizontalPolyList(Components[n]).AutoSizeType := astWidth;
      TAdvHorizontalPolyList(Components[n]).ShowFocus := False;
    end;
  end;

  for n := 0 to ComponentCount - 1 do
  begin
    if (Components[n] is TTextItem) and (TTextItem(Components[n]).Tag = 0) then
    begin
      TTextItem(Components[n]).Height := 28;
    end;
  end;

  for n := 0 to ComponentCount - 1 do
  begin
    if (Components[n] is TImageTextItem) and (TImageTextItem(Components[n]).Tag = 0) then
    begin
      TImageTextItem(Components[n]).Selectable := False;
      TImageTextItem(Components[n]).Selectable := False;
    end;
  end;

//  for n := 0 to ComponentCount - 1 do
//  begin
//    if (Components[n] is TFullDropDownItem) and (TFullDropDownItem(Components[n]).Tag = 0) then
//    begin
//      TFullDropDownItem(Components[n]).DropDownAppearance.DropDownHeight :=
//        (TFullDropDownItem(Components[n]).Items.GetCountFocusableItems) * 33;
//
//      TFullDropDownItem(Components[n]).Items.Appearance.NormalFont.Size := 9;
//      TFullDropDownItem(Components[n]).Items.Appearance.DownFont.Size := 10;
//      TFullDropDownItem(Components[n]).Items.Appearance.DisabledFont.Size := 9;
//      TFullDropDownItem(Components[n]).Items.Appearance.HoveredFont.Size := 10;
//      TFullDropDownItem(Components[n]).Items.Appearance.SelectedFont.Size := 10;
//
//      TFullDropDownItem(Components[n]).Selectable := False;
//    end;
//  end;
end;

procedure TSFMain.Do_Show_DisplayFormat_Floating(nQuery: TFDQuery);
var
  i: Integer;
  nParName: string;
begin
  for i := 0 to nQuery.FieldCount - 1 do
  begin
    if nQuery.Fields[i].DataType in [ftFMTBcd, ftBCD, ftFloat] then
    begin
      nParName := nQuery.Fields[i].FieldName;
      TFMTBcdField(nQuery.FieldByName(nParName)).DisplayFormat := '##,##0.00;(##,##0.00)';
      TFMTBcdField(nQuery.FieldByName(nParName)).Alignment := taRightJustify;
      TFMTBcdField(nQuery.FieldByName(nParName)).EditFormat := '###0.00';
    end;
  end;
end;

function TSFMain.Do_After_Post_Delete(nQuery: TFDQuery): TFDQuery;
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if nQuery.Active then
      if (nQuery.ApplyUpdates = 0) then
        nQuery.CommitUpdates
      else
        raise Exception.Create(nQuery.RowError.Message);
    if Dm_Sec.QLastno.Active then
      if (Dm_Sec.QLastno.ApplyUpdates = 0) then
        Dm_Sec.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm_Sec.QLastno.RowError.Message);
    if Dm_Sec.qrRecent.Active then
      if (Dm_Sec.qrRecent.ApplyUpdates = 0) then
        Dm_Sec.qrRecent.CommitUpdates
      else
        raise Exception.Create(Dm_Sec.qrRecent.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.Rollback;
    nQuery.Edit;
    raise;
  end;
  //
  Result := nQuery;
end;

procedure TSFMain.Do_Cancel_Delete;
begin
  Application.CreateForm(TfrCan_Del, frCan_Del);
  frCan_Del.ShowModal;
end;

function TSFMain.DateToThai(chgdate: Integer; ValueDate: TDatetime): string;
var
  Day, Month, Year: Word;
  Day1, Month1, Year1: string;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  DecodeDate(ValueDate, Year, Month, Day);
  case chgdate of
    1:
      begin
        case Month of
          1:
            Month1 := '01';
          2:
            Month1 := '02';
          3:
            Month1 := '03';
          4:
            Month1 := '04';
          5:
            Month1 := '05';
          6:
            Month1 := '06';
          7:
            Month1 := '07';
          8:
            Month1 := '08';
          9:
            Month1 := '09';
          10:
            Month1 := '10';
          11:
            Month1 := '11';
          12:
            Month1 := '12';
        end;
        Day1 := InttoStr(Day);
        Year1 := InttoStr(Year + 543);
        Result := Day1 + '/' + Month1 + '/' + Year1;
      end;
    2:
      begin
        case Month of
          1:
            Month1 := '�.�.';
          2:
            Month1 := '�.�.';
          3:
            Month1 := '��.�.';
          4:
            Month1 := '��.�.';
          5:
            Month1 := '�.�.';
          6:
            Month1 := '��.�.';
          7:
            Month1 := '�.�.';
          8:
            Month1 := '�.�.';
          9:
            Month1 := '�.�.';
          10:
            Month1 := '�.�.';
          11:
            Month1 := '�.�.';
          12:
            Month1 := '�.�.';
        end;
        Day1 := Inttostr(Day);
        Year1 := InttoStr(Year + 543);
        Result := Day1 + ' ' + Month1 + ' ' + Year1;
      end;
    3:
      begin
        case Month of
          1:
            Month1 := '���Ҥ�';
          2:
            Month1 := '����Ҿѹ��';
          3:
            Month1 := '�չҤ�';
          4:
            Month1 := '����¹';
          5:
            Month1 := '����Ҥ�';
          6:
            Month1 := '�Զع�¹';
          7:
            Month1 := '�á�Ҥ�';
          8:
            Month1 := '�ԧ�Ҥ�';
          9:
            Month1 := '�ѹ��¹';
          10:
            Month1 := '���Ҥ�';
          11:
            Month1 := '��Ȩԡ�¹';
          12:
            Month1 := '�ѹ�Ҥ�';
        end;
        Day1 := Inttostr(Day);
        Year1 := Inttostr(Year + 543);
        Result := Day1 + ' ' + Month1 + ' ' + Year1;
      end;
  end;
end;

function TSFMain.GetHardDiskSerial(const DriveLetter: Char): string;
var
  NotUsed: DWORD;
  VolumeFlags: DWORD;
  VolumeInfo: array[0..MAX_PATH] of Char;
  VolumeSerialNumber: DWORD;
begin
  GetVolumeInformation(PChar(DriveLetter + ':\'),
    nil, SizeOf(VolumeInfo), @VolumeSerialNumber, NotUsed,
    VolumeFlags, nil, 0);
  Result := Format('%14s%X',
    [VolumeInfo, VolumeSerialNumber])
end;

function TSFMain.GetMACAdress: string;
var
  NCB: PNCB;
  Adapter: PAdapterStatus;
  URetCode: PAnsiChar;
  RetCode: Ansichar;
  I: integer;
  Lenum: PlanaEnum;
  _SystemID: string;
  TMPSTR: string;
begin
  Result := '';
  _SystemID := '';
  Getmem(NCB, SizeOf(TNCB));
  Fillchar(NCB^, SizeOf(TNCB), 0);

  Getmem(Lenum, SizeOf(TLanaEnum));
  Fillchar(Lenum^, SizeOf(TLanaEnum), 0);

  Getmem(Adapter, SizeOf(TAdapterStatus));
  Fillchar(Adapter^, SizeOf(TAdapterStatus), 0);

  Lenum.Length := chr(0);
  NCB.ncb_command := chr(NCBENUM);
  NCB.ncb_buffer := Pointer(Lenum);
  NCB.ncb_length := SizeOf(Lenum);
  RetCode := Netbios(NCB);

  I := 0;
  repeat
    Fillchar(NCB^, SizeOf(TNCB), 0);
    NCB.ncb_command := chr(NCBRESET);
    NCB.ncb_lana_num := Lenum.lana[I];
    RetCode := Netbios(NCB);

    Fillchar(NCB^, SizeOf(TNCB), 0);
    NCB.ncb_command := chr(NCBASTAT);
    NCB.ncb_lana_num := Lenum.lana[I];
    // Must be 16
    NCB.ncb_callname := '*               ';

    NCB.ncb_buffer := Pointer(Adapter);

    NCB.ncb_length := SizeOf(TAdapterStatus);
    RetCode := Netbios(NCB);
    //---- calc _systemId from mac-address[2-5] XOR mac-address[1]...
    if (RetCode = chr(0)) or (RetCode = chr(6)) then
    begin
      _SystemID := IntToHex(Ord(Adapter.adapter_address[0]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[1]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[2]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[3]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[4]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[5]), 2);
    end;
    Inc(I);
  until (I >= Ord(Lenum.Length)) or (_SystemID <> '00-00-00-00-00-00');
  FreeMem(NCB);
  FreeMem(Adapter);
  FreeMem(Lenum);
  GetMacAdress := _SystemID;
end;

function TSFMain.processExists(exeFileName: string): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(exeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(exeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure TSFMain.HandleMessage(var Msg: TMessage);
begin
  if Msg.msg = WM_CLOSE then //����ö������Ҥ����� Unit windows.
  begin
    Application.CreateForm(TFrmClose, FrmClose);
    FrmClose.ShowModal;
  end
  else
    wndproc(Msg);
end;

procedure TSFMain.ChkInteger(TValue: string);
var
  float: Extended;
  errorPos: Integer;
begin
  if TValue <> '' then
  begin
    VAl(TValue, float, errorPos);
    if errorPos <> 0 then
    begin
      ShowMessageFmt('[ %s ]  㹵��˹� [ %d ] ��ͧ�繵���Ţ(Numberic)',
        [TValue, errorPos]);
      Abort;
    end;
  end;
end;

procedure TSFMain.DelFilesFromDir(Directory, FileMask: string; DelSubDirs: Boolean);
var
  SourceLst: string;
  FOS: TSHFileOpStruct;
begin
  FillChar(FOS, SizeOf(FOS), 0);
  FOS.Wnd := Application.MainForm.Handle;
  FOS.wFunc := FO_DELETE;
  SourceLst := Directory + '\' + FileMask + #0;
  FOS.pFrom := PChar(SourceLst);
  if not DelSubDirs then
    FOS.fFlags := FOS.fFlags or FOF_FILESONLY;
  FOS.fFlags := FOS.fFlags or FOF_NOCONFIRMATION;
  SHFileOperation(FOS);
end;

function TSFMain.ChkIdno(Idno: string): Boolean;
var
  A1: array[1..13] of Integer;
  A2: array[1..2] of Integer;
  WorkArray: array[1..12] of Integer;
  SumID, Res: Integer;
  i, j, k, n: Integer;
  Chk_digit: boolean;
begin
  Chk_digit := False;
  if Length(Idno) <> 13 then
  begin
    RaiseException('�Ţ���ѵ������ҡѺ 13 ��ѡ!');
    Result := True;
    Chk_digit := True;
  end
  else
  begin
    SumID := 0;
    for i := 1 to 13 do
      A1[i] := StrToInt(Copy(Idno, i, 1));
    for j := 1 to 12 do
      WorkArray[j] := A1[j] * (13 - (j - 1));
    for k := 1 to 12 do
      SumID := SumID + WorkArray[k];
    Res := 11 - (SumID mod 11);
    if Length(IntToStr(Res)) = 1 then
    begin
      A2[1] := 0;
      A2[2] := Res;
    end
    else
    begin
      for n := 1 to 2 do
        A2[n] := StrToInt(Copy(inttostr(Res), n, 1));
    end;
    Result := A1[13] = A2[2];
  end;
end;

function TSFMain.SetInputFormatDt(CalendarType: string): Boolean;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('Control Panel\International', False);
    try
      Reg.WriteString('iCalendarType', CalendarType);
      Reg.WriteString('sShortDate', 'dd/MM/yyyy');
      Result := True;
    finally
      Reg.CloseKey;
      Result := False;
    end;
  finally
    Reg.Free;
  end;
end;

function TSFMain.FileLastModified(const TheFile: string): string;
var
  FileH: THandle;
  LocalFT: TFileTime;
  DosFT: DWORD;
  LastAccessedTime: TDateTime;
  FindData: TWin32FindData;
begin
  Result := '';
  FileH := FindFirstFile(PChar(TheFile), FindData);
  if FileH <> INVALID_HANDLE_VALUE then
  begin
    Windows.FindClose(Handle);
    if (FindData.dwFileAttributes and
      FILE_ATTRIBUTE_DIRECTORY) = 0 then
    begin
      FileTimeToLocalFileTime
        (FindData.ftLastWriteTime, LocalFT);
      FileTimeToDosDateTime
        (LocalFT, LongRec(DosFT).Hi, LongRec(DosFT).Lo);
      LastAccessedTime := FileDateToDateTime(DosFT);
      Result := DateTimeToStr(LastAccessedTime);
    end;
  end;
end;

{Procedure TSFMain.HandleMessage(var Msg:TMessage);
Begin
 If msg.msg = WM_CLOSE Then //����ö������Ҥ����� Unit windows.
  Begin
   Application.CreateForm(TFrmClose,FrmClose);
   FrmClose.ShowModal;
  End
 Else SFMain.wndproc(msg);
End;  }

procedure TSFMain.ShowForm(FormClass: TFormClass);
begin
  with FormClass.Create(Self) do
  try
    Showmodal;
  finally
    free;
  end;
end;

procedure TSFMain.RaiseException(ShowMsg: string);
begin
  AdvSmoothMessageDialog1.Caption := '��سҵ�Ǩ�ͺ������';
  AdvSmoothMessageDialog1.HTMLText.Text := ShowMsg;
  AdvSmoothMessageDialog1.ExecuteDialog;
  Abort;
end;

function TSFMain.Fieldexist(FTable, FField, FValue: string): string;
var
  VTable, VField, VValue: string;
begin
  VTable := FTable;
  VField := FField;
  VValue := FValue;
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT ' + VField + ' from ' + VTable + ' where ' + VField + '=:0');
    params[0].AsString := VValue;
    open;
    if VValue <> '' then
    begin
      if not (Eof and Bof) then
        RaiseException('�Ţ�͡����������ʹ���ա�úѹ�֡����������..!');
    end;
  end;
  Result := VTable + '' + VValue;
end;

function TSFMain.DateThai(Chang: Integer; ValueDate: TDateTime): string;
var
  day, month, year: Word;
  Day1, Month1, Year1: string;
begin
  DecodeDate(ValueDate, year, month, day);
  case Chang of
    1:
      begin
        case month of
          1:
            Month1 := '01';
          2:
            Month1 := '02';
          3:
            Month1 := '03';
          4:
            Month1 := '04';
          5:
            Month1 := '05';
          6:
            Month1 := '06';
          7:
            Month1 := '07';
          8:
            Month1 := '08';
          9:
            Month1 := '09';
          10:
            Month1 := '10';
          11:
            Month1 := '11';
          12:
            Month1 := '12';
        end;
        Day1 := InttoStr(day);
        Year1 := Inttostr(year + 543);
        Result := Day1 + '/' + Month1 + '/' + Year1;
      end;
    2:
      begin
        case month of
          1:
            Month1 := '���Ҥ�';
          2:
            Month1 := '����Ҿѹ��';
          3:
            Month1 := '�չҤ�';
          4:
            Month1 := '����¹';
          5:
            Month1 := '����Ҥ�';
          6:
            Month1 := '�Զع�¹';
          7:
            Month1 := '�á�Ҥ�';
          8:
            Month1 := '�ԧ�Ҥ�';
          9:
            Month1 := '�ѹ��¹';
          10:
            Month1 := '���Ҥ�';
          11:
            Month1 := '��Ȩԡ�¹';
          12:
            Month1 := '�ѹ�Ҥ�';
        end;
        Day1 := InttoStr(day);
        Year1 := inttostr(year + 543);
        Result := Day1 + ' ' + Month1 + ' ' + Year1;
      end;
    3:
      begin
        case month of
          1:
            Month1 := '�.�.';
          2:
            Month1 := '�.�.';
          3:
            Month1 := '��.�.';
          4:
            Month1 := '��.�.';
          5:
            Month1 := '�.�.';
          6:
            Month1 := '��.�.';
          7:
            Month1 := '�.�.';
          8:
            Month1 := '�.�.';
          9:
            Month1 := '�.�.';
          10:
            Month1 := '�.�.';
          11:
            Month1 := '�.�.';
          12:
            Month1 := '�.�.';
        end;
        Day1 := InttoStr(day);
        Year1 := inttostr(year + 543);
        Result := Day1 + ' ' + Month1 + ' ' + Year1;
      end;
  end;
end;

function TSFMain.LocalIP: string;
type
  TaPInAddr = array[0..10] of PInAddr;

  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  Buffer: array[0..63] of Ansichar;
  I: Integer;
  GInitData: TWSADATA;
begin
  WSAStartup($101, GInitData);
  Result := '';
  GetHostName(Buffer, SizeOf(Buffer));
  phe := GetHostByName(Buffer);
  if phe = nil then
    Exit;
  pptr := PaPInAddr(phe^.h_addr_list);
  I := 0;
  while pptr^[I] <> nil do
  begin
    result := StrPas(inet_ntoa(pptr^[I]^));
    Inc(I);
  end;
  WSACleanup;
end;

function TSFMain.FindShowDesc(FTable, SField, FField, FValue: string): string;
var
  VTable, VField, VSField, VValue, SDesc: string;
begin
  VTable := FTable;
  VField := FField;
  VSField := SField;
  VValue := FValue;
  with Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select ' + VSField + ' from ' + VTable + ' where ' + VField + '=:0 ');
    params[0].AsString := VValue;
    Open;
  end;
  SDesc := Query1.fieldbyname(VSField).AsString;
  Result := SDesc;
end;

function TSFMain.Findnoexist(FTable, FField, FValue: string): string;
var
  VTable, VField, VValue: string;
begin
  VTable := FTable;
  VField := FField;
  VValue := FValue;
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT ' + VField + ' from ' + VTable + ' where ' + VField + '=:0');
    params[0].AsString := VValue;
    open;
    if VValue <> '' then
    begin
      if (Eof and Bof) then
        RaiseException('�Ţ�͡����������ʹ���ѧ����ա�úѹ�֡������㹵��ҧ ' + VTable + ' ���仺ѹ�֡��͹..!');
    end;
  end;
  Result := VTable + '' + VValue;
end;

function TSFMain.Findexist(FTable, FField, FValue: string): string;
var
  VTable, VField, VValue: string;
begin
  VTable := FTable;
  VField := FField;
  VValue := FValue;
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT ' + VField + ' from ' + VTable + ' where ' + VField + '=:0');
    params[0].AsString := VValue;
    open;
    if VValue <> '' then
    begin
      if not (Eof and Bof) then
        RaiseException('�Ţ�͡����������ʹ��١�������ҧ�ԧ㹵��ҧ ' + VTable + ' ����..ź�����!');
    end;
  end;
  Result := VTable + '' + VValue;
end;

function TSFMain.FindOnExist(FColumn, FTable, FValue: string): string;
var
  VColumn, VTable, VValue: string;
begin
  VColumn := FColumn;
  VTable := FTable;
  VValue := FValue;
  with Query2 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT ' + VColumn + ' FROM ' + VTable + ' WHERE ' + VColumn + '=:0');
    Params[0].AsString := VValue;
    Open;
    if not (Eof and Bof) then
      RaiseException('���� : ' + VValue + ' �ա�úѹ�֡㹵�ҧ ' + VTable + ' ��س�ź�����š�͹...!');
  end;
  Result := VTable + '' + VValue;
end;

function TSFMain.FindNotExist(FColumn, FTable, FValue: string): string;
var
  VColumn, VTable, VValue: string;
begin
  VColumn := FColumn;
  VTable := FTable;
  VValue := FValue;
  with Query2 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT ' + VColumn + ' FROM ' + VTable + ' WHERE ' + VColumn + '=:0');
    Params[0].AsString := VValue;
    Open;
    if (Eof and Bof) then
      RaiseException('��������� : ' + VValue + ' 㹵��ҧ ' + VTable + ' ��س�����������㹵��ҧ��͹...!');
  end;
  Result := VTable + '' + VValue;
end;

function TSFMain.Get_ComputerName: string;
var
  ComputerName: string;
  nsize: Cardinal;
begin
  nsize := 25;
  SetLength(ComputerName, nsize);
  if (GetComputerName(PChar(ComputerName), nsize)) then
  begin
    SetLength(ComputerName, nsize);
    Result := ComputerName;
  end
  else
    Result := 'Unknow';
end;

function TSFMain.Get_UserName: string;
var
  UserName: string;
  Count: Cardinal;
begin
  Count := 25;
  SetLength(UserName, Count);
  if GetUserName(PChar(UserName), Count) then
  begin
    SetLength(UserName, Count - 1);
    Result := UserName;
  end
  else
    Result := 'Unknown';
end;

procedure TSFMain.Check_right(Systemcod1, Menucode1: string);
begin
  Edit_Right := False;
  Del_Right := False;
  Insert_Right := False;

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM MENUTRNDMS WHERE  ' +
      'USERID =:ID AND SYSTEMCOD=:SYS1 AND MENUCODE=:CODE');
    Params[0].Asstring := XUser_Id;
    Params[1].Asstring := Systemcod1;
    Params[2].Asstring := Menucode1;
    Open;

    if not (Query1.Bof and Query1.Eof) then
    begin
      Edit_Right := (FieldByname('M_Edit').Asstring = 'T');
      Del_Right := (FieldByname('M_Delete').Asstring = 'T');
      Insert_Right := (FieldByname('M_Insert').Asstring = 'T');
    end;
  end;

  if (XUser_Id = 'DUEMCHOK') then
  begin
    Edit_Right := True;
    Del_Right := True;
    Insert_Right := True;
  end;
end;

procedure TSFMain.UPMENU(XSYD, XCOD, XDES, XParent: string);
begin
  XSYD := copy(XSYD, 0, 5);
  XCOD := copy(XCOD, 0, 15);
  XDES := copy(XDES, 0, 40);
  XParent := copy(XParent, 0, 15);

  if not (Query2.Locate('MENUCODE', XCOD, [LOCASEINSENSITIVE])) then
  begin
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('INSERT INTO  MENUMSTDMS ( SYSTEMCOD,MENUCODE,MENUDESC,PARENT,PRGCODE)' +
        ' VALUES(:0,:1,:2,:3,:4)');
      params[0].asstring := copy(XSYD, 0, 5);
      params[1].asstring := copy(XCOD, 0, 15);
      params[2].asstring := copy(XDES, 0, 40);
      params[3].asstring := copy(XParent, 0, 15);
      params[4].AsString := '3';
      ExecSQL;
    end;
  end;
end;

procedure TSFMain.Authorize;
var
  SysCod, MnuCode: string;
  v, x, i, y, j: integer;
  XSYD, XCOD, XDES, XParent: string;
begin
  Edit_Right := False;
  Del_Right := False;
  Insert_right := False;

  SysCod := 'HD%';
  with QMenutrn do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT * FROM MENUTRNDMS WHERE  ' +
      'USERID = :ID AND SYSTEMCOD LIKE :SYS1');
    Params[0].Asstring := XUser_Id;
    Params[1].Asstring := SysCod;
    Open;
    QMenutrn.First;
    while not (QMenutrn.Eof) do
    begin
      MnuCode := QMenutrn.FieldByname('MenuCode').Asstring;
      for x := 0 to Mainmenu1.Items.Count - 1 do
        for i := 0 to Mainmenu1.Items.Items[x].Count - 1 do
        begin
          if MainMenu1.Items.Items[x].Name = MnuCode then
          begin
            Mainmenu1.Items.Items[x].Visible := QMenutrn.FieldByname('M_Access').Asstring = 'T';
            Mainmenu1.Items.Items[x].TAG := 2;
          end;
          if Mainmenu1.Items.Items[x].Items[i].name = MnuCode then
          begin
            Mainmenu1.Items.Items[x].Items[i].Visible := QMenutrn.FieldByname('M_Access').Asstring = 'T';
            Mainmenu1.Items.Items[x].Items[i].TAG := 2;
          end;
          for y := 0 to Mainmenu1.Items.Items[x].Items[i].Count - 1 do
          begin
            if Mainmenu1.Items.Items[x].Items[i].Items[y].name = MnuCode then
            begin
              Mainmenu1.Items.Items[x].Items[i].Items[y].Visible := QMenutrn.FieldByname('M_Access').Asstring = 'T';
              Mainmenu1.Items.Items[x].Items[i].Items[y].TAG := 2;
            end;

            for j := 0 to Mainmenu1.Items.Items[x].Items[i].Items[y].Count - 1 do
              if Mainmenu1.Items.Items[x].Items[i].Items[y].Items[j].name = MnuCode then
              begin
                Mainmenu1.Items.Items[x].Items[i].Items[y].Items[j].Visible := QMenutrn.FieldByname('M_Access').Asstring = 'T';
                Mainmenu1.Items.Items[x].Items[i].Items[y].Items[j].TAG := 2;
              end;
          end;
        end;

      QMenutrn.Next;
    end;
  end;
   //  update  MENUMST �ҡ����ͧ������ �������� ����˹�  Tag  �ͧ����  ����� 2
  with query2 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT MENUCODE FROM MENUMSTDMS WHERE SYSTEMCOD LIKE :0');
    params[0].asstring := SysCod;
    open;
  end;

  for v := 0 to Mainmenu1.Items.Count - 1 do
  begin
    if Mainmenu1.Items.Items[v].Tag <> 2 then
    begin
      XSYD := Mainmenu1.Items.Items[v].Name;
      XCOD := Mainmenu1.Items.Items[v].Name;
      XDES := Mainmenu1.Items.Items[v].Caption;
      XParent := inttostr(v);
      UPMENU(XSYD, XCOD, XDES, XParent);
    end;
  end;

  for x := 0 to Mainmenu1.Items.Count - 1 do
    for i := 0 to Mainmenu1.Items.Items[x].Count - 1 do
    begin
      if Mainmenu1.Items.Items[x].Items[i].TAG <> 2 then
      begin
        XSYD := Mainmenu1.Items.Items[x].Name;
        XCOD := Mainmenu1.Items.Items[x].Items[i].name;
        XDES := Mainmenu1.Items.Items[x].Items[i].caption;
        XParent := Mainmenu1.Items.Items[x].Name;
        UPMENU(XSYD, XCOD, XDES, XParent);
      end;

      for y := 0 to Mainmenu1.Items.Items[x].Items[i].Count - 1 do
      begin
        if Mainmenu1.Items.Items[x].Items[i].Items[y].TAG <> 2 then
        begin
          XSYD := Mainmenu1.Items.Items[x].Name;
          XCOD := Mainmenu1.Items.Items[x].Items[i].Items[y].name;
          XDES := Mainmenu1.Items.Items[x].Items[i].Items[y].caption;
          XParent := Mainmenu1.Items.Items[x].Items[i].Name;
          UPMENU(XSYD, XCOD, XDES, XParent);
        end;
        for j := 0 to Mainmenu1.Items.Items[x].Items[i].Items[y].Count - 1 do
          if Mainmenu1.Items.Items[x].Items[i].Items[y].Items[j].TAG <> 2 then
          begin
            XSYD := Mainmenu1.Items.Items[x].Name;
            XCOD := Mainmenu1.Items.Items[x].Items[i].Items[y].Items[j].name;
            XDES := Mainmenu1.Items.Items[x].Items[i].Items[y].Items[j].caption;
            XParent := Mainmenu1.Items.Items[x].Items[i].Items[y].Name;
            UPMENU(XSYD, XCOD, XDES, XParent);
          end;
      end;
    end;

  AdvToolBar1.Menu := Mainmenu1;
  AdvToolBar1.UpdateMenu;
end;

procedure TSFMain.SetUserName(NewUserName, NewPass, NewBran, NewDepart, NewLevel, NewOff, NewSeecost, Newsrch, NewDesign, NewChgLocat, NewChgDate, NewChgGrd, NewReprint, NewEditprc, NewPrn, NewChqCost: string);
begin
  XUser_ID := NewUserName;
  XPassWd := NewPass;
  XLocat := NewBran;
  Xdepart := NewDepart;
  Xlevel := NewLevel;
  XOffcod := NewOff;
  Xseecost := NewSeecost;
  Xsrch := Newsrch;
  XDesign := NewDesign;
  XChgLoc := NewChgLocat;
  XChgDate := NewChgDate;
  XChgGrd := NewChgGrd;
  XReprint := NewReprint;
  XEditprc := NewEditprc;
  XPrn := NewPrn;
  XChqCost := NewChqCost;
end;

function TSFMain.ZeroLead(St: string; len: integer): string;
var
  Zero, Chr1: string;
  j, ll: integer;
begin
  Chr1 := Trim(St);
  Zero := '';
  ll := length(Chr1);
  if len < ll then
    len := ll;

  for j := 1 to len - ll do
    Zero := Zero + '0';
  Result := Zero + Chr1;
end;

function TSFMain.EngToTh(EngDate: TdateTime): string;
var
  DM, YY, Tyear: string;
  V1, YT, Res: integer;
begin
  DM := FormatDateTime('DD/MM/', EngDate);
  YY := FormatDateTime('YYYY', EngDate);
  Val(YY, V1, Res);
  YT := V1 + 543;
  Str(YT: 4, Tyear);
  Result := DM + Tyear;
end;

function TSFMain.ThToEng(ThDate: TdateTime): string;
var
  DM, YY, Eyear, DMY: string;
  V1, YE, Res: integer;
begin
  DM := FormatDateTime('DD/MM/', ThDate);
  YY := FormatDateTime('YYYY', ThDate);
  Val(YY, V1, Res);
  YE := V1 - 543;
  Str(YE: 4, Eyear);
  Result := DM + Eyear;
end;

procedure TSFMain.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TSFMain.HDSET01_3Click(Sender: TObject);
begin
  if not Assigned(Setlocat) then
    Setlocat := TSetlocat.Create(Application);
  Setlocat.Show;
end;

procedure TSFMain.HDSET02_3Click(Sender: TObject);
begin
  if not Assigned(FType) then
    FType := TFType.Create(Application);
  FType.Show;
end;

procedure TSFMain.HDSET02_1Click(Sender: TObject);
begin
  if not Assigned(FSGroup) then
    FSGroup := TFSGroup.Create(Application);
  FSGroup.Show;
end;

procedure TSFMain.HDSET02_8Click(Sender: TObject);
begin
  if not Assigned(SetInvMst) then
    SetInvMst := TSetInvMst.Create(Application);
  SetInvMst.Show;
end;

procedure TSFMain.HDSET02_9Click(Sender: TObject);
begin
  if not Assigned(SetInvloc) then
    SetInvloc := TSetInvloc.Create(Application);
  SetInvloc.show;
end;

procedure TSFMain.HDSET03_1Click(Sender: TObject);
begin
  if not Assigned(FArgroup) then
    FArgroup := TFArgroup.Create(Application);
  FArgroup.Show;
end;

procedure TSFMain.HDSET03_5Click(Sender: TObject);
begin
  if not Assigned(FormCustmst) then
    FormCustmst := TFormCustmst.Create(Application);
  FormCustmst.Show;
end;

procedure TSFMain.FILE04_1Click(Sender: TObject);
begin
  if not Assigned(frApmaster) then
    frApmaster := TfrApmaster.Create(Application);
  frApmaster.Show;
end;

procedure TSFMain.HDSET01_4Click(Sender: TObject);
begin
  if not Assigned(FSetDepart) then
    FSetDepart := TFSetDepart.Create(Application);
  FSetDepart.Show;
end;

procedure TSFMain.FILE07Click(Sender: TObject);
begin
  if not Assigned(FPaytyp) then
    FPaytyp := TFPaytyp.Create(Application);
  FPaytyp.Show;
end;

procedure TSFMain.HDSET06_1Click(Sender: TObject);
begin
  if not Assigned(SvSt_30) then
    SvSt_30 := TSvSt_30.Create(Application);
  SvSt_30.Show;
end;

procedure TSFMain.HDSET06_2Click(Sender: TObject);
begin
  if not Assigned(SvSt_50) then
    SvSt_50 := TSvSt_50.Create(Application);
  SvSt_50.Show;
end;

procedure TSFMain.FILE06_3Click(Sender: TObject);
begin
  if not Assigned(SvSt_60) then
    SvSt_60 := TSvSt_60.Create(Application);
  SvSt_60.Show;
end;

procedure TSFMain.HDSET01_8Click(Sender: TObject);
begin
  if XLevel <> '1' then
    RaiseException('Access by Administrator or Level1 only...');
  if not Assigned(Fpassinp1) then
    Fpassinp1 := TFpassinp1.Create(Application);
  Fpassinp1.Show;
end;

procedure TSFMain.HDSET01_AClick(Sender: TObject);
begin
  if XLevel <> '1' then
    RaiseException('Access by Administrator or Level1 only...');

  if not Assigned(frUpdConfig) then
    frUpdConfig := TfrUpdConfig.Create(Application);
  frUpdConfig.Show;
end;

procedure TSFMain.HDSTK02_4Click(Sender: TObject);
begin
  if not Assigned(FPo_inv02) then
    FPo_inv02 := TFPo_inv02.Create(Application);
  FPo_inv02.Show;
end;

procedure TSFMain.HDSTK02_8Click(Sender: TObject);
begin
  if not Assigned(FCanPo_inv02) then
    FCanPo_inv02 := TFCanPo_inv02.Create(Application);
  FCanPo_inv02.Show;
//  if not Assigned(FCanorder) then
//    FCanorder := TFCanorder.Create(Application);
//  FCanorder.Show;
end;

procedure TSFMain.HDSET01_5Click(Sender: TObject);
begin
  if not Assigned(FSetOfficer) then
    FSetOfficer := TFSetOfficer.Create(Application);
  FSetOfficer.Show;
end;

procedure TSFMain.AP01Click(Sender: TObject);
begin
  if not Assigned(Apinv_4) then
    Apinv_4 := TApinv_4.Create(Application);
  Apinv_4.Show;
end;

procedure TSFMain.AP07_3Click(Sender: TObject);
begin
  Application.CreateForm(TRpAp_30, RpAp_30);
  RpAp_30.ShowModal;
end;

procedure TSFMain.AP07_4Click(Sender: TObject);
begin
  Application.CreateForm(TRpAp_40, RpAp_40);
  RpAp_40.ShowModal;
end;

procedure TSFMain.AP07_6Click(Sender: TObject);
begin
  Application.CreateForm(TRpAp_50, RpAp_50);
  RpAp_50.ShowModal;
end;

procedure TSFMain.AP07_5Click(Sender: TObject);
begin
  Application.CreateForm(TRpAp_60, RpAp_60);
  RpAp_60.ShowModal;
end;

procedure TSFMain.FILE08Click(Sender: TObject);
begin
  if not Assigned(FPayfor) then
    FPayfor := TFPayfor.Create(Application);
  FPayfor.Show;
end;

procedure TSFMain.HDSV13Click(Sender: TObject);
begin
  if not Assigned(Arinv_1) then
    Arinv_1 := TArinv_1.Create(Application);
  Arinv_1.Show;
end;

procedure TSFMain.HDFIN02_1Click(Sender: TObject);
begin
  if not Assigned(Arinv_2) then
    Arinv_2 := TArinv_2.Create(Application);
  Arinv_2.Show;
end;

procedure TSFMain.HDFIN02_2Click(Sender: TObject);
begin
  if not Assigned(Arinv_3) then
    Arinv_3 := TArinv_3.Create(Application);
  Arinv_3.Show;
end;

procedure TSFMain.HDFIN02_3Click(Sender: TObject);
begin
  if not Assigned(Arinv_4) then
    Arinv_4 := TArinv_4.Create(Application);
  Arinv_4.Show;
end;

procedure TSFMain.HDFIN02_4Click(Sender: TObject);
begin
  if not Assigned(Fupinvoi) then
    Fupinvoi := TFupinvoi.Create(Application);
  Fupinvoi.Show;
end;

procedure TSFMain.FILE05_7Click(Sender: TObject);
begin
  Application.CreateForm(TSetCmpForm2, SetCmpForm2);
  SetCmpForm2.ShowModal;
end;

procedure TSFMain.HDSTK02_1Click(Sender: TObject);
begin
  if not Assigned(FmStin00) then
    FmStin00 := TFmStin00.Create(Application);
  FMStin00.Show;
end;

procedure TSFMain.HDSTK02_6Click(Sender: TObject);
begin
  if not Assigned(FmStin05) then
    FmStin05 := TFmStin05.Create(Application);
  FMStin05.Show;
end;

procedure TSFMain.HDSTK02_D_1Click(Sender: TObject);
begin
  if Assigned(FmSTIn11) then
    sfmain.RaiseException('Form open existing..');

  if Assigned(FmStin02_1Pos) then
    sfmain.RaiseException('Form open existing..');

  if not Assigned(FmStin02_1) then
    FmStin02_1 := TFmStin02_1.Create(Application);
  FmStin02_1.Show;
end;

procedure TSFMain.HDSTK02_D_2Click(Sender: TObject);
begin
  if not Assigned(FmSTIn14) then
    FmSTIn14 := TFmSTIn14.Create(Application);
  FmSTIn14.Show;
end;

procedure TSFMain.HDSP03Click(Sender: TObject);
begin
  if not Assigned(FmSTIn03) then
    FmSTIn03 := TFmSTIn03.Create(Application);
  FmSTIn03.Show;
end;

procedure TSFMain.HDSTK02_7Click(Sender: TObject);
begin
  if not Assigned(FmSTIn04) then
    FmSTIn04 := TFmSTIn04.Create(Application);
  FmSTIn04.Show;
end;

procedure TSFMain.HDSTK02_2_1Click(Sender: TObject);
begin
  if not Assigned(FmSTIn06) then
    FmSTIn06 := TFmSTIn06.Create(Application);
  FmSTIn06.Show;
end;

procedure TSFMain.HDSTK02_2_2Click(Sender: TObject);
begin
  if not Assigned(FmSTMvRecv) then
    FmSTMvRecv := TFmSTMvRecv.Create(Application);
  FmSTMvRecv.Show;
end;

procedure TSFMain.HDSTK02_2_3Click(Sender: TObject);
begin
  if not Assigned(FmSTIn15) then
    FmSTIn15 := TFmSTIn15.Create(Application);
  FmSTIn15.Show;
end;

procedure TSFMain.HDSTK02_B_1Click(Sender: TObject);
begin
  if not Assigned(FmSTIn08) then
    FmSTIn08 := TFmSTIn08.Create(Application);
  FmSTIn08.Show;
end;

procedure TSFMain.HDSTK02_B_2Click(Sender: TObject);
begin
  if not Assigned(FmSTIn09) then
    FmSTIn09 := TFmSTIn09.Create(Application);
  FmSTIn09.Show;
end;

procedure TSFMain.HDSTK02_B_3Click(Sender: TObject);
begin
  if Assigned(FmSTIn10) then
    sfmain.RaiseException('Form open existing..');

  if not Assigned(FExpStock) then
    FExpStock := TFExpStock.Create(Application);
  FExpStock.Show;
end;

procedure TSFMain.HDSTK02_B_4Click(Sender: TObject);
begin
  if Assigned(FExpStock) then
    sfmain.RaiseException('Form open existing..');

  if not Assigned(FmSTIn10) then
    FmSTIn10 := TFmSTIn10.Create(Application);
  FmSTIn10.Show;
end;

procedure TSFMain.HDSTK02_C_6Click(Sender: TObject);
begin
  if not Assigned(Fenqpkinv) then
    Fenqpkinv := TFenqpkinv.Create(Application);
  Fenqpkinv.Show;
end;

procedure TSFMain.HDSTK02_C_1Click(Sender: TObject);
begin
  if not Assigned(FmEnqpart) then
    FmEnqpart := TFmEnqpart.Create(Application);
  FmEnqpart.Show;
end;

procedure TSFMain.HDSTK02_C_2Click(Sender: TObject);
begin
  if not Assigned(FmEnqpart1) then
    FmEnqpart1 := TFmEnqpart1.Create(Application);
  FmEnqpart1.Show;
end;

procedure TSFMain.HDSTK02_C_3Click(Sender: TObject);
begin
  if not Assigned(FmEnqBack) then
    FmEnqBack := TFmEnqBack.Create(Application);
  FmEnqBack.show;
end;

procedure TSFMain.HDSTK02_C_4Click(Sender: TObject);
begin
  if not Assigned(FmEnqMove) then
    FmEnqMove := TFmEnqMove.Create(Application);
  FmEnqMove.show;
end;

procedure TSFMain.IC08_5Click(Sender: TObject);
begin
  if not Assigned(SvFn_50) then
    SvFn_50 := TSvFn_50.Create(Application);
  SvFn_50.show;
end;

procedure TSFMain.HDREP02_3_8Click(Sender: TObject);
begin
  if not Assigned(FmSTRp50) then
    FmSTRp50 := TFmSTRp50.Create(Application);
  FmSTRp50.show;
end;

procedure TSFMain.HDREP02_3_9Click(Sender: TObject);
begin
  if not Assigned(FmSTRpa80) then
    FmSTRpa80 := TFmSTRpa80.Create(Application);
  FmSTRpa80.show;
end;

procedure TSFMain.HDREP02_3_AClick(Sender: TObject);
begin
  if not Assigned(FmSTRp60) then
    FmSTRp60 := TFmSTRp60.Create(Application);
  FmSTRp60.show;
end;

procedure TSFMain.HDREP02_3_BClick(Sender: TObject);
begin
  if not Assigned(FmSTRp70) then
    FmSTRp70 := TFmSTRp70.Create(Application);
  FmSTRp70.show;
end;

procedure TSFMain.HDREP02_3_CClick(Sender: TObject);
begin
  if not Assigned(FmSTRpA40) then
    FmSTRpA40 := TFmSTRpA40.Create(Application);
  FmSTRpA40.show;
end;

procedure TSFMain.HDREP02_3_DClick(Sender: TObject);
begin
  if not Assigned(FmRpA50) then
    FmRpA50 := TFmRpA50.Create(Application);
  FmRpA50.show;
end;

procedure TSFMain.HDREP02_3_EClick(Sender: TObject);
begin
  if not Assigned(FmRpA70) then
    FmRpA70 := TFmRpA70.Create(Application);
  FmRpA70.show;
end;

procedure TSFMain.HDREP02_3_GClick(Sender: TObject);
begin
  if not Assigned(StRp_C20) then
    StRp_C20 := TStRp_C20.Create(Application);
  StRp_C20.show;
end;

procedure TSFMain.HDREP02_3_HClick(Sender: TObject);
begin
  if not Assigned(FmSTRpA10) then
    FmSTRpA10 := TFmSTRpA10.Create(Application);
  FmSTRpA10.show;
end;

procedure TSFMain.HDREP02_3_IClick(Sender: TObject);
begin
  if not Assigned(StRp_C50) then
    StRp_C50 := TStRp_C50.Create(Application);
  StRp_C50.show;
end;

procedure TSFMain.HDREP02_3_JClick(Sender: TObject);
begin
  if not Assigned(FmSTRpB40) then
    FmSTRpB40 := TFmSTRpB40.Create(Application);
  FmSTRpB40.show;
end;

procedure TSFMain.HDHLP02_4Click(Sender: TObject);
begin
  AdvSmoothMessageDialog6.HTMLText.Text := '��س���ش��ҹ�������͹����¡��';
  case SFMain.AdvSmoothMessageDialog6.ExecuteDialog of
    mrOk:
      begin
        if not Assigned(FEndofYea) then
          FEndofYea := TFEndofYea.Create(Application);
        FEndofYea.Show;
      end;
  end;
end;

procedure TSFMain.HDHLP02_3Click(Sender: TObject);
begin
  if not Assigned(FEndofmon) then
    FEndofmon := TFEndofmon.Create(Application);
  FEndofmon.show;
end;

procedure TSFMain.HDHLP02_2Click(Sender: TObject);
begin
  AdvSmoothMessageDialog6.HTMLText.Text := '��س���ش��ҹ�������͹����¡��';
  case SFMain.AdvSmoothMessageDialog6.ExecuteDialog of
    mrOk:
      begin
        if not Assigned(Fupstock) then
          Fupstock := TFupstock.Create(Application);
        Fupstock.Show;
      end;
  end;
end;

procedure TSFMain.HDHLP02_5Click(Sender: TObject);
begin
  if not Assigned(Fupoveryear) then
    Fupoveryear := TFupoveryear.Create(Application);
  Fupoveryear.Show;
end;

procedure TSFMain.HDHLP02_6Click(Sender: TObject);
begin
  if not Assigned(FDlgcopy) then
    FDlgcopy := TFDlgcopy.Create(Application);
  FDlgcopy.Show;
end;

procedure TSFMain.HDSTK02_B_5Click(Sender: TObject);
begin
  if not Assigned(FSetcost) then
    FSetcost := TFSetcost.Create(Application);
  FSetcost.Show;
end;

procedure TSFMain.HDHLP02_1Click(Sender: TObject);
begin
  if not Assigned(FAdjprc) then
    FAdjprc := TFAdjprc.Create(Application);
  FAdjprc.Show;
end;

procedure TSFMain.SV01Click(Sender: TObject);
begin
  if not Assigned(SvSt_10) then
    SvSt_10 := TSvSt_10.Create(Application);
  SvSt_10.Show;
end;

procedure TSFMain.HDSV1_01Click(Sender: TObject);
begin
  if not Assigned(SvIn_10) then
    SvIn_10 := TSvIn_10.Create(Application);
  SvIn_10.Show;
end;

procedure TSFMain.HDSV3_06Click(Sender: TObject);
begin
  if not Assigned(frHistorySV) then
    frHistorySV := TfrHistorySV.Create(Application);
  frHistorySV.Show;
end;

procedure TSFMain.HDSV1_02Click(Sender: TObject);
begin
  if not assigned(SvIn_20) then
    SvIn_20 := TSvIn_20.Create(Application);
  SvIn_20.Show;
end;

procedure TSFMain.HDSV3_07Click(Sender: TObject);
begin
  if not Assigned(Fhlpbrinv) then
    Fhlpbrinv := TFhlpbrinv.Create(Application);
  Fhlpbrinv.show;
end;

procedure TSFMain.HDSV1_03Click(Sender: TObject);
begin
  if not Assigned(FSpIn01) then
    FSpIn01 := TFSpIn01.Create(Application);
  FSpIn01.Show;
end;

procedure TSFMain.HDSV1_04Click(Sender: TObject);
begin
  if not Assigned(SvIn_30) then
    SvIn_30 := TSvIn_30.Create(Application);
  SvIn_30.Show;
end;

procedure TSFMain.HDSV1_05Click(Sender: TObject);
begin
  if not Assigned(FSvnewProb) then
    FSvnewProb := TFSvnewProb.Create(Application);
  FSvnewProb.Show;
end;

procedure TSFMain.HDSET01_7Click(Sender: TObject);
begin
  if not Assigned(FCamp) then
    FCamp := TFCamp.Create(Application);
  FCamp.Show;
end;

procedure TSFMain.HDSV2_08Click(Sender: TObject);
begin
  if not Assigned(FCredtpay2) then
    FCredtpay2 := TFCredtpay2.Create(application);
  FCredtpay2.Show;
end;

procedure TSFMain.HDSV2_10Click(Sender: TObject);
begin
  if not Assigned(Fcrdnote1) then
    Fcrdnote1 := TFcrdnote1.Create(Application);
  Fcrdnote1.Show;
end;

procedure TSFMain.HDSV2_09Click(Sender: TObject);
begin
  {if not Assigned(FCashpay2) then
  FCashpay2 := TFCashpay2.Create(Application);
  FCashpay2.Show;}
  if not Assigned(FmStin05) then
    FmStin05 := TFmStin05.Create(Application);
  FMStin05.Show;
end;

procedure TSFMain.HDSV12_1Click(Sender: TObject);
begin
  if not Assigned(FrInvoiceAdd) then
    FrInvoiceAdd := TFrInvoiceAdd.Create(Application);
  FrInvoiceAdd.Show;
end;

procedure TSFMain.HDSV12_2Click(Sender: TObject);
begin
  if not Assigned(Fpayoth) then
    Fpayoth := TFpayoth.Create(Application);
  Fpayoth.Show;
end;

procedure TSFMain.SV10_8Click(Sender: TObject);
begin
  Application.CreateForm(TSvFn_50, SvFn_50);
  SvFn_50.ShowModal;
end;

procedure TSFMain.SV10_4Click(Sender: TObject);
begin
  Application.CreateForm(TFmSvRpA70, FmSvRpA70);
  FmSvRpA70.ShowModal;
end;

procedure TSFMain.SV10_72Click(Sender: TObject);
begin
  Application.CreateForm(TSvRp_60, SvRp_60);
  SvRp_60.ShowModal;
end;

procedure TSFMain.SV10_73Click(Sender: TObject);
begin
  Application.CreateForm(TSvRp_20, SvRp_20);
  SvRp_20.ShowModal;
end;

procedure TSFMain.SV10_74Click(Sender: TObject);
begin
  Application.CreateForm(TSvRp_30, SvRp_30);
  SvRp_30.ShowModal;
end;

procedure TSFMain.SV10_75Click(Sender: TObject);
begin
  Application.CreateForm(TFmSvRpc10, FmSvRpc10);
  FmSvRpc10.ShowModal;
end;

procedure TSFMain.HDSET02_4Click(Sender: TObject);
begin
  if not Assigned(SvSt_40) then
    SvSt_40 := TSvSt_40.Create(Application);
  SvSt_40.Show;
end;

procedure TSFMain.HDSV11_3Click(Sender: TObject);
begin
  if not Assigned(Arinv_4) then
    Arinv_4 := TArinv_4.Create(Application);
  Arinv_4.Show;
end;

procedure TSFMain.HDSET06_3Click(Sender: TObject);
begin
  if not Assigned(FmSvSt90) then
    FmSvSt90 := TFmSvSt90.Create(Application);
  FmSvSt90.Show;
end;

procedure TSFMain.FILE07_2Click(Sender: TObject);
begin
  if not Assigned(FmSvSt91) then
    FmSvSt91 := TFmSvSt91.Create(Application);
  FmSvSt91.Show;
end;

procedure TSFMain.FILE07_4Click(Sender: TObject);
begin
  if not Assigned(FmSvSt92) then
    FmSvSt92 := TFmSvSt92.Create(Application);
  FmSvSt92.Show;
end;

procedure TSFMain.FILE07_3Click(Sender: TObject);
begin
  if not Assigned(FmSvSt93) then
    FmSvSt93 := TFmSvSt93.Create(Application);
  FmSvSt93.Show;
end;

procedure TSFMain.FILE06_4Click(Sender: TObject);
begin
  if not Assigned(SvSt_20) then
    SvSt_20 := TSvSt_20.Create(Application);
  SvSt_20.Show;
end;

procedure TSFMain.HDSTK02_9_1Click(Sender: TObject);
begin
  if Assigned(FmSTIn02_1) then
    sfmain.RaiseException('Form open existing..');

  if not Assigned(FmSTIn11) then
    FmSTIn11 := TFmSTIn11.Create(Application);
  FmSTIn11.Show;
end;

procedure TSFMain.HDSTK02_9_2Click(Sender: TObject);
begin
  if not Assigned(FmSTIn12) then
    FmSTIn12 := TFmSTIn12.Create(application);
  FmSTIn12.Show;
end;

procedure TSFMain.PO04Click(Sender: TObject);
begin
  Application.CreateForm(TfrConfigCalc, frConfigCalc);
  frConfigCalc.ShowModal;
end;

procedure TSFMain.HDSET01_9Click(Sender: TObject);
begin
  if not Assigned(FChkmenu1) then
    FChkmenu1 := TFChkmenu1.Create(Application);
  FChkmenu1.Show;
end;

procedure TSFMain.FILE02_5Click(Sender: TObject);
begin
  Application.CreateForm(TFChgpartno, FChgpartno);
  FChgpartno.Showmodal;
end;

procedure TSFMain.CRM03_83Click(Sender: TObject);
begin
  Application.CreateForm(TUStickerMDL, UStickerMDL);
  UStickerMDL.ShowModal;
end;

procedure TSFMain.SEC04Click(Sender: TObject);
begin
  Application.CreateForm(TfrChqPasswd, frChqPasswd);
  frChqPasswd.ShowModal;
end;

procedure TSFMain.IC06_6Click(Sender: TObject);
begin
  Application.createForm(TFupfifo, Fupfifo);
  Fupfifo.ShowModal;
end;

procedure TSFMain.IC08_23Click(Sender: TObject);
begin
  Application.CreateForm(TFmstrpd10, Fmstrpd10);
  Fmstrpd10.ShowModal;
end;

procedure TSFMain.HDSET02_6Click(Sender: TObject);
begin
  if not Assigned(FColor) then
    FColor := TFColor.Create(Application);
  FColor.Show;
end;

procedure TSFMain.ToolButton7Click(Sender: TObject);
begin
  Close;
end;

procedure TSFMain.ToolButton8Click(Sender: TObject);
begin
  if not Assigned(FormCustmst) then
    FormCustmst := TFormCustmst.Create(Application);
  FormCustmst.Show;
end;

procedure TSFMain.HDSET02_2Click(Sender: TObject);
begin
  if not Assigned(SvSt_70) then
    SvSt_70 := TSvSt_70.Create(Application);
  SvSt_70.Show;
end;

procedure TSFMain.PO03_6Click(Sender: TObject);
begin
  Application.CreateForm(TFRpPo40, FRpPo40);
  FRpPo40.ShowModal;
end;

procedure TSFMain.HDSET04_1Click(Sender: TObject);
begin
  if not Assigned(FPayfor) then
    FPayfor := TFPayfor.Create(Application);
  FPayfor.Show;
end;

procedure TSFMain.HDSET04_2Click(Sender: TObject);
begin
  if not Assigned(FPaytyp) then
    FPaytyp := TFPaytyp.Create(Application);
  FPaytyp.Show;
end;

procedure TSFMain.HDREP02_3_MClick(Sender: TObject);
begin
  if not Assigned(FmSTRpA20) then
    FmSTRpA20 := TFmSTRpA20.Create(Application);
  FmSTRpA20.show;
end;

procedure TSFMain.IC08_44Click(Sender: TObject);
begin
  Application.CreateForm(TFSumcostSale, FSumcostSale);
  FSumcostSale.ShowModal;
end;

procedure TSFMain.CRM00Click(Sender: TObject);
begin
  if not Assigned(frNoteService) then
    frNoteService := TfrNoteService.Create(Application);
  frNoteService.Show;
end;

procedure TSFMain.CRM03_4Click(Sender: TObject);
begin
  Application.CreateForm(TfrDelayService, frDelayService);
  frDelayService.ShowModal;
end;

procedure TSFMain.CRM03_5Click(Sender: TObject);
begin
  Application.CreateForm(TfrFrequencySv, frFrequencySv);
  frFrequencySv.ShowModal;
end;

procedure TSFMain.HDSV11_1Click(Sender: TObject);
begin
  if not Assigned(FrInvClaim) then
    FrInvClaim := TFrInvClaim.Create(Application);
  FrInvClaim.Show;
end;

procedure TSFMain.N32Click(Sender: TObject);
begin
  if not Assigned(FrTaxClaim) then
    FrTaxClaim := TFrTaxClaim.Create(Application);
  FrTaxClaim.Show;
end;

procedure TSFMain.HDCRM02Click(Sender: TObject);
begin
   {if Not Assigned(frCalcDaySv) then
       frCalcDaySv := TfrCalcDaySv.Create(Application);
       frCalcDaySv.Show; }

end;

procedure TSFMain.HDCRM01Click(Sender: TObject);
begin
  {if Not Assigned(frNoteService) then
  frNoteService := TfrNoteService.Create(Application);
  frNoteService.Show;}
end;

procedure TSFMain.HDREP02_3_LClick(Sender: TObject);
begin
  if not Assigned(FrSumProfitPart) then
    FrSumProfitPart := TFrSumProfitPart.Create(Application);
  FrSumProfitPart.Show;
end;

procedure TSFMain.HDSTK02_C_5Click(Sender: TObject);
begin
  if not Assigned(FrPriceList) then
    FrPriceList := TFrPriceList.Create(Application);
  FrPriceList.Show;
end;

procedure TSFMain.HDSET01_6Click(Sender: TObject);
begin
  if not Assigned(FSetEngineer) then
    FSetEngineer := TFSetEngineer.Create(Application);
  FSetEngineer.Show;
end;

procedure TSFMain.HDSET03_4Click(Sender: TObject);
begin
  if not Assigned(FrCustVip) then
    FrCustVip := TFrCustVip.Create(Application);
  FrCustVip.Show;
end;

procedure TSFMain.FILE06_6Click(Sender: TObject);
begin
  if not Assigned(frGrpCKList) then
    frGrpCKList := TfrGrpCKList.Create(Application);
  frGrpCKList.Show;
end;

procedure TSFMain.PO06_1Click(Sender: TObject);
begin
  Application.CreateForm(TfrPartNoStock, frPartNoStock);
  frPartNoStock.ShowModal;
end;

procedure TSFMain.HDREP02_3_FClick(Sender: TObject);
begin
  if not Assigned(StRp_C10) then
    StRp_C10 := TStRp_C10.Create(Application);
  StRp_C10.Show;
end;

procedure TSFMain.AdvGlowButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmClose, FrmClose);
  FrmClose.ShowModal;
end;

procedure TSFMain.AdvMenuMenuItems4Click(Sender: TObject);
begin
  AdvGlowButton1Click(Sender);
end;

procedure TSFMain.HDSET03_6Click(Sender: TObject);
begin
  if not Assigned(SvSt_10) then
    SvSt_10 := TSvSt_10.Create(Application);
  SvSt_10.Show;
end;

procedure TSFMain.HDSET01_1Click(Sender: TObject);
begin
  if not Assigned(SetCmpForm2) then
    SetCmpForm2 := TSetCmpForm2.Create(Application);
  SetCmpForm2.show;
end;

procedure TSFMain.HDHLP02_7Click(Sender: TObject);
begin
  if not Assigned(FChggroup) then
    FChggroup := TFChggroup.Create(Application);
  FChggroup.show;
end;

procedure TSFMain.HDHLP02_8Click(Sender: TObject);
begin
  if not Assigned(Fchgmdl) then
    Fchgmdl := TFchgmdl.Create(Application);
  Fchgmdl.show;
end;

procedure TSFMain.HDHLP02_9Click(Sender: TObject);
begin
  if not Assigned(FChgpartno) then
    FChgpartno := TFChgpartno.Create(Application);
  FChgpartno.show;
end;

procedure TSFMain.HDHLP02_AClick(Sender: TObject);
begin
  if not Assigned(FChgstrno) then
    FChgstrno := TFChgstrno.Create(Application);
  FChgstrno.Show;
end;

procedure TSFMain.HDHLP02_BClick(Sender: TObject);
begin
  if not Assigned(Changowner) then
    Changowner := TChangowner.Create(Application);
  Changowner.Show;
end;

procedure TSFMain.HDSP04Click(Sender: TObject);
begin
  if not Assigned(Apinv_4) then
    Apinv_4 := TApinv_4.Create(Application);
  Apinv_4.Show;
end;

procedure TSFMain.HDSTK02_AClick(Sender: TObject);
begin
  if not Assigned(FLostSale) then
    FLostSale := TFLostSale.Create(Application);
  FLostSale.Show;
end;

procedure TSFMain.HDREP02_3_KClick(Sender: TObject);
begin
  if not Assigned(FSumcostSale) then
    FSumcostSale := TFSumcostSale.Create(Application);
  FSumcostSale.Show;
end;

procedure TSFMain.HDREP02_3_NClick(Sender: TObject);
begin
  if not Assigned(FmRpAp_04) then
    FmRpAp_04 := TFmRpAp_04.Create(Application);
  FmRpAp_04.Show;
end;

procedure TSFMain.REP05_01Click(Sender: TObject);
begin
  Application.CreateForm(TFRepTaxDaily, FRepTaxDaily);
  FRepTaxDaily.ShowModal;
end;

procedure TSFMain.HDSV11_2Click(Sender: TObject);
begin
  if not Assigned(FrTaxClaim) then
    FrTaxClaim := TFrTaxClaim.Create(Application);
  FrTaxClaim.Show;
end;

procedure TSFMain.KeyboardLayout1Change(Sender: TObject);
begin
//  SetKeyboardLanguage;
end;

procedure TSFMain.MenuItem146Click(Sender: TObject);
begin
//  KeyboardLayout1.AbbreviatedName := 'ENU';
end;

procedure TSFMain.MenuItem147Click(Sender: TObject);
begin
//  KeyboardLayout1.AbbreviatedName := 'THA';
end;

procedure TSFMain.RspLangClick(Sender: TObject);
begin
  LangMenu.PopupAtCursor;
end;

procedure TSFMain.RspLang1Click(Sender: TObject);
begin
  LangMenu.PopupAtCursor;
end;

procedure TSFMain.AdvToolBarPager1CloseButtonClick(Sender: TObject);
begin
  AdvGlowButton1Click(Sender);
end;

procedure TSFMain.AdvGlowButton2Click(Sender: TObject);
var
  Dir: string;
begin
  Dir := ExtractFilePath(Application.ExeName);
  if not FileExists(Dir + 'Filemodi.exe') then
    SFMain.RaiseException('File Filemodi.exe not found..!')
  else
  begin
    SFMain.AdvSmoothMessageDialog2.Caption := 'Update ISCPlus.exe';
    SFMain.AdvSmoothMessageDialog2.HTMLText.Text := '��Ǩ�ͺ������������Ѿഷ��������ͧ���س���ѧ��ҹ<br/>' +
      '���͡����ҹ���������������ǡѹ�Ѻ����ͧ�Կ�����<br/>' +
      '��س��Ѿഷ�����..';
    case SFMain.AdvSmoothMessageDialog2.ExecuteDialog of
      mrOk:
        begin
          Application.Terminate;
          Command := 'Filemodi.exe' + #0;
          if WinExec(@Command[1], SW_SHOWNORMAL) < 32 then
            SFMain.RaiseException('Error # �������ö�Ѿഷ�����..!');
        end;
    end;
  end;
end;

procedure TSFMain.HDSET01_2Click(Sender: TObject);
begin
  if not Assigned(Fsetcompa) then
    Fsetcompa := TFsetcompa.Create(Application);
  Fsetcompa.show;
end;

procedure TSFMain.HDSET02_5Click(Sender: TObject);
begin
  if not Assigned(FSetBaab) then
    FSetBaab := TFSetBaab.Create(Application);
  FSetBaab.show;
end;

procedure TSFMain.HDSET02_7Click(Sender: TObject);
begin
  if not Assigned(SoptForm1) then
    SoptForm1 := TSoptForm1.Create(Application);
  SoptForm1.show;
end;

procedure TSFMain.HDSET03_3Click(Sender: TObject);
begin
  if not Assigned(FSetReson) then
    FSetReson := TFSetReson.Create(Application);
  FSetReson.show;
end;

procedure TSFMain.HDSTK01_1Click(Sender: TObject);
begin
  if not Assigned(Frecv) then
    Frecv := TFrecv.Create(Application);
  Frecv.Show;
end;

procedure TSFMain.HDSTK01_2Click(Sender: TObject);
begin
  if not Assigned(Fmvcar) then
    Fmvcar := TFmvcar.Create(Application);
  Fmvcar.Show;
end;

procedure TSFMain.HDSTK01_3Click(Sender: TObject);
begin
  if not Assigned(Frvopt) then
    Frvopt := TFrvopt.Create(Application);
  Frvopt.Show;
end;

procedure TSFMain.HDSTK01_4Click(Sender: TObject);
begin
  if not Assigned(Fmvopt) then
    Fmvopt := TFmvopt.Create(Application);
  Fmvopt.Show;
end;

procedure TSFMain.HDSTK01_5Click(Sender: TObject);
begin
  if not Assigned(Quirystkform2) then
    Quirystkform2 := TQuirystkform2.Create(Application);
  Quirystkform2.show;
end;

procedure TSFMain.HDSTK01_6Click(Sender: TObject);
begin
  if not Assigned(quiryoptform1) then
    quiryoptform1 := Tquiryoptform1.Create(Application);
  quiryoptform1.show;
end;

procedure TSFMain.HDSL01_1Click(Sender: TObject);
begin
  if not Assigned(FArresv) then
    FArresv := TFArresv.Create(Application);
  FArresv.show;
end;

procedure TSFMain.HDSL01_2Click(Sender: TObject);
begin
  if not Assigned(FCshsal) then
    FCshsal := TFCshsal.Create(Application);
  FCshsal.show;
end;

procedure TSFMain.HDSL01_3Click(Sender: TObject);
begin
  if not Assigned(FfinSal1) then
    FfinSal1 := TFfinSal1.Create(Application);
  FfinSal1.show;
end;

procedure TSFMain.HDSL01_4Click(Sender: TObject);
begin
  if not Assigned(FAgnSal1) then
    FAgnSal1 := TFAgnSal1.Create(Application);
  FAgnSal1.show;
end;

procedure TSFMain.HDSL01_5Click(Sender: TObject);
begin
  if not Assigned(FOptSal1) then
    FOptSal1 := TFOptSal1.Create(Application);
  FOptSal1.show;
end;

procedure TSFMain.HDSL01_6Click(Sender: TObject);
begin
  if not Assigned(FClosar10) then
    FClosar10 := TFClosar10.Create(Application);
  FClosar10.show;
end;

procedure TSFMain.HDFIN01_1Click(Sender: TObject);
begin
  if not Assigned(FincForm1) then
    FincForm1 := TFincForm1.Create(Application);
  FincForm1.Show;
end;

procedure TSFMain.HDFIN01_2Click(Sender: TObject);
begin
  if not Assigned(CRDFincForm1) then
    CRDFincForm1 := TCRDFincForm1.Create(Application);
  CRDFincForm1.Show;
end;

procedure TSFMain.HDTAX01Click(Sender: TObject);
begin
  if not Assigned(frCrtTaxBuy) then
    frCrtTaxBuy := TfrCrtTaxBuy.Create(Application);
  frCrtTaxBuy.Show;
end;

procedure TSFMain.HDTAX02_1Click(Sender: TObject);
begin
  if not AsSigned(FCredBuy1) then
    FCredBuy1 := TFCredbuy1.Create(Application);
  FCredBuy1.Show;
end;

procedure TSFMain.HDTAX02_2Click(Sender: TObject);
begin
  if not AsSigned(FCredBuy2) then
    FCredBuy2 := TFCredBuy2.Create(Application);
  FCredBuy2.Show;
end;

procedure TSFMain.HDTAX02_3Click(Sender: TObject);
begin
  if not AsSigned(FCredSal1) then
    FCredSal1 := TFCredSal1.Create(Application);
  FCredSal1.Show;
end;

procedure TSFMain.HDTAX02_4Click(Sender: TObject);
begin
  if not AsSigned(FCredSalAr_invoi) then
    FCredSalAr_invoi := TFCredSalAr_invoi.Create(Application);
  FCredSalAr_invoi.Show;
end;

procedure TSFMain.HDTAX02_5Click(Sender: TObject);
begin
  if not AsSigned(FCredSal3) then
    FCredSal3 := TFCredSal3.Create(Application);
  FCredSal3.Show;
end;

procedure TSFMain.HDTAX02_6Click(Sender: TObject);
begin
  if not AsSigned(fCrdResv) then
    fCrdResv := TfCrdResv.Create(Application);
  fCrdResv.Show;
end;

procedure TSFMain.HDREP01_1_4Click(Sender: TObject);
begin
  if not Assigned(QRFormopt20) then
    QRFormopt20 := TQRFormopt20.Create(Application);
  QRFormopt20.Show;
end;

procedure TSFMain.HDREP01_1_AClick(Sender: TObject);
begin
  if not Assigned(RepStkReg) then
    RepStkReg := TRepStkReg.Create(Application);
  RepStkReg.Show;
end;

procedure TSFMain.HDREP01_1_BClick(Sender: TObject);
begin
  if not Assigned(RepDeposit) then
    RepDeposit := TRepDeposit.Create(Application);
  RepDeposit.Show;
end;

procedure TSFMain.HDREP01_4_5Click(Sender: TObject);
begin
  if not Assigned(FReparOpt) then
    FReparOpt := TFReparOpt.Create(Application);
  FReparOpt.Show;
end;

procedure TSFMain.HDHLP01_1Click(Sender: TObject);
begin
  if not AsSigned(FrAddOptCs) then
    FrAddOptCs := TFrAddOptCs.Create(Application);
  FrAddOptCs.Show;
end;

procedure TSFMain.HDHLP01_2Click(Sender: TObject);
begin
  if not AsSigned(frAddOptFin) then
    frAddOptFin := TfrAddOptFin.Create(Application);
  frAddOptFin.Show;
end;

procedure TSFMain.HDHLP01_3Click(Sender: TObject);
begin
  if not AsSigned(frAddGarFin) then
    frAddGarFin := TfrAddGarFin.Create(Application);
  frAddGarFin.Show;
end;

procedure TSFMain.HDHLP01_4Click(Sender: TObject);
begin
  if SFMain.XLevel <> '1' then
    SFmain.RaiseException('Access by Administrator or Level1 only...');

  if not Assigned(FEditTaxsal) then
    FEditTaxsal := TFEditTaxsal.Create(Application);
  FEditTaxsal.Show;
end;

procedure TSFMain.HDSET03_2Click(Sender: TObject);
begin
  if not Assigned(FSetGrdCust) then
    FSetGrdCust := TFSetGrdCust.Create(Application);
  FSetGrdCust.show;
end;

procedure TSFMain.HDSET05_1Click(Sender: TObject);
begin
  if not Assigned(frApmaster) then
    frApmaster := TfrApmaster.Create(Application);
  frApmaster.Show;
end;

procedure TSFMain.HDSET05_2Click(Sender: TObject);
begin
  if not Assigned(FSetFinmst) then
    FSetFinmst := TFSetFinmst.Create(Application);
  FSetFinmst.show;
end;

procedure TSFMain.HDSET04_3Click(Sender: TObject);
begin
  if not Assigned(frBankbook) then
    frBankbook := TfrBankbook.Create(Application);
  frBankbook.Show;
end;

procedure TSFMain.HDSTK03_1Click(Sender: TObject);
begin
  if not Assigned(frStkRegRed) then
    frStkRegRed := TfrStkRegRed.Create(Application);
  frStkRegRed.Show;
end;

procedure TSFMain.HDSTK03_2Click(Sender: TObject);
begin
  if not Assigned(frDepReg) then
    frDepReg := TfrDepReg.Create(Application);
  frDepReg.Show;
end;

procedure TSFMain.HDSTK03_3Click(Sender: TObject);
begin
  if not Assigned(frDisDep) then
    frDisDep := TfrDisDep.Create(Application);
  frDisDep.Show;
end;

procedure TSFMain.HDSET01_BClick(Sender: TObject);
begin
  if not Assigned(frChgPwd) then
    frChgPwd := TfrChgPwd.Create(Application);
  frChgPwd.Show;
end;

procedure TSFMain.ImageItem15ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_2Click(Sender);
end;

procedure TSFMain.AdvNavBar1Change(Sender: TObject);
begin
  XNavBar := IntToStr(AdvNavBar1.ActiveTabIndex);

  TSVConfig := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'SVConfig.ini');
  TSVConfig.WriteString('Setting', 'NavBar', XNavBar);
end;

procedure TSFMain.HDSTK01_7Click(Sender: TObject);
begin
  if not Assigned(FPurChase) then
    FPurChase := TFPurChase.Create(Application);
  FPurChase.Show;
end;

procedure TSFMain.HDHLP01_5Click(Sender: TObject);
begin
  if not Assigned(frMoDiStrno) then
    frMoDiStrno := TfrMoDiStrno.create(application);
  frMoDiStrno.Show;
end;

procedure TSFMain.HDSL01_7Click(Sender: TObject);
begin
  if not Assigned(FArOth10) then
    FArOth10 := TFArOth10.Create(Application);
  FArOth10.show;
end;

procedure TSFMain.HDTAX03Click(Sender: TObject);
begin
  if not Assigned(frTaxSale) then
    frTaxSale := TfrTaxSale.Create(Application);
  frTaxSale.Show;
end;

procedure TSFMain.ImageItem14ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_1Click(Sender);
end;

procedure TSFMain.ImageItem16ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_2_1Click(Sender);
end;

procedure TSFMain.ImageItem17ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_2_2Click(Sender);
end;

procedure TSFMain.ImageItem18ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK03_1Click(Sender);
end;

procedure TSFMain.N_HDSET03_6_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET03_5Click(Sender);
end;

procedure TSFMain.N_HDSL01_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_1Click(Sender);
end;

procedure TSFMain.N_HDSL01_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_2Click(Sender);
end;

procedure TSFMain.N_HDSL01_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_3Click(Sender);
end;

procedure TSFMain.N_HDFIN01_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDFIN01_1Click(Sender);
end;

procedure TSFMain.N_HDSET03_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET03_6Click(Sender);
end;

procedure TSFMain.N_HDSTK02_D_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_D_1Click(Sender);
end;

procedure TSFMain.N_HDSV1_02ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV1_02Click(Sender);
end;

procedure TSFMain.N_HDSV1_04ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV1_04Click(Sender);
end;

procedure TSFMain.HDSL01_8Click(Sender: TObject);
begin
  if not Assigned(FRpDistibut) then
    FRpDistibut := TFRpDistibut.Create(Application);
  FRpDistibut.Show;
end;

procedure TSFMain.HDSP02Click(Sender: TObject);
begin
  if Assigned(FmSTIn11) then
    sfmain.RaiseException('Form open existing..');

  if Assigned(FmSTin02_1) then
    sfmain.RaiseException('Form open existing..');

  if not Assigned(FmStin02_1Pos) then
    FmStin02_1Pos := TFmStin02_1Pos.Create(Application);
  FmStin02_1Pos.Show;
end;

procedure TSFMain.HDFIN01_3Click(Sender: TObject);
begin
  if not Assigned(FmChqpay1) then
    FmChqpay1 := TFmChqpay1.Create(Application);
  FmChqpay1.Show;
end;

procedure TSFMain.HDREP04_5Click(Sender: TObject);
begin
  if not Assigned(frPrnTxsl) then
    frPrnTxsl := TfrPrnTxsl.Create(Application);
  frPrnTxsl.Show;
end;

procedure TSFMain.HDSP01Click(Sender: TObject);
begin
  if not Assigned(FmSTIn07) then
    FmSTIn07 := TFmSTIn07.Create(Application);
  FmSTIn07.Show;
end;

procedure TSFMain.HDSP05Click(Sender: TObject);
begin
  if not Assigned(FcrdPost) then
    FcrdPost := TFcrdPost.Create(Application);
  FcrdPost.Show;
end;

procedure TSFMain.HDSP06Click(Sender: TObject);
begin
  if not Assigned(FmStin05) then
    FmStin05 := TFmStin05.Create(Application);
  FMStin05.Show;
end;

procedure TSFMain.HDREP02_1_4Click(Sender: TObject);
begin
  if not Assigned(FRpPartProf) then
    FRpPartProf := TFRpPartProf.Create(Application);
  FRpPartProf.show;
end;

procedure TSFMain.HDSTK02_C_7Click(Sender: TObject);
begin
  if not Assigned(FRecvHistory) then
    FRecvHistory := TFRecvHistory.Create(Application);
  FRecvHistory.Show;
end;

procedure TSFMain.HDREP01_2_7Click(Sender: TObject);
begin
  if not Assigned(FRepSalePDI) then
    FRepSalePDI := TFRepSalePDI.Create(Application);
  FRepSalePDI.Show;
end;

procedure TSFMain.HDREP05_1Click(Sender: TObject);
begin
  if not Assigned(SvRechk) then
    SvRechk := TSvRechk.Create(Application);
  SvRechk.Show;
end;

procedure TSFMain.HDSP07Click(Sender: TObject);
begin
  if not Assigned(FQuerySale) then
    FQuerySale := TFQuerySale.Create(Application);
  FQuerySale.Show;
end;

procedure TSFMain.ImageItem7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  if Dm_sec.HI_DBMS.Connected = False then
    Dm_sec.HI_DBMS.Connected := True;
  with Query1 do
  begin
    Close;
    sql.clear;
    sql.add('SELECT * FROM SECRET WHERE USERID =:XUSER_ID ');
    PARAMS[0].ASSTRING := SFMain.Xuser_ID;
    open;
    if not (Query1.EOF and Query1.BOF) then
    begin
      Dm_sec.HI_DBMS.Connected := True;
      XLevel := Query1.Fieldbyname('LEVEL_1').Asstring;
      XLocat := Query1.Fieldbyname('LOCAT').Asstring;
      Xdepart := Query1.Fieldbyname('DEPRT').Asstring;
      XLevel := Query1.Fieldbyname('Level_1').Asstring;
      XOffCod := Query1.Fieldbyname('CUSCOD').Asstring;
      XSeecost := Query1.Fieldbyname('CHKCOST').Asstring;
      XSrch := Query1.Fieldbyname('SRHACTV').Asstring;
      XDesign := Query1.Fieldbyname('DESIGN').Asstring;
      XChgLoc := Query1.Fieldbyname('CHGLOC').Asstring;
      XChgDate := Query1.Fieldbyname('CHGDATE').Asstring;
      XChgGrd := Query1.Fieldbyname('CHGGRADE').Asstring;
      XReprint := Query1.Fieldbyname('REPRINT').Asstring;
      XEditprc := Query1.Fieldbyname('EDITPRIC').Asstring;
      XPrn := Query1.Fieldbyname('SHOWPRN').Asstring;
      XChqCost := Query1.fieldbyname('CHKCOST').AsString;
      Dm_Sec.QCondpay.Close;
      Dm_Sec.QCondpay.Open;
      showmessage('Application Connected..');
    end
    else
    begin
      SFMain.Close;
    end;
  end;
end;

procedure TSFMain.HDHLP02_CClick(Sender: TObject);
begin
  AdvSmoothMessageDialog6.HTMLText.Text := '��س���ش��ҹ�������͹����¡��';
  case SFMain.AdvSmoothMessageDialog6.ExecuteDialog of
    mrOk:
      begin
        if not Assigned(Fupstock) then
          Fupstock := TFupstock.Create(Application);
        Fupstock.Show;
      end;
  end;
end;

procedure TSFMain.HDSTK01_8Click(Sender: TObject);
begin
  if not Assigned(FQueryCar) then
    FQueryCar := TFQueryCar.Create(Application);
  FQueryCar.Show;
end;

procedure TSFMain.N_HDSET03_6_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET03_5Click(Sender);
end;

procedure TSFMain.N_HDSTK01_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_1Click(Sender);
end;

procedure TSFMain.N_HDSTK02_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_1Click(Sender);
end;

procedure TSFMain.AdvGlowButton6Click(Sender: TObject);
begin
  if not Assigned(frDataflow) then
    frDataflow := TfrDataflow.Create(Application);
  frDataflow.Show;
end;

procedure TSFMain.P_HDSET01_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_1Click(Sender);
end;

procedure TSFMain.P_HDSET01_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_2Click(Sender);
end;

procedure TSFMain.P_HDSET01_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_3Click(Sender);
end;

procedure TSFMain.P_HDSET01_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_4Click(Sender);
end;

procedure TSFMain.P_HDSET01_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_5Click(Sender);
end;

procedure TSFMain.P_HDSET01_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_6Click(Sender);
end;

procedure TSFMain.P_HDSET01_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_7Click(Sender);
end;

procedure TSFMain.P_HDSET01_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_8Click(Sender);
end;

procedure TSFMain.P_HDSET01_9ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_9Click(Sender);
end;

procedure TSFMain.P_HDSET01_AItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_AClick(Sender);
end;

procedure TSFMain.P_HDSET01_BItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_BClick(Sender);
end;

procedure TSFMain.P_HDSET02_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET02_1Click(Sender);
end;

procedure TSFMain.P_HDSET02_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET02_2Click(Sender);
end;

procedure TSFMain.P_HDSET02_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET02_3Click(Sender);
end;

procedure TSFMain.P_HDSET02_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET02_4Click(Sender);
end;

procedure TSFMain.P_HDSET02_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET02_5Click(Sender);
end;

procedure TSFMain.P_HDSET02_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET02_6Click(Sender);
end;

procedure TSFMain.P_HDSET02_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET02_7Click(Sender);
end;

procedure TSFMain.P_HDSET02_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET02_8Click(Sender);
end;

procedure TSFMain.P_HDSET02_9ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET02_9Click(Sender);
end;

procedure TSFMain.P_HDSET03_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET03_1Click(Sender);
end;

procedure TSFMain.P_HDSET03_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET03_2Click(Sender);
end;

procedure TSFMain.P_HDSET03_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET03_3Click(Sender);
end;

procedure TSFMain.P_HDSET03_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET03_4Click(Sender);
end;

procedure TSFMain.P_HDSET03_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET03_5Click(Sender);
end;

procedure TSFMain.P_HDSET03_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET03_6Click(Sender);
end;

procedure TSFMain.P_HDSET04_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET04_1Click(Sender);
end;

procedure TSFMain.P_HDSET04_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET04_2Click(Sender);
end;

procedure TSFMain.P_HDSET04_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET04_3Click(Sender);
end;

procedure TSFMain.P_HDSET05_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET05_1Click(Sender);
end;

procedure TSFMain.P_HDSET05_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET05_2Click(Sender);
end;

procedure TSFMain.P_HDSET06_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET06_1Click(Sender);
end;

procedure TSFMain.P_HDSET06_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET06_2Click(Sender);
end;

procedure TSFMain.P_HDSET06_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET06_3Click(Sender);
end;

procedure TSFMain.P_HDSTK01_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_7Click(Sender);
end;

procedure TSFMain.P_HDSTK01_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_1Click(Sender);
end;

procedure TSFMain.P_HDSTK01_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_2Click(Sender);
end;

procedure TSFMain.P_HDSTK01_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_3Click(Sender);
end;

procedure TSFMain.P_HDSTK01_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_4Click(Sender);
end;

procedure TSFMain.P_HDSTK01_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_5Click(Sender);
end;

procedure TSFMain.P_HDSTK01_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_6Click(Sender);
end;

procedure TSFMain.P_HDSTK01_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_8Click(Sender);
end;

procedure TSFMain.P_HDSTK02_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_4Click(Sender);
end;

procedure TSFMain.P_HDSTK02_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_1Click(Sender);
end;

procedure TSFMain.P_HDSTK02_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_6Click(Sender);
end;

procedure TSFMain.P_HDSTK02_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_7Click(Sender);
end;

procedure TSFMain.P_HDSTK02_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_8Click(Sender);
end;

procedure TSFMain.P_HDSTK02_AItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_AClick(Sender);
end;

procedure TSFMain.P_HDSTK02_2_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_2_1Click(Sender);
end;

procedure TSFMain.P_HDSTK02_2_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_2_2Click(Sender);
end;

procedure TSFMain.P_HDSTK02_D_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_D_1Click(Sender);
end;

procedure TSFMain.P_HDSTK02_D_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_D_2Click(Sender);
end;

procedure TSFMain.P_HDSTK02_9_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_9_1Click(Sender);
end;

procedure TSFMain.P_HDSTK02_9_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_9_2Click(Sender);
end;

procedure TSFMain.P_HDSTK02_B_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_B_1Click(Sender);
end;

procedure TSFMain.P_HDSTK02_B_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_B_2Click(Sender);
end;

procedure TSFMain.P_HDSTK02_B_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_B_3Click(Sender);
end;

procedure TSFMain.P_HDSTK02_B_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_B_4Click(Sender);
end;

procedure TSFMain.P_HDSTK02_B_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_B_5Click(Sender);
end;

procedure TSFMain.P_HDSTK02_C_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_C_1Click(Sender);
end;

procedure TSFMain.P_HDSTK02_C_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_C_2Click(Sender);
end;

procedure TSFMain.P_HDSTK02_C_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_C_3Click(Sender);
end;

procedure TSFMain.P_HDSTK02_C_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_C_4Click(Sender);
end;

procedure TSFMain.P_HDSTK02_C_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_C_5Click(Sender);
end;

procedure TSFMain.P_HDSTK03_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK03_1Click(Sender);
end;

procedure TSFMain.P_HDSTK03_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK03_2Click(Sender);
end;

procedure TSFMain.P_HDSTK03_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK03_3Click(Sender);
end;

procedure TSFMain.P_HDSL01_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_1Click(Sender);
end;

procedure TSFMain.P_HDSL01_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_2Click(Sender);
end;

procedure TSFMain.P_HDSL01_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_3Click(Sender);
end;

procedure TSFMain.P_HDSL01_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_4Click(Sender);
end;

procedure TSFMain.P_HDSL01_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_5Click(Sender);
end;

procedure TSFMain.P_HDSL01_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_6Click(Sender);
end;

procedure TSFMain.P_HDSL01_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_7Click(Sender);
end;

procedure TSFMain.P_HDSL01_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_8Click(Sender);
end;

procedure TSFMain.P_HDSP01ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSP01Click(Sender);
end;

procedure TSFMain.P_HDSP02ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSP02Click(Sender);
end;

procedure TSFMain.P_HDSP03ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSP03Click(Sender);
end;

procedure TSFMain.P_HDSP06ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSP06Click(Sender);
end;

procedure TSFMain.P_HDSP04ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSP04Click(Sender);
end;

procedure TSFMain.P_HDSP05ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSP05Click(Sender);
end;

procedure TSFMain.P_HDSP07ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSP07Click(Sender);
end;

procedure TSFMain.P_HDSV1_01ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV1_01Click(Sender);
end;

procedure TSFMain.P_HDSV1_02ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV1_02Click(Sender);
end;

procedure TSFMain.P_HDSV1_03ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV1_03Click(Sender);
end;

procedure TSFMain.P_HDSV1_04ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV1_04Click(Sender);
end;

procedure TSFMain.P_HDSV1_05ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV1_05Click(Sender);
end;

procedure TSFMain.P_HDSV2_08ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV2_08Click(Sender);
end;

procedure TSFMain.P_HDSV2_09ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV2_09Click(Sender);
end;

procedure TSFMain.P_HDSV2_10ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV2_10Click(Sender);
end;

procedure TSFMain.P_HDSV3_06ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV3_06Click(Sender);
end;

procedure TSFMain.P_HDSV3_07ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV3_07Click(Sender);
end;

procedure TSFMain.P_HDSV11_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV11_1Click(Sender);
end;

procedure TSFMain.P_HDSV11_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV11_2Click(Sender);
end;

procedure TSFMain.B_HDSV12_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV12_1Click(Sender);
end;

procedure TSFMain.B_HDSV13ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSV13Click(Sender);
end;

procedure TSFMain.P_HDFIN01_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDFIN01_1Click(Sender);
end;

procedure TSFMain.P_HDFIN01_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDFIN01_2Click(Sender);
end;

procedure TSFMain.P_HDFIN01_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDFIN01_3Click(Sender);
end;

procedure TSFMain.P_HDFIN02_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDFIN02_1Click(Sender);
end;

procedure TSFMain.P_HDFIN02_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDFIN02_2Click(Sender);
end;

procedure TSFMain.P_HDFIN02_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDFIN02_3Click(Sender);
end;

procedure TSFMain.P_HDFIN02_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDFIN02_4Click(Sender);
end;

procedure TSFMain.B_HDTAX01ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDTAX01Click(Sender);
end;

procedure TSFMain.B_HDTAX03ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDTAX03Click(Sender);
end;

procedure TSFMain.P_HDTAX02_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDTAX02_1Click(Sender);
end;

procedure TSFMain.P_HDTAX02_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDTAX02_2Click(Sender);
end;

procedure TSFMain.P_HDTAX02_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDTAX02_3Click(Sender);
end;

procedure TSFMain.P_HDTAX02_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDTAX02_4Click(Sender);
end;

procedure TSFMain.P_HDTAX02_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDTAX02_5Click(Sender);
end;

procedure TSFMain.P_HDTAX02_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDTAX02_6Click(Sender);
end;

procedure TSFMain.HDREP01_1_1Click(Sender: TObject);
begin
  if not Assigned(frRepStkRc) then
    frRepStkRc := TfrRepStkRc.Create(Application);
  frRepStkRc.Show;
end;

procedure TSFMain.HDREP01_1_2Click(Sender: TObject);
begin
  if not Assigned(frRpDlgStk0) then
    frRpDlgStk0 := TfrRpDlgStk0.Create(Application);
  frRpDlgStk0.Show;
end;

procedure TSFMain.HDREP01_1_3Click(Sender: TObject);
begin
  if not Assigned(QRformopt10) then
    QRformopt10 := TQRformopt10.Create(Application);
  QRformopt10.Show;
end;

procedure TSFMain.HDREP01_1_5Click(Sender: TObject);
begin
  if not Assigned(Movfm10) then
    Movfm10 := TMovfm10.Create(Application);
  Movfm10.Show;
end;

procedure TSFMain.HDREP01_1_6Click(Sender: TObject);
begin
  if not Assigned(Movto10) then
    Movto10 := TMovto10.Create(Application);
  Movto10.Show;
end;

procedure TSFMain.HDREP01_1_7Click(Sender: TObject);
begin
  if not Assigned(fRepStkCost) then
    fRepStkCost := TfRepStkCost.Create(Application);
  fRepStkCost.Show;
end;

procedure TSFMain.HDREP01_1_8Click(Sender: TObject);
begin
  if not Assigned(FRpTXD10) then
    FRpTXD10 := TFRpTXD10.Create(Application);
  FRpTXD10.Show;
end;

procedure TSFMain.HDREP01_1_9Click(Sender: TObject);
begin
  if not Assigned(FRepMoveCarAc) then
    FRepMoveCarAc := TFRepMoveCarAc.Create(Application);
  FRepMoveCarAc.Show;
end;

procedure TSFMain.HDREP01_2_1Click(Sender: TObject);
begin
  if not Assigned(FRepSale) then
    FRepSale := TFRepSale.Create(Application);
  FRepSale.Show;
end;

procedure TSFMain.HDREP01_2_2Click(Sender: TObject);
begin
  if not Assigned(FRpres10) then
    FRpres10 := TFRpres10.Create(Application);
  FRpres10.Show;
end;

procedure TSFMain.HDREP01_2_3Click(Sender: TObject);
begin
  if not Assigned(FRpSC50) then
    FRpSC50 := TFRpSC50.Create(Application);
  FRpSC50.Show;
end;

procedure TSFMain.HDREP01_2_4Click(Sender: TObject);
begin
  if not Assigned(FRcsh_ac) then
    FRcsh_ac := TFRcsh_ac.Create(Application);
  FRcsh_ac.Show;
end;

procedure TSFMain.HDREP01_2_5Click(Sender: TObject);
begin
  if not Assigned(FRfin_ac) then
    FRfin_ac := TFRfin_ac.Create(Application);
  FRfin_ac.Show;
end;

procedure TSFMain.HDREP01_2_6Click(Sender: TObject);
begin
  if not Assigned(fRpSaleAgenAc) then
    fRpSaleAgenAc := TfRpSaleAgenAc.Create(Application);
  fRpSaleAgenAc.Show;
end;

procedure TSFMain.HDREP01_4_1Click(Sender: TObject);
begin
  if not Assigned(FRparB10) then
    FRparB10 := TFRparB10.Create(Application);
  FRparB10.Show;
end;

procedure TSFMain.HDREP01_3_1Click(Sender: TObject);
begin
  if not Assigned(frRepRc0) then
    frRepRc0 := TfrRepRc0.Create(Application);
  frRepRc0.Show;
end;

procedure TSFMain.HDREP01_3_2Click(Sender: TObject);
begin
  if not Assigned(FRecv10) then
    FRecv10 := TFRecv10.Create(Application);
  FRecv10.Show;
end;

procedure TSFMain.HDREP01_3_3Click(Sender: TObject);
begin
  if not Assigned(FRepCan10) then
    FRepCan10 := TFRepCan10.Create(Application);
  FRepCan10.Show;
end;

procedure TSFMain.HDREP01_4_2Click(Sender: TObject);
begin
  if not Assigned(FRparA10) then
    FRparA10 := TFRparA10.Create(Application);
  FRparA10.Show;
end;

procedure TSFMain.HDREP01_4_3Click(Sender: TObject);
begin
  if not Assigned(FRparA30) then
    FRparA30 := TFRparA30.Create(Application);
  FRparA30.Show;
end;

procedure TSFMain.HDREP01_4_4Click(Sender: TObject);
begin
  if not Assigned(FRparA40) then
    FRparA40 := TFRparA40.Create(Application);
  FRparA40.Show;
end;

procedure TSFMain.HDREP01_4_6Click(Sender: TObject);
begin
  if not Assigned(FRparA60) then
    FRparA60 := TFRparA60.Create(Application);
  FRparA60.Show;
end;

procedure TSFMain.HDREP02_2_1Click(Sender: TObject);
begin
  if not Assigned(FRpPo10) then
    FRpPo10 := TFRpPo10.Create(Application);
  FRpPo10.Show;
end;

procedure TSFMain.HDREP02_2_2Click(Sender: TObject);
begin
  if not Assigned(FRpPo20) then
    FRpPo20 := TFRpPo20.Create(Application);
  FRpPo20.Show;
end;

procedure TSFMain.HDREP02_2_3Click(Sender: TObject);
begin
  if not Assigned(FRpPo30) then
    FRpPo30 := TFRpPo30.Create(Application);
  FRpPo30.Show;
end;

procedure TSFMain.HDREP02_2_4Click(Sender: TObject);
begin
  if not Assigned(FRpPo50) then
    FRpPo50 := TFRpPo50.Create(Application);
  FRpPo50.Show;
end;

procedure TSFMain.HDREP02_2_5Click(Sender: TObject);
begin
  if not Assigned(FRpPo40) then
    FRpPo40 := TFRpPo40.Create(Application);
  FRpPo40.Show;
end;

procedure TSFMain.HDREP02_3_1Click(Sender: TObject);
begin
  {if Not Assigned(FIcRp110) then
  FIcRp110 := TFIcRp110.Create(Application);
  FIcRp110.show;}

  if not Assigned(frmRpStkBal) then
    frmRpStkBal := TfrmRpStkBal.Create(Application);
  frmRpStkBal.show;
end;

procedure TSFMain.HDREP02_3_2Click(Sender: TObject);
begin
  if not Assigned(FmSTRp220) then
    FmSTRp220 := TFmSTRp220.Create(Application);
  FmSTRp220.show;
end;

procedure TSFMain.HDREP02_3_3Click(Sender: TObject);
begin
  if not Assigned(FmSTRp310) then
    FmSTRp310 := TFmSTRp310.Create(Application);
  FmSTRp310.show;
end;

procedure TSFMain.HDREP02_3_4Click(Sender: TObject);
begin
  if not Assigned(FCatalog1) then
    FCatalog1 := TFCatalog1.Create(Application);
  FCatalog1.show;
end;

procedure TSFMain.HDREP02_3_5Click(Sender: TObject);
begin
  if not Assigned(FmSTRp40) then
    FmSTRp40 := TFmSTRp40.Create(Application);
  FmSTRp40.show;
end;

procedure TSFMain.HDREP02_3_6Click(Sender: TObject);
begin
  if not Assigned(FmSTRpc30) then
    FmSTRpc30 := TFmSTRpc30.Create(Application);
  FmSTRpc30.show;
end;

procedure TSFMain.HDREP02_3_7Click(Sender: TObject);
begin
  if not Assigned(FmSTRpd20) then
    FmSTRpd20 := TFmSTRpd20.Create(Application);
  FmSTRpd20.show;
end;

procedure TSFMain.HDREP02_4_1Click(Sender: TObject);
begin
  if not Assigned(SvRp_10) then
    SvRp_10 := TSvRp_10.Create(Application);
  SvRp_10.Show;
end;

procedure TSFMain.HDREP02_4_2Click(Sender: TObject);
begin
  if not Assigned(FmSvRpA70) then
    FmSvRpA70 := TFmSvRpA70.Create(Application);
  FmSvRpA70.Show;
end;

procedure TSFMain.HDREP02_4_3Click(Sender: TObject);
begin
  if not Assigned(FmSvRpA80) then
    FmSvRpA80 := TFmSvRpA80.Create(Application);
  FmSvRpA80.Show;
end;

procedure TSFMain.HDREP02_4_4Click(Sender: TObject);
begin
  if not Assigned(FRpSv01) then
    FRpSv01 := TFRpSv01.Create(Application);
  FRpSv01.show;
end;

procedure TSFMain.HDREP02_4_5Click(Sender: TObject);
begin
  if not Assigned(SvRp_40) then
    SvRp_40 := TSvRp_40.Create(Application);
  SvRp_40.Show;
end;

procedure TSFMain.HDREP02_4_6Click(Sender: TObject);
begin
  if not Assigned(FmSvRpA40) then
    FmSvRpA40 := TFmSvRpA40.Create(Application);
  FmSvRpA40.Show;
end;

procedure TSFMain.HDREP02_4_7Click(Sender: TObject);
begin
  if not Assigned(FSvrpc50) then
    FSvrpc50 := TFSvrpc50.Create(Application);
  FSvrpc50.Show;
end;

procedure TSFMain.HDREP02_4_8Click(Sender: TObject);
begin
  if not Assigned(frRepCupong) then
    frRepCupong := TfrRepCupong.Create(Application);
  frRepCupong.Show;
end;

procedure TSFMain.HDREP02_4_9Click(Sender: TObject);
begin
  if not Assigned(FmSvRpc20) then
    FmSvRpc20 := TFmSvRpc20.Create(Application);
  FmSvRpc20.Show;
end;

procedure TSFMain.HDREP02_4_AClick(Sender: TObject);
begin
  if not Assigned(frSumProfitByTsv) then
    frSumProfitByTsv := TfrSumProfitByTsv.Create(Application);
  frSumProfitByTsv.Show;
end;

procedure TSFMain.HDREP02_4_BClick(Sender: TObject);
begin
  if not Assigned(frSumProfitByGcode) then
    frSumProfitByGcode := TfrSumProfitByGcode.Create(Application);
  frSumProfitByGcode.Show;
end;

procedure TSFMain.HDREP02_4_CClick(Sender: TObject);
begin
  if not Assigned(frSumProfitByModel) then
    frSumProfitByModel := TfrSumProfitByModel.Create(Application);
  frSumProfitByModel.Show;
end;

procedure TSFMain.HDREP02_4_DClick(Sender: TObject);
begin
  if not Assigned(frDelayService) then
    frDelayService := TfrDelayService.Create(Application);
  frDelayService.Show;
end;

procedure TSFMain.HDREP02_4_EClick(Sender: TObject);
begin
  if not Assigned(frFrequencySv) then
    frFrequencySv := TfrFrequencySv.Create(Application);
  frFrequencySv.Show;
end;

procedure TSFMain.HDREP02_1_1Click(Sender: TObject);
begin
  if not Assigned(SvFn_50) then
    SvFn_50 := TSvFn_50.Create(Application);
  SvFn_50.Show;
end;

procedure TSFMain.HDREP02_1_2Click(Sender: TObject);
begin
  if not Assigned(FAnlrp40) then
    FAnlrp40 := TFAnlrp40.Create(Application);
  FAnlrp40.Show;
end;

procedure TSFMain.HDREP02_5_1Click(Sender: TObject);
begin
  if not Assigned(ArRp_10) then
    ArRp_10 := TArRp_10.Create(Application);
  ArRp_10.Show;
end;

procedure TSFMain.HDREP02_5_2Click(Sender: TObject);
begin
  if not Assigned(ArRp_20) then
    ArRp_20 := TArRp_20.Create(Application);
  ArRp_20.Show;
end;

procedure TSFMain.HDREP02_5_3Click(Sender: TObject);
begin
  if not Assigned(ArRp_30) then
    ArRp_30 := TArRp_30.Create(Application);
  ArRp_30.Show;
end;

procedure TSFMain.HDREP02_5_4Click(Sender: TObject);
begin
  if not Assigned(ArRp_40) then
    ArRp_40 := TArRp_40.Create(Application);
  ArRp_40.Show;
end;

procedure TSFMain.HDREP02_5_5Click(Sender: TObject);
begin
  if not Assigned(ArRp_50) then
    ArRp_50 := TArRp_50.Create(Application);
  ArRp_50.Show;
end;

procedure TSFMain.HDREP02_5_6Click(Sender: TObject);
begin
  if not Assigned(ArRp_70) then
    ArRp_70 := TArRp_70.Create(Application);
  ArRp_70.Show;
end;

procedure TSFMain.HDREP02_5_7Click(Sender: TObject);
begin
  if not Assigned(ArRp_60) then
    ArRp_60 := TArRp_60.Create(Application);
  ArRp_60.Show;
end;

procedure TSFMain.HDREP02_5_8Click(Sender: TObject);
begin
  if not Assigned(FrpArBill) then
    FrpArBill := TFrpArBill.Create(Application);
  FrpArBill.show;
end;

procedure TSFMain.HDREP03_1Click(Sender: TObject);
begin
  if not Assigned(UStickerMDL) then
    UStickerMDL := TUStickerMDL.Create(Application);
  UStickerMDL.Show;
end;

procedure TSFMain.HDREP03_2Click(Sender: TObject);
begin
  if not Assigned(UStickDT) then
    UStickDT := TUStickDT.Create(Application);
  UStickDT.Show;
end;

procedure TSFMain.HDREP03_3Click(Sender: TObject);
begin
  if not Assigned(URepcustmast) then
    URepcustmast := TURepcustmast.Create(Application);
  URepcustmast.Show;
end;

procedure TSFMain.HDREP03_4Click(Sender: TObject);
begin
  if not AsSigned(FPrnLabl10) then
    FPrnLabl10 := TFPrnLabl10.Create(Application);
  FPrnLabl10.Show;
end;

procedure TSFMain.HDREP04_1Click(Sender: TObject);
begin
  if not AsSigned(FRptxSl10) then
    FRptxSl10 := TFRptxSl10.Create(Application);
  FRptxSl10.Show;
end;

procedure TSFMain.HDREP04_2Click(Sender: TObject);
begin
  if not Assigned(FmTXRp30) then
    FmTXRp30 := TFmTXRp30.Create(Application);
  FmTXRp30.Show;
end;

procedure TSFMain.HDREP04_3Click(Sender: TObject);
begin
  if not Assigned(FRpTxBy10) then
    FRpTxBy10 := TFRpTxBy10.Create(Application);
  FRpTxBy10.Show;
end;

procedure TSFMain.HDREP04_4Click(Sender: TObject);
begin
  if not Assigned(FmTXRp20) then
    FmTXRp20 := TFmTXRp20.Create(Application);
  FmTXRp20.Show;
end;

procedure TSFMain.P_HDREP01_1_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_1Click(Sender);
end;

procedure TSFMain.P_HDREP01_1_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_2Click(Sender);
end;

procedure TSFMain.P_HDREP01_1_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_3Click(Sender);
end;

procedure TSFMain.P_HDREP01_1_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_4Click(Sender);
end;

procedure TSFMain.P_HDREP01_1_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_5Click(Sender);
end;

procedure TSFMain.P_HDREP01_1_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_6Click(Sender);
end;

procedure TSFMain.P_HDREP01_1_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_7Click(Sender);
end;

procedure TSFMain.P_HDREP01_1_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_8Click(Sender);
end;

procedure TSFMain.P_HDREP01_1_9ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_9Click(Sender);
end;

procedure TSFMain.P_HDREP01_1_AItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_AClick(Sender);
end;

procedure TSFMain.P_HDREP01_1_BItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_1_BClick(Sender);
end;

procedure TSFMain.P_HDREP01_2_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_2_1Click(Sender);
end;

procedure TSFMain.P_HDREP01_2_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_2_7Click(Sender);
end;

procedure TSFMain.P_HDREP01_2_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_2_2Click(Sender);
end;

procedure TSFMain.P_HDREP01_2_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_2_3Click(Sender);
end;

procedure TSFMain.P_HDREP01_2_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_2_4Click(Sender);
end;

procedure TSFMain.P_HDREP01_2_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_2_5Click(Sender);
end;

procedure TSFMain.P_HDREP01_2_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_2_6Click(Sender);
end;

procedure TSFMain.P_HDREP01_4_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_4_1Click(Sender);
end;

procedure TSFMain.P_HDREP01_4_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_4_2Click(Sender);
end;

procedure TSFMain.P_HDREP01_4_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_4_3Click(Sender);
end;

procedure TSFMain.P_HDREP01_4_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_4_4Click(Sender);
end;

procedure TSFMain.P_HDREP01_4_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_4_6Click(Sender);
end;

procedure TSFMain.P_HDREP02_2_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_2_1Click(Sender);
end;

procedure TSFMain.P_HDREP02_2_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_2_2Click(Sender);
end;

procedure TSFMain.P_HDREP02_2_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_2_3Click(Sender);
end;

procedure TSFMain.P_HDREP02_2_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_2_4Click(Sender);
end;

procedure TSFMain.P_HDREP02_2_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_2_5Click(Sender);
end;

procedure TSFMain.P_HDREP02_3_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_1Click(Sender);
end;

procedure TSFMain.P_HDREP02_3_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_2Click(Sender);
end;

procedure TSFMain.P_HDREP02_3_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_3Click(Sender);
end;

procedure TSFMain.P_HDREP02_3_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_4Click(Sender);
end;

procedure TSFMain.P_HDREP02_3_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_5Click(Sender);
end;

procedure TSFMain.P_HDREP02_3_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_6Click(Sender);
end;

procedure TSFMain.P_HDREP02_3_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_7Click(Sender);
end;

procedure TSFMain.P_HDREP02_3_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_8Click(Sender);
end;

procedure TSFMain.P_HDREP02_3_9ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_9Click(Sender);
end;

procedure TSFMain.P_HDREP02_3_AItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_AClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_BItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_BClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_CItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_CClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_DItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_DClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_EItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_EClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_FItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_FClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_GItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_GClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_HItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_HClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_IItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_IClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_JItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_JClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_KItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_KClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_LItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_LClick(Sender);
end;

procedure TSFMain.P_HDREP02_3_NItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_NClick(Sender);
end;

procedure TSFMain.P_HDREP02_4_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_1Click(Sender);
end;

procedure TSFMain.P_HDREP02_4_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_2Click(Sender);
end;

procedure TSFMain.P_HDREP02_4_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_3Click(Sender);
end;

procedure TSFMain.P_HDREP02_4_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_4Click(Sender);
end;

procedure TSFMain.P_HDREP02_4_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_5Click(Sender);
end;

procedure TSFMain.P_HDREP02_4_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_6Click(Sender);
end;

procedure TSFMain.P_HDREP02_4_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_7Click(Sender);
end;

procedure TSFMain.P_HDREP02_4_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_8Click(Sender);
end;

procedure TSFMain.P_HDREP02_4_9ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_9Click(Sender);
end;

procedure TSFMain.P_HDREP02_4_AItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_AClick(Sender);
end;

procedure TSFMain.P_HDREP02_4_BItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_BClick(Sender);
end;

procedure TSFMain.P_HDREP02_4_CItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_CClick(Sender);
end;

procedure TSFMain.P_HDREP02_1_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_1_1Click(Sender);
end;

procedure TSFMain.P_HDREP02_1_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_1_2Click(Sender);
end;

procedure TSFMain.P_HDREP02_1_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_1_4Click(Sender);
end;

procedure TSFMain.P_HDREP02_5_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_5_1Click(Sender);
end;

procedure TSFMain.P_HDREP02_5_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_5_2Click(Sender);
end;

procedure TSFMain.P_HDREP02_5_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_5_3Click(Sender);
end;

procedure TSFMain.P_HDREP02_5_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_5_4Click(Sender);
end;

procedure TSFMain.P_HDREP02_5_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_5_5Click(Sender);
end;

procedure TSFMain.P_HDREP02_5_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_5_6Click(Sender);
end;

procedure TSFMain.P_HDREP02_5_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_5_7Click(Sender);
end;

procedure TSFMain.P_HDREP02_5_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_5_8Click(Sender);
end;

procedure TSFMain.P_HDREP03_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP03_1Click(Sender);
end;

procedure TSFMain.P_HDREP03_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP03_2Click(Sender);
end;

procedure TSFMain.P_HDREP03_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP03_3Click(Sender);
end;

procedure TSFMain.P_HDREP03_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP03_4Click(Sender);
end;

procedure TSFMain.P_HDREP04_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP04_1Click(Sender);
end;

procedure TSFMain.P_HDREP04_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP04_2Click(Sender);
end;

procedure TSFMain.P_HDREP04_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP04_3Click(Sender);
end;

procedure TSFMain.P_HDREP04_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP04_4Click(Sender);
end;

procedure TSFMain.P_HDREP04_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP04_5Click(Sender);
end;

procedure TSFMain.P_HDREP05_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP05_1Click(Sender);
end;

procedure TSFMain.P_HDREP02_4_DItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_DClick(Sender);
end;

procedure TSFMain.P_HDREP02_4_EItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_EClick(Sender);
end;

procedure TSFMain.P_HDHLP01_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP01_1Click(Sender);
end;

procedure TSFMain.P_HDHLP01_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP01_2Click(Sender);
end;

procedure TSFMain.P_HDHLP01_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP01_3Click(Sender);
end;

procedure TSFMain.P_HDHLP01_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP01_4Click(Sender);
end;

procedure TSFMain.P_HDHLP01_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP01_5Click(Sender);
end;

procedure TSFMain.P_HDHLP02_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_1Click(Sender);
end;

procedure TSFMain.P_HDHLP02_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_2Click(Sender);
end;

procedure TSFMain.P_HDHLP02_CItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_CClick(Sender);
end;

procedure TSFMain.P_HDHLP02_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_3Click(Sender);
end;

procedure TSFMain.P_HDHLP02_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_4Click(Sender);
end;

procedure TSFMain.P_HDHLP02_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_5Click(Sender);
end;

procedure TSFMain.P_HDHLP02_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_6Click(Sender);
end;

procedure TSFMain.P_HDHLP02_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_7Click(Sender);
end;

procedure TSFMain.P_HDHLP02_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_8Click(Sender);
end;

procedure TSFMain.P_HDHLP02_9ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_9Click(Sender);
end;

procedure TSFMain.P_HDHLP02_AItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_AClick(Sender);
end;

procedure TSFMain.P_HDHLP02_BItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDHLP02_BClick(Sender);
end;

procedure TSFMain.N_HDREP01_3_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_3_1Click(Sender);
end;

procedure TSFMain.N_HDREP02_1_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_1_1Click(Sender);
end;

procedure TSFMain.N_HDREP02_3_HItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_HClick(Sender);
end;

procedure TSFMain.N_HDREP02_3_KItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_3_KClick(Sender);
end;

procedure TSFMain.N_HDREP02_1_4ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_1_4Click(Sender);
end;

procedure TSFMain.N_HDREP02_4_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP02_4_5Click(Sender);
end;

procedure TSFMain.P_HDSTK02_C_6ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_C_6Click(Sender);
end;

procedure TSFMain.P_HDSTK02_C_7ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_C_7Click(Sender);
end;

procedure TSFMain.P_HDREP01_3_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_3_1Click(Sender);
end;

procedure TSFMain.P_HDREP01_3_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_3_2Click(Sender);
end;

procedure TSFMain.P_HDREP01_3_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_3_3Click(Sender);
end;

procedure TSFMain.AdvMenuMenuItems3Click(Sender: TObject);
begin
  AdvGlowButton2Click(Sender);
end;

procedure TSFMain.Action1Execute(Sender: TObject);
begin
  if bsSelectSkinDialog1.Execute(bsSkinData1.SkinIndex) then
  begin
    bsSkinData1.SkinIndex := bsSelectSkinDialog1.SelectedSkinIndex;
    nSkinForm := IntToStr(bsSelectSkinDialog1.SelectedSkinIndex);
  end;

  TSVConfig := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'SVConfig.ini');
  TSVConfig.WriteString('Setting', 'Skin Form', nSkinForm);
end;

procedure TSFMain.N_HDSTK02_9_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_9_1Click(Sender);
end;

procedure TSFMain.HDSET01_CClick(Sender: TObject);
begin
  if not Assigned(SetTypeClaim) then
    SetTypeClaim := TSetTypeClaim.Create(Application);
  SetTypeClaim.Show;
end;

procedure TSFMain.P_HDSET01_CItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSET01_CClick(Sender);
end;

procedure TSFMain.HDSL01_9_1Click(Sender: TObject);
begin
  if not Assigned(frSendClaim) then
    frSendClaim := TfrSendClaim.Create(Application);
  frSendClaim.Show;
end;

procedure TSFMain.P_HDSL01_9_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_9_1Click(Sender);
end;

procedure TSFMain.AdvToolBarPager1TabClick(Sender: TObject; Page: Integer);
begin
  XMenucode := IntToStr(Page);

  TSVConfig := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'SVConfig.ini');
  TSVConfig.WriteString('Menu', 'page', XMenucode);
end;

procedure TSFMain.N_HDSTK01_5ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK01_5Click(Sender);
end;

procedure TSFMain.P_HDSL01_9_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_9_2Click(Sender);
end;

procedure TSFMain.P_HDSL01_9_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSL01_9_3Click(Sender);
end;

procedure TSFMain.HDSL01_9_2Click(Sender: TObject);
begin
  if not Assigned(FInvoiClaimCar) then
    FInvoiClaimCar := TFInvoiClaimCar.Create(Application);
  FInvoiClaimCar.Show;
end;

procedure TSFMain.HDSL01_9_3Click(Sender: TObject);
begin
  if not Assigned(frRecvClaimCar) then
    frRecvClaimCar := TfrRecvClaimCar.Create(Application);
  frRecvClaimCar.Show;
end;

procedure TSFMain.HDREP01_5_1Click(Sender: TObject);
begin
  if not AsSigned(FRpSendClaim) then
    FRpSendClaim := TFRpSendClaim.Create(Application);
  FRpSendClaim.Show;
end;

procedure TSFMain.P_HDREP01_5_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_5_1Click(Sender);
end;

procedure TSFMain.HDREP01_5_2Click(Sender: TObject);
begin
  if not AsSigned(FRpInvoiClaim) then
    FRpInvoiClaim := TFRpInvoiClaim.Create(Application);
  FRpInvoiClaim.Show;
end;

procedure TSFMain.P_HDREP01_5_2ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_5_2Click(Sender);
end;

procedure TSFMain.HDREP01_5_3Click(Sender: TObject);
begin
  if not AsSigned(FRpPaymentClaim) then
    FRpPaymentClaim := TFRpPaymentClaim.Create(Application);
  FRpPaymentClaim.Show;
end;

procedure TSFMain.P_HDREP01_5_3ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDREP01_5_3Click(Sender);
end;

procedure TSFMain.HDSTK02_9Click(Sender: TObject);
begin
  if not Assigned(FPr_inv02) then
    FPr_inv02 := TFPr_inv02.Create(Application);
  FPr_inv02.Show;
end;

procedure TSFMain.N_HDSTK02_9ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_9Click(Sender);
end;

procedure TSFMain.N_HDSTK02_8ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_4Click(Sender);
end;

procedure TSFMain.N_HDSTK02_2_1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_2_1Click(Sender);
end;

procedure TSFMain.HDSET02_AClick(Sender: TObject);
begin
  if not Assigned(FDlgptkit) then
    FDlgptkit := TFDlgptkit.Create(Application);
  FDlgptkit.Show;
end;

procedure TSFMain.N_HDSP02ItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSP02Click(Sender);
end;

procedure TSFMain.HDSTK02_EClick(Sender: TObject);
begin
  if not Assigned(FmStin01) then
    FmStin01 := TFmStin01.Create(Application);
  FmStin01.Show;
end;

procedure TSFMain.N_HDSTK02_EItemClick(Sender: TObject; Item: TCustomItem);
begin
  HDSTK02_EClick(Sender);
end;

procedure TSFMain.Timer1Timer(Sender: TObject);
begin
  Timer1.Interval := Timer1.Interval + 1;
  if Timer1.Interval = 1012 then
  begin
    AdvGlowButton2Click(Sender);
    Timer1.Interval := 1005;
    Timer1.Enabled := False;
  end;
end;

procedure TSFMain.HDHLP02_DClick(Sender: TObject);
begin
  if not Assigned(FmEditbrw) then
    FmEditbrw := TFmEditbrw.Create(Application);
  FmEditbrw.show;
end;

procedure TSFMain.AdvGlowButton4Click(Sender: TObject);
begin
  {Get date program in database}
  Do_Chk_DateModified;
end;

procedure TSFMain.AdvGlowButton3Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'calc.exe', nil, nil, SW_SHOWNORMAL);
end;

procedure TSFMain.AdvGlowButton20Click(Sender: TObject);
begin
  if Assigned(FmSTIn11) then
    sfmain.RaiseException('Form open existing..');

  if Assigned(FmSTin02_1) then
    sfmain.RaiseException('Form open existing..');

  if not Assigned(FPos) then
    FPos := TFPos.Create(Application);
  FPos.Show;
end;

procedure TSFMain.qrReportAfterPost(DataSet: TDataSet);
var
  nRepNm, nExtract: string;
begin
  nRepNm := qrReport.FieldByName('FRNAME').AsString;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if qrReport.Active then
      if qrReport.ApplyUpdates = 0 then
         qrReport.CommitUpdates
      else
        raise Exception.Create(qrReport.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    qrReport.Edit;
    raise;
  end;
  //
  nExtract := ExtractFilePath(Application.ExeName) + nRepNm;
  DeleteFile(nExtract);
end;

end.
