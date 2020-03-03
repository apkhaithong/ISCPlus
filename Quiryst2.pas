unit QuirySt2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Grids, ExtCtrls, DB, DBGrids, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxImageComboBox, cxGridCardView, cxGridLevel, cxGridDBCardView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxButtonEdit, cxContainer, cxTextEdit, AdvGlowButton, cxLookAndFeels,
  cxLookAndFeelPainters, AdvPanel, cxCheckBox, cxGridCustomPopupMenu,
  cxGridPopupMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator, dxDateRanges,
  dxBarBuiltInMenu, cxGridCustomLayoutView;

type
  TQuirySTkForm2 = class(TForm)
    QType: TFDQuery;
    DataSource1: TDataSource;
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
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    QTypeRECVNO: TStringField;
    QTypeRECVDT: TDateField;
    QTypeGCODE: TStringField;
    QTypeTYPE: TStringField;
    QTypeMODEL: TStringField;
    QTypeBAAB: TStringField;
    QTypeCOLOR: TStringField;
    QTypeCC: TFloatField;
    QTypeSTAT: TStringField;
    QTypeSTRNO: TStringField;
    QTypeENGNO: TStringField;
    QTypeREGNO: TStringField;
    QTypeKEYNO: TStringField;
    QTypeREFNO: TStringField;
    QTypeMILERT: TFloatField;
    QTypeCRLOCAT: TStringField;
    QTypeMOVENO: TStringField;
    QTypeMOVEDT: TDateField;
    QTypeRVCODE: TStringField;
    QTypeRVLOCAT: TStringField;
    QTypeSTDCOST: TFloatField;
    QTypeCRCOST: TFloatField;
    QTypeDISCT: TFloatField;
    QTypeNETCOST: TFloatField;
    QTypeCRVAT: TFloatField;
    QTypeTOTCOST: TFloatField;
    QTypeVATRT: TFloatField;
    QTypeNADDCOST: TFloatField;
    QTypeVADDCOST: TFloatField;
    QTypeTADDCOST: TFloatField;
    QTypeSTDPRC: TFloatField;
    QTypeSDATE: TDateField;
    QTypePRICE: TFloatField;
    QTypeBONUS: TFloatField;
    QTypeTSALE: TStringField;
    QTypeCONTNO: TStringField;
    QTypeCURSTAT: TStringField;
    QTypeCRDTXNO: TStringField;
    QTypeCRDAMT: TFloatField;
    QTypeRESVNO: TStringField;
    QTypeRESVDT: TDateField;
    QTypeFLAG: TStringField;
    QTypeMEMO1: TMemoField;
    QTypePOSTDT: TDateField;
    QTypeINPDT: TDateTimeField;
    QTypeUSERID: TStringField;
    QTypeDORECV: TStringField;
    QTypeMANUYR: TStringField;
    QTypeAPCODE: TStringField;
    QTypeTAXIN: TStringField;
    QTypeTAXDT: TDateField;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit_Type: TcxButtonEdit;
    Edit_Color: TcxButtonEdit;
    Edit_Model: TcxButtonEdit;
    Edit_Baab: TcxButtonEdit;
    Edit_Locat: TcxButtonEdit;
    XFDate: TcxDateEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1GCODE: TcxGridDBColumn;
    cxGrid1DBTableView1RECVNO: TcxGridDBColumn;
    cxGrid1DBTableView1RECVDT: TcxGridDBColumn;
    cxGrid1DBTableView1STRNO: TcxGridDBColumn;
    cxGrid1DBTableView1ENGNO: TcxGridDBColumn;
    cxGrid1DBTableView1REGNO: TcxGridDBColumn;
    cxGrid1DBTableView1TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1MODEL: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR: TcxGridDBColumn;
    cxGrid1DBTableView1CC: TcxGridDBColumn;
    cxGrid1DBTableView1STAT: TcxGridDBColumn;
    cxGrid1DBTableView1KEYNO: TcxGridDBColumn;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1STRNO: TcxGridDBCardViewRow;
    cxGrid1DBCardView1STAT: TcxGridDBCardViewRow;
    cxGrid1DBCardView1RVLOCAT: TcxGridDBCardViewRow;
    cxGrid1DBCardView1RVCODE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1APCODE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1MANUYR: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ENGNO: TcxGridDBCardViewRow;
    cxGrid1DBCardView1REGNO: TcxGridDBCardViewRow;
    cxGrid1Level1: TcxGridLevel;
    ActivateBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    Bevel1: TBevel;
    cxCheckBox1: TcxCheckBox;
    cxGridPopupMenu1: TcxGridPopupMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ActivateBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit_TypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit_ModelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit_BaabPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit_ColorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuirySTkForm2: TQuirySTkForm2;
  NowDate :TdateTime;
