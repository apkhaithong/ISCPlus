unit uControlpanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeStatusBar, cxControls, cxContainer, cxEdit, cxTextEdit,
  AdvGlassButton, AdvOfficeButtons, StdCtrls, GradientLabel, AdvToolBar, cxPC,
  ExtCtrls, ComCtrls, cxLookAndFeelPainters, cxGroupBox, cxMemo, cxGraphics,
  cxMaskEdit, cxDropDownEdit, cxLookAndFeels, Menus, cxButtons, AdvSmoothLabel,
  cxCalendar, dxStatusBar, BusinessSkinForm, cxImageComboBox, DB, cxButtonEdit,
  cxRadioGroup, AdvPanel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, dxDateRanges;

type
  TfrControlpanel = class(TForm)
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Query1: TFDQuery;
    Query2: TFDQuery;
    AdvPanel1: TAdvPanel;
    AdvSmoothLabel4: TAdvSmoothLabel;
    EdJourcod: TcxButtonEdit;
    cxRadioGroup1: TcxRadioGroup;
    AdvGlassButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    qrEnqPart: TFDQuery;
    qrEnqPartRECVNO: TStringField;
    qrEnqPartRECVLOC: TStringField;
    qrEnqPartRECVDATE: TDateField;
    qrEnqPartPARTNO: TStringField;
    qrEnqPartNETCOST: TFloatField;
    qrEnqPartNETTOT: TFloatField;
    qrEnqPartAVGCOST: TFloatField;
    qrEnqPartVATCOST: TFloatField;
    qrEnqPartNET: TFloatField;
    qrEnqPartNETSTK: TFloatField;
    cxGrid1DBTableView1RECVNO: TcxGridDBColumn;
    cxGrid1DBTableView1RECVLOC: TcxGridDBColumn;
    cxGrid1DBTableView1RECVDATE: TcxGridDBColumn;
    cxGrid1DBTableView1PARTNO: TcxGridDBColumn;
    cxGrid1DBTableView1NETCOST: TcxGridDBColumn;
    cxGrid1DBTableView1NETTOT: TcxGridDBColumn;
    cxGrid1DBTableView1AVGCOST: TcxGridDBColumn;
    cxGrid1DBTableView1VATCOST: TcxGridDBColumn;
    cxGrid1DBTableView1NET: TcxGridDBColumn;
    cxGrid1DBTableView1NETSTK: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EdJourcodPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frControlpanel: TfrControlpanel;

implementation
uses uSoftFirm,uSrcDlg;
{$R *.dfm}

procedure TfrControlpanel.AdvGlassButton1Click(Sender: TObject);
begin
  {if EdJourcod.Text = '' then
  sfmain.RaiseException('กรุณากำหนดรหัสสินค้าก่อนทำรายการ..!');}
   if cxRadioGroup1.ItemIndex = 0 then
   begin
     with query1 do
     begin
       close;
       sql.Clear;
       sql.Add('SELECT A.RECVNO,A.RECVLOC,A.RECVDATE,A.PARTNO,A.NETCOST,A.NETTOT,'+
               'A.AVGCOST,A.VATCOST,A.NETCOST-A.VATCOST NET,B.NETCOST NETSTK  '+
               'FROM RC_TRANS A,STKCARD B WHERE A.PARTNO=B.PARTNO AND A.RECVLOC=B.LOC '+
               'AND A.RECVNO=B.PKNO AND A.PARTNO LIKE :EDIT1 AND (A.NETCOST-A.VATCOST <> B.NETCOST) AND A.TIME1=B.TIME1 ') ;
       params[0].AsString := EdJourcod.Text+'%';
       open;
     end;

     Query1.First;
     while not query1.Eof do
     begin
       with query2 do
       begin
         close;
         sql.Clear;
         sql.Add('update stkcard set netcost =:0 where pkno=:1 and partno =:2 and loc =:3');
         params[0].AsFloat  := query1.fieldbyname('NET').AsFloat;
         params[1].AsString := query1.fieldbyname('RECVNO').AsString;
         params[2].AsString := query1.fieldbyname('PARTNO').AsString;
         params[3].AsString := query1.fieldbyname('RECVLOC').AsString;
         execSql;
       end;
       query1.Next;
     end;
   end;

  sfmain.AdvSmoothMessageDialog3.Caption := 'Successfully...';
  sfmain.AdvSmoothMessageDialog3.HTMLText.Text := 'ปรับปรุงข้อมูลที่ผิดพลาดเรียบร้อยแล้ว<br/>กรุณาตรวจสอบข้อมูลต้นทางอีกครั้ง...';
  sfmain.AdvSmoothMessageDialog3.ExecuteDialog;
end;

procedure TfrControlpanel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SFMain.AdvSmoothMessageDialog3.Caption := 'Postgl successfully...!';
  SFMain.AdvSmoothMessageDialog3.HTMLText.Text := 'บันทึกรายการเข้า GL เรียบร้อยแล้ว<br>กรุณาตรวจสอบรายการนี้อีกครั้งที่สมุดงานประจำวัน';

  frControlpanel := nil;
  action := caFree;  
end;

procedure TfrControlpanel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
   Begin
       Perform(Wm_NextDlgCtl,0,0);
       Key := #0;
   End;
end;

procedure TfrControlpanel.FormShow(Sender: TObject);
begin
  EdJourcod.SetFocus;
end;

procedure TfrControlpanel.EdJourcodPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
    EdJourcod.text := fSrcDlg.Keyno;
end;

procedure TfrControlpanel.cxButton1Click(Sender: TObject);
begin
  with qrEnqPart do
  begin
   close;
   sql.Clear;
   sql.Add('SELECT A.RECVNO,A.RECVLOC,A.RECVDATE,A.PARTNO,A.NETCOST,A.NETTOT,'+
           'A.AVGCOST,A.VATCOST,A.NETCOST-A.VATCOST NET,B.NETCOST NETSTK  '+
           'FROM RC_TRANS A,STKCARD B WHERE A.PARTNO=B.PARTNO AND A.RECVLOC=B.LOC '+
           'AND A.RECVNO=B.PKNO AND A.PARTNO LIKE :EDIT1 AND (A.NETCOST-A.VATCOST <> B.NETCOST) AND A.TIME1=B.TIME1 ') ;
   params[0].AsString := EdJourcod.Text+'%';
   open;
  end;
end;

end.
