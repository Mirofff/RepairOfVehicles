object Form1: TForm1
  Left = 0
  Top = 0
  Align = alCustom
  AutoSize = True
  BiDiMode = bdLeftToRight
  BorderStyle = bsNone
  Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1080
  ClientHeight = 675
  ClientWidth = 912
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  CustomTitleBar.ShowIcon = False
  CustomTitleBar.SystemColors = False
  CustomTitleBar.SystemButtons = False
  CustomTitleBar.BackgroundColor = clWhite
  CustomTitleBar.ForegroundColor = 65793
  CustomTitleBar.InactiveBackgroundColor = clWhite
  CustomTitleBar.InactiveForegroundColor = 10066329
  CustomTitleBar.ButtonForegroundColor = 65793
  CustomTitleBar.ButtonBackgroundColor = clWhite
  CustomTitleBar.ButtonHoverForegroundColor = 65793
  CustomTitleBar.ButtonHoverBackgroundColor = 16053492
  CustomTitleBar.ButtonPressedForegroundColor = 65793
  CustomTitleBar.ButtonPressedBackgroundColor = 15395562
  CustomTitleBar.ButtonInactiveForegroundColor = 10066329
  CustomTitleBar.ButtonInactiveBackgroundColor = clWhite
  ParentFont = True
  ParentBiDiMode = False
  Position = poDefault
  StyleElements = [seFont, seClient]
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 289
    Top = 48
    Height = 627
    ExplicitLeft = 352
    ExplicitTop = 456
    ExplicitHeight = 100
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 48
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
    TabOrder = 0
    ExplicitWidth = 981
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 625
      Height = 48
      Align = alClient
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1084#1086#1076#1077#1083#1080
      TabOrder = 0
      ExplicitWidth = 694
      object SearchEdit: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 615
        Height = 23
        ParentCustomHint = False
        Align = alClient
        AutoSize = False
        BiDiMode = bdLeftToRight
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        OnChange = SearchEditChange
        ExplicitWidth = 684
      end
    end
    object GroupBox2: TGroupBox
      Left = 625
      Top = 0
      Width = 287
      Height = 48
      Align = alRight
      Caption = #1053#1072#1074#1080#1075#1072#1094#1080#1103
      TabOrder = 1
      ExplicitLeft = 694
      object SpeedButton1: TSpeedButton
        Left = 5
        Top = 17
        Width = 70
        Height = 29
        Align = alRight
        Caption = #9664' '
        OnClick = SpeedButton1Click
        ExplicitLeft = 6
        ExplicitTop = 16
        ExplicitHeight = 33
      end
      object SpeedButton2: TSpeedButton
        Left = 75
        Top = 17
        Width = 70
        Height = 29
        Align = alRight
        Caption = '|'#9664' '
        OnClick = SpeedButton2Click
        ExplicitLeft = 69
        ExplicitTop = 16
        ExplicitHeight = 33
      end
      object SpeedButton3: TSpeedButton
        Left = 145
        Top = 17
        Width = 70
        Height = 29
        Align = alRight
        Caption = #9654'|'
        OnClick = SpeedButton3Click
        ExplicitLeft = 139
        ExplicitTop = 16
        ExplicitHeight = 31
      end
      object SpeedButton4: TSpeedButton
        Left = 215
        Top = 17
        Width = 70
        Height = 29
        Align = alRight
        Caption = #9654' '
        OnClick = SpeedButton4Click
        ExplicitLeft = 221
        ExplicitTop = 16
        ExplicitHeight = 31
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 48
    Width = 289
    Height = 627
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel5'
    ParentColor = True
    ShowCaption = False
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 289
      Height = 512
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      ParentColor = True
      ShowCaption = False
      TabOrder = 0
      ExplicitTop = 1
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 289
        Height = 48
        Align = alTop
        Caption = '#'
        TabOrder = 0
        object DBEditModelId: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 279
          Height = 23
          Align = alClient
          BiDiMode = bdLeftToRight
          DataField = 'id'
          DataSource = DataSourceModels
          Enabled = False
          ParentBiDiMode = False
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 192
        Width = 289
        Height = 48
        Align = alTop
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        TabOrder = 1
        object DBEdit1: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 279
          Height = 23
          Align = alClient
          DataField = 'name'
          DataSource = DataSourceModels
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 96
        Width = 289
        Height = 48
        Align = alTop
        Caption = #1058#1080#1087
        TabOrder = 2
        object DBComboBox1: TDBComboBox
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 279
          Height = 23
          Align = alClient
          DataField = 'type'
          DataSource = DataSourceModels
          Items.Strings = (
            'car'
            'bike')
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 144
        Width = 289
        Height = 48
        Align = alTop
        Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
        TabOrder = 3
        object DateTimePicker1: TDateTimePicker
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 279
          Height = 23
          Align = alClient
          Date = 45421.000000000000000000
          Format = 'yyyy'
          Time = 0.660367476848478000
          TabOrder = 0
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 48
        Width = 289
        Height = 48
        Align = alTop
        Caption = #1052#1072#1088#1082#1072
        TabOrder = 4
        object DBLookupComboBox1: TDBLookupComboBox
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 279
          Height = 23
          Align = alClient
          DataField = 'mark_id'
          DataSource = DataSourceModels
          KeyField = 'id'
          ListField = 'name'
          ListSource = DataSourceMarks
          TabOrder = 0
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 512
      Width = 289
      Height = 115
      Align = alBottom
      Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103
      TabOrder = 1
      object Button3: TButton
        AlignWithMargins = True
        Left = 5
        Top = 49
        Width = 279
        Height = 23
        Align = alTop
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = Button3Click
      end
      object GridPanel1: TGridPanel
        Left = 2
        Top = 17
        Width = 285
        Height = 29
        Align = alTop
        BevelOuter = bvNone
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
            Control = Button2
            Row = 0
          end
          item
            Column = 1
            Control = Button4
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 1
        object Button2: TButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 136
          Height = 23
          Align = alClient
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button4: TButton
          AlignWithMargins = True
          Left = 145
          Top = 3
          Width = 137
          Height = 23
          Align = alClient
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 1
          OnClick = Button4Click
        end
      end
      object Button5: TButton
        AlignWithMargins = True
        Left = 5
        Top = 78
        Width = 279
        Height = 32
        Align = alClient
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Enabled = False
        TabOrder = 2
        OnClick = Button5Click
        ExplicitLeft = 4
      end
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 295
    Top = 51
    Width = 614
    Height = 621
    Align = alClient
    BorderStyle = bsNone
    DataSource = DataSourceModels
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1052#1072#1088#1082#1072
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'type'
        Title.Caption = #1058#1080#1087
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mark'
        Title.Caption = #1052#1072#1088#1082#1072
        Width = 232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'year'
        Title.Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
        Visible = True
      end>
  end
  object DataSourceModels: TDataSource
    DataSet = FDTableModels
    Left = 200
    Top = 436
  end
  object DataSourceMarks: TDataSource
    DataSet = FDTableMarks
    Left = 40
    Top = 436
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=CarWorkshop')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 336
  end
  object FDTableModels: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.models'
    Left = 200
    Top = 332
    object FDTableModelsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDTableModelsname: TStringField
      FieldName = 'name'
      Origin = '`name`'
      Required = True
      Size = 45
    end
    object FDTableModelstype: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'type'
      Origin = '`type`'
      FixedChar = True
      Size = 4
    end
    object FDTableModelsmark_id: TIntegerField
      FieldName = 'mark_id'
      Origin = 'mark_id'
      Required = True
    end
    object FDTableModelsmark: TStringField
      FieldKind = fkLookup
      FieldName = 'mark'
      LookupDataSet = FDTableMarks
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'mark_id'
      Lookup = True
    end
    object FDTableModelsyear: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'year'
      Origin = '`year`'
    end
  end
  object FDTableMarks: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.marks'
    Left = 200
    Top = 508
    object FDTableMarksid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDTableMarksname: TStringField
      FieldName = 'name'
      Origin = '`name`'
      Required = True
      Size = 45
    end
  end
end
