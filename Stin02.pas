unit STIn02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, Mask, ComCtrls, DB,
  Dbkbd, Math, ToolWin, ImgList, System.ImageList;

type
  TFmSTIn02 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label21: TLabel;
    Edit1: TEdit;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    Label26: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label13: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    DBGrid1: TDBGrid;
    NextBtn: TBitBtn;
    DBEdit12: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit24: TDBEdit;
    DataSource1: TDataSource;
    DeleBtn: TBitBtn;
    AddBtn1: TBitBtn;
    DataSource2: TDataSource;
    SpeedButton3: TSpeedButton;
    DBkbd1: TDBkbd;
    DBText1: TDBText;
    Label10: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label11: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    CampBtn: TBitBtn;
    DBCheckBox2: TDBCheckBox;
    Label17: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    KitBtn: TBitBtn;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    CloseBtn: TToolButton;
    PrnBtn: TToolButton;
    SpeedButton2: TToolButton;
    speedButton1: TToolButton;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure insBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
//    procedure DBComboBox1Click(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure AddBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit1BtnClick(Sender: TObject);
    procedure DBEdit7BtnClick(Sender: TObject);
    procedure DBEdit3BtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FldCombo2BtnClick(Sender: TObject);
    procedure DBRadioGroup3Click(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CampBtnClick(Sender: TObject);
    procedure FldCombo3BtnClick(Sender: TObject);
    procedure FldCombo3Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure KitBtnClick(Sender: TObject);
    procedure FldCombo4BtnClick(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowCust;
    procedure ShowGride;
    procedure Getclaim;
  public
    { Public declarations }
    XEditpric, XEditdisc, XPKNO, NALLOW: string;
  end;

var
  FmSTIn02: TFmSTIn02;
  Smnettot: Double;
  NmPart, Cgroup, XCampno, XGroup: string;
  QTYOut, AvCost: Double;
  XDate: TdateTime;
  Xyear, Xmonth, XDay: Word;

implementation

uses
  Dmic01, Stprn50, Dlginvms, Functn01, DmSet1, StHpRp, Setar, SrchDlg, uSrcDlg,
  Dlgbarcd, Stprn60, HlpPtKit, USoftFirm;

{$R *.DFM}

procedure TFmSTIn02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FmDmic01.Pkinv.State in Dseditmodes then
    SFMain.RaiseException('กรุณากดปุ่ม ยกเลิก และ ออก ตามขั้นตอน ');

  FmDmic01.Pkinv.Close;   {Dmic01 Close ส่วนที่เหลือ}
  FmDmic01.QDBConfig.Close;
  Action := Cafree;
  FmStin02 := nil;
end;

procedure TFmSTIn02.insBtnClick(Sender: TObject);
begin
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := '';
    if not FmDmic01.Pkinv.Prepared then
      FmDmic01.Pkinv.Prepare;
    OPEN;
    INSERT;
  end;

  with FmDmic01.PKtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := '';
    if not FmDmic01.PKtran.Prepared then
      FmDmic01.PKtran.Prepare;
    OPEN;
  end;
  Edit1.Text := '';
end;

procedure TFmSTIn02.CancBtnClick(Sender: TObject);
begin
  Edit1.text := '';
  if FmDmic01.Pkinv.State in Dseditmodes then
    FmDmic01.Pkinv.Cancel;
end;

procedure TFmSTIn02.SaveBtnClick(Sender: TObject);
var
  S, L: string;
begin
  if FmDmic01.CountFound > 1 then
    SFMain.RaiseException('รหัสสินค้าซ้ำ #' + FmDmic01.DoupPart + ' กรุณาลบก่อน');

  if FmDmic01.PkTran.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  S := FmDmic01.PkinvPKNO.Asstring;
  L := FmDmic01.PkinvPKLocat.Asstring;
  FmDmic01.Pkinv.Post;
  //
  if CheckBox1.Checked then
  begin
    //Application.CreateForm(TFmSTIn03,FmSTIn03);
    //FmSTIn03.insBtnClick(Sender);
    with FmDmic01.Icinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
      PARAMS[0].ASSTRING := '';
      OPEN;
      INSERT;
    end;
    FmDmic01.IcinvFLAG.Asstring := '1';
    FmDmic01.IcinvVATTYPE.Asstring := '2';
    FmDmic01.Desctax := 'ขายสินค้าเงินสดให้ลูกค้า #' + FmDmic01.Pkinv.Fieldbyname('Cuscod').Asstring;
    //
    FmDmic01.IcinvPKNO.Asstring := FmDmic01.Pkinv.Fieldbyname('PKNO').Asstring;
    FmDmic01.IcinvInvdate.AsDatetime := FmDmic01.Pkinv.Fieldbyname('Pkdate').AsDatetime;
    FmDmic01.IcinvINVLOC.Asstring := L;
    FmDmic01.IcinvCUSCOD.Asstring := FmDmic01.Pkinv.Fieldbyname('Cuscod').Asstring;
    FmDmic01.IcinvDisct.AsFloat := FmDmic01.Pkinv.Fieldbyname('DISCT').AsFloat;
    FmDmic01.Icinvvatrt.AsFloat := FmDmic01.Pkinv.Fieldbyname('Vatrt').AsFloat;
    FmDmic01.IcinvVATTYPE.AsString := FmDmic01.Pkinv.Fieldbyname('VATTYPE').AsString;
    FmDmic01.IcinvEXDISAMT.AsFloat := FmDmic01.Pkinv.Fieldbyname('EXDISAMT').AsFloat;
    FmDmic01.IcinvDISBATH.Asstring := FmDmic01.Pkinv.Fieldbyname('DISBATH').Asstring;
    FmDmic01.IcinvOfficcod.Asstring := FmDmic01.Pkinv.Fieldbyname('Officcod').Asstring;
    FmDmic01.IcinvCredtm.AsFloat := 0;
    FmDmic01.IcinvInvdue.AsDatetime := FmDmic01.Pkinv.Fieldbyname('Pkdate').AsDatetime;
    //
    with FmDmic01.QPkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO=:XPKNO ');
      PARAMS[0].AsString := FmDmic01.IcinvPKNO.Asstring;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบเลขที่ใบเบิก');
    end;

   { With FmDmic01.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_trans where PKNO =:XPKNO ');
      Params[0].Asstring := FmDmic01.IcinvPKNO.Asstring;
      Open;
    end;
    }
    if not (FmDmic01.PKtran.Bof and FmDmic01.PKtran.Eof) then
    begin
      // Clear Buffer Ictran
      with FmDmic01.Ictran do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:XINVNO');
        PARAMS[0].ASSTRING := '';
        OPEN;
      end;

      //
      FmDmic01.PKtran.First;
      while not FmDmic01.PKtran.Eof do
      begin
        if FmDmic01.PKtran.Fieldbyname('QtyOut').AsFloat > 0 then
        begin
          FmDmic01.IcTran.Insert;
          FmDmic01.IctranNETFL.Asstring := FmDmic01.PKtran.Fieldbyname('Netfl').Asstring;
          FmDmic01.IctranYear1.Asstring := FmDmic01.PKtran.Fieldbyname('Year1').Asstring;
          FmDmic01.IctranPARTNO.Asstring := FmDmic01.PKtran.Fieldbyname('PARTNO').Asstring;
          FmDmic01.IctranFREE.Asstring := FmDmic01.PKtran.Fieldbyname('FREE').Asstring;
          FmDmic01.IctranGROUP1.Asstring := FmDmic01.PKtran.Fieldbyname('GROUP1').Asstring;
          FmDmic01.IctranDiscamt.Asfloat := FmDmic01.PKtran.Fieldbyname('Discamt').Asfloat;
          FmDmic01.IctranQTYORD.AsFloat := FmDmic01.PKtran.Fieldbyname('QtyOrd').AsFloat;
          FmDmic01.IctranQTYOUT.AsFloat := FmDmic01.PKtran.Fieldbyname('QtyOut').AsFloat;
          FmDmic01.IctranUPRICE.AsFloat := FmDmic01.PKtran.Fieldbyname('UPRICE').AsFloat;
          FmDmic01.IctranNetPRC.AsFloat := FmDmic01.PKtran.Fieldbyname('NetPRC').AsFloat;
          FmDmic01.IctranAVGCost.AsFloat := FmDmic01.PKtran.Fieldbyname('AVGCOST').AsFloat;
          FmDmic01.IcTranREDU1.AsFloat := FmDmic01.PKtran.Fieldbyname('REDU1').AsFloat;
          FmDmic01.IctranTotPRC.AsFloat := FmDmic01.IctranNetPRC.AsFloat *
            FmDmic01.IctranQTYOUT.AsFloat;
          FmDmic01.IcTran.Post;
        end;
        FmDmic01.PKtran.Next;
      end;

      FmDmic01.Icinv.Post;
    //
      with FmDmic01.QArpaytrn1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILNO ');
        Params[0].Asstring := FmDmic01.IcinvTAXREFNO.Asstring;
        Open;
        if FmDmic01.QArpaytrn1.Bof and FmDmic01.QArpaytrn1.Eof then
          Insert;
      end;
      with FmDmic01.Qtmpicinv do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
        PARAMS[0].ASSTRING := FmDmic01.IcinvINVNO.Asstring;
        OPEN;
        if Bof and Eof then
          SFMain.RaiseException('ไม่พบใบส่งของ/ใบกำกับ');
      end;

      FmDmic01.QArpaytrn1.Post;
    end;
    //FmSTIn03.Close;
    with FmDmic01.Pkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := S;
      OPEN;
    end;
    //--print Form--
    Application.CreateForm(TFmStprn60, FmStprn60);
    FmStprn60.Label6.caption := FmDmic01.IcinvINVNO.Asstring;
    FmStprn60.Fopt := 'IC';
    FmStprn60.ShowModal;
  end;
end;

procedure TFmSTIn02.DBGrid1ColExit(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  XQtyBK, Redu: Double;
  Allo, Cost, LVPrice: string;
begin
  SetRoundMode(rmNearest);

  Xdate := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);
  Label11.Caption := '';
  if FmDmic01.PkTranUpdatestatus.Value = 'Inserted' then
  begin
    if FmDmic01.PkTran.State = Dsbrowse then
      FmDmic01.PkTran.Edit;

    if FmDmic01.PkinvCUSCOD.asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');

    if (DbGrid1.SelectedField.FieldName) = 'PARTNO' then
    begin
      if FmDmic01.CountFound > 1 then
        SFMain.RaiseException('รหัสสินค้าซ้ำ #' + FmDmic01.DoupPart + ' กรุณาลบก่อน');

      if FmDmic01.PkTranPartno.asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้า');

      with FmDmic01.Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
        PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
        PARAMS[1].ASSTRING := FmDmic01.PkinvPKLOCAT.asstring;
        Open;
      end;

      if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
      begin
        Application.CreateForm(TFsvmast, Fsvmast);
        with Fsvmast.Hquery1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO LIKE :XPARTNO AND LOCAT=:XLOC');
          PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring + '%';
          PARAMS[1].ASSTRING := FmDmic01.PkinvPKLOCAT.asstring;
          Open;
        end;
        if (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) then
        begin
          Fsvmast.Close;
          SFMain.RaiseException('ไม่พบรหัสสินค้า');
        end
        else
        begin
          if Fsvmast.Showmodal = mrok then
            FmDmic01.PkTranPartno.asstring := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
          Fsvmast.Close;
        end;
      end;
    //
      with FmDmic01.Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
          'LOCAT = :Edit2');
        PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
        PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
        Open;
        if Bof and Eof then
          SFMain.RaiseException('ไม่พบรหัสสินค้า');
      end;
      if FmDmic01.Query1.Fieldbyname('GROUP1').Asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึกกลุ่มสินค้าในแฟ้มสาขา ' + FmDmic01.PkTranPklocat.asstring);

      FmDmic01.PkTranGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
      DBEdit9.Text := FmDmic01.Query1.Fieldbyname('Desc1').Asstring;
    //
      FmDmic01.PkTranREDU1.AsFloat := FmDmic01.PkinvDisct.AsFloat;
      FmDmic01.PkTranCampno.Asstring := FmDmic01.PkinvCampno.Asstring;
      if FmDmic01.PkinvCampno.Asstring <> '' then
      begin
        if FmDmic01.PkTranGROUP1.Asstring <> XGroup then
        begin
          FmDmic01.PkTranREDU1.AsFloat := 0;
          FmDmic01.PkTranCampno.Asstring := '';
        end;
        if FmDmic01.PkTranCampno.Asstring <> '' then
          FmDmic01.PkTranCamFlg.Asstring := 'Y'
        else
          FmDmic01.PkTranCamFlg.Asstring := 'N';
      end;
    end;

    if (DbGrid1.SelectedField.FieldName) = 'QTYORD' then
    begin
      if FmDmic01.PkTranQtyord.AsFloat = 0 then
        SFMain.RaiseException('จำนวนเป็น 0');

    // **** ส่วนลด BMW  ****
      if DBRadioGroup3.Itemindex = 3 then
      begin
        with FmDmic01.Query4 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT *  FROM DISCGRP WHERE SLCODE=:0 AND ARCODE=:1 AND GROUPCOD=:2');
          PARAMS[0].ASSTRING := FmDmic01.PkinvSALTYPE.asstring;
          PARAMS[1].ASSTRING := CGROUP;
          PARAMS[2].ASSTRING := FmDmic01.PkTranGROUP1.Asstring;
          Open;
          if not (Bof and Eof) then
            FmDmic01.PkTranREDU1.AsFloat := FmDmic01.Query4.Fieldbyname('Ardisc').AsFloat;
        end;
      end;

      with FmDmic01.Query2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
          'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
        Params[0].Asstring := FmDmic01.PkTranPartno.asstring;
        Params[1].Asstring := FmDmic01.PkTranPkLocat.asstring;
        Params[2].Asstring := Inttostr(Xyear);
        Open;
      end;
//      LVPrice := 'Price' + DBEdit5.text;
      if CheckBox2.Checked then
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat
      else
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;

      FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;

      Label11.Caption := 'ยอดคงเหลือ : ' + Floattostr(FmDmic01.Query2.FieldByName(Allo).AsFloat);
     // Case สินค้าไม่พอ
      if FmDmic01.Query2.FieldByName(Allo).AsFloat < FmDmic01.PktranQTYORD.AsFloat then
      begin
        MessageBeep(0);
        if FmDmic01.Query2.FieldByName(Allo).AsFloat > 0 then
          FmDmic01.PktranQTYOUT.AsFloat := FmDmic01.Query2.FieldByName(Allo).AsFloat;

        FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;

       //Case ไม่มีสินค้าทดแทน
        if FmDmic01.Query1.FieldByName('Code_T').AsString = '' then
        begin
          Showmessage(' จำนวนสินค้าไม่พอจ่าย ');
          NmPart := '';
        end
        else       // Case มี สินค้าทดแทน
        begin
          with FmDmic01.Query3 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
              'LOCAT = :Edit2');
            PARAMS[0].ASSTRING := FmDmic01.Query1.FieldByName('Code_T').AsString;
            PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
            Open;
          end;
          if not (FmDmic01.Query3.Bof and FmDmic01.Query3.Eof) then
          begin
            NmPart := FmDmic01.Query3.FieldByName('Partno').AsString;
            QTYOut := FmDmic01.PktranQTYORD.AsFloat - FmDmic01.PktranQTYOUT.AsFloat;
            Avcost := FmDmic01.Query2.FieldByName(Cost).AsFloat;
          end
          else
            Showmessage(' รหัสทดแทนไม่มีในแฟ้มข้อมูล ');
        end;
      end
      else     // Case มีสินค้าพอ
      begin
        NmPart := '';
        FmDmic01.PkTranQTYOUT.AsFloat := FmDmic01.PktranQTYORD.AsFloat;
        FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;
      end;
      if FmDmic01.PktranAvgcost.AsFloat = 0 then
      begin
        DBGrid1.Setfocus;
        DBGrid1.SelectedIndex := 0;
        SFMain.RaiseException('ต้นทุนเฉลี่ยเป็น 0 กรุณาแก้ไขให้ถูกต้องก่อน');
      end;
    end;

    if (DbGrid1.SelectedField.FieldName) = 'QTYOUT' then
    begin
      if (NAllow = 'Y') and (FmDmic01.PktranQTYOUT.AsFloat > FmDmic01.Query2.FieldByName(Allo).AsFloat) then
      begin
        DBGrid1.Setfocus;
        DBGrid1.SelectedIndex := 0;
        SFMain.RaiseException('ในระบบ Setup ไม่อนุญาตให้สต็อกติดลบ');
      end;
      if FmDmic01.PktranQTYOUT.AsFloat = 0 then
        if Messagedlg('ต้องการ Back Order หรือไม่ ?', Mtconfirmation, [mbNO, mbOk], 0) = MrOk then
          FmDmic01.PktranBACKFLG.Asstring := 'Y'
        else
        begin
          DBGrid1.Setfocus;
          DBGrid1.SelectedIndex := 0;
          SFMain.RaiseException('จำนวนจ่ายเป็น 0');
        end;
    end;

    if (DbGrid1.SelectedField.FieldName) = 'BACKFLG' then
    begin
      if (UpperCase(FmDmic01.PKtranBACKFLG.Asstring) <> 'Y') and
        (UpperCase(FmDmic01.PKtranBACKFLG.Asstring) <> '') then
        SFMain.RaiseException('Y:Back Order หรือ ว่าง :ไม่ Back Order');
      if UpperCase(FmDmic01.PKtranBACKFLG.Asstring) = 'Y' then
        FmDmic01.PktranBACKFLG.Asstring := Uppercase(FmDmic01.PktranBACKFLG.Asstring);
    end;

    if (DbGrid1.SelectedField.FieldName) = 'FREE' then
    begin
      if (UpperCase(FmDmic01.PKtranFree.Asstring) <> 'Y') and
        (UpperCase(FmDmic01.PKtranFree.Asstring) <> 'N') then
        SFMain.RaiseException('Y:ฟรี หรือ N:คิดเงิน ');
      FmDmic01.PktranFree.Asstring := Uppercase(FmDmic01.PktranFree.Asstring);
      Dbgrid1.Columns[6].Readonly := (XEditpric <> 'Y') or (UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y');
    end;

    if FmDmic01.PKtranNETFL.Asstring = 'N' then
    begin
      Dbgrid1.Columns[7].Readonly := True;
      Dbgrid1.Columns[8].Readonly := True;
      Dbgrid1.Columns[9].Readonly := True;
      FmDmic01.PkTranREDU1.AsFloat := 0;
    end
    else
    begin
      Dbgrid1.Columns[7].Readonly := XEditDisc <> 'Y';
      Dbgrid1.Columns[8].Readonly := (XEditDisc <> 'Y') or (DBCheckBox1.Checked);
      Dbgrid1.Columns[9].Readonly := (XEditDisc <> 'Y') or (DBCheckBox1.Checked);
    end;

    if not DBCheckBox1.Checked then
    begin
      if (DbGrid1.SelectedField.FieldName = 'REDU1') or
        (DbGrid1.SelectedField.FieldName = 'REDU2') or
        (DbGrid1.SelectedField.FieldName = 'REDU3') or
        (DbGrid1.SelectedField.FieldName = 'UPRICE')
        then
      begin
        if (FmDmic01.PktranUprice.AsFloat = 0) then
        begin
          DBGrid1.Setfocus;
          DBGrid1.SelectedIndex := 0;
          SFMain.RaiseException('ราคาขายเป็น 0 ตรวจสอบอีกครั้ง');
        end;
      // ตรวจสอบการลดตาม Maxdisc
        Redu := FmDmic01.PktranRedu1.Asfloat + FmDmic01.PktranRedu2.Asfloat +
          FmDmic01.PktranRedu3.Asfloat;
        if (Redu > FmDmic01.Query1.FieldByName('Maxdisc').Asfloat) and
          (FmDmic01.Query1.FieldByName('Maxdisc').Asfloat > 0) then
        begin
          MessageBeep(0);
          MessageDlg('ลดเกินอัตรา Maximum Discount  '#13 +
            'ระบบจะปรับให้ส่วนลดตามที่ Set ไว้', Mtinformation, [mbok], 0);
          FmDmic01.PktranRedu1.Asfloat := FmDmic01.Query1.FieldByName('Maxdisc').Asfloat;
          FmDmic01.PktranRedu2.Asfloat := 0;
          FmDmic01.PktranRedu3.Asfloat := 0;
        end;
       //
        if (FmDmic01.PktranUprice.AsFloat < FmDmic01.Query2.FieldByName(Cost).AsFloat) and
          (UpperCase(FmDmic01.PKtranFree.Asstring) <> 'Y') and
          (FmDmic01.Query1.FieldByName('CHARGFLG').Asstring <> 'Y') then
        begin
          MessageBeep(0);
          Messagedlg('เตือน : ราคาขายต่ำกว่าต้นทุน', mtwarning, [mbok], 0);
        end;
        Pric1 := FRound((FmDmic01.PktranUPrice.Asfloat * (FmDmic01.PktranRedu1.Asfloat / 100)), 2);
        SmPric1 := FmDmic01.PktranUPrice.Asfloat - Pric1;
        Pric2 := FRound(SmPric1 * (FmDmic01.Pktranredu2.Asfloat / 100), 2);
        SmPric2 := SmPric1 - Pric2;
        Pric3 := FRound(SmPric2 * (FmDmic01.Pktranredu3.Asfloat / 100), 2);
        SmPric3 := SmPric2 - Pric3;
        FmDmic01.PktranNetprc.AsFloat := SmPric3;
        if UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y' then
          FmDmic01.PktranNetprc.AsFloat := 0;

        FmDmic01.PktranTotPrc.AsFloat := FRound((FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat), 2);
      end;
    end
    else if (DbGrid1.SelectedField.FieldName = 'DISCAMT') then
    begin
      FmDmic01.PktranNetprc.AsFloat := FmDmic01.PktranUPrice.Asfloat -
        FmDmic01.PktranDiscamt.AsFloat;

      if UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y' then
        FmDmic01.PktranNetprc.AsFloat := 0;

      FmDmic01.PktranTotPrc.AsFloat := FRound((FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat), 2);
    end;
  end
  else
  begin
    DBGrid1.Setfocus;
    DBGrid1.SelectedIndex := 0;
    SFMain.RaiseException('หากต้องการแก้ไขให้ลบรายการ แล้วบันทึกใหม่');
  end;
end;

procedure TFmSTIn02.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete);
  Enqbtn.Enabled := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Enabled := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Enabled := SavBtn.Enabled;
  //
  NextBtn.Enabled := (DataSource1.Dataset.State in DsEditModes);
  DeleBtn.Enabled := NextBtn.Enabled;
  AddBtn1.Enabled := NextBtn.Enabled;
  PrnBtn.Enabled := DataSource1.Dataset.State = DsBrowse;
  CampBtn.Enabled := (SavBtn.Enabled); //and (FldCombo3.Text <> '');
  KitBtn.Enabled := SavBtn.Enabled;

  DBRadioGroup1.ReadOnly := not (DataSource1.Dataset.State = DsInsert);
  DBRadioGroup2.ReadOnly := DBRadioGroup1.ReadOnly;
  DBRadioGroup3.ReadOnly := DBRadioGroup1.ReadOnly;
  DBCheckBox1.ReadOnly := DBRadioGroup1.ReadOnly;
  DBCheckBox2.ReadOnly := not CampBtn.Enabled;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
