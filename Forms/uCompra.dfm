inherited frmCompra: TfrmCompra
  Caption = 'Tela de Compras'
  ClientWidth = 927
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  ExplicitWidth = 943
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 927
    ExplicitWidth = 925
    inherited btnNovo: TBitBtn
      OnClick = btnNovoClick
    end
  end
  inherited Panel2: TPanel
    Width = 927
    Height = 209
    ExplicitWidth = 925
    ExplicitHeight = 209
    object Label2: TLabel
      Left = 32
      Top = 16
      Width = 67
      Height = 15
      Caption = 'N'#186' COMPRA'
      FocusControl = DBEdit8
    end
    object Label8: TLabel
      Left = 32
      Top = 109
      Width = 91
      Height = 15
      Caption = 'ID_FORNECEDOR'
      FocusControl = editFornecedor
    end
    object Label9: TLabel
      Left = 32
      Top = 154
      Width = 91
      Height = 15
      Caption = 'ID_FORMA_PGTO'
      FocusControl = DBEdit10
    end
    object Label10: TLabel
      Left = 32
      Top = 64
      Width = 49
      Height = 15
      Caption = 'USUARIO'
      FocusControl = editUsuario
    end
    object Label11: TLabel
      Left = 376
      Top = 109
      Width = 36
      Height = 15
      Caption = 'VALOR'
      FocusControl = DBEdit12
    end
    object Label12: TLabel
      Left = 105
      Top = 16
      Width = 60
      Height = 15
      Caption = 'CADASTRO'
      FocusControl = DBEdit13
    end
    object Label13: TLabel
      Left = 146
      Top = 109
      Width = 113
      Height = 15
      Caption = 'NOME FORNECEDOR'
      FocusControl = DBEdit14
    end
    object Label14: TLabel
      Left = 146
      Top = 154
      Width = 114
      Height = 15
      Caption = 'FORMA PAGAMENTO'
      FocusControl = DBEdit15
    end
    object DBEdit8: TDBEdit
      Left = 32
      Top = 35
      Width = 40
      Height = 23
      DataField = 'ID_COMPRA'
      DataSource = DataSourceCompra
      TabOrder = 0
    end
    object editFornecedor: TDBEdit
      Left = 32
      Top = 125
      Width = 40
      Height = 23
      DataField = 'ID_FORNECEDOR'
      DataSource = DataSourceCompra
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 32
      Top = 170
      Width = 40
      Height = 23
      DataField = 'ID_FORMA_PGTO'
      DataSource = DataSourceCompra
      TabOrder = 2
    end
    object editUsuario: TDBEdit
      Left = 32
      Top = 80
      Width = 200
      Height = 23
      DataField = 'USUARIO'
      DataSource = DataSourceCompra
      ImeName = 'Portuguese (Brazilian ABNT)'
      TabOrder = 3
    end
    object DBEdit12: TDBEdit
      Left = 376
      Top = 125
      Width = 289
      Height = 23
      DataField = 'VALOR'
      DataSource = DataSourceCompra
      TabOrder = 4
    end
    object DBEdit13: TDBEdit
      Left = 105
      Top = 32
      Width = 154
      Height = 23
      DataField = 'CADASTRO'
      DataSource = DataSourceCompra
      TabOrder = 5
    end
    object DBEdit14: TDBEdit
      Left = 146
      Top = 125
      Width = 200
      Height = 23
      DataField = 'NOME FORNECEDOR'
      DataSource = DataSourceCompra
      TabOrder = 6
    end
    object DBEdit15: TDBEdit
      Left = 146
      Top = 170
      Width = 200
      Height = 23
      DataField = 'FORMA PAGAMENTO'
      DataSource = DataSourceCompra
      TabOrder = 7
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 209
    Width = 927
    Height = 183
  end
  inherited Panel3: TPanel
    Width = 927
    ExplicitWidth = 925
    inherited DBEdit3: TDBEdit
      Top = 53
      ExplicitTop = 53
    end
  end
  inherited bancoQueryItens: TFDQuery
    Connection = frmDataModule.conectaBanco
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_ITEM_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_SEQUENCIA'
    SQL.Strings = (
      'SELECT * FROM ITEM_COMPRA WHERE ID_COMPRA= :pCompra;')
    ParamData = <
      item
        Name = 'PCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    inherited bancoQueryItensID_SEQUENCIA: TIntegerField
      AutoGenerateValue = arAutoInc
      Required = False
    end
  end
  inherited bancoQueryProdutos: TFDQuery
    Active = True
  end
  object bancoQueryCompra: TFDQuery
    Active = True
    Connection = frmDataModule.conectaBanco
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT * FROM COMPRA;')
    Left = 768
    Top = 32
    object bancoQueryCompraID_COMPRA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object bancoQueryCompraID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object bancoQueryCompraID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object bancoQueryCompraUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 100
    end
    object bancoQueryCompraVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object bancoQueryCompraCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object bancoQueryCompraNOMEFORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME FORNECEDOR'
      LookupDataSet = bancoQueryFornecedor
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object bancoQueryCompraFORMAPAGAMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'FORMA PAGAMENTO'
      LookupDataSet = bancoQueryPagamento
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
  end
  object DataSourceCompra: TDataSource
    DataSet = bancoQueryCompra
    Left = 848
    Top = 32
  end
  object bancoQueryPagamento: TFDQuery
    Active = True
    Connection = frmDataModule.conectaBanco
    SQL.Strings = (
      'SELECT ID_FORMA_PGTO, DESCRICAO FROM FORMA_PGTO;')
    Left = 872
    Top = 120
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
  end
  object bancoQueryFornecedor: TFDQuery
    Active = True
    Connection = frmDataModule.conectaBanco
    SQL.Strings = (
      'SELECT ID_FORNECEDOR, NOME FROM FORNECEDOR;')
    Left = 768
    Top = 120
  end
  object dataSourcePagamento: TDataSource
    DataSet = bancoQueryPagamento
    Left = 856
    Top = 184
  end
end
