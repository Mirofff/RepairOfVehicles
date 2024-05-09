unit FrameOperationsLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.WinXPickers, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Generics.Collections, Vcl.JumpList, Vcl.ControlList, Vcl.ValEdit,
  types,
  Vcl.NumberBox, json, Generics.Collections, System.StrUtils, frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF, frxTableObject, frxSmartMemo,
  frCoreClasses;

type
  TServices = TArray<TArray<string>>;

  TFrameOperationsLog = class(TFrame)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DatePicker1: TDatePicker;
    DatePicker2: TDatePicker;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Edit2: TEdit;
    Label1: TLabel;
    GridPanel1: TGridPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    GroupBox9: TGroupBox;
    Label2: TLabel;
    GridPanel2: TGridPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    GridPanel3: TGridPanel;
    ListBox1: TListBox;
    ListBox3: TListBox;
    ListBox2: TListBox;
    ListBox4: TListBox;
    GroupBox6: TGroupBox;
    NumberBox2: TNumberBox;
    GroupBox10: TGroupBox;
    NumberBox1: TNumberBox;


  private
    { Private declarations }

  public
    { Public declarations }


  end;

var
  FrameOperationsLog1: TFrameOperationsLog;

implementation

uses frmRepairOfVehicles;
{$R *.dfm}


end.
