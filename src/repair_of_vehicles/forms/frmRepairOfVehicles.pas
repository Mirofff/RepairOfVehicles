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
  ShellAPI, Vcl.DBCtrls, frxSmartMemo, Vcl.WinXPickers, frxClass, frCoreClasses,
  frxDBSet,
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
    GridPanelAuth: TGridPanel;
    Panel5: TPanel;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    EditLogin: TEdit;
    Label2: TLabel;
    EditPassword: TEdit;
    ButtonTryAuth: TButton;
    TabSheetReports: TTabSheet;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheetOperationsLog: TTabSheet;
    TitleBarPanel1: TTitleBarPanel;
    SpeedButton1: TSpeedButton;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    SplitViewMenu: TSplitView;
    SpeedButtonMenuLogout: TSpeedButton;
    SpeedButtonMenuHandbooks: TSpeedButton;
    SpeedButtonMenuReports: TSpeedButton;
    SpeedButtonMenuOperationsLogs: TSpeedButton;
    SpeedButtonMenuHelp: TSpeedButton;
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    Panel8: TPanel;
    GroupBox7: TGroupBox;
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
    DBLabeledEdit1: TDBLabeledEdit;
    frxDBDatasetStaticReportUsedServices: TfrxDBDataset;
    frxDBDatasetStaticReportUsedConsumables: TfrxDBDataset;
    frxReportStaticReport: TfrxReport;
    GridPanel1: TGridPanel;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DataSourceStaticReportConsumables: TDataSource;
    DataSourceStaticReportServices: TDataSource;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ButtonTryAuthClick(Sender: TObject);
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
    procedure Button2Click(Sender: TObject);
    procedure TabSheetReportsShow(Sender: TObject);

  private
    { Private declarations }

    engineFrame: TFrame;

    procedure unlockSideMenuButtons(stuff_role: string);
    procedure hideStatementModificationButtons();
    procedure showStatementModificationButtons();
    procedure lockSideMenuButtons;

    procedure changeComponentsStatus(components: array of TControl;
      status: boolean);

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
procedure createTheEngineForm(tabShee: TTabSheet; connectionDefName: PWideChar);
  external 'engines.dll';
procedure resizeTheEngineForm; external 'engines.dll';
procedure closeTheEngineForm; external 'engines.dll';

