class Vendedor < ActiveRecord::Base
  attr_accessible :bairro, :cidade, :cpfcnpj, :estado, :identidade, :nome, :rua, :telefone1, :telefone2
end
