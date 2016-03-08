require 'rails_helper'

RSpec.describe "servicos/index", type: :view do
  before(:each) do
    assign(:servicos, [
      Servico.create!(
        :descricao => "Descricao",
        :valor => "9.99"
      ),
      Servico.create!(
        :descricao => "Descricao",
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of servicos" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
