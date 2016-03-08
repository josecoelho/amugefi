require 'rails_helper'

RSpec.describe "servicos/edit", type: :view do
  before(:each) do
    @servico = assign(:servico, Servico.create!(
      :descricao => "MyString",
      :valor => "9.99"
    ))
  end

  it "renders the edit servico form" do
    render

    assert_select "form[action=?][method=?]", servico_path(@servico), "post" do

      assert_select "input#servico_descricao[name=?]", "servico[descricao]"

      assert_select "input#servico_valor[name=?]", "servico[valor]"
    end
  end
end
