require 'rails_helper'

RSpec.describe "vendas/show", type: :view do
  before(:each) do
    @venda = assign(:venda, Venda.create!(
      :cliente => nil,
      :descricao => "MyText",
      :pago => false,
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
  end
end
