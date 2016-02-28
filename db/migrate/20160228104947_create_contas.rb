class CreateContas < ActiveRecord::Migration
  def change
    create_table :contas do |t|
      t.string :nome
      t.string :agencia
      t.string :conta_corrente
      t.integer :boleto_carteira
      t.string :boleto_nome_cedente
      t.string :boleto_documento_cedente

      t.timestamps null: false
    end
  end
end
