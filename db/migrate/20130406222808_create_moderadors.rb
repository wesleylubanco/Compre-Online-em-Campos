class CreateModeradors < ActiveRecord::Migration
  def change
    create_table :moderadors do |t|
      t.string :nome
      t.string :identidade
      t.string :cpf
      t.string :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