//      if (Components[N] is TFldedit) and (TFldedit(Components[N]).Tag = 0) then
//      begin
//        TFldedit(Components[N]).Readonly := True;
//        TFldedit(Components[N]).Color := clSilver;
//      end;
//      if (Components[N] is TFldCombo) and (TFldCombo(Components[N]).Tag = 0) then
//      begin
//        TFldCombo(Components[N]).Readonly := True;
//        TFldCombo(Components[N]).Color := clSilver;
//      end;
//      if (Components[N] is TJcombo) and (TJcombo(Components[N]).Tag = 0) then
//      begin
//        TJcombo(Components[N]).Enabled := False;
//        TJcombo(Components[N]).Color := clSilver;
//      end;
      if (Components[N] is TDBMemo) and (TDBMemo(Components[N]).Tag = 0) then
      begin
        TDBMemo(Components[N]).Readonly := True;
        TDBMemo(Components[N]).Color := clSilver;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
//      if (Components[N] is TFldedit) and (TFldedit(Components[N]).Tag = 0) then
//      begin
//        TFldedit(Components[N]).Readonly := False;
//        TFldedit(Components[N]).Color := clWhite;
//      end;
//      if (Components[N] is TFldCombo) and (TFldCombo(Components[N]).Tag = 0) then
//      begin
//        TFldCombo(Components[N]).Readonly := False;
//        TFldCombo(Components[N]).Color := clWhite;
//      end;
//      if (Components[N] is TJcombo) and (TJcombo(Components[N]).Tag = 0) then
//      begin
//        TJcombo(Components[N]).Enabled := True;
//        TJcombo(Components[N]).Color := clWhite;
//      end;
      if (Components[N] is TDBMemo) and (TDBMemo(Components[N]).Tag = 0) then
      begin
        TDBMemo(Components[N]).Readonly := False;
        TDBMemo(Components[N]).Color := clWhite;
      end;
    end;
  end;

  if (FmDmic01.PkinvRefno.Asstring <> '') then
  begin
    Label10.Visible := True;
    DBkbd1.AllowEditing := False;
    TabSheet1.Enabled := False;
    DBgrid1.ReadOnly := True;
    FmDmic01.Pkinv.Cancel;

    NextBtn.Enabled := False;
    DeleBtn.Enabled := False;
    AddBtn1.Enabled := False;
  end
  else
  begin
    Label10.Visible := False;
    DBkbd1.AllowEditing := True;
    TabSheet1.Enabled := True;
    TabSheet2.Enabled := True;
    DBgrid1.ReadOnly := False;

    NextBtn.Enabled := True;
    DeleBtn.Enabled := True;
    AddBtn1.Enabled := True;
  end;
  //
  if not FmDmic01.QDBConfig.Active then
    FmDmic01.QDBConfig.Open;
