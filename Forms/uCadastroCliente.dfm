inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'Cadastro de Cliente'
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 32
    Top = 8
    Width = 39
    Height = 15
    Caption = 'C'#243'digo'
    FocusControl = dbEditID
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 56
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = dbeditNome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 32
    Top = 104
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 304
    Top = 101
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 368
    Top = 101
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 32
    Top = 149
    Width = 41
    Height = 15
    Caption = 'CIDADE'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 304
    Top = 152
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DBEdit7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 368
    Top = 152
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 304
    Top = 200
    Width = 54
    Height = 15
    Caption = 'TELEFONE'
    FocusControl = editTelefone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [9]
    Left = 304
    Top = 56
    Width = 21
    Height = 15
    Caption = 'CPF'
    FocusControl = editCpf
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel [10]
    Left = 32
    Top = 200
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DBEdit11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel [11]
    Left = 112
    Top = 8
    Width = 60
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DBEdit12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel1: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  object dbEditID: TDBEdit [13]
    Left = 32
    Top = 24
    Width = 40
    Height = 23
    CharCase = ecUpperCase
    DataField = 'ID_CLIENTE'
    DataSource = dataSourceCadastro
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 1
  end
  object dbeditNome: TDBEdit [14]
    Left = 32
    Top = 72
    Width = 250
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dataSourceCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [15]
    Left = 32
    Top = 120
    Width = 250
    Height = 23
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = dataSourceCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [16]
    Left = 304
    Top = 120
    Width = 40
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = dataSourceCadastro
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [17]
    Left = 368
    Top = 120
    Width = 250
    Height = 23
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = dataSourceCadastro
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [18]
    Left = 32
    Top = 168
    Width = 250
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = dataSourceCadastro
    TabOrder = 6
  end
  object DBEdit7: TDBEdit [19]
    Left = 304
    Top = 168
    Width = 40
    Height = 23
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = dataSourceCadastro
    TabOrder = 7
  end
  object DBEdit8: TDBEdit [20]
    Left = 368
    Top = 168
    Width = 130
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = dataSourceCadastro
    TabOrder = 8
  end
  object editTelefone: TDBEdit [21]
    Left = 304
    Top = 216
    Width = 130
    Height = 23
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = dataSourceCadastro
    TabOrder = 9
  end
  object editCpf: TDBEdit [22]
    Left = 304
    Top = 72
    Width = 130
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = dataSourceCadastro
    TabOrder = 10
  end
  object DBEdit11: TDBEdit [23]
    Left = 33
    Top = 221
    Width = 250
    Height = 23
    ParentCustomHint = False
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = dataSourceCadastro
    ParentShowHint = False
    ShowHint = False
    TabOrder = 11
  end
  object DBEdit12: TDBEdit [24]
    Left = 112
    Top = 24
    Width = 130
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CADASTRO'
    DataSource = dataSourceCadastro
    TabOrder = 12
  end
  inherited bancoQueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE_ID'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT * FROM CLIENTE;')
    Left = 624
    Top = 272
    object bancoQueryCadastroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object bancoQueryCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object bancoQueryCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object bancoQueryCadastroNUMERO: TIntegerField
      Alignment = taCenter
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object bancoQueryCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object bancoQueryCadastroCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object bancoQueryCadastroUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object bancoQueryCadastroCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object bancoQueryCadastroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '(00) 0 0000-0000;1;_'
      Size = 16
    end
    object bancoQueryCadastroCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000.000.000-00;1;_'
      Size = 16
    end
    object bancoQueryCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object bancoQueryCadastroCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dataSourceCadastro: TDataSource
    Left = 768
    Top = 280
  end
end
