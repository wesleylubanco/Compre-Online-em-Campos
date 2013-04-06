class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :fabricante
      t.string :datafabricacao
      t.string :preco

      t.timestamps
    end
  end
end