//  DBEdit2.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_PK').asstring = 'Y';
//
//  DBEdit1.Enabled := SFMain.XLevel = '1';
//  FldEdit1.Readonly := XEditDisc <> 'Y';
  DBEdit6.Readonly := XEditDisc <> 'Y';
end;

procedure TFmSTIn02.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := '1';
  if fSrcDlg.ShowModalpk = Mrok then
  begin
    with FmDmic01.Pkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := fSrcDlg.KeyNo;
      OPEN;
    end;
    XCampno := FmDmic01.Pkinv.Fieldbyname('CAMPNO').asstring;

    with FmDmic01.Query2 do
    begin
      close;
      sql.clear;
      sql.add('select cuscod,snam,name1,name2 from armast ' +
        'WHERE (cuscod =:EDIT1) ORDER BY cuscod ');
      Params[0].AsString := FmDmic01.PkinvCusCod.AsString;
      OPEN;
      Edit1.Text := FmDmic01.Query2.FieldByname('SNAM').Asstring + ' ' +
        FmDmic01.Query2.FieldByname('NAME1').Asstring + '   ' +
        FmDmic01.Query2.FieldByname('NAME2').Asstring;
    end;

    with FmDmic01.PKtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := FmDmic01.PkinvPkno.Asstring;
      OPEN;
    end;
    ShowGride;
  end;
  DataSource1StateChange(DataSource1);
