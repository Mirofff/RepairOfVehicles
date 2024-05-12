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
    Button1: TButton;
    Panel1: TPanel;
    Label1: TLabel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses frmRepairOfVehicles;

end.
