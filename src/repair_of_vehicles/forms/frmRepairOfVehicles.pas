unit frmRepairOfVehicles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList, Vcl.BaseImageCollection, Vcl.ImageCollection,
  Vcl.TitleBarCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.WinXCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FrameOperationsLog, FrameStaticReport, FrameDynamicReport, ShellAPI;

type
  TMainForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet1: TTabSheet;
    GridPanel1: TGridPanel;
    Panel5: TPanel;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    EditLogin: TEdit;
    Label2: TLabel;
    EditPassword: TEdit;
    Button1: TButton;
    TabSheet10: TTabSheet;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TitleBarPanel1: TTitleBarPanel;
    SpeedButton1: TSpeedButton;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;

    FrameDyncamicReport1: TFrameDyncamicReport;
    FrameStaticReport1: TFrameStaticReport;
    FrameOperationsLog1: TFrameOperationsLog;
    SplitViewDatabaseConnection: TSplitView;
    SplitViewMenu: TSplitView;
    ReautorizationButton: TSpeedButton;
    ExitButton: TSpeedButton;
    HandBookButton: TSpeedButton;
    ReportButton: TSpeedButton;
    OperationLogButton: TSpeedButton;
    HelpButton: TSpeedButton;
    GridPanelDatabaseConnection: TGridPanel;
    Button8: TButton;
    Panel4: TPanel;
    GridPanel3: TGridPanel;
    GridPanel4: TGridPanel;
    Panel1: TPanel;
    Label3: TLabel;
    EditDBHost: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    EditDBPort: TEdit;
    FDConnectionMain: TFDConnection;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}
// { =--- Model's form procedures ---= }
// procedure createTheEngineForm(tabShee: TTabSheet); external 'engines.dll';
// procedure resizeTheEngineForm; external 'engines.dll';
//
// { =--- Model's form procedures ---= }
// procedure createModelForm(tabShee: TTabSheet); external 'models.dll';
// procedure resizeModelForm; external 'models.dll';
//
// { =--- Brand's form procedures ---= }
// procedure createBrandsForm(tabShee: TTabSheet); external 'brands.dll';
// procedure resizeBrandsForm; external 'brands.dll';
//
// { =--- Car's form procedures ---= }
// procedure createCarsForm(tabShee: TTabSheet); external 'cars.dll';
// procedure resizeCarsForm; external 'cars.dll';
//
// { =--- Service's form procedures ---= }
// procedure createServicesForm(tabShee: TTabSheet); external 'services.dll';
// procedure resizeServicesForm; external 'services.dll';
//
// { =--- Consumable's form procedures ---= }
// procedure createConsumablesForm(tabShee: TTabSheet); external 'consumables.dll';
// procedure resizeConsumablesForm; external 'consumables.dll';
//
// { =--- Client's form procedures ---= }
// procedure createClientsForm(tabShee: TTabSheet); external 'clients.dll';
// procedure resizeClientsForm; external 'clients.dll';

procedure TMainForm.Button2Click(Sender: TObject);
begin
  with FDConnectionMain do
  begin
    Params.Values['Server'] := EditDBHost.Text;
    Params.Values['Port'] := EditDBPort.Text;
  end;

  FDConnectionMain.Connected := true;
  SplitViewDatabaseConnection.Opened := false;
end;

procedure TMainForm.Button8Click(Sender: TObject);

begin
  SplitViewDatabaseConnection.Opened := true;

end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  { =--- Include forms initialize ---= }
  // CreateTheDynamicReportForm;

  { =--- DLL's forms initialize ---= }
  // createTheEngineForm(TabSheet3);
  // createModelForm(TabSheet5);
  // createBrandsForm(TabSheet4);
  // createCarsForm(TabSheet9);
  // createServicesForm(TabSheet8);
  // createConsumablesForm(TabSheet7);
  // createClientsForm(TabSheet6);

  PageControl1.ActivePage := TabSheet1;

end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  // resizeTheEngineForm;
  // resizeModelForm;
  // resizeBrandsForm;
  // resizeCarsForm;
  // resizeServicesForm;
  // resizeConsumablesForm;
  // resizeClientsForm
end;

end.
