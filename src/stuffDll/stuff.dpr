library stuff;

uses
  System.SysUtils,
  System.Classes,
  Vcl.ComCtrls,
  FormStuff in 'FormStuff.pas' {Form1},
  DBManagement in '..\common\DBManagement.pas',
  DotEnv4Delphi in '..\common\DotEnv4Delphi.pas';

{$R *.res}

var
  tabSheet: TTabSheet;

procedure createServicesForm(tabShee: TTabSheet);
begin
  tabSheet := tabShee;
  form1 := TForm1.createparented(tabShee.handle);

  form1.show;

  form1.height := tabShee.height;
  form1.width := tabShee.width;
end;

procedure resizeServicesForm;
begin
  form1.height := tabSheet.height;
  form1.width := tabSheet.width;
end;

exports
  createServicesForm,
  resizeServicesForm;

begin

end.
