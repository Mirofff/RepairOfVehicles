unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, frxSmartMemo, Data.DB,
  FireDAC.Comp.Client, frxClass, frCoreClasses, frxDBSet, FireDAC.Comp.DataSet;

type
  TDataModuleDB = class(TDataModule)
    frxDBDatasetConsumables: TfrxDBDataset;
    frxDBDatasetServices: TfrxDBDataset;
    frxDBDatasetVehicles: TfrxDBDataset;
    frxReportStatement: TfrxReport;
    frxDBDatasetStatements: TfrxDBDataset;
    DataSource1: TDataSource;
    FDTableMarks: TFDTable;
    FDTableModels: TFDTable;
    FDConnectionMain: TFDConnection;
    DataSourceServices: TDataSource;
    DataSourceConsumables: TDataSource;
    DataSourceUsedConsumables: TDataSource;
    DataSourceUsedServices: TDataSource;
    DataSourceVehicles: TDataSource;
    DataSourceClients: TDataSource;
    DataSourceStatements: TDataSource;
    FDQueryReportUsedServices: TFDQuery;
    FDQueryReportUsedServicesfullSum: TAggregateField;
    FDQueryReportUsedConsumables: TFDQuery;
    FDQueryReportUsedConsumablesfullSum: TAggregateField;
    FDTableModelsid: TLargeintField;
    FDTableModelsname: TWideMemoField;
    FDTableModelscylinders: TIntegerField;
    FDTableModelsengine_displacement: TFloatField;
    FDTableModelsdrive: TWideMemoField;
    FDTableModelsepa_index: TIntegerField;
    FDTableModelsengine_descriptor: TWideMemoField;
    FDTableModelsepa_fuel_economy: TIntegerField;
    FDTableModelsfuel_type: TWideMemoField;
    FDTableModelstransmission: TWideMemoField;
    FDTableModelscity_mpg: TWideMemoField;
    FDTableModelshighway_mpg: TWideMemoField;
    FDTableModelsclass: TWideMemoField;
    FDTableModelsyear: TWideMemoField;
    FDTableModelsmfr_code: TWideMemoField;
    FDTableModelsbase_model: TWideMemoField;
    FDTableModelsmark_id: TLargeintField;
    FDTableMarksid: TLargeintField;
    FDTableMarksname: TWideStringField;
    FDQueryReportUsedConsumablesРасходник: TWideStringField;
    FDQueryReportUsedConsumablesstatement_id: TLargeintField;
    FDQueryReportUsedConsumablesstatement_execution_date: TDateField;
    FDQueryReportUsedConsumablesЦена: TFloatField;
    FDQueryReportUsedConsumablesОбщаяцена: TFloatField;
    FDQueryReportUsedConsumablesКоличествоопераций: TLargeintField;
    FDQueryReportUsedServicesstatement_info: TWideMemoField;
    FDQueryReportUsedServicesОперация: TWideStringField;
    FDQueryReportUsedServicesЦена: TFloatField;
    FDQueryReportUsedServicesstatement_execution_date: TDateField;
    FDQueryReportUsedServicesstatement_id: TLargeintField;
    FDQueryReportUsedServicesОбщаяцена: TFloatField;
    FDQueryReportUsedServicesКоличествоопераций: TLargeintField;
    FDTableVehicles: TFDTable;
    FDTableVehiclesid: TLargeintField;
    FDTableVehiclesregistration_plate: TWideStringField;
    FDTableVehiclescreated_at: TDateTimeField;
    FDTableVehiclesupdated_at: TDateTimeField;
    FDTableVehiclesis_active: TBooleanField;
    FDTableVehiclesvin: TWideStringField;
    FDTableVehiclestech_passport: TWideMemoField;
    FDTableVehiclesmileage: TIntegerField;
    FDTableVehiclescolor: TWideStringField;
    FDTableVehiclesmodel_id: TLargeintField;
    FDTableVehiclesclient_id: TLargeintField;
    FDTableServices: TFDTable;
    FDTableServicesid: TLargeintField;
    FDTableServicesname: TWideStringField;
    FDTableServicesprice: TFloatField;
    FDTableConsumables: TFDTable;
    FDTableUsedConsumables: TFDTable;
    FDTableUsedConsumablesid: TLargeintField;
    FDTableUsedConsumablescreated_at: TSQLTimeStampField;
    FDTableUsedConsumablesupdated_at: TSQLTimeStampField;
    FDTableUsedConsumablesquantity: TIntegerField;
    FDTableUsedConsumablesstatement_id: TLargeintField;
    FDTableUsedConsumablesconsumable_id: TLargeintField;
    FDTableConsumablesid: TLargeintField;
    FDTableConsumablesname: TWideStringField;
    FDTableConsumablesprice: TFloatField;
    FDTableUsedServices: TFDTable;
    FDTableUsedServicesid: TLargeintField;
    FDTableUsedServicescreated_at: TSQLTimeStampField;
    FDTableUsedServicesupdated_at: TSQLTimeStampField;
    FDTableUsedServicesquantity: TIntegerField;
    FDTableUsedServicesstatement_id: TLargeintField;
    FDTableUsedServicesservice_id: TLargeintField;
    FDTableClients: TFDTable;
    FDTableStatements: TFDTable;
    FDTableStuff: TFDTable;
    FDTableUsedConsumablesconsumables_name: TStringField;
    FDTableUsedServicesservices_name: TStringField;
    FDTableUsedServicesservice_price: TCurrencyField;
    FDTableUsedConsumablesconsumable_price: TCurrencyField;
    FDTableUsedServicesfull_sum: TCurrencyField;
    FDTableUsedConsumablesfull_sum: TCurrencyField;
    FDTableStatementsid: TLargeintField;
    FDTableStatementscreated_at: TDateTimeField;
    FDTableStatementsupdated_at: TDateTimeField;
    FDTableStatementsstatus: TWideStringField;
    FDTableStatementscomment: TWideStringField;
    FDTableStatementsis_active: TBooleanField;
    FDTableStatementsregistration_date: TDateField;
    FDTableStatementsexecution_date: TDateField;
    FDTableStatementspickup_time: TDateTimeField;
    FDTableStatementsclient_id: TLargeintField;
    FDTableStatementsvehicle_id: TLargeintField;
    FDTableStuffid: TLargeintField;
    FDTableStuffrole: TWideStringField;
    FDTableStufffirst_name: TWideStringField;
    FDTableStuffsecond_name: TWideStringField;
    FDTableStufflast_name: TWideStringField;
    FDTableStuffis_active: TBooleanField;
    FDTableStuffemail: TWideStringField;
    FDTableStuffpassword: TWideStringField;
    FDTableStuffremember_token: TWideStringField;
    FDTableStuffcreated_at: TSQLTimeStampField;
    FDTableStuffupdated_at: TSQLTimeStampField;
    FDTableVehiclesvehicle_print: TStringField;
    FDTableVehiclesmodel: TStringField;
    FDTableVehiclesmodel_year: TIntegerField;
    FDTableClientsid: TLargeintField;
    FDTableClientsfirst_name: TWideStringField;
    FDTableClientssecond_name: TWideStringField;
    FDTableClientslast_name: TWideStringField;
    FDTableClientsis_active: TBooleanField;
    FDTableClientsemail: TWideStringField;
    FDTableClientspassword: TWideStringField;
    FDTableClientsremember_token: TWideStringField;
    FDTableClientscreated_at: TSQLTimeStampField;
    FDTableClientsupdated_at: TSQLTimeStampField;
    FDTableClientsclient_name: TStringField;
    FDTableVehiclesmark_id: TLargeintField;
    FDTableVehiclesmark: TStringField;
    FDTableStatementsclient_name: TStringField;
    FDTableStatementsclient_first_name: TStringField;
    FDTableStatementsclient_last_name: TStringField;
    FDTableStatementsclient_second_name: TStringField;
    FDTableStatementsvehicle_model: TStringField;
    FDTableStatementsvehicle_registration_plate: TStringField;
    FDTableVehiclesmodel_name: TStringField;
    FDTableStatementsvehicle_model_id: TLargeintField;
    FDTableStatementsvehicle_mark_id: TLargeintField;
    FDTableStatementsvehicle_mark: TStringField;
    FDTableStatementsvehicle_print: TStringField;
    FDQueryReportUsedConsumablesstatement_info: TWideMemoField;
    procedure FDTableVehiclesCalcFields(DataSet: TDataSet);
    procedure FDTableStatementsAfterGetRecord(DataSet: TFDDataSet);
    procedure FDTableStatementsAfterScroll(DataSet: TDataSet);
    procedure FDTableUsedServicesAfterOpen(DataSet: TDataSet);
    procedure FDTableUsedConsumablesAfterOpen(DataSet: TDataSet);
    procedure DataSourceStatementsDataChange(Sender: TObject; Field: TField);
    procedure FDTableUsedServicesCalcFields(DataSet: TDataSet);
    procedure FDTableUsedConsumablesCalcFields(DataSet: TDataSet);
    procedure FDTableStatementsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleDB: TDataModuleDB;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses frmRepairOfVehicles;
{$R *.dfm}

