object FrameOperationsLog: TFrameOperationsLog
  Left = 0
  Top = 0
  Width = 802
  Height = 472
  Align = alClient
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 52
    Width = 321
    Height = 420
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 321
      Height = 60
      Align = alTop
      Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      TabOrder = 0
      object DatePicker1: TDatePicker
        Left = 2
        Top = 17
        Width = 317
        Height = 41
        Align = alClient
        Date = 45011.000000000000000000
        DateFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 60
      Width = 321
      Height = 60
      Align = alTop
      Caption = #1044#1072#1090#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
      TabOrder = 1
      object DatePicker2: TDatePicker
        Left = 2
        Top = 17
        Width = 317
        Height = 41
        Align = alClient
        Date = 45011.000000000000000000
        DateFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      Left = 0
      Top = 120
      Width = 321
      Height = 45
      Align = alTop
      Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100
      TabOrder = 2
      object ComboBox1: TComboBox
        Left = 2
        Top = 17
        Width = 317
        Height = 23
        Align = alClient
        TabOrder = 0
        Text = 'ComboBox1'
      end
    end
    object GroupBox5: TGroupBox
      Left = 0
      Top = 165
      Width = 321
      Height = 45
      Align = alTop
      Caption = #1050#1083#1080#1077#1085#1090
      TabOrder = 3
      object ComboBox2: TComboBox
        Left = 2
        Top = 17
        Width = 317
        Height = 23
        Align = alClient
        TabOrder = 0
        Text = 'ComboBox1'
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 315
      Width = 321
      Height = 105
      Align = alBottom
      Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103
      TabOrder = 4
      object Label1: TLabel
        Left = 3
        Top = 21
        Width = 5
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object GridPanel1: TGridPanel
        Left = 2
        Top = 17
        Width = 317
        Height = 86
        Align = alClient
        Caption = 'GridPanel1'
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = SpeedButton5
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton6
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton8
            Row = 1
          end>
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 0
        object SpeedButton5: TSpeedButton
          Left = 1
          Top = 1
          Width = 158
          Height = 42
          Align = alClient
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          OnClick = SpeedButton5Click
          ExplicitLeft = 96
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
        object SpeedButton6: TSpeedButton
          Left = 159
          Top = 1
          Width = 157
          Height = 42
          Align = alClient
          Caption = #1059#1076#1072#1083#1080#1090#1100
          OnClick = SpeedButton6Click
          ExplicitLeft = 170
          ExplicitTop = -5
          ExplicitWidth = 172
        end
        object SpeedButton8: TSpeedButton
          Left = 159
          Top = 43
          Width = 157
          Height = 42
          Align = alClient
          Caption = #1054#1090#1095#1077#1090
          OnClick = SpeedButton8Click
          ExplicitLeft = 96
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object GroupBox9: TGroupBox
      Left = 0
      Top = 254
      Width = 321
      Height = 61
      Align = alBottom
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
      TabOrder = 5
      Visible = False
      object Label2: TLabel
        Left = 3
        Top = 21
        Width = 5
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object GridPanel2: TGridPanel
        Left = 2
        Top = 17
        Width = 317
        Height = 42
        Align = alClient
        Caption = 'GridPanel1'
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = SpeedButton9
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton10
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 0
        object SpeedButton9: TSpeedButton
          Left = 1
          Top = 1
          Width = 158
          Height = 40
          Align = alClient
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          OnClick = SpeedButton9Click
          ExplicitLeft = 96
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
        object SpeedButton10: TSpeedButton
          Left = 159
          Top = 1
          Width = 157
          Height = 40
          Align = alClient
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100
          OnClick = SpeedButton10Click
          ExplicitLeft = 173
          ExplicitTop = -2
          ExplicitWidth = 172
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 802
    Height = 52
    ParentCustomHint = False
    Align = alTop
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Caption = 'Panel2'
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentColor = True
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowCaption = False
    ShowHint = False
    TabOrder = 1
    object GroupBox7: TGroupBox
      Left = 0
      Top = 0
      Width = 515
      Height = 52
      Align = alClient
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1084#1086#1076#1077#1083#1080
      TabOrder = 0
      object Edit2: TEdit
        Left = 2
        Top = 17
        Width = 511
        Height = 33
        Align = alClient
        TabOrder = 0
        OnChange = Edit2Change
        ExplicitHeight = 23
      end
    end
    object GroupBox8: TGroupBox
      Left = 515
      Top = 0
      Width = 287
      Height = 52
      Align = alRight
      Caption = #1053#1072#1074#1080#1075#1072#1094#1080#1103
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 2
        Top = 17
        Width = 70
        Height = 33
        Align = alLeft
        Caption = '<'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 72
        Top = 17
        Width = 70
        Height = 33
        Align = alLeft
        Caption = '|<'
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 142
        Top = 17
        Width = 70
        Height = 33
        Align = alLeft
        Caption = '>|'
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 212
        Top = 17
        Width = 70
        Height = 33
        Align = alLeft
        Caption = '>'
        OnClick = SpeedButton4Click
        ExplicitLeft = 214
        ExplicitTop = 16
      end
    end
  end
  object GridPanel3: TGridPanel
    Left = 321
    Top = 52
    Width = 481
    Height = 420
    Align = alClient
    Caption = 'GridPanel3'
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = ListBox1
        Row = 0
      end
      item
        Column = 1
        Control = ListBox3
        Row = 0
      end
      item
        Column = 0
        Control = ListBox2
        Row = 1
      end
      item
        Column = 1
        Control = ListBox4
        Row = 1
      end
      item
        Column = 0
        Control = GroupBox6
        Row = 2
      end
      item
        Column = 1
        Control = GroupBox10
        Row = 2
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 50.000000000000000000
      end>
    TabOrder = 2
    ExplicitLeft = 6
    ExplicitTop = 130
    ExplicitWidth = 185
    ExplicitHeight = 123
    object ListBox1: TListBox
      Left = 1
      Top = 1
      Width = 240
      Height = 184
      Align = alClient
      ItemHeight = 15
      TabOrder = 0
      OnDblClick = ListBox1DblClick
      ExplicitWidth = 92
      ExplicitHeight = 97
    end
    object ListBox3: TListBox
      Left = 241
      Top = 1
      Width = 239
      Height = 184
      Align = alClient
      ItemHeight = 15
      TabOrder = 1
      OnDblClick = ListBox3DblClick
      ExplicitLeft = 93
      ExplicitWidth = 91
      ExplicitHeight = 97
    end
    object ListBox2: TListBox
      Left = 1
      Top = 185
      Width = 240
      Height = 184
      Align = alClient
      ItemHeight = 15
      TabOrder = 2
      OnDblClick = ListBox2DblClick
      ExplicitTop = 37
      ExplicitWidth = 92
      ExplicitHeight = 35
    end
    object ListBox4: TListBox
      Left = 241
      Top = 185
      Width = 239
      Height = 184
      Align = alClient
      ItemHeight = 15
      TabOrder = 3
      OnDblClick = ListBox4DblClick
      ExplicitLeft = 93
      ExplicitTop = 37
      ExplicitWidth = 91
      ExplicitHeight = 35
    end
    object GroupBox6: TGroupBox
      Left = 1
      Top = 369
      Width = 240
      Height = 50
      Align = alClient
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
      TabOrder = 4
      object NumberBox2: TNumberBox
        Left = 2
        Top = 17
        Width = 292
        Height = 31
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 88
        ExplicitHeight = 23
      end
    end
    object GroupBox10: TGroupBox
      Left = 241
      Top = 369
      Width = 239
      Height = 50
      Align = alClient
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      TabOrder = 5
      object NumberBox1: TNumberBox
        Left = 2
        Top = 17
        Width = 293
        Height = 31
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 87
        ExplicitHeight = 23
      end
    end
  end
  object FDQuery2: TFDQuery
    Connection = MainForm.FDConnection1
    SQL.Strings = (
      'select * from course_work.client;')
    Left = 736
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = FDQuery3
    Left = 664
    Top = 480
  end
  object FDQuery1: TFDQuery
    Connection = MainForm.FDConnection1
    SQL.Strings = (
      'use course_work; SELECT '
      '    *'
      'FROM'
      '    course_work.order AS o'
      '        JOIN'
      '    course_work.car AS c ON o.car = c.id'
      '        JOIN'
      '    course_work.client AS cl ON o.client = cl.id'
      '        JOIN'
      '    course_work.engine AS e ON c.Engine_ID = e.id'
      '        JOIN'
      '    course_work.model AS m ON c.model_id = m.id'
      '        JOIN'
      '    course_work.brand AS b ON m.Brand = b.id;'
      '')
    Left = 417
    Top = 476
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'orderDataSet'
    CloseDataSource = False
    DataSet = FDQuery1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 673
    Top = 372
  end
  object frxReport2: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45022.457724629600000000
    ReportOptions.LastChange = 45022.667797604200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'begin                                                           ' +
        '                                                   '
      'end.          ')
    Left = 553
    Top = 484
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'orderDataSet'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'servicesDataSet'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'consumablesDataSet'
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1050#1074#1080#1090#1072#1085#1094#1080#1103' '#1082' '#1079#1072#1082#1072#1079'-'#1085#1072#1088#1103#1076#1091' '#8470'[frxDBDataset1."id"] '#1086#1090' [frxDBDataset1' +
              '."dateregistration"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = -18.897650000000000000
          Height = 1046.929810000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1042#1080#1076#1099' '#1088#1072#1089#1093#1086#1076#1085#1099#1093' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1087#1086' '#1079#1072#1082#1072#1079'-'#1085#1072#1088#1103#1076#1091':')
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = -18.897650000000000000
          Height = 1046.929810000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1042#1080#1076#1099' '#1088#1072#1089#1093#1086#1076#1085#1099#1093' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1087#1086' '#1079#1072#1082#1072#1079'-'#1085#1072#1088#1103#1076#1091':')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'servicesDataSet'
        RowCount = 0
        object servicesDataSetDescription: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 309.921460000000000000
          Height = 22.677180000000000000
          DataField = 'Description'
          DataSet = frxDBDataset2
          DataSetName = 'servicesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[servicesDataSet."Description"]')
          ParentFont = False
        end
        object servicesDataSetPrice: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          DataField = 'Price'
          DataSet = frxDBDataset2
          DataSetName = 'servicesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[servicesDataSet."Price"]')
          ParentFont = False
        end
        object servicesDataSetcount: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          DataField = 'count'
          DataSet = frxDBDataset2
          DataSetName = 'servicesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[servicesDataSet."count"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset3
        DataSetName = 'consumablesDataSet'
        RowCount = 0
        object consumablesDataSetDescription: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 309.921460000000000000
          Height = 22.677180000000000000
          DataField = 'Description'
          DataSet = frxDBDataset3
          DataSetName = 'consumablesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[consumablesDataSet."Description"]')
          ParentFont = False
        end
        object consumablesDataSetPrice: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          DataField = 'Price'
          DataSet = frxDBDataset3
          DataSetName = 'consumablesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[consumablesDataSet."Price"]')
          ParentFont = False
        end
        object consumablesDataSetcount: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          DataField = 'count'
          DataSet = frxDBDataset3
          DataSetName = 'consumablesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[consumablesDataSet."count"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Memo8: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1042#1080#1076#1099' '#1088#1072#1089#1093#1086#1076#1085#1099#1093' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1087#1086' '#1079#1072#1082#1072#1079'-'#1085#1072#1088#1103#1076#1091':')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 306.141930000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object TableObject1: TfrxTableObject
          Align = baClient
          AllowVectorExport = True
          object TableColumn1: TfrxTableColumn
            Width = 143.545798144000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 143.927507424000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn3: TfrxTableColumn
            Width = 143.545798144000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 143.545798144000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 143.545798144000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 96.782388433238300000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                
                  #1047#1072#1082#1072#1079#1095#1080#1082': [frxDBDataset1."Surname"] [frxDBDataset1."Name"] [frxD' +
                  'BDataset1."Patronimic"]')
              ParentFont = False
              ColSpan = 2
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              ColSpan = 3
              object Memo2: TfrxMemoView
                Align = baClient
                AllowVectorExport = True
                Width = 430.637394432000000000
                Height = 96.782388433238300000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
                Memo.UTF8W = (
                  #1040#1076#1088#1077#1089': [frxDBDataset1."Address"]'
                  #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072': [frxDBDataset1."Phone"]')
                ParentFont = False
              end
            end
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
          end
          object TableRow2: TfrxTableRow
            Height = 112.577153133523000000
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                
                  #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082': [frxDBDataset1."Surname"] [frxDBDataset1."Name"] [fr' +
                  'xDBDataset1."Patronimic"]')
              ColSpan = 5
            end
            object TableCell7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
          end
          object TableRow3: TfrxTableRow
            Height = 96.782388433238300000
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              ColSpan = 5
              object Memo4: TfrxMemoView
                Align = baClient
                AllowVectorExport = True
                Width = 718.110700000000000000
                Height = 96.782388433238300000
                Frame.Typ = []
                Memo.UTF8W = (
                  
                    #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100': [frxDBDataset1."VIN"] [frxDBDataset1."Mileage"] [frx' +
                    'DBDataset1."Color"] [frxDBDataset1."Body"] [frxDBDataset1."State' +
                    'Number"] [frxDBDataset1."Equipment"]'
                  
                    #1044#1074#1080#1075#1072#1090#1077#1083#1100': [frxDBDataset1."Power"] [frxDBDataset1."Volume"] [frx' +
                    'DBDataset1."Fuel"]'
                  #1041#1088#1077#1085#1076': [frxDBDataset1."Brand_1"]'
                  #1052#1086#1076#1077#1083#1100': [frxDBDataset1."Model"]')
                Formats = <
                  item
                  end
                  item
                  end
                  item
                  end
                  item
                  end
                  item
                  end
                  item
                  end
                  item
                  end
                  item
                  end
                  item
                  end
                  item
                  end
                  item
                  end>
              end
            end
            object TableCell12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
          end
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Memo7: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1059#1089#1083#1091#1075#1080' '#1087#1086' '#1079#1072#1082#1072#1079'-'#1085#1072#1088#1103#1076#1091':')
          ParentFont = False
        end
      end
    end
  end
  object FDQuery3: TFDQuery
    Connection = MainForm.FDConnection1
    SQL.Strings = (
      'SELECT * FROM course_work.service;')
    Left = 417
    Top = 268
    object FDQuery3id: TFDAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object FDQuery3description: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 100
    end
    object FDQuery3price: TLongWordField
      FieldName = 'price'
      Required = True
    end
    object FDQuery3count: TIntegerField
      FieldName = 'count'
      Required = True
    end
  end
  object FDQuery4: TFDQuery
    Active = True
    Connection = MainForm.FDConnection1
    SQL.Strings = (
      'SELECT * FROM course_work.consumables;')
    Left = 417
    Top = 172
    object FDQuery4id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery4description: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'description'
      Origin = 'description'
      Size = 100
    end
    object FDQuery4price: TLongWordField
      FieldName = 'price'
      Origin = 'price'
      Required = True
    end
    object FDQuery4count: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'count'
      Origin = 'count'
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'servicesDataSet'
    CloseDataSource = False
    DataSet = FDQuery3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 785
    Top = 388
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'consumablesDataSet'
    CloseDataSource = False
    DataSet = FDQuery4
    BCDToCurrency = False
    DataSetOptions = []
    Left = 801
    Top = 460
  end
end
