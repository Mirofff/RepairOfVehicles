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
  Vcl.NumberBox, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

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
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    Panel8: TPanel;
    GroupBox7: TGroupBox;
    Edit2: TEdit;
    GroupBox8: TGroupBox;
    SpeedButtonStatementPriv: TSpeedButton;
    SpeedButtonStatementFirst: TSpeedButton;
    SpeedButtonStatementLast: TSpeedButton;
    SpeedButtonStatementNext: TSpeedButton;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel7: TPanel;
    GroupBox2: TGroupBox;
    DatePickerStatementRegistrationDate: TDatePicker;
    GroupBox3: TGroupBox;
    DatePickerStatementExecutionDate: TDatePicker;
    GroupBox5: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    Button7: TButton;
    Panel9: TPanel;
    GridPanel7: TGridPanel;
    Panel10: TPanel;
    DBGridConsumables: TDBGrid;
    ButtonConsumablesAdd: TButton;
    Panel11: TPanel;
    DBGridServices: TDBGrid;
    ButtonServicesAdd: TButton;
    Panel12: TPanel;
    DBGridUsedServices: TDBGrid;
    ButtonServicesDelete: TButton;
    Panel13: TPanel;
    DBGridUsedConsumables: TDBGrid;
    ButtonConsumablesDelete: TButton;
    ButtonStatementSave: TButton;
    GridPanel5: TGridPanel;
    Panel14: TPanel;
    DBGrid1: TDBGrid;
    Panel15: TPanel;
    DBGrid2: TDBGrid;
    LabelUsedServicesReportFullPrice: TLabel;
    LabelUsedConsumablesReportFullPrice: TLabel;
    Button3: TButton;
    GridPanel6: TGridPanel;
    GroupBox4: TGroupBox;
    DatePickerDynamicReportStart: TDatePicker;
    GroupBox6: TGroupBox;
    DatePickerDynamicReportEnd: TDatePicker;
    DataSourceReportUsedServices: TDataSource;
    DataSourceReportUsedConsumables: TDataSource;
    frxReportDynamicReport: TfrxReport;
    frxDBDatasetReportUsedConsumables: TfrxDBDataset;
    frxDBDatasetReportUsedServices: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridConsumablesDblClick(Sender: TObject);
    procedure DBGridServicesDblClick(Sender: TObject);
    procedure ButtonConsumablesAddClick(Sender: TObject);
    procedure ButtonServicesAddClick(Sender: TObject);
    procedure ButtonConsumablesDeleteClick(Sender: TObject);
    procedure ButtonServicesDeleteClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SpeedButtonStatementNextClick(Sender: TObject);
    procedure SpeedButtonStatementPrivClick(Sender: TObject);
    procedure SpeedButtonStatementFirstClick(Sender: TObject);
    procedure SpeedButtonStatementLastClick(Sender: TObject);
    procedure ButtonStatementSaveClick(Sender: TObject);
    procedure DatePickerDynamicReportStartChange(Sender: TObject);
    procedure DatePickerDynamicReportEndChange(Sender: TObject);
    procedure DataSourceReportUsedConsumablesDataChange(Sender: TObject;
      Field: TField);
    procedure DataSourceReportUsedServicesDataChange(Sender: TObject;
      Field: TField);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }

    engineFrame: TFrame;

    procedure unlockSideMenuButtons(stuff_role: string);
    procedure hideStatementModificationButtons();
    procedure showStatementModificationButtons();
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
  DataModuleDB.FDTableStuff.Filter := 'email = ''' + EditLogin.Text + '''';
  DataModuleDB.FDTableStuff.Filtered := true;

  isPasswordValid := TBCrypt.CheckPassword(EditPassword.Text,
    DataModuleDB.FDTableStuffpassword.AsString, passwordRehashNeeded);

  if isPasswordValid then
  begin
    PageControlMain.ActivePage := TabSheetOperationsLog;
    unlockSideMenuButtons(DataModuleDB.FDTableStuffrole.AsString);
  end;

end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  with DataModuleDB.FDConnectionMain do
  begin
    Params.Values['Server'] := EditDBHost.Text;
    Params.Values['Port'] := EditDBPort.Text;
  end;

  DataModuleDB.FDConnectionMain.Connected := true;
  SplitViewDatabaseConnection.Opened := false;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  frxReportDynamicReport.ShowReport;
end;

procedure TMainForm.ButtonConsumablesAddClick(Sender: TObject);
begin
  DataModuleDB.FDTableUsedConsumables.Filtered := false;
  DataModuleDB.FDTableUsedConsumables.Filter := 'consumable_uuid = ' +
    QuotedStr(DataModuleDB.FDTableConsumablesuuid.AsString) +
    ' and statement_uuid = ' +
    QuotedStr(DataModuleDB.FDTableStatementsuuid.AsString);
  DataModuleDB.FDTableUsedConsumables.Filtered := true;

  if DataModuleDB.FDTableUsedConsumablesquantity.AsInteger = 0 then
  begin
    DataModuleDB.FDTableUsedConsumables.Append;
    DataModuleDB.FDTableUsedConsumablesquantity.AsInteger := 1;
    DataModuleDB.FDTableUsedConsumablesconsumable_uuid.AsString :=
      DataModuleDB.FDTableConsumablesuuid.AsString;
    DataModuleDB.FDTableUsedConsumablesstatement_uuid.AsString :=
      DataModuleDB.FDTableStatementsuuid.AsString;
  end
  else
  begin
    DataModuleDB.FDTableUsedConsumables.Edit;
    DataModuleDB.FDTableUsedConsumablesquantity.AsInteger :=
      DataModuleDB.FDTableUsedConsumablesquantity.AsInteger + 1;
  end;
  DataModuleDB.FDTableUsedConsumables.Post;

  DataModuleDB.FDTableUsedConsumables.Filter := 'statement_uuid = ' +
    QuotedStr(DataModuleDB.FDTableStatementsuuid.AsString);

  DataModuleDB.FDTableUsedConsumables.Filtered := true;

end;

procedure TMainForm.ButtonServicesAddClick(Sender: TObject);
begin
  DataModuleDB.FDTableUsedServices.Filtered := false;
  DataModuleDB.FDTableUsedServices.Filter := 'service_uuid = ' +
    QuotedStr(DataModuleDB.FDTableServicesuuid.AsString) +
    ' and statement_uuid = ' +
    QuotedStr(DataModuleDB.FDTableStatementsuuid.AsString);
  DataModuleDB.FDTableUsedServices.Filtered := true;

  if DataModuleDB.FDTableUsedServicesquantity.AsInteger = 0 then
  begin
    DataModuleDB.FDTableUsedServices.Append;
    DataModuleDB.FDTableUsedServicesquantity.AsInteger := 1;
    DataModuleDB.FDTableUsedServicesservice_uuid.AsString :=
      DataModuleDB.FDTableServicesuuid.AsString;
    DataModuleDB.FDTableUsedServicesstatement_uuid.AsString :=
      DataModuleDB.FDTableStatementsuuid.AsString;
  end
  else
  begin
    DataModuleDB.FDTableUsedServices.Edit;
    DataModuleDB.FDTableUsedServicesquantity.AsInteger :=
      DataModuleDB.FDTableUsedServicesquantity.AsInteger + 1;
  end;

  DataModuleDB.FDTableUsedServices.Post;

  DataModuleDB.FDTableUsedServices.Filter := 'statement_uuid = ' +
    QuotedStr(DataModuleDB.FDTableStatementsuuid.AsString);

  DataModuleDB.FDTableUsedServices.Filtered := true;
end;

procedure TMainForm.ButtonServicesDeleteClick(Sender: TObject);
begin
  DataModuleDB.FDTableUsedServices.Edit;
  if DataModuleDB.FDTableUsedServicesquantity.AsInteger = 1 then
  begin
    DataModuleDB.FDTableUsedServices.Delete;
  end
  else
  begin

    DataModuleDB.FDTableUsedServicesquantity.AsInteger :=
      DataModuleDB.FDTableUsedServicesquantity.AsInteger - 1;

    DataModuleDB.FDTableUsedServices.Post;
  end;

end;

procedure TMainForm.ButtonStatementSaveClick(Sender: TObject);
begin
  DataModuleDB.FDTableStatements.Edit;

  DataModuleDB.FDTableStatementsregistration_date.AsDateTime :=
    DatePickerStatementRegistrationDate.Date;
  DataModuleDB.FDTableStatementsexecution_date.AsDateTime :=
    DatePickerStatementExecutionDate.Date;

  DataModuleDB.FDTableStatementsstatus.AsString := 'complete';

  DataModuleDB.FDTableStatements.Post;

  ButtonStatementSave.Enabled := false;
end;

procedure TMainForm.ButtonConsumablesDeleteClick(Sender: TObject);
begin
  DataModuleDB.FDTableUsedConsumables.Edit;
  if DataModuleDB.FDTableUsedConsumablesquantity.AsInteger = 1 then
  begin
    DataModuleDB.FDTableUsedConsumables.Delete;
  end
  else
  begin

    DataModuleDB.FDTableUsedConsumablesquantity.AsInteger :=
      DataModuleDB.FDTableUsedConsumablesquantity.AsInteger - 1;

    DataModuleDB.FDTableUsedConsumables.Post;
  end;

end;

procedure TMainForm.Button7Click(Sender: TObject);
begin
  DataModuleDB.frxReportStatement.ShowReport();
end;

procedure TMainForm.Button8Click(Sender: TObject);

begin
  SplitViewDatabaseConnection.Opened := true;

end;

procedure TMainForm.DataSourceReportUsedConsumablesDataChange(Sender: TObject;
  Field: TField);
begin
  LabelUsedConsumablesReportFullPrice.Caption :=
    'Общая расходы на расходные материалы с ' +
    DateToStr(DatePickerDynamicReportStart.Date) + ' по ' +
    DateToStr(MainForm.DatePickerDynamicReportEnd.Date) + ' - ' +
    VarToStr(DataModuleDB.FDQueryReportUsedConsumablesfullSum.Value);
end;

procedure TMainForm.DataSourceReportUsedServicesDataChange(Sender: TObject;
  Field: TField);
begin
  LabelUsedServicesReportFullPrice.Caption := 'Общая выручка за операции с ' +
    DateToStr(DatePickerDynamicReportStart.Date) + ' по ' +
    DateToStr(MainForm.DatePickerDynamicReportEnd.Date) + ' - ' +
    VarToStr(DataModuleDB.FDQueryReportUsedServicesfullSum.Value);
end;

procedure TMainForm.DatePickerDynamicReportEndChange(Sender: TObject);
begin
  // FDQueryReportUsedServices.Params.ParamValues['END_DATE'] :=
  // DatePickerDynamicReportEnd.Date;
  // FDQueryReportUsedServices.Open;

end;

procedure TMainForm.DatePickerDynamicReportStartChange(Sender: TObject);
begin
  // FDQueryReportUsedServices.Params.ParamValues['START_DATE'] :=
  // DatePickerDynamicReportStart.Date;
  // FDQueryReportUsedServices.Open;
end;

procedure TMainForm.DBGridConsumablesDblClick(Sender: TObject);
begin
  if DBGridConsumables.SelectedRows.CurrentRowSelected then
  begin
    showmessage('aahaha');
  end;
end;

procedure TMainForm.DBGridServicesDblClick(Sender: TObject);
begin
  if DBGridServices.SelectedRows.CurrentRowSelected then
  begin
    showmessage('aahaha');
  end;
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
  resizeTheEngineForm;
  resizeModelForm;
  resizeBrandsForm;
  resizeCarsForm;
  resizeServicesForm;
  resizeConsumablesForm;
  resizeClientsForm
end;

procedure TMainForm.SpeedButtonStatementFirstClick(Sender: TObject);
begin
  DataModuleDB.FDTableStatements.First;
  if DataModuleDB.FDTableStatementsstatus.AsString = 'complete' then
  begin
    ButtonStatementSave.Enabled := false;
    ButtonStatementSave.Visible := false;

    DatePickerStatementRegistrationDate.Date :=
      DataModuleDB.FDTableStatementsregistration_date.AsDateTime;
    DatePickerStatementExecutionDate.Date :=
      DataModuleDB.FDTableStatementsexecution_date.AsDateTime;

    DatePickerStatementRegistrationDate.Enabled := false;
    DatePickerStatementExecutionDate.Enabled := false;

    hideStatementModificationButtons;
  end
  else
  begin
    ButtonStatementSave.Enabled := true;
    ButtonStatementSave.Visible := true;

    DatePickerStatementRegistrationDate.Enabled := true;
    DatePickerStatementExecutionDate.Enabled := true;

    showStatementModificationButtons
  end;
end;

procedure TMainForm.SpeedButtonStatementLastClick(Sender: TObject);
begin
  DataModuleDB.FDTableStatements.Last;
  if DataModuleDB.FDTableStatementsstatus.AsString = 'complete' then
  begin
    ButtonStatementSave.Enabled := false;
    ButtonStatementSave.Visible := false;

    DatePickerStatementRegistrationDate.Date :=
      DataModuleDB.FDTableStatementsregistration_date.AsDateTime;
    DatePickerStatementExecutionDate.Date :=
      DataModuleDB.FDTableStatementsexecution_date.AsDateTime;

    DatePickerStatementRegistrationDate.Enabled := false;
    DatePickerStatementExecutionDate.Enabled := false;

    hideStatementModificationButtons;
  end
  else
  begin
    ButtonStatementSave.Enabled := true;
    ButtonStatementSave.Visible := true;

    DatePickerStatementRegistrationDate.Enabled := true;
    DatePickerStatementExecutionDate.Enabled := true;

    showStatementModificationButtons
  end;
end;

procedure TMainForm.hideStatementModificationButtons();
begin
  ButtonServicesAdd.Enabled := false;
  ButtonServicesAdd.Visible := false;

  ButtonServicesDelete.Enabled := false;
  ButtonServicesDelete.Visible := false;

  ButtonConsumablesAdd.Enabled := false;
  ButtonConsumablesAdd.Visible := false;

  ButtonConsumablesDelete.Enabled := false;
  ButtonConsumablesDelete.Visible := false;
end;

procedure TMainForm.showStatementModificationButtons();
begin
  ButtonServicesAdd.Enabled := true;
  ButtonServicesAdd.Visible := true;

  ButtonServicesDelete.Enabled := true;
  ButtonServicesDelete.Visible := true;

  ButtonConsumablesAdd.Enabled := true;
  ButtonConsumablesAdd.Visible := true;

  ButtonConsumablesDelete.Enabled := true;
  ButtonConsumablesDelete.Visible := true;
end;

procedure TMainForm.SpeedButtonStatementNextClick(Sender: TObject);
begin
  DataModuleDB.FDTableStatements.Next;
  if DataModuleDB.FDTableStatementsstatus.AsString = 'complete' then
  begin
    ButtonStatementSave.Enabled := false;
    ButtonStatementSave.Visible := false;

    DatePickerStatementRegistrationDate.Date :=
      DataModuleDB.FDTableStatementsregistration_date.AsDateTime;
    DatePickerStatementExecutionDate.Date :=
      DataModuleDB.FDTableStatementsexecution_date.AsDateTime;

    DatePickerStatementRegistrationDate.Enabled := false;
    DatePickerStatementExecutionDate.Enabled := false;

    hideStatementModificationButtons;
  end
  else
  begin
    ButtonStatementSave.Enabled := true;
    ButtonStatementSave.Visible := true;

    DatePickerStatementRegistrationDate.Enabled := true;
    DatePickerStatementExecutionDate.Enabled := true;

    showStatementModificationButtons
  end;

end;

procedure TMainForm.SpeedButtonStatementPrivClick(Sender: TObject);
begin
  DataModuleDB.FDTableStatements.Prior;
  if DataModuleDB.FDTableStatementsstatus.AsString = 'complete' then
  begin
    ButtonStatementSave.Enabled := false;
    ButtonStatementSave.Visible := false;

    DatePickerStatementRegistrationDate.Date :=
      DataModuleDB.FDTableStatementsregistration_date.AsDateTime;
    DatePickerStatementExecutionDate.Date :=
      DataModuleDB.FDTableStatementsexecution_date.AsDateTime;

    DatePickerStatementRegistrationDate.Enabled := false;
    DatePickerStatementExecutionDate.Enabled := false;

    hideStatementModificationButtons;
  end
  else
  begin
    ButtonStatementSave.Enabled := true;
    ButtonStatementSave.Visible := true;

    DatePickerStatementRegistrationDate.Enabled := true;
    DatePickerStatementExecutionDate.Enabled := true;

    showStatementModificationButtons
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

  DataModuleDB.FDQueryReportUsedServices.Refresh;
  DataModuleDB.FDQueryReportUsedConsumables.Refresh;
end;

end.
