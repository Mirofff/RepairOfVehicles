object FrameEngine: TFrameEngine
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 289
    Top = 52
    Height = 428
    ExplicitLeft = 298
    ExplicitTop = 58
    ExplicitHeight = 365
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 295
    Top = 55
    Width = 342
    Height = 422
    Align = alClient
    BorderStyle = bsNone
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel5: TPanel
    Left = 0
    Top = 52
    Width = 289
    Height = 428
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel5'
    ParentColor = True
    ShowCaption = False
    TabOrder = 1
    ExplicitHeight = 313
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 289
      Height = 301
      Align = alClient
      AutoSize = True
      BevelOuter = bvNone
      Caption = 'Panel1'
      ParentColor = True
      ShowCaption = False
      TabOrder = 0
      ExplicitHeight = 271
      object GroupBox6: TGroupBox
        Left = 0
        Top = 144
        Width = 289
        Height = 48
        Align = alTop
        Caption = #1058#1080#1087' '#1090#1086#1087#1083#1080#1074#1072
        TabOrder = 0
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 289
        Height = 48
        Align = alTop
        Caption = '#'
        TabOrder = 1
        object Label2: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 279
          Height = 23
          Align = alClient
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 275
          ExplicitHeight = 25
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 96
        Width = 289
        Height = 48
        Align = alTop
        Caption = #1054#1073#1098#1077#1084
        TabOrder = 2
        object VolumeEdit: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 279
          Height = 23
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
        Top = 48
        Width = 289
        Height = 48
        Align = alTop
        Caption = #1052#1086#1097#1085#1086#1089#1090#1100
        TabOrder = 3
        object PowerEdit: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 279
          Height = 23
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
      Top = 301
      Width = 289
      Height = 127
      Align = alBottom
      Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103
      TabOrder = 1
      ExplicitTop = 271
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 640
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
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 632
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 353
      Height = 52
      Align = alClient
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1076#1074#1080#1075#1072#1090#1077#1083#1102
      TabOrder = 0
      ExplicitWidth = 345
      object SearchEdit: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 343
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
        ExplicitWidth = 335
      end
    end
    object GroupBox2: TGroupBox
      Left = 353
      Top = 0
      Width = 287
      Height = 52
      Align = alRight
      Caption = #1053#1072#1074#1080#1075#1072#1094#1080#1103
      TabOrder = 1
      ExplicitLeft = 345
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
end
