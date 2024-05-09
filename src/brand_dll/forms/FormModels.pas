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
  Vcl.DBCtrls, Vcl.Mask, DateUtils;

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
    DBGrid1: TDBGrid;
    GroupBox7: TGroupBox;
    GroupBox4: TGroupBox;
    Button5: TButton;
    Splitter1: TSplitter;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    GroupBox8: TGroupBox;
    DBEditModelId: TDBEdit;
    DataSourceModels: TDataSource;
    DataSourceMarks: TDataSource;
    FDConnection1: TFDConnection;
    DBLookupComboBox1: TDBLookupComboBox;
    FDTableModels: TFDTable;
    FDTableModelsid: TFDAutoIncField;
    FDTableModelsname: TStringField;
    FDTableModelstype: TStringField;
    FDTableModelsmark_id: TIntegerField;
    FDTableMarks: TFDTable;
    FDTableMarksid: TFDAutoIncField;
    FDTableMarksname: TStringField;
    FDTableModelsmark: TStringField;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    FDTableModelsyear: TDateField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);

  private
    FDConnection: TFDConnection;
  public
    procedure SetFDConnection(connection: TFDConnection);

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDTableModels.Edit;
  FDTableModelsyear.AsDateTime := DateTimePicker1.DateTime;
  FDTableModels.Post;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FDTableModels.Append;
  Button5.Enabled := true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if MessageDlg('Вы уверены в удалении записи?', TMsgDlgType.mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    FDTableModels.Delete;
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  FDTableModelsyear.AsDateTime := DateTimePicker1.DateTime;
  FDTableModels.Post;
  Button5.Enabled := false;
end;

procedure TForm1.SearchEditChange(Sender: TObject);
begin
  FDTableModels.Filtered := false;
  FDTableModels.Filter := 'name like ' + QuotedStr(SearchEdit.Text + '%');
  FDTableModels.Filtered := true;
end;

procedure TForm1.SetFDConnection(connection: TFDConnection);
begin
  FDConnection := connection;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  FDTableModels.Prior;
  DateTimePicker1.DateTime := FDTableModelsyear.AsDateTime;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  FDTableModels.First;
  DateTimePicker1.DateTime := FDTableModelsyear.AsDateTime;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  FDTableModels.Last;
  DateTimePicker1.DateTime := FDTableModelsyear.AsDateTime;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  FDTableModels.Next;
  DateTimePicker1.DateTime := FDTableModelsyear.AsDateTime;
end;

end.
