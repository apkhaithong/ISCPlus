unit Srchdlg1;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DB, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  RzDBGrid, RzSpnEdt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSearchDlg1 = class(TForm)
    DBGrid1: TRzDBGrid;
    SearchEd: TEdit;
    OrderCombo: TComboBox;
    Label1: TLabel;
    SearchButton: TRzRapidFireButton;
    DataSource: TDataSource;
    HQuery1: TFDQuery;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    NewKeyno: string;
    property Keyno: string read GetKeyno;

    function ShowModalCust: Integer;
    function ShowModalParts: Integer;
    function ShowModalLocat: Integer;
    function ShowModalGroup: Integer;
    function ShowModalType: Integer;
    function ShowModalAP: Integer;
    function ShowModalAR: Integer;
    function ShowModalPAYTYP: Integer;
    function ShowModalOffic: Integer;
    function ShowModalSvmst: Integer;
    function ShowModalModel: Integer;
    function ShowModalSVTYPE: Integer;
    function ShowModalSvcust: Integer;
    function ShowModalGrpmst: Integer;
    function ShowModalSvPart: Integer;
    function ShowModalBak: Integer;
    function ShowModalTabsv: Integer;
    function ShowModalFOrdsv: Integer;
    function ShowModalRESULT: Integer;
    function ShowModalTAXNO: Integer;
    function ShowModalJOBFNH: Integer;
    function ShowModalCRDNO: Integer;
    function ShowModalTAXJOB: Integer;
    function ShowModalOthinv: Integer;
    function ShowModalFrcod: Integer;
    function ShowModalCampn: Integer;
    function ShowModalARSERV: Integer;
    function ShowModalQuata: Integer;
    function ShowModalARGROUP: Integer;
    function ShowModalHobby: Integer;
    function ShowModalInsur: Integer;
    function ShowModalOTHTAX: Integer;
    function ShowModalStat: Integer;
    function ShowModalClaimiv: Integer;

  end;

var
  SearchDlg1: TSearchDlg1;

  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;

implementation

uses USoftFirm, Dmsec;


{$R *.DFM}

function TSearchDlg1.ShowModalCust: Integer;
begin
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add('Company');
  OrderCombo.Items.Add('CustNo');
  OrderCombo.ItemIndex := 0;
  OrderComboChange(nil);
  Caption := 'Select a Customer';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalParts: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 0;
  Title[0]  := 'รหัสอะไหล่';
  Title[1]  := 'ชื่ออะไหล่';
  Title[2]  := 'กลุ่ม';
  Title[3]  := 'ราคาขาย';

  Fldgrd[0] := 'Partno';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'Group1';
  Fldgrd[3] := 'Price1';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help Part';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalLocat: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 1;
  Title[0]  := 'รหัสสาขา';
  Title[1]  := 'ชื่อสาขา';
  Title[2]  := 'รหัสย่อ';

  Fldgrd[0] := 'LOCATCOD';
  Fldgrd[1] := 'LOCATNAM';
  Fldgrd[2] := 'LOCATDOC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help สาขา';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalGroup: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 2;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'ชื่อกลุ่ม';

  Fldgrd[0] := 'GROUPCOD';
  Fldgrd[1] := 'GROUPNAM';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help กลุ่มสินค้า';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalType: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 3;
  Title[0]  := 'รหัสยี่ห้อ';
  Title[1]  := 'ชื่อยี่ห้อ';

  Fldgrd[0] := 'TYPECOD';
  Fldgrd[1] := 'TYPENAM';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ยี่ห้อสินค้า';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalAP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 4;
  Title[0]  := 'รหัสเจ้าหนี้';
  Title[1]  := 'ชื่อเจ้าหนี้';
  Title[2]  := 'ที่อยู่ 1';
  Title[3]  := 'ที่อยู่ 2';

  Fldgrd[0] := 'APCODE';
  Fldgrd[1] := 'APNAME';
  Fldgrd[2] := 'Addr1';
  Fldgrd[3] := 'Addr2';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสเจ้าหนี้';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalAR: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 5;
  Title[0]  := 'ชื่อลูกค้า';
  Title[1]  := 'รหัสลูกค้า';
  Title[2]  := 'นามสกุล';

  Fldgrd[0] := 'NAME1';
  Fldgrd[1] := 'CUSCOD';
  Fldgrd[2] := 'NAME2';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ลูกค้า';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalPAYTYP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 6;
  Title[0]  := 'รหัสประเภท';
  Title[1]  := 'ประเภทการชำระ';

  Fldgrd[0] := 'PAYCODE';
  Fldgrd[1] := 'PAYDESC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ประเภทการชำระ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalOffic: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 7;
  Title[0]  := 'รหัสพนักงาน';
  Title[1]  := 'ชื่อพนักงาน';
  Title[2]  := 'แผนก';

  Fldgrd[0] := 'OFFICCOD';
  Fldgrd[1] := 'OFFICNAM';
  Fldgrd[2] := 'DEPART';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสพนักงาน';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalSvmst: Integer;
