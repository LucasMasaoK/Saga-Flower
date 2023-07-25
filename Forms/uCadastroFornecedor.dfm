inherited frmCadastroFornecedor: TfrmCadastroFornecedor
  Caption = 'Castro de Fornecedor'
  ClientHeight = 460
  ClientWidth = 820
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 836
  ExplicitHeight = 496
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 80
    Top = 16
    Width = 45
    Height = 15
    Caption = 'C'#211'DIGO'
    FocusControl = dbEditID
  end
  object Label2: TLabel [1]
    Left = 80
    Top = 64
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = dbEditNome
  end
  object Label3: TLabel [2]
    Left = 80
    Top = 248
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 400
    Top = 248
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 463
    Top = 248
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 79
    Top = 296
    Width = 41
    Height = 15
    Caption = 'CIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 191
    Top = 296
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 247
    Top = 296
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 80
    Top = 203
    Width = 54
    Height = 15
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 79
    Top = 112
    Width = 27
    Height = 15
    Caption = 'CNPJ'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 79
    Top = 155
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 144
    Top = 16
    Width = 60
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DBEdit12
  end
  inherited Panel1: TPanel
    Top = 385
    Width = 820
    ExplicitTop = 374
    ExplicitWidth = 818
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  object dbEditID: TDBEdit [13]
    Left = 80
    Top = 35
    Width = 40
    Height = 23
    DataField = 'ID_FORNECEDOR'
    DataSource = dataSourceCadastro
    TabOrder = 1
  end
  object dbEditNome: TDBEdit [14]
    Left = 80
    Top = 80
    Width = 300
    Height = 23
    DataField = 'NOME'
    DataSource = dataSourceCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [15]
    Left = 80
    Top = 264
    Width = 300
    Height = 23
    DataField = 'ENDERECO'
    DataSource = dataSourceCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [16]
    Left = 400
    Top = 264
    Width = 40
    Height = 23
    DataField = 'NUMERO'
    DataSource = dataSourceCadastro
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [17]
    Left = 463
    Top = 264
    Width = 300
    Height = 23
    DataField = 'BAIRRO'
    DataSource = dataSourceCadastro
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [18]
    Left = 79
    Top = 312
    Width = 90
    Height = 23
    DataField = 'CIDADE'
    DataSource = dataSourceCadastro
    TabOrder = 6
  end
  object DBEdit7: TDBEdit [19]
    Left = 191
    Top = 312
    Width = 34
    Height = 23
    DataField = 'UF'
    DataSource = dataSourceCadastro
    TabOrder = 7
  end
  object DBEdit8: TDBEdit [20]
    Left = 247
    Top = 312
    Width = 90
    Height = 23
    DataField = 'CEP'
    DataSource = dataSourceCadastro
    TabOrder = 8
  end
  object DBEdit9: TDBEdit [21]
    Left = 80
    Top = 219
    Width = 90
    Height = 23
    DataField = 'TELEFONE'
    DataSource = dataSourceCadastro
    TabOrder = 9
  end
  object DBEdit10: TDBEdit [22]
    Left = 79
    Top = 128
    Width = 120
    Height = 23
    DataField = 'CNPJ'
    DataSource = dataSourceCadastro
    TabOrder = 10
  end
  object DBEdit11: TDBEdit [23]
    Left = 79
    Top = 171
    Width = 300
    Height = 23
    DataField = 'EMAIL'
    DataSource = dataSourceCadastro
    TabOrder = 11
  end
  object DBEdit12: TDBEdit [24]
    Left = 144
    Top = 32
    Width = 90
    Height = 23
    DataField = 'CADASTRO'
    DataSource = dataSourceCadastro
    TabOrder = 12
  end
  inherited bancoQueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FORNECEDOR_ID'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR;')
    Left = 528
    Top = 400
    object bancoQueryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
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
    object bancoQueryCadastroCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '000.00000.0000-00;1;_'
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
    Left = 608
    Top = 404
  end
end
