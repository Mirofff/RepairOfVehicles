unit FormEngines;

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
    GroupBox6: TGroupBox;
    FuelComboBox: TComboBox;
    GroupBox7: TGroupBox;
    Label2: TLabel;
    GroupBox5: TGroupBox;
    VolumeEdit: TEdit;
    GroupBox4: TGroupBox;
    PowerEdit: TEdit;
    Button5: TButton;
    Splitter1: TSplitter;
    SearchQueryid: TFDAutoIncField;
    SearchQuerypower: TLongWordField;
    SearchQueryvolume: TSingleField;
    SearchQueryfuel: TWideStringField;
    SearchQueryname: TWideStringField;
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
  SearchQueryPower.Value := StrToInt(PowerEdit.Text);
  SearchQueryVolume.Value := StrToInt(VolumeEdit.Text);
  SearchQueryFuel.Value := FuelComboBox.Text;
  SearchQuery.UpdateRecord;
  SearchQuery.Refresh;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  PowerEdit.Clear;
  VolumeEdit.Clear;
  FuelComboBox.Text := '';
  Label2.caption := '';
  Button5.Enabled := true;
  Button2.Enabled := false;
  Button4.Enabled := false;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  SearchQuery.Delete;
  SearchQuery.Refresh;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  SearchQuery.Insert;
  SearchQueryPower.Value := StrToInt(PowerEdit.Text);
  SearchQueryVolume.Value := StrToInt(VolumeEdit.Text);
  SearchQueryFuel.Value := FuelComboBox.Text;
  SearchQuery.Refresh;
  Button5.Enabled := false;
end;

procedure TForm1.DBGrid1EditButtonClick(Sender: TObject);
begin
  updateEdits;
end;

procedure TForm1.SearchEditChange(Sender: TObject);
begin
  SearchQuery.SQL.Text := 'SELECT * FROM course_work.engine where Power like '''
    + SearchEdit.Text + '%'';';
  SearchQuery.Open;
  SearchQuery.Refresh;
  updateEdits;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SearchQuery.SQL.Text :=
    'SELECT * FROM course_work.engine where Power like ''%'';';
  SearchQuery.Open;

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
  PowerEdit.Text := SearchQueryPower.AsString;
  VolumeEdit.Text := SearchQueryVolume.AsString;
  FuelComboBox.Text := SearchQueryFuel.AsString;
  // FDQuery1.open;
end;

end.