end;

procedure TFmSTIn02.delBtnClick(Sender: TObject);
begin
  if FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring <> '' then
    SFMain.RaiseException('ออกใบส่งของ/ใบกำกับภาษีแล้ว #' + FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring);

  if MessageDlg('แน่ใจหรือไม่ที่จะลบข้อมูล ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
    FmDmic01.Pkinv.delete;
  Edit1.Text := '';
end;

procedure TFmSTIn02.DBRadioGroup1Click(Sender: TObject);
begin
{   If DBRadioGroup1.ItemIndex = 0 then
      FmDmic01.PkinvVATTYPE.Asstring := '1';
   If DBRadioGroup1.ItemIndex = 1 then
      FmDmic01.PkinvVATTYPE.Asstring := '2'; }
end;

procedure TFmSTIn02.DeleBtnClick(Sender: TObject);
begin
  FmDmic01.Pktran.delete;
end;

procedure TFmSTIn02.DBGrid1EditButtonClick(Sender: TObject);
var
  LVPrice: string;
begin
  if FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกระดับราคาขาย');

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
      Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('PKLOCAT').Asstring;
      Params[1].Asstring := fSrcDlg.KeyNo;
      Open;
      if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
        SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;
    LVPrice := 'Price' + FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring;
    FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
    FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
    FmDmic01.PktranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
  end;
end;

procedure TFmSTIn02.AddBtn1Click(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  Allo, Cost, LVPrice: string;
begin
  Xdate := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);

  Application.CreateForm(TFmSTHpRp, FmSTHpRp);
  with FmSTHpRp.QBkord do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.PKNO,A.CUSCOD,B.PKNO,B.PARTNO,B.QTYORD-B.QTYOUT AS QTYBOD, ' +
      'B.BACKFLG,B.YEAR1,A.PKDATE,C.CUSCOD,C.SNAM,C.NAME1, ' +
      'C.NAME2 FROM PK_INVOI A,PK_TRANS B,ARMAST C ' +
      'WHERE (A.CUSCOD=:CUSCOD) AND (A.PKNO = B.PKNO) ' +
      'AND (B.BACKFLG = ''Y'') AND (A.CUSCOD = C.CUSCOD) ');
    Params[0].Asstring := FmDmic01.PkinvCuscod.asstring;
    Open;
  end;
  if FmSTHpRp.QBkord.eof and FmSTHpRp.QBkord.bof then
    SFMain.RaiseException('ไม่มีข้อมูล ');

  FmSTHpRp.EDIT1.TEXT := FmSTHpRp.QBkordCUSCOD.AsString;
  FmSTHpRp.EDIT2.TEXT := FmSTHpRp.QBkordSnam.AsString +
    FmSTHpRp.QBkordNAME1.AsString + '  ' +
    FmSTHpRp.QBkordNAME2.AsString;
  if FmSTHpRp.ShowModal = MrOk then
  begin
    FmSTHpRp.QBkord.First;
    while not (FmSTHpRp.QBkord.Eof) do
    begin
      FmDmic01.Pktran.Append;

      FmDmic01.PktranPARTNO.Asstring := FmSTHpRp.QBkordPartno.Asstring;
      FmDmic01.PktranQtyord.Asfloat := FmSTHpRp.QBkordQtyBod.Asfloat;
      FmDmic01.PktranQtyOUT.Asfloat := FmSTHpRp.QBkordQtyBod.Asfloat;

      with FmDmic01.Query2 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
          'LOCAT = :Edit2');
        PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
        PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
        Open;
      end;

      if not (FmDmic01.Query2.Eof and FmDmic01.Query2.Bof) then
      begin
