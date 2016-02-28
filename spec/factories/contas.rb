FactoryGirl.define do
  factory :conta do
    nome 'MyString'
    agencia 'MyString'
    conta_corrente 'MyString'
    boleto_carteira 1
    boleto_nome_cedente 'MyString'
    boleto_documento_cedente 'MyString'
  end

end
