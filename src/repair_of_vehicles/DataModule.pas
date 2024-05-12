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
    FDTableServices: TFDTable;
    FDTableServicesprice: TFloatField;
    frxDBDatasetConsumables: TfrxDBDataset;
    frxDBDatasetServices: TfrxDBDataset;
    frxDBDatasetVehicles: TfrxDBDataset;
    frxReportStatement: TfrxReport;
    frxDBDatasetStatements: TfrxDBDataset;
    FDTableVehicles: TFDTable;
    FDTableVehiclescreated_at: TDateTimeField;
    FDTableVehiclesupdated_at: TDateTimeField;
    FDTableVehiclesmodel_id: TIntegerField;
    FDTableVehiclesis_active: TBooleanField;
    FDTableVehiclesmileage: TIntegerField;
    FDTableVehiclesmark_id: TIntegerField;
    FDTableVehiclesmodel: TStringField;
    FDTableVehiclesmark: TStringField;
    DataSource1: TDataSource;
    FDTableStuff: TFDTable;
    FDTableMarks: TFDTable;
    FDTableModels: TFDTable;
    FDTableConsumables: TFDTable;
    FDTableConsumablesprice: TFloatField;
    FDTableUsedServices: TFDTable;
    FDTableUsedServicesservices_name: TStringField;
    FDTableUsedServicesservice_price: TCurrencyField;
    FDTableUsedConsumables: TFDTable;
    FDTableUsedConsumablesconsumable_name: TStringField;
    FDTableUsedConsumablesconsumable_price: TCurrencyField;
    FDTableStatements: TFDTable;
    FDTableStatementsclient_first_name: TStringField;
    FDTableStatementsclient_last_name: TStringField;
    FDTableStatementsclient_second_name: TStringField;
    FDConnectionMain: TFDConnection;
    FDTableClients: TFDTable;
    DataSourceServices: TDataSource;
    DataSourceConsumables: TDataSource;
    FDTableConsumablesuuid: TWideStringField;
    FDTableConsumablesname: TWideStringField;
    FDTableServicesuuid: TWideStringField;
    FDTableServicesname: TWideStringField;
    FDTableVehiclesuuid: TWideStringField;
    FDTableVehiclesregistration_plate: TWideStringField;
    FDTableVehiclesworkshop_uuid: TWideStringField;
    FDTableVehiclesvin: TWideStringField;
    FDTableVehiclesengine: TWideStringField;
    FDTableVehiclestech_passport: TWideMemoField;
    FDTableVehiclescolor: TWideStringField;
    FDTableUsedServicesuuid: TWideStringField;
    FDTableUsedServicesstatement_uuid: TWideStringField;
    FDTableUsedServicesservice_uuid: TWideStringField;
    FDTableUsedServicesquantity: TIntegerField;
    FDTableUsedConsumablesuuid: TWideStringField;
    FDTableUsedConsumablesstatement_uuid: TWideStringField;
    FDTableUsedConsumablesconsumable_uuid: TWideStringField;
    FDTableUsedConsumablesquantity: TIntegerField;
    FDTableClientsuuid: TWideStringField;
    FDTableClientsfirst_name: TWideStringField;
    FDTableClientssecond_name: TWideStringField;
    FDTableClientslast_name: TWideStringField;
    FDTableClientsis_active: TBooleanField;
    FDTableClientsemail: TWideStringField;
    FDTableClientspassword: TWideStringField;
    FDTableClientsremember_token: TWideStringField;
    FDTableClientscreated_at: TSQLTimeStampField;
    FDTableClientsupdated_at: TSQLTimeStampField;
    FDTableModelsid: TFDAutoIncField;
    FDTableModelsname: TWideStringField;
    FDTableModelstype: TWideStringField;
    FDTableModelsyear: TDateField;
    FDTableModelsmark_id: TIntegerField;
    FDTableMarksid: TFDAutoIncField;
    FDTableMarksname: TWideStringField;
    DataSourceUsedConsumables: TDataSource;
    DataSourceUsedServices: TDataSource;
    FDTableUsedConsumablesconsumable_print: TStringField;
    FDTableVehiclesvehicle_print: TStringField;
    DataSourceVehicles: TDataSource;
    DataSourceClients: TDataSource;
    DataSourceStatements: TDataSource;
    FDTableUsedServicesfull_price: TCurrencyField;
    FDTableUsedConsumablesfull_price: TCurrencyField;
    FDTableUsedConsumablescreated_at: TSQLTimeStampField;
    FDTableUsedConsumablesupdated_at: TSQLTimeStampField;
    FDTableUsedServicescreated_at: TSQLTimeStampField;
    FDTableUsedServicesupdated_at: TSQLTimeStampField;
    FDTableStatementsuuid: TWideStringField;
    FDTableStatementscreated_at: TDateTimeField;
    FDTableStatementsupdated_at: TDateTimeField;
    FDTableStatementsstatus: TWideStringField;
    FDTableStatementscomment: TWideStringField;
    FDTableStatementsclient_uuid: TWideStringField;
    FDTableStatementsvehicle_uuid: TWideStringField;
    FDTableStatementsis_active: TBooleanField;
    FDTableStatementsregistration_date: TDateField;
    FDTableStatementsexecution_date: TDateField;
    FDTableStatementspickup_time: TDateTimeField;
    FDTableStatementsclient_name: TStringField;
    FDTableStatementsvehicle_registration_plate: TStringField;
    FDTableStatementsvehicle_print: TStringField;
    FDTableStatementsvehicle_mark: TStringField;
    FDTableStatementsvehicle_model: TStringField;
    FDTableStuffworkshop_uuid: TWideStringField;
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
    FDTableStuffuuid: TWideStringField;
    FDQueryReportUsedServices: TFDQuery;
    FDQueryReportUsedServicesfullSum: TAggregateField;
    FDQueryReportUsedConsumables: TFDQuery;
    FDQueryReportUsedConsumablesfullSum: TAggregateField;
    FDQueryReportUsedServicesstatement_info: TWideStringField;
    FDQueryReportUsedServicesОперация: TWideStringField;
    FDQueryReportUsedServicesЦена: TFloatField;
    FDQueryReportUsedServicesstatement_uuid: TWideStringField;
    FDQueryReportUsedServicesОбщаяцена: TFloatField;
    FDQueryReportUsedServicesКоличествоопераций: TLargeintField;
    FDQueryReportUsedConsumablesstatement_info: TWideStringField;
    FDQueryReportUsedConsumablesРасходник: TWideStringField;
    FDQueryReportUsedConsumablesstatement_uuid: TWideStringField;
    FDQueryReportUsedConsumablesЦена: TFloatField;
    FDQueryReportUsedConsumablesОбщаяцена: TFloatField;
    FDQueryReportUsedConsumablesКоличествоопераций: TLargeintField;
    FDQueryReportUsedServicesstatement_execution_date: TDateField;
    FDQueryReportUsedConsumablesstatement_execution_date: TDateField;
    procedure FDTableVehiclesCalcFields(DataSet: TDataSet);
    procedure FDTableUsedServicesCalcFields(DataSet: TDataSet);
    procedure FDTableUsedConsumablesCalcFields(DataSet: TDataSet);
    procedure FDTableStatementsAfterGetRecord(DataSet: TFDDataSet);
    procedure FDTableStatementsCalcFields(DataSet: TDataSet);
    procedure FDTableStatementsAfterScroll(DataSet: TDataSet);
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

