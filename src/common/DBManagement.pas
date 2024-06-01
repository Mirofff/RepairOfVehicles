unit DBManagement;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, frxSmartMemo, Data.DB,
  FireDAC.Comp.Client, frxClass, frCoreClasses, frxDBSet, FireDAC.Comp.DataSet;

procedure UpdateDBConnection(fdConnection: TFDConnection;
  dataSets: array of TFDCustomQuery);

implementation

uses DotEnv4Delphi;

procedure UpdateDBConnection(fdConnection: TFDConnection;
  dataSets: array of TFDCustomQuery);
var
  DataSet: TFDCustomQuery;
begin
  fdConnection.Connected := False;

  fdConnection.DriverName := 'MySQL';
  fdConnection.Params.Add('Server=' + DotEnv.Env('DB_SERVER'));
  fdConnection.Params.Add('Port=' + DotEnv.Env('DB_PORT'));
  fdConnection.Params.Add('Database=' + DotEnv.Env('DB_DATABASE'));
  fdConnection.Params.Add('User_name=' + DotEnv.Env('DB_USERNAME'));
  fdConnection.Params.Add('Password=' + DotEnv.Env('DB_PASSWORD'));
  fdConnection.Params.Add('CharacterSet=utf8');
  fdConnection.Connected := True;

  for DataSet in dataSets do
  begin
    DataSet.Active := true;
  end;
end;

end.
