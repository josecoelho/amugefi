require 'rails_helper'

RSpec.describe "contas/new", type: :view do
  before(:each) do
    assign(:conta, Conta.new(
      :nome => "MyString",
      :agencia => "MyString",
      :conta_corrente => "MyString",
      :boleto_carteira => 1,
      :boleto_nome_cedente => "MyString",
      :boleto_documento_cedente => "MyString"
    ))
  end

  it "renders new conta form" do
    render

    assert_select "form[action=?][method=?]", contas_path, "post" do

      assert_select "input#conta_nome[name=?]", "conta[nome]"

      assert_select "input#conta_agencia[name=?]", "conta[agencia]"

      assert_select "input#conta_conta_corrente[name=?]", "conta[conta_corrente]"

      assert_select "input#conta_boleto_carteira[name=?]", "conta[boleto_carteira]"

      assert_select "input#conta_boleto_nome_cedente[name=?]", "conta[boleto_nome_cedente]"

      assert_select "input#conta_boleto_documento_cedente[name=?]", "conta[boleto_documento_cedente]"
    end
  end
end
