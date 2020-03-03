unit SrchDlg;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DB, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  RzDBGrid, RzSpnEdt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSearchDlg = class(TForm)
    DataSource: TDataSource;
    HQuery1: TFDQuery;
    Panel1: TPanel;
    Label1: TLabel;
    OrderCombo: TComboBox;
    Label2: TLabel;
    SearchEd: TEdit;
    DBGrid1: TRzDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    SearchButton: TRzRapidFireButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    Flag_a,Key_a: string;
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
    function ShowModalPO: Integer;
    function ShowModalJob: Integer;
    function ShowModalPk: Integer;
    function ShowModalOdsv: Integer;  //㺢��ԡ�ҡ�ٹ��
    function ShowModalPktrn: Integer;
    function ShowModalBak: Integer;
    function ShowModalMODEL: Integer;
    function ShowModalTAXNO: Integer;
    function ShowModalRcinv: Integer;
    function ShowModalSALTYPE: Integer;
    function ShowModalARGROUP: Integer;
    function ShowModalOthIc: Integer;
    function ShowModalQuata: Integer;
    function ShowModalHobby: Integer;
    function ShowModalInvmast: Integer;
    function ShowModalIcinv: Integer;
    function ShowModalRtinv: Integer;
    function ShowModalMoveto: Integer;
    function ShowModalMovefm: Integer;
    function ShowModalQainv: Integer;
    function ShowModalAdjust: Integer;
    function ShowModalAllJob: Integer;
    function ShowModalCampn: Integer;
    function ShowModalPtkit: Integer;
    function ShowModalChqPy: Integer;
    function ShowModalCHANGRAT: Integer;
    function ShowModalTAXMAST: Integer;
    function ShowModalApbyPart: Integer;
    function ShowModalDeposit: Integer;
    function ShowModalCatalog: Integer;
    function ShowModalbarcode: Integer;
  end;

var
  SearchDlg: TSearchDlg;

  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;
  SelectFld : String;

implementation

uses USoftFirm, Dmsec;


{$R *.DFM}

function TSearchDlg.ShowModalCust: Integer;
begin
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add('Company');
  OrderCombo.Items.Add('CustNo');
  OrderCombo.ItemIndex := 0;
  OrderComboChange(nil);
  Caption := 'Select a Customer';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalParts: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 0;
  Title[0]  := '����������';
  Title[1]  := '����������';
  Title[2]  := 'Model';
  Title[3]  := '����᷹';
  Title[4]  := '�����';
  Title[5]  := '�ҤҢ��';
  Title[6]  := '�ʹ������';

  Fldgrd[0] := 'Partno';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'Model';
  Fldgrd[3] := 'Code_T';
  Fldgrd[4] := 'Group1';
  Fldgrd[5] := 'Price1';
  Fldgrd[6] := 'Allo_12';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help Part';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalLocat: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 1;
  Title[0]  := '�����Ң�';
  Title[1]  := '�����Ң�';
  Title[2]  := '�������';

  Fldgrd[0] := 'LOCATCD';
  Fldgrd[1] := 'LOCATNM';
  Fldgrd[2] := 'SHORTL';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �Ң�';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalGroup: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 2;
  Title[0]  := '���ʡ����';
  Title[1]  := '���͡����';

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
  Caption := 'Help ������Թ���';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalType: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 3;
  Title[0]  := '����������';
  Title[1]  := '����������';

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
  Caption := 'Help �������Թ���';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalAP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 4;
  Title[0]  := '�������˹��';
  Title[1]  := '�������˹��';
  Title[2]  := '������� 1';
  Title[3]  := '������� 2';

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
  Caption := 'Help �������˹��';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalAR: Integer;
begin
  OrderCombo.Tag := 5;
  Title[0]  := '�����١���';
  Title[1]  := '�����١���';
  Title[2]  := '���ʡ��';
  Title[3]  := '��ҹ�Ţ���';
  Title[4]  := '���';
  Title[5]  := '�����';
  Title[6]  := '�ѧ��Ѵ';

  Fldgrd[0] := 'CUSCOD';
  Fldgrd[1] := 'NAME1';
  Fldgrd[2] := 'NAME2';
  Fldgrd[3] := 'ADDR1';
  Fldgrd[4] := 'ADDR2';
  Fldgrd[5] := 'AUMP';
  Fldgrd[6] := 'PROV';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �����١���';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalPAYTYP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 6;
  Title[0]  := '���ʻ�����';
  Title[1]  := '��������ê���';

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
  Caption := 'Help ��������ê���';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalOffic: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 7;
  Title[0]  := '���ʾ�ѡ�ҹ';
  Title[1]  := '���;�ѡ�ҹ';
  Title[2]  := 'Ἱ�';

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
  Caption := 'Help ���ʾ�ѡ�ҹ';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalPO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 8;
  Title[0]  := '���觫���';
  Title[1]  := '�ѹ���';
  Title[2]  := '�������˹��';
  Title[3]  := '�Ң�';

  Fldgrd[0] := 'PONO';
  Fldgrd[1] := 'PODATE';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'POLOCAT';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  //OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ���觫���';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalJob: Integer;
