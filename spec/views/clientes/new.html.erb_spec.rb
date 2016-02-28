require 'rails_helper'

RSpec.describe "clientes/new", type: :view do
  before(:each) do
    assign(:cliente, Cliente.new(
      :nome => "MyString",
      :nome_fantasia => "MyString",
      :cnpj => "MyString",
      :endereco => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new cliente form" do
    render

    assert_select "form[action=?][method=?]", clientes_path, "post" do

      assert_select "input#cliente_nome[name=?]", "cliente[nome]"

      assert_select "input#cliente_nome_fantasia[name=?]", "cliente[nome_fantasia]"

      assert_select "input#cliente_cnpj[name=?]", "cliente[cnpj]"

      assert_select "input#cliente_endereco[name=?]", "cliente[endereco]"

      assert_select "input#cliente_email[name=?]", "cliente[email]"
    end
  end
end