procedure TDataModuleDB.FDTableStatementsAfterGetRecord(DataSet: TFDDataSet);
begin

  // FDTable.Filtered := false;
  // FDTableVehicles.Filter := 'uuid = ' +
  // QuotedStr(FDTableStatements_uuid.AsString);
  // FDTableVehicles.Filtered := true;
end;

procedure TDataModuleDB.FDTableStatementsAfterScroll(DataSet: TDataSet);
begin
  FDTableVehicles.Filtered := false;
  FDTableVehicles.Filter := 'uuid = ' +
    QuotedStr(FDTableStatementsvehicle_uuid.AsString);
  FDTableVehicles.Filtered := true;

  FDTableUsedConsumables.Filtered := false;
  FDTableUsedConsumables.Filter := 'statement_uuid = ' +
    QuotedStr(FDTableStatementsuuid.AsString);
  FDTableUsedConsumables.Filtered := true;

  FDTableUsedServices.Filtered := false;
  FDTableUsedServices.Filter := 'statement_uuid = ' +
    QuotedStr(FDTableStatementsuuid.AsString);
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

procedure TDataModuleDB.FDTableUsedConsumablesCalcFields(DataSet: TDataSet);
begin
  FDTableUsedConsumablesfull_price.AsCurrency :=
    FDTableUsedConsumablesconsumable_price.AsCurrency *
    FDTableUsedConsumablesquantity.AsCurrency;
end;

procedure TDataModuleDB.FDTableUsedServicesCalcFields(DataSet: TDataSet);
begin
  FDTableUsedServicesfull_price.AsCurrency :=
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
