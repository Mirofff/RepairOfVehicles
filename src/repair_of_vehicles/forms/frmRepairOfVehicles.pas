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
    SplitView1: TSplitView;
    ReautorizationButton: TSpeedButton;
    ExitButton: TSpeedButton;
    HandBookButton: TSpeedButton;
    ReportButton: TSpeedButton;
    OperationLogButton: TSpeedButton;
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
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    FrameDyncamicReport1: TFrameDyncamicReport;
    FrameStaticReport1: TFrameStaticReport;
    HelpButton: TSpeedButton;
    FrameOperationsLog1: TFrameOperationsLog;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ReautorizationButtonClick(Sender: TObject);
    procedure HandBookButtonClick(Sender: TObject);
    procedure ReportButtonClick(Sender: TObject);
    procedure OperationLogButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure CreateTheDynamicReportForm;
    procedure HelpButtonClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FrameDyncamicReport1Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}
{ =--- Model's form procedures ---= }
procedure createTheEngineForm(tabShee: TTabSheet); external 'engines.dll';
procedure resizeTheEngineForm; external 'engines.dll';

{ =--- Model's form procedures ---= }
procedure createModelForm(tabShee: TTabSheet); external 'models.dll';
procedure resizeModelForm; external 'models.dll';

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

procedure TMainForm.Button1Click(Sender: TObject);
begin

  FDQuery1.Open('select * from users where login = ' + QuotedStr(EditLogin.Text)
    + ' and password = ' + QuotedStr(EditPassword.Text));
  if FDQuery1.FieldByName('status').AsInteger = 1 then
  begin
    HandBookButton.Enabled := true;
    OperationLogButton.Enabled := true;
    ReportButton.Enabled := true;
    ReautorizationButton.Enabled := true;
    PageControl1.ActivePage := TabSheet10;
    TabSheet4.TabVisible := true;
    TabSheet8.TabVisible := true;
  end
  else if FDQuery1.FieldByName('status').AsInteger = 2 then
  begin
    OperationLogButton.Enabled := true;
    ReportButton.Enabled := true;
    HandBookButton.Enabled := true;
    ReautorizationButton.Enabled := true;
    PageControl1.ActivePage := TabSheet10;
    TabSheet4.TabVisible := false;
    TabSheet8.TabVisible := false;
  end
  else
  begin
    showmessage('Неправильный логин или пароль!');
  end;
  EditLogin.Text := '';
  EditPassword.Text := '';
end;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
  MainForm.Close;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  { =--- Include forms initialize ---= }
  CreateTheDynamicReportForm;

  { =--- DLL's forms initialize ---= }
  createTheEngineForm(TabSheet3);
  createModelForm(TabSheet5);
  createBrandsForm(TabSheet4);
  createCarsForm(TabSheet9);
  createServicesForm(TabSheet8);
  createConsumablesForm(TabSheet7);
  createClientsForm(TabSheet6);

  PageControl1.ActivePage := TabSheet1;
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

procedure TMainForm.FrameDyncamicReport1Button1Click(Sender: TObject);
begin
  FrameDyncamicReport1.Button1Click(Sender);

end;

procedure TMainForm.HandBookButtonClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
end;

procedure TMainForm.HelpButtonClick(Sender: TObject);
begin
  ShellExecute(handle, 'open',  '.\Help.pdf', nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.OperationLogButtonClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet13;
end;

procedure TMainForm.ReautorizationButtonClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  ReautorizationButton.Enabled := false;
  HandBookButton.Enabled := false;
  ReportButton.Enabled := false;
  OperationLogButton.Enabled := false;
end;

procedure TMainForm.ReportButtonClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet10;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  if SplitView1.Opened then
  SplitView1.Close
  else SplitView1.Open;

end;

procedure TMainForm.CreateTheDynamicReportForm;
begin
  // show
end;

end.
