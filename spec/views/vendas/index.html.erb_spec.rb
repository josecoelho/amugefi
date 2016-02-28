require 'rails_helper'

RSpec.describe "vendas/index", type: :view do
  before(:each) do
    assign(:vendas, [
      Venda.create!(
        :cliente => nil,
        :descricao => "MyText",
        :pago => false,
        :valor => "9.99"
      ),
      Venda.create!(
        :cliente => nil,
        :descricao => "MyText",
        :pago => false,
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of vendas" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
