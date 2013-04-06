class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :identidade
      t.string :cpfcnpj

      t.timestamps
    end
  end
end
