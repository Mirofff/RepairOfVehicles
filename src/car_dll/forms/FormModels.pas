unit FormModels;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ValEdit, Vcl.TitleBarCtrls,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, Data.Win.ADODB,
  Vcl.WinXPickers;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    SearchEdit: TEdit;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel5: TPanel;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Button3: TButton;
    GridPanel1: TGridPanel;
    Button2: TButton;
    Button4: TButton;
    GroupBox7: TGroupBox;
    Label2: TLabel;
    GroupBox4: TGroupBox;
    Button5: TButton;
    Splitter1: TSplitter;
    GroupBox5: TGroupBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    GroupBox8: TGroupBox;
    Edit3: TEdit;
    GroupBox10: TGroupBox;
    Edit4: TEdit;
    GroupBox6: TGroupBox;
    GroupBox9: TGroupBox;
    ComboBox4: TComboBox;
    ComboBox3: TComboBox;
    GroupBox11: TGroupBox;
    ComboBox2: TComboBox;
    GroupBox12: TGroupBox;
    ComboBox5: TComboBox;
    DBGrid1: TDBGrid;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

    procedure updateEdits;
    procedure SearchEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);

  private
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
  SearchQuery.Edit;

  FDQuery1.SQL.Text := 'SELECT * FROM course_work.model where model like ''' +
    ComboBox4.Text + '%'';';
  FDQuery1.Open;
  SearchQuerymodel_id.Value := FDQuery1.FieldByName('id').asinteger;

  FDQuery1.SQL.Text := 'SELECT * FROM course_work.engine where name like ''' +
    ComboBox5.Text + '%'';';
  FDQuery1.Open;
  SearchQueryengine_id.Value := FDQuery1.FieldByName('id').asinteger;

  SearchQueryvin.Value := Edit3.Text;
  SearchQueryStateNumber.Value := Edit4.Text;
  SearchQuerycolor.Value := ComboBox1.Text;
  SearchQuerymileage.Value := strtoint(Edit1.Text);
  SearchQueryequipment.Value := ComboBox3.Text;

  SearchQuery.UpdateRecord;
  SearchQuery.Refresh;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit3.Clear;
  Edit4.Clear;
  ComboBox2.Text := '';
  ComboBox4.Text := '';
  ComboBox5.Text := '';
  ComboBox1.Text := '';
  ComboBox3.Text := '';
  Label2.caption := '';
  Button5.Enabled := true;
  Button2.Enabled := false;
  Button4.Enabled := false;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  SearchQuery.Delete;
  SearchQuery.Refresh;
  updateEdits;
  if SearchEdit.Text <> '' then
    SearchEdit.Clear;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  SearchQuery.insert;

  FDQuery1.SQL.Text := 'SELECT * FROM course_work.model where model like ''' +
    ComboBox4.Text + '%'';';
  FDQuery1.Open;
  SearchQuerymodel_id.Value := FDQuery1.FieldByName('id').asinteger;

  FDQuery1.SQL.Text := 'SELECT * FROM course_work.engine where name like ''' +
    ComboBox5.Text + '%'';';
  FDQuery1.Open;
  SearchQueryengine_id.Value := FDQuery1.FieldByName('id').asinteger;

  SearchQueryvin.Value := Edit3.Text;
  SearchQueryStateNumber.Value := Edit4.Text;
  SearchQuerycolor.Value := ComboBox1.Text;
  SearchQuerymileage.Value := strtoint(Edit1.Text);
  SearchQueryequipment.Value := ComboBox3.Text;
  SearchQuery.Post;
  SearchQuery.Refresh;
  Button5.Enabled := false;
  Button2.Enabled := true;
  Button4.Enabled := true;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
var
  i: integer;
begin
  ComboBox4.Clear;
  FDQuery1.SQL.Text :=
    'select * from course_work.model as m join course_work.brand as b on m.brand = b.id where b.brand = '''
    + ComboBox2.Text + ''';';
  FDQuery1.Open;
  ComboBox4.Text := FDQuery1.FieldByName('model').AsString;
  for i := 0 to FDQuery1.RecordCount - 1 do
  begin
    ComboBox4.Items.Add(FDQuery1.FieldByName('model').AsString);
    FDQuery1.Next;
  end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  updateEdits;
end;

procedure TForm1.DBGrid1EditButtonClick(Sender: TObject);
begin
  updateEdits;
end;

procedure TForm1.SearchEditChange(Sender: TObject);
begin
  SearchQuery.SQL.Text :=
    'SELECT c.vin,c.mileage,c.color,c.StateNumber,c.equipment,c.model_id,c.engine_id,m.model,b.brand,m.id,e '
    + '.name,e.id FROM course_work.car AS c JOIN course_work.model AS m ON c.model_id = m.id JOIN course_work.brand AS b ON m.brand = b.id join course_work.engine as e on c.engine_id = e.id where stateNumber like '''
    + SearchEdit.Text + '%'';';
  SearchQuery.Open;
  SearchQuery.Refresh;
  updateEdits;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  FDQuery1.SQL.Text := 'SELECT brand from course_work.brand;';
  FDQuery1.Open;
  for i := 0 to FDQuery1.RecordCount - 1 do
  begin
    ComboBox2.Items.Add(FDQuery1.FieldByName('brand').AsString);
    FDQuery1.Next;
  end;

  FDQuery1.SQL.Text := 'SELECT name FROM course_work.engine;';
  FDQuery1.Open;
  for i := 0 to FDQuery1.RecordCount - 1 do
  begin
    ComboBox5.Items.Add(FDQuery1.FieldByName('name').AsString);
    FDQuery1.Next;
  end;

  FDQuery1.SQL.Text := 'SELECT model FROM course_work.model;';
  FDQuery1.Open;
  for i := 0 to FDQuery1.RecordCount - 1 do
  begin
    ComboBox4.Items.Add(FDQuery1.FieldByName('model').AsString);
    FDQuery1.Next;
  end;

  updateEdits;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if not DataSource1.DataSet.Bof then
  begin
    DataSource1.DataSet.Prior;
    updateEdits;
  end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  if not DataSource1.DataSet.Bof then
  begin
    DataSource1.DataSet.First;
    updateEdits;
  end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  if not DataSource1.DataSet.Eof then
  begin
    DataSource1.DataSet.Last;
    updateEdits;
  end;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  if not DataSource1.DataSet.Eof then
  begin
    DataSource1.DataSet.Next;
    updateEdits;
  end;
end;

procedure TForm1.updateEdits;
var
  i: integer;
begin
  Label2.caption := SearchQueryid.AsString;
  Edit3.Text := SearchQueryvin.AsString;
  Edit4.Text := SearchQueryStateNumber.AsString;
  Edit1.Text := SearchQuerymileage.AsString;
  ComboBox2.Text := SearchQuerybrand.AsString;

  begin
    ComboBox4.Clear;
    FDQuery1.SQL.Text :=
      'select * from course_work.model as m join course_work.brand as b on m.brand = b.id where b.brand = '''
      + ComboBox2.Text + ''';';
    FDQuery1.Open;
    ComboBox4.Text := FDQuery1.FieldByName('model').AsString;
    for i := 0 to FDQuery1.RecordCount - 1 do
    begin
      ComboBox4.Items.Add(FDQuery1.FieldByName('model').AsString);
      FDQuery1.Next;
    end;
    ComboBox5.Text := SearchQueryname.AsString;
    ComboBox3.Text := SearchQueryequipment.AsString;
    ComboBox1.Text := SearchQuerycolor.AsString;
  end;
end;

end.
