require 'rails_helper'

RSpec.describe "conta/show", type: :view do
  before(:each) do
    @conta = assign(:conta, conta.create!(
      :nome => "Nome",
      :agencia => "Agencia",
      :conta_corrente => "Conta_corrente",
      :boleto_carteira => 1,
      :boleto_nome_cedente => "Boleto_nome_cedente",
      :boleto_documento_cedente => "Boleto_documento_cedente"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Agencia/)
    expect(rendered).to match(/Conta_corrente/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Boleto_nome_cedente/)
    expect(rendered).to match(/Boleto_documento_cedente/)
  end
end
