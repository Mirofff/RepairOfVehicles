object DataModuleDB: TDataModuleDB
  Height = 669
  Width = 1022
  object FDTableServices: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.services'
    Left = 288
    Top = 24
    object FDTableServicesprice: TFloatField
      DisplayWidth = 10
      FieldName = 'price'
      Origin = 'price'
      Required = True
      currency = True
    end
    object FDTableServicesuuid: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 36
    end
    object FDTableServicesname: TWideStringField
      FieldName = 'name'
      Origin = '`name`'
      Required = True
      Size = 255
    end
  end
  object frxDBDatasetConsumables: TfrxDBDataset
    UserName = 'consumablesDataSet'
    CloseDataSource = False
    DataSet = FDTableUsedConsumables
    BCDToCurrency = True
    DataSetOptions = []
    Left = 648
    Top = 460
    FieldDefs = <
      item
        FieldName = 'consumable_name'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'consumable_price'
      end
      item
        FieldName = 'uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'statement_uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'consumable_uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'quantity'
      end
      item
        FieldName = 'consumable_print'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'full_price'
      end
      item
        FieldName = 'created_at'
      end
      item
        FieldName = 'updated_at'
      end>
  end
  object frxDBDatasetServices: TfrxDBDataset
    UserName = 'servicesDataSet'
    CloseDataSource = False
    DataSet = FDTableUsedServices
    BCDToCurrency = True
    DataSetOptions = []
    Left = 792
    Top = 532
    FieldDefs = <
      item
        FieldName = 'services_name'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'service_price'
      end
      item
        FieldName = 'uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'statement_uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'service_uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'quantity'
      end
      item
        FieldName = 'full_price'
      end
      item
        FieldName = 'created_at'
      end
      item
        FieldName = 'updated_at'
      end>
  end
  object frxDBDatasetVehicles: TfrxDBDataset
    UserName = 'vehiclesDataSet'
    CloseDataSource = False
    DataSet = FDTableVehicles
    BCDToCurrency = False
    DataSetOptions = []
    Left = 648
    Top = 536
    FieldDefs = <
      item
        FieldName = 'created_at'
        FieldType = fftDateTime
      end
      item
        FieldName = 'updated_at'
        FieldType = fftDateTime
      end
      item
        FieldName = 'model_id'
      end
      item
        FieldName = 'is_active'
        FieldType = fftBoolean
      end
      item
        FieldName = 'mileage'
      end
      item
        FieldName = 'mark_id'
      end
      item
        FieldName = 'model'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'mark'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'registration_plate'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'workshop_uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'vin'
        FieldType = fftString
        Size = 255
      end
      item
        FieldName = 'engine'
        FieldType = fftString
        Size = 255
      end
      item
        FieldName = 'tech_passport'
      end
      item
        FieldName = 'color'
        FieldType = fftString
        Size = 255
      end
      item
        FieldName = 'vehicle_print'
        FieldType = fftString
        Size = 20
      end>
  end
  object frxReportStatement: TfrxReport
    Version = '2024.2.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45022.457724629600000000
    ReportOptions.LastChange = 45421.813624722200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'begin                                                           ' +
        '                                                   '
      'end.          ')
    Left = 720
    Top = 408
    Datasets = <
      item
        DataSet = frxDBDatasetConsumables
        DataSetName = 'consumablesDataSet'
      end
      item
        DataSet = frxDBDatasetServices
        DataSetName = 'servicesDataSet'
      end
      item
        DataSet = frxDBDatasetVehicles
        DataSetName = 'vehiclesDataSet'
      end
      item
        DataSet = frxDBDatasetStatements
        DataSetName = 'statementsDataSet'
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
          Width = 718.110717773437500000
          Height = 56.692951202392580000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1047#1072#1082#1072#1079'-'#1085#1072#1088#1103#1076'  - '#8470' [statementsDataSet."uuid"] '#1086#1090' [statementsDataSe' +
              't."updated_at"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 718.110717773437500000
          Top = -18.897650000000000000
          Height = 1046.929810000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1042#1080#1076#1099' '#1088#1072#1089#1093#1086#1076#1085#1099#1093' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1087#1086' '#1079#1072#1082#1072#1079'-'#1085#1072#1088#1103#1076#1091':')
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 718.110717773437500000
          Top = -18.897650000000000000
          Height = 1046.929810000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
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
        DataSet = frxDBDatasetServices
        DataSetName = 'servicesDataSet'
        RowCount = 0
        object servicesDataSetDescription: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Width = 279.685220000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetServices
          DataSetName = 'servicesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[servicesDataSet."services_name"]')
          ParentFont = False
        end
        object servicesDataSetPrice: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 279.685220000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetServices
          DataSetName = 'servicesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[servicesDataSet."service_price"]')
          ParentFont = False
        end
        object servicesDataSetcount: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 75.590617770000000000
          Height = 22.677179340000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetServices
          DataSetName = 'servicesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[servicesDataSet."quantity"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 506.457037770000000000
          Width = 211.653697770000000000
          Height = 22.677179340000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetServices
          DataSetName = 'servicesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[servicesDataSet."full_price"] '#1088'.')
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
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetConsumables
        DataSetName = 'consumablesDataSet'
        RowCount = 0
        object consumablesDataSetDescription: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Width = 279.685220000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetConsumables
          DataSetName = 'consumablesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[consumablesDataSet."consumable_name"]')
          ParentFont = False
        end
        object consumablesDataSetPrice: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 279.685220000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetConsumables
          DataSetName = 'consumablesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[consumablesDataSet."consumable_price"]')
          ParentFont = False
        end
        object consumablesDataSetcount: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetConsumables
          DataSetName = 'consumablesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[consumablesDataSet."quantity"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 506.457020000000000000
          Width = 211.653697770000000000
          Height = 22.677179340000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetServices
          DataSetName = 'servicesDataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[consumablesDataSet."full_price"] '#1088'.')
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
        Height = 226.771800000000000000
        Top = 461.102660000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object TableObject1: TfrxTableObject
          Align = baClient
          AllowVectorExport = True
          object TableColumn1: TfrxTableColumn
            Width = 146.145801698688000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 133.527510978688000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn3: TfrxTableColumn
            Width = 146.145801698688000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 146.145801698688000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 146.145801698688000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 52.325680036428500000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                
                  '[statementsDataSet."client_last_name"] [statementsDataSet."clien' +
                  't_first_name"] [statementsDataSet."client_second_name"]')
              ParentFont = False
              ColSpan = 2
              Formats = <
                item
                end
                item
                end
                item
                end>
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              ColSpan = 3
            end
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
          end
          object TableRow2: TfrxTableRow
            Height = 57.120444736713200000
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                
                  #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082': [statementsDataSet."client_last_name"] [statementsDa' +
                  'taSet."client_first_name"] [statementsDataSet."client_second_nam' +
                  'e"]')
              ColSpan = 5
              Formats = <
                item
                end
                item
                end
                item
                end>
            end
            object TableCell7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
          end
          object TableRow3: TfrxTableRow
            Height = 117.325680036429000000
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              ColSpan = 5
              object Memo4: TfrxMemoView
                Align = baClient
                AllowVectorExport = True
                Width = 718.110717773437500000
                Height = 117.325683593750000000
                ContentScaleOptions.Constraints.MaxIterationValue = 0
                ContentScaleOptions.Constraints.MinIterationValue = 0
                Frame.Typ = []
                Memo.UTF8W = (
                  
                    #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100': [vehiclesDataSet."mark"] [vehiclesDataSet."model"] [' +
                    'vehiclesDataSet."color"], '#1087#1088#1086#1073#1077#1075' [vehiclesDataSet."mileage"] '#1082#1084'.'
                  #1043#1086#1089'. '#1053#1086#1084#1077#1088': [vehiclesDataSet."registration_plate"]'
                  #1058#1077#1093'. '#1087#1072#1089#1089#1087#1086#1088#1090': [vehiclesDataSet."tech_passport"]'
                  'VIN: [vehiclesDataSet."vin"]'
                  #1044#1074#1080#1075#1072#1090#1077#1083#1100': [vehiclesDataSet."engine"]')
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
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              ContentScaleOptions.Constraints.MaxIterationValue = 0
              ContentScaleOptions.Constraints.MinIterationValue = 0
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
          end
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 415.748300000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 396.850632233437500000
          Width = 109.606387770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1060#1080#1085#1072#1083#1100#1085#1072#1103' '#1094#1077#1085#1072':')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 506.457020003437500000
          Width = 211.653697770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[SUM(<consumablesDataSet."consumable_price"> * <consumablesDataS' +
              'et."quantity">)] '#1088'.')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        Condition = 'consumablesDataSet."statement_uuid"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110717770000000000
          Height = 26.456708240000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
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
        object Memo15: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 26.456707424628910000
          Width = 279.685237770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1053#1072#1079#1074#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 26.456707424628910000
          Width = 151.181217770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
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
        object Memo17: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 26.456707424628910000
          Width = 75.590617770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
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
        object Memo18: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 26.456707424628910000
          Width = 211.653697770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1054#1073#1097#1072#1103' '#1094#1077#1085#1072)
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        Condition = 'servicesDataSet."statement_uuid"'
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110717770000000000
          Height = 26.456710820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
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
        object Memo11: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 26.456707424628910000
          Width = 279.685237770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1053#1072#1079#1074#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 26.456707424628910000
          Width = 151.181217770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
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
        object Memo13: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 26.456707424628910000
          Width = 75.590617770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
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
        object Memo14: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 26.456707424628910000
          Width = 211.653697770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1054#1073#1097#1072#1103' '#1094#1077#1085#1072)
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 396.850632233437500000
          Width = 109.606387770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1060#1080#1085#1072#1083#1100#1085#1072#1103' '#1094#1077#1085#1072':')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 506.457020003437500000
          Width = 211.653697770000000000
          Height = 22.677180820000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[SUM(<servicesDataSet."service_price"> * <servicesDataSet."quant' +
              'ity">)] '#1088'.')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetStatements: TfrxDBDataset
    UserName = 'statementsDataSet'
    CloseDataSource = False
    DataSet = FDTableStatements
    BCDToCurrency = False
    DataSetOptions = []
    Left = 792
    Top = 460
    FieldDefs = <
      item
        FieldName = 'client_first_name'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'client_last_name'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'client_second_name'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'created_at'
        FieldType = fftDateTime
      end
      item
        FieldName = 'updated_at'
        FieldType = fftDateTime
      end
      item
        FieldName = 'status'
        FieldType = fftString
        Size = 12
      end
      item
        FieldName = 'comment'
        FieldType = fftString
        Size = 4096
      end
      item
        FieldName = 'client_uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'vehicle_uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'is_active'
        FieldType = fftBoolean
      end
      item
        FieldName = 'registration_date'
        FieldType = fftDateTime
      end
      item
        FieldName = 'execution_date'
        FieldType = fftDateTime
      end
      item
        FieldName = 'pickup_time'
        FieldType = fftDateTime
      end
      item
        FieldName = 'client_name'
        FieldType = fftString
        Size = 20
      end>
  end
  object FDTableVehicles: TFDTable
    Active = True
    OnCalcFields = FDTableVehiclesCalcFields
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.vehicles'
    Left = 432
    Top = 32
    object FDTableVehiclescreated_at: TDateTimeField
      FieldName = 'created_at'
      Origin = 'created_at'
      Required = True
    end
    object FDTableVehiclesupdated_at: TDateTimeField
      FieldName = 'updated_at'
      Origin = 'updated_at'
      Required = True
    end
    object FDTableVehiclesmodel_id: TIntegerField
      FieldName = 'model_id'
      Origin = 'model_id'
      Required = True
    end
    object FDTableVehiclesis_active: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'is_active'
      Origin = 'is_active'
    end
    object FDTableVehiclesmileage: TIntegerField
      FieldName = 'mileage'
      Origin = 'mileage'
      Required = True
    end
    object FDTableVehiclesmark_id: TIntegerField
      FieldKind = fkLookup
      FieldName = 'mark_id'
      LookupDataSet = FDTableModels
      LookupKeyFields = 'id'
      LookupResultField = 'mark_id'
      KeyFields = 'model_id'
      Lookup = True
    end
    object FDTableVehiclesmodel: TStringField
      FieldKind = fkLookup
      FieldName = 'model'
      LookupDataSet = FDTableModels
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'model_id'
      Lookup = True
    end
    object FDTableVehiclesmark: TStringField
      FieldKind = fkLookup
      FieldName = 'mark'
      LookupDataSet = FDTableMarks
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'mark_id'
      Lookup = True
    end
    object FDTableVehiclesuuid: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 36
    end
    object FDTableVehiclesregistration_plate: TWideStringField
      FieldName = 'registration_plate'
      Origin = 'registration_plate'
      Required = True
    end
    object FDTableVehiclesworkshop_uuid: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'workshop_uuid'
      Origin = 'workshop_uuid'
      FixedChar = True
      Size = 36
    end
    object FDTableVehiclesvin: TWideStringField
      FieldName = 'vin'
      Origin = 'vin'
      Required = True
      Size = 255
    end
    object FDTableVehiclesengine: TWideStringField
      FieldName = 'engine'
      Origin = '`engine`'
      Required = True
      Size = 255
    end
    object FDTableVehiclestech_passport: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tech_passport'
      Origin = 'tech_passport'
      BlobType = ftWideMemo
    end
    object FDTableVehiclescolor: TWideStringField
      FieldName = 'color'
      Origin = 'color'
      Required = True
      Size = 255
    end
    object FDTableVehiclesvehicle_print: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vehicle_print'
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    Left = 256
    Top = 440
  end
  object FDTableStuff: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.stuff'
    Left = 440
    Top = 476
    object FDTableStuffworkshop_uuid: TWideStringField
      FieldName = 'workshop_uuid'
      Origin = 'workshop_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableStuffrole: TWideStringField
      FieldName = 'role'
      Origin = 'role'
      Required = True
      FixedChar = True
      Size = 8
    end
    object FDTableStufffirst_name: TWideStringField
      FieldName = 'first_name'
      Origin = 'first_name'
      Required = True
      Size = 45
    end
    object FDTableStuffsecond_name: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'second_name'
      Origin = 'second_name'
      Size = 45
    end
    object FDTableStufflast_name: TWideStringField
      FieldName = 'last_name'
      Origin = 'last_name'
      Required = True
      Size = 45
    end
    object FDTableStuffis_active: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'is_active'
      Origin = 'is_active'
    end
    object FDTableStuffemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 255
    end
    object FDTableStuffpassword: TWideStringField
      FieldName = 'password'
      Origin = '`password`'
      Required = True
      Size = 255
    end
    object FDTableStuffremember_token: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'remember_token'
      Origin = 'remember_token'
      Size = 100
    end
    object FDTableStuffcreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object FDTableStuffupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
    object FDTableStuffuuid: TWideStringField
      FieldName = 'uuid'
      Origin = 'uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
  end
  object FDTableMarks: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.marks'
    Left = 672
    Top = 278
    object FDTableMarksid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = False
    end
    object FDTableMarksname: TWideStringField
      FieldName = 'name'
      Origin = '`name`'
      Required = True
      Size = 45
    end
  end
  object FDTableModels: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.models'
    Left = 584
    Top = 280
    object FDTableModelsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = False
    end
    object FDTableModelsname: TWideStringField
      FieldName = 'name'
      Origin = '`name`'
      Required = True
      Size = 45
    end
    object FDTableModelstype: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'type'
      Origin = '`type`'
      FixedChar = True
      Size = 4
    end
    object FDTableModelsyear: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'year'
      Origin = '`year`'
    end
    object FDTableModelsmark_id: TIntegerField
      FieldName = 'mark_id'
      Origin = 'mark_id'
      Required = True
    end
  end
  object FDTableConsumables: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.consumables'
    Left = 120
    Top = 22
    object FDTableConsumablesprice: TFloatField
      FieldName = 'price'
      Origin = 'price'
      Required = True
      currency = True
    end
    object FDTableConsumablesuuid: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 36
    end
    object FDTableConsumablesname: TWideStringField
      FieldName = 'name'
      Origin = '`name`'
      Required = True
      Size = 255
    end
  end
  object FDTableUsedServices: TFDTable
    Active = True
    OnCalcFields = FDTableUsedServicesCalcFields
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.used_services'
    Left = 288
    Top = 86
    object FDTableUsedServicesservices_name: TStringField
      FieldKind = fkLookup
      FieldName = 'services_name'
      LookupDataSet = FDTableServices
      LookupKeyFields = 'uuid'
      LookupResultField = 'name'
      KeyFields = 'service_uuid'
      Lookup = True
    end
    object FDTableUsedServicesservice_price: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'service_price'
      LookupDataSet = FDTableServices
      LookupKeyFields = 'uuid'
      LookupResultField = 'price'
      KeyFields = 'service_uuid'
      Lookup = True
    end
    object FDTableUsedServicesuuid: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 36
    end
    object FDTableUsedServicesstatement_uuid: TWideStringField
      FieldName = 'statement_uuid'
      Origin = 'statement_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableUsedServicesservice_uuid: TWideStringField
      FieldName = 'service_uuid'
      Origin = 'service_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableUsedServicesquantity: TIntegerField
      FieldName = 'quantity'
      Origin = 'quantity'
      Required = True
    end
    object FDTableUsedServicesfull_price: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'full_price'
    end
    object FDTableUsedServicescreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object FDTableUsedServicesupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
  end
  object FDTableUsedConsumables: TFDTable
    Active = True
    OnCalcFields = FDTableUsedConsumablesCalcFields
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.used_consumables'
    Left = 120
    Top = 86
    object FDTableUsedConsumablesconsumable_name: TStringField
      FieldKind = fkLookup
      FieldName = 'consumable_name'
      LookupDataSet = FDTableConsumables
      LookupKeyFields = 'uuid'
      LookupResultField = 'name'
      KeyFields = 'consumable_uuid'
      Lookup = True
    end
    object FDTableUsedConsumablesconsumable_price: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'consumable_price'
      LookupDataSet = FDTableConsumables
      LookupKeyFields = 'uuid'
      LookupResultField = 'price'
      KeyFields = 'consumable_uuid'
      Lookup = True
    end
    object FDTableUsedConsumablesuuid: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 36
    end
    object FDTableUsedConsumablesstatement_uuid: TWideStringField
      FieldName = 'statement_uuid'
      Origin = 'statement_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableUsedConsumablesconsumable_uuid: TWideStringField
      FieldName = 'consumable_uuid'
      Origin = 'consumable_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableUsedConsumablesquantity: TIntegerField
      FieldName = 'quantity'
      Origin = 'quantity'
      Required = True
    end
    object FDTableUsedConsumablesconsumable_print: TStringField
      DefaultExpression = 'CONCAT_WS('#39' '#39', consumable_name, consumable_price)'
      FieldKind = fkCalculated
      FieldName = 'consumable_print'
      Calculated = True
    end
    object FDTableUsedConsumablesfull_price: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'full_price'
    end
    object FDTableUsedConsumablescreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object FDTableUsedConsumablesupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
  end
  object FDTableStatements: TFDTable
    Active = True
    AfterScroll = FDTableStatementsAfterScroll
    OnCalcFields = FDTableStatementsCalcFields
    IndexFieldNames = 'uuid'
    AfterGetRecord = FDTableStatementsAfterGetRecord
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.statements'
    Left = 368
    Top = 304
    object FDTableStatementsclient_first_name: TStringField
      FieldKind = fkLookup
      FieldName = 'client_first_name'
      LookupDataSet = FDTableClients
      LookupKeyFields = 'uuid'
      LookupResultField = 'first_name'
      KeyFields = 'client_uuid'
      Lookup = True
    end
    object FDTableStatementsclient_last_name: TStringField
      FieldKind = fkLookup
      FieldName = 'client_last_name'
      LookupDataSet = FDTableClients
      LookupKeyFields = 'uuid'
      LookupResultField = 'last_name'
      KeyFields = 'client_uuid'
      Lookup = True
    end
    object FDTableStatementsclient_second_name: TStringField
      FieldKind = fkLookup
      FieldName = 'client_second_name'
      LookupDataSet = FDTableClients
      LookupKeyFields = 'uuid'
      LookupResultField = 'second_name'
      KeyFields = 'client_uuid'
      Lookup = True
    end
    object FDTableStatementsuuid: TWideStringField
      FieldName = 'uuid'
      FixedChar = True
      Size = 36
    end
    object FDTableStatementscreated_at: TDateTimeField
      FieldName = 'created_at'
      Required = True
    end
    object FDTableStatementsupdated_at: TDateTimeField
      FieldName = 'updated_at'
      Required = True
    end
    object FDTableStatementsstatus: TWideStringField
      FieldName = 'status'
      FixedChar = True
      Size = 12
    end
    object FDTableStatementscomment: TWideStringField
      FieldName = 'comment'
      Required = True
      Size = 4096
    end
    object FDTableStatementsclient_uuid: TWideStringField
      FieldName = 'client_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableStatementsvehicle_uuid: TWideStringField
      FieldName = 'vehicle_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableStatementsis_active: TBooleanField
      FieldName = 'is_active'
    end
    object FDTableStatementsregistration_date: TDateField
      FieldName = 'registration_date'
    end
    object FDTableStatementsexecution_date: TDateField
      FieldName = 'execution_date'
    end
    object FDTableStatementspickup_time: TDateTimeField
      FieldName = 'pickup_time'
      Required = True
    end
    object FDTableStatementsclient_name: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'client_name'
    end
    object FDTableStatementsvehicle_registration_plate: TStringField
      FieldKind = fkLookup
      FieldName = 'vehicle_registration_plate'
      LookupDataSet = FDTableVehicles
      LookupKeyFields = 'uuid'
      LookupResultField = 'registration_plate'
      KeyFields = 'vehicle_uuid'
      Lookup = True
    end
    object FDTableStatementsvehicle_print: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vehicle_print'
    end
    object FDTableStatementsvehicle_mark: TStringField
      FieldKind = fkLookup
      FieldName = 'vehicle_mark'
      LookupDataSet = FDTableVehicles
      LookupKeyFields = 'uuid'
      LookupResultField = 'mark'
      KeyFields = 'vehicle_uuid'
      LookupCache = True
      Lookup = True
    end
    object FDTableStatementsvehicle_model: TStringField
      FieldKind = fkLookup
      FieldName = 'vehicle_model'
      LookupDataSet = FDTableVehicles
      LookupKeyFields = 'uuid'
      LookupResultField = 'model'
      KeyFields = 'vehicle_uuid'
      LookupCache = True
      Lookup = True
    end
  end
  object FDConnectionMain: TFDConnection
    Params.Strings = (
      'ConnectionDef=CarWorkshop'
      'CharacterSet=utf8')
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 504
  end
  object FDTableClients: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.clients'
    Left = 136
    Top = 294
    object FDTableClientsuuid: TWideStringField
      FieldName = 'uuid'
      Origin = 'uuid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableClientsfirst_name: TWideStringField
      FieldName = 'first_name'
      Origin = 'first_name'
      Required = True
      Size = 45
    end
    object FDTableClientssecond_name: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'second_name'
      Origin = 'second_name'
      Size = 45
    end
    object FDTableClientslast_name: TWideStringField
      FieldName = 'last_name'
      Origin = 'last_name'
      Required = True
      Size = 45
    end
    object FDTableClientsis_active: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'is_active'
      Origin = 'is_active'
    end
    object FDTableClientsemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 255
    end
    object FDTableClientspassword: TWideStringField
      FieldName = 'password'
      Origin = '`password`'
      Required = True
      Size = 255
    end
    object FDTableClientsremember_token: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'remember_token'
      Origin = 'remember_token'
      Size = 100
    end
    object FDTableClientscreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object FDTableClientsupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
  end
  object DataSourceServices: TDataSource
    DataSet = FDTableServices
    Left = 288
    Top = 152
  end
  object DataSourceConsumables: TDataSource
    DataSet = FDTableConsumables
    Left = 120
    Top = 152
  end
  object DataSourceUsedConsumables: TDataSource
    DataSet = FDTableUsedConsumables
    Left = 120
    Top = 208
  end
  object DataSourceUsedServices: TDataSource
    DataSet = FDTableUsedServices
    Left = 288
    Top = 208
  end
  object DataSourceVehicles: TDataSource
    DataSet = FDTableVehicles
    Left = 432
    Top = 96
  end
  object DataSourceClients: TDataSource
    DataSet = FDTableClients
    Left = 136
    Top = 352
  end
  object DataSourceStatements: TDataSource
    DataSet = FDTableStatements
    Left = 368
    Top = 360
  end
  object FDQueryReportUsedServices: TFDQuery
    Active = True
    AggregatesActive = True
    Connection = FDConnectionMain
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select'
      
        #9'CONCAT_WS('#39' '#39', cl.last_name, cl.first_name, cl.second_name, ma.' +
        'name, m.name, v.registration_plate) "statement_info",'
      #9'se.name "'#1054#1087#1077#1088#1072#1094#1080#1103'",'
      #9'se.price "'#1062#1077#1085#1072'",'
      '        s.execution_date "statement_execution_date",'
      '        s.`uuid` "statement_uuid",'
      #9'sum(se.price) OVER (PARTITION BY se.`uuid`) "'#1054#1073#1097#1072#1103' '#1094#1077#1085#1072'",'
      
        #9'count(se.`uuid`) OVER (PARTITION BY se.`uuid`)  "'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077 +
        #1088#1072#1094#1080#1081'"'
      'from'
      #9'used_services u'
      'right outer join services se on'
      #9'u.service_uuid = se.uuid'
      'right outer join statements s on'
      #9'u.statement_uuid = s.uuid'
      'right outer join clients cl on'
      #9's.client_uuid = cl.`uuid`'
      'right outer join vehicles v on'
      #9's.vehicle_uuid = v.`uuid`'
      'right outer join models m on'
      #9'v.model_id = m.id'
      'right outer join marks ma on'
      #9'm.mark_id = ma.id'
      'where'
      
        #9's.execution_date between :start_date and :end_date order by s.e' +
        'xecution_date;'
      '')
    Left = 782
    Top = 138
    ParamData = <
      item
        Name = 'START_DATE'
        DataType = ftDateTime
        FDDataType = dtDate
        ParamType = ptInput
        Value = 36526d
      end
      item
        Name = 'END_DATE'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 45658d
      end>
    object FDQueryReportUsedServicesstatement_info: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'statement_info'
      Origin = 'statement_info'
      Size = 250
    end
    object FDQueryReportUsedServicesОперация: TWideStringField
      FieldName = #1054#1087#1077#1088#1072#1094#1080#1103
      Origin = '`'#1054#1087#1077#1088#1072#1094#1080#1103'`'
      Size = 255
    end
    object FDQueryReportUsedServicesЦена: TFloatField
      FieldName = #1062#1077#1085#1072
      Origin = '`'#1062#1077#1085#1072'`'
    end
    object FDQueryReportUsedServicesstatement_uuid: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'statement_uuid'
      Origin = 'statement_uuid'
      FixedChar = True
      Size = 36
    end
    object FDQueryReportUsedServicesОбщаяцена: TFloatField
      AutoGenerateValue = arDefault
      FieldName = #1054#1073#1097#1072#1103' '#1094#1077#1085#1072
      Origin = '`'#1054#1073#1097#1072#1103' '#1094#1077#1085#1072'`'
    end
    object FDQueryReportUsedServicesКоличествоопераций: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
      Origin = '`'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081'`'
    end
    object FDQueryReportUsedServicesstatement_execution_date: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'statement_execution_date'
      Origin = 'statement_execution_date'
    end
    object FDQueryReportUsedServicesfullSum: TAggregateField
      FieldName = 'fullSum'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum("'#1054#1073#1097#1072#1103' '#1094#1077#1085#1072'")'
    end
  end
  object FDQueryReportUsedConsumables: TFDQuery
    Active = True
    AggregatesActive = True
    Connection = FDConnectionMain
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select'
      
        #9'CONCAT_WS('#39' '#39', cl.last_name, cl.first_name, cl.second_name, ma.' +
        'name, m.name, v.registration_plate) statement_info,'
      #9'co.name "'#1056#1072#1089#1093#1086#1076#1085#1080#1082'",'
      '        s.`uuid` "statement_uuid",'
      '                s.execution_date "statement_execution_date",'
      #9'co.price "'#1062#1077#1085#1072'",'
      #9'sum(co.price) OVER (PARTITION BY co.`uuid`) "'#1054#1073#1097#1072#1103' '#1094#1077#1085#1072'",'
      
        #9'count(co.`uuid`) OVER (PARTITION BY co.`uuid`)  "'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077 +
        #1088#1072#1094#1080#1081'"'
      'from'
      #9'used_consumables u'
      'right outer join consumables co on'
      #9'u.consumable_uuid = co.uuid'
      'right outer join statements s on'
      #9'u.statement_uuid = s.uuid'
      'right outer join clients cl on'
      #9's.client_uuid = cl.`uuid`'
      'right outer join vehicles v on'
      #9's.vehicle_uuid = v.`uuid`'
      'right outer join models m on'
      #9'v.model_id = m.id'
      'right outer join marks ma on'
      #9'm.mark_id = ma.id'
      'where'
      
        #9's.execution_date between :start_date and :end_date order by s.e' +
        'xecution_date;')
    Left = 782
    Top = 202
    ParamData = <
      item
        Name = 'START_DATE'
        DataType = ftDateTime
        FDDataType = dtDate
        ParamType = ptInput
        Value = 36526d
      end
      item
        Name = 'END_DATE'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 45658d
      end>
    object FDQueryReportUsedConsumablesstatement_info: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'statement_info'
      Origin = 'statement_info'
      Size = 250
    end
    object FDQueryReportUsedConsumablesРасходник: TWideStringField
      FieldName = #1056#1072#1089#1093#1086#1076#1085#1080#1082
      Origin = '`'#1056#1072#1089#1093#1086#1076#1085#1080#1082'`'
      Size = 255
    end
    object FDQueryReportUsedConsumablesstatement_uuid: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'statement_uuid'
      Origin = 'statement_uuid'
      FixedChar = True
      Size = 36
    end
    object FDQueryReportUsedConsumablesЦена: TFloatField
      FieldName = #1062#1077#1085#1072
      Origin = '`'#1062#1077#1085#1072'`'
    end
    object FDQueryReportUsedConsumablesОбщаяцена: TFloatField
      AutoGenerateValue = arDefault
      FieldName = #1054#1073#1097#1072#1103' '#1094#1077#1085#1072
      Origin = '`'#1054#1073#1097#1072#1103' '#1094#1077#1085#1072'`'
    end
    object FDQueryReportUsedConsumablesКоличествоопераций: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
      Origin = '`'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081'`'
    end
    object FDQueryReportUsedConsumablesstatement_execution_date: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'statement_execution_date'
      Origin = 'statement_execution_date'
    end
    object FDQueryReportUsedConsumablesfullSum: TAggregateField
      FieldName = 'fullSum'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum("'#1054#1073#1097#1072#1103' '#1094#1077#1085#1072'")'
    end
  end
end
