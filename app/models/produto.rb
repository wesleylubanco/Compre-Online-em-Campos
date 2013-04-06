class Produto < ActiveRecord::Base
  attr_accessible :datafabricacao, :fabricante, :nome, :preco
end
