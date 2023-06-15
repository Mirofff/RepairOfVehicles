unit FrameOperationsLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.WinXPickers, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Generics.Collections, Vcl.JumpList, Vcl.ControlList, Vcl.ValEdit,
  types,
  Vcl.NumberBox, json, Generics.Collections, System.StrUtils, frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF, frxTableObject;

type
  TServices = TArray<TArray<string>>;

  TFrameOperationsLog = class(TFrame)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DatePicker1: TDatePicker;
    DatePicker2: TDatePicker;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    FDQuery2: TFDQuery;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Edit2: TEdit;
    Label1: TLabel;
    GridPanel1: TGridPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    GroupBox9: TGroupBox;
    Label2: TLabel;
    GridPanel2: TGridPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport2: TfrxReport;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    FDQuery4id: TFDAutoIncField;
    FDQuery4description: TWideStringField;
    FDQuery4price: TLongWordField;
    FDQuery4count: TIntegerField;
    FDQuery3id: TFDAutoIncField;
    FDQuery3description: TWideStringField;
    FDQuery3price: TLongWordField;
    FDQuery3count: TIntegerField;
    GridPanel3: TGridPanel;
    ListBox1: TListBox;
    ListBox3: TListBox;
    ListBox2: TListBox;
    ListBox4: TListBox;
    GroupBox6: TGroupBox;
    NumberBox2: TNumberBox;
    GroupBox10: TGroupBox;
    NumberBox1: TNumberBox;

    procedure updateValues;
    procedure toggleModifications;
    procedure toggleInserts;
    procedure fillClients;
    procedure fillCars;
    procedure updateConsumables;
    procedure fillConsumables;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure fillListBox;
    procedure updateListBox;
    procedure ListBox1DblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure ListBox4DblClick(Sender: TObject);
    procedure ListBox3DblClick(Sender: TObject);

  private
    { Private declarations }

  public

    { Public declarations }
    procedure Loaded; override;

  end;

var
  FrameOperationsLog1: TFrameOperationsLog;

implementation

uses frmRepairOfVehicles;
{$R *.dfm}

procedure TFrameOperationsLog.ListBox1DblClick(Sender: TObject);
begin
  ListBox1.DeleteSelected;
end;

procedure TFrameOperationsLog.ListBox2DblClick(Sender: TObject);
var
  description: string;
begin
  description := SplitString(ListBox2.Items.Strings[ListBox2.ItemIndex],
    ':')[0].Trim;
  ListBox1.Items.Append(description + ' : ' + inttostr(NumberBox2.ValueInt));

  NumberBox2.Clear;
end;

procedure TFrameOperationsLog.ListBox3DblClick(Sender: TObject);
begin
  ListBox3.DeleteSelected;
end;

procedure TFrameOperationsLog.ListBox4DblClick(Sender: TObject);
var
  description: string;
begin
  description := SplitString(ListBox4.Items.Strings[ListBox4.ItemIndex],
    ':')[0].Trim;
  ListBox3.Items.Append(description + ' : ' + inttostr(NumberBox1.ValueInt));

  NumberBox1.Clear;
end;

procedure TFrameOperationsLog.Loaded;
begin
  FDQuery1.Open;
  FDQuery3.Open;
  FDQuery4.Open;

  updateValues;

  fillCars;
  fillClients;

  fillListBox;
  fillConsumables;
end;

procedure TFrameOperationsLog.SpeedButton10Click(Sender: TObject);
begin
  updateValues;
  updateConsumables;

  toggleModifications;
  toggleInserts;
end;

procedure TFrameOperationsLog.SpeedButton1Click(Sender: TObject);
begin
  if not FDQuery1.Bof then
  begin
    FDQuery1.prior;
    updateValues;
  end;
end;

procedure TFrameOperationsLog.SpeedButton2Click(Sender: TObject);
begin
  if not FDQuery1.Bof then
  begin
    FDQuery1.first;
    updateValues;
  end;
end;

procedure TFrameOperationsLog.SpeedButton3Click(Sender: TObject);
begin
  if not FDQuery1.Eof then
  begin
    FDQuery1.last;
    updateValues;
  end;
end;

procedure TFrameOperationsLog.SpeedButton4Click(Sender: TObject);
begin
  if not FDQuery1.Eof then
  begin
    FDQuery1.next;
    updateValues;
  end;
end;

procedure TFrameOperationsLog.SpeedButton5Click(Sender: TObject);
begin
  toggleModifications;
  toggleInserts;

  DatePicker1.Date := Now;
  DatePicker2.Date := Now;
  ComboBox1.Text := '';
  ComboBox2.Text := '';
  ListBox1.Items.Clear;
  ListBox3.Items.Clear;
end;

procedure TFrameOperationsLog.SpeedButton6Click(Sender: TObject);
begin
  FDQuery2.ExecSQL('delete from course_work.order where id = ' +
    FDQuery1.FieldByName('id').AsString);
  FDQuery1.Refresh;
  updateValues;;
end;

