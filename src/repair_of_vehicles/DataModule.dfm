object DataModule1: TDataModule1
  Height = 611
  Width = 883
  object FDTableServices: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.services'
    Left = 520
    Top = 320
    object FDTableServicesuuid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      FixedChar = True
      Size = 36
    end
    object FDTableServicesname: TStringField
      FieldName = 'name'
      Origin = '`name`'
      Required = True
      Size = 255
    end
    object FDTableServicesprice: TFloatField
      FieldName = 'price'
      Origin = 'price'
      Required = True
    end
  end
  object frxDBDatasetConsumables: TfrxDBDataset
    UserName = 'consumablesDataSet'
    CloseDataSource = False
    DataSet = FDTableUsedConsumables
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 404
    FieldDefs = <
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
        FieldName = 'consumable_name'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'consumable_price'
      end>
  end
  object frxDBDatasetServices: TfrxDBDataset
    UserName = 'servicesDataSet'
    CloseDataSource = False
    DataSet = FDTableUsedServices
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 412
    FieldDefs = <
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
        FieldName = 'services_name'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'service_price'
      end>
  end
  object frxDBDatasetVehicles: TfrxDBDataset
    UserName = 'vehiclesDataSet'
    CloseDataSource = False
    DataSet = FDTableVehicles
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 448
    FieldDefs = <
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
        FieldName = 'workshop_uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'client_uuid'
        FieldType = fftString
        Size = 36
      end
      item
        FieldName = 'is_active'
        FieldType = fftBoolean
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
        FieldType = fftString
      end
      item
        FieldName = 'mileage'
      end
      item
        FieldName = 'color'
        FieldType = fftString
        Size = 255
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
    ReportOptions.LastChange = 45421.813624722220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'begin                                                           ' +
        '                                                   '
      'end.          ')
    Left = 608
    Top = 448
    Datasets = <
      item
        DataSet = frxDBDatasetStatements
        DataSetName = 'statementsDataSet'
      end
      item
        DataSet = frxDBDatasetServices
        DataSetName = 'servicesDataSet'
      end
      item
        DataSet = frxDBDatasetConsumables
        DataSetName = 'consumablesDataSet'
      end
      item
        DataSet = frxDBDatasetVehicles
        DataSetName = 'vehiclesDataSet'
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
          Font.Height = -23
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1047#1072#1082#1072#1079'-'#1085#1072#1088#1103#1076'  - '#8470'[statementsDataSet."uuid"] '#1086#1090' [statementsDataSet' +
              '."updated_at"]')
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
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetServices
        DataSetName = 'servicesDataSet'
        RowCount = 0
        object servicesDataSetDescription: TfrxMemoView
          IndexTag = 1
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
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 241.889920000000000000
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
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 166.299320000000000000
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
            '[servicesDataSet."quantity"]')
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
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetConsumables
        DataSetName = 'consumablesDataSet'
        RowCount = 0
        object consumablesDataSetDescription: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 309.921460000000000000
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
          AllowVectorExport = True
          Left = 279.685220000000000000
          Width = 272.126160000000000000
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
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 166.299320000000000000
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
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Memo8: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 60.472480773925780000
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
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 306.141930000000000000
        Top = 359.055350000000000000
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
              object Memo2: TfrxMemoView
                Align = baClient
                AllowVectorExport = True
                Width = 430.637390136718800000
                Height = 96.782386779785160000
                ContentScaleOptions.Constraints.MaxIterationValue = 0
                ContentScaleOptions.Constraints.MinIterationValue = 0
                AutoWidth = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
                Memo.UTF8W = (
                  '')
                ParentFont = False
                Formats = <
                  item
                  end
                  item
                  end>
              end
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
            Height = 112.577153133523000000
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
            Height = 96.782388433238300000
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
                Height = 96.782386779785160000
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
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Memo7: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 26.456710815429690000
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
      end
    end
  end
  object frxDBDatasetStatements: TfrxDBDataset
    UserName = 'statementsDataSet'
    CloseDataSource = False
    DataSet = FDTableStatements
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 420
    FieldDefs = <
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
        FieldName = 'request_uuid'
        FieldType = fftString
        Size = 36
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
      end>
  end
  object FDTableVehicles: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.vehicles'
    Left = 392
    Top = 448
    object FDTableVehiclesuuid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      FixedChar = True
      Size = 36
    end
    object FDTableVehiclesregistration_plate: TStringField
      FieldName = 'registration_plate'
      Origin = 'registration_plate'
      Required = True
    end
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
    object FDTableVehiclesworkshop_uuid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'workshop_uuid'
      Origin = 'workshop_uuid'
      FixedChar = True
      Size = 36
    end
    object FDTableVehiclesclient_uuid: TStringField
      FieldName = 'client_uuid'
      Origin = 'client_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableVehiclesis_active: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'is_active'
      Origin = 'is_active'
    end
    object FDTableVehiclesvin: TStringField
      FieldName = 'vin'
      Origin = 'vin'
      Required = True
      Size = 255
    end
    object FDTableVehiclesengine: TStringField
      FieldName = 'engine'
      Origin = '`engine`'
      Required = True
      Size = 255
    end
    object FDTableVehiclestech_passport: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tech_passport'
      Origin = 'tech_passport'
      BlobType = ftMemo
    end
    object FDTableVehiclesmileage: TIntegerField
      FieldName = 'mileage'
      Origin = 'mileage'
      Required = True
    end
    object FDTableVehiclescolor: TStringField
      FieldName = 'color'
      Origin = 'color'
      Required = True
      Size = 255
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
  end
  object DataSource1: TDataSource
    DataSet = FDTable2
    Left = 608
    Top = 160
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.stuff'
    Left = 608
    Top = 268
    object FDTable1workshop_uuid: TStringField
      FieldName = 'workshop_uuid'
      Origin = 'workshop_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTable1role: TStringField
      FieldName = 'role'
      Origin = 'role'
      Required = True
      FixedChar = True
      Size = 8
    end
    object FDTable1first_name: TStringField
      FieldName = 'first_name'
      Origin = 'first_name'
      Required = True
      Size = 45
    end
    object FDTable1second_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'second_name'
      Origin = 'second_name'
      Size = 45
    end
    object FDTable1last_name: TStringField
      FieldName = 'last_name'
      Origin = 'last_name'
      Required = True
      Size = 45
    end
    object FDTable1is_active: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'is_active'
      Origin = 'is_active'
    end
    object FDTable1email: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 255
    end
    object FDTable1password: TStringField
      FieldName = 'password'
      Origin = '`password`'
      Required = True
      Size = 255
    end
    object FDTable1remember_token: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'remember_token'
      Origin = 'remember_token'
      Size = 100
    end
    object FDTable1created_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object FDTable1updated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
    object FDTable1uuid: TStringField
      FieldName = 'uuid'
      Origin = 'uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
  end
  object FDTable2: TFDTable
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.vehicles'
    Left = 608
    Top = 168
    object FDTable2uuid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      FixedChar = True
      Size = 36
    end
    object FDTable2registration_plate: TStringField
      FieldName = 'registration_plate'
      Origin = 'registration_plate'
      Required = True
    end
    object FDTable2created_at: TDateTimeField
      FieldName = 'created_at'
      Origin = 'created_at'
      Required = True
    end
    object FDTable2updated_at: TDateTimeField
      FieldName = 'updated_at'
      Origin = 'updated_at'
      Required = True
    end
    object FDTable2model_id: TLargeintField
      FieldName = 'model_id'
      Origin = 'model_id'
      Required = True
    end
    object FDTable2workshop_uuid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'workshop_uuid'
      Origin = 'workshop_uuid'
      FixedChar = True
      Size = 36
    end
    object FDTable2client_uuid: TStringField
      FieldName = 'client_uuid'
      Origin = 'client_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTable2is_active: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'is_active'
      Origin = 'is_active'
    end
    object FDTable2vin: TStringField
      FieldName = 'vin'
      Origin = 'vin'
      Required = True
      Size = 255
    end
    object FDTable2engine: TStringField
      FieldName = 'engine'
      Origin = '`engine`'
      Required = True
      Size = 255
    end
    object FDTable2tech_passport: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tech_passport'
      Origin = 'tech_passport'
      BlobType = ftMemo
    end
    object FDTable2mileage: TIntegerField
      FieldName = 'mileage'
      Origin = 'mileage'
      Required = True
    end
    object FDTable2color: TStringField
      FieldName = 'color'
      Origin = 'color'
      Required = True
      Size = 255
    end
  end
  object FDTableMarks: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.marks'
    Left = 608
    Top = 78
  end
  object FDTableModels: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.models'
    Left = 608
    Top = 152
  end
  object FDTableConsumables: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.consumables'
    Left = 520
    Top = 158
    object FDTableConsumablesuuid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      FixedChar = True
      Size = 36
    end
    object FDTableConsumablesname: TStringField
      FieldName = 'name'
      Origin = '`name`'
      Required = True
      Size = 255
    end
    object FDTableConsumablesprice: TFloatField
      FieldName = 'price'
      Origin = 'price'
      Required = True
    end
  end
  object FDTableUsedServices: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.used_services'
    Left = 368
    Top = 94
    object FDTableUsedServicesuuid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      FixedChar = True
      Size = 36
    end
    object FDTableUsedServicescreated_at: TDateTimeField
      FieldName = 'created_at'
      Origin = 'created_at'
      Required = True
    end
    object FDTableUsedServicesupdated_at: TDateTimeField
      FieldName = 'updated_at'
      Origin = 'updated_at'
      Required = True
    end
    object FDTableUsedServicesstatement_uuid: TStringField
      FieldName = 'statement_uuid'
      Origin = 'statement_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableUsedServicesservice_uuid: TStringField
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
  end
  object FDTableUsedConsumables: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.used_consumables'
    Left = 360
    Top = 166
    object FDTableUsedConsumablesuuid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      FixedChar = True
      Size = 36
    end
    object FDTableUsedConsumablescreated_at: TDateTimeField
      FieldName = 'created_at'
      Origin = 'created_at'
      Required = True
    end
    object FDTableUsedConsumablesupdated_at: TDateTimeField
      FieldName = 'updated_at'
      Origin = 'updated_at'
      Required = True
    end
    object FDTableUsedConsumablesstatement_uuid: TStringField
      FieldName = 'statement_uuid'
      Origin = 'statement_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableUsedConsumablesconsumable_uuid: TStringField
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
  end
  object FDTableStatements: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.statements'
    Left = 328
    Top = 312
    object FDTableStatementsuuid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uuid'
      Origin = 'uuid'
      FixedChar = True
      Size = 36
    end
    object FDTableStatementscreated_at: TDateTimeField
      FieldName = 'created_at'
      Origin = 'created_at'
      Required = True
    end
    object FDTableStatementsupdated_at: TDateTimeField
      FieldName = 'updated_at'
      Origin = 'updated_at'
      Required = True
    end
    object FDTableStatementsstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
      FixedChar = True
      Size = 12
    end
    object FDTableStatementsrequest_uuid: TStringField
      FieldName = 'request_uuid'
      Origin = 'request_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableStatementsclient_uuid: TStringField
      FieldName = 'client_uuid'
      Origin = 'client_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableStatementsvehicle_uuid: TStringField
      FieldName = 'vehicle_uuid'
      Origin = 'vehicle_uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableStatementsis_active: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'is_active'
      Origin = 'is_active'
    end
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
  end
  object FDConnectionMain: TFDConnection
    Params.Strings = (
      'ConnectionDef=CarWorkshop')
    Connected = True
    LoginPrompt = False
    Left = 168
    Top = 352
  end
  object FDTableClients: TFDTable
    Active = True
    IndexFieldNames = 'uuid'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.clients'
    Left = 608
    Top = 270
    object FDTableClientsuuid: TStringField
      FieldName = 'uuid'
      Origin = 'uuid'
      Required = True
      FixedChar = True
      Size = 36
    end
    object FDTableClientsfirst_name: TStringField
      FieldName = 'first_name'
      Origin = 'first_name'
      Required = True
      Size = 45
    end
    object FDTableClientssecond_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'second_name'
      Origin = 'second_name'
      Size = 45
    end
    object FDTableClientslast_name: TStringField
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
    object FDTableClientsemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 255
    end
    object FDTableClientspassword: TStringField
      FieldName = 'password'
      Origin = '`password`'
      Required = True
      Size = 255
    end
    object FDTableClientsremember_token: TStringField
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
end
