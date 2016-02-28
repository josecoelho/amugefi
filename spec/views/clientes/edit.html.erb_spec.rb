require 'rails_helper'

RSpec.describe "clientes/edit", type: :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      :nome => "MyString",
      :nome_fantasia => "MyString",
      :cnpj => "MyString",
      :endereco => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do

      assert_select "input#cliente_nome[name=?]", "cliente[nome]"

      assert_select "input#cliente_nome_fantasia[name=?]", "cliente[nome_fantasia]"

      assert_select "input#cliente_cnpj[name=?]", "cliente[cnpj]"

      assert_select "input#cliente_endereco[name=?]", "cliente[endereco]"

      assert_select "input#cliente_email[name=?]", "cliente[email]"
    end
  end
end
