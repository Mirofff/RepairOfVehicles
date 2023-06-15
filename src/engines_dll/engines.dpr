library engines;

{ *
  ==--- It's test DLL ----------------------------------------------------------==
  * }

uses
  System.Classes,
  Vcl.ComCtrls,
  FormEngines in 'forms\FormEngines.pas' {Form2};

{$R *.res}

var
  tabSheet: TTabSheet;

procedure createTheEngineForm(tabShee: TTabSheet);
begin
  tabSheet := tabShee;
  form1 := TForm1.createparented(tabShee.handle);

  form1.show;
  // form2.parent := tabSheet;
  form1.height := tabShee.height;
  form1.width := tabShee.width;
end;

procedure closeTheEngineForm;
begin
  form1.Free;
end;

procedure resizeTheEngineForm;
begin
  form1.height := tabSheet.height;
  form1.width := tabSheet.width;
end;

exports
  createTheEngineForm,
  closeTheEngineForm,
  resizeTheEngineForm;

end.
