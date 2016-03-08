class AddCamposBoleto < ActiveRecord::Migration
  def change
    add_column :contas, :boleto_variacao, :integer
    add_column :contas, :boleto_convenio, :string
  end
end
