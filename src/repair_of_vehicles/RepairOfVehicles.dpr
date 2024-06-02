program RepairOfVehicles;

uses
  Vcl.Forms,
  frmRepairOfVehicles in 'forms\frmRepairOfVehicles.pas' {MainForm},
  FrameDynamicReport in 'forms\FrameDynamicReport.pas' {FrameDyncamicReport: TFrame},
  FrameOperationsLog in 'forms\FrameOperationsLog.pas' {FrameOperationsLog: TFrame},
  FrameStaticReport in 'forms\FrameStaticReport.pas' {FrameStaticReport: TFrame},
  DataModule in 'DataModule.pas' {DataModuleDB: TDataModule},
  DotEnv4Delphi in '..\common\DotEnv4Delphi.pas',
  DBManagement in '..\common\DBManagement.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataModuleDB, DataModuleDB);
  Application.Run;
end.
