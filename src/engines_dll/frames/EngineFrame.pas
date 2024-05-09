unit EngineFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrameEngine = class(TFrame)
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel1: TPanel;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Label2: TLabel;
    GroupBox5: TGroupBox;
    VolumeEdit: TEdit;
    GroupBox4: TGroupBox;
    PowerEdit: TEdit;
    GroupBox3: TGroupBox;
    Button3: TButton;
    GridPanel1: TGridPanel;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    SearchEdit: TEdit;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Splitter1: TSplitter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