//        LVPrice := 'Price' + DBEdit5.text;
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query2.Fieldbyname(LVPrice).AsFloat;
        FmDmic01.PktranNetFl.Asstring := FmDmic01.Query2.Fieldbyname('NETPRC').Asstring;
        FmDmic01.PktranGroup1.Asstring := FmDmic01.Query2.Fieldbyname('Group1').Asstring;
      end;

      with FmDmic01.Query3 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT *  FROM INVANLS WHERE PARTNO =:XPARTNO AND ' +
          'LOCAT = :Edit2 AND YEAR1 =:Xyear');
        PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
        PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
        Params[2].Asstring := Inttostr(Xyear);
        Open;
      end;

      FmDmic01.PktranRTNPK.Asstring := FmSTHpRp.QBkordPKno.Asstring;
      FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query3.FieldByName(Cost).AsFloat;

      if (FmDmic01.Query3.FieldByName(Allo).AsFloat > FmDmic01.PktranQTYORD.AsFloat) or (NAllow = 'N') then
        FmDmic01.PktranQtyout.Asfloat := FmDmic01.PktranQtyord.Asfloat
      else
      begin
        if FmDmic01.Query3.FieldByName(Allo).AsFloat >= 0 then
          FmDmic01.PktranQtyout.Asfloat := FmDmic01.Query3.FieldByName(Allo).AsFloat
        else
          FmDmic01.PktranQtyout.Asfloat := 0;
        MessageBeep(0);
      end;

      if FmDmic01.PKtranNETFL.Asstring = 'N' then
      begin
        FmDmic01.PkTranREDU1.AsFloat := 0;
        FmDmic01.PkTranREDU2.AsFloat := 0;
        FmDmic01.PkTranREDU3.AsFloat := 0;
      end;

      Pric1 := (FmDmic01.PktranUPrice.value * (FmDmic01.PktranRedu1.value / 100));
      SmPric1 := FmDmic01.PktranUPrice.value - Pric1;
      Pric2 := SmPric1 * (FmDmic01.Pktranredu2.value / 100);
      SmPric2 := SmPric1 - Pric2;
      Pric3 := SmPric2 * (FmDmic01.Pktranredu3.value / 100);
      SmPric3 := SmPric2 - Pric3;
      FmDmic01.PktranNetprc.AsFloat := SmPric3;
      FmDmic01.PktranTotPrc.AsFloat := FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat;
      FmDmic01.Pktran.post;

      FmSTHpRp.QBkord.Next;
    end;
  end;
end;

procedure TFmSTIn02.SpeedButton3Click(Sender: TObject);
begin
  SFMain.Check_right('SYS04', 'ICM160');
  Application.CreateForm(TSetupar, Setupar);
//  Setupar.KeyCuscod := DBEdit3.Text;
  Setupar.Showmodal;
end;

procedure TFmSTIn02.DBEdit1BtnClick(Sender: TObject);
begin
  if FmDmic01.Pkinv.State = DsBrowse then
    Exit;

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
  begin
    FmDmic01.PkinvPKLOCAT.Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TFmSTIn02.DBEdit7BtnClick(Sender: TObject);
begin
  if FmDmic01.Pkinv.State = DsBrowse then
    Exit;

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
  begin
    FmDmic01.PkinvOFFICCOD.Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TFmSTIn02.DBEdit3BtnClick(Sender: TObject);
begin
  if FmDmic01.Pkinv.State = DsBrowse then
    Exit;

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAR = Mrok then
  begin
//    DBEdit3.Text := fSrcDlg.KeyNo;
    ShowCust;
  end;
end;

procedure TFmSTIn02.PrnBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFmStprn50, FmStprn50);
//  FmStprn50.Label6.caption := DBEdit2.text;
  FmStprn50.ShowModal;
end;