begin
  OrderCombo.Tag := 9;
  Title[0]  := 'Jobno';
  Title[1]  := '�Ţ��Ƕѧ';
  Title[2]  := '�Ţ����ͧ';
  Title[3]  := '�Ţ����¹';
  Title[4]  := '����';
  Title[5]  := '���ʡ��';
  Title[6]  := '�Ң�';
  Title[7]  := '�ѹ���';

  Fldgrd[0] := 'JOBNO';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'ENGNO';
  Fldgrd[3] := 'REGNO';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'LOCAT';
  Fldgrd[7] := 'RECVDATE';

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
  Caption := 'Help ��駫���';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalPk: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 10;
  Title[0]  := '�Ţ�����ԡ';
  Title[1]  := '�ѹ���';
  Title[2]  := '�����١���';
  Title[3]  := '�Ţ���Job';
  Title[4]  := '�Ţ���㺡ӡѺ';

  Fldgrd[0] := 'PKNO';
  Fldgrd[1] := 'PKDATE';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'JOBNO';
  Fldgrd[4] := 'REFNO';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ��ԡ';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalOdsv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 11;
  Title[0]  := '㺢��ԡ';
  Title[1]  := 'Job No.';
  Title[2]  := '�ѹ�����ԡ';
  Title[3]  := '�Ң�';

  Fldgrd[0] := 'ORDNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'ORDDATE';
  Fldgrd[3] := 'ORDLOCAT';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help 㺢��ԡ�ҡ�ٹ��';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalPktrn: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 12;
  Title[0]  := '�����Թ���';
  Title[1]  := 'Job No';
  Title[2]  := '�Ţ����ԡ';
  Title[3]  := '�ӹǹ';

  Fldgrd[0] := 'PARTNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'PKNO';
  Fldgrd[3] := 'QTYOUT';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalBak: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 13;
  Title[0]  := '���ʸ�Ҥ��';
  Title[1]  := '���͸�Ҥ��';

  Fldgrd[0] := 'BKCODE';
  Fldgrd[1] := 'BKNAME';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ��Ҥ��';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalMODEL: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 14;
  Title[0]  := '�������';
  Title[1]  := '�������';

  Fldgrd[0] := 'MODELCOD';
  Fldgrd[1] := 'MODELDES';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ����Թ���';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalTAXNO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 15;
  Title[0]  := '�Ţ���㺡ӡѺ';
  Title[1]  := 'JOBNO';
  Title[2]  := '�����١���';
  Title[3]  := '�ѹ���';
  Title[4]  := '���¡��ԡ';

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
  Caption := 'Help 㺡ӡѺ����';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalRcinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 16;
  Title[0]  := '�Ţ�����Ѻ';
  Title[1]  := '�������˹��';
  Title[2]  := '�Ţ�����觢ͧ';
  Title[3]  := '�Ţ���㺡ӡѺ';
  Title[4]  := '�Ţ��� PO';
  Title[5]  := '�ѹ����Ѻ';

  Fldgrd[0] := 'RECVNO';
  Fldgrd[1] := 'APCODE';
  Fldgrd[2] := 'INVNO';
  Fldgrd[3] := 'TAXNO';
  Fldgrd[4] := 'PONO';
  Fldgrd[5] := 'RECVDT';

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
  Caption := 'Help ��Ѻ�Թ���';
  Result := ShowModal;
end;
function TSearchDlg.ShowModalSALTYPE: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 17;
  Title[0]  := '���ʡ�â��';
  Title[1]  := '��������â��';
  Title[3]  := '��ǹŴ';

  Fldgrd[0] := 'SLCODE';
  Fldgrd[1] := 'SLDESC';
  Fldgrd[2] := 'SLDISC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ���ʡ�â��';
  Result := ShowModal;
end;
function TSearchDlg.ShowModalArgroup: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 18;
  Title[0]  := '���ʡ����';
  Title[1]  := '���͡����';
  Title[2]  := '%��ǹŴ';

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
  Caption := 'Help ��໭';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalOthIc: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 19;
  Title[0]  := '㺡ӡѺ';
  Title[1]  := '�ѹ���';
  Title[2]  := '�����١���';
  Title[3]  := '�ӹǹ�Թ';

  Fldgrd[0] := 'OTHIVNO';
  Fldgrd[1] := 'OTHDATE';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NETTOTAL';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help 㺡ӡѺ�������';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalQuata: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 20;
  Title[0]  := '�Ţ㺻����Թ';
  Title[1]  := '�Ţ��Ƕѧ';
  Title[2]  := '�Ţ����¹';
  Title[3]  := '�ѹ���';
  Title[4]  := '�Ң�';

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
  Caption := 'Help 㺻����Թ�Ҥ�';
  Result := ShowModal;
