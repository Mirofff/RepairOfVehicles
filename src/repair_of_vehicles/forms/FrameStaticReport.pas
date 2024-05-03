unit FrameStaticReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPickers, Vcl.Buttons, Vcl.DBCtrls, Vcl.DBGrids,
  frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF, frxSmartMemo, frCoreClasses;

type
  TFrameStaticReport = class(TFrame)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
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