procedure TFmSTIn02.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
{   If (Key = #13) then
   With TDBGrid(ActiveControl) Do
      If Selectedindex = 0 Then
      begin
         If FmDmic01.Pktran.State in [DsInsert] Then
         begin
           FmDmic01.Pktran.Append;
           If NmPart <> '' Then
           begin
             FmDmic01.PktranPartno.AsString := NmPart;
             FmDmic01.PktranQTYORD.AsFloat  := QTYOut;
             FmDmic01.PktranAvgcost.AsFloat := Avcost;
           end;
         end;
      end;    }
end;

procedure TFmSTIn02.FormCreate(Sender: TObject);
begin
  XEditpric := 'N';
  XEditdisc := 'N';
  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Editpric,EditDisc FROM PASSWRD WHERE USERID =:XEdit');
    PARAMS[0].ASSTRING := SFMain.Xuser_id;
    OPEN;
    XEditpric := FmDmic01.Query1.Fieldbyname('Editpric').Asstring;
    XEditdisc := FmDmic01.Query1.Fieldbyname('EditDisc').Asstring;
  end;
  PageControl1.ActivePage := TabSheet1;

  if not FmDmic01.CondPay.Active then
    FmDmic01.CondPay.Open;
  NAllow := FmDmic01.CondPay.Fieldbyname('NStkLob').Asstring; {ไม่ยอมให้สต็อกติดลบ?}

  if FmDmic01.CondPay.Fieldbyname('Saltype').Asstring = 'Y' then
    FmDmic01.Flag_a := '2'
  else
    FmDmic01.Flag_a := '1';

  if FmDmic01.CondPay.Fieldbyname('Disbath').Asstring = 'Y' then
  begin
    Dbgrid1.Columns[7].Title.Caption := 'ส่วนลดบาท';
    Dbgrid1.Columns[7].Fieldname := 'DISCAMT';
    Dbgrid1.Columns[7].Width := 60;
    Dbgrid1.Columns[8].Title.Caption := 'Null';
    Dbgrid1.Columns[9].Title.Caption := 'Null';
    Dbgrid1.Columns[8].Readonly := True;
    Dbgrid1.Columns[9].Readonly := True;
    Dbgrid1.Columns[8].Width := 25;
    Dbgrid1.Columns[9].Width := 25;
  end
  else
  begin
    Dbgrid1.Columns[7].Title.Caption := '% ลด1';
    Dbgrid1.Columns[7].Fieldname := 'REDU1';
    Dbgrid1.Columns[8].Title.Caption := '% ลด2';
    Dbgrid1.Columns[8].Fieldname := 'REDU2';
    Dbgrid1.Columns[9].Title.Caption := '% ลด3';
    Dbgrid1.Columns[9].Fieldname := 'REDU3';

    Dbgrid1.Columns[7].Width := 35;
    Dbgrid1.Columns[8].Readonly := False;
    Dbgrid1.Columns[9].Readonly := False;
    Dbgrid1.Columns[8].Width := 35;
    Dbgrid1.Columns[9].Width := 35;
  end
end;

procedure TFmSTIn02.DBEdit3Exit(Sender: TObject);
begin
//  if (DBEdit3.Text <> '') and (Edit1.Text = '') then
    ShowCust;
end;

procedure TFmSTIn02.FldCombo2BtnClick(Sender: TObject);
begin
  if FmDmic01.Pkinv.State = DsBrowse then
    Exit;

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalSaltype = Mrok then
    FmDmic01.PkinvSaltype.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn02.DBRadioGroup3Click(Sender: TObject);
begin
  if (FmDmic01.Pkinv.State in Dseditmodes) then
    FmDmic01.PkinvDisct.asfloat := 0;
  case DBRadioGroup3.Itemindex of
    0:
      begin
//        if DBedit3.Text = '' then
//        begin
//          DBedit3.Setfocus;
//          SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
//        end;
//        with FmDmic01.Query1 do
//        begin
//          Close;
//          Sql.Clear;
//          Sql.Add('SELECT CUSCOD,DISCT FROM ARMAST WHERE CUSCOD=:EDIT');
//          Params[0].Asstring := DBEDIT3.TEXT;
//          Open;
//          if not (Bof and Eof) and (FmDmic01.Pkinv.State in Dseditmodes) then
//            FmDmic01.PkinvDisct.asfloat := FmDmic01.Query1.Fieldbyname('Disct').Asfloat;
//        end;
      end;
    1:
      begin
//        if FldCombo2.Text = '' then
//        begin
//          FldCombo2.Setfocus;
//          SFMain.RaiseException('ยังไม่บันทึกประเภทการขาย');
//        end;
//        with FmDmic01.Query1 do
//        begin
//          Close;
//          Sql.Clear;
//          Sql.Add('SELECT * FROM SALTYPE WHERE SLCODE=:EDIT');
//          Params[0].Asstring := FldCombo2.Text;
//          Open;
//          if not (Bof and Eof) and (FmDmic01.Pkinv.State in Dseditmodes) then
//            FmDmic01.PkinvDisct.asfloat := FmDmic01.Query1.Fieldbyname('SLDisc').Asfloat;
//        end;
      end;
    2:
      begin
//        if DBedit3.Text = '' then
//        begin
//          DBedit3.Setfocus;
//          SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
//        end;
//        with FmDmic01.Query1 do
//        begin
//          Close;
//          Sql.Clear;
//          Sql.Add('SELECT ARCODE,ARDISC FROM ARGROUP WHERE ARCODE=:EDIT');
//          Params[0].Asstring := CGROUP;
//          Open;
//          if not (Bof and Eof) and (FmDmic01.Pkinv.State in Dseditmodes) then
//            FmDmic01.PkinvDisct.asfloat := FmDmic01.Query1.Fieldbyname('ARDisc').Asfloat
//          else
//            SFMain.RaiseException('ยังไม่ Set รหัสกลุ่ม');
//        end;
      end;
    3:
      begin
//        if FmDmic01.Pkinv.State in Dseditmodes then
//          FmDmic01.PkinvDisct.asfloat := 0;
//
//        if DBedit3.Text = '' then
//        begin
//          DBedit3.Setfocus;
//          SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
//        end;
//        if FldCombo2.Text = '' then
//        begin
//          FldCombo2.Setfocus;
//          SFMain.RaiseException('ยังไม่บันทึกประเภทการขาย');
//        end;
      end;
  end;
end;

procedure TFmSTIn02.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
//  if ((Sender as TPageControl).ActivePage = TabSheet1) then
//    AllowChange := (DBEdit3.Text <> '')
//  else
//    AllowChange := True;
end;

procedure TFmSTIn02.DBGrid1Enter(Sender: TObject);
begin
//  if DBRadioGroup3.Itemindex = 3 then
//    if (DBedit3.Text = '') or (FldCombo2.Text = '') then
//    begin
//      MessageBeep(0);
//      SFMain.RaiseException('ยังบันทึกรหัสลูกค้า หรือ ประเภทขายไม่ครบ'#13 + 'กรณีเลือกส่วนลดข้อ D.');
//    end;
//  DBkbd1.Disable := True;
end;

procedure TFmSTIn02.DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowGride;
end;

procedure TFmSTIn02.DBGrid1Exit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TFmSTIn02.FormShow(Sender: TObject);
begin
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := XPKNO;
    OPEN;
  end;
end;

procedure TFmSTIn02.ShowCust;
begin
  with Dm_Set1.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT cuscod,Snam,Name1,Name2,CGroup,Disct FROM ARMAST WHERE CUSCOD = :CUSCOD');
//    PARAMS[0].ASSTRING := DBedit3.Text;
    Open;
    if not (Bof and Eof) then
    begin
      if (DBRadioGroup3.Itemindex = 0) and (FmDmic01.Pkinv.State in Dseditmodes) then
        FmDmic01.PkinvDisct.asfloat := Dm_Set1.Query1.Fieldbyname('Disct').Asfloat;

      Cgroup := Dm_Set1.Query1.Fieldbyname('CGroup').Asstring;
      if (FmDmic01.Pkinv.State in Dseditmodes) then
        FmDmic01.PkinvCuscod.asstring := Dm_Set1.Query1.Fieldbyname('cuscod').Asstring;

      edit1.text := Dm_Set1.Query1.Fieldbyname('snam').Asstring + ' ' +
        Dm_Set1.Query1.Fieldbyname('name1').Asstring + ' ' +
        Dm_Set1.Query1.Fieldbyname('name2').Asstring;
    end;
  end;
end;

procedure TFmSTIn02.ShowGride;
begin
  if DBCheckBox1.Checked then
  begin
    Dbgrid1.Columns[7].Title.Caption := 'ส่วนลดบาท';
    Dbgrid1.Columns[7].Fieldname := 'DISCAMT';
    Dbgrid1.Columns[7].Width := 60;
    Dbgrid1.Columns[8].Title.Caption := 'Null';
    Dbgrid1.Columns[9].Title.Caption := 'Null';
    Dbgrid1.Columns[8].Readonly := True;
    Dbgrid1.Columns[9].Readonly := True;
    Dbgrid1.Columns[8].Width := 25;
    Dbgrid1.Columns[9].Width := 25;
  end
  else
  begin
    Dbgrid1.Columns[7].Title.Caption := '% ลด1';
    Dbgrid1.Columns[7].Fieldname := 'REDU1';
    Dbgrid1.Columns[8].Title.Caption := '% ลด2';
    Dbgrid1.Columns[8].Fieldname := 'REDU2';
    Dbgrid1.Columns[9].Title.Caption := '% ลด3';
    Dbgrid1.Columns[9].Fieldname := 'REDU3';

    Dbgrid1.Columns[7].Width := 35;
    Dbgrid1.Columns[8].Readonly := False;
    Dbgrid1.Columns[9].Readonly := False;
    Dbgrid1.Columns[8].Width := 35;
    Dbgrid1.Columns[9].Width := 35;
  end
end;

procedure TFmSTIn02.CampBtnClick(Sender: TObject);
var
  Allo: string;
  Xqty: Double;
begin
  if MessageDlg('ต้องการจ่ายอะไหล่ตามแคมเปญ Setup ? ', Mtconfirmation, [Mbyes, Mbno], 0) = Mryes then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO=:Edit1 ');
      Params[0].Asstring := FmDmic01.PkinvCampno.Asstring;
      Open;
    end;
    if not (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
    begin
      FmDmic01.Query1.First;
      while not (FmDmic01.Query1.Eof) do
      begin
        Xdate := FmDmic01.PkinvPkdate.AsDateTime;
        DecodeDate(XDate, XYear, XMonth, XDay);
        Allo := 'Allo_' + inttostr(XMonth);

        with FmDmic01.Query2 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Allo + ' FROM INVANLS WHERE ' +
            'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
          Params[0].Asstring := FmDmic01.Query1.FieldByName('PARTNO').Asstring;
          Params[1].Asstring := FmDmic01.PkinvPkLocat.asstring;
          Params[2].Asstring := Inttostr(Xyear);
          Open;
        end;
        if not (FmDmic01.Query2.Eof and FmDmic01.Query2.Bof) then
        begin
          FmDmic01.Pktran.Append;
          FmDmic01.Pktran.FieldByName('PARTNO').AsString := FmDmic01.Query1.FieldByName('PARTNO').Asstring;
          if FmDmic01.Query2.Fieldbyname(Allo).Asfloat >= FmDmic01.Query1.FieldByName('QTY').AsFloat then
          begin
            FmDmic01.Pktran.FieldByName('QTYORD').Asfloat := FmDmic01.Query1.FieldByName('QTY').Asfloat;
            FmDmic01.Pktran.FieldByName('QTYOUT').Asfloat := FmDmic01.Query1.FieldByName('QTY').Asfloat;
          end
          else
          begin
            FmDmic01.Pktran.FieldByName('QTYORD').Asfloat := FmDmic01.Query1.FieldByName('QTY').Asfloat;
            FmDmic01.Pktran.FieldByName('QTYOUT').AsFloat := FmDmic01.Query2.Fieldbyname(Allo).Asfloat;
            Messagedlg('จำนวนสินค้าไม่พอ จะจ่ายให้เท่าที่มีในสต็อก ', Mtwarning, [mbok], 0);
          end;
          FmDmic01.Pktran.FieldByName('REDU1').AsFloat := FmDmic01.Query1.FieldByName('Disct').AsFloat;
          FmDmic01.Pktran.FieldByName('REDU2').AsFloat := 0;
          FmDmic01.Pktran.FieldByName('REDU3').AsFloat := 0;
          FmDmic01.Pktran.FieldByName('UPRICE').AsFloat := FmDmic01.Query1.FieldByName('Price').AsFloat;
          FmDmic01.PkTran.FieldByName('GROUP1').Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
          FmDmic01.Pktran.FieldByName('CAMPNO').AsString := FmDmic01.Query1.FieldByName('CAMPNO').Asstring;
          FmDmic01.Pktran.FieldByName('CAMFLG').AsString := 'Y';
          FmDmic01.Pktran.FieldByName('Netprc').AsFloat := FmDmic01.Query1.FieldByName('NetAMT').AsFloat;
          FmDmic01.Pktran.FieldByName('TotPrc').AsFloat := FmDmic01.Query1.FieldByName('Totamt').AsFloat;
          FmDmic01.Pktran.Post;
        end;
        FmDmic01.Query1.Next;
      end;
    end;
  end;
end;

procedure TFmSTIn02.FldCombo3BtnClick(Sender: TObject);
begin
  if FmDmic01.Pkinv.State = DsBrowse then
    Exit;

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalCampn = Mrok then
  begin
    FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring := fSrcDlg.KeyNo;
    Getclaim;
  end;
end;

procedure TFmSTIn02.Getclaim;
begin
  XCampno := FmDmic01.Pkinv.Fieldbyname('CAMPNO').asstring;
//  if FldCombo3.text <> '' then
//  begin
//    if (FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring <> '') and
//      (FmDmic01.Pkinv.State in Dseditmodes) then
//    begin
//      with FmDmic01.Query1 do
//      begin
//        Close;
//        Sql.Clear;
//        Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO=:EDIT1');
//        Params[0].Asstring := FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring;
//        Open;
//        if not (Bof and Eof) then
//        begin
//          if FmDmic01.PkinvPkdate.AsDateTime < FmDmic01.Query1.Fieldbyname('Startdt').AsDatetime then
//          begin
//            FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring := '';
//            XCampno := '';
//            Messagebeep(0);
//            SFMain.RaiseException('วันที่จ่ายสินค้าน้อยกว่าวันเริ่ม แคมเปญ ' + #13#13 + 'ยกเลิกการใช้แคมเปญ');
//          end;
//          if FmDmic01.PkinvPkdate.AsDateTime > FmDmic01.Query1.Fieldbyname('Enddate').AsDatetime then
//            if MessageDlg('วันที่จ่ายสินค้าเลยกำหนดวันสิ้นสุด แคมเปญ' + #13#13 + 'ยังยืนยันจะใช้แคมเปญหรือไม่ ?', Mtconfirmation, [mbok, mbcancel], 0) = Mrcancel then
//            begin
//              Messagebeep(0);
//              FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring := '';
//              XCampno := '';
//              Abort;
//            end;
//          XGroup := FmDmic01.Query1.Fieldbyname('Group1').Asstring;
//          FmDmic01.Pkinv.FieldByName('DISCT').AsFloat := FmDmic01.Query1.Fieldbyname('PTR_RAT1').Asfloat;
//          Label6.Caption := '** ใช้ส่วนลดตาม Campaign Setup **';
//          Label6.Visible := True;
//          MessageBeep(0);
//        end;
//      end;
//    end;
//  end;
  DataSource1StateChange(DataSource1);
end;

procedure TFmSTIn02.FldCombo3Exit(Sender: TObject);
begin
//  if FldCombo3.text <> '' then
//  begin
//    GetClaim;
//  end;
end;

procedure TFmSTIn02.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFDlgBarcd, FDlgBarcd);
//  FDlgBarcd.LvPrice := 'Price' + DBEdit5.text;
  FDlgBarcd.XSYS := 'PK';
  FDlgBarcd.Showmodal;
end;

procedure TFmSTIn02.NextBtnClick(Sender: TObject);
begin
  DBGrid1.Setfocus;
  DBGrid1.SelectedIndex := 0;

  if FmDmic01.Pktran.State in Dseditmodes then
    SFMain.RaiseException('ยังไม่Enter ผ่านช่องสุดท้าย');

  FmDmic01.Pktran.Append;
end;

procedure TFmSTIn02.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFmStprn60, FmStprn60);
  FmStprn60.Label6.caption := FmDmic01.PkinvREFNO.Asstring;
  FmStprn60.Fopt := 'IC';
  FmStprn60.ShowModal;
