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

  private
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