procedure TFrameOperationsLog.SpeedButton7Click(Sender: TObject);
begin
  // var
  // services: TJSONArray;
  // service: string;
  // description: string;
  // count: string;
  // statenumber: string;
  // surname: string;
  // begin
  // services := TJSONArray.Create;
  //
  // FDQuery1.Edit;
  //
  // FDQuery1dateexecution.Value := DatePicker1.Date;
  // showmessage('hihih');
  // FDQuery1dateregistration.Value := DatePicker2.Date;
  // showmessage('hahhaha');
  // FDQuery2.Open('select * from course_work.client where surname = ' +
  // quotedstr(ComboBox2.Text) + ';');
  //
  // FDQuery1client.AsString := FDQuery2.FieldByName('id').AsString;
  // showmessage('uhuhuh');
  //
  // FDQuery2.Open('select * from course_work.car where statenumber like ' +
  // quotedstr(ComboBox1.Text + '%') + ';');
  //
  // FDQuery1car.Value := FDQuery2.FieldByName('id').AsInteger;
  // showmessage('huhahahuhaha');
  //
  // for service in ListBox1.Items do
  // begin
  // description := service.Split([':'])[0].Trim;
  //
  // count := service.Split([':'])[1].Trim;
  // FDQuery2.Open('select * from course_work.service where description like ' +
  // quotedstr(description) + ';');
  //
  // services.Add(TJSONArray.ParseJSONValue('[' + count + ', ' +
  // FDQuery2.FieldByName('id').AsString + ']').AsType<TJSONArray>);
  // end;
  // showmessage('last');
  // FDQuery1services.Value := services.ToString;
  // Edit1.Text := FDQuery1car.AsString + ', ' + FDQuery1client.AsString + ', ' +
  // FDQuery1services.AsString;
  // FDQuery1.Post;
  // showmessage('last-last');
  // FDQuery1.Refresh;
end;

procedure TFrameOperationsLog.SpeedButton8Click(Sender: TObject);
begin
  updateValues;
  frxReport2.ShowReport;
end;

procedure TFrameOperationsLog.toggleModifications;
begin
  if SpeedButton5.Enabled then
  begin
    SpeedButton5.Enabled := false;
    SpeedButton6.Enabled := false;
    // SpeedButton7.Enabled := false;
    SpeedButton8.Enabled := false;
  end
  else
  begin
    SpeedButton5.Enabled := true;
    SpeedButton6.Enabled := true;
    // SpeedButton7.Enabled := true;
    SpeedButton8.Enabled := true;
  end;
end;

procedure TFrameOperationsLog.toggleInserts;
begin
  if GroupBox9.Visible then
  begin
    GroupBox9.Visible := false;
  end
  else
  begin
    GroupBox9.Visible := true;
  end;

end;

procedure TFrameOperationsLog.SpeedButton9Click(Sender: TObject);
var
  services: TJSONArray;
  consumables: TJSONArray;
  service: string;
  description: string;
  count: string;
  statenumber: string;
  surname: string;
  consumable: string;
begin
  services := TJSONArray.Create;
  consumables := TJSONArray.Create;
  FDQuery1.Append;
  FDQuery1.FieldByName('dateregistration').Value := DatePicker1.Date;
  FDQuery1.FieldByName('dateexecution').Value := DatePicker2.Date;

  FDQuery2.Open('select * from course_work.client where surname = ' +
    quotedstr(ComboBox2.Text) + ';');

  FDQuery1.FieldByName('client').Value := FDQuery2.FieldByName('id').AsInteger;

  FDQuery2.Open('select * from course_work.car where statenumber like ' +
    quotedstr(ComboBox1.Text + '%') + ';');

  FDQuery1.FieldByName('car').Value := FDQuery2.FieldByName('id').AsInteger;

  for service in ListBox1.Items do
  begin
    count := service.Split([':'])[1].Trim;
    description := service.Split([':'])[0].Trim;

    FDQuery2.Open('select * from course_work.service where description like ' +
      quotedstr(description) + ';');
    services.Add(TJSONArray.ParseJSONValue('[' + count + ', ' +
      FDQuery2.FieldByName('id').AsString + ']').AsType<TJSONArray>);
  end;

  FDQuery1.FieldByName('services').Value := services.ToString;
  for consumable in ListBox3.Items do
  begin
    count := service.Split([':'])[1].Trim;
    description := consumable.Split([':'])[0].Trim;

    FDQuery2.Open
      ('select * from course_work.consumables where description like ' +
      quotedstr(description) + ';');

    consumables.Add(TJSONArray.ParseJSONValue('[' + count + ', ' +
      FDQuery2.FieldByName('id').AsString + ']').AsType<TJSONArray>);
  end;

  FDQuery1.FieldByName('consumables').Value := consumables.ToString;

  FDQuery1.Post;
  FDQuery1.Refresh;

  toggleModifications;
  toggleInserts;

end;

procedure TFrameOperationsLog.updateValues;
var
  item: string;
  consumables_id: string;
  services_id: string;
  description: string;
