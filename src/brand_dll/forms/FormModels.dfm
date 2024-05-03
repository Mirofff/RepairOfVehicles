object Form1: TForm1
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdLeftToRight
  BorderStyle = bsNone
  Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1080
  ClientHeight = 675
  ClientWidth = 981
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
  OnCreate = FormCreate
  TextHeight = 20
  object Splitter1: TSplitter
    Left = 289
    Top = 52
    Height = 623
    ExplicitLeft = 352
    ExplicitTop = 456
    ExplicitHeight = 100
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 981
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
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 694
      Height = 52
      Align = alClient
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1084#1086#1076#1077#1083#1080
      TabOrder = 0
      object SearchEdit: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 684
        Height = 27
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
      end
    end
    object GroupBox2: TGroupBox
      Left = 694
      Top = 0
      Width = 287
      Height = 52
      Align = alRight
      Caption = #1053#1072#1074#1080#1075#1072#1094#1080#1103
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 5
        Top = 17
        Width = 70
        Height = 33
        Align = alRight
        Caption = #9664' '
        OnClick = SpeedButton1Click
        ExplicitLeft = 6
        ExplicitTop = 16
      end
      object SpeedButton2: TSpeedButton
        Left = 75
        Top = 17
        Width = 70
        Height = 33
        Align = alRight
        Caption = '|'#9664' '
        OnClick = SpeedButton2Click
        ExplicitLeft = 69
        ExplicitTop = 16
        ExplicitHeight = 31
      end
      object SpeedButton3: TSpeedButton
        Left = 145
        Top = 17
        Width = 70
        Height = 33
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
        Height = 33
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
    Top = 52
    Width = 289
    Height = 623
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
      Height = 496
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      ParentColor = True
      ShowCaption = False
      TabOrder = 0
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 289
        Height = 55
        Align = alTop
        Caption = '#'
        TabOrder = 0
        object Label2: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 25
          Width = 279
          Height = 25
          Align = alClient
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 20
          ExplicitWidth = 275
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 165
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1052#1086#1076#1077#1083#1100
        TabOrder = 1
        object Edit1: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 25
          Width = 279
          Height = 25
          Align = alClient
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 55
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1041#1088#1077#1085#1076
        TabOrder = 2
        object ComboBox1: TComboBox
          Left = 2
          Top = 22
          Width = 285
          Height = 28
          Align = alClient
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 110
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1050#1091#1079#1086#1074
        TabOrder = 3
        object ComboBox2: TComboBox
          Left = 2
          Top = 22
          Width = 285
          Height = 28
          Align = alClient
          TabOrder = 0
          Items.Strings = (
            #1057#1077#1076#1072#1085
            #1061#1101#1090#1095#1073#1077#1082
            #1059#1085#1080#1074#1077#1088#1089#1072#1083
            #1051#1080#1092#1090#1073#1077#1082
            #1050#1091#1087#1077
            #1051#1080#1084#1091#1079#1080#1085
            #1052#1080#1085#1080#1074#1101#1085
            #1042#1085#1077#1076#1086#1088#1086#1078#1085#1080#1082
            #1050#1088#1086#1089#1089#1086#1074#1077#1088
            #1055#1080#1082#1072#1087
            #1050#1072#1073#1088#1080#1086#1083#1077#1090
            #1056#1086#1076#1089#1090#1077#1088
            #1060#1072#1101#1090#1086#1085
            #1041#1088#1086#1075#1072#1084
            #1058#1072#1088#1075#1072)
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 496
      Width = 289
      Height = 127
      Align = alBottom
      Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103
      TabOrder = 1
      object Button3: TButton
        AlignWithMargins = True
        Left = 5
        Top = 56
        Width = 279
        Height = 30
        Align = alBottom
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = Button3Click
      end
      object GridPanel1: TGridPanel
        Left = 2
        Top = 22
        Width = 285
        Height = 36
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
          Height = 30
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
          Height = 30
          Align = alClient
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 1
          OnClick = Button4Click
        end
      end
      object Button5: TButton
        AlignWithMargins = True
        Left = 5
        Top = 92
        Width = 279
        Height = 30
        Align = alBottom
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Enabled = False
        TabOrder = 2
        OnClick = Button5Click
      end
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 295
    Top = 55
    Width = 683
    Height = 617
    Align = alClient
    BorderStyle = bsNone
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'brand_1'
        Title.Caption = #1041#1088#1077#1085#1076
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'model'
        Title.Caption = #1052#1086#1076#1077#1083#1100
        Width = 356
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'body'
        Title.Caption = #1050#1091#1079#1086#1074
        Width = 168
        Visible = True
      end>
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Password=Mozg v stakane'
      'User_Name=root'
      'CharacterSet=utf8'
      'Database=course_work'
      'DriverID=MySQL')
    FormatOptions.AssignedValues = [fvADOCompatibility]
    FormatOptions.ADOCompatibility = True
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    Connected = False
    LoginPrompt = False
    Left = 360
    Top = 464
  end
  object DataSource1: TDataSource
    DataSet = SearchQuery
    Left = 488
    Top = 383
  end
  object SearchQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT * FROM course_work.model join course_work.brand on course' +
        '_work.model.brand = course_work.brand.id;')
    Left = 596
    Top = 474
    object SearchQueryid: TFDAutoIncField
      FieldName = 'id'
    end
    object SearchQuerymodel: TWideStringField
      FieldName = 'model'
      Required = True
      Size = 35
    end
    object SearchQuerybody: TWideStringField
      FieldName = 'body'
      Required = True
      Size = 45
    end
    object SearchQuerybrand: TLongWordField
      FieldName = 'brand'
      Required = True
    end
    object SearchQueryid_1: TLongWordField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object SearchQuerybrand_1: TWideStringField
      FieldName = 'brand_1'
      ReadOnly = True
      Size = 35
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM course_work.brand')
    Left = 672
    Top = 360
    object FDQuery1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery1brand: TWideStringField
      FieldName = 'brand'
      Origin = 'brand'
      Required = True
      Size = 35
    end
  end
end
