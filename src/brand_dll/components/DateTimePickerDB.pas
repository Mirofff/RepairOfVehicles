unit DateTimePickerDB;

interface

uses
  Winapi.Messages, Winapi.Windows, System.Classes, Vcl.ComCtrls, Vcl.DBCtrls, Data.DB, DesignIntf;

type
  TDBDateTimePicker = class(TDateTimePicker)
  private
    FDataLink: TFieldDataLink;
    procedure DataChange(Sender: TObject);
    function GetDataSource: TDataSource;
    function GetDataField: string;
    function GetField: TField;
    procedure SetDataSource(const Value: TDataSource);
    procedure SetDataField(const Value: string);
    procedure UpdateData(Sender: TObject);
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property DataField: string read GetDataField write SetDataField;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Data Controls', [TDBDateTimePicker]);
  ForceDemandLoadState(dlDisable);
end;

{ TDateTimePickerDB }

constructor TDBDateTimePicker.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData;
end;

destructor TDBDateTimePicker.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

procedure TDBDateTimePicker.DataChange(Sender: TObject);
begin
  if FDataLink.Field <> nil then
    Date := FDataLink.Field.AsDateTime
  else
    Date := 0;
end;

function TDBDateTimePicker.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

function TDBDateTimePicker.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

function TDBDateTimePicker.GetField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TDBDateTimePicker.SetDataSource(const Value: TDataSource);
begin
  FDataLink.DataSource := Value;
  if Value <> nil then
    Value.FreeNotification(Self);
end;

procedure TDBDateTimePicker.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TDBDateTimePicker.UpdateData(Sender: TObject);
begin
  if FDataLink.Field <> nil then
    FDataLink.Field.AsDateTime := Date;
end;

procedure TDBDateTimePicker.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (AComponent = DataSource) then
    DataSource := nil;
end;

procedure TDBDateTimePicker.Loaded;
begin
  inherited Loaded;
  if (csDesigning in ComponentState) and (DataSource <> nil) then
    DataChange(Self);
end;

end.

