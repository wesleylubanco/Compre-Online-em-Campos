class Pedido < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :vendedor
  belongs_to :moderador
  belongs_to :produto
  attr_accessible :datapedido, :formaenvio, :formapagamento, :quantidadeproduto, :valordacompra, :cliente_id, :vendedor_id, :moderador_id, :produto_id
end
