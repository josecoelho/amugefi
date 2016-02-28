FactoryGirl.define do
  factory :venda do
    empresa nil
descricao ""
data_faturamento "2016-02-28"
data_cobranca "2016-02-28"
pago false
valor "9.99"
  end

end
