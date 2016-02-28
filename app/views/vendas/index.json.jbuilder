json.array!(@vendas) do |venda|
  json.extract! venda, :id, :cliente_id, :descricao, :data_faturamento, :data_cobranca, :pago, :valor
  json.url venda_url(venda, format: :json)
end
