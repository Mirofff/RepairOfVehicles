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
  FireDAC.VCLUI.Wait, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
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
    DBGrid1: TDBGrid;
    SearchQuery: TFDQuery;
    GroupBox7: TGroupBox;
    Label2: TLabel;
    GroupBox4: TGroupBox;
    Button5: TButton;
    Splitter1: TSplitter;
    GroupBox5: TGroupBox;
    FDQuery1: TFDQuery;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    GroupBox6: TGroupBox;
    ComboBox2: TComboBox;
    SearchQueryid: TFDAutoIncField;
    SearchQuerymodel: TWideStringField;
    SearchQuerybody: TWideStringField;
    SearchQuerybrand: TLongWordField;
    SearchQueryid_1: TLongWordField;
    SearchQuerybrand_1: TWideStringField;
    FDQuery1id: TFDAutoIncField;
    FDQuery1brand: TWideStringField;
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
  FDQuery1.SQL.Text := 'SELECT * FROM course_work.brand where brand like ''' +
    ComboBox1.Text + '%'';';
  FDQuery1.Open;

  SearchQuery.Edit;
  SearchQueryModel.Value := Edit1.Text;
  SearchQueryBody.Value := ComboBox2.Text;
  SearchQueryBrand.Value := FDQuery1ID.Value;
  SearchQuery.UpdateRecord;
  SearchQuery.UpdateRecord;
  SearchQuery.Refresh;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Clear;
  ComboBox1.Text := '';
  ComboBox2.Text := '';
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
  FDQuery1.SQL.Text := 'SELECT * FROM course_work.brand where brand like ''' +
    ComboBox1.Text + '%'';';
  FDQuery1.Open;

  SearchQuery.insert;
  SearchQueryModel.Value := Edit1.Text;
  SearchQueryBody.Value := ComboBox2.Text;
  SearchQueryBrand.Value := FDQuery1ID.Value;
  SearchQuery.UpdateRecord;
  SearchQuery.Post;
  SearchQuery.Refresh;
  Button5.Enabled := false;
  Button2.Enabled := true;
  Button4.Enabled := true;
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
    'SELECT * FROM course_work.model join course_work.brand on course_work.model.brand = course_work.brand.id where model like '''
    + SearchEdit.Text + '%'';';
  SearchQuery.Open;
  SearchQuery.Refresh;
  updateEdits;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to FDQuery1.RecordCount do
  begin
    ComboBox1.Items.Add(FDQuery1Brand.AsString);
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
begin
  Label2.caption := SearchQueryID.AsString;
  Edit1.Text := SearchQueryModel.AsString;
  ComboBox1.Text := SearchQueryBrand_1.AsString;
  ComboBox2.Text := SearchQueryBody.AsString;
end;

end.