begin
  consumables_id := '';
  services_id := '';

  DatePicker1.Date := FDQuery1.FieldByName('dateregistration').AsDateTime;

  DatePicker2.Date := FDQuery1.FieldByName('dateexecution').AsDateTime;

  ComboBox1.Text := FDQuery1.FieldByName('statenumber').AsString;
  ComboBox2.Text := FDQuery1.FieldByName('surname').AsString;

  updateListBox;
  updateConsumables;

  for item in ListBox3.Items do
  begin
    description := item.Split([':'])[0].Trim;
    FDQuery2.Open
      ('select * from course_work.consumables where description like ' +
      quotedstr(description) + ';');

    consumables_id := consumables_id + FDQuery2.FieldByName('id')
      .AsString + ',';
  end;
  SetLength(consumables_id, length(consumables_id) - 1);
  FDQuery4.Open('select * from course_work.consumables where id in (' +
    consumables_id + ');');

  for item in ListBox3.Items do
  begin
    FDQuery4.Edit;
    FDQuery4count.AsString := item.Split([':'])[1].Trim;
    FDQuery4.Post;
    FDQuery4.next;
  end;

  for item in ListBox1.Items do
  begin

    description := item.Split([':'])[0].Trim;
    FDQuery2.Open('select * from course_work.service where description like ' +
      quotedstr(description) + ';');
    services_id := services_id + FDQuery2.FieldByName('id').AsString + ',';
  end;

  for item in ListBox1.Items do
  begin
    FDQuery3.Edit;
    FDQuery3count.AsString := item.Split([':'])[1].Trim;
    FDQuery3.Post;
    FDQuery3.next;
  end;

  SetLength(services_id, length(services_id) - 1);
  FDQuery3.Open('select * from course_work.service where id in (' +
    services_id + ');');

end;

procedure TFrameOperationsLog.fillClients;
begin
  FDQuery2.Open('SELECT * FROM course_work.client;');
  while not FDQuery2.Eof do
  begin
    ComboBox2.Items.Add(FDQuery2.FieldByName('surname').AsString);
    FDQuery2.next;
  end;

end;

procedure TFrameOperationsLog.Edit2Change(Sender: TObject);
begin
  // FDQuery1.Open
  // ('use course_work; SELECT o.id, dateexecution, dateregistration, services, c.statenumber, cl.surname, cl.phone FROM course_work.order as o join car as c on o.car = c.id join client as cl on o.client = cl.id where dateexecution like '
  // + quotedstr(Edit2.Text + '%') + ';');
  // updateValues;
end;

procedure TFrameOperationsLog.fillCars;
begin
  FDQuery2.Open('SELECT * FROM course_work.car;');
  while not FDQuery2.Eof do
  begin
    ComboBox1.Items.Add(FDQuery2.FieldByName('statenumber').AsString);
    FDQuery2.next;
  end;
end;

procedure TFrameOperationsLog.updateListBox;
var
  services: TJSONArray;
  service: TJSONValue;
  description: string;
  count: integer;
begin
  ListBox1.Items.Clear;

  services := TJSONArray.ParseJSONValue(FDQuery1.FieldByName('services').Value)
    .AsType<TJSONArray>;

  for service in services do
  begin
    count := StrToInt(service.AsType<TJSONArray>[0].Value);
    description := service.AsType<TJSONArray>[1].Value;
    FDQuery2.Open('select * from course_work.service where id = ' +
      description + ';');
    ListBox1.Items.Add(FDQuery2.FieldByName('description').AsString + ' : ' +
      inttostr(count));
  end;

end;

procedure TFrameOperationsLog.updateConsumables;
var
  services: TJSONArray;
  service: TJSONValue;
  description: string;
  count: integer;
begin
  ListBox3.Items.Clear;

  services := TJSONArray.ParseJSONValue(FDQuery1.FieldByName('consumables')
    .Value).AsType<TJSONArray>;

  for service in services do
  begin
    count := StrToInt(service.AsType<TJSONArray>[0].Value);
    description := service.AsType<TJSONArray>[1].Value;
    FDQuery2.Open('select * from course_work.consumables where id = ' +
      description + ';');
    ListBox3.Items.Add(FDQuery2.FieldByName('description').AsString + ' : ' +
      inttostr(count));
  end;

end;

procedure TFrameOperationsLog.fillListBox;
begin
  FDQuery2.Open('select * from course_work.service');
  while not FDQuery2.Eof do
  begin
    ListBox2.Items.Add(FDQuery2.FieldByName('description').AsString + ' : ' +
      FDQuery2.FieldByName('price').AsString);
    FDQuery2.next;
  end;

end;

procedure TFrameOperationsLog.fillConsumables;
begin
  FDQuery2.Open('select * from course_work.consumables');
  while not FDQuery2.Eof do
  begin
    ListBox4.Items.Add(FDQuery2.FieldByName('description').AsString + ' : ' +
      FDQuery2.FieldByName('price').AsString);
    FDQuery2.next;
  end;
end;

end.
