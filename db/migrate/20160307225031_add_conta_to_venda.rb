class AddContaToVenda < ActiveRecord::Migration
  def change
    add_reference :vendas, :conta, index: true, foreign_key: true
  end
end
