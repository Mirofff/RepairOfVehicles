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
  FrameOperationsLog, FrameStaticReport, FrameDynamicReport, ShellAPI,
  Vcl.DBCtrls, frxSmartMemo, Vcl.WinXPickers, frxClass, frCoreClasses, frxDBSet,
  Vcl.NumberBox;

type
  TMainForm = class(TForm)
    PageControlMain: TPageControl;
    TabSheetHandbooks: TTabSheet;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheetAuth: TTabSheet;
    GridPanel1: TGridPanel;
    Panel5: TPanel;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    EditLogin: TEdit;
    Label2: TLabel;
    EditPassword: TEdit;
    Button1: TButton;
    TabSheetReports: TTabSheet;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheetOperationsLog: TTabSheet;
    TitleBarPanel1: TTitleBarPanel;
    SpeedButton1: TSpeedButton;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;

    FrameDyncamicReport1: TFrameDyncamicReport;
    FrameStaticReport1: TFrameStaticReport;
    SplitViewDatabaseConnection: TSplitView;
    SplitViewMenu: TSplitView;
    SpeedButtonMenuLogout: TSpeedButton;
    SpeedButtonMenuHandbooks: TSpeedButton;
    SpeedButtonMenuReports: TSpeedButton;
    SpeedButtonMenuOperationsLogs: TSpeedButton;
    SpeedButtonMenuHelp: TSpeedButton;
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
    Button2: TButton;
    Panel3: TPanel;
    Panel6: TPanel;
    GroupBox7: TGroupBox;
    Edit2: TEdit;
    GroupBox8: TGroupBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton7: TSpeedButton;
    GridPanel7: TGridPanel;
    ListBox1: TListBox;
    ListBox3: TListBox;
    ListBox2: TListBox;
    ListBox4: TListBox;
    GroupBox6: TGroupBox;
    NumberBox2: TNumberBox;
    GroupBox10: TGroupBox;
    NumberBox1: TNumberBox;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    GridPanel5: TGridPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    GroupBox2: TGroupBox;
    DatePicker1: TDatePicker;
    GroupBox3: TGroupBox;
    DatePicker2: TDatePicker;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox9: TGroupBox;
    Label6: TLabel;
    GridPanel6: TGridPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Splitter1: TSplitter;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButtonMenuHandbooksClick(Sender: TObject);
    procedure SpeedButtonMenuReportsClick(Sender: TObject);
    procedure SpeedButtonMenuOperationsLogsClick(Sender: TObject);
    procedure SpeedButtonMenuLogoutClick(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }

    engineFrame: TFrame;

    procedure unlockSideMenuButtons(stuff_role: string);
    procedure lockSideMenuButtons;

  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses Bcrypt, DataModule;

{$R *.dfm}
{ =--- Model's form procedures ---= }
procedure createTheEngineForm(tabShee: TTabSheet); external 'engines.dll';
procedure resizeTheEngineForm; external 'engines.dll';
procedure closeTheEngineForm; external 'engines.dll';

{ =--- Model's form procedures ---= }
procedure createModelForm(tabShee: TTabSheet); external 'models.dll';
procedure resizeModelForm; external 'models.dll';
procedure closeModelForm; external 'models.dll';

{ =--- Brand's form procedures ---= }
procedure createBrandsForm(tabShee: TTabSheet); external 'brands.dll';
procedure resizeBrandsForm; external 'brands.dll';

{ =--- Car's form procedures ---= }
procedure createCarsForm(tabShee: TTabSheet); external 'cars.dll';
procedure resizeCarsForm; external 'cars.dll';

{ =--- Service's form procedures ---= }
procedure createServicesForm(tabShee: TTabSheet); external 'services.dll';
procedure resizeServicesForm; external 'services.dll';

{ =--- Consumable's form procedures ---= }
procedure createConsumablesForm(tabShee: TTabSheet); external 'consumables.dll';
procedure resizeConsumablesForm; external 'consumables.dll';

{ =--- Client's form procedures ---= }
procedure createClientsForm(tabShee: TTabSheet); external 'clients.dll';
procedure resizeClientsForm; external 'clients.dll';

procedure TMainForm.unlockSideMenuButtons(stuff_role: string);
begin
  if stuff_role = 'admin' then
  begin
    SpeedButtonMenuHandbooks.Enabled := true;
    SpeedButtonMenuReports.Enabled := true;
    SpeedButtonMenuOperationsLogs.Enabled := true;
  end
  else if stuff_role = 'operator' then
  begin
    //
  end
  else
  begin
    raise Exception.Create('RUNTIME EXCEPTION - UNDEFINED ROLE!');
  end;
end;

procedure TMainForm.lockSideMenuButtons;
begin
  SpeedButtonMenuHandbooks.Enabled := false;
  SpeedButtonMenuReports.Enabled := false;
  SpeedButtonMenuOperationsLogs.Enabled := false;
end;

procedure TMainForm.Button1Click(Sender: TObject);
var
  passwordRehashNeeded: Boolean;
  isPasswordValid: Boolean;
begin
  FDTable1.Filter := 'email = ''' + EditLogin.Text + '''';
  FDTable1.Filtered := true;

  isPasswordValid := TBCrypt.CheckPassword(EditPassword.Text,
    FDTable1password.Value, passwordRehashNeeded);

  if isPasswordValid then
  begin
    PageControlMain.ActivePage := TabSheetOperationsLog;
    unlockSideMenuButtons(FDTable1role.Value);
  end;

end;

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

procedure TMainForm.DBComboBox2Change(Sender: TObject);
begin
  DBComboBox2.Field
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  closeModelForm;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin

  { =--- DLL's forms initialize ---= }
  createTheEngineForm(TabSheet3);
  createModelForm(TabSheet5);
  createBrandsForm(TabSheet4);
  createCarsForm(TabSheet9);
  createServicesForm(TabSheet8);
  createConsumablesForm(TabSheet7);
  createClientsForm(TabSheet6);

end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  resizeTheEngineForm;
  resizeModelForm;
  resizeBrandsForm;
  resizeCarsForm;
  resizeServicesForm;
  resizeConsumablesForm;
  resizeClientsForm
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  if SplitViewMenu.Opened then
  begin
    SplitViewMenu.Opened := false;
  end
  else
  begin
    SplitViewMenu.Opened := true;
  end;
end;

procedure TMainForm.SpeedButtonMenuHandbooksClick(Sender: TObject);
begin
  PageControlMain.ActivePage := TabSheetHandbooks;
end;

procedure TMainForm.SpeedButtonMenuLogoutClick(Sender: TObject);
begin
  lockSideMenuButtons;
  PageControlMain.ActivePage := TabSheetAuth;
end;

procedure TMainForm.SpeedButtonMenuOperationsLogsClick(Sender: TObject);
begin
  PageControlMain.ActivePage := TabSheetOperationsLog;
end;

procedure TMainForm.SpeedButtonMenuReportsClick(Sender: TObject);
begin
  PageControlMain.ActivePage := TabSheetReports;
end;

end.
