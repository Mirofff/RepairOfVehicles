object FrameDyncamicReport: TFrameDyncamicReport
  Left = 0
  Top = 0
  Width = 544
  Height = 333
  Align = alClient
  TabOrder = 0
  object SpeedButton1: TSpeedButton
    Left = 512
    Top = 514
    Width = 23
    Height = 22
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 544
    Height = 65
    Align = alTop
    Caption = #1042#1099#1073#1086#1088' '#1084#1077#1089#1103#1094#1072' '#1076#1083#1103' '#1086#1090#1095#1077#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 850
    object DatePicker1: TDatePicker
      Left = 2
      Top = 19
      Width = 540
      Height = 44
      Align = alClient
      Date = 44896.000000000000000000
      DateFormat = 'yyyy/mm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 0
      OnChange = DatePicker1Change
      ExplicitWidth = 846
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 298
    Width = 544
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 150.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 1
        Control = Button1
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 445
    ExplicitWidth = 850
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 156
      Height = 35
      Align = alLeft
      Alignment = taRightJustify
      Caption = #1054#1073#1097#1072#1103' '#1089#1091#1084#1084#1072': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 31
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 397
      Top = 3
      Width = 144
      Height = 29
      Align = alClient
      Caption = #1069#1082#1089#1087#1086#1088#1090
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 703
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 65
    Width = 544
    Height = 233
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    ColCount = 6
    DefaultColWidth = 140
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving, goFixedRowDefAlign]
    ParentColor = True
    TabOrder = 2
    ExplicitWidth = 850
    ExplicitHeight = 380
  end
  object FDQuery1: TFDQuery
    Connection = MainForm.FDConnection1
    SQL.Strings = (
      'use course_work;'
      'SELECT '
      '    DateExecution,'
      '    DateRegistration,'
      '    services,'
      '    c.statenumber,'
      '    cl.surname'
      'FROM'
      '    course_work.order AS o'
      '        JOIN'
      '    car AS c ON o.car = c.id'
      '        JOIN'
      '    client AS cl ON o.client = cl.id;')
    Left = 272
    Top = 192
    object FDQuery1DateExecution: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DateExecution'
      Origin = 'DateExecution'
    end
    object FDQuery1DateRegistration: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DateRegistration'
      Origin = 'DateRegistration'
    end
    object FDQuery1services: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'services'
      Origin = 'Services'
      BlobType = ftWideMemo
    end
    object FDQuery1statenumber: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'statenumber'
      Origin = 'StateNumber'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object FDQuery1surname: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'surname'
      Origin = 'Surname'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
  object FDQuery2: TFDQuery
    Connection = MainForm.FDConnection1
    SQL.Strings = (
      'SELECT * FROM course_work.service;')
    Left = 144
    Top = 192
    object FDQuery2ID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery2Description: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
    object FDQuery2Price: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'Price'
      Origin = 'Price'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 256
    Top = 304
  end
  object frxReport1: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45041.433282685200000000
    ReportOptions.LastChange = 45041.458947893500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '    '
      'end.')
    Left = 616
    Top = 304
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072#1082#1072#1079#1086#1074' '#1087#1086' '#1084#1072#1088#1082#1072#1084' '#1072#1074#1090#1086':')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1059#1089#1083#1091#1075#1080)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 22.677180000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1083#1080#1077#1085#1090)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1062#1077#1085#1072)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1042#1089#1077#1075#1086)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 257.008015590000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object TableObject1: TfrxTableObject
          Align = baClient
          AllowVectorExport = True
          object TableColumn1: TfrxTableColumn
            Width = 131.023706666667000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 131.023706666667000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn3: TfrxTableColumn
            Width = 131.023706666667000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 131.023706666667000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 131.023706666667000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn6: TfrxTableColumn
            Width = 62.992166666666700000
            MaxWidth = 75.590600000000000000
          end
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 496
    Top = 304
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDQuery1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 368
    Top = 312
  end
end
