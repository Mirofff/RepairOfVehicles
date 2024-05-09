object Form1: TForm1
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdLeftToRight
  BorderStyle = bsNone
  Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1080
  ClientHeight = 624
  ClientWidth = 919
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
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 289
    Top = 52
    Height = 572
    ExplicitLeft = 352
    ExplicitTop = 456
    ExplicitHeight = 100
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 919
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
      Width = 632
      Height = 52
      Align = alClient
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
      TabOrder = 0
      object SearchEdit: TEdit
        Left = 2
        Top = 17
        Width = 628
        Height = 33
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
      end
    end
    object GroupBox2: TGroupBox
      Left = 632
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
        ExplicitLeft = 1
        ExplicitTop = 23
        ExplicitHeight = 22
      end
      object SpeedButton2: TSpeedButton
        Left = 75
        Top = 17
        Width = 70
        Height = 33
        Align = alRight
        Caption = '|'#9664' '
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
    Height = 572
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
      Height = 445
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
        object LabelID: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 279
          Height = 30
          Align = alClient
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitHeight = 25
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 55
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1048#1084#1103
        TabOrder = 1
        object EditName: TEdit
          Left = 2
          Top = 17
          Width = 285
          Height = 36
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
      object GroupBox4: TGroupBox
        Left = 0
        Top = 110
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1060#1072#1084#1080#1083#1080#1103
        TabOrder = 2
        object EditSurname: TEdit
          Left = 2
          Top = 17
          Width = 285
          Height = 36
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
      object GroupBox6: TGroupBox
        Left = 0
        Top = 165
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        TabOrder = 3
        object EditPatronymic: TEdit
          Left = 2
          Top = 17
          Width = 285
          Height = 36
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
      object GroupBox8: TGroupBox
        Left = 0
        Top = 220
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
        TabOrder = 4
        object EditPhone: TEdit
          Left = 2
          Top = 17
          Width = 285
          Height = 36
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
      object GroupBox9: TGroupBox
        Left = 0
        Top = 275
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1040#1076#1088#1077#1089
        TabOrder = 5
        object EditAddress: TEdit
          Left = 2
          Top = 17
          Width = 285
          Height = 36
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
      object GroupBox10: TGroupBox
        Left = 0
        Top = 330
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1057#1077#1088#1080#1103' '#1087#1072#1089#1087#1086#1088#1090#1072
        TabOrder = 6
        object EditSeries: TEdit
          Left = 2
          Top = 17
          Width = 285
          Height = 36
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
      object GroupBox11: TGroupBox
        Left = 0
        Top = 385
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
        TabOrder = 7
        object EditNumber: TEdit
          Left = 2
          Top = 17
          Width = 285
          Height = 36
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
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 445
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
      end
      object GridPanel1: TGridPanel
        Left = 2
        Top = 17
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
      end
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 295
    Top = 55
    Width = 621
    Height = 566
    Align = alClient
    BorderStyle = bsNone
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
