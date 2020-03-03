unit Upstock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, Mask, DBCtrls, Spin, Grids, DBGrids, Gauges, ExtCtrls,
  ImgList, ComCtrls, ToolWin, RzSpnEdt, AdvGlowButton, AdvToolBar, AdvPanel,
  cxCheckBox, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm;

type
  TFupstock = class(TForm)
    AdvPanel1: TAdvPanel;
    Gauge1: TGauge;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpinEdit2: TcxSpinEdit;
    SpinEdit1: TcxSpinEdit;
    CheckBox3: TcxCheckBox;
    CheckBox4: TcxCheckBox;
    CheckBox1: TcxCheckBox;
    CheckBox2: TcxCheckBox;
    CheckBox5: TcxCheckBox;
    edLocat: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    QInvanls: TFDQuery;
    DataSource1: TDataSource;
    QStkcard: TFDQuery;
    Query1: TFDQuery;
    Qlocat: TFDQuery;
    Qpart: TFDQuery;
    Rctran: TFDQuery;
    RctranRECVNO: TStringField;
    RctranRECVLOC: TStringField;
    RctranPARTNO: TStringField;
    RctranUNIT: TStringField;
    RctranUCOST: TFloatField;
    RctranQTYORD: TFloatField;
    RctranQTYRECV: TFloatField;
    RctranNETCOST: TFloatField;
    RctranREDU1: TFloatField;
    RctranREDU2: TFloatField;
    RctranREDU3: TFloatField;
    RctranNETTOT: TFloatField;
    RctranACCTNO: TStringField;
    RctranRECVDATE: TDateField;
    RctranUSERID: TStringField;
    RctranTIME1: TDateTimeField;
    RctranYEAR1: TStringField;
    RctranPONO: TStringField;
    RctranFLAG: TStringField;
    RctranCANCELID: TStringField;
    RctranCANDAT: TDateTimeField;
    RctranPOSTGLDT: TDateTimeField;
    RctranAVGCOST: TFloatField;
    RctranVATCOST: TFloatField;
    SoRctran: TDataSource;
    Rcinv: TFDTable;
    RcinvRECVNO: TStringField;
    RcinvRECVDT: TDateField;
    RcinvRECVLOC: TStringField;
    RcinvPONO: TStringField;
    RcinvINVNO: TStringField;
    RcinvINVDATE: TDateField;
    RcinvCREDTM: TFloatField;
    RcinvINVDUE: TDateField;
    RcinvVATTYPE: TStringField;
    RcinvAPCODE: TStringField;
    RcinvOFFICCOD: TStringField;
    RcinvTNOPAY: TFloatField;
    RcinvTOTAL: TFloatField;
    RcinvDISCT: TFloatField;
    RcinvDISCAMT: TFloatField;
    RcinvNETAMT: TFloatField;
    RcinvBALANCE: TFloatField;
    RcinvVATRT: TFloatField;
    RcinvVATAMT: TFloatField;
    RcinvTOTCOST: TFloatField;
    RcinvPAID: TFloatField;
    RcinvTAXNO: TStringField;
    RcinvTAXDATE: TDateField;
    RcinvTAXREFNO: TStringField;
    RcinvFLAG: TStringField;
    RcinvMEMO1: TMemoField;
    RcinvUSERID: TStringField;
    RcinvTIME1: TDateTimeField;
    RcinvCANCELID: TStringField;
    RcinvCANDAT: TDateTimeField;
    RcinvPOSTGLDT: TDateTimeField;
    Rttran: TFDQuery;
    RttranRTNLOC: TStringField;
    RttranRTNNO: TStringField;
    RttranRTNDT: TDateField;
    RttranPARTNO: TStringField;
    RttranUPRICE: TFloatField;
    RttranQTYINV: TFloatField;
    RttranQTYRTN: TFloatField;
    RttranNETFL: TStringField;
    RttranNETPRC: TFloatField;
    RttranTOTPRC: TFloatField;
    RttranACCTNO: TStringField;
    RttranSERIALNO: TStringField;
    RttranUSERID: TStringField;
    RttranTIME1: TDateTimeField;
    RttranYEAR1: TStringField;
    RttranFLAG: TStringField;
    RttranCANCELID: TStringField;
    RttranCANDAT: TDateTimeField;
    RttranPOSTGLDT: TDateTimeField;
    RttranAVGCOST: TFloatField;
    RttranCOST: TFloatField;
    RttranTAXREFNO: TStringField;
    SoRttran: TDataSource;
    Rtinv: TFDTable;
    RtinvRTNLOC: TStringField;
    RtinvRTNNO: TStringField;
    RtinvRTNDT: TDateField;
    RtinvTAXREFNO: TStringField;
    RtinvTAXDT: TDateField;
    RtinvINVNO: TStringField;
    RtinvINVDT: TDateField;
    RtinvCREDNO: TStringField;
    RtinvCREDDT: TDateField;
    RtinvAPCODE: TStringField;
    RtinvOFFICCOD: TStringField;
    RtinvVATTYP: TStringField;
    RtinvTOTPRC: TFloatField;
    RtinvVATRT: TFloatField;
    RtinvVATAMT: TFloatField;
    RtinvNETPRC: TFloatField;
    RtinvTOTAL: TFloatField;
    RtinvFLAG: TStringField;
    RtinvMEMO1: TMemoField;
    RtinvTOTCOST: TFloatField;
    RtinvUSERID: TStringField;
    RtinvTIME1: TDateTimeField;
    RtinvCANCELID: TStringField;
    RtinvCANDAT: TDateTimeField;
    RtinvPOSTGLDT: TDateTimeField;
    AdjTran: TFDQuery;
    AdjTranADJNO: TStringField;
    AdjTranADJLOC: TStringField;
    AdjTranADJDATE: TDateField;
    AdjTranPARTNO: TStringField;
    AdjTranUCOST: TFloatField;
    AdjTranAVGCOST: TFloatField;
    AdjTranQTYORD: TFloatField;
    AdjTranQTYOUT: TFloatField;
    AdjTranQTYBOD: TFloatField;
    AdjTranNETCOST: TFloatField;
    AdjTranTOTCOST: TFloatField;
    AdjTranUSERID: TStringField;
    AdjTranTIME1: TDateTimeField;
    AdjTranYEAR1: TStringField;
    AdjTranFLAG: TStringField;
    SoAdjTran: TDataSource;
    Adjinv: TFDTable;
    AdjinvADJNO: TStringField;
    AdjinvADJLOC: TStringField;
    AdjinvADJDATE: TDateField;
    AdjinvOFFICCOD: TStringField;
    AdjinvTAXDATE: TDateField;
    AdjinvTAXNO: TStringField;
    AdjinvFLAG: TStringField;
    AdjinvMEMO1: TMemoField;
    AdjinvTOTCOST: TFloatField;
    AdjinvUSERID: TStringField;
    AdjinvTIME1: TDateTimeField;
    PkTran: TFDQuery;
    PkTranPKNO: TStringField;
    PkTranPARTNO: TStringField;
    PkTranUPRICE: TFloatField;
    PkTranQTYORD: TFloatField;
    PkTranQTYOUT: TFloatField;
    PkTranQTYBOD: TFloatField;
    PkTranNETFL: TStringField;
    PkTranREDU1: TFloatField;
    PkTranREDU2: TFloatField;
    PkTranREDU3: TFloatField;
    PkTranNETPRC: TFloatField;
    PkTranTOTPRC: TFloatField;
    PkTranACCTNO: TStringField;
    PkTranJOBNO: TStringField;
    PkTranSERIALNO: TStringField;
    PkTranPKDATE: TDateField;
    PkTranUSERID: TStringField;
    PkTranTIME1: TDateTimeField;
    PkTranPKLOCAT: TStringField;
    PkTranSERVCOD: TStringField;
    PkTranFRT: TFloatField;
    PkTranRTNPK: TStringField;
    PkTranFLAG: TStringField;
    PkTranSVCOLOR: TStringField;
    PkTranYEAR1: TStringField;
    PkTranCANDAT: TDateTimeField;
    PkTranBACKFLG: TStringField;
    PkTranCANCELID: TStringField;
    PkTranPOSTGLDT: TDateTimeField;
    PkTranAVGCOST: TFloatField;
    PkTranREFNO: TStringField;
    PkTranREFDAT: TDateField;
    SoPkTran: TDataSource;
    Pkinv: TFDTable;
    PkinvPKNO: TStringField;
    PkinvPKLOCAT: TStringField;
    PkinvPKDATE: TDateField;
    PkinvSALLEV: TStringField;
    PkinvVATTYPE: TStringField;
    PkinvCUSCOD: TStringField;
    PkinvOFFICCOD: TStringField;
    PkinvTOTPRC: TFloatField;
    PkinvDISCT: TFloatField;
    PkinvDISCAMT: TFloatField;
    PkinvNETAMT: TFloatField;
    PkinvBALANCE: TFloatField;
    PkinvVATRT: TFloatField;
    PkinvVATAMT: TFloatField;
    PkinvNETTOTAL: TFloatField;
    PkinvREFNO: TStringField;
    PkinvSVORD: TStringField;
    PkinvRTNPK: TStringField;
    PkinvREFDAT: TDateField;
    PkinvFLAG: TStringField;
    PkinvSTAT: TStringField;
    PkinvJOBNO: TStringField;
    PkinvMEMO1: TMemoField;
    PkinvTOTCOST: TFloatField;
    PkinvSVCOLOR: TStringField;
    PkinvUSERID: TStringField;
    PkinvTIME1: TDateTimeField;
    PkinvCANCELID: TStringField;
    PkinvCANDAT: TDateTimeField;
    PkinvPOSTGLDT: TDateTimeField;
    Mvtran: TFDQuery;
    MvtranMOVNO: TStringField;
    MvtranMOVFRM: TStringField;
    MvtranMOVTO: TStringField;
    MvtranPARTNO: TStringField;
    MvtranUPRICE: TFloatField;
    MvtranQTYMOV: TFloatField;
    MvtranTOTPRC: TFloatField;
    MvtranUSERID: TStringField;
    MvtranTIME1: TDateTimeField;
    MvtranYEAR1: TStringField;
    MvtranAVGCOST: TFloatField;
    SoMvTran: TDataSource;
    MvInv: TFDTable;
    MvInvMOVFRM: TStringField;
    MvInvMOVTO: TStringField;
    MvInvMOVDT: TDateField;
    MvInvMOVNO: TStringField;
    MvInvOFFICCOD: TStringField;
    MvInvAPPROVCD: TStringField;
    MvInvRECVCOD: TStringField;
    MvInvRECVDT: TDateField;
    MvInvTOTPRC: TFloatField;
    MvInvMEMO1: TMemoField;
    MvInvFLAG: TStringField;
    MvInvUSERID: TStringField;
    MvInvTIME1: TDateTimeField;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvGlowButton1: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure edLocatChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox4Click(Sender: TObject);
    procedure QInvanlsAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure SpinEdit1PropertiesChange(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure UpTaxno;
    procedure Upstkcard;
    procedure Process;
    procedure Upsale;
  public
    { Public declarations }
  end;

var
  Fupstock: TFupstock;
  Year, Month, Day: Word;

implementation

uses
  Dmic01, Functn01, Dmsec, uSrcDlg, uSoftfirm;
{$R *.DFM}

procedure TFupstock.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_2');
  Label4.Caption := '';
  DecodeDate(Now, Year, Month, Day);
  SpinEdit1.Value := Month;
  SpinEdit2.Value := Year;
  AdvGlowButton1.Enabled := True;
  EdLocat.Text := SFMain.Xlocat;
  EdLocat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TFupstock.Process;
var
  XOnlo, Xonhn, Onlo, onhn, Cost, PT, XDemn, Xsale: string;
  I, M, P: Longint;
  HBal, LBal, ONHQTY, Balqty, Sum1, Sum2: Double;
begin
  Label4.Caption := '';

  with Qlocat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD LIKE :0 ');
    Params[0].asstring := edLocat.Text + '%';
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;

  Qlocat.First;
  while not Qlocat.Eof do
  begin
    edLocat.Text := Qlocat.fieldbyname('Locatcd').Asstring;
    edLocat.Update;

    Gauge1.Visible := True;
    SaveBtn.Enabled := False;
    AdvGlowButton1.Enabled := False;

    QStkcard.UpdateOptions.RequestLive := True;

    QStkcard.UpdateOptions.RequestLive := False;
    with Qpart do
    begin
      Close;
      Sql.Clear;
      Sql.add('SELECT LOCAT AS LOC,PARTNO FROM INVANLS WHERE LOCAT=:0 AND ' +
        'YEAR1=:1 AND PARTNO LIKE :2');
      params[0].asstring := edLocat.text;
      params[1].asstring := Floattostr(SpinEdit2.Value);
      params[2].asstring := cxButtonEdit2.text + '%';
      Open;
    end;
    Gauge1.Maxvalue := Qpart.RecordCount;

    if not (Qpart.Bof and Qpart.Eof) then
    begin
      P := 1;
      Qpart.First;
      while not Qpart.Eof do
      begin
        Label4.Caption := Qpart.Fieldbyname('Partno').Asstring;
        Label4.Update;

        with QInvanls do
        begin
          Close;
          Sql.Clear;
          Sql.add('SELECT * FROM INVANLS WHERE LOCAT=:0 AND PARTNO=:1 AND YEAR1=:2');
          Params[0].asstring := Qpart.Fieldbyname('Loc').Asstring;
          Params[1].asstring := Qpart.Fieldbyname('Partno').Asstring;
          Params[2].asstring := Inttostr(SpinEdit2.Value);
          Open;
        end;
        if not (QInvanls.Bof and QInvanls.Eof) then
        begin
          if SpinEdit1.Value = 1 then
            M := 13
          else
            M := SpinEdit1.Value - 1;
          Xonhn := 'Onhn_' + inttostr(M);
          XOnlo := 'Allo_' + inttostr(M);

          HBal := QInvanls.Fieldbyname(Xonhn).Asfloat;
          LBal := QInvanls.Fieldbyname(XOnlo).Asfloat;

          for I := SpinEdit1.Value to 12 do
          begin
            onhn := 'Onhn_' + inttostr(I);
            Onlo := 'Allo_' + inttostr(I);

            with QStkcard do
            begin
              Close;
              Sql.Clear;
              Sql.Add('SELECT SUM(QTYIN)-SUM(QTYOUT) AS ONHQTY ' +
                'FROM STKCARD ' +
                'WHERE TAXNO IS NOT NULL ' +
                'AND LOC=:0 AND PARTNO=:1 AND (Month(TAXDATE)=:2) ' +
                'AND YEAR(TAXDATE)=:3');
              Params[0].Asstring := Qpart.Fieldbyname('Loc').asstring;
              Params[1].Asstring := QPart.Fieldbyname('Partno').asstring;
              Params[2].Asinteger := I;
              Params[3].Asinteger := SpinEdit2.Value;
              Open;
            end;
            HBal := HBal + QStkcard.Fieldbyname('ONHQTY').Asfloat;

            with QStkcard do
            begin
              Close;
              Sql.Clear;
              Sql.Add('SELECT V.LOCAT,V.PARTNO, ' +
                'SUM(V.QTYIN) QTYIN,SUM(V.QTYOUT) QTYOUT, ' +
                'SUM(V.QTYIN) - SUM(V.QTYOUT) BALQTY ' +
                'FROM VIEW_STKCARD_MAYO V ' +
                'WHERE V.LOCAT=V.LOCAT ' +
                'AND (V.LOCAT =:0) AND V.PARTNO =:1 ' +
                'AND (V.DOCDT BETWEEN ''2017-01-01'' AND :dt1) ' +
                'GROUP BY V.LOCAT,V.PARTNO ');
              Params[0].Asstring := Qpart.Fieldbyname('Loc').asstring;
              Params[1].Asstring := QPart.Fieldbyname('Partno').asstring;
              Params[2].AsDate := Date;
              Open;
            end;

            LBal := QStkcard.Fieldbyname('BALQTY').Asfloat;

            if QInvanls.State = Dsbrowse then
              QInvanls.Edit;
            QInvanls.Fieldbyname(onhn).Asfloat := HBal;
            QInvanls.Fieldbyname(Onlo).Asfloat := LBal;
          end;
          QInvanls.Post;
        end;

        Gauge1.Progress := P;
        P := P + 1;
        Qpart.Next;
      end;
    end;
    Qlocat.Next;
  end;
  SaveBtn.Enabled := True;
  Gauge1.Progress := 0;
  Label4.Visible := True;
end;

procedure TFupstock.UpTaxno;
var
  P: Longint;
begin
  Gauge1.forecolor := clFuchsia;
  Gauge1.Progress := 10;
  with query1 do
  begin
    close;
    sql.Clear;
    Sql.Add('Update Joborder set Ptaxno=''INVCLAIM'',taxdate=Paydate where status=''R'' ' +
      'and (Ptaxno Is Null or Ptaxno='''' or taxdate is null ) and ' +
      '(MONTH(RFINSHDT)=:EDIT2) AND (YEAR(RFINSHDT)=:EDIT3)');
    params[0].asfloat := SpinEdit1.Value;
    params[1].asfloat := SpinEdit2.Value;
    Execsql;
  end;
  // UPDATE ใบกำกับ จากศูนย์
  {With query1 do
  begin
    close;
    sql.Clear;
    Sql.Add('UPDATE STKCARD SET TAXDATE=(SELECT TAXDATE FROM JOBORDER '+
    'WHERE JOBNO=STKCARD.JOBNO AND STATUS=''R'')  '+
    'WHERE LOC=:EDIT AND NOT(JOBNO IS NULL) AND (TAXNO IS NULL OR TAXNO='''') AND '+
    'MONTH(STKDATE)=:EDIT2 AND YEAR(STKDATE)=:EDIT3 ');
    Params[0].asstring := edLocat.Text;
    params[1].asfloat  := SpinEdit1.Value;
    params[2].asfloat  := SpinEdit2.Value;

    Execsql;
  end;
  }
  Gauge1.Progress := 30;
 { With query1 do
  begin
    close;
    sql.Clear;
    Sql.Add('UPDATE STKCARD SET TAXNO=(SELECT PTAXNO FROM JOBORDER '+
    'WHERE JOBNO=STKCARD.JOBNO AND STATUS=''R'')  '+
    'WHERE LOC=:EDIT AND NOT(JOBNO IS NULL) AND (TAXNO IS NULL OR TAXNO='''') AND '+
    'MONTH(STKDATE)=:EDIT2 AND YEAR(STKDATE)=:EDIT3 ');
    Params[0].asstring := edLocat.Text;
    params[1].asfloat  := SpinEdit1.Value;
    params[2].asfloat  := SpinEdit2.Value;

    Execsql;
  end;
  }
  Gauge1.Progress := 50;
  // UPDATE ใบกำกับ จากหน้าร้าน
  with query1 do
  begin
    close;
    sql.Clear;
    Sql.Add('UPDATE STKCARD SET TAXDATE=(SELECT INVDATE FROM IC_INVOI ' +
      'WHERE PKNO=STKCARD.PKNO AND CANCELID IS NULL )  WHERE ' +
      'LOC=:EDIT1 AND (TAXNO IS NULL OR TAXNO='''') AND (FLAG=''1'' OR FLAG=''2'' OR FLAG=''T'') AND ' +
      'MONTH(STKDATE)=:EDIT2 AND YEAR(STKDATE)=:EDIT3 ');
    Params[0].asstring := edLocat.Text;
    params[1].asfloat := SpinEdit1.Value;
    params[2].asfloat := SpinEdit2.Value;

    Execsql;
  end;
  Gauge1.Progress := 75;

  with query1 do
  begin
    close;
    sql.Clear;
    Sql.Add('UPDATE STKCARD SET TAXNO=(SELECT INVNO FROM IC_INVOI ' +
      'WHERE PKNO=STKCARD.PKNO AND CANCELID IS NULL)  WHERE ' +
      'LOC=:EDIT1 AND (TAXNO IS NULL OR TAXNO='''') AND (FLAG=''1'' OR FLAG=''2'' OR FLAG=''T'') AND ' +
      'MONTH(STKDATE)=:EDIT2 AND YEAR(STKDATE)=:EDIT3 ');
    Params[0].asstring := edLocat.Text;
    params[1].asfloat := SpinEdit1.Value;
    params[2].asfloat := SpinEdit2.Value;

    Execsql;
  end;
  Gauge1.Progress := 100;
  Gauge1.Progress := 0;
  Gauge1.forecolor := clBlue;
end;

procedure TFupstock.edLocatChange(Sender: TObject);
begin
  AdvGlowButton1.Enabled := edLocat.Text <> '';
end;

procedure TFupstock.Upstkcard;
var
  P: Longint;
  Xflag: string;
  YY, MM, DD: Word;
begin
  Gauge1.forecolor := clred;
  with Query1 do
  begin
    close;
    Sql.Clear;
    if (cxButtonEdit2.text <> '') then
      Sql.Add('DELETE FROM STKCARD WHERE LOC=:EDIT1 AND ' +
        'MONTH(STKDATE)=:EDIT2 AND YEAR(STKDATE)=:EDIT3 AND PARTNO=:EDIT4 ')
    else
      Sql.Add('DELETE FROM STKCARD WHERE LOC=:EDIT1 AND ' +
        'MONTH(STKDATE)=:EDIT2 AND YEAR(STKDATE)=:EDIT3 ');

    params[0].asstring := edLocat.text;
    params[1].asfloat := SpinEdit1.Value;
    params[2].asfloat := SpinEdit2.Value;
    if (cxButtonEdit2.text <> '') then
      params[3].asstring := cxButtonEdit2.Text;
    EXECSQL;
  end;

  with QStkcard do
  begin
    close;
    Sql.Clear;
    Sql.Add('SELECT * FROM STKCARD WHERE LOC=:edit1 ');
    Params[0].asstring := '';
    open;
  end;

  Rcinv.Close;
  with Rctran do
  begin
    close;
    Sql.Clear;
    if (cxButtonEdit2.text <> '') then
      Sql.Add('SELECT * FROM RC_TRANS WHERE (RECVLOC=:EDIT) AND ' +
        '(MONTH(RECVDATE)=:cxButtonEdit2) AND (YEAR(RECVDATE)=:EDIT3) AND PARTNO =:EDIT4 ')
    else
      Sql.Add('SELECT * FROM RC_TRANS WHERE (RECVLOC=:EDIT) AND ' +
        '(MONTH(RECVDATE)=:cxButtonEdit2) AND (YEAR(RECVDATE)=:EDIT3) ');
    params[0].asstring := edLocat.text;
    params[1].asfloat := SpinEdit1.Value;
    params[2].asfloat := SpinEdit2.Value;
    if (cxButtonEdit2.text <> '') then
      params[3].asstring := cxButtonEdit2.Text;

    OPEN;
  end;

  Rcinv.Open;
  Rctran.First;
  while not Rctran.Eof do
  begin
    QStkcard.Insert;
    QStkcard.Fieldbyname('Loc').Asstring := RcinvRECVLOC.Asstring;
    QStkcard.Fieldbyname('Partno').Asstring := RctranPARTNO.Asstring;
    QStkcard.Fieldbyname('Stkdate').Asdatetime := RctranRECVDATE.Asdatetime;
    QStkcard.Fieldbyname('Qtyin').AsFloat := RctranQTYRECV.Asfloat;
    QStkcard.Fieldbyname('Qtyout').AsFloat := 0;
    QStkcard.Fieldbyname('Pkno').Asstring := RctranRECVNO.Asstring;
    QStkcard.Fieldbyname('Taxno').Asstring := RcinvINVNO.Asstring;
    QStkcard.Fieldbyname('TaxDate').Asdatetime := RctranRECVDATE.Asdatetime;
    QStkcard.Fieldbyname('Netcost').AsFloat := RctranNETCOST.Asfloat - FRound((RctranVATCOST.Asfloat / RctranQTYRECV.AsFloat), 2);
    QStkcard.Fieldbyname('Avgcost').AsFloat := RctranAVGCOST.Asfloat;
    QStkcard.Fieldbyname('OFFICCOD').Asstring := RcinvOFFICCOD.Asstring;
    QStkcard.Fieldbyname('Cuscod').Asstring := RcinvAPCODE.Asstring;
    QStkcard.Fieldbyname('Year1').Asstring := RctranYEAR1.Asstring;
    QStkcard.Fieldbyname('Flag').Asstring := RctranFLAG.Asstring;
    QStkcard.Fieldbyname('Userid').Asstring := RctranUSERID.Asstring;
    QStkcard.Fieldbyname('TIME1').Asdatetime := RctranTIME1.Asdatetime;
    QStkcard.Post;
    Rctran.Next;
  end;
  Gauge1.Progress := 10;

  Rtinv.Close;
  with Rttran do
  begin
    close;
    Sql.Clear;
    if (cxButtonEdit2.text <> '') then
      Sql.Add('SELECT * FROM RT_TRAN WHERE RTNLOC=:EDIT AND ' +
        'MONTH(RTNDT)=:cxButtonEdit2 AND YEAR(RTNDT)=:EDIT3 AND PARTNO=:EDIT4')
    else
      Sql.Add('SELECT * FROM RT_TRAN WHERE RTNLOC=:EDIT AND ' +
        'MONTH(RTNDT)=:cxButtonEdit2 AND YEAR(RTNDT)=:EDIT3 ');
    params[0].asstring := edLocat.text;
    params[1].asfloat := SpinEdit1.Value;
    params[2].asfloat := SpinEdit2.Value;
    if (cxButtonEdit2.text <> '') then
      params[3].asstring := cxButtonEdit2.Text;
    OPEN;
  end;
  Rtinv.Open;

  Rttran.First;
  while not Rttran.Eof do
  begin
    QStkcard.Insert;
    QStkcard.Fieldbyname('Loc').Asstring := RtinvRTNLOC.Asstring;
    QStkcard.Fieldbyname('Partno').Asstring := RttranPARTNO.Asstring;
    QStkcard.Fieldbyname('Stkdate').Asdatetime := RttranRTNDT.Asdatetime;
    if RtinvFlag.AsString = '6' then
    begin
      QStkcard.Fieldbyname('Qtyin').AsFloat := 0;
      QStkcard.Fieldbyname('Qtyout').AsFloat := RttranQTYRTN.Asfloat;
    end;
    if RtinvFlag.AsString = '7' then
    begin
      QStkcard.Fieldbyname('Qtyin').AsFloat := RttranQTYRTN.Asfloat;
      QStkcard.Fieldbyname('Qtyout').AsFloat := 0;
    end;

    QStkcard.Fieldbyname('Pkno').Asstring := RttranRTNNO.Asstring;
    QStkcard.Fieldbyname('Taxno').Asstring := RtinvCredNO.Asstring;
    QStkcard.Fieldbyname('TaxDate').Asdatetime := RttranRTNDT.Asdatetime;
    QStkcard.Fieldbyname('Netcost').AsFloat := Rttrancost.Asfloat;
    QStkcard.Fieldbyname('Avgcost').AsFloat := RttranAVGCOST.Asfloat;
    QStkcard.Fieldbyname('Netprc').AsFloat := RtTranUprice.Asfloat;
    QStkcard.Fieldbyname('OFFICCOD').Asstring := RtinvOFFICCOD.Asstring;
    QStkcard.Fieldbyname('Cuscod').Asstring := RtinvAPCODE.Asstring;
    QStkcard.Fieldbyname('Year1').Asstring := RttranYEAR1.Asstring;
    QStkcard.Fieldbyname('Flag').Asstring := RttranFLAG.Asstring;
    QStkcard.Fieldbyname('Userid').Asstring := RttranUSERID.Asstring;
    QStkcard.Fieldbyname('TIME1').Asdatetime := RttranTIME1.Asdatetime;
    QStkcard.Post;
    Rttran.Next;
  end;
  Gauge1.Progress := 30;

  Adjinv.Close;
  with AdjTran do
  begin
    close;
    Sql.Clear;
    if (cxButtonEdit2.text <> '') then
      Sql.Add('SELECT * FROM ADJ_TRANS WHERE ADJLOC=:EDIT AND ' +
        'MONTH(ADJDATE)=:cxButtonEdit2 AND YEAR(ADJDATE)=:EDIT3 AND PARTNO=:EDIT4 ')
    else
      Sql.Add('SELECT * FROM ADJ_TRANS WHERE ADJLOC=:EDIT AND ' +
        'MONTH(ADJDATE)=:cxButtonEdit2 AND YEAR(ADJDATE)=:EDIT3 ');
    params[0].asstring := edLocat.text;
    params[1].asfloat := SpinEdit1.Value;
    params[2].asfloat := SpinEdit2.Value;
    if (cxButtonEdit2.text <> '') then
      params[3].asstring := cxButtonEdit2.Text;

    OPEN;
  end;
  Adjinv.Open;

  AdjTran.First;
  while not Adjtran.Eof do
  begin
    QStkcard.Insert;
    QStkcard.Fieldbyname('Loc').Asstring := AdjinvADJLOC.Asstring;
    QStkcard.Fieldbyname('Partno').Asstring := AdjTranPARTNO.Asstring;
    QStkcard.Fieldbyname('Stkdate').Asdatetime := AdjTranADJDATE.Asdatetime;
    if AdjTranQTYOUT.Asfloat > 0 then
    begin
      QStkcard.Fieldbyname('Qtyin').AsFloat := AdjTranQTYOUT.Asfloat;
      QStkcard.Fieldbyname('Qtyout').AsFloat := 0;
    end
    else
    begin
      QStkcard.Fieldbyname('Qtyin').AsFloat := 0;
      QStkcard.Fieldbyname('Qtyout').AsFloat := Abs(AdjTranQTYOUT.Asfloat);
    end;

    QStkcard.Fieldbyname('Pkno').Asstring := AdjTranADJNO.Asstring;
    QStkcard.Fieldbyname('Taxno').Asstring := AdjTranADJNO.Asstring;
    QStkcard.Fieldbyname('TaxDate').Asdatetime := AdjTranADJDATE.Asdatetime;
    QStkcard.Fieldbyname('Netcost').AsFloat := AdjTranUCOST.Asfloat;
    QStkcard.Fieldbyname('Avgcost').AsFloat := AdjTranAVGCOST.Asfloat;
    QStkcard.Fieldbyname('OFFICCOD').Asstring := AdjinvOFFICCOD.Asstring;
    QStkcard.Fieldbyname('Cuscod').Asstring := 'ADJ';
    QStkcard.Fieldbyname('Year1').Asstring := AdjTranYEAR1.Asstring;
    QStkcard.Fieldbyname('Flag').Asstring := AdjTranFLAG.Asstring;
    QStkcard.Fieldbyname('Userid').Asstring := AdjTranUSERID.Asstring;
    QStkcard.Fieldbyname('TIME1').Asdatetime := AdjTranTIME1.Asdatetime;
    QStkcard.Post;
    AdjTran.Next;
  end;
  Gauge1.Progress := 50;

  PkTran.Close;
  Pkinv.Close;
  with PkTran do
  begin
    close;
    Sql.Clear;
    if (cxButtonEdit2.text <> '') then
      Sql.Add('SELECT * FROM PK_TRANS WHERE PKLOCAT=:EDIT AND ' +
        'MONTH(PKDATE)=:cxButtonEdit2 AND YEAR(PKDATE)=:EDIT3 AND PARTNO=:EDIT4')
    else
      Sql.Add('SELECT * FROM PK_TRANS WHERE PKLOCAT=:EDIT AND ' +
        'MONTH(PKDATE)=:cxButtonEdit2 AND YEAR(PKDATE)=:EDIT3 ');
    params[0].asstring := edLocat.text;
    params[1].asfloat := SpinEdit1.Value;
    params[2].asfloat := SpinEdit2.Value;
    if (cxButtonEdit2.text <> '') then
      params[3].asstring := cxButtonEdit2.Text;

    OPEN;
  end;
  Pkinv.Open;
  PkTran.First;
  while not PkTran.Eof do
  begin
    Xflag := PkinvFlag.Asstring;
    QStkcard.Insert;
    QStkcard.Fieldbyname('Loc').Asstring := PkTranPKLOCAT.Asstring;
    QStkcard.Fieldbyname('Partno').Asstring := PkTranPARTNO.Asstring;
    QStkcard.Fieldbyname('Stkdate').Asdatetime := PkTranPKDATE.Asdatetime;
    if (Xflag = '1') or (Xflag = '2') or (Xflag = '3') or (Xflag = 'B') then
    begin
      QStkcard.Fieldbyname('Qtyout').AsFloat := PkTranQTYOUT.Asfloat;
      QStkcard.Fieldbyname('Qtyin').AsFloat := 0;
    end;
    if (Xflag = 'R') or (Xflag = 'S') then
    begin
      QStkcard.Fieldbyname('Qtyout').AsFloat := 0;
      QStkcard.Fieldbyname('Qtyin').AsFloat := PkTranQTYOUT.Asfloat;
    end;

    QStkcard.Fieldbyname('Pkno').Asstring := PkTranPKNO.Asstring;
    if PkTranREFNO.Asstring <> '' then
    begin
      QStkcard.Fieldbyname('Taxno').Asstring := PkTranREFNO.Asstring;
      QStkcard.Fieldbyname('TaxDate').Asdatetime := PkTranREFDAT.Asdatetime;
    end;
    QStkcard.Fieldbyname('Netcost').AsFloat := PkTranAVGCOST.Asfloat;
    QStkcard.Fieldbyname('Avgcost').AsFloat := PkTranAVGCOST.Asfloat;
    QStkcard.Fieldbyname('Netprc').AsFloat := PkTranNetprc.Asfloat;
    QStkcard.Fieldbyname('OFFICCOD').Asstring := PkinvOFFICCOD.Asstring;
    QStkcard.Fieldbyname('Cuscod').Asstring := PkinvCUSCOD.Asstring;
    QStkcard.Fieldbyname('jobno').Asstring := PkTranJobno.Asstring;
    QStkcard.Fieldbyname('Year1').Asstring := PkTranYEAR1.Asstring;
    QStkcard.Fieldbyname('Flag').Asstring := PkTranFLAG.Asstring;
    QStkcard.Fieldbyname('Userid').Asstring := PkTranUSERID.Asstring;
    QStkcard.Fieldbyname('TIME1').Asdatetime := PkTranTIME1.Asdatetime;
    QStkcard.Post;
    PkTran.Next;
  end;
  Gauge1.Progress := 70;

  Mvtran.Close;
  MvInv.Close;
  with Mvtran do
  begin
    close;
    Sql.Clear;
    if (cxButtonEdit2.text <> '') then
      Sql.Add('SELECT * FROM MV_TRANS WHERE MOVFRM=:EDIT AND ' +
        'YEAR1 =:EDIT3 AND PARTNO=:EDIT4')
    else
      Sql.Add('SELECT * FROM MV_TRANS WHERE MOVFRM=:EDIT AND ' +
        'YEAR1 =:EDIT3 ');
    params[0].asstring := edLocat.text;
    params[1].asstring := Floattostr(SpinEdit2.Value);
    if (cxButtonEdit2.text <> '') then
      params[2].asstring := cxButtonEdit2.Text;

    OPEN;
  end;
  MvInv.Open;

  Mvtran.First;
  while not Mvtran.Eof do
  begin
    DecodeDate(MvinvMovdt.Asdatetime, YY, MM, DD);

    if (YY = SpinEdit2.Value) and (MM = SpinEdit1.Value) then
    begin
      QStkcard.Insert;
      QStkcard.Fieldbyname('Loc').Asstring := MvtranMovFrm.AsString;
      QStkcard.Fieldbyname('Partno').Asstring := MvtranPARTNO.Asstring;
      QStkcard.Fieldbyname('Stkdate').Asdatetime := MvinvMovdt.Asdatetime;
      QStkcard.Fieldbyname('Qtyin').AsFloat := 0;
      QStkcard.Fieldbyname('Qtyout').AsFloat := MvtranQTYMOV.Asfloat;
      QStkcard.Fieldbyname('Pkno').Asstring := MvinvMovno.Asstring;
      QStkcard.Fieldbyname('Taxno').Asstring := MvinvMovno.Asstring;
      QStkcard.Fieldbyname('TaxDate').Asdatetime := MvinvMovdt.Asdatetime;
      QStkcard.Fieldbyname('Netcost').AsFloat := MvtranAVGCOST.Asfloat;
      QStkcard.Fieldbyname('Avgcost').AsFloat := MvtranAVGCOST.Asfloat;
      QStkcard.Fieldbyname('OFFICCOD').Asstring := MvinvOfficcod.Asstring;
      QStkcard.Fieldbyname('Cuscod').Asstring := MvinvMovTo.Asstring;
      QStkcard.Fieldbyname('Year1').Asstring := MvtranYEAR1.Asstring;
      QStkcard.Fieldbyname('Flag').Asstring := 'T';
      QStkcard.Fieldbyname('Userid').Asstring := MvtranUSERID.Asstring;
      QStkcard.Fieldbyname('TIME1').Asdatetime := MvtranTIME1.Asdatetime;
      QStkcard.Post;
    end;
    Mvtran.Next;
  end;

  Gauge1.Progress := 100;
  Gauge1.Progress := 0;
  Gauge1.forecolor := clBlue;
end;

procedure TFupstock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Qpart.Close;
  Action := Cafree;
  Fupstock := nil;
end;

procedure TFupstock.CheckBox4Click(Sender: TObject);
begin
  AdvGlowButton1.Enabled := CheckBox4.Checked;
  edLocat.Enabled := not CheckBox4.Checked;
  if CheckBox4.Checked then
    edLocat.Text := '';
end;

procedure TFupstock.QInvanlsAfterPost(DataSet: TDataSet);
begin
  dm_sec.HI_DBMS.StartTransaction;
  try
    if QInvanls.Active then
      if (QInvanls.ApplyUpdates = 0) then
        QInvanls.CommitUpdates
      else
        raise Exception.Create(QInvanls.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TFupstock.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
    VK_F7:
      begin
        CheckBox1.Visible := True;
        CheckBox5.Visible := True;
      end;
  end;
end;

procedure TFupstock.CheckBox1Click(Sender: TObject);
begin
 { If CheckBox1.Checked Then
     cxButtonEdit2.Text:='';
     cxButtonEdit2.Enabled := Not CheckBox1.Checked; }
end;

procedure TFupstock.Upsale;
var
  XOnlo, Xonhn, Onlo, onhn, Cost, PT, XDemn, Xsale: string;
  I, M, P: Longint;
  HBal, LBal, ONHQTY, Balqty, Sum1, Sum2: Double;
begin
  Label4.Caption := '';
  with Qlocat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD Like :EDIT ');
    Params[0].asstring := edLocat.Text + '%';
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;
  Qlocat.First;
  while not Qlocat.Eof do
  begin
    edLocat.Text := Qlocat.fieldbyname('Locatcd').Asstring;
    edLocat.Update;

    Gauge1.Visible := True;
    SaveBtn.Enabled := False;
    AdvGlowButton1.Enabled := False;
   //
    QStkcard.UpdateOptions.RequestLive := True;

    QStkcard.UpdateOptions.RequestLive := False;
    with Qpart do
    begin
      Close;
      Sql.Clear;
      if (cxButtonEdit2.text <> '') or (CheckBox3.Checked) then
      begin
        Sql.add('SELECT LOCAT AS LOC,PARTNO FROM INVANLS WHERE LOCAT=:EDIT1 AND ' +
          'YEAR1=:EDIT3 AND PARTNO LIKE :PT');
        params[0].asstring := edLocat.text;
        params[1].asstring := Floattostr(SpinEdit2.Value);
        params[2].asstring := cxButtonEdit2.text + '%';
      end
      else
      begin
        Sql.add('SELECT LOC,PARTNO FROM STKCARD WHERE LOC=:EDIT1 AND ' +
          '((MONTH(STKDATE)=:cxButtonEdit2 AND YEAR(STKDATE)=:EDIT3) OR ' +
          '(MONTH(TAXDATE)=:EDIT4 AND YEAR(TAXDATE)=:EDIT5)) ' +
          ' GROUP BY LOC,PARTNO');
        params[0].asstring := edLocat.text;
        params[1].asfloat := SpinEdit1.Value;
        params[2].asfloat := SpinEdit2.Value;
        params[3].asfloat := SpinEdit1.Value;
        params[4].asfloat := SpinEdit2.Value;
      end;
      Open;
    end;
    Gauge1.Maxvalue := Qpart.RecordCount;

    if not (Qpart.Bof and Qpart.Eof) then
    begin
      P := 1;
      Qpart.First;
      while not Qpart.Eof do
      begin
        Label4.Caption := Qpart.Fieldbyname('Partno').Asstring;
        Label4.Update;
        XDemn := 'DEMN_' + inttostr(SpinEdit1.Value);
        Xsale := 'SALE_' + inttostr(SpinEdit1.Value);

        with QInvanls do
        begin
          Close;
          Sql.Clear;

          Sql.add('SELECT LOCAT,PARTNO,YEAR1,' + XDemn + ',' + Xsale + ' FROM INVANLS WHERE LOCAT=:EDIT1 AND PARTNO=:cxButtonEdit2 AND YEAR1=:EDIT3');

          Params[0].asstring := Qpart.Fieldbyname('Loc').Asstring;
          Params[1].asstring := Qpart.Fieldbyname('Partno').Asstring;
          Params[2].asstring := Inttostr(SpinEdit2.Value);
          Open;
        end;
        if not (QInvanls.Bof and QInvanls.Eof) then
        begin
          Sum1 := 0;
          Sum2 := 0;
          with Query1 do
          begin
            Close;
            Sql.Clear;
            Sql.Add('SELECT SUM(QTYORD) AS ORD,SUM(QTYOUT) AS OUT FROM IC_TRANS WHERE INVLOC=:EDIT1 AND ' +
              'MONTH(INVDATE)=:cxButtonEdit2 AND YEAR(INVDATE)=:EDIT3 AND PARTNO=:EDIT4 AND FLAG<>''T'' ');
            params[0].asstring := Qpart.Fieldbyname('Loc').asstring;
            params[1].asfloat := SpinEdit1.Value;
            params[2].asFloat := SpinEdit2.Value;
            params[3].asstring := QPart.Fieldbyname('Partno').asstring;
            Open;
          end;
          Sum1 := Query1.Fieldbyname('ORD').Asfloat;
          Sum2 := Query1.Fieldbyname('OUT').Asfloat;
          with Query1 do
          begin
            Close;
            Sql.Clear;
            Sql.Add('SELECT SUM(QTY) AS OUT FROM PARTTRAN WHERE LOCAT=:EDIT1 AND ' +
              'MONTH(PKDATE)=:cxButtonEdit2 AND YEAR(PKDATE)=:EDIT3 AND PARTNO=:EDIT4');
            params[0].asstring := Qpart.Fieldbyname('Loc').asstring;
            params[1].asfloat := SpinEdit1.Value;
            params[2].asFloat := SpinEdit2.Value;
            params[3].asstring := QPart.Fieldbyname('Partno').asstring;
            Open;
          end;
          Sum1 := Sum1 + Query1.Fieldbyname('OUT').Asfloat;
          Sum2 := Sum2 + Query1.Fieldbyname('OUT').Asfloat;
          if QInvanls.State = Dsbrowse then
            QInvanls.Edit;
          QInvanls.Fieldbyname(XDemn).Asfloat := Sum1;
          QInvanls.Fieldbyname(Xsale).Asfloat := Sum2;

          QInvanls.Post;
        end;

        Gauge1.Progress := P;
        P := P + 1;
        Qpart.Next;
      end;
    end;
    Qlocat.Next;
  end;
  SaveBtn.Enabled := True;
  Gauge1.Progress := 0;
  Label4.Visible := True;
  //edLocatChange;
end;

procedure TFupstock.edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    edLocat.Text := fSrcDlg.Keyno;
end;

procedure TFupstock.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    cxButtonEdit2.Text := fSrcDlg.Keyno;
end;

procedure TFupstock.SpinEdit1PropertiesChange(Sender: TObject);
begin
  if CheckBox4.Checked then
    edLocat.Text := '';
  AdvGlowButton1.Enabled := (CheckBox4.Checked) or (edLocat.Text <> '');
  Label4.Caption := '';
end;

procedure TFupstock.AdvGlowButton1Click(Sender: TObject);
var
  K: Longint;
begin
  if CheckBox5.Checked then
    for K := SpinEdit1.Value to 12 do
    begin
      SpinEdit1.Value := K;
      SpinEdit1.Update;
      Process;
    end
  else
    Process;
  SaveBtn.Enabled := True;
  AdvGlowButton1.Enabled := True;
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'FILE08_4', 'UPDATE', 'Update(Stock)');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFupstock.SaveBtnClick(Sender: TObject);
var
  K: Longint;
begin
  if CheckBox5.Checked then
    for K := SpinEdit1.Value to 12 do
    begin
      SpinEdit1.Value := K;
      SpinEdit1.Update;
      Upsale;
    end
  else
    Upsale;
  SaveBtn.Enabled := True;
  AdvGlowButton1.Enabled := True;
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'FILE08_4', 'UPDATE', 'Update(Sale)');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFupstock.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFupstock.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

