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
  TDataModule1 = class(TDataModule)
    FDTableServices: TFDTable;
    FDTableServicesuuid: TStringField;
    FDTableServicesname: TStringField;
    FDTableServicesprice: TFloatField;
    frxDBDatasetConsumables: TfrxDBDataset;
    frxDBDatasetServices: TfrxDBDataset;
    frxDBDatasetVehicles: TfrxDBDataset;
    frxReportStatement: TfrxReport;
    frxDBDatasetStatements: TfrxDBDataset;
    FDTableVehicles: TFDTable;
    FDTableVehiclesuuid: TStringField;
    FDTableVehiclesregistration_plate: TStringField;
    FDTableVehiclescreated_at: TDateTimeField;
    FDTableVehiclesupdated_at: TDateTimeField;
    FDTableVehiclesmodel_id: TIntegerField;
    FDTableVehiclesworkshop_uuid: TStringField;
    FDTableVehiclesclient_uuid: TStringField;
    FDTableVehiclesis_active: TBooleanField;
    FDTableVehiclesvin: TStringField;
    FDTableVehiclesengine: TStringField;
    FDTableVehiclestech_passport: TMemoField;
    FDTableVehiclesmileage: TIntegerField;
    FDTableVehiclescolor: TStringField;
    FDTableVehiclesmark_id: TIntegerField;
    FDTableVehiclesmodel: TStringField;
    FDTableVehiclesmark: TStringField;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDTable1workshop_uuid: TStringField;
    FDTable1role: TStringField;
    FDTable1first_name: TStringField;
    FDTable1second_name: TStringField;
    FDTable1last_name: TStringField;
    FDTable1is_active: TBooleanField;
    FDTable1email: TStringField;
    FDTable1password: TStringField;
    FDTable1remember_token: TStringField;
    FDTable1created_at: TSQLTimeStampField;
    FDTable1updated_at: TSQLTimeStampField;
    FDTable1uuid: TStringField;
    FDTable2: TFDTable;
    FDTable2uuid: TStringField;
    FDTable2registration_plate: TStringField;
    FDTable2created_at: TDateTimeField;
    FDTable2updated_at: TDateTimeField;
    FDTable2model_id: TLargeintField;
    FDTable2workshop_uuid: TStringField;
    FDTable2client_uuid: TStringField;
    FDTable2is_active: TBooleanField;
    FDTable2vin: TStringField;
    FDTable2engine: TStringField;
    FDTable2tech_passport: TMemoField;
    FDTable2mileage: TIntegerField;
    FDTable2color: TStringField;
    FDTableMarks: TFDTable;
    FDTableModels: TFDTable;
    FDTableConsumables: TFDTable;
    FDTableConsumablesuuid: TStringField;
    FDTableConsumablesname: TStringField;
    FDTableConsumablesprice: TFloatField;
    FDTableUsedServices: TFDTable;
    FDTableUsedServicesuuid: TStringField;
    FDTableUsedServicescreated_at: TDateTimeField;
    FDTableUsedServicesupdated_at: TDateTimeField;
    FDTableUsedServicesstatement_uuid: TStringField;
    FDTableUsedServicesservice_uuid: TStringField;
    FDTableUsedServicesquantity: TIntegerField;
    FDTableUsedServicesservices_name: TStringField;
    FDTableUsedServicesservice_price: TCurrencyField;
    FDTableUsedConsumables: TFDTable;
    FDTableUsedConsumablesuuid: TStringField;
    FDTableUsedConsumablescreated_at: TDateTimeField;
    FDTableUsedConsumablesupdated_at: TDateTimeField;
    FDTableUsedConsumablesstatement_uuid: TStringField;
    FDTableUsedConsumablesconsumable_uuid: TStringField;
    FDTableUsedConsumablesquantity: TIntegerField;
    FDTableUsedConsumablesconsumable_name: TStringField;
    FDTableUsedConsumablesconsumable_price: TCurrencyField;
    FDTableStatements: TFDTable;
    FDTableStatementsuuid: TStringField;
    FDTableStatementscreated_at: TDateTimeField;
    FDTableStatementsupdated_at: TDateTimeField;
    FDTableStatementsstatus: TStringField;
    FDTableStatementsrequest_uuid: TStringField;
    FDTableStatementsclient_uuid: TStringField;
    FDTableStatementsvehicle_uuid: TStringField;
    FDTableStatementsis_active: TBooleanField;
    FDTableStatementsclient_first_name: TStringField;
    FDTableStatementsclient_last_name: TStringField;
    FDTableStatementsclient_second_name: TStringField;
    FDConnectionMain: TFDConnection;
    FDTableClients: TFDTable;
    FDTableClientsuuid: TStringField;
    FDTableClientsfirst_name: TStringField;
    FDTableClientssecond_name: TStringField;
    FDTableClientslast_name: TStringField;
    FDTableClientsis_active: TBooleanField;
    FDTableClientsemail: TStringField;
    FDTableClientspassword: TStringField;
    FDTableClientsremember_token: TStringField;
    FDTableClientscreated_at: TSQLTimeStampField;
    FDTableClientsupdated_at: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
