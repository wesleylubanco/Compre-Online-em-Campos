class CreateVendedors < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
      t.string :nome
      t.string :identidade
      t.string :cpfcnpj
      t.string :rua
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :telefone1
      t.string :telefone2

      t.timestamps
    end
  end
end
