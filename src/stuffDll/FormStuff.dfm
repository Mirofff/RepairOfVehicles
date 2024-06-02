object Form1: TForm1
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdLeftToRight
  BorderStyle = bsNone
  Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1080
  ClientHeight = 580
  ClientWidth = 854
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
  Position = poDesigned
  StyleElements = [seFont, seClient]
  OnCreate = FormCreate
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 217
    Top = 45
    Height = 535
    ExplicitLeft = 352
    ExplicitTop = 456
    ExplicitHeight = 100
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 45
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
      Width = 569
      Height = 45
      Align = alClient
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1086#1087#1080#1089#1072#1085#1080#1102
      TabOrder = 0
      object SearchEdit: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 559
        Height = 20
        ParentCustomHint = False
        Align = alClient
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
        ExplicitHeight = 25
      end
    end
    object GroupBox2: TGroupBox
      Left = 569
      Top = 0
      Width = 285
      Height = 45
      Align = alRight
      Caption = #1053#1072#1074#1080#1075#1072#1094#1080#1103
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 2
        Top = 20
        Width = 65
        Height = 20
        Align = alRight
        Caption = #9664' '
        OnClick = SpeedButton1Click
        ExplicitLeft = 24
        ExplicitHeight = 27
      end
      object SpeedButton2: TSpeedButton
        AlignWithMargins = True
        Left = 73
        Top = 20
        Width = 65
        Height = 20
        Align = alRight
        Caption = '|'#9664' '
        OnClick = SpeedButton2Click
        ExplicitTop = 22
        ExplicitHeight = 27
      end
      object SpeedButton3: TSpeedButton
        AlignWithMargins = True
        Left = 144
        Top = 20
        Width = 65
        Height = 20
        Align = alRight
        Caption = #9654'|'
        OnClick = SpeedButton3Click
        ExplicitLeft = 156
        ExplicitHeight = 27
      end
      object SpeedButton4: TSpeedButton
        AlignWithMargins = True
        Left = 215
        Top = 20
        Width = 65
        Height = 20
        Align = alRight
        Caption = #9654' '
        OnClick = SpeedButton4Click
        ExplicitLeft = 222
        ExplicitHeight = 27
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 45
    Width = 217
    Height = 535
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel5'
    ParentColor = True
    ShowCaption = False
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 217
      Height = 408
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
        Width = 217
        Height = 45
        Align = alTop
        Caption = '#'
        TabOrder = 0
        object DBLabeledEditId: TDBLabeledEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 207
          Height = 20
          Align = alClient
          DataField = 'id'
          DataSource = DataSourceConsumables
          Enabled = False
          TabOrder = 0
          EditLabel.Width = 86
          EditLabel.Height = 15
          LabelPosition = lpBelow
          ExplicitHeight = 23
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 45
        Width = 217
        Height = 45
        Align = alTop
        Caption = #1048#1084#1103
        TabOrder = 1
        ExplicitTop = 53
        object DBEdit3: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 207
          Height = 20
          Align = alClient
          DataSource = DataSourceConsumables
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 90
        Width = 217
        Height = 45
        Align = alTop
        Caption = #1060#1072#1084#1080#1083#1080#1103
        TabOrder = 2
        ExplicitTop = 129
        object DBEdit4: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 207
          Height = 20
          Align = alClient
          DataSource = DataSourceConsumables
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 135
        Width = 217
        Height = 45
        Align = alTop
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        TabOrder = 3
        ExplicitTop = 174
        object DBEdit5: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 207
          Height = 20
          Align = alClient
          DataSource = DataSourceConsumables
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 180
        Width = 217
        Height = 45
        Align = alTop
        Caption = #1055#1086#1095#1090#1072
        TabOrder = 4
        ExplicitTop = 194
        object DBEdit6: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 207
          Height = 20
          Align = alClient
          DataSource = DataSourceConsumables
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object GroupBox12: TGroupBox
        Left = 0
        Top = 225
        Width = 217
        Height = 45
        Align = alTop
        Caption = #1055#1072#1088#1086#1083#1100
        TabOrder = 5
        ExplicitTop = 245
        object Edit1: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 207
          Height = 20
          Align = alClient
          TabOrder = 0
          Text = 'Edit1'
          ExplicitLeft = 24
          ExplicitTop = 32
          ExplicitWidth = 121
          ExplicitHeight = 23
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 408
      Width = 217
      Height = 127
      Align = alBottom
      Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103
      TabOrder = 1
      object Button3: TButton
        AlignWithMargins = True
        Left = 5
        Top = 56
        Width = 207
        Height = 30
        Align = alBottom
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = Button3Click
      end
      object GridPanel1: TGridPanel
        Left = 2
        Top = 17
        Width = 213
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
          Width = 100
          Height = 30
          Align = alClient
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button4: TButton
          AlignWithMargins = True
          Left = 109
          Top = 3
          Width = 101
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
        Width = 207
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
    Left = 223
    Top = 48
    Width = 628
    Height = 529
    Align = alClient
    BorderStyle = bsNone
    DataSource = DataSourceConsumables
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object FDTableServices: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnectionMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '`car-workshop`.stuff'
    Left = 112
    Top = 332
  end
  object DataSourceConsumables: TDataSource
    DataSet = FDTableServices
    Left = 112
    Top = 272
  end
  object FDConnectionMain: TFDConnection
    Params.Strings = (
      'CharacterSet=utf8'
      'ConnectionDef=CarWorkshop')
    ConnectedStoredUsage = [auDesignTime]
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 392
  end
end
