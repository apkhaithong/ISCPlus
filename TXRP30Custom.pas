unit TXRP30Custom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Csv_txt, ComCtrls, Mask,
  Grids, DBGrids, ImgList, ToolWin, AdvGroupBox, AdvOfficeButtons, AdvGlowButton,
  AdvToolBar, cxCheckBox, cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtonEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, BusinessSkinForm, cxGroupBox,
  cxRadioGroup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxCore, cxDateUtils;

type
  TFmTXRp30Custom = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TcxTextEdit;
    Edit_Locat: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    CheckBox1: TcxCheckBox;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioGroup2: TAdvOfficeRadioGroup;
    SortGrp: TAdvOfficeRadioGroup;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    SaveDialog1: TSaveDialog;
    qrTaxSale: TFDQuery;
    qrTaxSaleLOCAT: TStringField;
    qrTaxSaleTAXNO: TStringField;
    qrTaxSaleTAXDATE: TDateField;
    qrTaxSaleCUSCOD: TStringField;
    qrTaxSaleSNAM: TStringField;
    qrTaxSaleNAME1: TStringField;
    qrTaxSaleNAME2: TStringField;
    qrTaxSaleBALANCE: TFloatField;
    qrTaxSaleVATRT: TFloatField;
    qrTaxSaleVAT: TFloatField;
    qrTaxSaleTOTTAX: TFloatField;
    qrTaxSaleDESC1: TStringField;
    qrTaxSaleJOBNO: TStringField;
    qrTaxSaleCANCELID: TStringField;
    qrTaxSalePAYTYP: TStringField;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    tbExport: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure tbExportClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
  private
    { Private declarations }
  public
    { Public declarations }                
  end;

var
  FmTXRp30Custom: TFmTXRp30Custom;

implementation
uses DmTx,uFindData,uSoftfirm, unfrPreview, Dmsec;

{$R *.DFM}    

procedure TFmTXRp30Custom.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP','HDREP04_6');
   ShortDateFormat:= ('DD/MM/YYYY');
   Edit_Locat.Text    := SFMain.Xlocat;
   Edit_Locat.Properties.ReadOnly:= SFMain.XChgLoc <>'Y';
   Edit_DateTo.Date   := Date;
   Edit_DateFrom.Date := Date;
end;


procedure TFmTXRp30Custom.ExitBitBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TFmTXRp30Custom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FmTXRp30Custom := nil;
end;

procedure TFmTXRp30Custom.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) then
    Begin
     Perform(Wm_nextDlgctl,0,0);
     Key := #0;
    End;
end;

procedure TFmTXRp30Custom.PrevBtnClick(Sender: TObject);
begin
  if AdvOfficeRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frReport1,'Fr_RepTaxSaleSVCUSTOM.frf','1') else
    DM_SEC.Do_Prev_Edit_FastReport(frReport1,'Fr_RepTaxSaleFrmCUSTOM.frf','1');
end;

procedure TFmTXRp30Custom.EditBtnClick(Sender: TObject);
begin
  if AdvOfficeRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frReport1,'Fr_RepTaxSaleSVCUSTOM.frf','2') else
    DM_SEC.Do_Prev_Edit_FastReport(frReport1,'Fr_RepTaxSaleFrmCUSTOM.frf','2');
end;



procedure TFmTXRp30Custom.RadioGroup2Click(Sender: TObject);
begin
  CheckBox1.Enabled := RadioGroup2.Itemindex=3;
end;



procedure TFmTXRp30Custom.CloseBtnClick(Sender: TObject);
begin
 close;
end;

