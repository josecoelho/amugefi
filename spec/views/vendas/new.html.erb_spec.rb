require 'rails_helper'

RSpec.describe "vendas/new", type: :view do
  before(:each) do
    assign(:venda, Venda.new(
      :cliente => nil,
      :descricao => "MyText",
      :pago => false,
      :valor => "9.99"
    ))
  end

  it "renders new venda form" do
    render

    assert_select "form[action=?][method=?]", vendas_path, "post" do

      assert_select "input#venda_cliente_id[name=?]", "venda[cliente_id]"

      assert_select "textarea#venda_descricao[name=?]", "venda[descricao]"

      assert_select "input#venda_pago[name=?]", "venda[pago]"

      assert_select "input#venda_valor[name=?]", "venda[valor]"
    end
  end
end