procedure TDataModuleDB.DataSourceStatementsDataChange(Sender: TObject;
  Field: TField);
begin
  FDTableUsedConsumables.Filter := 'statement_id = ' +
    QuotedStr(IntToStr(FDTableStatementsid.AsLargeInt));

  FDTableUsedServices.Filter := 'statement_id = ' +
    QuotedStr(IntToStr(FDTableStatementsid.AsLargeInt));
end;

procedure TDataModuleDB.FDTableStatementsAfterGetRecord(DataSet: TFDDataSet);
begin

  FDTableVehicles.Filtered := false;
  FDTableVehicles.Filter := 'id = ' +
    QuotedStr(IntToStr(FDTableStatementsid.AsLargeInt));
  FDTableVehicles.Filtered := true;
end;

procedure TDataModuleDB.FDTableStatementsAfterScroll(DataSet: TDataSet);
begin
  FDTableVehicles.Filtered := false;
  FDTableVehicles.Filter := 'id = ' +
    QuotedStr(FDTableStatementsvehicle_id.AsString);
  FDTableVehicles.Filtered := true;

  FDTableUsedConsumables.Filtered := false;
  FDTableUsedConsumables.Filter := 'statement_id = ' +
    QuotedStr(IntToStr(FDTableStatementsid.AsLargeInt));
  FDTableUsedConsumables.Filtered := true;

  FDTableUsedServices.Filtered := false;
  FDTableUsedServices.Filter := 'statement_id = ' +
    QuotedStr(IntToStr(FDTableStatementsid.AsLargeInt));
  FDTableUsedServices.Filtered := true;
