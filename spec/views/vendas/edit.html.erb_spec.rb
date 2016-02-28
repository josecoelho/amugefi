require 'rails_helper'

RSpec.describe "vendas/edit", type: :view do
  before(:each) do
    @venda = assign(:venda, Venda.create!(
      :cliente => nil,
      :descricao => "MyText",
      :pago => false,
      :valor => "9.99"
    ))
  end

  it "renders the edit venda form" do
    render

    assert_select "form[action=?][method=?]", venda_path(@venda), "post" do

      assert_select "input#venda_cliente_id[name=?]", "venda[cliente_id]"

      assert_select "textarea#venda_descricao[name=?]", "venda[descricao]"

      assert_select "input#venda_pago[name=?]", "venda[pago]"

      assert_select "input#venda_valor[name=?]", "venda[valor]"
    end
  end
end
