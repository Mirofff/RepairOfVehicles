object FrameStaticReport: TFrameStaticReport
  Left = 0
  Top = 0
  Width = 544
  Height = 333
  TabOrder = 0
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 544
    Height = 267
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 544
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 640
  end
  object Button1: TButton
    Left = 0
    Top = 308
    Width = 544
    Height = 25
    Align = alBottom
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090
    TabOrder = 2
    OnClick = Button1Click
    ExplicitTop = 455
    ExplicitWidth = 640
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = MainForm.FDConnection1
    SQL.Strings = (
      'use course_work;'
      'SELECT '
      '    brand.brand '#1052#1072#1088#1082#1072', COUNT(brand.brand) '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1088#1072#1073#1086#1090
      'FROM'
      '    `order` AS o'
      '        JOIN'
      '    car AS c ON o.car = c.id'
      '        JOIN'
      '    model AS m ON c.model_id = m.id'
      '        JOIN'
      '    brand ON m.brand = brand.id'
      'GROUP BY brand.brand;')
    Left = 48
    Top = 376
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 304
    Top = 224
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
    ReportOptions.LastChange = 45041.433282685200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '  '
      'end.')
    Left = 512
    Top = 360
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrameDyncamicReport.frxDBDataset1
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
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1052#1072#1088#1082#1072' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 22.677180000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1073#1086#1090)
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
        Height = 22.677155590000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo3: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 343.937230000000000000
          Width = 374.173470000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1088#1072#1073#1086#1090'"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 343.937010310000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."'#1052#1072#1088#1082#1072'"]')
          ParentFont = False
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
    Left = 392
    Top = 360
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDQuery1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 368
  end
end
