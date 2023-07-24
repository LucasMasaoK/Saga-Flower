inherited frmCadastroProduto: TfrmCadastroProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 419
  ClientWidth = 660
  Position = poMainFormCenter
  ExplicitLeft = 3
  ExplicitTop = 3
  ExplicitWidth = 672
  ExplicitHeight = 457
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 40
    Top = 40
    Width = 45
    Height = 15
    Caption = 'C'#211'DIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 40
    Top = 88
    Width = 121
    Height = 15
    Caption = 'PRODUTO_DESCRICAO'
    FocusControl = editNome
  end
  object Label3: TLabel [2]
    Left = 368
    Top = 88
    Width = 123
    Height = 15
    Caption = 'C'#211'DIGO FORNECEDOR'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 42
    Top = 133
    Width = 75
    Height = 15
    Caption = 'VALOR CUSTO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 136
    Top = 133
    Width = 77
    Height = 15
    Caption = 'VALOR VENDA'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 42
    Top = 178
    Width = 49
    Height = 15
    Caption = 'ESTOQUE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 136
    Top = 178
    Width = 98
    Height = 15
    Caption = 'ESTOQUE MINIMO'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 240
    Top = 133
    Width = 50
    Height = 15
    Caption = 'UNIDADE'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 101
    Top = 40
    Width = 60
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DBEdit9
  end
  inherited Panel1: TPanel
    Top = 344
    Width = 660
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  object DBEdit1: TDBEdit [10]
    Left = 40
    Top = 56
    Width = 40
    Height = 23
    DataField = 'ID_PRODUTO'
    DataSource = dataSourceCadastro
    TabOrder = 1
  end
  object editNome: TDBEdit [11]
    Left = 40
    Top = 104
    Width = 300
    Height = 23
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = dataSourceCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [12]
    Left = 368
    Top = 104
    Width = 40
    Height = 23
    DataField = 'ID_FORNECEDOR'
    DataSource = dataSourceCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [13]
    Left = 42
    Top = 149
    Width = 70
    Height = 23
    DataField = 'VL_CUSTO'
    DataSource = dataSourceCadastro
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [14]
    Left = 136
    Top = 149
    Width = 70
    Height = 23
    DataField = 'VL_VENDA'
    DataSource = dataSourceCadastro
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [15]
    Left = 42
    Top = 194
    Width = 70
    Height = 23
    DataField = 'ESTOQUE'
    DataSource = dataSourceCadastro
    TabOrder = 6
  end
  object DBEdit7: TDBEdit [16]
    Left = 136
    Top = 194
    Width = 70
    Height = 23
    DataField = 'ESTOQUE_MIN'
    DataSource = dataSourceCadastro
    TabOrder = 7
  end
  object DBEdit8: TDBEdit [17]
    Left = 240
    Top = 149
    Width = 40
    Height = 23
    DataField = 'UNIDADE'
    DataSource = dataSourceCadastro
    TabOrder = 8
  end
  object DBEdit9: TDBEdit [18]
    Left = 101
    Top = 56
    Width = 70
    Height = 23
    DataField = 'CADASTRO'
    DataSource = dataSourceCadastro
    TabOrder = 9
  end
  inherited bancoQueryCadastro: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM PRODUTO;')
    Left = 504
    Top = 360
    object bancoQueryCadastroID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bancoQueryCadastroPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Size = 100
    end
    object bancoQueryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object bancoQueryCadastroVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object bancoQueryCadastroVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object bancoQueryCadastroESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object bancoQueryCadastroESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object bancoQueryCadastroUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object bancoQueryCadastroCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dataSourceCadastro: TDataSource
    Left = 560
    Top = 352
  end
end
