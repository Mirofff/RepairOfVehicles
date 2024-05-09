unit FrameDynamicReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPickers, Vcl.Buttons, json, Vcl.DBGrids, frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF, comobj, ioutils, frxSmartMemo,
  frCoreClasses;

type
  TFrameDyncamicReport = class(TFrame)
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    DatePicker1: TDatePicker;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses frmRepairOfVehicles;

end.
