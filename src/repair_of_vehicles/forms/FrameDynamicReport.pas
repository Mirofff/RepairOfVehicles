unit FrameDynamicReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPickers, Vcl.Buttons, json, Vcl.DBGrids, frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF, comobj, ioutils;

type
  TFrameDyncamicReport = class(TFrame)
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    DatePicker1: TDatePicker;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery2ID: TFDAutoIncField;
    FDQuery2Description: TWideStringField;
    FDQuery2Price: TLargeintField;
    FDQuery1DateExecution: TDateField;
    FDQuery1DateRegistration: TDateField;
    FDQuery1services: TWideMemoField;
    FDQuery1statenumber: TWideStringField;
    FDQuery1surname: TWideStringField;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure updateGrid(query: string);
    procedure DatePicker1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses frmRepairOfVehicles;

procedure TFrameDyncamicReport.Button1Click(Sender: TObject);
var
  ExcelFileName: String;
  I, J: integer;
  ExcelApplication, ExcelWorkbook, ExcelWorksheet: Variant;
begin
  // be sure ComObj and Variants units are included in the "uses" clause

  ExcelFileName := TPath.GetDocumentsPath + '\' + datetostr(now()) + '.xlsx';
  // replace file name with the name of your file

  ExcelApplication := Null;
  ExcelWorkbook := Null;
  ExcelWorksheet := Null;

  try
    // create Excel OLE
    ExcelApplication := CreateOleObject('Excel.Application');
  except
    ExcelApplication := Null;
    // add error/exception handling code as desired
  end;

  If VarIsNull(ExcelApplication) = False then
  begin
    try
      ExcelApplication.Visible := True;
      // set to False if you do not want to see the activity in the background
      ExcelApplication.DisplayAlerts := False;
      // ensures message dialogs do not interrupt the flow of your automation process. May be helpful to set to True during testing and debugging.

      // Open Excel Workbook
      try
        ExcelWorkbook := ExcelApplication.WorkBooks.Add(-4167);
        // reference
        // https://docs.microsoft.com/en-us/office/vba/api/excel.workbooks.add
        // https://docs.microsoft.com/en-us/office/vba/api/excel.xlsheettype
      except
        ExcelWorkbook := Null;
        // add error/exception handling code as desired
      end;

      If VarIsNull(ExcelWorkbook) = False then
      begin
        // connect to Excel Worksheet using either the ExcelApplication or ExcelWorkbook handle
        try
          ExcelWorksheet := ExcelWorkbook.WorkSheets[1];
          // [1] specifies the first worksheet
        except
          ExcelWorksheet := Null;
          // add error/exception handling code as desired
        end;

        If VarIsNull(ExcelWorksheet) = False then
        begin
          ExcelWorksheet.Select;

          for I := 0 to StringGrid1.RowCount - 1 do
            for J := 0 to StringGrid1.ColCount - 1 do
            begin
              ExcelWorksheet.Cells[I + 1, J + 1] := StringGrid1.Cells[J, I];
            end;
            ExcelWorksheet.cells[1, 8] := 'Общая сумма';
            ExcelWorksheet.cells[2, 8] := Label1.Caption;

          // ExcelWorksheet.Cells[1, 1] :=
          // 'We just created a new Excel file with one worksheet!';
          // // [row,column], in this case, text is added to Cell A1
          // ExcelWorksheet.Cells[2, 1].Select; // selects Cell A2

          ExcelWorkbook.SaveAs(ExcelFileName);
          // or
          // ExcelApplication.WorkBooks[1].SaveAs(NewExcelFileName);
          // Note: If a file with the new name already exists, it overwrites it. Write additional code to address as desired.
          // reference
          // https://docs.microsoft.com/en-us/office/vba/api/excel.workbook.saveas
        end;
      end;
    finally
      ExcelApplication.WorkBooks.Close;
      ExcelApplication.DisplayAlerts := True;
      ExcelApplication.Quit;

      ExcelWorksheet := Unassigned;
      ExcelWorkbook := Unassigned;
      ExcelApplication := Unassigned;
    end;
  end;
  // var
  // i, j: integer;
  // FData: Variant;
  // Sheet, Range: Variant;
  // ExcelApp: OleVariant;
  // begin
  // ExcelApp := CreateOleObject('Excel.Application');
  // // создаем вариантный массив
  // FData := VarArrayCreate([0, StringGrid1.RowCount, 0, StringGrid1.ColCount],
  // varVariant);
  // // заполняем массив данными из StringGrid
  // for i := 1 to VarArrayHighBound(FData, 1) do
  // for j := 1 to VarArrayHighBound(FData, 2) do
  // FData[i, j] := StringGrid1.Cells[j - 1, i - 1];
  //
  // { активируем второй лист книги }
  // // открываем книгу
  /// /  ExcelApp.Workbooks.Open('C:\Users\PC7\Desktop\repair_of_vehicles\bin\' +
  /// /    datetostr(now()) + '.xlsx');
  //
  // // активируем
  // Sheet := ExcelApp.ActiveWorkBook.Sheets[1];
  // Sheet.Activate;
  // // выделяем диапазон для вставки данных
  // Range := Sheet.Range[Sheet.Cells[1, 1],
  // Sheet.Cells[VarArrayHighBound(FData, 1), VarArrayHighBound(FData, 2)]];
  // // вставляем данные
  // Range.Value := FData;
  // ExcelApp.Workbooks.saveas('./' + datetostr(now()) + '.xlsx');
  // // показываем окно Excel
  // ExcelApp.Visible := True;
  //
  // ExcelApp.Workbooks.Close;
  // ExcelApp.DisplayAlerts := True;
  // ExcelApp.Quit;
  //
  /// /  ExcelWorksheet := Unassigned;
  /// /  ExcelWorkbook := Unassigned;
  /// /  ExcelApp := Unassigned;
