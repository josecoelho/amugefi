class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.references :cliente, index: true, foreign_key: true
      t.text :descricao
      t.date :data_faturamento
      t.date :data_cobranca
      t.boolean :pago
      t.decimal :valor

      t.timestamps null: false
    end
  end
end