end;
function TSearchDlg.ShowModalHobby: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 21;
  Title[0]  := '���ʧҹʹ��á';
  Title[1]  := '��������´';

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
  Caption := 'Help ��������ê���';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalinvmast: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 22;
  Title[0]  := '����������';
  Title[1]  := '����������';
  Title[2]  := 'Model';
  Title[3]  := '����᷹';
  Title[4]  := '�����';
  Title[5]  := '�ҤҢ��';

  Fldgrd[0] := 'Partno';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'Model';
  Fldgrd[3] := 'Code_T';
  Fldgrd[4] := 'Group1';
  Fldgrd[5] := 'Price1';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help Part';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalICinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 23;
  Title[0]  := '�Ţ���㺡ӡѺ';
  Title[1]  := '�ѹ���';
  Title[2]  := '�Ţ��������';
  Title[3]  := '�Ţ�����ԡ';
  Title[4]  := '���¡��ԡ';
  Title[5]  := '�ѹ���¡��ԡ';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'INVDATE';
  Fldgrd[2] := 'TAXREFNO';
  Fldgrd[3] := 'PKNO';
  Fldgrd[4] := 'CANCELID';
  Fldgrd[5] := 'CANDAT';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;
function TSearchDlg.ShowModalRtinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 24;
  Title[0]  := '�Ţ���㺤׹';
  Title[1]  := '�ѹ���׹';
  Title[2]  := '�Ţ���㺡ӡѺ';
  Title[3]  := '�Ţ����Ŵ˹��';
  Title[4]  := '�Ţ��� Job';

  Fldgrd[0] := 'RTNNO';
  Fldgrd[1] := 'RTNDT';
  Fldgrd[2] := 'TAXREFNO';
  Fldgrd[3] := 'CREDNO';
  Fldgrd[4] := 'JOBNO';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalMoveto: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 25;
  Title[0]  := '�Ţ�����͹����';
  Title[1]  := '�ѹ����͹����';
  Title[2]  := '�ҡ�Ң�';
  Title[3]  := '��ѧ�Ң�';
  Title[4]  := '��Ť���͹';
  Title[5]  := 'ʶҹ�';

  Fldgrd[0] := 'MOVNO';
  Fldgrd[1] := 'MOVDT';
  Fldgrd[2] := 'MOVFRM';
  Fldgrd[3] := 'MOVTO';
  Fldgrd[4] := 'TOTPRC';
  Fldgrd[5] := 'FLAG';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;
