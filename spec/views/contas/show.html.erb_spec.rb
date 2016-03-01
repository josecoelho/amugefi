require 'rails_helper'

RSpec.describe "contas/show", type: :view do
  before(:each) do
    @conta = assign(:conta, Conta.create!(
      :nome => "Nome",
      :agencia => "Agencia",
      :conta_corrente => "Conta Corrente",
      :boleto_carteira => 1,
      :boleto_nome_cedente => "Boleto Nome Cedente",
      :boleto_documento_cedente => "Boleto Documento Cedente"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Agencia/)
    expect(rendered).to match(/Conta Corrente/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Boleto Nome Cedente/)
    expect(rendered).to match(/Boleto Documento Cedente/)
  end
end
