unit SecUse11;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, StdCtrls, ExtCtrls, DB, Qrctrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TQRSecUse = class(TForm)
    QMenuT: TFDQuery;
    wwTb_Cond: TFDTable;
    TSysmst: TFDTable;
    SoTSysmst: TDataSource;
    QLocat: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Cuscode,Name,Locat,UserId,Level,Status,Ed1 : String;
  end;

var
  QRSecUse: TQRSecUse;
  p1 : string;

implementation
uses SecUse10;

{$R *.DFM}
procedure TQRSecUse.FormCreate(Sender: TObject);
begin
   TSysmst.Open;
   QMenuT.MasterSource := SoTSysmst;
   WITH QMenuT Do
   begin
     Close;
     SQL.Clear;
     sql.add('SELECT A.USERID,A.SYSTEMCOD,A.MENUCODE,A.MENUDESC, '+
             'A.M_ACCESS,A.M_EDIT,A.M_DELETE,A.M_INSERT,B.PASSWD,B.CUSCOD,B.LOCAT, '+
             'B.USERNAME,B.LEVEL_1 FROM MENUTRN A,PASSWRD B ' +
             'WHERE A.USERID like :1 AND A.USERID=B.USERID '+
             'AND A.SYSTEMCOD=:SYSTEMCOD AND B.LOCAT LIKE :3 '+
             'ORDER BY A.USERID,A.SYSTEMCOD,A.MENUCODE ');
     if FSecUse.Edit1.Text <> '' then
        Ed1 := FSecUse.Edit1.Text + '%'
     else ed1 := '%';
     Params[0].AsString    := Ed1;
     Params[2].AsString    := FSecUse.Edit3.Text + '%';
     Open;
   END;

    wwTb_cond.Open;
    QRLabel9.caption := wwTb_cond.fieldbyname('COMP_NM').asstring;
    QRLabel9.Left  := 1;
    QRLabel9.Width := 711;
    QRLabel9.Alignment := taCenter;
    //
    QRLabel10.Caption := 'รายงานการกำหนดสิทธิ์ในการใช้งาน';
    QRLabel10.Left  := 1;
    QRLabel10.Width := 711;
    QRLabel10.Alignment := taCenter;

{
    if FSecUse.Edit1.Text = '%' then
       Begin
          Cuscode := QMenuT.fieldbyname('Cuscod').asstring;
          Name    := QMenuT.fieldbyname('Username').asstring;
          Locat   := QMenuT.fieldbyname('Locat').asstring;
          UserId  := QMenuT.fieldbyname('UserID').asstring;
          Level   := QMenuT.fieldbyname('Level_1').asstring;
       End
    else
       Begin
          Cuscode := FSecUse.Edit2.Text;
          Name    := FSecUse.Edit4.Text;
          Locat   := FSecUse.Edit3.Text;
          UserId  := FSecUse.Edit1.Text;
          Level   := QMenuT.fieldbyname('Level_1').asstring;
       End;
 }

end;

procedure TQRSecUse.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if QMenut.fieldbyname('M_Access').asboolean =True then
      QRLabel5.Caption := 'ทำได้'
   else QRLabel5.Caption := 'ทำไม่ได้';

   if QMenut.fieldbyname('M_Edit').asboolean =True then
      QRLabel6.Caption := 'ทำได้'
   else QRLabel6.Caption := 'ทำไม่ได้';
   if QMenut.fieldbyname('M_Delete').asboolean =True then
      QRLabel7.Caption := 'ทำได้'
   else QRLabel7.Caption := 'ทำไม่ได้';
   if QMenut.fieldbyname('M_Insert').asboolean =True then
      QRLabel12.Caption := 'ทำได้'
   else QRLabel12.Caption := 'ทำไม่ได้';

end;







procedure TQRSecUse.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
          Cuscode := QMenuT.fieldbyname('Cuscod').asstring;
          Name    := QMenuT.fieldbyname('Username').asstring;
          Locat   := QMenuT.fieldbyname('Locat').asstring;
          UserId  := QMenuT.fieldbyname('UserID').asstring;
          Level   := QMenuT.fieldbyname('Level_1').asstring;

     with QLocat do
     begin
         Close;
         sql.Clear;
          sql.Add('select locatcod,locatnam from locatmst where locatcod=:0 ');
          params[0].Asstring := Locat;
          open;
          if not(bof and eof) then
             p1 := fieldbyname('locatnam').Asstring
          else p1 := '';
     end;

    QRLabel1.Caption := 'รหัสพนักงาน : '+Cuscode+'   ชื่อ-นามสกุล : '+Name+'   ประจำสาขา : '+p1;
    QRLabel1.Left := 200;
    QRLabel1.Width  := 300;

    if Level = '1' then
      Status := 'Executive (1) '
    else if Level = '2' then
               Status := 'Manager/Asst.(2)'
    else if Level = '3' then
               Status := 'Staff/Officer (3)';
    QRLabel11.Caption := 'รหัสประจำตัว      '+UserId+'     ระดับ Authorize  '+Status;
    QRLabel11.Left := 200;
    QRLabel11.Width  := 300;

end;

end.
