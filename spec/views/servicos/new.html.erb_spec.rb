require 'rails_helper'

RSpec.describe "servicos/new", type: :view do
  before(:each) do
    assign(:servico, Servico.new(
      :descricao => "MyString",
      :valor => "9.99"
    ))
  end

  it "renders new servico form" do
    render

    assert_select "form[action=?][method=?]", servicos_path, "post" do

      assert_select "input#servico_descricao[name=?]", "servico[descricao]"

      assert_select "input#servico_valor[name=?]", "servico[valor]"
    end
  end
end
