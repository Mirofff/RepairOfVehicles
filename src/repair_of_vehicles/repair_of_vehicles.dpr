program repair_of_vehicles;

uses
  Vcl.Forms,
  frmRepairOfVehicles in 'forms\frmRepairOfVehicles.pas' {MainForm},
  FrameDynamicReport in 'forms\FrameDynamicReport.pas' {FrameDyncamicReport: TFrame},
  FrameOperationsLog in 'forms\FrameOperationsLog.pas' {FrameOperationsLog: TFrame},
  FrameStaticReport in 'forms\FrameStaticReport.pas' {FrameStaticReport: TFrame},
  DataModule in 'DataModule.pas' {DataModuleDB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataModuleDB, DataModuleDB);
  Application.Run;
end.
