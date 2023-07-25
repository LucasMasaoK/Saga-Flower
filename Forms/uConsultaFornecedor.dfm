inherited frmConsultaFornecedor: TfrmConsultaFornecedor
  Caption = 'Consulta de Fornecedor'
  ClientWidth = 711
  Position = poMainFormCenter
  ExplicitWidth = 727
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 711
    ExplicitWidth = 709
    inherited btnSelecionar: TBitBtn
      OnClick = btnSelecionarClick
    end
  end
  inherited bancoGrid: TDBGrid
    Width = 711
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'C'#211'DIGO'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 322
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Width = 305
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited bancoConsulta: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR;')
    object bancoConsultaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bancoConsultaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object bancoConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object bancoConsultaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object bancoConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object bancoConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object bancoConsultaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object bancoConsultaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object bancoConsultaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object bancoConsultaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object bancoConsultaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object bancoConsultaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
