require 'rails_helper'

RSpec.describe "conta/index", type: :view do
  before(:each) do
    assign(:conta, [
      conta.create!(
        :nome => "Nome",
        :agencia => "Agencia",
        :conta_corrente => "Conta_corrente",
        :boleto_carteira => 1,
        :boleto_nome_cedente => "Boleto_nome_cedente",
        :boleto_documento_cedente => "Boleto_documento_cedente"
      ),
      conta.create!(
        :nome => "Nome",
        :agencia => "Agencia",
        :conta_corrente => "Conta_corrente",
        :boleto_carteira => 1,
        :boleto_nome_cedente => "Boleto_nome_cedente",
        :boleto_documento_cedente => "Boleto_documento_cedente"
      )
    ])
  end

  it "renders a list of conta" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Agencia".to_s, :count => 2
    assert_select "tr>td", :text => "Conta_corrente".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Boleto_nome_cedente".to_s, :count => 2
    assert_select "tr>td", :text => "Boleto_documento_cedente".to_s, :count => 2
  end
end