procedure TFmTXRp30Custom.tbExportClick(Sender: TObject);
var Xorder,Saltyp,TypPay,nTable : string;
begin
  nTable := 'TAXSAL_CUSTOM';

    Case RadioGroup2.itemindex Of
      0: Saltyp:=' AND T.FRSV=''F'' ';
      1: Saltyp:=' AND T.FRSV=''S'' ';
      2: Saltyp:=' AND T.FRSV=''N'' ';
      3: begin
           If CheckBox1.Checked Then
              Saltyp:=' AND (T.FRSV=''F'' OR T.FRSV=''S'') '
           Else
              Saltyp:=' ';
         End;
    End;

   Case RadioGroup1.ItemIndex of
        0:TypPay := ' and T.PAYTYP=''S'' ';
        1:TypPay := ' and T.PAYTYP=''C'' ';
        2:TypPay := ' ';
   End;


    If Sortgrp.Itemindex=0 Then
       Xorder := ' Order By Taxno '
    else
       Xorder := ' Order By TaxDate,TAXNO ';

   With qrTaxSale do
   Begin
      close;
      sql.Clear;
      sql.Add('Select  T.locat,T.Jobno,T.Taxno,T.Taxdate,T.cuscod,T.Balance,t.vatrt,T.Vat,T.Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, '+
              'C.Snam,C.Name1,C.Name2,t.paytyp '+
              'from '+nTable+' T,custmast C '+
              'Where T.cuscod=C.Cuscod and T.Flag=''1''  '+Saltyp+TypPay+
              'AND T.LOCAT like :PLOCAT and SUBSTR(T.TAXNO,2,2) LIKE :PHDDOC '+
              'AND (T.TAXDATE>=:PFDATE AND T.TAXDATE<=:PTDATE) '+
              'Union '+
              'Select T.locat,T.Jobno,T.Taxno,T.Taxdate,T.cuscod,-T.Balance AS Balance,t.vatrt,-T.Vat as Vat,-T.Tottax As Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, '+
              'C.Snam,C.Name1,C.Name2,t.paytyp '+
              'from '+nTable+' T,CUSTMAST C '+
              'Where T.cuscod=C.Cuscod and  (t.Flag=''2'' Or T.Flag=''7'')  '+Saltyp+TypPay+
              'AND (T.TAXDATE>=:PFDATE AND T.TAXDATE<=:PTDATE) '+
              'and T.LOCAT like :PLOCAT  and SUBSTR(T.TAXNO,2,2) LIKE :PHDDOC '+Xorder);
       Params[0].AsString := Edit_Locat.Text+'%';
       Params[1].AsString := Edit4.Text+'%';
       Params[2].AsDate   := Edit_DateFrom.Date;
       Params[3].AsDate   := Edit_DateTo.Date;
       Open;
   End;
      SaveDialog1.Execute;
      QExportXLS1.FileName := SaveDialog1.FileName+'.xls';
      if SaveDialog1.FileName <>'' then
        QExportXLS1.Execute;

end;

procedure TFmTXRp30Custom.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
  Var XSort,XTypPay,XChk1,XCondi : String;
begin
        If UpperCase(ParName)='PLOCAT' then
           ParValue:=Edit_Locat.Text+'%';
        If UpperCase(ParName)='PFDATE' THEN
           ParValue:=Edit_DateFrom.Date;
        If UpperCase(ParName)='PTDATE' THEN
           ParValue:=Edit_DateTo.Date;
        If UpperCase(ParName)='PHDDOC' then
           ParValue:=Edit4.Text+'%';
        If UpperCase(ParName)='PTAXNO1' then
           ParValue:=cxButtonEdit1.Text+'%';
        If UpperCase(ParName)='PTAXNO2' then
           ParValue:=cxButtonEdit2.Text+'%';


        Case SortGrp.ItemIndex of
             0:XSort := '0';
             1:XSort := '1';
        End;
        If UpperCase(ParName)='PSORT' then
           ParValue := XSort;

        Case RadioGroup1.ItemIndex of
             0:XTypPay := '0';
             1:XTypPay := '1';
             2:XTypPay := '2';
        End;
        If UpperCase(ParName)='PTYPEPAY' then
           ParValue := XTypPay;

        Case RadioGroup2.ItemIndex of
             0:XCondi := '0';
             1:XCondi := '1';
             2:XCondi := '2';
             3:XCondi := '3';
        End;
        If UpperCase(ParName)='PCONDI' then
           ParValue := XCondi;


        if Checkbox1.Checked = True then
           XChk1 := 'Y'
        else XChk1 := 'N';
        If UpperCase(ParName)='PCHK' then
           ParValue := XChk1;

end;

procedure TFmTXRp30Custom.Edit_LocatPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    Application.CreateForm(TfFindData,fFindData);
    if fFindData.ShowModalSfloct = Mrok then
       Edit_Locat.Text := fFindData.Keyno;
end;

procedure TFmTXRp30Custom.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    Application.CreateForm(TfFindData,fFindData);
    if fFindData.ShowModalTaxSal = Mrok then
       cxButtonEdit1.Text := fFindData.Keyno;

end;

procedure TFmTXRp30Custom.cxButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    Application.CreateForm(TfFindData,fFindData);
    if fFindData.ShowModalTaxSal = Mrok then
       cxButtonEdit2.Text := fFindData.Keyno;
end;

procedure TFmTXRp30Custom.cxButtonEdit1PropertiesEditValueChanged(
  Sender: TObject);
begin
  cxButtonEdit2.Text := cxButtonEdit1.Text;
end;

procedure TFmTXRp30Custom.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
  BEGIN
      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
      VAL := SFMain.n2wBill.Text;
  END;
  IF Uppercase(NAME)='DATETHAI' Then
  Begin
     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
  End;
end;

end.