end;

procedure TFmSTIn02.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F2:
      if (DbGrid1.SelectedField.FieldName) = 'PARTNO' then
        DBGrid1EditButtonClick(Sender);
  end;
end;

procedure TFmSTIn02.KitBtnClick(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  Allo, Cost, LVPrice: string;
begin
  Xdate := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);

  Application.CreateForm(TPtKitDlg, PtKitDlg);
  if PtKitDlg.Showmodal = Mrok then
  begin
    with PtKitDlg do
    begin
      Qkittrn.First;
      while not Qkittrn.Eof do
      begin
        if Qkittrn.Fieldbyname('Mark').Asstring = '' then
        begin
          FmDmic01.Pktran.Append;

          FmDmic01.PktranPARTNO.Asstring := Qkittrn.Fieldbyname('Partno').Asstring;
          FmDmic01.PktranQtyord.Asfloat := Qkittrn.Fieldbyname('Qty').Asfloat;
          FmDmic01.PktranQtyOUT.Asfloat := Qkittrn.Fieldbyname('Qty').Asfloat;
          FmDmic01.PkTranREDU1.AsFloat := FmDmic01.PkinvDisct.AsFloat;

          with FmDmic01.Query2 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
              'LOCAT = :Edit2');
            PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
            PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
            Open;
          end;

          if not (FmDmic01.Query2.Eof and FmDmic01.Query2.Bof) then
          begin
