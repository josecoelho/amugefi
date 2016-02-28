require 'rails_helper'

RSpec.describe "clientes/index", type: :view do
  before(:each) do
    assign(:clientes, [
      Cliente.create!(
        :nome => "Nome",
        :nome_fantasia => "Nome Fantasia",
        :cnpj => "Cnpj",
        :endereco => "Endereco",
        :email => "Email"
      ),
      Cliente.create!(
        :nome => "Nome",
        :nome_fantasia => "Nome Fantasia",
        :cnpj => "Cnpj",
        :endereco => "Endereco",
        :email => "Email"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Nome Fantasia".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