begin
  OrderCombo.Tag := 8;
  Title[0]  := 'เลขทะเบียน';
  Title[1]  := 'เลขถัง/แคสซี';
  Title[2]  := 'หมายเลขเครื่อง';
  Title[3]  := 'รหัสลูกค้า';
  Title[4]  := 'ชื่อ';
  Title[5]  := 'นามสกุล';
  Title[6]  := 'สถานะ';

  Fldgrd[0] := 'REGNO';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'ENGNO';
  Fldgrd[3] := 'CUSCOD';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'STATUS';


  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.Items.Add(Title[4]);
  OrderCombo.Items.Add(Title[5]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help แฟ้มประวัติรถ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalModel: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 9;
  Title[0]  := 'รหัสรุ่น';
  Title[1]  := 'ชื่อรุ่น';

  Fldgrd[0] := 'MDLCOD';
  Fldgrd[1] := 'DESC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalSVTYPE: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 10;
  Title[0]  := 'รหัสซ่อมทำ';
  Title[1]  := 'ชื่อประเภทการซ่อม';

  Fldgrd[0] := 'TYPCOD';
  Fldgrd[1] := 'TYPNAME';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ประเภทซ่อมทำ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalSvCUST: Integer;
begin
  OrderCombo.Tag := 11;
  Title[0]  := 'เลขถัง/แคสซี';
  Title[1]  := 'หมายเลขเครื่อง';
  Title[2]  := 'เลขทะเบียน';
  Title[3]  := 'รหัสลูกค้า';
  Title[4]  := 'ชื่อ';
  Title[5]  := 'นามสกุล';

  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'ENGNO';
  Fldgrd[2] := 'REGNO';
  Fldgrd[3] := 'CUSCOD';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';


  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.Items.Add(Title[4]);
  OrderCombo.Items.Add(Title[5]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help แฟ้มประวัติรถ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalGrpmst: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 12;
  Title[0]  := 'รหัสกลุ่มงาน';
  Title[1]  := 'รหัสรุ่น';
  Title[2]  := 'รายละเอียด';

  Fldgrd[0] := 'GCODE';
  Fldgrd[1] := 'MDLCOD';
  Fldgrd[2] := 'GDESC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help กลุ่มงาน(Work Type)';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalSvPart: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 13;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'สาขา';
  Title[3]  := 'ราคาขาย';

  Fldgrd[0] := 'CODE';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'UPRICE';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help Part';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalBak: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 14;
  Title[0]  := 'รหัสธนาคาร';
  Title[1]  := 'ชื่อธนาคาร';

  Fldgrd[0] := 'BKCODE';
  Fldgrd[1] := 'BKNAME';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ธนาคาร';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalTabsv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 15;
  Title[0]  := 'รหัสค่าบริการ';
  Title[1]  := 'รุ่นรถ';
  Title[2]  := 'รายละเอียด';
  Title[3]  := 'ราคา';
  Title[4]  := 'FRT';
  Title[5]  := 'STATUS';

  Fldgrd[0] := 'SVCODE';
  Fldgrd[1] := 'MDLCOD';
  Fldgrd[2] := 'DESC';
  Fldgrd[3] := 'SVPRIC';
  Fldgrd[4] := 'FRT';
  Fldgrd[5] := 'Status';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ตารางค่าบริการ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalFOrdsv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 16;
  Title[0]  := 'ใบขอเบิก';
  Title[1]  := 'Job No';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'สาขา';
  Title[4]  := 'วันที่';


  Fldgrd[0] := 'ORDNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'ORDLOCAT';
  Fldgrd[4] := 'ORDDATE';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบขอเบิก';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalRESULT: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 17;
  Title[0]  := 'รหัสเหตุผล';
  Title[1]  := 'รายละเอียด';

  Fldgrd[0] := 'RSCODE';
  Fldgrd[1] := 'RSDESC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสเหตุผล';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalTAXNO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 18;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'JOBNO';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'วันที่';
  Title[4]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'TAXDATE';
  Fldgrd[4] := 'CANCELID';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบกำกับภาษี';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalJOBFNH: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 19;
  Title[0]  := 'JOBNO';
  Title[1]  := 'เลขทะเบียน';
  Title[2]  := 'ตัวถัง';
  Title[3]  := 'รหัสลูกค้า';
  Title[4]  := 'ใบกำกับ';
  Title[5]  := 'วันที่ Job';
  Title[6]  := 'ค่าอะไหล่';
  Title[7]  := 'ค่าแรง';


  Fldgrd[0] := 'JOBNO';
  Fldgrd[1] := 'REGNO';
  Fldgrd[2] := 'STRNO';
  Fldgrd[3] := 'CUSCOD';
  Fldgrd[4] := 'PTAXNO';
  Fldgrd[5] := 'Recvdate';
  Fldgrd[6] := 'PARTNET';
  Fldgrd[7] := 'TSV_NET';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.Items.Add(Title[4]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help Job ซ่อมเสร็จ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalCRDNO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 20;
  Title[0]  := 'เลขที่ใบลดหนี้';
  Title[1]  := 'JOBNO';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'วันที่';
  Title[4]  := 'จำนวนเงิน';
  Title[5]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'TAXDATE';
  Fldgrd[4] := 'TOTTAX';
  Fldgrd[5] := 'CANCELID';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบลดหนี้';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalTAXJOB: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 21;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'JOBNO';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'วันที่';
  Title[4]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'TAXDATE';
  Fldgrd[4] := 'CANCELID';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบกำกับภาษี';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalOthinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 22;
  Title[0]  := 'เลขที่ส่งของ';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ใบกำกับ';
  Title[4]  := 'สาขา';
  Title[5]  := 'เลขที่ Job';
  Title[6]  := 'หมวด';
  Title[7]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'INVDATE';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'TAXNO';
  Fldgrd[4] := 'LOCAT';
  Fldgrd[5] := 'JOBNO';
  Fldgrd[6] := 'FLAG';
  Fldgrd[7] := 'CANCELID';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.Items.Add(Title[5]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalFrcod: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 23;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'ชื่อกลุ่ม';
  Title[2]  := 'อัตราบริการ/ชม.';
  Title[3]  := 'อัตราเคลม/ชม.';

  Fldgrd[0] := 'FRCODE';
  Fldgrd[1] := 'FRDESC';
  Fldgrd[2] := 'FRRATE1';
  Fldgrd[3] := 'FRRATE2';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help อัตราค่าบริการ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalCampn: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 24;
  Title[0]  := 'รหัสแคมเปญ';
  Title[1]  := 'ชื่อแคมเปญ';
  Title[2]  := 'วันเริ่ม';
  Title[3]  := 'วันสิ้นสุด';

  Fldgrd[0] := 'Campno';
  Fldgrd[1] := 'Campnam';
  Fldgrd[2] := 'Startdt';
  Fldgrd[3] := 'Enddate';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help แคมเปญ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalARSERV: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 25;
  Title[0]  := 'เลขที่บิล';
  Title[1]  := 'JOBNO';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'วันที่';
  Title[4]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'DEVNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'DEVDATE';
  Fldgrd[4] := 'CANCELID';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบส่งสินค้า';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalQuata: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 26;
  Title[0]  := 'เลขใบประเมิน';
  Title[1]  := 'เลขตัวถัง';
  Title[2]  := 'เลขทะเบียน';
  Title[3]  := 'วันที่';
  Title[4]  := 'สาขา';

  Fldgrd[0] := 'QUOTNO';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'REGNO';
  Fldgrd[3] := 'QDATE';
  Fldgrd[4] := 'LOCAT';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบประเมินราคา';
  Result := ShowModal;
end;
function TSearchDlg1.ShowModalArgroup: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 27;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'ชื่อกลุ่ม';
  Title[2]  := '%ส่วนลด';

  Fldgrd[0] := 'ARCODE';
  Fldgrd[1] := 'ARDESC';
  Fldgrd[2] := 'ARDISC';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสกลุ่ม';
  Result := ShowModal;
end;
function TSearchDlg1.ShowModalHobby: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 28;
  Title[0]  := 'รหัสงานอดิเรก';
  Title[1]  := 'รายละเอียด';

  Fldgrd[0] := 'HBCODE';
  Fldgrd[1] := 'HBDESC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ประเภทการชำระ';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalInsur: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 29;
  Title[0]  := 'รหัสประหัส';
  Title[1]  := 'ชื่อบริษัท';

  Fldgrd[0] := 'ISCODE';
  Fldgrd[1] := 'ISNAME';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสประกัน';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalOthtax: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 30;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'วันที่';
  Title[2]  := 'ชื่อ';
  Title[3]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDATE';
  Fldgrd[2] := 'NAME1';
  Fldgrd[3] := 'CANCELID';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);

  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบกำกับ Inv.เสริมแบบรวม';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalStat: Integer;
begin
  OrderCombo.Tag := 31;
  Title[0]  := 'รหัส Status';
  Title[1]  := 'อธิบายความหมาย';

  Fldgrd[0] := 'STATCOD';
  Fldgrd[1] := 'STATDES';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัส Status';
  Result := ShowModal;
end;

function TSearchDlg1.ShowModalClaimiv: Integer;
begin
  OrderCombo.Tag := 32;
  Title[0]  := 'เลขที่ Inv';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสเจ้าหนี้';
  Title[3]  := 'ใบกำกับ';
  Title[4]  := 'สาขา';
  Title[5]  := 'เลขที่ Job';
  Title[6]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'INVDATE';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'TAXNO';
  Fldgrd[4] := 'LOCAT';
  Fldgrd[5] := 'JOBNO';
  Fldgrd[6] := 'CANCELID';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.Items.Add(Title[5]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help เคลมเทคนิค';
  Result := ShowModal;
end;

function TSearchDlg1.GetKeyno: string;
begin
  If HQuery1.Active Then
  Case OrderCombo.Tag Of
    0 :Result := HQuery1.Fieldbyname('PartNo').Asstring;
    1 :Result := HQuery1.Fieldbyname('LOCATCOD').Asstring;
    2 :Result := HQuery1.Fieldbyname('GROUPCOD').Asstring;
    3 :Result := HQuery1.Fieldbyname('TYPECOD').Asstring;
    4 :Result := HQuery1.Fieldbyname('APCODE').Asstring;
    5 :Result := HQuery1.Fieldbyname('CUSCOD').Asstring;
    6 :Result := HQuery1.Fieldbyname('PAYCODE').Asstring;
    7 :Result := HQuery1.Fieldbyname('OFFICCOD').Asstring;
    8 :Result := HQuery1.Fieldbyname('STRNO').Asstring;
    9 :Result := HQuery1.Fieldbyname('MDLCOD').Asstring;
   10 :Result := HQuery1.Fieldbyname('TYPCOD').Asstring;
   11 :Result := HQuery1.Fieldbyname('STRNO').Asstring;
   12 :Result := HQuery1.Fieldbyname('GCODE').Asstring;
   13 :Result := HQuery1.Fieldbyname('CODE').Asstring;
   14 :Result := HQuery1.Fieldbyname('BKCODE').Asstring;
   15 :Result := HQuery1.Fieldbyname('SVCODE').Asstring;
   16 :Result := HQuery1.Fieldbyname('ORDNO').Asstring;
   17 :Result := HQuery1.Fieldbyname('RSCODE').Asstring;
   18 :Result := HQuery1.Fieldbyname('TAXNO').Asstring;
   19 :Result := HQuery1.Fieldbyname('JOBNO').Asstring;
   20 :Result := HQuery1.Fieldbyname('TAXNO').Asstring;
   21 :Result := HQuery1.Fieldbyname('TAXNO').Asstring;
   22 :Result := HQuery1.Fieldbyname('INVNO').Asstring;
   23 :Result := HQuery1.Fieldbyname('FRCODE').Asstring;
   24:Result := HQuery1.Fieldbyname('Campno').Asstring;
   25 :Result := HQuery1.Fieldbyname('DEVNO').Asstring;
   26 :Result := HQuery1.Fieldbyname('QUOTNO').Asstring;
   27:Result := HQuery1.Fieldbyname('ARCODE').Asstring;
   28:Result := HQuery1.Fieldbyname('HBCODE').Asstring;
   29:Result := HQuery1.Fieldbyname('ISCODE').Asstring;
   30:Result := HQuery1.Fieldbyname('TAXNO').Asstring;
   31:Result := HQuery1.Fieldbyname('STATCOD').Asstring;
   32 :Result:= HQuery1.Fieldbyname('INVNO').Asstring;
  end;
end;

procedure TSearchDlg1.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchDlg1.SearchButtonClick(Sender: TObject);
Var SqlTxt:String;
begin
  With HQuery1 Do
  Begin
    close;
    Sql.Clear;
    Case OrderCombo.Tag Of
    0:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVENTOR WHERE PARTNO LIKE :EDIT1 AND LOCAT LIKE :EDIT2 ORDER BY PARTNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVENTOR WHERE DESC1 LIKE :EDIT1 AND LOCAT LIKE :EDIT2 ORDER BY DESC1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVENTOR WHERE MODEL LIKE :EDIT1 AND LOCAT LIKE :EDIT2 ORDER BY DESC1');
      end;

    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM LOCATMST WHERE LOCATCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM LOCATMST WHERE LOCATNAM LIKE :EDIT1');
      end;
    2:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE GROUPCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE GROUPNAM LIKE :EDIT1');
      end;
    3:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SETTYPE WHERE TYPECOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SETTYPE WHERE TYPEDES LIKE :EDIT1');
      end;
    4:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM APMAST WHERE APCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM APMAST WHERE APNAME LIKE :EDIT1');
      end;
    5:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT CUSCOD,NAME1,NAME2 FROM CUSTMAST WHERE NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT CUSCOD,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT CUSCOD,NAME1,NAME2 FROM CUSTMAST WHERE NAME2 LIKE :EDIT1 ORDER BY NAME2');
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE PAYDESC LIKE :EDIT1');
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE OFFICCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE OFFICNAM LIKE :EDIT1');
      end;
    8:Begin
        If OrderCombo.ItemIndex = 0 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE REGNO LIKE :EDIT1 ORDER BY REGNO');
        If OrderCombo.ItemIndex = 1 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE STRNO LIKE :EDIT1 ORDER BY STRNO');
        If OrderCombo.ItemIndex = 2 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE ENGNO LIKE :EDIT1 ORDER BY ENGNO');
        If OrderCombo.ItemIndex = 3 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.ItemIndex = 4 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.ItemIndex = 5 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE NAME2 LIKE :EDIT1 ORDER BY NAME2');
        If OrderCombo.ItemIndex = 6 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE VIPCARD LIKE :EDIT1 ORDER BY VIPCARD');
      end;
    9:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM MODELMST WHERE MDLCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM MODELMST WHERE DESC LIKE :EDIT1');
      end;
    10:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SVTYPE WHERE TYPCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SVTYPE WHERE TYPNAME LIKE :EDIT1');
      end;

    11:Begin
        SqlTxt :='SELECT A.STRNO,A.ENGNO,A.REGNO,A.CUSCOD,B.NAME1,B.NAME2 FROM SVMAST A,CUSTMAST B WHERE (A.CUSCOD=B.CUSCOD) AND ';
        If OrderCombo.ItemIndex = 0 Then
           SQL.ADD(SqlTxt+' A.STRNO LIKE :EDIT1 ORDER BY A.STRNO');
        If OrderCombo.ItemIndex = 1 Then
           SQL.ADD(SqlTxt+' A.ENGNO LIKE :EDIT1 ORDER BY A.ENGNO');
        If OrderCombo.ItemIndex = 2 Then
           SQL.ADD(SqlTxt+' A.REGNO LIKE :EDIT1 ORDER BY A.REGNO');
        If OrderCombo.ItemIndex = 3 Then
           SQL.ADD(SqlTxt+' A.CUSCOD LIKE :EDIT1 ORDER BY A.CUSCOD');
        If OrderCombo.ItemIndex = 4 Then
           SQL.ADD(SqlTxt+' B.NAME1 LIKE :EDIT1 ORDER BY B.NAME1');
        If OrderCombo.ItemIndex = 5 Then
           SQL.ADD(SqlTxt+' B.NAME2 LIKE :EDIT1 ORDER BY B.NAME2');

      end;
    12:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM GRPMST WHERE GCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM GRPMST WHERE MDLCOD LIKE :EDIT1');
      end;
    13:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SVSTOCK WHERE CODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SVSTOCK WHERE DESC1 LIKE :EDIT1');
      end;
    14:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM BKMAST WHERE BKCODE LIKE :EDIT1');
      end;
    15:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM TABSERV WHERE SVCODE LIKE :EDIT1 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM TABSERV WHERE MDLCOD LIKE :EDIT1 ORDER BY MDLCOD');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM TABSERV WHERE DESC LIKE :EDIT1 ORDER BY DESC');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT * FROM TABSERV WHERE SVGRUP LIKE :EDIT1 ORDER BY SVGRUP');

      end;
    16:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SV_ORDIV WHERE ORDNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SV_ORDIV WHERE JOBNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM SV_ORDIV WHERE CUSCOD LIKE :EDIT1 ');
      end;
    17:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM RE_SULT WHERE RSCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM RE_SULT WHERE RSDESC LIKE :EDIT1');
      end;
    18:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM TAXSAL WHERE TAXNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM TAXSAL WHERE JOBNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM TAXSAL WHERE CUSCOD LIKE :EDIT1 ');
      end;
    19:begin
        Sqltxt := 'SELECT A.JOBNO,A.PTAXNO,A.STRNO,A.CUSCOD,A.Recvdate,A.PARTNET,A.TSV_NET,B.REGNO FROM JOBORDER A,SVMAST B WHERE A.STRNO=B.STRNO AND A.STATUS=''F'' ';
        If OrderCombo.Itemindex=0 Then
           SQL .ADD(SQLTXT+' AND JOBNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
           SQL .ADD(SQLTXT+' AND REGNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=2 Then
           SQL .ADD(SQLTXT+' AND STRNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=3 Then
           SQL .ADD(SQLTXT+' AND CUSCOD LIKE :EDIT1 ');
        If OrderCombo.Itemindex=4 Then
           SQL .ADD(SQLTXT+' AND PTAXNO LIKE :EDIT1 ');
      end;
    20:begin
        Sqltxt := 'SELECT TAXNO,JOBNO,CUSCOD,TAXDATE,TOTTAX,CANCELID FROM TAXSAL WHERE FLAG=''2'' AND ';
        If OrderCombo.Itemindex=0 Then
        SQL .ADD(SQLTXT+' TAXNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD(SQLTXT+' JOBNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD(SQLTXT+' CUSCOD LIKE :EDIT1 ');
      end;
    21:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM TAXSAL WHERE TAXNO LIKE :EDIT1 AND NOT(JOBNO IS NULL) AND JOBNO<>''''  AND (SYSTM IS NULL OR SYSTM='''')');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM TAXSAL WHERE JOBNO LIKE :EDIT1 AND NOT(JOBNO IS NULL) AND JOBNO<>''''  AND (SYSTM IS NULL OR SYSTM='''')');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM TAXSAL WHERE CUSCOD LIKE :EDIT1 AND NOT(JOBNO IS NULL) AND JOBNO<>''''  AND (SYSTM IS NULL OR SYSTM='''')');
      end;
    22:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM OTHINVOI WHERE INVNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM OTHINVOI WHERE CUSCOD LIKE :EDIT1 ');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM OTHINVOI WHERE TAXNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT * FROM OTHINVOI WHERE JOBNO LIKE :EDIT1 ');
      end;
    23:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM FRGROUP WHERE FRCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM FRGROUP WHERE FRDESC LIKE :EDIT1');
      end;
    24:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM CAMPGRP WHERE CAMPNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM CAMOGRP WHERE CAMPNAM LIKE :EDIT1');
      end;
    25:begin
        Sqltxt := 'SELECT DEVNO,JOBNO,CUSCOD,DEVDATE,CANCELID FROM AR_SERV WHERE ';
        If OrderCombo.Itemindex=0 Then
        SQL .ADD(Sqltxt+' DEVNO LIKE :EDIT1 AND NOT(JOBNO IS NULL) ');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD(Sqltxt+' JOBNO LIKE :EDIT1 AND NOT(JOBNO IS NULL) ');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD(Sqltxt+' CUSCOD LIKE :EDIT1 AND NOT(JOBNO IS NULL)');
      end;
    26:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE QUOTNO LIKE :EDIT1  ');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE STRNO LIKE :EDIT1  ');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE REGNO LIKE :EDIT1 ');
      end;
  27:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ARCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ARDESC LIKE :EDIT1');
      end;
  28:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM HOBBY WHERE HBCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM HOBBY WHERE HBDESC LIKE :EDIT1');
      end;
  29:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM INSURAN WHERE ISCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM INSURAN WHERE ISNAME LIKE :EDIT1');
      end;
  30:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT A.TAXNO,A.TAXDATE,A.CANCELID,B.NAME1 FROM OTH_TXIV A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD AND A.TAXNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT A.TAXNO,A.TAXDATE,A.CANCELID,B.NAME1 FROM OTH_TXIV A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD AND B.NAME1 LIKE :EDIT1');
      end;
  31:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM STATMST WHERE STATCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM STATMST WHERE STATDES LIKE :EDIT1');
      end;
    32:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM CLMPAYIV WHERE INVNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM CLMPAYIV WHERE APCODE LIKE :EDIT1 ');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM CLMPAYIV WHERE TAXNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT * FROM CLMPAYIV WHERE JOBNO LIKE :EDIT1 ');
      end;

    end;

    Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
    If OrderCombo.Tag=0 Then
    Params[1].Asstring := sfMain.Xlocat+'%';

    If Not HQuery1.Prepared Then HQuery1.Prepare;
    Open;
 END;
end;

procedure TSearchDlg1.OrderComboChange(Sender: TObject);
Var I,K:word;
    T1,F1 :String;
begin
  SearchEd.Text := '';
  k:=0;
  I:=0;
  While (I<=Max)  Do
  begin
    If (Title[I]=OrderCombo.Text) Then
    begin
      K :=I;
      Break;
    end;
    I:=I+1;
  end;

  T1        := Title[0];
  Title[0]  := Title[K];
  Title[k]  := T1;

  F1        := Fldgrd[0];
  Fldgrd[0] := Fldgrd[K];
  Fldgrd[k] := F1;
  Dbgrid1.Columns.Clear;
  for I:=0 To Max Do
  begin
    Dbgrid1.Columns.Add.Fieldname    := Fldgrd[I];
    Dbgrid1.Columns[I].Title.Caption := Title[I];
  end;
end;

procedure TSearchDlg1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TSearchDlg1.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TSearchDlg1.CalcMax;
begin
  { ** Field Name & Title** }
  I:=0;
  While I<=10 Do
  begin
    Dbgrid1.Columns.Add.Fieldname    := Fldgrd[I];
    Dbgrid1.Columns[I].Title.Caption := Title[I];
    If Fldgrd[I]='' Then
    begin
     Max:=I-1;
     If Max<0 Then Max:=0;
     break;
    end;
    I:=I+1;
  end;
end;


procedure TSearchDlg1.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;

end;

procedure TSearchDlg1.SearchEdChange(Sender: TObject);
begin
  If sfmain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;


end.
