require 'rails_helper'

RSpec.describe "servicos/show", type: :view do
  before(:each) do
    @servico = assign(:servico, Servico.create!(
      :descricao => "Descricao",
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/9.99/)
  end
end