implementation
uses Dm1,Srchset1, USoftFirm;
{$R *.DFM}

procedure TQuirySTkForm2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QType.Close;
  Action := caFree;
  QuiryStkForm2 := nil;
end;

procedure TQuirySTkForm2.FormShow(Sender: TObject);
begin
  XFDate.Date := Date;
  edit_Locat.Text := SFMain.XLocat;
end;

procedure TQuirySTkForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
    Begin
     Perform(Wm_nextDlgctl,0,0);
     Key := #0;
    End;
end;

procedure TQuirySTkForm2.ActivateBtnClick(Sender: TObject);
Var i:integer;
begin
    with QType do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT * FROM INVTRAN WHERE (CURSTAT<>''R'' '+
              'OR CURSTAT IS NULL) AND (RECVDT<=:NowDate) AND '+
              '(RESVDT>:NowDate OR RESVDT IS NULL) AND '+
              '(SDATE>:NowDate OR SDATE IS NULL) AND (TYPE LIKE:XType) '+
              'AND (MODEL LIKE:XModel) AND (BAAB LIKE:XBaab) AND '+
              '(COLOR LIKE:XColor) AND (CRLOCAT LIKE:XLocat) '+
              'ORDER BY RECVDT DESC,TYPE,MODEL,BAAB,COLOR ');

      Params[0].AsDate  := XFDate.date;
      Params[1].AsDate  := XFDate.date;
      Params[2].AsDate  := XFDate.date;
      If (Edit_type.Text<>'') and (Edit_type.Text<>'%')Then
         Params[3].AsString  := Edit_type.Text + '%'
      Else
         Params[3].AsString  := '%';
      If (Edit_Model.Text<>'')and (Edit_Model.Text<>'%')Then
         Params[4].AsString  := Edit_Model.Text + '%'
      Else
         Params[4].AsString  := '%';
      If (Edit_Baab.Text<>'') and (Edit_Baab.Text<>'%')Then
         Params[5].AsString  := Edit_Baab.Text + '%'
      Else
         Params[5].AsString  := '%';
      If (Edit_Color.Text<>'')and (Edit_Color.Text<>'%')Then
         Params[6].AsString  := Edit_Color.Text + '%'
      Else
         Params[6].AsString  := '%';
      If (Edit_Locat.Text<>'') and (Edit_Locat.Text<>'%')Then
         Params[7].AsString  := Edit_Locat.Text + '%'
      Else
         Params[7].AsString  := '%';
      Open;

      if BOF and EOF then
     Begin
        ActivateBtn.Down := false;
        SFMain.RaiseException('ไม่มีข้อมูลตามเงื่อนไขนี้');
     End;
     cxCheckBox1.Checked := False; cxCheckBox1.Checked := True;
   end;
end;

procedure TQuirySTkForm2.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TQuirySTkForm2.Edit_LocatPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TSearchset,Searchset);
  If Searchset.ShowModalSetlocat = Mrok Then
   Edit_Locat.Text   := Searchset.Keyno;
end;

procedure TQuirySTkForm2.Edit_TypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TSearchset,Searchset);
  If Searchset.ShowModalType = Mrok Then
  Edit_Type.Text := Searchset.Keyno;
end;

procedure TQuirySTkForm2.Edit_ModelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TSearchset,Searchset);
  If Searchset.ShowModalmodel = Mrok Then
   Edit_Model.Text := Searchset.Keyno;
end;

procedure TQuirySTkForm2.Edit_BaabPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Application.Createform(TSearchset,Searchset);
   If Searchset.ShowModalBaab = Mrok Then
      Edit_Baab.Text := Searchset.Keyno;
end;

procedure TQuirySTkForm2.Edit_ColorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Application.Createform(TSearchset,Searchset);
   If Searchset.ShowModalcolor = Mrok Then
      Edit_Color.Text := Searchset.Keyno;
end;

procedure TQuirySTkForm2.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = True then
  cxGrid1DBTableView1.DataController.Groups.FullExpand else
  cxGrid1DBTableView1.DataController.Groups.FullCollapse;
end;

procedure TQuirySTkForm2.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK01_5');
end;

end.
