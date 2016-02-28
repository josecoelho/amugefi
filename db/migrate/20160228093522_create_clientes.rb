class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :nome_fantasia
      t.string :cnpj
      t.string :endereco
      t.string :email

      t.timestamps null: false
    end
  end
end
