library brands;

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

procedure createBrandsForm(tabShee: TTabSheet;
  connectionDefName: PWideChar);
begin
  tabSheet := tabShee;
  form1 := TForm1.createparented(tabShee.handle);

  form1.show;
  // form2.parent := tabSheet;
  form1.height := tabShee.height;
  form1.width := tabShee.width;
end;

procedure closeBrandsForm;
begin
  form1.Free;
end;

procedure resizeBrandsForm;
begin
  form1.height := tabSheet.height;
  form1.width := tabSheet.width;
end;

exports
  closeBrandsForm,
  resizeBrandsForm,
  createBrandsForm;

begin

end.
