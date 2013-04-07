class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :datapedido
      t.string :quantidadeproduto
      t.string :valordacompra
      t.string :formaenvio
      t.string :formapagamento
      t.references :cliente
      t.references :vendedor
      t.references :moderador
      t.references :produto

      t.timestamps
    end
    add_index :pedidos, :cliente_id
    add_index :pedidos, :vendedor_id
    add_index :pedidos, :moderador_id
    add_index :pedidos, :produto_id
  end
end
