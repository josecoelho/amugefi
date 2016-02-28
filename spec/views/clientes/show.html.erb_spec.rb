require 'rails_helper'

RSpec.describe "clientes/show", type: :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      :nome => "Nome",
      :nome_fantasia => "Nome Fantasia",
      :cnpj => "Cnpj",
      :endereco => "Endereco",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Nome Fantasia/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Email/)
  end
end
