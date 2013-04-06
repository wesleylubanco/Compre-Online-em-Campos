class Cliente < ActiveRecord::Base
  attr_accessible :cpfcnpj, :identidade, :nome
end