function TSearchDlg.ShowModalMovefm: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 26;
  Title[0]  := '�Ţ����Ѻ�͹';
  Title[1]  := '�ѹ����Ѻ�͹';
  Title[2]  := '�Ţ�����͹����';
  Title[3]  := '�ҡ�Ң�';
  Title[4]  := '��ѧ�Ң�';


  Fldgrd[0] := 'RECVNO';
  Fldgrd[1] := 'RECVDT';
  Fldgrd[2] := 'INVNO' ;
  Fldgrd[3] := 'APCODE';
  Fldgrd[4] := 'RECVLOC';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.Items.Add(Title[4]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;
function TSearchDlg.ShowModalQainv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 27;
  Title[0]  := '�Ţ�����ʹ��Ҥ�';
  Title[1]  := '�ѹ���';
  Title[2]  := '�����١���';
  Title[3]  := '�����Ң�';

  Fldgrd[0] := 'QANO';
  Fldgrd[1] := 'QADATE';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'QALOCAT';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalAdjust: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 28;
  Title[0]  := '�Ţ����Ѻ��ا';
  Title[1]  := '�ѹ���';
  Title[2]  := '���ʾ�ѡ�ҹ';
  Title[3]  := '�����Ң�';

  Fldgrd[0] := 'ADJNO';
  Fldgrd[1] := 'ADJDATE';
  Fldgrd[2] := 'OFFICCOD';
  Fldgrd[3] := 'ADJLOC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalAllJob: Integer;
begin
  OrderCombo.Tag := 29;
  Title[0]  := 'Jobno';
  Title[1]  := '�Ţ��Ƕѧ';
  Title[2]  := '�Ţ����ͧ';
  Title[3]  := '�Ţ����¹';
  Title[4]  := '����';
  Title[5]  := '���ʡ��';
  Title[6]  := '�Ң�';
  Title[7]  := '�ѹ���';

  Fldgrd[0] := 'JOBNO';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'ENGNO';
  Fldgrd[3] := 'REGNO';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'LOCAT';
  Fldgrd[7] := 'RECVDATE';

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
  Caption := 'Help ��駫���';
  Result := ShowModal;
end;
function TSearchDlg.ShowModalCampn: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 30;
  Title[0]  := '������໭';
  Title[1]  := '������໭';
  Title[2]  := '�ѹ�����';
  Title[3]  := '�ѹ����ش';

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
  Caption := 'Help ��໭';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalPtkit: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 31;
  Title[0]  := '���ʪش Kit';
  Title[1]  := '���ͪش Kit';

  Fldgrd[0] := 'KITCODE';
  Fldgrd[1] := 'KITNAME';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �ش Kit';
  Result := ShowModal;
end;
function TSearchDlg.ShowModalChqPy: Integer;
begin
  OrderCombo.Tag := 32;
  Title[0]  := '�Ţ�����';
  Title[1]  := '�Ţ���ѭ��';
  Title[2]  := '�Ţ�����ҧ�ԧ';
  Title[3]  := '�Ţ��������';

  Fldgrd[0] := 'CHQNO';
  Fldgrd[1] := 'BKCODE';
  Fldgrd[2] := 'REFNO';
  Fldgrd[3] := 'BILLNO';


  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �礨��� ';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalCHANGRAT: Integer;
begin
  OrderCombo.Tag := 33;
  Title[0]  := '����ʡ���Թ';
  Title[1]  := '����ʡ���Թ';
  Title[2]  := '�ѵ���š����¹';
  Title[3]  := '��ҧ�ԧ�ҡ';

  Fldgrd[0] := 'CHCODE';
  Fldgrd[1] := 'CHNAME';
  Fldgrd[2] := 'CHRATE';
  Fldgrd[3] := 'REFN';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �ѵ���š����¹ʡ���Թ';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalTaxmast: Integer;
begin
  OrderCombo.Tag := 34;
  Title[0]  := '������Ǵ����';
  Title[1]  := '������Ǵ';
  Title[2]  := '�ѵ��';
  Title[3]  := '��ҧ�ԧ�ҡ';

  Fldgrd[0] := 'TAXCODE';
  Fldgrd[1] := 'TAXNAME';
  Fldgrd[2] := 'TAXRATE';
  Fldgrd[3] := 'REFN';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ��Ǵ���չ����';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalApbyPart: Integer;
begin
  OrderCombo.Tag := 35;
  Title[0]  := '�����Թ���';
  Title[1]  := '���� Vendor';
  Title[2]  := '�Ҥ�/˹���';
  Title[3]  := '��ǹŴ';
  Title[4]  := '�Ҥ��ط��';
  Title[5]  := '�ѹ����ش';
  Title[6]  := '�ӹǹ';

  Fldgrd[0] := 'PARTNO';
  Fldgrd[1] := 'APCODE';
  Fldgrd[2] := 'LASTPRC';
  Fldgrd[3] := 'LASTDSC';
  Fldgrd[4] := 'LASTNET';
  Fldgrd[5] := 'LASTUPD';
  Fldgrd[6] := 'LASTQTY';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �Ҥ��Թ��ҵ�� Vendor';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalDeposit: Integer;
begin
  OrderCombo.Tag := 36;
  Title[0]  := '�Ţ�Ѵ��';
  Title[1]  := '�ѹ����Ѵ��';
  Title[2]  := '�����١���';
  Title[3]  := '�ӹǹ�Թ�ͧ';
  Title[4]  := '����';
  Title[5]  := '�ʹ�������';
  Title[6]  := '㺡ӡѺ����';
  Title[7]  := '�ѹ���㺡ӡѺ';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'INVDATE';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'Balance';
  Fldgrd[4] := 'Vatamt';
  Fldgrd[5] := 'Nettotal';
  Fldgrd[6] := 'TAXNO';
  Fldgrd[7] := 'TAXDATE';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �Թ�Ѵ��';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalCatalog: Integer;
begin
  OrderCombo.Tag := 37;
  Title[0]  := '�����Թ���';
  Title[1]  := '�����Թ���';
  Title[2]  := '���ʡ����';
  Title[3]  := '����������';

  Fldgrd[0] := 'partno';
  Fldgrd[1] := 'desc1';
  Fldgrd[2] := 'group1';
  Fldgrd[3] := 'type';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help Catalog';
  Result := ShowModal;
end;

function TSearchDlg.ShowModalbarcode: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 38;
  Title[0]  := '���� Barcode';
  Title[1]  := '����������';
  Title[2]  := '����������';

  Fldgrd[0] := 'BARCODE';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'PARTNO';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := '�������� Bar Code';
  Result := ShowModal;
end;


function TSearchDlg.GetKeyno: string;
begin
  If HQuery1.Active Then
  Case OrderCombo.Tag Of
    0 :Result := HQuery1.Fieldbyname('PartNo').Asstring;
    1 :Result := HQuery1.Fieldbyname('LOCATCD').Asstring;
    2 :Result := HQuery1.Fieldbyname('GROUPCOD').Asstring;
    3 :Result := HQuery1.Fieldbyname('TYPECOD').Asstring;
    4 :Result := HQuery1.Fieldbyname('APCODE').Asstring;
    5 :Result := HQuery1.Fieldbyname('CUSCOD').Asstring;
    6 :Result := HQuery1.Fieldbyname('PAYCODE').Asstring;
    7 :Result := HQuery1.Fieldbyname('OFFICCOD').Asstring;
    8 :Result := HQuery1.Fieldbyname('PONO').Asstring;
    9 :Result := HQuery1.Fieldbyname('JOBNO').Asstring;
    10:Result := HQuery1.Fieldbyname('PKNO').Asstring;
    11:Result := HQuery1.Fieldbyname('ORDNO').Asstring;
    12:Result := HQuery1.Fieldbyname('PARTNO').Asstring;
    13:Result := HQuery1.Fieldbyname('BKCODE').Asstring;
    14:Result := HQuery1.Fieldbyname('MODELCOD').Asstring;
    15:Result := HQuery1.Fieldbyname('TAXNO').Asstring;
    16:Result := HQuery1.Fieldbyname('RECVNO').Asstring;
    17:Result := HQuery1.Fieldbyname('SLCODE').Asstring;
    18:Result := HQuery1.Fieldbyname('ARCODE').Asstring;
    19:Result := HQuery1.Fieldbyname('OTHIVNO').Asstring;
    20:Result := HQuery1.Fieldbyname('QUOTNO').Asstring;
    21:Result := HQuery1.Fieldbyname('HBCODE').Asstring;
    22:Result := HQuery1.Fieldbyname('PartNo').Asstring;
    23:Result := HQuery1.Fieldbyname('INVNO').Asstring;
    24:Result := HQuery1.Fieldbyname('RTNNO').Asstring;
    25:Result := HQuery1.Fieldbyname('MOVNO').Asstring;
    26:Result := HQuery1.Fieldbyname('RECVNO').Asstring;
    27:Result := HQuery1.Fieldbyname('QANO').Asstring;
    28:Result := HQuery1.Fieldbyname('ADJNO').Asstring;
    29:Result := HQuery1.Fieldbyname('JOBNO').Asstring;
    30:Result := HQuery1.Fieldbyname('Campno').Asstring;
    31:Result := HQuery1.Fieldbyname('Kitcode').Asstring;
    32:Result := HQuery1.Fieldbyname('CHQNO').Asstring;
    33:Result := HQuery1.Fieldbyname('CHCODE').Asstring;
    34:Result := HQuery1.Fieldbyname('TAXCODE').Asstring;
    35:Result := HQuery1.Fieldbyname('APCODE').Asstring;
    36:Result := HQuery1.Fieldbyname('INVNO').Asstring;
    37:Result := HQuery1.Fieldbyname('PARTNO').Asstring;
    38:Result := HQuery1.Fieldbyname('BARCODE').Asstring;
  end;
end;

procedure TSearchDlg.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchDlg.SearchButtonClick(Sender: TObject);
Var Sqltxt:String;
begin
  With HQuery1 Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
    0:begin
        Sqltxt :='SELECT  A.PARTNO,A.DESC1,A.GROUP1,A.PRICE1,A.MODEL,A.CODE_T,B.ALLO_12 FROM INVENTOR A,INVANLS B WHERE (A.PARTNO=B.PARTNO) AND (A.LOCAT=B.LOCAT) AND (A.YEAR1=B.YEAR1) AND ';
        If OrderCombo.Itemindex=0 Then
           SQL.ADD( Sqltxt+'A.PARTNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY PARTNO');
        If OrderCombo.Itemindex=1 Then
           SQL.ADD( Sqltxt+'A.DESC1 LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY DESC1');
        If OrderCombo.Itemindex=2 Then
           SQL.ADD( Sqltxt+'A.MODEL LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY MODEL');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Params[1].Asstring := SFMain.Xlocat+'%';

        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM INVLOCAT WHERE LOCATCD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM INVLOCAT WHERE LOCATNM LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Open;
      end;
    2:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE GROUPCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE GROUPNAM LIKE :EDIT1');
        HQuery1.Params[0].Asstring :=Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
    3:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SETTYPE WHERE TYPECOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SETTYPE WHERE TYPENAM LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Open;
      end;
    4:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM APMAST WHERE APCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM APMAST WHERE APNAME LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
    5:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT CUSCOD,NAME1,NAME2,ADDR1,ADDR2,AUMP,PROV FROM ARMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT CUSCOD,NAME1,NAME2,ADDR1,ADDR2,AUMP,PROV FROM ARMAST WHERE NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT CUSCOD,NAME1,NAME2,ADDR1,ADDR2,AUMP,PROV FROM ARMAST WHERE NAME2 LIKE :EDIT1 ORDER BY NAME2');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE PAYDESC LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Open;
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE OFFICCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE OFFICNAM LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
    8:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM PO_INVOI WHERE PONO LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
    9:Begin
        Sqltxt :='SELECT JOBNO,STRNO,ENGNO,REGNO,NAME1,NAME2,LOCAT,RECVDATE '+
        'FROM VIEW_JOBORD WHERE ';

        If OrderCombo.Itemindex=0 Then
        SQL.ADD( Sqltxt+'JOBNO LIKE :EDIT1 AND STATUS=''W'' ORDER BY JOBNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( Sqltxt+'STRNO LIKE :EDIT1 AND STATUS=''W'' ORDER BY STRNO ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( Sqltxt+'ENGNO LIKE :EDIT1 AND STATUS=''W'' ORDER BY ENGNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( Sqltxt+'REGNO LIKE :EDIT1 AND STATUS=''W'' ORDER BY REGNO');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( Sqltxt+'NAME1 LIKE :EDIT1 AND STATUS=''W'' ORDER BY NAME1');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( Sqltxt+'NAME2 LIKE :EDIT1 AND STATUS=''W'' ORDER BY NAME2');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   10:Begin
        Sqltxt :='SELECT PKNO,PKDATE,CUSCOD,JOBNO,REFNO FROM PK_INVOI ';
        If Flag_A ='1' Then
        Begin
          If OrderCombo.Itemindex=0 Then
          SQL.ADD( Sqltxt+'WHERE PKNO LIKE :EDIT1  AND  (FLAG=''0'' OR FLAG=''2'' OR FLAG=:EDIT2) ');
          If OrderCombo.Itemindex=1 Then
          SQL.ADD( Sqltxt+'WHERE CUSCOD LIKE :EDIT1 AND (FLAG=''0'' OR FLAG=''2'' OR FLAG=:EDIT2)');
          If OrderCombo.Itemindex=2 Then
          SQL.ADD( Sqltxt+'WHERE JOBNO LIKE :EDIT1  AND (FLAG=''0'' OR FLAG=''2'' OR FLAG=:EDIT2)');
        End
        Else
        Begin
          If OrderCombo.Itemindex=0 Then
          SQL.ADD( Sqltxt+'WHERE PKNO LIKE :EDIT1   AND  FLAG=:EDIT2');
          If OrderCombo.Itemindex=1 Then
          SQL.ADD( Sqltxt+'WHERE CUSCOD LIKE :EDIT1 AND FLAG=:EDIT2');
          If OrderCombo.Itemindex=2 Then
          SQL.ADD( Sqltxt+'WHERE JOBNO LIKE :EDIT1  AND FLAG=:EDIT2');
        End;
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Params[1].Asstring := Flag_a;
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   11:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SV_ORDIV WHERE ORDNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SV_ORDIV WHERE JOBNO LIKE :EDIT1');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Open;
      end;
   12:Begin
        Sqltxt :='SELECT PARTNO,JOBNO,PKNO,QTYOUT,QTYBOD FROM PK_TRANS ';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( Sqltxt+'WHERE PKNO LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Key_a+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   13:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM BKMAST WHERE BKCODE LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Open;
      end;
   14:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM SETMODEL WHERE MODELCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM SETMODEL WHERE MODELDES LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;

    15:begin
         Sqltxt :='SELECT TAXNO,JOBNO,CUSCOD,TAXDATE,CANCELID FROM TAXSAL ';
         If OrderCombo.Itemindex=0 Then
         SQL .ADD(Sqltxt+'WHERE TAXNO LIKE :EDIT1 AND CANCEL IS NULL AND FLAG=''1'' ORDER BY TAXNO');
         If OrderCombo.Itemindex=1 Then
         SQL .ADD(Sqltxt+'WHERE JOBNO LIKE :EDIT1 AND CANCEL IS NULL AND FLAG=''1'' ORDER BY JOBNO');
         If OrderCombo.Itemindex=2 Then
         SQL .ADD(Sqltxt+'WHERE CUSCOD LIKE :EDIT1 AND CANCEL IS NULL AND FLAG=''1'' ORDER BY CUSCOD');
         HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
         If Not HQuery1.Prepared Then HQuery1.Prepare;
         HQuery1.Open;
      end;
    16:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE RECVNO LIKE :EDIT1 AND (FLAG=''4'' OR FLAG=''5'') ORDER BY RECVNO');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE APCODE LIKE :EDIT1 AND (FLAG=''4'' OR FLAG=''5'') ORDER BY APCODE');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE INVNO LIKE :EDIT1 AND (FLAG=''4'' OR FLAG=''5'') ORDER BY INVNO');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE TAXNO LIKE :EDIT1 AND (FLAG=''4'' OR FLAG=''5'') ORDER BY TAXNO');
        If OrderCombo.Itemindex=4 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE PONO LIKE :EDIT1 AND (FLAG=''4'' OR FLAG=''5'') ORDER BY PONO');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
    17:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM SALTYPE WHERE SLCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM SALTYPE WHERE SLDESC LIKE :EDIT1');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
    18:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ARCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ARDESC LIKE :EDIT1');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   19:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM ICOTHINV WHERE OTHIVNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM ICOTHINV WHERE CUSCOD LIKE :EDIT1 ');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      End;
    20:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE QUOTNO LIKE :EDIT1  ');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE STRNO LIKE :EDIT1  ');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE REGNO LIKE :EDIT1 ');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   21:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM HOBBY WHERE HBCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM HOBBY WHERE HBDESC LIKE :EDIT1');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   22:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVMAST WHERE PARTNO LIKE :EDIT1 ORDER BY PARTNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVMAST WHERE DESC1 LIKE :EDIT1  ORDER BY DESC1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVMAST WHERE MODEL LIKE :EDIT1  ORDER BY MODEL');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';

        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   23:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  INVNO,INVDATE,TAXREFNO,PKNO,CANCELID,CANDAT FROM IC_INVOI WHERE INVNO LIKE :EDIT1 ORDER BY INVNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  INVNO,INVDATE,TAXREFNO,PKNO,CANCELID,CANDAT FROM IC_INVOI WHERE TAXREFNO LIKE :EDIT1 ORDER BY TAXREFNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  INVNO,INVDATE,TAXREFNO,PKNO,CANCELID,CANDAT FROM IC_INVOI WHERE PKNO LIKE :EDIT1 ORDER BY PKNO');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   24:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT RTNNO,RTNDT,TAXREFNO,CREDNO,JOBNO FROM RT_INVOI WHERE RTNNO LIKE :EDIT1 AND FLAG=:EDIT2 ORDER BY RTNNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT RTNNO,RTNDT,TAXREFNO,CREDNO,JOBNO FROM RT_INVOI WHERE TAXREFNO LIKE :EDIT1 AND FLAG=:EDIT2 ORDER BY TAXREFNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT RTNNO,RTNDT,TAXREFNO,CREDNO,JOBNO FROM RT_INVOI WHERE CREDNO LIKE :EDIT1 AND FLAG=:EDIT2 ORDER BY CREDNO');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Params[1].Asstring := Flag_a;
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   25:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT MOVNO,MOVDT,MOVFRM,MOVTO,TOTPRC,FLAG FROM MV_INVOI WHERE MOVNO LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND MOVTO LIKE :EDIT3 ORDER BY MOVNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT MOVNO,MOVDT,MOVFRM,MOVTO,TOTPRC,FLAG FROM MV_INVOI WHERE MOVFRM LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND MOVTO LIKE :EDIT3 ORDER BY MOVFRM');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT MOVNO,MOVDT,MOVFRM,MOVTO,TOTPRC,FLAG FROM MV_INVOI WHERE MOVTO LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND MOVTO LIKE :EDIT3 ORDER BY MOVTO');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Params[1].Asstring := Flag_a+'%';
        HQuery1.Params[2].Asstring := Key_a+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   26:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT RECVNO,RECVDT,INVNO,APCODE,RECVLOC FROM RC_INVOI WHERE RECVNO LIKE :EDIT1 AND FLAG=''R'' ORDER BY RECVNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT RECVNO,RECVDT,INVNO,APCODE,RECVLOC FROM RC_INVOI WHERE INVNO LIKE :EDIT1 AND FLAG=''R'' ORDER BY INVNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT RECVNO,RECVDT,INVNO,APCODE,RECVLOC FROM RC_INVOI WHERE APCODE LIKE :EDIT1 AND FLAG=''R'' ORDER BY APCODE');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT RECVNO,RECVDT,INVNO,APCODE,RECVLOC FROM RC_INVOI WHERE RECVLOC LIKE :EDIT1 AND FLAG=''R'' ORDER BY RECVLOC');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   27:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT QANO,QADATE,CUSCOD,QALOCAT FROM QAINVOI WHERE QANO LIKE :EDIT1 ORDER BY QANO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT QANO,QADATE,CUSCOD,QALOCAT FROM QAINVOI WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT QANO,QADATE,CUSCOD,QALOCAT FROM QAINVOI WHERE QALOCAT LIKE :EDIT1 ORDER BY QALOCAT');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   28:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC FROM ADJ_INVOI WHERE ADJNO LIKE :EDIT1 ORDER BY ADJNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC FROM ADJ_INVOI WHERE OFFICCOD LIKE :EDIT1 ORDER BY OFFICCOD');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC FROM ADJ_INVOI WHERE ADJLOC LIKE :EDIT1 ORDER BY ADJLOC');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   29:Begin
        Sqltxt :='SELECT A.JOBNO,A.STRNO,B.ENGNO,B.REGNO,C.NAME1,C.NAME2,A.LOCAT,A.RECVDATE '+
        'FROM JOBORDER A,SVMAST B,ARMAST C WHERE A.STRNO=B.STRNO  AND '+
        'A.CUSCOD=C.CUSCOD ';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( SQLTXT+'AND A.JOBNO LIKE :EDIT1 ORDER BY JOBNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( SQLTXT+'AND A.STRNO LIKE :EDIT1 ORDER BY STRNO ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( SQLTXT+'AND B.ENGNO LIKE :EDIT1 ORDER BY ENGNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( SQLTXT+'AND B.REGNO LIKE :EDIT1 ORDER BY REGNO');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( SQLTXT+'AND C.NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( SQLTXT+'AND C.NAME2 LIKE :EDIT1 ORDER BY NAME2');

        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
  30:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM CAMPGRP WHERE CAMPNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM CAMOGRP WHERE CAMPNAM LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;

      end;
  31:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM PTKITINV WHERE KITCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM PTKITINV WHERE KITNAME LIKE :EDIT1');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;

  32:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE CHQNO LIKE :EDIT1 AND PAYTYP = ''02'' '+Key_a+' ORDER BY  CHQNO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE BKCODE LIKE :EDIT1 AND PAYTYP = ''02''  '+Key_a+' ORDER BY  BKCODE ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE REFNO LIKE :EDIT1 AND PAYTYP = ''02''  '+Key_a+'  ORDER BY  REFNO ');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
    33:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM CHANGRAT WHERE CHCODE LIKE :EDIT1 ORDER BY CHCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  * FROM CHANGRAT WHERE CHNAME LIKE :EDIT1  ORDER BY CHNAME');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
        end;
    34:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM TAXMAST WHERE TAXCODE LIKE :EDIT1 ORDER BY TAXCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  * FROM TAXMAST WHERE TAXNAME LIKE :EDIT1  ORDER BY TAXNAME');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
    35:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM APBYPART WHERE APCODE LIKE :1 AND LOCAT like :2 AND PARTNO LIKE :3 ORDER BY LOCAT,PARTNO,LASTNET ');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Params[1].Asstring := SFMain.Xlocat+'%';
        HQuery1.Params[2].Asstring := Key_a+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
       end;
   36:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE INVNO LIKE :EDIT1 AND APCODE LIKE :CUS AND  FLAG=''E'' AND DEPOSIT=''Y'' AND CANCELID IS NULL AND KANG>0 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE APCODE LIKE :EDIT1 AND APCODE LIKE :CUS AND  FLAG=''E'' AND DEPOSIT=''Y'' AND CANCELID IS NULL AND KANG>0 ');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        HQuery1.Params[1].Asstring := Key_a+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   37:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PCATALOG WHERE PARTNO LIKE :0 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PCATALOG WHERE DESC1 LIKE :0 ');
        HQuery1.Params[0].Asstring := SearchEd.Text+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
      end;
   38:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,BARCODE FROM INVMAST WHERE BARCODE LIKE :EDIT1 ORDER BY BARCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,BARCODE FROM INVMAST WHERE DESC1 LIKE :EDIT1  ORDER BY DESC1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,BARCODE FROM INVMAST WHERE PARTNO LIKE :EDIT1 ORDER BY PARTNO');
        HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not HQuery1.Prepared Then HQuery1.Prepare;
        HQuery1.Open;
    end;
  End;
  End;
end;

procedure TSearchDlg.OrderComboChange(Sender: TObject);
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

procedure TSearchDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TSearchDlg.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TSearchDlg.CalcMax;
begin
  { ** Field Name & Title** }
  SelectFld := 'SELECT ';
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
    end
    Else
     SelectFld :=SelectFld+Fldgrd[I]+',';
    I:=I+1;
  end;

end;

procedure TSearchDlg.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TSearchDlg.SearchEdChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;




procedure TSearchDlg.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
   Begin
       BitBtn1.Click;
   End;

end;

procedure TSearchDlg.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
      SearchButtonClick(Sender);
      DbGrid1.SetFocus;
   End;

end;

end.
