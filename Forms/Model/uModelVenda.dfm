object frmModelVenda: TfrmModelVenda
  Left = 0
  Top = 0
  Caption = 'Tela de '
  ClientHeight = 545
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 470
    Width = 778
    Height = 75
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -81
    ExplicitTop = 368
    ExplicitWidth = 705
    object btnNovo: TBitBtn
      Left = 16
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
    end
    object btnDeletar: TBitBtn
      Left = 112
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Deletar'
      TabOrder = 1
    end
    object btnSalvar: TBitBtn
      Left = 208
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Salvar'
      TabOrder = 2
    end
    object btnCancelar: TBitBtn
      Left = 304
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 3
    end
    object btnPesquisar: TBitBtn
      Left = 400
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Pesquisar'
      TabOrder = 4
    end
    object btnImprimir: TBitBtn
      Left = 496
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Imprimir'
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 105
    Align = alTop
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 778
    Height = 283
    Align = alClient
    DataSource = dataSourceItens
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel3: TPanel
    Left = 0
    Top = 388
    Width = 778
    Height = 82
    Align = alBottom
    TabOrder = 3
  end
  object bancoQueryCadastro: TFDQuery
    Connection = frmDataModule.conectaBanco
    Left = 592
    Top = 408
  end
  object dataSourceCadastro: TDataSource
    DataSet = bancoQueryCadastro
    Left = 692
    Top = 408
  end
  object bancoQueryItens: TFDQuery
    MasterSource = dataSourceCadastro
    Left = 568
    Top = 296
  end
  object dataSourceItens: TDataSource
    DataSet = bancoQueryItens
    Left = 680
    Top = 304
  end
end