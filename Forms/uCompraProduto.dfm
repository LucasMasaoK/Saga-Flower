inherited frmCompraProduto: TfrmCompraProduto
  Caption = 'Compra de Produtos'
  ClientHeight = 747
  ClientWidth = 867
  ExplicitWidth = 883
  ExplicitHeight = 783
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 672
    Width = 867
    ExplicitLeft = 0
    ExplicitTop = 459
    ExplicitWidth = 776
    inherited btnNovo: TBitBtn
      OnClick = btnNovoClick
    end
    inherited btnDeletar: TBitBtn
      OnClick = nil
    end
    inherited btnSalvar: TBitBtn
      OnClick = nil
    end
    inherited btnCancelar: TBitBtn
      OnClick = nil
    end
  end
  inherited Panel2: TPanel
    Width = 867
    Height = 209
    ExplicitHeight = 209
    object Label1: TLabel
      Left = 41
      Top = 16
      Width = 58
      Height = 15
      Caption = 'N. Compra'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 41
      Top = 104
      Width = 22
      Height = 15
      Caption = 'Cod'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 41
      Top = 149
      Width = 22
      Height = 15
      Caption = 'Cod'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 41
      Top = 59
      Width = 55
      Height = 15
      Caption = 'Solicitante'
      FocusControl = dbEditSolicitante
    end
    object Label5: TLabel
      Left = 256
      Top = 149
      Width = 25
      Height = 15
      Caption = 'Total'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 127
      Top = 16
      Width = 24
      Height = 15
      Caption = 'Data'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 96
      Top = 104
      Width = 96
      Height = 15
      Caption = 'Nome Fornecedor'
    end
    object Label8: TLabel
      Left = 87
      Top = 149
      Width = 98
      Height = 15
      Caption = 'Forma Pagamento'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 41
      Top = 32
      Width = 40
      Height = 23
      DataField = 'ID_COMPRA'
      DataSource = dataSourceCadastro
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 41
      Top = 120
      Width = 40
      Height = 23
      DataField = 'ID_FORNECEDOR'
      DataSource = dataSourceCadastro
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 41
      Top = 165
      Width = 40
      Height = 23
      DataField = 'ID_FORMA_PGTO'
      DataSource = dataSourceCadastro
      TabOrder = 2
    end
    object dbEditSolicitante: TDBEdit
      Left = 41
      Top = 75
      Width = 242
      Height = 23
      DataField = 'USUARIO'
      DataSource = dataSourceCadastro
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 256
      Top = 165
      Width = 150
      Height = 23
      DataField = 'VALOR'
      DataSource = dataSourceCadastro
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 127
      Top = 32
      Width = 150
      Height = 23
      DataField = 'CADASTRO'
      DataSource = dataSourceCadastro
      TabOrder = 5
    end
    object dbNomeFornecedor: TDBLookupComboBox
      Left = 96
      Top = 120
      Width = 250
      Height = 23
      DataField = 'NomeFornecedor'
      DataSource = dataSourceCadastro
      TabOrder = 6
    end
    object dbDescricaoPagamento: TDBLookupComboBox
      Left = 87
      Top = 165
      Width = 154
      Height = 23
      DataField = 'DescricaoPagamento'
      DataSource = dataSourceCadastro
      ImeName = 'Portuguese (Brazilian ABNT)'
      TabOrder = 7
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 209
    Width = 867
    Height = 359
  end
  inherited Panel3: TPanel
    Top = 568
    Width = 867
    Height = 104
    ExplicitTop = 568
    ExplicitWidth = 867
    ExplicitHeight = 104
    object Label9: TLabel
      Left = 60
      Top = 32
      Width = 22
      Height = 15
      Caption = 'Cod'
      FocusControl = DBEdit4
    end
    object Label10: TLabel
      Left = 412
      Top = 32
      Width = 28
      Height = 15
      Caption = 'QTDE'
      FocusControl = DBEdit7
    end
    object Label11: TLabel
      Left = 458
      Top = 32
      Width = 54
      Height = 15
      Caption = 'VL_CUSTO'
      FocusControl = DBEdit8
    end
    object Label12: TLabel
      Left = 576
      Top = 32
      Width = 60
      Height = 15
      Caption = 'DESCONTO'
      FocusControl = DBEdit9
    end
    object Label13: TLabel
      Left = 670
      Top = 32
      Width = 63
      Height = 15
      Caption = 'TOTAL_ITEM'
      FocusControl = DBEdit10
    end
    object Label14: TLabel
      Left = 106
      Top = 32
      Width = 76
      Height = 15
      Caption = 'NomeProduto'
      FocusControl = DBEdit11
    end
    object DBEdit4: TDBEdit
      Left = 60
      Top = 53
      Width = 40
      Height = 23
      DataField = 'ID_PRODUTO'
      DataSource = dataSourceItens
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 412
      Top = 53
      Width = 40
      Height = 23
      DataField = 'QTDE'
      DataSource = dataSourceItens
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 458
      Top = 53
      Width = 100
      Height = 23
      DataField = 'VL_CUSTO'
      DataSource = dataSourceItens
      TabOrder = 2
    end
    object DBEdit9: TDBEdit
      Left = 564
      Top = 53
      Width = 100
      Height = 23
      DataField = 'DESCONTO'
      DataSource = dataSourceItens
      TabOrder = 3
    end
    object DBEdit10: TDBEdit
      Left = 670
      Top = 53
      Width = 100
      Height = 23
      DataField = 'TOTAL_ITEM'
      DataSource = dataSourceItens
      TabOrder = 4
    end
    object DBEdit11: TDBEdit
      Left = 106
      Top = 53
      Width = 300
      Height = 23
      DataField = 'NomeProduto'
      DataSource = dataSourceItens
      TabOrder = 5
    end
  end
  inherited bancoQueryCadastro: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT * FROM COMPRA;')
    Left = 328
    Top = 16
    object bancoQueryCadastroID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object bancoQueryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object bancoQueryCadastroID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object bancoQueryCadastroUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 100
    end
    object bancoQueryCadastroVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object bancoQueryCadastroCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object bancoQueryCadastroNomeFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFornecedor'
      LookupDataSet = bancoQueryFornecedor
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object bancoQueryCadastroDescricaoPagamento: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoPagamento'
      LookupDataSet = bancoQueryPagamento
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
  end
  inherited dataSourceCadastro: TDataSource
    Left = 412
    Top = 16
  end
  inherited bancoQueryItens: TFDQuery
    Active = True
    Connection = frmDataModule.conectaBanco
    SQL.Strings = (
      'SELECT * FROM ITEM_COMPRA;')
    Left = 65376
    Top = 617
    object bancoQueryItensID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bancoQueryItensID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bancoQueryItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object bancoQueryItensNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = bancoQueryProdutos
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'PRODUTO_DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object bancoQueryItensQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object bancoQueryItensVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object bancoQueryItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object bancoQueryItensTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  inherited dataSourceItens: TDataSource
    Left = 752
    Top = 240
  end
  object bancoQueryFornecedor: TFDQuery
    Active = True
    Connection = frmDataModule.conectaBanco
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR;')
    Left = 640
    Top = 8
    object bancoQueryFornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bancoQueryFornecedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object bancoQueryFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object bancoQueryFornecedorNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object bancoQueryFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object bancoQueryFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object bancoQueryFornecedorUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object bancoQueryFornecedorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object bancoQueryFornecedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object bancoQueryFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object bancoQueryFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object bancoQueryFornecedorCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object bancoQueryPagamento: TFDQuery
    Active = True
    Connection = frmDataModule.conectaBanco
    SQL.Strings = (
      'SELECT * FROM FORMA_PGTO;')
    Left = 648
    Top = 80
    object bancoQueryPagamentoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bancoQueryPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object bancoQueryPagamentoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object dataSourceFornecedor: TDataSource
    DataSet = bancoQueryFornecedor
    Left = 728
    Top = 8
  end
  object dataSourcePagamento: TDataSource
    DataSet = bancoQueryPagamento
    Left = 752
    Top = 88
  end
  object bancoQueryProdutos: TFDQuery
    Active = True
    Connection = frmDataModule.conectaBanco
    SQL.Strings = (
      'SELECT * FROM PRODUTO;')
    Left = 800
    Top = 616
    object bancoQueryProdutosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bancoQueryProdutosPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Size = 100
    end
    object bancoQueryProdutosID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object bancoQueryProdutosVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object bancoQueryProdutosVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object bancoQueryProdutosESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object bancoQueryProdutosESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object bancoQueryProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object bancoQueryProdutosCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
