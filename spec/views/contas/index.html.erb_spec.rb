require 'rails_helper'

RSpec.describe "contas/index", type: :view do
  before(:each) do
    assign(:contas, [
      Conta.create!(
        :nome => "Nome",
        :agencia => "Agencia",
        :conta_corrente => "Conta Corrente",
        :boleto_carteira => 1,
        :boleto_nome_cedente => "Boleto Nome Cedente",
        :boleto_documento_cedente => "Boleto Documento Cedente"
      ),
      Conta.create!(
        :nome => "Nome",
        :agencia => "Agencia",
        :conta_corrente => "Conta Corrente",
        :boleto_carteira => 1,
        :boleto_nome_cedente => "Boleto Nome Cedente",
        :boleto_documento_cedente => "Boleto Documento Cedente"
      )
    ])
  end

  it "renders a list of contas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Agencia".to_s, :count => 2
    assert_select "tr>td", :text => "Conta Corrente".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Boleto Nome Cedente".to_s, :count => 2
    assert_select "tr>td", :text => "Boleto Documento Cedente".to_s, :count => 2
  end
end
