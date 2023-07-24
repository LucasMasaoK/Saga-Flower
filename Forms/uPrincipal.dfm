object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Saga Flower Sistema de Gest'#227'o Empresarial'
  ClientHeight = 437
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 232
    Top = 8
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Usuario1: TMenuItem
        Caption = 'Usuario'
      end
      object Fornecedor1: TMenuItem
        Caption = 'Fornecedor'
        OnClick = Fornecedor1Click
      end
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente1Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
    end
  end
end
