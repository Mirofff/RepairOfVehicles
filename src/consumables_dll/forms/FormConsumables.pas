unit FormConsumables;

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
  Vcl.WinXPickers, Vcl.NumberBox, Vcl.Mask, Vcl.DBCtrls;

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
    Button5: TButton;
    Splitter1: TSplitter;
    GroupBox5: TGroupBox;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    DBLabeledEditId: TDBLabeledEdit;
    DBEditPrice: TDBEdit;
    FDTableConsumables: TFDTable;
    DataSourceConsumables: TDataSource;
    FDConnectionMain: TFDConnection;
    FDTableConsumablesid: TLargeintField;
    FDTableConsumablesname: TWideStringField;
    FDTableConsumablesprice: TFloatField;
    DBEdit1: TDBEdit;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DBManagement, DotEnv4Delphi;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDTableConsumables.Edit;
  FDTableConsumablesname.AsWideString := DBEdit1.Text;
  FDTableConsumablesprice.AsCurrency := DBEditPrice.Field.AsCurrency;
  FDTableConsumables.Post;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FDTableConsumables.Append;
  FDTableConsumablesname.AsWideString := '';
  FDTableConsumablesprice.AsCurrency := StrToCurr('0');
  Button5.Enabled := true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FDTableConsumables.Delete;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  FDTableConsumablesname.AsWideString := DBEdit1.Text;
  FDTableConsumablesprice.AsCurrency := DBEditPrice.Field.AsCurrency;
  FDTableConsumables.Post;

  Button5.Enabled := false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  UpdateDBConnection(FDConnectionMain, [FDTableConsumables]);
end;

procedure TForm1.SearchEditChange(Sender: TObject);
begin
  FDTableConsumables.Filtered := false;
  FDTableConsumables.Filter := 'name = ' + QuotedStr(SearchEdit.Text) + ';';
  FDTableConsumables.Filtered := true;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  FDTableConsumables.Prior;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  FDTableConsumables.First;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  FDTableConsumables.Last;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  FDTableConsumables.Next;
end;

end.
