object Form1: TForm1
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdLeftToRight
  BorderStyle = bsNone
  Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1080
  ClientHeight = 664
  ClientWidth = 1042
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
  TextHeight = 20
  object Splitter1: TSplitter
    Left = 289
    Top = 52
    Height = 612
    ExplicitLeft = 352
    ExplicitTop = 456
    ExplicitHeight = 100
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1042
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
      Width = 755
      Height = 52
      Align = alClient
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1075#1086#1089'. '#1085#1086#1084#1077#1088#1091
      TabOrder = 0
      object SearchEdit: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 745
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
      Left = 755
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
    Height = 612
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
      Height = 485
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
        Top = 440
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1062#1074#1077#1090
        TabOrder = 1
        object ComboBox1: TComboBox
          Left = 2
          Top = 22
          Width = 285
          Height = 28
          Align = alClient
          TabOrder = 0
          Items.Strings = (
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1074#1077#1090#1083#1086' '#1086#1088#1072#1085#1078#1077#1074#1099#1081
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1095#1105#1088#1085#1099#1081' '
            #1041#1077#1083#1072#1103' '#1076#1074#1091#1093#1089#1083#1086#1081#1085#1072#1103' '
            #1071#1088#1082#1086'-'#1078#1105#1083#1090#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1089#1080#1085#1077'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1054#1083#1080#1074#1082#1086#1074#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            '('#1048#1046') '#1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '
            #1041#1077#1083#1099#1081' '#1084#1077#1090#1072#1083#1083#1080#1082' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1089#1074#1077#1090#1083#1086'-'#1089#1077#1088#1099#1081' '
            #1071#1088#1082#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1090#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1043#1086#1083#1091#1073#1086#1081' '
            #1058#1105#1084#1085#1086'-'#1074#1080#1096#1085#1105#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1086#1088#1072#1085#1078#1077#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1080#1085#1077'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1074#1077#1090#1083#1086'-'#1089#1080#1085#1080#1081' '
            '(GM) '#1057#1074#1077#1090#1083#1086'-'#1089#1077#1088#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1079#1077#1083#1105#1085#1086'-'#1075#1086#1083#1091#1073#1086#1081' '
            #1041#1077#1078#1077#1074#1099#1081' '
            #1057#1077#1088#1086'-'#1095#1105#1088#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1080#1085#1077'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1047#1077#1083#1105#1085#1099#1081' '
            #1041#1077#1078#1077#1074#1099#1081' '
            #1041#1077#1078#1077#1074#1099#1081' '
            #1041#1077#1083#1099#1081' '
            #1041#1077#1083#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1090#1105#1084#1085#1086' '#1089#1077#1088#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1086'-'#1089#1080#1085#1080#1081' '
            #1047#1077#1083#1105#1085#1086'-'#1075#1086#1083#1091#1073#1086#1081' '
            #1041#1077#1078#1077#1074#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1050#1088#1072#1089#1085#1099#1081' '#1084#1077#1090#1072#1083#1083#1080#1082' '
            #1052#1077#1090#1072#1083#1083#1080#1082' '#1089#1077#1088#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1057#1077#1088#1086'-'#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1057#1077#1088#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1077#1088#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1103#1088#1082#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1073#1086#1088#1076#1086#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1057#1077#1088#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1057#1077#1088#1086'-'#1075#1086#1083#1091#1073#1086#1081' '
            #1043#1086#1083#1091#1073#1086#1081' '
            #1058#1105#1084#1085#1086'-'#1073#1086#1088#1076#1086#1074#1099#1081' '
            #1057#1077#1088#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1054#1088#1072#1085#1078#1077#1074#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1057#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1078#1105#1083#1090#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1084#1086#1083#1086#1095#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1041#1077#1083#1086'-'#1078#1105#1083#1090#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1073#1077#1083#1086'-'#1084#1086#1083#1086#1095#1085#1099#1081' '
            #1057#1077#1088#1086'-'#1089#1080#1085#1080#1081' '
            #1071#1088#1082#1086'-'#1078#1105#1083#1090#1099#1081' '
            #1047#1077#1083#1105#1085#1099#1081' '
            #1041#1077#1078#1077#1074#1086'-'#1089#1080#1088#1077#1085#1077#1074#1099#1081' '
            #1047#1077#1083#1105#1085#1099#1081' '
            '('#1048#1046') '#1058#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            '(GM) '#1041#1077#1078#1077#1074#1086'-'#1079#1086#1083#1086#1090#1080#1089#1090#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1078#1105#1083#1090#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            '('#1048#1046') '#1047#1086#1083#1086#1090#1080#1089#1090#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1047#1086#1083#1086#1090#1080#1089#1090#1099#1081' '#1090#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1047#1086#1083#1086#1090#1080#1089#1090#1099#1081' '#1090#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1103#1088#1082#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1092#1080#1083#1077#1090#1086#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1060#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1050#1088#1072#1089#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1074#1080#1096#1085#1105#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1071#1088#1082#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1047#1086#1083#1086#1090#1080#1089#1090#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1080#1085#1077'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1074#1077#1090#1083#1099#1081' '#1089#1077#1088#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1071#1088#1082#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1050#1088#1072#1089#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1077#1088#1099#1081' '
            #1057#1077#1088#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1047#1086#1083#1086#1090#1080#1089#1090#1086'-'#1086#1083#1080#1074#1082#1086#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1090#1105#1084#1085#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1047#1086#1083#1086#1090#1080#1089#1090#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1050#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1073#1086#1083#1086#1090#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1063#1105#1088#1085#1099#1081' '
            '('#1048#1046') '#1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1074#1080#1096#1085#1105#1074#1099#1081' '
            '('#1048#1046') '#1042#1080#1096#1085#1105#1074#1099#1081' '
            #1057#1074#1077#1090#1083#1086'-'#1089#1077#1088#1099#1081' '
            #1050#1088#1072#1089#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1075#1086#1083#1091#1073#1086#1081' '
            #1060#1080#1086#1083#1077#1090#1086#1074#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1090#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1080#1085#1080#1081' '
            #1047#1077#1083#1105#1085#1099#1081' '
            #1041#1077#1083#1099#1081' '
            #1043#1086#1083#1091#1073#1086#1081' '
            #1057#1074#1077#1090#1083#1086'-'#1075#1086#1083#1091#1073#1086#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1103#1088#1082#1086'-'#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1054#1088#1072#1085#1078#1077#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1090#1105#1084#1085#1086'-'#1073#1086#1088#1076#1086#1074#1099#1081' '
            #1050#1088#1072#1089#1085#1099#1081' '#1084#1077#1090#1072#1083#1083#1080#1082' '
            #1043#1086#1083#1091#1073#1086#1081' '
            #1046#1077#1083#1090#1086'-'#1079#1086#1083#1086#1090#1086#1081' '
            #1047#1077#1083#1105#1085#1099#1081' '
            '('#1048#1046') '#1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1090#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1073#1077#1078#1077#1074#1086'-'#1088#1086#1079#1086#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081'-'#1078#1077#1083#1090#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1086'-'#1075#1088#1072#1092#1080#1090#1086#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1089#1090#1072#1083#1100#1085#1086#1081' '
            #1071#1088#1082#1086'-'#1089#1080#1085#1080#1081' '
            #1058#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1071#1088#1082#1086'-'#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1057#1080#1085#1077'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1052#1091#1089#1082#1072#1088#1080' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1086'-'#1079#1086#1083#1086#1090#1080#1089#1090#1099#1081' '
            #1046#1105#1083#1090#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1090#1105#1084#1085#1086'-'#1089#1077#1088#1086'-'#1089#1080#1085#1080#1081' '
            #1058#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1086'-'#1075#1086#1083#1091#1073#1086#1074#1072#1090#1099#1081' '
            #1057#1080#1085#1077'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1077#1088#1086'-'#1089#1080#1085#1080#1081' '
            '('#1059#1040#1047') '#1058#1105#1084#1085#1086'-'#1089#1077#1088#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1047#1086#1083#1086#1090#1080#1089#1090#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1046#1077#1083#1090#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            '(GM) '#1071#1088#1082#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1075#1086#1083#1091#1073#1086#1074#1072#1090#1099#1081' '
            #1057#1088#1077#1076#1085#1077'-'#1089#1090#1072#1083#1100#1085#1086#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1047#1077#1083#1077#1085#1086'-'#1075#1086#1083#1091#1073#1086#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1086'-'#1079#1077#1083#1077#1085#1086#1074#1072#1090#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1082#1088#1072#1089#1085#1086'-'#1086#1088#1072#1085#1078#1077#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1086'-'#1079#1077#1083#1077#1085#1086#1074#1072#1090#1099#1081' '
            #1050#1088#1072#1089#1085#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1047#1077#1083#1077#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1057#1077#1088#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1074#1080#1096#1085#1105#1074#1099#1081' '#1084#1077#1090#1072#1083#1083#1080#1082' '
            #1058#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1071#1088#1082#1086'-'#1078#1105#1083#1090#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1090#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1057#1074#1077#1090#1083#1086'-'#1078#1105#1083#1090#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1103#1088#1082#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1090#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1071#1088#1082#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1057#1080#1085#1077'-'#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1073#1083#1077#1076#1085#1086'-'#1089#1077#1088#1099#1081' '
            '('#1059#1040#1047') '#1058#1105#1084#1085#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1050#1088#1072#1089#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1075#1086#1083#1091#1073#1086#1081' '
            #1057#1072#1083#1072#1090#1086#1074#1099#1081' '
            #1071#1088#1082#1086'-'#1089#1080#1085#1080#1081' '
            #1041#1077#1078#1077#1074#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1089#1080#1085#1077'-'#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1057#1074#1077#1090#1083#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1057#1074#1077#1090#1083#1086'-'#1089#1077#1088#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081'-'#1079#1077#1083#1077#1085#1086#1074#1072#1090#1086'-'#1089#1077#1088#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '
            #1057#1077#1088#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1057#1077#1088#1086'-'#1073#1077#1083#1099#1081' '
            #1057#1077#1088#1086'-'#1075#1086#1083#1091#1073#1086#1081' '
            #1057#1077#1088#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            '('#1048#1046') '#1057#1077#1088#1099#1081' '#1089#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '
            #1057#1077#1088#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            '('#1048#1046') '#1058#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1080#1085#1080#1081' '
            #1057#1074#1077#1090#1083#1086'-'#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1057#1077#1088#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1103#1088#1082#1086'-'#1089#1080#1085#1080#1081' '
            #1057#1083#1080#1074#1086#1095#1085#1086'-'#1073#1077#1083#1099#1081' '
            #1041#1077#1078#1077#1074#1086'-'#1078#1105#1083#1090#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '
            #1057#1085#1077#1078#1085#1086'-'#1073#1077#1083#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1099#1081' '
            #1058#1105#1084#1085#1086' '#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1086'-'#1079#1077#1083#1077#1085#1086#1074#1072#1090#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1082#1086#1088#1080#1095#1085#1077#1074#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1074#1077#1090#1083#1086'-'#1089#1077#1088#1099#1081' '
            #1057#1077#1088#1099#1081' '
            #1050#1088#1072#1089#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1079#1077#1083#1077#1085#1086#1074#1072#1090#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1077#1088#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1054#1090#1090#1077#1085#1086#1082' '#1090#1105#1084#1085#1086'-'#1089#1080#1085#1077#1075#1086' '
            '('#1048#1046') '#1057#1080#1085#1077'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1054#1088#1072#1085#1078#1077#1074#1099#1081' '
            '(GM) '#1071#1088#1082#1086'-'#1082#1088#1072#1089#1085#1099#1081' '
            #1063#1105#1088#1085#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1080#1088#1077#1085#1077#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1074#1080#1096#1085#1105#1074#1086'-'#1084#1072#1083#1080#1085#1086#1074#1099#1081' '
            #1062#1074#1077#1090' '#1084#1086#1088#1089#1082#1086#1081' '#1074#1086#1083#1085#1099' '
            #1058#1105#1084#1085#1086'-'#1079#1077#1083#1105#1085#1099#1081' '
            #1057#1074#1077#1090#1083#1086'-'#1078#1105#1083#1090#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1099#1081' '#1090#1105#1084#1085#1086'-'#1092#1080#1086#1083#1077#1090#1086#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1072#1083#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1080#1085#1080#1081' '
            #1063#1105#1088#1085#1099#1081', '#1076#1074#1086#1081#1085#1072#1103' '#1101#1084#1072#1083#1100' '
            #1063#1105#1088#1085#1099#1081' '
            #1054#1090#1090#1077#1085#1086#1082' '#1095#1105#1088#1085#1086#1075#1086' '
            '('#1048#1046') '#1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1089#1077#1088#1086'-'#1075#1088#1072#1092#1080#1090#1086#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1063#1105#1088#1085#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1082#1086#1088#1080#1095#1085#1077#1074#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1089#1077#1088#1099#1081' '
            #1057#1077#1088#1086'-'#1073#1077#1078#1077#1074#1099#1081' '
            #1057#1077#1088#1077#1073#1088#1080#1089#1090#1086'-'#1075#1086#1083#1091#1073#1086#1074#1072#1090#1099#1081' '
            #1058#1105#1084#1085#1086'-'#1074#1080#1096#1085#1105#1074#1099#1081' ')
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 165
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1055#1088#1086#1073#1077#1075
        TabOrder = 2
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
      object GroupBox8: TGroupBox
        Left = 0
        Top = 55
        Width = 289
        Height = 55
        Align = alTop
        Caption = 'VIN'
        TabOrder = 3
        object Edit3: TEdit
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
      object GroupBox10: TGroupBox
        Left = 0
        Top = 110
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1043#1086#1089'. '#1053#1086#1084#1077#1088#1072
        TabOrder = 4
        object Edit4: TEdit
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
      object GroupBox6: TGroupBox
        Left = 0
        Top = 385
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1050#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1103
        TabOrder = 5
        object ComboBox3: TComboBox
          Left = 2
          Top = 22
          Width = 285
          Height = 28
          Align = alClient
          TabOrder = 0
          Items.Strings = (
            #1052#1080#1085#1080#1084#1072#1083#1100#1085#1072#1103
            #1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103
            #1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103'+'
            #1055#1086#1083#1085#1072#1103
            #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103
            #1051#1102#1082#1089)
        end
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 275
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1052#1086#1076#1077#1083#1100
        TabOrder = 6
        object ComboBox4: TComboBox
          Left = 2
          Top = 22
          Width = 285
          Height = 28
          Align = alClient
          TabOrder = 0
        end
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 220
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1041#1088#1077#1085#1076
        TabOrder = 7
        object ComboBox2: TComboBox
          Left = 2
          Top = 22
          Width = 285
          Height = 28
          Align = alClient
          TabOrder = 0
          OnChange = ComboBox2Change
        end
      end
      object GroupBox12: TGroupBox
        Left = 0
        Top = 330
        Width = 289
        Height = 55
        Align = alTop
        Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1100
        TabOrder = 8
        object ComboBox5: TComboBox
          Left = 2
          Top = 22
          Width = 285
          Height = 28
          Align = alClient
          TabOrder = 0
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 485
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
    Width = 744
    Height = 606
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
        FieldName = 'vin'
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mileage'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'color'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StateNumber'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'equipment'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'model'
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brand'
        Width = 79
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
    Connected = True
    LoginPrompt = False
    Left = 536
    Top = 360
  end
  object DataSource1: TDataSource
    DataSet = SearchQuery
    Left = 408
    Top = 359
  end
  object SearchQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '    c.id,'
      '    c.vin,'
      '    c.mileage,'
      '    c.color,'
      '    c.StateNumber,'
      '    c.equipment,'
      '    c.model_id,'
      '    c.engine_id,'
      '    m.model,'
      '    b.brand,'
      '    m.id,'
      '    e.name,'
      '    e.id'
      'FROM'
      '    course_work.car AS c'
      '        JOIN'
      '    course_work.model AS m ON c.model_id = m.id'
      '        JOIN'
      '    course_work.engine AS e ON c.engine_id = e.id'
      '        JOIN'
      '    course_work.brand AS b ON m.brand = b.id;'
      '')
    Left = 524
    Top = 442
    object SearchQueryid: TFDAutoIncField
      FieldName = 'id'
    end
    object SearchQueryvin: TWideStringField
      FieldName = 'vin'
      Required = True
      Size = 17
    end
    object SearchQuerymileage: TIntegerField
      FieldName = 'mileage'
    end
    object SearchQuerycolor: TWideStringField
      FieldName = 'color'
      Required = True
      Size = 45
    end
    object SearchQueryStateNumber: TWideStringField
      FieldName = 'StateNumber'
      Required = True
      Size = 8
    end
    object SearchQueryequipment: TWideStringField
      FieldName = 'equipment'
      Size = 200
    end
    object SearchQuerymodel_id: TLongWordField
      FieldName = 'model_id'
      Required = True
    end
    object SearchQueryengine_id: TLongWordField
      FieldName = 'engine_id'
      Required = True
    end
    object SearchQuerymodel: TWideStringField
      FieldName = 'model'
      ReadOnly = True
      Size = 35
    end
    object SearchQuerybrand: TWideStringField
      FieldName = 'brand'
      ReadOnly = True
      Size = 35
    end
    object SearchQueryid_1: TLongWordField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object SearchQueryname: TWideStringField
      FieldName = 'name'
      ReadOnly = True
      Size = 100
    end
    object SearchQueryid_2: TLongWordField
      FieldName = 'id_2'
      ReadOnly = True
    end
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 680
    Top = 352
  end
end