//            LVPrice := 'Price' + DBEdit5.text;
            FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query2.Fieldbyname(LVPrice).AsFloat;
            FmDmic01.PktranNetFl.Asstring := FmDmic01.Query2.Fieldbyname('NETPRC').Asstring;
            FmDmic01.PktranGroup1.Asstring := FmDmic01.Query2.Fieldbyname('Group1').Asstring;
          end;

          with FmDmic01.Query3 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT *  FROM INVANLS WHERE PARTNO =:XPARTNO AND ' +
              'LOCAT = :Edit2 AND YEAR1 =:Xyear');
            PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
            PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
            Params[2].Asstring := Inttostr(Xyear);
            Open;
          end;

          FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query3.FieldByName(Cost).AsFloat;

          if (FmDmic01.Query3.FieldByName(Allo).AsFloat > FmDmic01.PktranQTYORD.AsFloat) or (NAllow = 'N') then
            FmDmic01.PktranQtyout.Asfloat := FmDmic01.PktranQtyord.Asfloat
          else
          begin
            if FmDmic01.Query3.FieldByName(Allo).AsFloat >= 0 then
              FmDmic01.PktranQtyout.Asfloat := FmDmic01.Query3.FieldByName(Allo).AsFloat
            else
              FmDmic01.PktranQtyout.Asfloat := 0;
            MessageBeep(0);
          end;

          if FmDmic01.PKtranNETFL.Asstring = 'N' then
          begin
            FmDmic01.PkTranREDU1.AsFloat := 0;
            FmDmic01.PkTranREDU2.AsFloat := 0;
            FmDmic01.PkTranREDU3.AsFloat := 0;
          end;

          Pric1 := (FmDmic01.PktranUPrice.value * (FmDmic01.PktranRedu1.value / 100));
          SmPric1 := FmDmic01.PktranUPrice.value - Pric1;
          Pric2 := SmPric1 * (FmDmic01.Pktranredu2.value / 100);
          SmPric2 := SmPric1 - Pric2;
          Pric3 := SmPric2 * (FmDmic01.Pktranredu3.value / 100);
          SmPric3 := SmPric2 - Pric3;
          FmDmic01.PktranNetprc.AsFloat := SmPric3;
          FmDmic01.PktranTotPrc.AsFloat := FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat;
          FmDmic01.Pktran.post;
        end;
        Qkittrn.Next;
      end;
    end;
  end;
end;

procedure TFmSTIn02.FldCombo4BtnClick(Sender: TObject);
begin
  if FmDmic01.Pkinv.State = DsBrowse then
    Exit;

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAR = Mrok then
  begin
    FmDmic01.PkinvTRANTO.Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TFmSTIn02.DBMemo1Enter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TFmSTIn02.DBMemo1Exit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TFmSTIn02.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if FmDmic01.PktranUpdatestatus.Value = 'Inserted' then
  begin
    Dbgrid1.Canvas.Font.Color := clBlue;
    Dbgrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFmSTIn02.CloseBtnClick(Sender: TObject);
begin
  CLOSE;
end;

end.