end;

procedure TDataModuleDB.FDTableStatementsCalcFields(DataSet: TDataSet);
begin
  FDTableStatementsclient_name.AsWideString :=
    format('%s %s %s', [FDTableStatementsclient_last_name.AsWideString,
    FDTableStatementsclient_first_name.AsWideString,
    FDTableStatementsclient_second_name.AsWideString]);

  FDTableStatementsvehicle_print.AsWideString :=
    format('%s %s %s', [FDTableStatementsvehicle_mark.AsWideString,
    FDTableStatementsvehicle_model.AsWideString,
    FDTableStatementsvehicle_registration_plate.AsWideString]);
end;

procedure TDataModuleDB.FDTableUsedConsumablesAfterOpen(DataSet: TDataSet);
begin
  FDTableUsedConsumables.Filter := 'statement_id = ' +
    QuotedStr(IntToStr(FDTableStatementsid.AsLargeInt));
end;

procedure TDataModuleDB.FDTableUsedServicesAfterOpen(DataSet: TDataSet);
begin
  FDTableUsedServices.Filter := 'statement_id = ' +
    QuotedStr(IntToStr(FDTableStatementsid.AsLargeInt));
end;

procedure TDataModuleDB.FDTableUsedConsumablesCalcFields(DataSet: TDataSet);
begin
  FDTableUsedConsumablesfull_sum.AsCurrency :=
    FDTableUsedConsumablesconsumable_price.AsCurrency *
    FDTableUsedConsumablesquantity.AsCurrency;
end;

procedure TDataModuleDB.FDTableUsedServicesCalcFields(DataSet: TDataSet);
begin
  FDTableUsedServicesfull_sum.AsCurrency :=
    FDTableUsedServicesservice_price.AsCurrency *
    FDTableUsedServicesquantity.AsCurrency;
end;

procedure TDataModuleDB.FDTableVehiclesCalcFields(DataSet: TDataSet);
begin
  FDTableVehiclesvehicle_print.AsString := FDTableVehiclesmark.AsString + ' ' +
    FDTableVehiclesmodel.AsString + ' ' +
    FDTableVehiclesregistration_plate.AsString;
  FDTableVehiclesvehicle_print.AsString;
end;

end.
