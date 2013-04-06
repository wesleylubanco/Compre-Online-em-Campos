class Moderador < ActiveRecord::Base
  attr_accessible :cpf, :endereco, :identidade, :nome, :telefone
end
