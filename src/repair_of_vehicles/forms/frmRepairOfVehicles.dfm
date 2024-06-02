﻿object MainForm: TMainForm
  Left = 470
  Top = 270
  Caption = #1056#1077#1084#1086#1085#1090' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074
  ClientHeight = 552
  ClientWidth = 964
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  CustomTitleBar.Control = TitleBarPanel1
  CustomTitleBar.Enabled = True
  CustomTitleBar.Height = 31
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
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  GlassFrame.Enabled = True
  GlassFrame.Top = 31
  Position = poDesigned
  StyleElements = [seFont, seClient]
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object PageControlMain: TPageControl
    AlignWithMargins = True
    Left = 48
    Top = 30
    Width = 916
    Height = 522
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ActivePage = TabSheetAuth
    Align = alClient
    Constraints.MinHeight = 400
    Constraints.MinWidth = 400
    DoubleBuffered = False
    ParentDoubleBuffered = False
    TabOrder = 0
    object TabSheetHandbooks: TTabSheet
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      ImageIndex = 2
      TabVisible = False
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 908
        Height = 512
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ActivePage = TabSheetConsumables
        Align = alClient
        HotTrack = True
        MultiLine = True
        RaggedRight = True
        TabOrder = 0
        StyleElements = [seFont]
        object TabSheetConsumables: TTabSheet
          Caption = #1056#1072#1089#1093#1086#1076#1085#1099#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099
          ImageIndex = 4
        end
        object TabSheet5: TTabSheet
          Caption = #1052#1086#1076#1077#1083#1080
          ImageIndex = 2
        end
        object TabSheet4: TTabSheet
          Caption = #1041#1088#1077#1085#1076#1099
          ImageIndex = 1
        end
        object TabSheet3: TTabSheet
          Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1080
          DragMode = dmAutomatic
        end
        object TabSheet6: TTabSheet
          Caption = #1050#1083#1080#1077#1085#1090#1099
          ImageIndex = 3
        end
        object TabSheetServices: TTabSheet
          Caption = #1059#1089#1083#1091#1075#1080
          ImageIndex = 5
        end
        object TabSheet9: TTabSheet
          Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080
          ImageIndex = 6
        end
      end
    end
    object TabSheetAuth: TTabSheet
      Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
      TabVisible = False
      object GridPanelAuth: TGridPanel
        Left = 0
        Top = 0
        Width = 908
        Height = 512
        Align = alClient
        BevelOuter = bvNone
        Caption = 'GridPanelAuth'
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 400.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Panel5
            Row = 1
          end>
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 200.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 0
        object Panel5: TPanel
          Left = 254
          Top = 156
          Width = 400
          Height = 200
          Align = alClient
          Anchors = []
          BevelEdges = []
          BevelOuter = bvNone
          Caption = 'Panel1'
          ShowCaption = False
          TabOrder = 0
          object GridPanel2: TGridPanel
            Left = 0
            Top = 0
            Width = 400
            Height = 144
            Align = alTop
            Anchors = []
            BevelEdges = []
            BevelOuter = bvNone
            Caption = 'GridPanel2'
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label1
                Row = 0
              end
              item
                Column = 0
                Control = EditLogin
                Row = 1
              end
              item
                Column = 0
                Control = Label2
                Row = 2
              end
              item
                Column = 0
                Control = EditPassword
                Row = 3
              end>
            RowCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 30.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 30.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 30.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 30.000000000000000000
              end
              item
                SizeStyle = ssAuto
              end>
            ShowCaption = False
            TabOrder = 0
            object Label1: TLabel
              Left = 0
              Top = 0
              Width = 400
              Height = 30
              Align = alClient
              Alignment = taCenter
              Caption = #1051#1086#1075#1080#1085
              Layout = tlCenter
              ExplicitWidth = 34
              ExplicitHeight = 15
            end
            object EditLogin: TEdit
              Left = 0
              Top = 30
              Width = 400
              Height = 23
              Align = alTop
              Alignment = taCenter
              TabOrder = 0
            end
            object Label2: TLabel
              Left = 0
              Top = 60
              Width = 400
              Height = 30
              Align = alClient
              Alignment = taCenter
              Caption = #1055#1072#1088#1086#1083#1100
              Layout = tlCenter
              ExplicitWidth = 42
              ExplicitHeight = 15
            end
            object EditPassword: TEdit
              Left = 0
              Top = 90
              Width = 400
              Height = 23
              Align = alTop
              Alignment = taCenter
              PasswordChar = '*'
              TabOrder = 1
            end
          end
          object ButtonTryAuth: TButton
            Left = 0
            Top = 161
            Width = 400
            Height = 39
            Align = alBottom
            Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1086#1074#1072#1090#1100#1089#1103
            TabOrder = 1
            OnClick = ButtonTryAuthClick
          end
        end
      end
    end
    object TabSheetReports: TTabSheet
      Caption = #1054#1090#1095#1077#1090#1099
      ImageIndex = 2
      TabVisible = False
      OnShow = TabSheetReportsShow
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 908
        Height = 512
        ActivePage = TabSheet11
        Align = alClient
        TabOrder = 0
        object TabSheet11: TTabSheet
          Caption = #1044#1080#1085#1072#1084#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1095#1077#1090
          object GridPanel5: TGridPanel
            AlignWithMargins = True
            Left = 3
            Top = 60
            Width = 894
            Height = 393
            Align = alClient
            BevelOuter = bvNone
            Caption = 'GridPanel5'
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Panel14
                Row = 0
              end
              item
                Column = 0
                Control = Panel15
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
            object Panel14: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 888
              Height = 190
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel14'
              ShowCaption = False
              TabOrder = 0
              object LabelUsedServicesReportFullPrice: TLabel
                Left = 0
                Top = 175
                Width = 888
                Height = 15
                Align = alBottom
                Caption = 'LabelUsedServicesReportFullPrice'
                ExplicitWidth = 176
              end
              object DBGrid1: TDBGrid
                Left = 0
                Top = 0
                Width = 888
                Height = 175
                Align = alClient
                DataSource = DataSourceReportUsedServices
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = #1054#1087#1077#1088#1072#1094#1080#1103
                    Width = 555
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = #1062#1077#1085#1072
                    Width = 86
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = #1054#1073#1097#1072#1103' '#1094#1077#1085#1072
                    Visible = True
                  end>
              end
            end
            object Panel15: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 199
              Width = 888
              Height = 191
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel15'
              ShowCaption = False
              TabOrder = 1
              object LabelUsedConsumablesReportFullPrice: TLabel
                Left = 0
                Top = 176
                Width = 888
                Height = 15
                Align = alBottom
                Caption = 'Label5'
                ExplicitWidth = 34
              end
              object DBGrid2: TDBGrid
                Left = 0
                Top = 0
                Width = 888
                Height = 176
                Align = alClient
                DataSource = DataSourceReportUsedConsumables
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = #1056#1072#1089#1093#1086#1076#1085#1080#1082
                    Width = 551
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = #1062#1077#1085#1072
                    Width = 87
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = #1054#1073#1097#1072#1103' '#1094#1077#1085#1072
                    Visible = True
                  end>
              end
            end
          end
          object Button3: TButton
            AlignWithMargins = True
            Left = 3
            Top = 459
            Width = 894
            Height = 20
            Align = alBottom
            Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1090#1095#1077#1090
            TabOrder = 1
            OnClick = Button3Click
          end
          object GridPanel6: TGridPanel
            Left = 0
            Top = 0
            Width = 900
            Height = 57
            Align = alTop
            BevelOuter = bvNone
            Caption = 'GridPanel6'
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
                Control = GroupBox4
                Row = 0
              end
              item
                Column = 1
                Control = GroupBox6
                Row = 0
              end>
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            ShowCaption = False
            TabOrder = 2
            object GroupBox4: TGroupBox
              Left = 0
              Top = 0
              Width = 450
              Height = 57
              Align = alClient
              Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1074#1099#1073#1086#1088#1082#1080
              TabOrder = 0
              object DatePickerDynamicReportStart: TDatePicker
                Left = 2
                Top = 17
                Width = 446
                Height = 38
                Align = alClient
                Date = 45292.000000000000000000
                DateFormat = 'dd/mm/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                TabOrder = 0
                OnChange = DatePickerDynamicReportStartChange
              end
            end
            object GroupBox6: TGroupBox
              Left = 450
              Top = 0
              Width = 450
              Height = 57
              Align = alClient
              Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1074#1099#1073#1086#1088#1082#1080
              TabOrder = 1
              object DatePickerDynamicReportEnd: TDatePicker
                Left = 2
                Top = 17
                Width = 446
                Height = 38
                Align = alClient
                Date = 45627.000000000000000000
                DateFormat = 'dd/mm/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                TabOrder = 0
                OnChange = DatePickerDynamicReportEndChange
              end
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1095#1077#1090
          ImageIndex = 1
          object GridPanel1: TGridPanel
            Left = 0
            Top = 0
            Width = 900
            Height = 451
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
                Control = DBGrid4
                Row = 0
              end
              item
                Column = 1
                Control = DBGrid5
                Row = 0
              end>
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 0
            object DBGrid4: TDBGrid
              Left = 1
              Top = 1
              Width = 449
              Height = 449
              Align = alClient
              DataSource = DataSourceStaticReportConsumables
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'mark'
                  Title.Caption = #1052#1072#1088#1082#1072
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'full_sum'
                  Title.Caption = #1055#1086#1083#1085#1072#1103' '#1094#1077#1085#1072
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'consumable_price'
                  Title.Caption = #1062#1077#1085#1072
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'used_consumable_quantity'
                  Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'consumable_name'
                  Title.Caption = #1059#1089#1083#1091#1075#1072
                  Width = 100
                  Visible = True
                end>
            end
            object DBGrid5: TDBGrid
              Left = 450
              Top = 1
              Width = 449
              Height = 449
              Align = alClient
              DataSource = DataSourceStaticReportServices
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'mark'
                  Title.Caption = #1052#1072#1088#1082#1072
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'full_sum'
                  Title.Caption = #1055#1086#1083#1085#1072#1103' '#1094#1077#1085#1072
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'service_price'
                  Title.Caption = #1062#1077#1085#1072
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'used_consumable_quantity'
                  Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'service_name'
                  Title.Caption = #1057#1077#1088#1074#1080#1089
                  Width = 100
                  Visible = True
                end>
            end
          end
          object Button2: TButton
            AlignWithMargins = True
            Left = 3
            Top = 454
            Width = 894
            Height = 25
            Align = alBottom
            Caption = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072
            TabOrder = 1
            OnClick = Button2Click
          end
        end
      end
    end
    object TabSheetOperationsLog: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083' '#1086#1087#1077#1088#1072#1094#1080#1081
      ImageIndex = 3
      TabVisible = False
      object Splitter2: TSplitter
        Left = 0
        Top = 165
        Width = 908
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = -16
        ExplicitTop = 124
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 908
        Height = 165
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
        object DBGrid3: TDBGrid
          Left = 0
          Top = 45
          Width = 908
          Height = 120
          Align = alClient
          DataSource = DataModuleDB.DataSourceStatements
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'pickup_time'
              Title.Caption = #1042#1088#1077#1084#1103' '#1079#1072#1087#1080#1089#1080
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'client_name'
              Title.Caption = #1050#1083#1080#1077#1085#1090
              Width = 359
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vehicle_print'
              Title.Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090
              Width = 407
              Visible = True
            end>
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 908
          Height = 45
          Align = alTop
          BevelEdges = []
          BevelOuter = bvNone
          Caption = 'Panel8'
          ShowCaption = False
          TabOrder = 1
          object GroupBox7: TGroupBox
            Left = 0
            Top = 0
            Width = 621
            Height = 45
            Align = alClient
            TabOrder = 0
          end
          object GroupBox8: TGroupBox
            Left = 621
            Top = 0
            Width = 287
            Height = 45
            Align = alRight
            Caption = #1053#1072#1074#1080#1075#1072#1094#1080#1103
            TabOrder = 1
            object SpeedButtonStatementPriv: TSpeedButton
              Left = 2
              Top = 17
              Width = 70
              Height = 26
              Align = alLeft
              Caption = '<'
              OnClick = SpeedButtonStatementPrivClick
              ExplicitHeight = 33
            end
            object SpeedButtonStatementFirst: TSpeedButton
              Left = 72
              Top = 17
              Width = 70
              Height = 26
              Align = alLeft
              Caption = '|<'
              OnClick = SpeedButtonStatementFirstClick
              ExplicitHeight = 33
            end
            object SpeedButtonStatementLast: TSpeedButton
              Left = 142
              Top = 17
              Width = 70
              Height = 26
              Align = alLeft
              Caption = '>|'
              OnClick = SpeedButtonStatementLastClick
              ExplicitHeight = 33
            end
            object SpeedButtonStatementNext: TSpeedButton
              Left = 212
              Top = 17
              Width = 70
              Height = 26
              Align = alLeft
              Caption = '>'
              OnClick = SpeedButtonStatementNextClick
              ExplicitLeft = 214
              ExplicitTop = 16
              ExplicitHeight = 22
            end
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 168
        Width = 908
        Height = 344
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 233
          Top = 0
          Height = 344
          ExplicitLeft = 8
          ExplicitHeight = 465
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 233
          Height = 344
          Align = alLeft
          Caption = 'Panel7'
          ShowCaption = False
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 1
            Top = 135
            Width = 231
            Height = 44
            Align = alTop
            Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
            TabOrder = 0
            object DatePickerStatementRegistrationDate: TDatePicker
              Left = 2
              Top = 17
              Width = 227
              Height = 25
              Align = alClient
              Date = 45423.000000000000000000
              DateFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 1
            Top = 91
            Width = 231
            Height = 44
            Align = alTop
            Caption = #1044#1072#1090#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
            TabOrder = 1
            object DatePickerStatementExecutionDate: TDatePicker
              Left = 2
              Top = 17
              Width = 227
              Height = 25
              Align = alClient
              Date = 45423.000000000000000000
              DateFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              TabOrder = 0
            end
          end
          object GroupBox5: TGroupBox
            Left = 1
            Top = 46
            Width = 231
            Height = 45
            Align = alTop
            Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090
            TabOrder = 2
            object DBLabeledEdit1: TDBLabeledEdit
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 221
              Height = 20
              Align = alClient
              DataField = 'vehicle_print'
              DataSource = DataModuleDB.DataSourceStatements
              Enabled = False
              TabOrder = 0
              TextHint = 'asdf'
              EditLabel.Width = 67
              EditLabel.Height = 15
              LabelPosition = lpBelow
              ExplicitHeight = 23
            end
          end
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 231
            Height = 45
            Align = alTop
            Caption = '# '#1047#1072#1082#1072#1079' '#1085#1072#1088#1103#1076#1072
            TabOrder = 3
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 221
              Height = 20
              Align = alClient
              DataField = 'id'
              DataSource = DataModuleDB.DataSourceStatements
              Enabled = False
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Button7: TButton
            AlignWithMargins = True
            Left = 4
            Top = 320
            Width = 225
            Height = 20
            Align = alBottom
            Caption = #1055#1077#1095#1072#1090#1100
            TabOrder = 4
            OnClick = Button7Click
          end
          object ButtonStatementSave: TButton
            AlignWithMargins = True
            Left = 4
            Top = 294
            Width = 225
            Height = 20
            Align = alBottom
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            TabOrder = 5
            OnClick = ButtonStatementSaveClick
          end
        end
        object Panel9: TPanel
          Left = 236
          Top = 0
          Width = 672
          Height = 344
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel9'
          ShowCaption = False
          TabOrder = 1
          object GridPanel7: TGridPanel
            Left = 0
            Top = 0
            Width = 672
            Height = 344
            Align = alClient
            BevelOuter = bvNone
            Caption = 'GridPanel3'
            ColumnCollection = <
              item
                Value = 54.545454545454550000
              end
              item
                Value = 45.454545454545450000
              end>
            ControlCollection = <
              item
                Column = 1
                Control = Panel10
                Row = 0
              end
              item
                Column = 1
                Control = Panel11
                Row = 1
              end
              item
                Column = 0
                Control = Panel12
                Row = 1
              end
              item
                Column = 0
                Control = Panel13
                Row = 0
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
            object Panel10: TPanel
              AlignWithMargins = True
              Left = 370
              Top = 3
              Width = 299
              Height = 166
              Align = alClient
              AutoSize = True
              BevelEdges = []
              BevelOuter = bvNone
              Caption = 'Panel10'
              ShowCaption = False
              TabOrder = 0
              object DBGridConsumables: TDBGrid
                Left = 0
                Top = 0
                Width = 299
                Height = 146
                Align = alClient
                DataSource = DataModuleDB.DataSourceConsumables
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                OnDblClick = DBGridConsumablesDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'name'
                    Title.Caption = #1056#1072#1089#1093#1086#1076#1085#1080#1082
                    Width = 196
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'price'
                    Title.Caption = #1062#1077#1085#1072
                    Visible = True
                  end>
              end
              object ButtonConsumablesAdd: TButton
                Left = 0
                Top = 146
                Width = 299
                Height = 20
                Align = alBottom
                Caption = #1044#1086#1073#1072#1074#1080#1090#1100
                TabOrder = 1
                OnClick = ButtonConsumablesAddClick
              end
            end
            object Panel11: TPanel
              AlignWithMargins = True
              Left = 370
              Top = 175
              Width = 299
              Height = 166
              Align = alClient
              AutoSize = True
              BevelOuter = bvNone
              Caption = 'Panel11'
              ShowCaption = False
              TabOrder = 1
              object DBGridServices: TDBGrid
                Left = 0
                Top = 0
                Width = 299
                Height = 146
                Align = alClient
                DataSource = DataModuleDB.DataSourceServices
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                OnDblClick = DBGridServicesDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'name'
                    Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1103
                    Width = 196
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'price'
                    Title.Caption = #1062#1077#1085#1072
                    Visible = True
                  end>
              end
              object ButtonServicesAdd: TButton
                Left = 0
                Top = 146
                Width = 299
                Height = 20
                Align = alBottom
                Caption = #1044#1086#1073#1072#1074#1080#1090#1100
                TabOrder = 1
                OnClick = ButtonServicesAddClick
              end
            end
            object Panel12: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 175
              Width = 361
              Height = 166
              Align = alClient
              AutoSize = True
              BevelOuter = bvNone
              Caption = 'Panel12'
              ShowCaption = False
              TabOrder = 2
              object DBGridUsedServices: TDBGrid
                Left = 0
                Top = 0
                Width = 361
                Height = 146
                Align = alClient
                DataSource = DataModuleDB.DataSourceUsedServices
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'service_name'
                    Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'service_price'
                    Title.Caption = #1062#1077#1085#1072
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'quantity'
                    Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                    Width = 72
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'full_sum'
                    Title.Caption = #1055#1086#1083#1085#1072#1103' '#1094#1077#1085#1072
                    Visible = True
                  end>
              end
              object ButtonServicesDelete: TButton
                Left = 0
                Top = 146
                Width = 361
                Height = 20
                Align = alBottom
                Caption = #1059#1076#1072#1083#1080#1090#1100
                TabOrder = 1
                OnClick = ButtonServicesDeleteClick
              end
            end
            object Panel13: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 361
              Height = 166
              Align = alClient
              AutoSize = True
              BevelOuter = bvNone
              Caption = 'Panel13'
              ShowCaption = False
              TabOrder = 3
              object DBGridUsedConsumables: TDBGrid
                Left = 0
                Top = 0
                Width = 361
                Height = 146
                Align = alClient
                DataSource = DataModuleDB.DataSourceUsedConsumables
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'consumable_name'
                    Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'consumable_price'
                    Title.Caption = #1062#1077#1085#1072
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'quantity'
                    Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                    Width = 71
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'full_sum'
                    Title.Caption = #1055#1086#1083#1085#1072#1103' '#1094#1077#1085#1072
                    Visible = True
                  end>
              end
              object ButtonConsumablesDelete: TButton
                Left = 0
                Top = 146
                Width = 361
                Height = 20
                Align = alBottom
                Caption = #1059#1076#1072#1083#1080#1090#1100
                TabOrder = 1
                OnClick = ButtonConsumablesDeleteClick
              end
            end
          end
        end
      end
    end
  end
  object TitleBarPanel1: TTitleBarPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 30
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ParentCustomHint = False
    CustomButtons = <
      item
        ButtonType = sbCustom
        Enabled = True
        Width = 46
        Visible = True
      end>
    DesignSize = (
      964
      30)
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 48
      Height = 30
      Align = alLeft
      Caption = '|||'
      Flat = True
      Layout = blGlyphTop
      OnClick = SpeedButton1Click
      ExplicitHeight = 37
    end
  end
  object SplitViewMenu: TSplitView
    Left = 0
    Top = 30
    Width = 48
    Height = 522
    AnimationDelay = 1
    AnimationStep = 3
    BevelEdges = []
    CloseStyle = svcCompact
    Color = 14803425
    CompactWidth = 48
    UseDockManager = False
    Opened = False
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 2
    UseAnimation = False
    object SpeedButtonMenuLogout: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 479
      Width = 42
      Height = 40
      Align = alBottom
      Caption = #1056#1077#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
      ImageIndex = 0
      ImageName = 'person_48x48'
      Images = VirtualImageList1
      Flat = True
      Margin = 0
      OnClick = SpeedButtonMenuLogoutClick
      ExplicitTop = 489
    end
    object SpeedButtonMenuHandbooks: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 42
      Height = 40
      Align = alTop
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      ImageIndex = 1
      ImageName = 'repository_40x40'
      Images = VirtualImageList1
      Enabled = False
      Flat = True
      Margin = 0
      OnClick = SpeedButtonMenuHandbooksClick
      ExplicitLeft = 2
      ExplicitTop = 46
      ExplicitWidth = 200
    end
    object SpeedButtonMenuReports: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 49
      Width = 42
      Height = 40
      Align = alTop
      Caption = #1054#1090#1095#1077#1090#1099
      ImageIndex = 3
      ImageName = 'report_40x40'
      Images = VirtualImageList1
      Enabled = False
      Flat = True
      Margin = 0
      OnClick = SpeedButtonMenuReportsClick
      ExplicitLeft = 8
      ExplicitTop = 96
      ExplicitWidth = 200
    end
    object SpeedButtonMenuOperationsLogs: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 95
      Width = 42
      Height = 40
      Align = alTop
      Caption = #1046#1091#1088#1085#1072#1083' '#1086#1087#1077#1088#1072#1094#1080#1081
      ImageIndex = 4
      ImageName = 'log'
      Images = VirtualImageList1
      Enabled = False
      Flat = True
      Margin = 0
      OnClick = SpeedButtonMenuOperationsLogsClick
      ExplicitLeft = 4
      ExplicitTop = 141
      ExplicitWidth = 194
    end
    object SpeedButtonMenuHelp: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 433
      Width = 42
      Height = 40
      Align = alBottom
      Caption = #1055#1086#1084#1086#1097#1100
      ImageIndex = 5
      ImageName = 'icons8-help'
      Images = VirtualImageList1
      Flat = True
      Margin = 0
      ExplicitLeft = 0
      ExplicitTop = 484
    end
  end
  object ImageCollection1: TImageCollection
    Images = <
      item
        Name = 'person_48x48'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004800000048080600000055EDB3
              4700000006624B474400FF00FF00FFA0BDA7930000024749444154789CEDD93D
              6B14511406E04705412CFC20A29108A241D1081629B5B1F0AB5211C4BF106DC4
              5F616B612F082236A295B10D21AD9510351204C5681313259298C4626641A261
              B21FF7CE6E380F1C1696D93BE7BEBBCCCCBD4B0821841042082184DCB6D47CFE
              7E5CC3151CC2BEF2FD6FF888E778862FB57457A3413CC532562B6AB93C76B096
              4E6B701D3F5407B3B6E671B5867EB3BA8B15CD87F3F7AFE94EF6AE33B9A9BD70
              1AB5821B997B4F6E0073DA0FA751DF1517F84DE391CE85D3A887392790D2611B
              BB5B355BBF158F06496D4D7D02C5734E8AF36C2BC74E2A474017138E7D29E1D8
              C813D0D184631F49387636F33A7FFD69D45CEAE673FC82EA5EEFB52547409F13
              8EFD29E1D8C813D0871E1D1B79027AD1A363673380259DBF402FDA44CB8D073A
              1FD0FDAC3348ECA0CE2F560F649D41061714EBA776C359C2F9CCBD67131B661B
              105BAE1BD0877B58501DCC42796C5F2D9DD6AC1FB7308A29FC2A6B0A2F316213
              5E8C430821843CEAD8ED3B86D3388E93E5EB6EECC4F6F29845FCC42C26F1A67C
              7D8D77399BCD11D090621D761667B0BFCDF166308E31BC5284D7738615DB11D3
              3ABFCDB1B6A6CB730D679857DBCE29BED5D4A1AC57A3650F5DE73226D417CCDA
              9A287BAADD5E3C517F20EBD563EC4936FB0AA7148BCABA43A8AAF78A1B455643
              F8DA66E3396B06279224F11F3BF036F18452D464D97B72B76B985CA76A24411E
              FF18AF69729DA8B16627DBCA93F42C76B5F0B96E30ABC9BB5A2B01ADB6F0996E
              D2D49C73FC37DFD322A00A11508508A842041442082184104208A1EBFC0182EC
              9A3308C80EFD0000000049454E44AE426082}
          end>
      end
      item
        Name = 'repository_40x40'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000097048597300000B1300000B1301009A9C180000011149444154789C
              ED96310AC23014867F04979E408FE05CBAD913D84537A1B899037806AFA0E021
              74F008A25BE7DCC0C91BB844026F0845D0D7A649ACF9E15FDA3EF2E54FDEA3C0
              0F6B08A000203A76416BB1E16E0094235FB990854338459E7100850740F11780
              5BE3725F42044C8D6F0E11B08F47AC426F1215015B2678A4EED596211E711C33
              6D132C2945ED5388471CBBB8F7094A0015F91122601C33BD4F5085DE242A02F6
              2D4169CCBDAE2CDB009A5DDB95525B80A5F1B3FACEB96FC04F734FB8045C5351
              E60030A37ABDE6D7CAA9E80C60C104144C9FA97ECADDD99E0A2B26A06AE01D1A
              6A0C60C2044C991EC192EA804F4B7710B601F5605D014808EA1E0AE006C012C0
              A0F63CA177734F5C7EF5027BDB4FE1ABEFEE3D0000000049454E44AE426082}
          end>
      end
      item
        Name = 'exit_40x40'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000097048597300000B1300000B1301009A9C180000024C49444154789C
              ED984148154118C77F56261414526297C040EC90E2A13A781005A37A3D24C88B
              74A84E821EF55220E541410F8244A012D5A18B5DC420E8A288611128D8450AAA
              43A012A9EF1D242AD456064618C69D79EBDBD9B77BF0833F2CCCF7FDDF8F9D37
              DFCC2CEC8D334006F00AAC0C504E80B818039C27257EFB00D08BF30DFE05BA81
              0AA018B8003C4DCA14FF0752869A8749007C63A9290696E206ECCA5137760018
              728A9793B048D2869A9E242C12A17FC023E01C7014A8019E27A5CDD8F40B5800
              E62D5A04B60B0D3805D40145418C81A61C904E01078143EC3FC60A013840FE51
              056C4609D81F10E4B552F3411B7B1915A058C141A35EABBDA68C551ADE6228C0
              075A5E6900AF8F4ABD7856E35958C05EF92C54ADE59C05BE03777378B5680037
              94B10AD957F3066C338C0BB86F326703386FF13A0C7C5500E6B49634EC1A5085
              DB9568D02516BF0E2DBF5919BB1E06F01D30AA48ACBCACE1FFF9D8E2770C5855
              723F03A7E49B7C12F54EE22907899B16CF3E2DFF37F023EA9D44D71A70D2E099
              0AE81129E0B4C5B32B6EC02DA0D6E0771A58891B70C4E025CE8C33C09F3801B3
              4099C1EB85846BD056B24997A300EC34F8DC97ABBB55E987A3064DCA73E27BE0
              884BC02F721AFDB6B86D9FFDDB1677A4E73D9780699FFA4BB2CF89A93FCEFE42
              5C1D5EB9027C6BD80AD5EBE784EC815702EA2730EB0270537E3852E304F0298F
              0EA04B5CB042030EF95CDC271DC08923DEADB080EB72B3DF8D22D94E3C0772D2
              07DB23FAAAE0B9005CD4FAD46DD9EB12037855C96BF439B2C70A38AEE488156C
              3ABC3A05DC016E2076C869C73CC50000000049454E44AE426082}
          end>
      end
      item
        Name = 'report_40x40'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000097048597300000B1300000B1301009A9C18000001F949444154789C
              ED983D2F444114861F84202A515048483412A25329140A8D0A856805117F4034
              3E0A9D4648D6761ACD56A2A1A2D0C96A944482844441169B205C99E4DDE466ED
              BDF663E62EC99EE4143B1F679E9D99F3CECC857F6ADDC0B425EF770168027B96
              3C0D0CFD6540CF05A44DC06BE0C636A44DC053A003B8B209691B10DB902E00AD
              42BA02B406E912D00AA46BC092216D02BE0A32975FAB4DBAD013C7B6507B79B8
              19B302E8556630640F6E02D5946ED5C0968B3D7806CC5AB81FCE2A562549BCBF
              26331F403244744FF3F4A46259075CC69EADB800BC03E240AC448F2B562549BC
              22122101F400B54027B004BC976B891359FDD715BB1D9810A8B1C92CC02A600C
              68729D2455BEBD760BD40303C08BCA3E8129B53DF401CEA87ED4B5CC5CF9FAEE
              2AEE1E9002468073811B9BD305B61578545D5DA180A5784C7133F0A8CCD4E183
              317FE44B334D9480711FA0991D633B5A958C0DABEDF66F704180C9022F0B0BBE
              13E3407197F57B5F4F816395370297C03DD05C2CE05681D7AD16E0417DDF242B
              359AA167C175A9ED9ADA998C2EDB9B2429C86CEB95169A4C2EFBA329056C00F3
              409B56E444AFBAAE009D8C14D0931F4927339AB7A87183743252C0377DC1CDA5
              79413A1929E06A96E60DFAC60DD2C9C8002F808610CD0BD349671FD1A77DDEA7
              333948F3827432523359FA048CE7A8FBA193DFFC2E54D6DA44198D0000000049
              454E44AE426082}
          end>
      end
      item
        Name = 'log'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE0000000473424954080808087C0864880000000970485973000001D8000001
              D801FA5CA6720000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A000004F549444154789CED9B6B8855451CC07FD79B
              BAAE9BD8831EF6100DD32FE1A6D526D1872D28528A08CC1E0AE6832DA2081342
              3F97446051D1FBE117A54448485A491103112CC3C8121F6C6150ADDB6BB316D6
              45B7DB87FF9CBD73CFCE9C3BB377EEB9E77AEF0F867398F99F3933FF33F39FD7
              FF801F79E06DE01FA090C1F0B4677D18E729BF0CE8022EF47D51CA5C04E45C04
              7D1530D7BF2C35E156E05D1CEAE7AB005FF95AB20A78873265AEA70AB91035FB
              FFD47515F00609DDE182002FED058E04C8C7953CB0006831A45DAAAEC7B5B8C7
              917A765154CC987995D196F79A4A331D035D867214802F34996DB1B4F708D0E2
              4D0AB8B7D24C3D190FBC6E284701F9C21D4AAE0D780DF8454B7F0BC7D1C18649
              01590B3F0057BA56E87C338200338183C043486B49248411CC2257011F017F23
              067A30967E10580F6114F029B0930016D69116E009608E83EC54E03643FCD9E8
              2684029602FF06C8C7873EE0E310198550C00BC00EC400A5C144E0C950998550
              C0532AD425E7E328E045C32B2044177806B10159651E6230F3A6C4100AD80CFC
              19209F6AF113D04F71A154420805EC46261659E57A2C9587300AB85185BAA469
              0403E431842C39B3CA65C8D2D84808057400DF06C8A75A5C0EF4605142882E50
              D106434A54754FF000D9EF02936D8921143011D984A84B9AA340803C0E015F07
              C8A75ACC023A6D8921147017D99E0AE7815354712ABC8C7437447C998F1C961A
              09A1805754A84B1ADE0836BC027CBBC09BA4B7F99143B6BED7517AD2D3876CC2
              FCE198CF4DC006EA63C66A642EA5475F9BC690475F2C8FEE28416F01F7509B93
              5E1BA781ADC842EB67E06A15BF18F811A9940B0B90E97059BAA9FDC1A61E4E68
              653B1138EF9116D0F046B0A9004B7C2F620FEE73C8A31F7816980E4C006623C7
              654316F9CF80BB818B91CD8AE594BAB494E3907A36E718DA13CA52826E0376AA
              B81CC97DE977A4C2263A813331F997300F475381FD31599B0DD8EE52198D56E4
              23951D05740AB1AB8DB5C8D71B8F8CCD3703BB800F80BDC0CBC8380EF03D7226
              5F006E0756231EA71B805F118FAEC309658AB81FF8523DEBC24C44C165D15B40
              B7166FFBFA83C02425F3622C6DA58A9FA3C5458A988534C9285EAFF451CAB780
              CC8C02BD143D2F16C6D216A96B8F1677545D3B115B117103F00932C171717A08
              4A25ABC173DA7DDC67AFC520336491057F4FB3AF70EF023380EB6C89B5F6111A
              007E53F76DB8CDD8B6030F78BCA315D9B435DA815ACE0306902F13856988E12C
              C7741236380CCCA668AB4651EB16A00F89C3C07724ECDF29E6017F852A40252D
              40D76ABC40D11E61AB413E4A6B438C640FC5FF0F74F954A84401D390991C8807
              E9B0BA1F445C5241BE5644BBBAEEA0383AB401FB287A99E9F2A960EB02BAA5EE
              32A4457E7A6B80E710A7C423C831F93E64B90A32518A580D6C4496B9F391A1B2
              1FF85CA5DF899B02069019A5EB72B80358E122A84F844E035724C82E5172C3C0
              6386F41CF03CA327207B305BE376645EE13215DEE4529918A7B04C846C2D600A
              62913702276369BA9FDE38E043C459729B7AD10C64ABDCE4347107700C781F59
              D44C56718FE2E0D7AB58083C8CAC435CB885E686487343C44AC32B40B7012BA8
              C1389C40E4D19D032ED1E27B8047703F8F4CF413AC079653DA7FB7783E9F470C
              A6D72860630962B5D3E25A64FB4CE741A455B8BAE827FA09FA520FFF0C557514
              48EBAF906A33520F5F0564D91DCE876FC6FA601E3920CDEAEFF3E5C22032631D
              F9FBFD7F991B4F0E7D533BE60000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-help'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000097048597300000B1300000B1301009A9C180000059F49444154789C
              ED9D6BAC1D5314C77F4551F5A848E3226E28B954046954A321DEAFB668D0C62B
              A554F92011C4D54A086DA452F1FAA642B4DA262544AE47421349C92511916AD0
              1645A9AA47AB09AD7ADC9E253B36B91933E39C397BCF5E7366FF92FFC7B3CFAC
              F59FD9337BF6DA7B201289442291482412D1C2186016F03AB016D8020C00DF03
              1F034B801B8003431F68A7733AB0029026F51BF014D01DFAC03B8D5D81FB8146
              0B660CD656E08AD04174124F173462B08C993752310E03A6010F01AF006B804D
              C00E601BB00EE8071601D381FD4B38A6DB3312BC12B809381AD81BD81D3804B8
              14E8CBB89A760267A39C51C0BDC06705CE3AD3473F091CEAE9D8BAEC89903CD3
              7B8121FFF3DB736D57953CE64F803D50488F7D1A1970D01DFC0C5CEDE1181F4C
              F9AF7B5AF8FD991957CA5494DD20EFB4DD50BB4648E2CCBDC5F1B17E99F88FCF
              6DD7D40A2FA41CEBF328611FE055C74648A28F36F79F330A242EC99129EDCF2D
              D0CE5529ED7C8A02CC8DEF3D8F66484266B0760730ACE0F19E93D2E68505DA39
              39A59DED28E8A67C5E1992A3F5C0F105AF9099098D7464EC2F04E6B64066C8A0
              049C1F28F699194F5AC138C25EA2A2C0946302C4DF97722C4BA9F828571C696D
              1BF794229C97F1D86B068F41E8B2833751A4DE92621F9F32A814FBB6A1DD27C0
              C2F42A304012FA1618EA31663382BF19F835E5BF1B059FD49CD1CAAB6A295117
              788AF700FB0E2EEB7FE711907D813F14245F52645E89B866AC7DC4CEFACFF94D
              BCFFF2CA290A122F197ADF71AC17E5DC2BCD2CE2141470BD82C44B86FEB48355
              5757469619CB6C37A6820714245E7264E62EDA65A89DB349B66DC65D97A38C27
              14245D7274928318A7A5B46BEE9B1351C8120549971CB998B97B39A5DD3928E5
              C51A18B231A5DD8350CA320549971C9DE520C6E463FD4F28668182A48BE77B48
              B24D5324A796B4F9684DEA7610635A258A5AB2CA6734A801ECE920C6E40456B0
              B7B8CD305941E225431BA821C72A48BC646839356498A39A2BF1A087A929AB14
              245F527409356581D21BFA48C7F5C8936D2D98A93B53CD74050688A7B1C26EC0
              E38939F31F808B51CC950A0C9084DE7414DBEC8CF6B7D94A1B75EC65CF1851A8
              D31CC4B721A7FDFB5088C6AB43AC9E71105F5A45C93F32F74E753CAA20F192A1
              D50EE27B37A77D53A9A98E850A122F1932B5512EE6D1D3DAFE06188142343EF2
              8AD5DB0E9F22B70C6AB7DF2E7153C92C0589970C99EED415665E7D347030CA49
              2BC3D7A2A9D410F37AFB4705C9978476381EA9578AB90A0C9084CCAADDDA628A
              C4BE526082586DB5CBB06BCD09C0770ACCD80E4C089D0C2D74D9B5E4210D191F
              3A09DA08B5E853EC602DA2A8E8616174E3BF74079CD29D180DD1D36D7DED70E9
              41C731218021B34307AD9D374A346323303C74C0DA196B378929C390EB42075B
              15E69460465FE845965562173B77E0CB8C4DC07EA183AC1A3EB7DC58193AB82A
              B2C8A3211F840EAE8A2CF668C8AAD0C15591A51E0DF928747055E4258F86AC0F
              1D5C1559E179222AD222AB3D1A32604B59234D72994733C4CA6C9E1F69827125
              CD1E36806BA323F9CCC8D869CDA7298F94BCCF6225381578AB442324A12F806B
              E2BCC8DF9BD1BF16D00849688DDDC127D8269421186E17D17FA8C000C979F978
              77A757308EB29B966D5690706952BF03CFD9FDD93B86E3EC8A24AD6BD2A549F5
              87DEC2B55D46DB2D518B7E284BB331E3A810E6BB4F8F29DE02561CA861E76BD4
              7F87F044FB082935D1668F9B2EB7CDAD1D7E55488676DA65156A6ABB86D8D1AE
              D45CCF7ADE33BE69E62B488628D1E2D0952C69FBD2D65D778532E370056B3A44
              E936E52E36D06C99B4EFEF45F1EF66FEA6B6ACD4EF85C7E4939B83299D5233D5
              297AA7CCF5E5F1DE4153A61C55862193149C7D5211992F897A679E8240A52232
              15F6DE59AE2050A988CC8220EFAC5310A85448DEEBBFCAAC0AE904F5F8346384
              8200A562325B8778A3474180523179352412894422119AE42F454FDA32F3191D
              270000000049454E44AE426082}
          end>
      end>
    Left = 74
    Top = 402
  end
  object VirtualImageList1: TVirtualImageList
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'person_48x48'
        Name = 'person_48x48'
      end
      item
        CollectionIndex = 1
        CollectionName = 'repository_40x40'
        Name = 'repository_40x40'
      end
      item
        CollectionIndex = 2
        CollectionName = 'exit_40x40'
        Name = 'exit_40x40'
      end
      item
        CollectionIndex = 3
        CollectionName = 'report_40x40'
        Name = 'report_40x40'
      end
      item
        CollectionIndex = 4
        CollectionName = 'log'
        Name = 'log'
      end
      item
        CollectionIndex = 5
        CollectionName = 'icons8-help'
        Name = 'icons8-help'
      end>
    ImageCollection = ImageCollection1
    Width = 40
    Height = 40
    Left = 75
    Top = 334
  end
  object DataSourceReportUsedServices: TDataSource
    DataSet = DataModuleDB.FDQueryDynamicReportUsedServices
    OnDataChange = DataSourceReportUsedServicesDataChange
    Left = 384
    Top = 174
  end
  object DataSourceReportUsedConsumables: TDataSource
    DataSet = DataModuleDB.FDQueryDynamicReportUsedConsumables
    OnDataChange = DataSourceReportUsedConsumablesDataChange
    Left = 320
    Top = 328
  end
  object frxReportDynamicReport: TfrxReport
    Version = '2024.2.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45424.844183576400000000
    ReportOptions.LastChange = 45424.885137881900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 624
    Top = 446
    Datasets = <
      item
        DataSet = frxDBDatasetReportUsedConsumables
        DataSetName = 'DatasetReportUsedConsumables'
      end
      item
        DataSet = frxDBDatasetReportUsedServices
        DataSetName = 'DatasetReportUsedServices'
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
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 56.692951790000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        Condition = 'DatasetReportUsedConsumables."statement_id"'
        object Memo1: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 37.795296610000000000
          Width = 483.779841540000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1056#1072#1089#1093#1086#1076#1085#1080#1082)
        end
        object DatasetReportUsedConsumablesstatement_info: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 0.000000120000000006
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedConsumables
          DataSetName = 'DatasetReportUsedConsumables'
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[DatasetReportUsedConsumables."statement_info"] '#1086#1090' [DatasetRepor' +
              'tUsedConsumables."statement_execution_date"]'
            #1047#1072#1082#1072#1079'-'#1085#1072#1088#1103#1076': [DatasetReportUsedConsumables."statement_id"]')
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 483.779841540000000000
          Top = 34.015773500000000000
          Width = 86.929183960000000000
          Height = 22.677174040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 570.709025500000000000
          Top = 34.015770120000000000
          Width = 75.590591430000000000
          Height = 22.677181670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1062#1077#1085#1072)
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 646.299616930000000000
          Top = 34.015770120000000000
          Width = 71.811074160000000000
          Height = 22.677178290000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1073#1097#1072#1103' '#1094#1077#1085#1072)
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
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetReportUsedConsumables
        DataSetName = 'DatasetReportUsedConsumables'
        RowCount = 0
        object DatasetReportUsedConsumablesРасходник: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 483.779840000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = #1056#1072#1089#1093#1086#1076#1085#1080#1082
          DataSet = frxDBDatasetReportUsedConsumables
          DataSetName = 'DatasetReportUsedConsumables'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedConsumables."'#1056#1072#1089#1093#1086#1076#1085#1080#1082'"]')
        end
        object DatasetReportUsedConsumablesКоличествоопераций: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
          DataSet = frxDBDatasetReportUsedConsumables
          DataSetName = 'DatasetReportUsedConsumables'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedConsumables."'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081'"]')
        end
        object DatasetReportUsedConsumablesЦена: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedConsumables
          DataSetName = 'DatasetReportUsedConsumables'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedConsumables."'#1062#1077#1085#1072'"]')
        end
        object DatasetReportUsedConsumablesОбщаяцена: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = #1054#1073#1097#1072#1103' '#1094#1077#1085#1072
          DataSet = frxDBDatasetReportUsedConsumables
          DataSetName = 'DatasetReportUsedConsumables'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedConsumables."'#1054#1073#1097#1072#1103' '#1094#1077#1085#1072'"]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 64.252015060000000000
        Top = 430.866420000000000000
        Width = 718.110700000000000000
        Condition = 'DatasetReportUsedServices."statement_id"'
        object DatasetReportUsedServicesstatement_info: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedServices
          DataSetName = 'DatasetReportUsedServices'
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[DatasetReportUsedServices."statement_info"] '#1086#1090' [DatasetReportUs' +
              'edServices."statement_execution_date"]'
            #1047#1072#1082#1072#1079'-'#1085#1072#1088#1103#1076': [DatasetReportUsedServices."statement_id"]')
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 483.779841540000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1087#1077#1088#1072#1094#1080#1103)
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 483.779841540000000000
          Top = 41.574836770000000000
          Width = 86.929183960000000000
          Height = 22.677174040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 570.709025500000000000
          Top = 41.574833390000000000
          Width = 75.590591430000000000
          Height = 22.677181670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1062#1077#1085#1072)
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 646.299616930000000000
          Top = 41.574833390000000000
          Width = 71.811074160000000000
          Height = 22.677178290000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1073#1097#1072#1103' '#1094#1077#1085#1072)
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
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetReportUsedServices
        DataSetName = 'DatasetReportUsedServices'
        RowCount = 0
        object DatasetReportUsedServicesОперация: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 483.779840000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = #1054#1087#1077#1088#1072#1094#1080#1103
          DataSet = frxDBDatasetReportUsedServices
          DataSetName = 'DatasetReportUsedServices'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedServices."'#1054#1087#1077#1088#1072#1094#1080#1103'"]')
        end
        object DatasetReportUsedServicesКоличествоопераций: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
          DataSet = frxDBDatasetReportUsedServices
          DataSetName = 'DatasetReportUsedServices'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedServices."'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081'"]')
        end
        object DatasetReportUsedServicesЦена: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = #1062#1077#1085#1072
          DataSet = frxDBDatasetReportUsedServices
          DataSetName = 'DatasetReportUsedServices'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedServices."'#1062#1077#1085#1072'"]')
        end
        object DatasetReportUsedServicesОбщаяцена: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = #1054#1073#1097#1072#1103' '#1094#1077#1085#1072
          DataSet = frxDBDatasetReportUsedServices
          DataSetName = 'DatasetReportUsedServices'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedServices."'#1054#1073#1097#1072#1103' '#1094#1077#1085#1072'"]')
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
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 483.779856573437500000
          Width = 234.330861200000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1060#1080#1085#1072#1083#1100#1085#1072#1103' '#1094#1077#1085#1072': [SUM(<DatasetReportUsedConsumables."'#1054#1073#1097#1072#1103' '#1094#1077#1085#1072'">' +
              ')]')
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
        Top = 563.149970000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 483.779856573437500000
          Top = 3.779530000000000000
          Width = 234.330861200000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1060#1080#1085#1072#1083#1100#1085#1072#1103' '#1094#1077#1085#1072': [SUM(<DatasetReportUsedServices."'#1054#1073#1097#1072#1103' '#1094#1077#1085#1072'">)]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913436070000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 30.236240000000000000
          Width = 718.110717770000000000
          Height = 22.677196070000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1042#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077' '#1091#1089#1083#1091#1075#1080', '#1086#1073#1097#1072#1103' '#1089#1091#1084#1084#1072' - [DatasetReportUsedServices."fu' +
              'llSum"]:')
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 718.110717770000000000
          Height = 22.677196070000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1055#1088#1080#1086#1073#1088#1077#1090#1077#1085#1085#1099#1077' '#1088#1072#1089#1093#1086#1076#1085#1099#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099', '#1086#1073#1097#1072#1103' '#1089#1091#1084#1084#1072' - [DatasetReportU' +
              'sedConsumables."fullSum"]:')
        end
      end
    end
  end
  object frxDBDatasetReportUsedConsumables: TfrxDBDataset
    UserName = 'DatasetReportUsedConsumables'
    CloseDataSource = False
    DataSet = DataModuleDB.FDQueryDynamicReportUsedConsumables
    BCDToCurrency = True
    DataSetOptions = []
    Left = 624
    Top = 390
    FieldDefs = <
      item
        FieldName = 'statement_info'
      end
      item
        FieldName = #1056#1072#1089#1093#1086#1076#1085#1080#1082
        FieldType = fftString
        Size = 255
      end
      item
        FieldName = 'statement_id'
      end
      item
        FieldName = 'statement_execution_date'
        FieldType = fftDateTime
      end
      item
        FieldName = #1062#1077#1085#1072
      end
      item
        FieldName = #1054#1073#1097#1072#1103' '#1094#1077#1085#1072
      end
      item
        FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
      end
      item
        FieldName = 'fullSum'
      end>
  end
  object frxDBDatasetReportUsedServices: TfrxDBDataset
    UserName = 'DatasetReportUsedServices'
    CloseDataSource = False
    DataSet = DataModuleDB.FDQueryDynamicReportUsedServices
    BCDToCurrency = True
    DataSetOptions = []
    Left = 624
    Top = 334
    FieldDefs = <
      item
        FieldName = 'statement_info'
      end
      item
        FieldName = #1054#1087#1077#1088#1072#1094#1080#1103
        FieldType = fftString
        Size = 255
      end
      item
        FieldName = #1062#1077#1085#1072
      end
      item
        FieldName = 'statement_execution_date'
        FieldType = fftDateTime
      end
      item
        FieldName = 'statement_id'
      end
      item
        FieldName = #1054#1073#1097#1072#1103' '#1094#1077#1085#1072
      end
      item
        FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
      end
      item
        FieldName = 'fullSum'
      end>
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Left = 496
    Top = 262
  end
  object frxDBDatasetStaticReportUsedServices: TfrxDBDataset
    UserName = 'DatasetReportUsedServices'
    CloseDataSource = False
    DataSet = DataModuleDB.FDQueryStaticReportUsedServices
    BCDToCurrency = True
    DataSetOptions = []
    Left = 712
    Top = 126
    FieldDefs = <
      item
        FieldName = 'mark'
        FieldType = fftString
        Size = 1024
      end
      item
        FieldName = 'full_sum'
      end
      item
        FieldName = 'service_price'
      end
      item
        FieldName = 'used_consumable_quantity'
      end
      item
        FieldName = 'service_name'
        FieldType = fftString
        Size = 255
      end>
  end
  object frxDBDatasetStaticReportUsedConsumables: TfrxDBDataset
    UserName = 'DatasetReportUsedConsumables'
    CloseDataSource = False
    DataSet = DataModuleDB.FDQueryStaticReportUsedConsumables
    BCDToCurrency = True
    DataSetOptions = []
    Left = 712
    Top = 182
    FieldDefs = <
      item
        FieldName = 'mark'
        FieldType = fftString
        Size = 1024
      end
      item
        FieldName = 'full_sum'
      end
      item
        FieldName = 'consumable_price'
      end
      item
        FieldName = 'used_consumable_quantity'
      end
      item
        FieldName = 'consumable_name'
        FieldType = fftString
        Size = 255
      end>
  end
  object frxReportStaticReport: TfrxReport
    Version = '2024.2.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45424.844183576400000000
    ReportOptions.LastChange = 45424.885137881900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 712
    Top = 238
    Datasets = <
      item
        DataSet = frxDBDatasetStaticReportUsedServices
        DataSetName = 'DatasetReportUsedServices'
      end
      item
        DataSet = frxDBDatasetStaticReportUsedConsumables
        DataSetName = 'DatasetReportUsedConsumables'
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
        object Memo17: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 41.574829101562500000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1090#1072#1090#1080#1089#1090#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1095#1077#1090' '#1087#1086' '#1084#1072#1088#1082#1072#1084' '#1072#1074#1090#1086':')
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
        Height = 49.133891790000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        Condition = 'DatasetReportUsedConsumables."mark"'
        object Memo1: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 26.456706610000000000
          Width = 483.779841540000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1056#1072#1089#1093#1086#1076#1085#1080#1082)
        end
        object DatasetReportUsedConsumablesstatement_info: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 0.000000120000000006
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedConsumables
          DataSetName = 'DatasetReportUsedConsumables'
          Frame.Typ = []
          Memo.UTF8W = (
            #1052#1072#1088#1082#1072': [DatasetReportUsedConsumables."mark"]:')
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 483.779841540000000000
          Top = 26.456713500000000000
          Width = 86.929183960000000000
          Height = 22.677174040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 570.709025500000000000
          Top = 26.456710120000000000
          Width = 75.590591430000000000
          Height = 22.677181670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1062#1077#1085#1072)
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 646.299616930000000000
          Top = 26.456710120000000000
          Width = 71.811074160000000000
          Height = 22.677178290000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1073#1097#1072#1103' '#1094#1077#1085#1072)
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
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetStaticReportUsedConsumables
        DataSetName = 'DatasetReportUsedConsumables'
        RowCount = 0
        object DatasetReportUsedConsumablesРасходник: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 483.779840000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedConsumables
          DataSetName = 'DatasetReportUsedConsumables'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedConsumables."consumable_name"]')
        end
        object DatasetReportUsedConsumablesКоличествоопераций: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedConsumables
          DataSetName = 'DatasetReportUsedConsumables'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedConsumables."used_consumable_quantity"]')
        end
        object DatasetReportUsedConsumablesЦена: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedConsumables
          DataSetName = 'DatasetReportUsedConsumables'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedConsumables."consumable_price"]')
        end
        object DatasetReportUsedConsumablesОбщаяцена: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedConsumables
          DataSetName = 'DatasetReportUsedConsumables'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedConsumables."full_sum"]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574835060000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        Condition = 'DatasetReportUsedServices."mark"'
        object DatasetReportUsedServicesstatement_info: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedServices
          DataSetName = 'DatasetReportUsedServices'
          Frame.Typ = []
          Memo.UTF8W = (
            #1052#1072#1088#1082#1072':  [DatasetReportUsedServices."mark"]:')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 483.779841540000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1087#1077#1088#1072#1094#1080#1103)
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779841540000000000
          Top = 18.897656770000000000
          Width = 86.929183960000000000
          Height = 22.677174040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709025500000000000
          Top = 18.897653390000000000
          Width = 75.590591430000000000
          Height = 22.677181670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1062#1077#1085#1072)
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299616930000000000
          Top = 18.897653390000000000
          Width = 71.811074160000000000
          Height = 22.677178290000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1073#1097#1072#1103' '#1094#1077#1085#1072)
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
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetStaticReportUsedServices
        DataSetName = 'DatasetReportUsedServices'
        RowCount = 0
        object DatasetReportUsedServicesОперация: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 483.779840000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedServices
          DataSetName = 'DatasetReportUsedServices'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedServices."service_name"]')
        end
        object DatasetReportUsedServicesКоличествоопераций: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedServices
          DataSetName = 'DatasetReportUsedServices'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedServices."used_consumable_quantity"]')
        end
        object DatasetReportUsedServicesЦена: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedServices
          DataSetName = 'DatasetReportUsedServices'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedServices."service_price"]')
        end
        object DatasetReportUsedServicesОбщаяцена: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetReportUsedServices
          DataSetName = 'DatasetReportUsedServices'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DatasetReportUsedServices."full_sum"]')
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
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 483.779856573437500000
          Width = 234.330861200000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1060#1080#1085#1072#1083#1100#1085#1072#1103' '#1094#1077#1085#1072': [SUM(<DatasetReportUsedConsumables."full_sum">)]')
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
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 483.779856573437500000
          Top = 3.779530000000000000
          Width = 234.330861200000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1060#1080#1085#1072#1083#1100#1085#1072#1103' '#1094#1077#1085#1072': [SUM(<DatasetReportUsedServices."full_sum">)]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 22.677179336547850000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1047#1072#1082#1072#1079#1072#1085#1085#1099#1077' '#1088#1072#1089#1093#1086#1076#1085#1099#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099':')
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 22.677179336547850000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1082#1072#1079#1072#1085#1085#1099#1077' '#1088#1077#1084#1086#1085#1090#1085#1099#1077' '#1091#1089#1083#1091#1075#1080)
        end
      end
    end
  end
  object DataSourceStaticReportConsumables: TDataSource
    DataSet = DataModuleDB.FDQueryStaticReportUsedConsumables
    Left = 320
    Top = 382
  end
  object DataSourceStaticReportServices: TDataSource
    DataSet = DataModuleDB.FDQueryStaticReportUsedServices
    Left = 384
    Top = 118
  end
end
