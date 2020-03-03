unit Csv_txt;

interface
uses
  SysUtils, Classes, Forms, DB, DbiProcs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

procedure CSVToTxt(FieldTable: TFDQuery; Path, TableName: String);
procedure ExportCSV(TheTable: TFDQuery; FileName: String);

implementation

function Separate(Line: String): TStringList; forward;

procedure CSVToTxt(FieldTable: TFDQuery; Path, TableName: String);
var
  SCHFile: TextFile;
  TXTFile: TextFile;
  CSVFile: TextFile;
  i: Integer;
  list: TStringList;
  line: String;
  field: TField;
  position: Integer;
  size: Integer;
  WasOpen: Boolean;

  procedure WriteFieldType;
  begin
    case field.DataType of
      ftBoolean:
        Write(SCHFile, 'BOOL');
      ftDate:
        Write(SCHFile, 'DATE');
      ftDateTime:
        Write(SCHFile, 'TIMESTAMP');
      ftFloat:
        Write(SCHFile, 'FLOAT');
      ftInteger:
        Write(SCHFile, 'LONGINT');
      ftSmallint:
        Write(SCHFile, 'NUMBER');
      ftString:
        Write(SCHFile, 'CHAR');
      ftTime:
        Write(SCHFile, 'TIME');
    end;
  end;

  function GetSize: Integer;
  begin
    Result := field.Size;
    if Result = 0 then Result := field.DisplayWidth;
  end;

begin
  { First build the schema file. }

  AssignFile(CSVFile,Path + '\' + TableName + '.CSV');
  Reset(CSVFile);

  AssignFile(SCHFile,Path + '\' + TableName + '.SCH');
  ReWrite(SCHFile);

  Writeln(SCHFile,'[' + TableName + ']');
  Writeln(SCHFile,'Filetype=VARYING');
  Writeln(SCHFile,'Delimiter="');
  Writeln(SCHFile,'Separator=,');
  Writeln(SCHFile,'Charset=ascii');

  Readln(CSVFile,line);
  List := Separate(line);
  position := 0;
  WasOpen := FieldTable.Active;
  FieldTable.Active := True;
  for i:=0 to List.Count - 1 do begin
    Write(SCHFile,'field'+ IntToStr(i+1) + '=');
    Write(SCHFile,List[i] + ',');
    field := FieldTable.FieldByName(List[i]);
    WriteFieldType;
    Write(SCHFile,',');
    size := GetSize;
    Write(SCHFile,size);
    Write(SCHFile,',');
    if field.DataType = ftFloat then
      Write(SCHFile,'2,')
    else
      Write(SCHFile,'0,');
    Writeln(SCHFile,position);
    position := position + size;
  end;
  FieldTable.Active := WasOpen;

  { Now build the text file. The CSV file is at the second line,
    so we just continue from there. }

  AssignFile(TXTFile,Path + '\' + TableName + '.TXT');
  ReWrite(TXTFile);
  while not EOF(CSVFile) do begin
    Readln(CSVFile,line);
    Writeln(TXTFile,line);
  end;

  CloseFile(SCHFile);
  CloseFile(TXTFile);
  CloseFile(CSVFile);
end;

procedure ExportCSV(TheTable: TFDQuery; FileName: String);
var
  WasOpen: Boolean;
  CSVFile: TextFile;
  {PathBuf: Array[1..256] of Char;}
  {Path: String;}
  first: Boolean;
  i,j: Integer;
begin

  { Set up the text table }
  WasOpen := TheTable.Active;
  TheTable.Active := True;

  { Set up the CSV file, which we're creating }
  {dbiGetDirectory(TheTable.Database.Handle,True,@(PathBuf[1]));
  Path := StrPas(@(PathBuf[1]));
  AssignFile(CSVFile,Path + '\' + FileName + '.CSV');}
  AssignFile(CSVFile,FileName);
  ReWrite(CSVFile);

  { First do the headers. }
  first := True;
  for i:=0 to TheTable.FieldCount - 1 do begin
    if not first then Write(CSVFile,',')
    else first := False;
    Write(CSVFile,TheTable.Fields[i].FieldName);
  end;
  Writeln(CSVFile);

  { Now do the records }
  TheTable.First;
  while not TheTable.EOF do begin
    first := True;
    for i:=0 to TheTable.FieldCount - 1 do begin
      if not first then Write(CSVFile,',')
      else first := False;
      if TheTable.Fields[i].DataType = ftString then
        Write(CSVFile,'"' + TheTable.Fields[i].AsString + '"')
      else
        Write(CSVFile,TheTable.Fields[i].AsString);
    end;
    Writeln(CSVFile);
    TheTable.Next;
  end;

  CloseFile(CSVFile);
  TheTable.Active := WasOpen;
end;

function Separate(Line: String): TStringList;
var
  done: Boolean;
  Position: Integer;
begin
  Result := TStringList.Create;
  done := False;
  while not done do begin
    Position := Pos(',',Line);
    if Position = 0 then begin
      Result.Add(Line);
      done := True;
    end
    else begin
      Result.Add(Copy(Line,0,Position-1));
      Delete(Line,1,Position);
    end;
  end;
end;

end.