end;

procedure TFrameDyncamicReport.DatePicker1Change(Sender: TObject);
begin
  updateGrid
    ('use course_work; SELECT o.dateExecution, o.dateRegistration, c.StateNumber, cl.surname , o.services FROM course_work.order AS o JOIN car AS c ON o.Car = c.id JOIN client AS cl ON o.Client = cl.id where o.DateExecution like '''
    + FormatDateTime('yyyy-mm', DatePicker1.Date) + '%'';');
end;

procedure TFrameDyncamicReport.FormCreate(Sender: TObject);
begin

  StringGrid1.Cells[0, 0] := 'Дата выполнения';
  StringGrid1.Cells[1, 0] := 'Клиент';
  StringGrid1.Cells[2, 0] := 'Услуги';
  StringGrid1.Cells[3, 0] := 'Количество';
  StringGrid1.Cells[4, 0] := 'Цена';
  StringGrid1.Cells[5, 0] := 'Всего';

  updateGrid
    ('SELECT o.dateExecution, o.dateRegistration, c.StateNumber, cl.surname , o.services FROM course_work.order AS o JOIN course_work.car AS c ON o.Car = c.id JOIN course_work.client AS cl ON o.Client = cl.id;');
end;

procedure TFrameDyncamicReport.updateGrid(query: string);
var
  I, J: integer;
  jsonData: TJSONValue;
  arr: TJSONArray;
  service: TJSONArray;
  Sum, fullSum: Float64;
  line: integer;
  Col, row: integer;
begin
  StringGrid1.Cells[0, 0] := 'Дата выполнения';
  StringGrid1.Cells[1, 0] := 'Клиент';
  StringGrid1.Cells[2, 0] := 'Услуги';
  StringGrid1.Cells[3, 0] := 'Количество';
  StringGrid1.Cells[4, 0] := 'Цена';
  StringGrid1.Cells[5, 0] := 'Всего';

  Sum := 0;
  fullSum := 0;
  line := 1;

  FDQuery1.SQL.Text := query;
  FDQuery1.Open;

  for I := 1 to FDQuery1.RecordCount do
  begin

    jsonData := TJSONArray.ParseJSONValue(FDQuery1services.AsString);
    arr := jsonData.AsType<TJSONArray>;

    StringGrid1.Cells[0, line] := FDQuery1DateExecution.AsString;
    StringGrid1.Cells[1, line] := FDQuery1surname.AsString;
    for J := 0 to (arr.Count - 1) do
    begin
      service := arr.Items[J].AsType<TJSONArray>;

      FDQuery2.SQL.Text := 'SELECT * FROM course_work.service where ID = ' +
        service[1].ToString + ';';
      FDQuery2.Open;

      StringGrid1.Cells[2, line] := FDQuery2Description.AsString;
      StringGrid1.Cells[3, line] := service[0].ToString;
      StringGrid1.Cells[4, line] := FDQuery2Price.AsString;
      StringGrid1.Cells[5, line] :=
        FloatToStr(FDQuery2Price.AsFloat * strtoint(service[0].ToString));
      inc(line);
      StringGrid1.RowCount := StringGrid1.RowCount + 1;

      Sum := Sum + (FDQuery2Price.Value * strtoint(service[0].ToString));
    end;

    // StringGrid1.Cells[5, line - FDQuery2.RecordCount - 1] := floattostr(Sum);
    fullSum := fullSum + Sum;
    Sum := 0;
    StringGrid1.RowCount := StringGrid1.RowCount + 1;
    FDQuery1.Next;
  end;
  Label1.Caption := 'Общая сумма: ' + FloatToStr(fullSum);

end;

end.
