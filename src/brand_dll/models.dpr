library models;

{ *
  ==--- It's test DLL ----------------------------------------------------------==
  * }

uses
  System.Classes,
  Vcl.ComCtrls,
  FormModels in 'forms\FormModels.pas' {Form3};

{$R *.res}

var
  tabSheet: TTabSheet;

procedure createModelForm(tabShee: TTabSheet);
begin
  tabSheet := tabShee;
  form1 := TForm1.createparented(tabShee.handle);

  form1.show;
  form1.height := tabShee.height;
  form1.width := tabShee.width;
end;

procedure closeModelForm;
begin
  form1.Free;
end;

procedure resizeModelForm;
begin
  form1.height := tabSheet.height;
  form1.width := tabSheet.width;
end;

exports
  createModelForm,
  closeModelForm,
  resizeModelForm;

begin

end.
