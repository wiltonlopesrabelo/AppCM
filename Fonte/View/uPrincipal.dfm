object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'AppCM'
  ClientHeight = 585
  ClientWidth = 554
  Color = clBtnFace
  Constraints.MinHeight = 517
  Constraints.MinWidth = 570
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PctPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 554
    Height = 561
    ActivePage = TsDados
    Align = alClient
    Style = tsButtons
    TabOrder = 0
    ExplicitWidth = 893
    object TsDados: TTabSheet
      Caption = 'Dados'
      ExplicitWidth = 885
      object PgcUsuarios: TPageControl
        Left = 0
        Top = 52
        Width = 546
        Height = 478
        ActivePage = TsUsu
        Align = alClient
        Style = tsButtons
        TabOrder = 0
        ExplicitWidth = 885
        object TsUsu: TTabSheet
          Caption = 'Usu'#225'rio'
          ExplicitWidth = 877
          object pnlUsu: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 532
            Height = 201
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Enabled = False
            TabOrder = 0
            ExplicitWidth = 871
            object LblId: TLabel
              Left = 16
              Top = 13
              Width = 10
              Height = 13
              Caption = 'Id'
            end
            object LblNome: TLabel
              Left = 16
              Top = 53
              Width = 27
              Height = 13
              Caption = 'Nome'
            end
            object lblApelido: TLabel
              Left = 247
              Top = 53
              Width = 35
              Height = 13
              Caption = 'Apelido'
            end
            object lblEmail: TLabel
              Left = 16
              Top = 93
              Width = 24
              Height = 13
              Caption = 'Email'
            end
            object LblFone: TLabel
              Left = 16
              Top = 134
              Width = 24
              Height = 13
              Caption = 'Fone'
            end
            object EdId: TDBEdit
              Left = 16
              Top = 30
              Width = 57
              Height = 21
              DataField = 'id'
              DataSource = DsUsu
              Enabled = False
              TabOrder = 0
            end
            object EdNome: TDBEdit
              Left = 16
              Top = 70
              Width = 225
              Height = 21
              DataField = 'Nome'
              DataSource = DsUsu
              MaxLength = 100
              TabOrder = 1
            end
            object EdApelido: TDBEdit
              Left = 247
              Top = 70
              Width = 225
              Height = 21
              DataField = 'Apelido'
              DataSource = DsUsu
              MaxLength = 50
              TabOrder = 2
            end
            object EdEmail: TDBEdit
              Left = 16
              Top = 110
              Width = 456
              Height = 21
              DataField = 'Email'
              DataSource = DsUsu
              MaxLength = 100
              TabOrder = 3
            end
            object EdFone: TDBEdit
              Left = 16
              Top = 151
              Width = 177
              Height = 21
              DataField = 'Fone'
              DataSource = DsUsu
              MaxLength = 30
              TabOrder = 4
            end
          end
          object GridUsuarios: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 210
            Width = 532
            Height = 234
            Align = alClient
            DataSource = DsUsu
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEnter = GridUsuariosEnter
            Columns = <
              item
                Expanded = False
                FieldName = 'id'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome'
                Width = 112
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Apelido'
                Width = 89
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Email'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Fone'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Website'
                Width = 77
                Visible = True
              end>
          end
        end
        object TsEnd: TTabSheet
          Caption = 'Endere'#231'o'
          ImageIndex = 1
          ExplicitWidth = 877
          object PnlEnd: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 532
            Height = 182
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Enabled = False
            TabOrder = 0
            ExplicitWidth = 871
            object lbIdEnd: TLabel
              Left = 10
              Top = 7
              Width = 10
              Height = 13
              Caption = 'Id'
            end
            object lblRua: TLabel
              Left = 10
              Top = 47
              Width = 19
              Height = 13
              Caption = 'Rua'
            end
            object LblComplemento: TLabel
              Left = 241
              Top = 47
              Width = 65
              Height = 13
              Caption = 'Complemento'
            end
            object lblCidade: TLabel
              Left = 10
              Top = 87
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object lblCep: TLabel
              Left = 241
              Top = 87
              Width = 19
              Height = 13
              Caption = 'Cep'
            end
            object lblLatitude: TLabel
              Left = 10
              Top = 129
              Width = 39
              Height = 13
              Caption = 'Latitude'
            end
            object lblLongitude: TLabel
              Left = 128
              Top = 129
              Width = 47
              Height = 13
              Caption = 'Longitude'
            end
            object EdIdEnd: TDBEdit
              Left = 10
              Top = 24
              Width = 57
              Height = 21
              DataField = 'IdEnd'
              DataSource = DsEnd
              Enabled = False
              TabOrder = 0
            end
            object EdRua: TDBEdit
              Left = 10
              Top = 64
              Width = 225
              Height = 21
              DataField = 'Rua'
              DataSource = DsEnd
              MaxLength = 100
              TabOrder = 1
            end
            object EdComplemento: TDBEdit
              Left = 241
              Top = 64
              Width = 225
              Height = 21
              DataField = 'Complemento'
              DataSource = DsEnd
              MaxLength = 30
              TabOrder = 2
            end
            object EdCidade: TDBEdit
              Left = 10
              Top = 104
              Width = 225
              Height = 21
              DataField = 'Cidade'
              DataSource = DsEnd
              MaxLength = 30
              TabOrder = 3
            end
            object EdCep: TDBEdit
              Left = 241
              Top = 104
              Width = 225
              Height = 21
              DataField = 'Cep'
              DataSource = DsEnd
              MaxLength = 12
              TabOrder = 4
            end
            object EdLatitude: TDBEdit
              Left = 10
              Top = 146
              Width = 107
              Height = 21
              DataField = 'Lat'
              DataSource = DsEnd
              MaxLength = 12
              TabOrder = 5
            end
            object EdLongitude: TDBEdit
              Left = 128
              Top = 146
              Width = 107
              Height = 21
              DataField = 'Lng'
              DataSource = DsEnd
              MaxLength = 12
              TabOrder = 6
            end
          end
          object GridEndereco: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 191
            Width = 532
            Height = 253
            Align = alClient
            DataSource = DsEnd
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'IdEnd'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Rua'
                Width = 97
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Complemento'
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cidade'
                Width = 101
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cep'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Lat'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Lng'
                Visible = True
              end>
          end
        end
        object TsComp: TTabSheet
          Caption = 'Companhia'
          ImageIndex = 2
          ExplicitWidth = 877
          object PnlComp: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 532
            Height = 190
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Enabled = False
            TabOrder = 0
            ExplicitWidth = 871
            object lblIdCo: TLabel
              Left = 16
              Top = 13
              Width = 10
              Height = 13
              Caption = 'Id'
            end
            object LblNomeCo: TLabel
              Left = 16
              Top = 53
              Width = 27
              Height = 13
              Caption = 'Nome'
            end
            object lblCatchPhrase: TLabel
              Left = 16
              Top = 93
              Width = 61
              Height = 13
              Caption = 'CatchPhrase'
            end
            object lblBs: TLabel
              Left = 16
              Top = 136
              Width = 11
              Height = 13
              Caption = 'Bs'
            end
            object EdIdCo: TDBEdit
              Left = 16
              Top = 30
              Width = 57
              Height = 21
              DataField = 'IdComp'
              DataSource = DsComp
              Enabled = False
              TabOrder = 0
            end
            object EdNomeCo: TDBEdit
              Left = 16
              Top = 70
              Width = 225
              Height = 21
              DataField = 'Nome'
              DataSource = DsComp
              MaxLength = 100
              TabOrder = 1
            end
            object EdCatchPhrase: TDBEdit
              Left = 16
              Top = 110
              Width = 225
              Height = 21
              DataField = 'CatchPhrase'
              DataSource = DsComp
              MaxLength = 100
              TabOrder = 2
            end
            object EdBs: TDBEdit
              Left = 16
              Top = 153
              Width = 225
              Height = 21
              DataField = 'Bs'
              DataSource = DsComp
              MaxLength = 100
              TabOrder = 3
            end
          end
          object GridCompanhia: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 199
            Width = 532
            Height = 245
            Align = alClient
            DataSource = DsComp
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'IdComp'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome'
                Width = 139
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CatchPhrase'
                Width = 172
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Bs'
                Width = 120
                Visible = True
              end>
          end
        end
      end
      object PnlBotoes: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 540
        Height = 41
        Margins.Bottom = 8
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 879
        object BtnExibir: TBitBtn
          Left = 20
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Exibir'
          TabOrder = 0
          OnClick = BtnExibirClick
        end
        object BtnEditar: TBitBtn
          Left = 111
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Editar'
          Enabled = False
          TabOrder = 1
          OnClick = BtnEditarClick
        end
        object BtnExcluir: TBitBtn
          Left = 202
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Excluir'
          Enabled = False
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BtnExcluirClick
        end
        object BtnSalvar: TBitBtn
          Left = 446
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Salvar'
          Enabled = False
          NumGlyphs = 2
          TabOrder = 3
          OnClick = BtnSalvarClick
        end
        object BtnCancel: TBitBtn
          Left = 358
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          Enabled = False
          TabOrder = 4
          OnClick = BtnCancelClick
        end
      end
    end
    object TsInteg: TTabSheet
      Caption = 'Integra'#231#227'o'
      ImageIndex = 2
      ExplicitWidth = 885
      DesignSize = (
        546
        530)
      object GroupBox1: TGroupBox
        Left = 16
        Top = 40
        Width = 420
        Height = 113
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Integra'#231#227'o API '
        TabOrder = 0
        ExplicitWidth = 759
        object LblRotaUser: TLabel
          Left = 16
          Top = 19
          Width = 53
          Height = 13
          Caption = 'Rota Users'
        end
        object EdtRotaUser: TEdit
          Left = 16
          Top = 37
          Width = 310
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = 'https://jsonplaceholder.typicode.com/users'
        end
        object BtnImportar: TBitBtn
          Left = 330
          Top = 37
          Width = 75
          Height = 21
          Caption = 'Importar'
          TabOrder = 1
          OnClick = BtnImportarClick
        end
      end
    end
    object TsLog: TTabSheet
      Caption = 'Log (Edi'#231#227'o,Exclus'#227'o) '
      ImageIndex = 3
      ExplicitWidth = 885
      object PnlExcluidos: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 239
        Width = 540
        Height = 22
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        Caption = 'Excluidos'
        TabOrder = 0
        ExplicitWidth = 879
      end
      object GridExcluidos: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 264
        Width = 540
        Height = 262
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        DataSource = DsEx
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Data_Log'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Id_Usu'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Nome'
            Width = 184
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Apelido'
            Width = 151
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Email'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Fone'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Website'
            Width = 197
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Id_Co'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Id_End'
            Width = 70
            Visible = True
          end>
      end
      object PnlEditados: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 540
        Height = 22
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        Caption = 'Editados'
        TabOrder = 2
        ExplicitWidth = 879
      end
      object GridEditados: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 28
        Width = 540
        Height = 208
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        DataSource = DsEd
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Data_Log'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Id_Usu'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'New_Id_Usu'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Nome'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'New_Nome'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Apelido'
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'New_Apelido'
            Width = 171
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Email'
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'New_Email'
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Fone'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'New_Fone'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Website'
            Width = 187
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'New_Website'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Id_Co'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'New_Id_Co'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Old_Id_End'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'New_Id_End'
            Width = 96
            Visible = True
          end>
      end
    end
    object TsConexao: TTabSheet
      Caption = 'Conex'#227'o'
      ImageIndex = 1
      ExplicitWidth = 885
      DesignSize = (
        546
        530)
      object GrbBanco: TGroupBox
        Left = 16
        Top = 16
        Width = 516
        Height = 185
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Banco de Dados '
        TabOrder = 0
        ExplicitWidth = 855
        object LblCaminhoBD: TLabel
          Left = 16
          Top = 19
          Width = 121
          Height = 13
          Caption = 'Caminho Banco de Dados'
        end
        object LblUsuario: TLabel
          Left = 16
          Top = 67
          Width = 36
          Height = 13
          Caption = 'Usuario'
        end
        object LblSenhaBD: TLabel
          Left = 16
          Top = 116
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object EdtCaminhoBD: TEdit
          Left = 16
          Top = 36
          Width = 429
          Height = 21
          TabOrder = 0
          TextHint = 'Selecione o arquivo de  banco de dados'
        end
        object BtnEscolherBD: TBitBtn
          Left = 451
          Top = 36
          Width = 22
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = BtnEscolherBDClick
        end
        object EdtUsuarioBD: TEdit
          Left = 16
          Top = 84
          Width = 429
          Height = 21
          TabOrder = 2
          TextHint = 'Informe o usu'#225'rio do banco de dados'
        end
        object EdtSenhaBD: TEdit
          Left = 16
          Top = 133
          Width = 429
          Height = 21
          PasswordChar = '*'
          TabOrder = 3
          TextHint = 'Informe a senha do banco de dados'
        end
      end
      object BtnConectar: TBitBtn
        Left = 444
        Top = 207
        Width = 88
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Conectar'
        TabOrder = 1
        OnClick = BtnConectarClick
        ExplicitLeft = 783
      end
    end
  end
  object PnlStatusConexao: TPanel
    Left = 0
    Top = 561
    Width = 554
    Height = 24
    Align = alBottom
    BevelInner = bvLowered
    Caption = 'Sem Conexao com o Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object OpgCaminhoBD: TOpenDialog
    DefaultExt = 'FDB'
    Filter = 'FireBird|*.FDB'
    InitialDir = './Banco'
    Left = 500
    Top = 368
  end
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://jsonplaceholder.typicode.com/users'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 328
    Top = 120
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 400
    Top = 120
  end
  object RESTResponse: TRESTResponse
    Left = 478
    Top = 120
  end
  object CdsUsu: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 362
    object CdsUsuid: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'id'
    end
    object CdsUsuNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object CdsUsuApelido: TStringField
      FieldName = 'Apelido'
      Size = 50
    end
    object CdsUsuEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object CdsUsuFone: TStringField
      FieldName = 'Fone'
      Size = 30
    end
    object CdsUsuWebsite: TStringField
      FieldName = 'Website'
      Size = 100
    end
    object CdsUsuIdEnd: TIntegerField
      FieldName = 'IdEnd'
      Visible = False
    end
    object CdsUsuIdComp: TIntegerField
      FieldName = 'IdComp'
      Visible = False
    end
  end
  object CdsEnd: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idx_pk'
        Fields = 'IdEnd'
        Options = [ixPrimary]
      end>
    IndexFieldNames = 'IdEnd'
    MasterFields = 'IdEnd'
    MasterSource = DsUsu
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 368
    Top = 418
    object CdsEndIdEnd: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'IdEnd'
    end
    object CdsEndRua: TStringField
      FieldName = 'Rua'
      Size = 100
    end
    object CdsEndComplemento: TStringField
      FieldName = 'Complemento'
      Size = 30
    end
    object CdsEndCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object CdsEndCep: TStringField
      FieldName = 'Cep'
      Size = 12
    end
    object CdsEndLat: TStringField
      FieldName = 'Lat'
      Size = 12
    end
    object CdsEndLng: TStringField
      FieldName = 'Lng'
      Size = 12
    end
  end
  object CdsComp: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idx_pk'
        Fields = 'IdComp'
        Options = [ixPrimary]
      end>
    IndexFieldNames = 'IdComp'
    MasterFields = 'IdComp'
    MasterSource = DsUsu
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 368
    Top = 466
    object CdsCompIdComp: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'IdComp'
    end
    object CdsCompNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object CdsCompCatchPhrase: TStringField
      FieldName = 'CatchPhrase'
      Size = 100
    end
    object CdsCompBs: TStringField
      FieldName = 'Bs'
      Size = 100
    end
  end
  object DsUsu: TDataSource
    DataSet = CdsUsu
    Left = 432
    Top = 362
  end
  object DsEnd: TDataSource
    DataSet = CdsEnd
    Left = 432
    Top = 418
  end
  object DsComp: TDataSource
    DataSet = CdsComp
    Left = 432
    Top = 466
  end
  object QryEd: TFDQuery
    SQL.Strings = (
      'Select Old_Id_Usu, New_Id_Usu,'
      '       Old_Id_Co,  New_Id_Co,'
      '       Old_Id_End, New_Id_End,'
      '       Old_Nome, New_Nome,'
      '       Old_Apelido, New_Apelido,'
      '       Old_Email, New_Email,'
      '       Old_Fone, New_Fone,'
      '       Old_Website, New_Website,'
      '       Operacao,'
      '       Data_Log'
      'From Log_Usuario'
      'Where Operacao = '#39'Edicao'#39)
    Left = 476
    Top = 179
    object QryEdOld_Id_Usu: TIntegerField
      DisplayLabel = 'Id Ant.'
      FieldName = 'Old_Id_Usu'
    end
    object QryEdNew_Id_Usu: TIntegerField
      DisplayLabel = 'Id Atual'
      FieldName = 'New_Id_Usu'
    end
    object QryEdOld_Id_Co: TIntegerField
      DisplayLabel = 'Id Comp. Ant.'
      FieldName = 'Old_Id_Co'
    end
    object QryEdNew_Id_Co: TIntegerField
      DisplayLabel = 'Id Comp. Atual'
      FieldName = 'New_Id_Co'
    end
    object QryEdOld_Id_End: TIntegerField
      DisplayLabel = 'Id Endereco Ant.'
      FieldName = 'Old_Id_End'
    end
    object QryEdNew_Id_End: TIntegerField
      DisplayLabel = 'Id Endereco Atual'
      FieldName = 'New_Id_End'
    end
    object QryEdOld_Nome: TStringField
      DisplayLabel = 'Nome Ant.'
      FieldName = 'Old_Nome'
      Size = 100
    end
    object QryEdNew_Nome: TStringField
      DisplayLabel = 'Nome Atual'
      FieldName = 'New_Nome'
      Size = 100
    end
    object QryEdOld_Apelido: TStringField
      DisplayLabel = 'Apelido Ant.'
      FieldName = 'Old_Apelido'
      Size = 50
    end
    object QryEdNew_Apelido: TStringField
      DisplayLabel = 'Apelido Atual'
      FieldName = 'New_Apelido'
      Size = 50
    end
    object QryEdOld_Email: TStringField
      DisplayLabel = 'Email Ant.'
      FieldName = 'Old_Email'
      Size = 100
    end
    object QryEdNew_Email: TStringField
      DisplayLabel = 'Email Atual'
      FieldName = 'New_Email'
      Size = 100
    end
    object QryEdOld_Fone: TStringField
      DisplayLabel = 'Fone Ant.'
      FieldName = 'Old_Fone'
      Size = 30
    end
    object QryEdNew_Fone: TStringField
      DisplayLabel = 'Fone Atual'
      FieldName = 'New_Fone'
      Size = 30
    end
    object QryEdOld_Website: TStringField
      DisplayLabel = 'Website Ant.'
      FieldName = 'Old_Website'
      Size = 100
    end
    object QryEdNew_Website: TStringField
      DisplayLabel = 'Website Atual'
      FieldName = 'New_Website'
      Size = 100
    end
    object QryEdData_Log: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o'
      FieldName = 'Data_Log'
    end
  end
  object QryEx: TFDQuery
    SQL.Strings = (
      'Select Old_Id_Usu,'
      '       Old_Id_Co,'
      '       Old_Id_End,'
      '       Old_Nome,'
      '       Old_Apelido,'
      '       Old_Email,'
      '       Old_Fone,'
      '       Old_Website,'
      '       Operacao,'
      '       Data_Log'
      'From Log_Usuario'
      'Where Operacao = '#39'Exclusao'#39)
    Left = 476
    Top = 299
    object QryExOld_Id_Usu: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'Old_Id_Usu'
    end
    object QryExOld_Id_Co: TIntegerField
      DisplayLabel = 'Id Companhia'
      FieldName = 'Old_Id_Co'
    end
    object QryExOld_Id_End: TIntegerField
      DisplayLabel = 'Id Endere'#231'o'
      FieldName = 'Old_Id_End'
    end
    object QryExOld_Nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Old_Nome'
      Size = 100
    end
    object QryExOld_Apelido: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'Old_Apelido'
      Size = 50
    end
    object QryExOld_Email: TStringField
      DisplayLabel = 'Email'
      FieldName = 'Old_Email'
      Size = 100
    end
    object QryExOld_Fone: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'Old_Fone'
      Size = 30
    end
    object QryExOld_Website: TStringField
      DisplayLabel = 'Website'
      FieldName = 'Old_Website'
      Size = 100
    end
    object QryExData_Log: TSQLTimeStampField
      DisplayLabel = 'Data Exclus'#227'o'
      FieldName = 'Data_Log'
    end
  end
  object DsEd: TDataSource
    DataSet = QryEd
    Left = 516
    Top = 179
  end
  object DsEx: TDataSource
    DataSet = QryEx
    Left = 508
    Top = 299
  end
end