{ =--- Model's form procedures ---= }
procedure createModelForm(tabShee: TTabSheet; connectionDefName: PWideChar);
  external 'models.dll';
procedure resizeModelForm; external 'models.dll';
procedure closeModelForm; external 'models.dll';

{ =--- Brand's form procedures ---= }
procedure createBrandsForm(tabShee: TTabSheet; connectionDefName: PWideChar);
  external 'brands.dll';
procedure resizeBrandsForm; external 'brands.dll';

{ =--- Car's form procedures ---= }
procedure createCarsForm(tabShee: TTabSheet; connectionDefName: PWideChar);
  external 'cars.dll';
procedure resizeCarsForm; external 'cars.dll';

{ =--- Service's form procedures ---= }
procedure createServicesForm(tabShee: TTabSheet; connectionDefName: PWideChar);
  external 'services.dll';
procedure resizeServicesForm; external 'services.dll';

{ =--- Consumable's form procedures ---= }
procedure createConsumablesForm(tabShee: TTabSheet); external 'consumables.dll';
procedure resizeConsumablesForm; external 'consumables.dll';

{ =--- Client's form procedures ---= }
procedure createClientsForm(tabShee: TTabSheet; connectionDefName: PWideChar);
  external 'clients.dll';
procedure resizeClientsForm; external 'clients.dll';

procedure TMainForm.changeComponentsStatus(components: array of TControl;
  status: boolean);
var
  component: TControl;
begin
  for component in components do
    component.Enabled := True;
end;

procedure TMainForm.unlockSideMenuButtons(stuff_role: string);
begin
  if stuff_role = 'admin' then
  begin
    changeComponentsStatus([SpeedButtonMenuHandbooks, SpeedButtonMenuReports,
      SpeedButtonMenuOperationsLogs], True);
  end
  else if stuff_role = 'operator' then
  begin
    changeComponentsStatus([SpeedButtonMenuReports,
      SpeedButtonMenuOperationsLogs], True);
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

procedure TMainForm.ButtonTryAuthClick(Sender: TObject);
var
  passwordRehashNeeded: boolean;
  isPasswordValid: boolean;
begin

  DataModuleDB.FDTableStuffpassword.AsString;
  DataModuleDB.FDTableStuff.Filter := 'email = ''' + EditLogin.Text + '''';
  DataModuleDB.FDTableStuff.Filtered := True;

  isPasswordValid := TBCrypt.CheckPassword(EditPassword.Text,
    DataModuleDB.FDTableStuffpassword.AsString, passwordRehashNeeded);

  if isPasswordValid then
  begin
    PageControlMain.ActivePage := TabSheetOperationsLog;
    unlockSideMenuButtons(DataModuleDB.FDTableStuffrole.AsString);
  end
  else
  begin
    ShowMessage('Для учетной записи ' + QuotedStr(EditLogin.Text) +
      ' введен неверный пароль!');
  end;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  frxReportStaticReport.ShowReport;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  frxReportDynamicReport.ShowReport;
end;

procedure TMainForm.ButtonConsumablesAddClick(Sender: TObject);
begin
  DataModuleDB.FDTableUsedConsumables.Filtered := false;
  DataModuleDB.FDTableUsedConsumables.Filter := 'consumable_id = ' +
    QuotedStr(IntToStr(DataModuleDB.FDTableConsumablesid.AsLargeInt)) +
    ' and statement_id = ' +
    QuotedStr(IntToStr(DataModuleDB.FDTableStatementsid.AsLargeInt));
  DataModuleDB.FDTableUsedConsumables.Filtered := True;

  if DataModuleDB.FDTableUsedConsumablesquantity.AsInteger = 0 then
  begin
    DataModuleDB.FDTableUsedConsumables.Append;
    DataModuleDB.FDTableUsedConsumablesquantity.AsInteger := 1;
    DataModuleDB.FDTableUsedConsumablesconsumable_id.AsLargeInt :=
      DataModuleDB.FDTableConsumablesid.AsLargeInt;
    DataModuleDB.FDTableUsedConsumablesstatement_id.AsLargeInt :=
      DataModuleDB.FDTableStatementsid.AsLargeInt;
  end
  else
  begin
    DataModuleDB.FDTableUsedConsumables.Edit;
    DataModuleDB.FDTableUsedConsumablesquantity.AsInteger :=
      DataModuleDB.FDTableUsedConsumablesquantity.AsInteger + 1;
  end;
  DataModuleDB.FDTableUsedConsumables.Post;

  DataModuleDB.FDTableUsedConsumables.Filtered := false;
  DataModuleDB.FDTableUsedConsumables.Filter := 'statement_id = ' +
    QuotedStr(IntToStr(DataModuleDB.FDTableStatementsid.AsLargeInt));

  DataModuleDB.FDTableUsedConsumables.Filtered := True;
end;

procedure TMainForm.ButtonServicesAddClick(Sender: TObject);
begin
  DataModuleDB.FDTableUsedServices.Filtered := false;
  DataModuleDB.FDTableUsedServices.Filter := 'service_id = ' +
    QuotedStr(DataModuleDB.FDTableServicesid.AsString) + ' and statement_id = '
    + QuotedStr(IntToStr(DataModuleDB.FDTableStatementsid.AsLargeInt));
  DataModuleDB.FDTableUsedServices.Filtered := True;

  if DataModuleDB.FDTableUsedServicesquantity.AsInteger = 0 then
  begin
    DataModuleDB.FDTableUsedServices.Append;
    DataModuleDB.FDTableUsedServicesquantity.AsInteger := 1;
    DataModuleDB.FDTableUsedServicesservice_id.AsString :=
      DataModuleDB.FDTableServicesid.AsString;
    DataModuleDB.FDTableUsedServicesstatement_id.AsString :=
      DataModuleDB.FDTableStatementsid.AsString;
  end
  else
  begin
    DataModuleDB.FDTableUsedServices.Edit;
    DataModuleDB.FDTableUsedServicesquantity.AsInteger :=
      DataModuleDB.FDTableUsedServicesquantity.AsInteger + 1;
  end;

  DataModuleDB.FDTableUsedServices.Post;

  DataModuleDB.FDTableUsedServices.Filtered := false;
  DataModuleDB.FDTableUsedServices.Filter := 'statement_id = ' +
    QuotedStr((DataModuleDB.FDTableStatementsid.AsString));

  DataModuleDB.FDTableUsedServices.Filtered := True;
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

procedure TMainForm.DataSourceReportUsedConsumablesDataChange(Sender: TObject;
  Field: TField);
begin
  LabelUsedConsumablesReportFullPrice.Caption :=
    'Общая расходы на расходные материалы с ' +
    DateToStr(DatePickerDynamicReportStart.Date) + ' по ' +
    DateToStr(MainForm.DatePickerDynamicReportEnd.Date) + ' - ' +
    VarToStr(DataModuleDB.FDQueryDynamicReportUsedConsumablesfullSum.Value);
end;

procedure TMainForm.DataSourceReportUsedServicesDataChange(Sender: TObject;
  Field: TField);
begin
  LabelUsedServicesReportFullPrice.Caption := 'Общая выручка за операции с ' +
    DateToStr(DatePickerDynamicReportStart.Date) + ' по ' +
    DateToStr(MainForm.DatePickerDynamicReportEnd.Date) + ' - ' +
    VarToStr(DataModuleDB.FDQueryDynamicReportUsedServicesfullSum.Value);
end;

procedure TMainForm.DatePickerDynamicReportEndChange(Sender: TObject);
begin
  DataModuleDB.FDQueryDynamicReportUsedServices.Filtered := false;
  DataModuleDB.FDQueryDynamicReportUsedServices.Filter :=
    'statement_execution_date between ' +
    QuotedStr(DateToStr(DatePickerDynamicReportStart.Date)) + ' and ' +
    QuotedStr(DateToStr(DatePickerDynamicReportEnd.Date));
  DataModuleDB.FDQueryDynamicReportUsedServices.Filtered := True;

  DataModuleDB.FDQueryDynamicReportUsedServices.Params.ParamValues['END_DATE']
    := DatePickerDynamicReportEnd.Date;
  DataModuleDB.FDQueryDynamicReportUsedServices.Open;

  DataModuleDB.FDQueryDynamicReportUsedConsumables.Filtered := false;
  DataModuleDB.FDQueryDynamicReportUsedConsumables.Filter :=
    'statement_execution_date between ' +
    QuotedStr(DateToStr(DatePickerDynamicReportStart.Date)) + ' and ' +
    QuotedStr(DateToStr(DatePickerDynamicReportEnd.Date));
  DataModuleDB.FDQueryDynamicReportUsedConsumables.Filtered := True;

  DataModuleDB.FDQueryDynamicReportUsedConsumables.Params.ParamValues
    ['END_DATE'] := DatePickerDynamicReportEnd.Date;
  DataModuleDB.FDQueryDynamicReportUsedConsumables.Open;
end;

procedure TMainForm.DatePickerDynamicReportStartChange(Sender: TObject);
begin
  DataModuleDB.FDQueryDynamicReportUsedServices.Filtered := false;
  DataModuleDB.FDQueryDynamicReportUsedServices.Filter :=
    'statement_execution_date between ' +
    QuotedStr(DateToStr(DatePickerDynamicReportStart.Date)) + ' and ' +
    QuotedStr(DateToStr(DatePickerDynamicReportEnd.Date));
  DataModuleDB.FDQueryDynamicReportUsedServices.Filtered := True;

  DataModuleDB.FDQueryDynamicReportUsedServices.Params.ParamValues['START_DATE']
    := DatePickerDynamicReportStart.Date;
  DataModuleDB.FDQueryDynamicReportUsedServices.Open;

  DataModuleDB.FDQueryDynamicReportUsedConsumables.Filtered := false;
  DataModuleDB.FDQueryDynamicReportUsedConsumables.Filter :=
    'statement_execution_date between ' +
    QuotedStr(DateToStr(DatePickerDynamicReportStart.Date)) + ' and ' +
    QuotedStr(DateToStr(DatePickerDynamicReportEnd.Date));
  DataModuleDB.FDQueryDynamicReportUsedConsumables.Filtered := True;

  DataModuleDB.FDQueryDynamicReportUsedConsumables.Params.ParamValues
    ['END_DATE'] := DatePickerDynamicReportEnd.Date;
  DataModuleDB.FDQueryDynamicReportUsedConsumables.Open;
end;

procedure TMainForm.DBGridConsumablesDblClick(Sender: TObject);
begin
  if DBGridConsumables.SelectedRows.CurrentRowSelected then
  begin
    ShowMessage('aahaha');
  end;
end;

procedure TMainForm.DBGridServicesDblClick(Sender: TObject);
begin
  if DBGridServices.SelectedRows.CurrentRowSelected then
  begin
    ShowMessage('aahaha');
  end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  closeModelForm;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin

  { =--- DLL's forms initialize ---= }
  // createTheEngineForm(TabSheet3, PWideChar(DataModuleDB.FDConnectionMain.ConnectionDefName));
  // createModelForm(TabSheet5, PWideChar(DataModuleDB.FDConnectionMain.ConnectionDefName));
  // createBrandsForm(TabSheet4, PWideChar(DataModuleDB.FDConnectionMain.ConnectionDefName));
  // createCarsForm(TabSheet9, PWideChar(DataModuleDB.FDConnectionMain.ConnectionDefName));
  // createServicesForm(TabSheet8, PWideChar(DataModuleDB.FDConnectionMain.ConnectionDefName));
  createConsumablesForm(TabSheet7);
  // createClientsForm(TabSheet6, PWideChar(DataModuleDB.FDConnectionMain.ConnectionDefName));

end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  // resizeTheEngineForm;
  // resizeModelForm;
  // resizeBrandsForm;
  // resizeCarsForm;
  // resizeServicesForm;
  resizeConsumablesForm;
  // resizeClientsForm;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  if SplitViewMenu.Opened then
  begin
    SplitViewMenu.Opened := false;
  end
  else
  begin
    SplitViewMenu.Opened := True;
  end;
  // resizeTheEngineForm;
  // resizeModelForm;
  // resizeBrandsForm;
  // resizeCarsForm;
  // resizeServicesForm;
  resizeConsumablesForm;
  // resizeClientsForm
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
    ButtonStatementSave.Enabled := True;
    ButtonStatementSave.Visible := True;

    DatePickerStatementRegistrationDate.Enabled := True;
    DatePickerStatementExecutionDate.Enabled := True;

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
    ButtonStatementSave.Enabled := True;
    ButtonStatementSave.Visible := True;

    DatePickerStatementRegistrationDate.Enabled := True;
    DatePickerStatementExecutionDate.Enabled := True;

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
  ButtonServicesAdd.Enabled := True;
  ButtonServicesAdd.Visible := True;

  ButtonServicesDelete.Enabled := True;
  ButtonServicesDelete.Visible := True;

  ButtonConsumablesAdd.Enabled := True;
  ButtonConsumablesAdd.Visible := True;

  ButtonConsumablesDelete.Enabled := True;
  ButtonConsumablesDelete.Visible := True;
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
    ButtonStatementSave.Enabled := True;
    ButtonStatementSave.Visible := True;

    DatePickerStatementRegistrationDate.Enabled := True;
    DatePickerStatementExecutionDate.Enabled := True;

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
    ButtonStatementSave.Enabled := True;
    ButtonStatementSave.Visible := True;

    DatePickerStatementRegistrationDate.Enabled := True;
    DatePickerStatementExecutionDate.Enabled := True;

    showStatementModificationButtons
  end;
end;

procedure TMainForm.TabSheetReportsShow(Sender: TObject);
begin
  // DataModuleDB.FDQueryDynamicReportUsedServices.ParamByName('START_DATE').AsDate
  // := DatePickerDynamicReportStart.Date;
  // DataModuleDB.FDQueryDynamicReportUsedServices.ParamByName('END_DATE').AsDate
  // := DatePickerDynamicReportEnd.Date;
  // DataModuleDB.FDQueryDynamicReportUsedServices.Open;
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

  DataModuleDB.FDQueryDynamicReportUsedServices.Refresh;
  DataModuleDB.FDQueryDynamicReportUsedConsumables.Refresh;
end;

end.
