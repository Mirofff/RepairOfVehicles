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
  Vcl.WinXPickers, Vcl.NumberBox;

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
    LabelID: TLabel;
    Button5: TButton;
    Splitter1: TSplitter;
    GroupBox5: TGroupBox;
    EditName: TEdit;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    EditSurname: TEdit;
    GroupBox6: TGroupBox;
    EditPatronymic: TEdit;
    GroupBox8: TGroupBox;
    EditPhone: TEdit;
    GroupBox9: TGroupBox;
    EditAddress: TEdit;
    GroupBox10: TGroupBox;
    EditSeries: TEdit;
    GroupBox11: TGroupBox;
    EditNumber: TEdit;
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
  SearchQuery.Edit;

  SearchQueryName.Value := EditName.Text;
  SearchQuerySurname.Value := EditSurname.Text;
  SearchQueryPatronimic.Value := EditPatronymic.Text;
  SearchQueryPhone.Value := EditPhone.Text;
  SearchQueryAddress.Value := EditAddress.Text;
  SearchQuerySeries.AsString := EditSeries.Text;
  SearchQueryNumber.AsString := EditNumber.Text;

  SearchQuery.UpdateRecord;
  SearchQuery.Refresh;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  EditName.Clear;
  EditSurname.Clear;
  EditPatronymic.Clear;
  EditPhone.Clear;
  EditAddress.Clear;
  EditSeries.Clear;
  EditNumber.Clear;
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

  SearchQueryName.Value := EditName.Text;
  SearchQuerySurname.Value := EditSurname.Text;
  SearchQueryPatronimic.Value := EditPatronymic.Text;
  SearchQueryPhone.Value := EditPhone.Text;
  SearchQueryAddress.Value := EditAddress.Text;
  SearchQuerySeries.AsString := EditSeries.Text;
  SearchQueryNumber.AsString := EditNumber.Text;

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
    'SELECT * from course_work.client where Surname like ''' +
    SearchEdit.Text + '%'';';
  SearchQuery.Open;
  SearchQuery.Refresh;
  updateEdits;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
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
  EditName.Text := SearchQueryName.AsString;
  EditSurname.Text := SearchQuerySurname.AsString;
  EditPatronymic.Text := SearchQueryPatronimic.AsString;
  EditPhone.Text := SearchQueryPhone.AsString;
  EditAddress.Text := SearchQueryAddress.AsString;
  EditSeries.Text := SearchQuerySeries.AsString;
  EditNumber.Text := SearchQueryNumber.AsString;
end;

end.
